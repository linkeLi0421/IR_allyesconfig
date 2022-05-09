; ModuleID = '/llk/IR_all_yes/drivers/mtd/spi-nor/sfdp.c_pt.bc'
source_filename = "../drivers/mtd/spi-nor/sfdp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sfdp_bfpt_read = type { i32, i32, i32, i32, i32, i32 }
%struct.sfdp_header = type { i32, i8, i8, i8, i8, %struct.sfdp_parameter_header }
%struct.sfdp_parameter_header = type { i8, i8, i8, i8, [3 x i8], i8 }
%struct.spi_nor = type { %struct.mtd_info, %struct.mutex, ptr, ptr, ptr, i32, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i8, i32, i32, ptr, ptr, ptr, %struct.anon.76, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.70 }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.76 = type { ptr, ptr }
%struct.sfdp = type { i32, ptr }
%struct.sfdp_bfpt = type { [20 x i32] }
%struct.spi_nor_flash_parameter = type { i64, i32, i32, i8, i8, %struct.spi_nor_hwcaps, [16 x %struct.spi_nor_read_command], [8 x %struct.spi_nor_pp_command], %struct.spi_nor_erase_map, %struct.spi_nor_otp, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_nor_hwcaps = type { i32 }
%struct.spi_nor_read_command = type { i8, i8, i8, i32 }
%struct.spi_nor_pp_command = type { i8, i32 }
%struct.spi_nor_erase_map = type { ptr, %struct.spi_nor_erase_region, [4 x %struct.spi_nor_erase_type], i8 }
%struct.spi_nor_erase_region = type { i64, i64 }
%struct.spi_nor_erase_type = type { i32, i32, i32, i8, i8 }
%struct.spi_nor_otp = type { ptr, ptr }
%struct.spi_nor_manufacturer = type { ptr, ptr, i32, ptr }
%struct.spi_nor_fixups = type { ptr, ptr, ptr, ptr }
%struct.flash_info = type { ptr, [6 x i8], i8, i32, i16, i16, i16, i8, i16, i8, i8, i8, %struct.spi_nor_otp_organization, ptr }
%struct.spi_nor_otp_organization = type { i32, i64, i64, i32 }

@spi_nor_parse_sfdp.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 73, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spi_nor\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"spi_nor_parse_sfdp\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/mtd/spi-nor/sfdp.c\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to read SFDP parameter headers\0A\00", [57 x i8] zeroinitializer }, align 32
@spi_nor_parse_sfdp.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 1, i8 78, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"SFDP data (%zu) too big, truncating\0A\00", [59 x i8] zeroinitializer }, align 32
@spi_nor_parse_sfdp.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 1, i8 85, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to read SFDP data\0A\00", [38 x i8] zeroinitializer }, align 32
@spi_nor_parse_sfdp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 1419, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Failed to parse optional parameter table: %04x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@spi_nor_parse_sfdp._entry_ptr = internal global ptr @spi_nor_parse_sfdp._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sfdp_bfpt_reads = internal constant { [6 x %struct.sfdp_bfpt_read], [48 x i8] } { [6 x %struct.sfdp_bfpt_read] [%struct.sfdp_bfpt_read { i32 8, i32 0, i32 65536, i32 3, i32 0, i32 65794 }, %struct.sfdp_bfpt_read { i32 16, i32 0, i32 1048576, i32 3, i32 16, i32 66050 }, %struct.sfdp_bfpt_read { i32 32, i32 4, i32 1, i32 5, i32 16, i32 131586 }, %struct.sfdp_bfpt_read { i32 128, i32 0, i32 4194304, i32 2, i32 16, i32 65796 }, %struct.sfdp_bfpt_read { i32 256, i32 0, i32 2097152, i32 2, i32 0, i32 66564 }, %struct.sfdp_bfpt_read { i32 512, i32 4, i32 16, i32 6, i32 16, i32 263172 }], [48 x i8] zeroinitializer }, align 32
@spi_nor_parse_bfpt.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 -105, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"spi_nor_parse_bfpt\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"BFPT QER reserved value used\0A\00", [34 x i8] zeroinitializer }, align 32
@spi_nor_parse_bfpt.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.11, i8 0, i8 -99, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Reserved command extension used\0A\00", [63 x i8] zeroinitializer }, align 32
@spi_nor_parse_bfpt.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.12, i8 0, i8 -98, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"16-bit opcodes not supported\0A\00", [34 x i8] zeroinitializer }, align 32
@spi_nor_parse_profile1.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 1, i8 38, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"spi_nor_parse_profile1\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Can't find dummy cycles from Profile 1.0 table\0A\00", [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 16, i64 65285, i64 65409, i64 65412, i64 65415]
@__sancov_gen_cov_switch_values.15 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 131072, i64 262144]
@__sancov_gen_cov_switch_values.16 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.17 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.18 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 1316, i32 4 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 1337, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 1365, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 1418, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant [16 x i8] c"sfdp_bfpt_reads\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 242, i32 36 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 605, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 628, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 632, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.68 = private constant [30 x i8] c"../drivers/mtd/spi-nor/sfdp.c\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 1177, i32 3 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @spi_nor_parse_sfdp._entry, ptr @spi_nor_parse_sfdp._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @sfdp_bfpt_reads, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_nor_parse_sfdp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfdp_bfpt_reads to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @spi_nor_parse_sfdp(ptr noundef %nor) local_unnamed_addr #0 align 64 {
entry:
  %header = alloca %struct.sfdp_header, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %header) #8
  %0 = getelementptr inbounds %struct.sfdp_header, ptr %header, i32 0, i32 2
  %1 = getelementptr inbounds %struct.sfdp_header, ptr %header, i32 0, i32 3
  %2 = getelementptr inbounds %struct.sfdp_header, ptr %header, i32 0, i32 5
  %3 = getelementptr inbounds %struct.sfdp_header, ptr %header, i32 0, i32 5, i32 2
  %4 = getelementptr inbounds %struct.sfdp_header, ptr %header, i32 0, i32 5, i32 3
  %5 = getelementptr inbounds %struct.sfdp_header, ptr %header, i32 0, i32 5, i32 4
  %6 = getelementptr inbounds %struct.sfdp_header, ptr %header, i32 0, i32 5, i32 4, i32 1
  %7 = getelementptr inbounds %struct.sfdp_header, ptr %header, i32 0, i32 5, i32 4, i32 2
  %8 = getelementptr inbounds %struct.sfdp_header, ptr %header, i32 0, i32 5, i32 5
  %dev1 = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %9 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3264, i32 noundef 16) #11
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i314

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i314:                                      ; preds = %entry
  %read_opcode1.i.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 10
  %12 = ptrtoint ptr %read_opcode1.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %read_opcode1.i.i, align 2
  %addr_width2.i.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 8
  %14 = ptrtoint ptr %addr_width2.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %addr_width2.i.i, align 4
  %read_dummy3.i.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 11
  %16 = ptrtoint ptr %read_dummy3.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %read_dummy3.i.i, align 1
  store i8 90, ptr %read_opcode1.i.i, align 2
  store i8 3, ptr %addr_width2.i.i, align 4
  store i8 8, ptr %read_dummy3.i.i, align 1
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %if.end6.i.i.i.while.body.i.i.i_crit_edge, %if.end.i314
  %buf.addr.021.i.i.i = phi ptr [ %add.ptr.i.i.i, %if.end6.i.i.i.while.body.i.i.i_crit_edge ], [ %call7.i.i, %if.end.i314 ]
  %len.addr.020.i.i.i = phi i32 [ %sub.i.i.i, %if.end6.i.i.i.while.body.i.i.i_crit_edge ], [ 16, %if.end.i314 ]
  %addr.addr.019.i.i.i = phi i32 [ %add.i.i.i, %if.end6.i.i.i.while.body.i.i.i_crit_edge ], [ 0, %if.end.i314 ]
  %conv.i.i.i = zext i32 %addr.addr.019.i.i.i to i64
  %call.i.i.i = tail call i32 @spi_nor_read_data(ptr noundef %nor, i64 noundef %conv.i.i.i, i32 noundef %len.addr.020.i.i.i, ptr noundef %buf.addr.021.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i8.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i8.i, label %while.body.i.i.i.spi_nor_read_sfdp_dma_unsafe.exit_crit_edge, label %if.end.i.i9.i

while.body.i.i.i.spi_nor_read_sfdp_dma_unsafe.exit_crit_edge: ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_nor_read_sfdp_dma_unsafe.exit

if.end.i.i9.i:                                    ; preds = %while.body.i.i.i
  %18 = add nsw i32 %call.i.i.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %len.addr.020.i.i.i)
  %.not.i.i.i = icmp ult i32 %18, %len.addr.020.i.i.i
  br i1 %.not.i.i.i, label %if.end6.i.i.i, label %if.end.i.i9.i.spi_nor_read_sfdp_dma_unsafe.exit_crit_edge

if.end.i.i9.i.spi_nor_read_sfdp_dma_unsafe.exit_crit_edge: ; preds = %if.end.i.i9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_nor_read_sfdp_dma_unsafe.exit

if.end6.i.i.i:                                    ; preds = %if.end.i.i9.i
  %add.ptr.i.i.i = getelementptr i8, ptr %buf.addr.021.i.i.i, i32 %call.i.i.i
  %add.i.i.i = add i32 %call.i.i.i, %addr.addr.019.i.i.i
  %sub.i.i.i = sub i32 %len.addr.020.i.i.i, %call.i.i.i
  %tobool.not.i.i10.i = icmp eq i32 %sub.i.i.i, 0
  br i1 %tobool.not.i.i10.i, label %if.end6.i.i.i.spi_nor_read_sfdp_dma_unsafe.exit_crit_edge, label %if.end6.i.i.i.while.body.i.i.i_crit_edge

if.end6.i.i.i.while.body.i.i.i_crit_edge:         ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i.i

if.end6.i.i.i.spi_nor_read_sfdp_dma_unsafe.exit_crit_edge: ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_nor_read_sfdp_dma_unsafe.exit

spi_nor_read_sfdp_dma_unsafe.exit:                ; preds = %if.end6.i.i.i.spi_nor_read_sfdp_dma_unsafe.exit_crit_edge, %if.end.i.i9.i.spi_nor_read_sfdp_dma_unsafe.exit_crit_edge, %while.body.i.i.i.spi_nor_read_sfdp_dma_unsafe.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %if.end6.i.i.i.spi_nor_read_sfdp_dma_unsafe.exit_crit_edge ], [ -5, %if.end.i.i9.i.spi_nor_read_sfdp_dma_unsafe.exit_crit_edge ], [ %call.i.i.i, %while.body.i.i.i.spi_nor_read_sfdp_dma_unsafe.exit_crit_edge ]
  %19 = ptrtoint ptr %read_opcode1.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %13, ptr %read_opcode1.i.i, align 2
  %20 = ptrtoint ptr %addr_width2.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %15, ptr %addr_width2.i.i, align 4
  %21 = ptrtoint ptr %read_dummy3.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %17, ptr %read_dummy3.i.i, align 1
  %22 = call ptr @memcpy(ptr %header, ptr %call7.i.i, i32 16)
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i)
  %cmp = icmp slt i32 %retval.0.i.i.i, 0
  br i1 %cmp, label %spi_nor_read_sfdp_dma_unsafe.exit.cleanup_crit_edge, label %if.end

spi_nor_read_sfdp_dma_unsafe.exit.cleanup_crit_edge: ; preds = %spi_nor_read_sfdp_dma_unsafe.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %spi_nor_read_sfdp_dma_unsafe.exit
  %23 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %header, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1397113936, i32 %24)
  %cmp2.not = icmp eq i32 %24, 1397113936
  br i1 %cmp2.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %26)
  %cmp3.not = icmp eq i8 %26, 1
  br i1 %cmp3.not, label %if.end6, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  %27 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %8, align 1
  %conv8 = zext i8 %28 to i32
  %shl = shl nuw nsw i32 %conv8, 8
  %29 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %2, align 4
  %conv9 = zext i8 %30 to i32
  %or = or i32 %shl, %conv9
  call void @__sanitizer_cov_trace_const_cmp4(i32 65280, i32 %or)
  %cmp10.not = icmp eq i32 %or, 65280
  br i1 %cmp10.not, label %lor.lhs.false12, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false12:                                  ; preds = %if.end6
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %3, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %32)
  %cmp15.not = icmp eq i8 %32, 1
  br i1 %cmp15.not, label %if.end18, label %lor.lhs.false12.cleanup_crit_edge

lor.lhs.false12.cleanup_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18:                                         ; preds = %lor.lhs.false12
  %33 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %7, align 2
  %conv19 = zext i8 %34 to i32
  %shl20 = shl nuw nsw i32 %conv19, 16
  %35 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %6, align 1
  %conv23 = zext i8 %36 to i32
  %shl24 = shl nuw nsw i32 %conv23, 8
  %or25 = or i32 %shl24, %shl20
  %37 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %5, align 4
  %conv28 = zext i8 %38 to i32
  %or30 = or i32 %or25, %conv28
  %39 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %4, align 1
  %conv31 = zext i8 %40 to i32
  %mul = shl nuw nsw i32 %conv31, 2
  %add = add nuw nsw i32 %or30, %mul
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not = icmp eq i8 %42, 0
  br i1 %tobool.not, label %if.end18.for.end_crit_edge, label %if.then32

if.end18.for.end_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then32:                                        ; preds = %if.end18
  %conv34 = zext i8 %42 to i32
  %mul35 = shl nuw nsw i32 %conv34, 3
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul35, i32 noundef 3264) #12
  %tobool37.not = icmp eq ptr %call9.i, null
  br i1 %tobool37.not, label %if.then32.cleanup_crit_edge, label %if.end39

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end39:                                         ; preds = %if.then32
  %call40 = tail call fastcc i32 @spi_nor_read_sfdp(ptr noundef %nor, i32 noundef 16, i32 noundef %mul35, ptr noundef nonnull %call9.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %do.body, label %if.end51

do.body:                                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_nor_parse_sfdp.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spi_nor_parse_sfdp, %if.then48)) #8
          to label %exit [label %if.then48], !srcloc !51

if.then48:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spi_nor_parse_sfdp.__UNIQUE_ID_ddebug272, ptr noundef %10, ptr noundef nonnull @.str.3) #8
  br label %exit

if.end51:                                         ; preds = %if.end39
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %43)
  %.pr = load i8, ptr %1, align 2
  %conv53 = zext i8 %.pr to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %cmp54327.not = icmp eq i8 %.pr, 0
  br i1 %cmp54327.not, label %if.end51.for.end_crit_edge, label %if.end51.for.body_crit_edge

if.end51.for.body_crit_edge:                      ; preds = %if.end51
  br label %for.body

if.end51.for.end_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end51.for.body_crit_edge
  %sfdp_size.0329 = phi i32 [ %52, %for.body.for.body_crit_edge ], [ %add, %if.end51.for.body_crit_edge ]
  %i.0328 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end51.for.body_crit_edge ]
  %parameter_table_pointer57 = getelementptr %struct.sfdp_parameter_header, ptr %call9.i, i32 %i.0328, i32 4
  %arrayidx58 = getelementptr %struct.sfdp_parameter_header, ptr %call9.i, i32 %i.0328, i32 4, i32 2
  %44 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx58, align 2
  %conv59 = zext i8 %45 to i32
  %shl60 = shl nuw nsw i32 %conv59, 16
  %arrayidx62 = getelementptr %struct.sfdp_parameter_header, ptr %call9.i, i32 %i.0328, i32 4, i32 1
  %46 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx62, align 1
  %conv63 = zext i8 %47 to i32
  %shl64 = shl nuw nsw i32 %conv63, 8
  %or65 = or i32 %shl64, %shl60
  %48 = ptrtoint ptr %parameter_table_pointer57 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %parameter_table_pointer57, align 4
  %conv68 = zext i8 %49 to i32
  %or70 = or i32 %or65, %conv68
  %length71 = getelementptr %struct.sfdp_parameter_header, ptr %call9.i, i32 %i.0328, i32 3
  %50 = ptrtoint ptr %length71 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %length71, align 1
  %conv72 = zext i8 %51 to i32
  %mul73 = shl nuw nsw i32 %conv72, 2
  %add74 = add nuw nsw i32 %or70, %mul73
  %52 = tail call i32 @llvm.umax.i32(i32 %sfdp_size.0329, i32 %add74)
  %inc = add nuw nsw i32 %i.0328, 1
  %exitcond.not = icmp eq i32 %inc, %conv53
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end51.for.end_crit_edge, %if.end18.for.end_crit_edge
  %param_headers.0343 = phi ptr [ %call9.i, %if.end51.for.end_crit_edge ], [ null, %if.end18.for.end_crit_edge ], [ %call9.i, %for.body.for.end_crit_edge ]
  %sfdp_size.0.lcssa = phi i32 [ %add, %if.end51.for.end_crit_edge ], [ %add, %if.end18.for.end_crit_edge ], [ %52, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sfdp_size.0.lcssa)
  %cmp78 = icmp ugt i32 %sfdp_size.0.lcssa, 4096
  br i1 %cmp78, label %do.body81, label %for.end.if.end97_crit_edge

for.end.if.end97_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end97

do.body81:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_nor_parse_sfdp.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spi_nor_parse_sfdp, %if.then93)) #8
          to label %if.end97 [label %if.then93], !srcloc !51

if.then93:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spi_nor_parse_sfdp.__UNIQUE_ID_ddebug275, ptr noundef %10, ptr noundef nonnull @.str.4, i32 noundef %sfdp_size.0.lcssa) #8
  br label %if.end97

if.end97:                                         ; preds = %if.then93, %do.body81, %for.end.if.end97_crit_edge
  %sfdp_size.1 = phi i32 [ %sfdp_size.0.lcssa, %for.end.if.end97_crit_edge ], [ 4096, %if.then93 ], [ 4096, %do.body81 ]
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %10, i32 noundef 8, i32 noundef 3520) #8
  %tobool99.not = icmp eq ptr %call.i, null
  br i1 %tobool99.not, label %if.end97.exit_crit_edge, label %if.end101

if.end97.exit_crit_edge:                          ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end101:                                        ; preds = %if.end97
  %sub = add nuw nsw i32 %sfdp_size.1, 3
  %div306 = lshr i32 %sub, 2
  %53 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %div306, ptr %call.i, align 4
  %54 = and i32 %sub, -4
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %10, i32 noundef %54, i32 noundef 3520) #8
  %dwords = getelementptr inbounds %struct.sfdp, ptr %call.i, i32 0, i32 1
  %55 = ptrtoint ptr %dwords to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call5.i.i, ptr %dwords, align 4
  %tobool106.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool106.not, label %if.then107, label %if.end108

if.then107:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @devm_kfree(ptr noundef %10, ptr noundef nonnull %call.i) #8
  br label %exit

if.end108:                                        ; preds = %if.end101
  %call110 = tail call fastcc i32 @spi_nor_read_sfdp(ptr noundef %nor, i32 noundef 0, i32 noundef %sfdp_size.1, ptr noundef nonnull %call5.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %cmp111 = icmp slt i32 %call110, 0
  br i1 %cmp111, label %do.body114, label %if.end131

do.body114:                                       ; preds = %if.end108
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_nor_parse_sfdp.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spi_nor_parse_sfdp, %if.then126)) #8
          to label %do.end129 [label %if.then126], !srcloc !51

if.then126:                                       ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spi_nor_parse_sfdp.__UNIQUE_ID_ddebug276, ptr noundef %10, ptr noundef nonnull @.str.5) #8
  br label %do.end129

do.end129:                                        ; preds = %if.then126, %do.body114
  %56 = ptrtoint ptr %dwords to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dwords, align 4
  tail call void @devm_kfree(ptr noundef %10, ptr noundef %57) #8
  tail call void @devm_kfree(ptr noundef %10, ptr noundef nonnull %call.i) #8
  br label %exit

if.end131:                                        ; preds = %if.end108
  %sfdp132 = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 19
  %58 = ptrtoint ptr %sfdp132 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call.i, ptr %sfdp132, align 4
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %1, align 2
  %conv135 = zext i8 %60 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %cmp136330.not = icmp eq i8 %60, 0
  br i1 %cmp136330.not, label %if.end131.for.end176_crit_edge, label %if.end131.for.body138_crit_edge

if.end131.for.body138_crit_edge:                  ; preds = %if.end131
  br label %for.body138

if.end131.for.end176_crit_edge:                   ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end176

for.body138:                                      ; preds = %for.inc174.for.body138_crit_edge, %if.end131.for.body138_crit_edge
  %bfpt_header.0334 = phi ptr [ %bfpt_header.1, %for.inc174.for.body138_crit_edge ], [ %2, %if.end131.for.body138_crit_edge ]
  %i.1331 = phi i32 [ %inc175, %for.inc174.for.body138_crit_edge ], [ 0, %if.end131.for.body138_crit_edge ]
  %arrayidx139 = getelementptr %struct.sfdp_parameter_header, ptr %param_headers.0343, i32 %i.1331
  %id_msb140 = getelementptr %struct.sfdp_parameter_header, ptr %param_headers.0343, i32 %i.1331, i32 5
  %61 = ptrtoint ptr %id_msb140 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %id_msb140, align 1
  %conv141 = zext i8 %62 to i32
  %shl142 = shl nuw nsw i32 %conv141, 8
  %63 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx139, align 8
  %conv144 = zext i8 %64 to i32
  %or145 = or i32 %shl142, %conv144
  call void @__sanitizer_cov_trace_const_cmp4(i32 65280, i32 %or145)
  %cmp146 = icmp eq i32 %or145, 65280
  br i1 %cmp146, label %land.lhs.true, label %for.body138.for.inc174_crit_edge

for.body138.for.inc174_crit_edge:                 ; preds = %for.body138
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc174

land.lhs.true:                                    ; preds = %for.body138
  %major148 = getelementptr %struct.sfdp_parameter_header, ptr %param_headers.0343, i32 %i.1331, i32 2
  %65 = ptrtoint ptr %major148 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %major148, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %66)
  %cmp150 = icmp eq i8 %66, 1
  br i1 %cmp150, label %land.lhs.true152, label %land.lhs.true.for.inc174_crit_edge

land.lhs.true.for.inc174_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc174

land.lhs.true152:                                 ; preds = %land.lhs.true
  %minor = getelementptr %struct.sfdp_parameter_header, ptr %param_headers.0343, i32 %i.1331, i32 1
  %67 = ptrtoint ptr %minor to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %minor, align 1
  %minor154 = getelementptr inbounds %struct.sfdp_parameter_header, ptr %bfpt_header.0334, i32 0, i32 1
  %69 = ptrtoint ptr %minor154 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %minor154, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %68, i8 %70)
  %cmp156 = icmp ugt i8 %68, %70
  br i1 %cmp156, label %land.lhs.true152.if.then172_crit_edge, label %lor.lhs.false158

land.lhs.true152.if.then172_crit_edge:            ; preds = %land.lhs.true152
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then172

lor.lhs.false158:                                 ; preds = %land.lhs.true152
  call void @__sanitizer_cov_trace_cmp1(i8 %68, i8 %70)
  %cmp163 = icmp eq i8 %68, %70
  br i1 %cmp163, label %land.lhs.true165, label %lor.lhs.false158.for.inc174_crit_edge

lor.lhs.false158.for.inc174_crit_edge:            ; preds = %lor.lhs.false158
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc174

land.lhs.true165:                                 ; preds = %lor.lhs.false158
  %length166 = getelementptr %struct.sfdp_parameter_header, ptr %param_headers.0343, i32 %i.1331, i32 3
  %71 = ptrtoint ptr %length166 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %length166, align 1
  %length168 = getelementptr inbounds %struct.sfdp_parameter_header, ptr %bfpt_header.0334, i32 0, i32 3
  %73 = ptrtoint ptr %length168 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %length168, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %72, i8 %74)
  %cmp170 = icmp ugt i8 %72, %74
  br i1 %cmp170, label %land.lhs.true165.if.then172_crit_edge, label %land.lhs.true165.for.inc174_crit_edge

land.lhs.true165.for.inc174_crit_edge:            ; preds = %land.lhs.true165
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc174

land.lhs.true165.if.then172_crit_edge:            ; preds = %land.lhs.true165
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then172

if.then172:                                       ; preds = %land.lhs.true165.if.then172_crit_edge, %land.lhs.true152.if.then172_crit_edge
  br label %for.inc174

for.inc174:                                       ; preds = %if.then172, %land.lhs.true165.for.inc174_crit_edge, %lor.lhs.false158.for.inc174_crit_edge, %land.lhs.true.for.inc174_crit_edge, %for.body138.for.inc174_crit_edge
  %bfpt_header.1 = phi ptr [ %arrayidx139, %if.then172 ], [ %bfpt_header.0334, %land.lhs.true165.for.inc174_crit_edge ], [ %bfpt_header.0334, %lor.lhs.false158.for.inc174_crit_edge ], [ %bfpt_header.0334, %land.lhs.true.for.inc174_crit_edge ], [ %bfpt_header.0334, %for.body138.for.inc174_crit_edge ]
  %inc175 = add nuw nsw i32 %i.1331, 1
  %exitcond339.not = icmp eq i32 %inc175, %conv135
  br i1 %exitcond339.not, label %for.inc174.for.end176_crit_edge, label %for.inc174.for.body138_crit_edge

for.inc174.for.body138_crit_edge:                 ; preds = %for.inc174
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body138

for.inc174.for.end176_crit_edge:                  ; preds = %for.inc174
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end176

for.end176:                                       ; preds = %for.inc174.for.end176_crit_edge, %if.end131.for.end176_crit_edge
  %bfpt_header.0.lcssa = phi ptr [ %2, %if.end131.for.end176_crit_edge ], [ %bfpt_header.1, %for.inc174.for.end176_crit_edge ]
  %call177 = call fastcc i32 @spi_nor_parse_bfpt(ptr noundef %nor, ptr noundef %bfpt_header.0.lcssa)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call177)
  %tobool178.not = icmp eq i32 %call177, 0
  br i1 %tobool178.not, label %for.cond181.preheader, label %for.end176.exit_crit_edge

for.end176.exit_crit_edge:                        ; preds = %for.end176
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

for.cond181.preheader:                            ; preds = %for.end176
  %75 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %cmp184337.not = icmp eq i8 %76, 0
  br i1 %cmp184337.not, label %for.cond181.preheader.for.end215_crit_edge, label %for.cond181.preheader.for.body186_crit_edge

for.cond181.preheader.for.body186_crit_edge:      ; preds = %for.cond181.preheader
  br label %for.body186

for.cond181.preheader.for.end215_crit_edge:       ; preds = %for.cond181.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end215

for.body186:                                      ; preds = %for.inc213.for.body186_crit_edge, %for.cond181.preheader.for.body186_crit_edge
  %i.2338 = phi i32 [ %inc214, %for.inc213.for.body186_crit_edge ], [ 0, %for.cond181.preheader.for.body186_crit_edge ]
  %arrayidx187 = getelementptr %struct.sfdp_parameter_header, ptr %param_headers.0343, i32 %i.2338
  %id_msb188 = getelementptr %struct.sfdp_parameter_header, ptr %param_headers.0343, i32 %i.2338, i32 5
  %77 = ptrtoint ptr %id_msb188 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %id_msb188, align 1
  %conv189 = zext i8 %78 to i16
  %shl190 = shl nuw i16 %conv189, 8
  %79 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx187, align 8
  %conv192 = zext i8 %80 to i16
  %or193 = or i16 %shl190, %conv192
  %81 = zext i16 %or193 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values)
  switch i16 %or193, label %for.body186.for.inc213_crit_edge [
    i16 -127, label %sw.bb
    i16 -124, label %sw.bb195
    i16 -251, label %sw.bb197
    i16 -121, label %sw.bb199
  ]

for.body186.for.inc213_crit_edge:                 ; preds = %for.body186
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc213

sw.bb:                                            ; preds = %for.body186
  call void @__sanitizer_cov_trace_pc() #10
  %call194 = call fastcc i32 @spi_nor_parse_smpt(ptr noundef %nor, ptr noundef %arrayidx187)
  br label %sw.epilog

sw.bb195:                                         ; preds = %for.body186
  call void @__sanitizer_cov_trace_pc() #10
  %call196 = call fastcc i32 @spi_nor_parse_4bait(ptr noundef %nor, ptr noundef %arrayidx187)
  br label %sw.epilog

sw.bb197:                                         ; preds = %for.body186
  call void @__sanitizer_cov_trace_pc() #10
  %call198 = call fastcc i32 @spi_nor_parse_profile1(ptr noundef %nor, ptr noundef %arrayidx187)
  br label %sw.epilog

sw.bb199:                                         ; preds = %for.body186
  call void @__sanitizer_cov_trace_pc() #10
  %call200 = call fastcc i32 @spi_nor_parse_sccr(ptr noundef %nor, ptr noundef %arrayidx187)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb199, %sw.bb197, %sw.bb195, %sw.bb
  %err.1 = phi i32 [ %call200, %sw.bb199 ], [ %call198, %sw.bb197 ], [ %call196, %sw.bb195 ], [ %call194, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool201.not = icmp eq i32 %err.1, 0
  br i1 %tobool201.not, label %sw.epilog.for.inc213_crit_edge, label %do.end205

sw.epilog.for.inc213_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc213

do.end205:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %82 = ptrtoint ptr %id_msb188 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %id_msb188, align 1
  %conv207 = zext i8 %83 to i32
  %shl208 = shl nuw nsw i32 %conv207, 8
  %84 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx187, align 8
  %conv210 = zext i8 %85 to i32
  %or211 = or i32 %shl208, %conv210
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.6, i32 noundef %or211) #13
  br label %for.inc213

for.inc213:                                       ; preds = %do.end205, %sw.epilog.for.inc213_crit_edge, %for.body186.for.inc213_crit_edge
  %inc214 = add nuw nsw i32 %i.2338, 1
  %86 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %1, align 2
  %conv183 = zext i8 %87 to i32
  %cmp184 = icmp ult i32 %inc214, %conv183
  br i1 %cmp184, label %for.inc213.for.body186_crit_edge, label %for.inc213.for.end215_crit_edge

for.inc213.for.end215_crit_edge:                  ; preds = %for.inc213
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end215

for.inc213.for.body186_crit_edge:                 ; preds = %for.inc213
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body186

for.end215:                                       ; preds = %for.inc213.for.end215_crit_edge, %for.cond181.preheader.for.end215_crit_edge
  call fastcc void @spi_nor_post_sfdp_fixups(ptr noundef %nor)
  br label %exit

exit:                                             ; preds = %for.end215, %for.end176.exit_crit_edge, %do.end129, %if.then107, %if.end97.exit_crit_edge, %if.then48, %do.body
  %err.3 = phi i32 [ %call40, %if.then48 ], [ %call110, %do.end129 ], [ %call177, %for.end176.exit_crit_edge ], [ 0, %for.end215 ], [ -12, %if.then107 ], [ -12, %if.end97.exit_crit_edge ], [ %call40, %do.body ]
  %param_headers.1 = phi ptr [ %call9.i, %if.then48 ], [ %param_headers.0343, %do.end129 ], [ %param_headers.0343, %for.end176.exit_crit_edge ], [ %param_headers.0343, %for.end215 ], [ %param_headers.0343, %if.then107 ], [ %param_headers.0343, %if.end97.exit_crit_edge ], [ %call9.i, %do.body ]
  call void @kfree(ptr noundef %param_headers.1) #8
  br label %cleanup

cleanup:                                          ; preds = %exit, %if.then32.cleanup_crit_edge, %lor.lhs.false12.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %spi_nor_read_sfdp_dma_unsafe.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.3, %exit ], [ %retval.0.i.i.i, %spi_nor_read_sfdp_dma_unsafe.exit.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false12.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ -12, %if.then32.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %header) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @spi_nor_read_sfdp(ptr noundef %nor, i32 noundef %addr, i32 noundef %len, ptr noundef %buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %read_opcode1 = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 10
  %0 = ptrtoint ptr %read_opcode1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %read_opcode1, align 2
  %addr_width2 = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 8
  %2 = ptrtoint ptr %addr_width2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %addr_width2, align 4
  %read_dummy3 = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 11
  %4 = ptrtoint ptr %read_dummy3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %read_dummy3, align 1
  store i8 90, ptr %read_opcode1, align 2
  store i8 3, ptr %addr_width2, align 4
  store i8 8, ptr %read_dummy3, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not18.i = icmp eq i32 %len, 0
  br i1 %tobool.not18.i, label %entry.spi_nor_read_raw.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.spi_nor_read_raw.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_nor_read_raw.exit

while.body.i:                                     ; preds = %if.end6.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %buf.addr.021.i = phi ptr [ %add.ptr.i, %if.end6.i.while.body.i_crit_edge ], [ %buf, %entry.while.body.i_crit_edge ]
  %len.addr.020.i = phi i32 [ %sub.i, %if.end6.i.while.body.i_crit_edge ], [ %len, %entry.while.body.i_crit_edge ]
  %addr.addr.019.i = phi i32 [ %add.i, %if.end6.i.while.body.i_crit_edge ], [ %addr, %entry.while.body.i_crit_edge ]
  %conv.i = zext i32 %addr.addr.019.i to i64
  %call.i = tail call i32 @spi_nor_read_data(ptr noundef %nor, i64 noundef %conv.i, i32 noundef %len.addr.020.i, ptr noundef %buf.addr.021.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %while.body.i.spi_nor_read_raw.exit_crit_edge, label %if.end.i

while.body.i.spi_nor_read_raw.exit_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_nor_read_raw.exit

if.end.i:                                         ; preds = %while.body.i
  %6 = add nsw i32 %call.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %len.addr.020.i)
  %.not.i = icmp ult i32 %6, %len.addr.020.i
  br i1 %.not.i, label %if.end6.i, label %if.end.i.spi_nor_read_raw.exit_crit_edge

if.end.i.spi_nor_read_raw.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_nor_read_raw.exit

if.end6.i:                                        ; preds = %if.end.i
  %add.ptr.i = getelementptr i8, ptr %buf.addr.021.i, i32 %call.i
  %add.i = add i32 %call.i, %addr.addr.019.i
  %sub.i = sub i32 %len.addr.020.i, %call.i
  %tobool.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool.not.i, label %if.end6.i.spi_nor_read_raw.exit_crit_edge, label %if.end6.i.while.body.i_crit_edge

if.end6.i.while.body.i_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

if.end6.i.spi_nor_read_raw.exit_crit_edge:        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_nor_read_raw.exit

spi_nor_read_raw.exit:                            ; preds = %if.end6.i.spi_nor_read_raw.exit_crit_edge, %if.end.i.spi_nor_read_raw.exit_crit_edge, %while.body.i.spi_nor_read_raw.exit_crit_edge, %entry.spi_nor_read_raw.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.spi_nor_read_raw.exit_crit_edge ], [ %call.i, %while.body.i.spi_nor_read_raw.exit_crit_edge ], [ -5, %if.end.i.spi_nor_read_raw.exit_crit_edge ], [ 0, %if.end6.i.spi_nor_read_raw.exit_crit_edge ]
  %7 = ptrtoint ptr %read_opcode1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %1, ptr %read_opcode1, align 2
  %8 = ptrtoint ptr %addr_width2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %3, ptr %addr_width2, align 4
  %9 = ptrtoint ptr %read_dummy3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %5, ptr %read_dummy3, align 1
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @spi_nor_parse_bfpt(ptr noundef %nor, ptr noundef %bfpt_header) unnamed_addr #0 align 64 {
entry:
  %bfpt = alloca %struct.sfdp_bfpt, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %params1 = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 21
  %0 = ptrtoint ptr %params1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params1, align 4
  %erase_map = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 8
  %erase_type2 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 8, i32 2
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %bfpt) #8
  %length = getelementptr inbounds %struct.sfdp_parameter_header, ptr %bfpt_header, i32 0, i32 3
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %length, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %3)
  %cmp = icmp ult i8 %3, 9
  br i1 %cmp, label %entry.cleanup200_crit_edge, label %if.end

entry.cleanup200_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup200

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %3)
  %cmp6 = icmp ugt i8 %3, 20
  %conv = zext i8 %3 to i32
  %mul = shl nuw nsw i32 %conv, 2
  %cond = select i1 %cmp6, i32 80, i32 %mul
  %parameter_table_pointer = getelementptr inbounds %struct.sfdp_parameter_header, ptr %bfpt_header, i32 0, i32 4
  %arrayidx = getelementptr %struct.sfdp_parameter_header, ptr %bfpt_header, i32 0, i32 4, i32 2
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %arrayidx10 = getelementptr %struct.sfdp_parameter_header, ptr %bfpt_header, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx10, align 1
  %8 = ptrtoint ptr %parameter_table_pointer to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %parameter_table_pointer, align 1
  %10 = call ptr @memset(ptr %bfpt, i32 0, i32 80)
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %cond, i32 noundef 3264) #12
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup200_crit_edge, label %if.end.i

if.end.cleanup200_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup200

if.end.i:                                         ; preds = %if.end
  %conv11 = zext i8 %7 to i32
  %shl12 = shl nuw nsw i32 %conv11, 8
  %conv8 = zext i8 %5 to i32
  %shl = shl nuw nsw i32 %conv8, 16
  %or = or i32 %shl12, %shl
  %conv15 = zext i8 %9 to i32
  %or17 = or i32 %or, %conv15
  %read_opcode1.i.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 10
  %11 = ptrtoint ptr %read_opcode1.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %read_opcode1.i.i, align 2
  %addr_width2.i.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 8
  %13 = ptrtoint ptr %addr_width2.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %addr_width2.i.i, align 4
  %read_dummy3.i.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 11
  %15 = ptrtoint ptr %read_dummy3.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %read_dummy3.i.i, align 1
  store i8 90, ptr %read_opcode1.i.i, align 2
  store i8 3, ptr %addr_width2.i.i, align 4
  store i8 8, ptr %read_dummy3.i.i, align 1
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %if.end6.i.i.i.while.body.i.i.i_crit_edge, %if.end.i
  %buf.addr.021.i.i.i = phi ptr [ %add.ptr.i.i.i, %if.end6.i.i.i.while.body.i.i.i_crit_edge ], [ %call9.i.i, %if.end.i ]
  %len.addr.020.i.i.i = phi i32 [ %sub.i.i.i, %if.end6.i.i.i.while.body.i.i.i_crit_edge ], [ %cond, %if.end.i ]
  %addr.addr.019.i.i.i = phi i32 [ %add.i.i.i, %if.end6.i.i.i.while.body.i.i.i_crit_edge ], [ %or17, %if.end.i ]
  %conv.i.i.i = zext i32 %addr.addr.019.i.i.i to i64
  %call.i.i.i = tail call i32 @spi_nor_read_data(ptr noundef %nor, i64 noundef %conv.i.i.i, i32 noundef %len.addr.020.i.i.i, ptr noundef %buf.addr.021.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i8.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i8.i, label %while.body.i.i.i.spi_nor_read_sfdp_dma_unsafe.exit_crit_edge, label %if.end.i.i9.i

while.body.i.i.i.spi_nor_read_sfdp_dma_unsafe.exit_crit_edge: ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_nor_read_sfdp_dma_unsafe.exit

if.end.i.i9.i:                                    ; preds = %while.body.i.i.i
  %17 = add nsw i32 %call.i.i.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %len.addr.020.i.i.i)
  %.not.i.i.i = icmp ult i32 %17, %len.addr.020.i.i.i
  br i1 %.not.i.i.i, label %if.end6.i.i.i, label %if.end.i.i9.i.spi_nor_read_sfdp_dma_unsafe.exit_crit_edge

if.end.i.i9.i.spi_nor_read_sfdp_dma_unsafe.exit_crit_edge: ; preds = %if.end.i.i9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_nor_read_sfdp_dma_unsafe.exit

if.end6.i.i.i:                                    ; preds = %if.end.i.i9.i
  %add.ptr.i.i.i = getelementptr i8, ptr %buf.addr.021.i.i.i, i32 %call.i.i.i
  %add.i.i.i = add i32 %call.i.i.i, %addr.addr.019.i.i.i
  %sub.i.i.i = sub i32 %len.addr.020.i.i.i, %call.i.i.i
  %tobool.not.i.i10.i = icmp eq i32 %sub.i.i.i, 0
  br i1 %tobool.not.i.i10.i, label %if.end6.i.i.i.spi_nor_read_sfdp_dma_unsafe.exit_crit_edge, label %if.end6.i.i.i.while.body.i.i.i_crit_edge

if.end6.i.i.i.while.body.i.i.i_crit_edge:         ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i.i

if.end6.i.i.i.spi_nor_read_sfdp_dma_unsafe.exit_crit_edge: ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_nor_read_sfdp_dma_unsafe.exit

spi_nor_read_sfdp_dma_unsafe.exit:                ; preds = %if.end6.i.i.i.spi_nor_read_sfdp_dma_unsafe.exit_crit_edge, %if.end.i.i9.i.spi_nor_read_sfdp_dma_unsafe.exit_crit_edge, %while.body.i.i.i.spi_nor_read_sfdp_dma_unsafe.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %if.end6.i.i.i.spi_nor_read_sfdp_dma_unsafe.exit_crit_edge ], [ -5, %if.end.i.i9.i.spi_nor_read_sfdp_dma_unsafe.exit_crit_edge ], [ %call.i.i.i, %while.body.i.i.i.spi_nor_read_sfdp_dma_unsafe.exit_crit_edge ]
  %18 = ptrtoint ptr %read_opcode1.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %12, ptr %read_opcode1.i.i, align 2
  %19 = ptrtoint ptr %addr_width2.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %14, ptr %addr_width2.i.i, align 4
  %20 = ptrtoint ptr %read_dummy3.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %16, ptr %read_dummy3.i.i, align 1
  %21 = call ptr @memcpy(ptr %bfpt, ptr %call9.i.i, i32 %cond)
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i)
  %cmp18 = icmp slt i32 %retval.0.i.i.i, 0
  br i1 %cmp18, label %spi_nor_read_sfdp_dma_unsafe.exit.cleanup200_crit_edge, label %while.body.i.preheader

spi_nor_read_sfdp_dma_unsafe.exit.cleanup200_crit_edge: ; preds = %spi_nor_read_sfdp_dma_unsafe.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup200

while.body.i.preheader:                           ; preds = %spi_nor_read_sfdp_dma_unsafe.exit
  %22 = ptrtoint ptr %bfpt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bfpt, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #8
  %25 = ptrtoint ptr %bfpt to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %bfpt, align 4
  %incdec.ptr.i = getelementptr inbounds i32, ptr %bfpt, i32 1
  %26 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %incdec.ptr.i, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #8
  %29 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %incdec.ptr.i, align 4
  %incdec.ptr.i.1 = getelementptr inbounds i32, ptr %bfpt, i32 2
  %30 = ptrtoint ptr %incdec.ptr.i.1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %incdec.ptr.i.1, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #8
  %33 = ptrtoint ptr %incdec.ptr.i.1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %incdec.ptr.i.1, align 4
  %incdec.ptr.i.2 = getelementptr inbounds i32, ptr %bfpt, i32 3
  %34 = ptrtoint ptr %incdec.ptr.i.2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %incdec.ptr.i.2, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #8
  %37 = ptrtoint ptr %incdec.ptr.i.2 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %incdec.ptr.i.2, align 4
  %incdec.ptr.i.3 = getelementptr inbounds i32, ptr %bfpt, i32 4
  %38 = ptrtoint ptr %incdec.ptr.i.3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %incdec.ptr.i.3, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #8
  %41 = ptrtoint ptr %incdec.ptr.i.3 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %incdec.ptr.i.3, align 4
  %incdec.ptr.i.4 = getelementptr inbounds i32, ptr %bfpt, i32 5
  %42 = ptrtoint ptr %incdec.ptr.i.4 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %incdec.ptr.i.4, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #8
  %45 = ptrtoint ptr %incdec.ptr.i.4 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %incdec.ptr.i.4, align 4
  %incdec.ptr.i.5 = getelementptr inbounds i32, ptr %bfpt, i32 6
  %46 = ptrtoint ptr %incdec.ptr.i.5 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %incdec.ptr.i.5, align 4
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #8
  %49 = ptrtoint ptr %incdec.ptr.i.5 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %incdec.ptr.i.5, align 4
  %incdec.ptr.i.6 = getelementptr inbounds i32, ptr %bfpt, i32 7
  %50 = ptrtoint ptr %incdec.ptr.i.6 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %incdec.ptr.i.6, align 4
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #8
  %53 = ptrtoint ptr %incdec.ptr.i.6 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %incdec.ptr.i.6, align 4
  %incdec.ptr.i.7 = getelementptr inbounds i32, ptr %bfpt, i32 8
  %54 = ptrtoint ptr %incdec.ptr.i.7 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %incdec.ptr.i.7, align 4
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #8
  %57 = ptrtoint ptr %incdec.ptr.i.7 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %incdec.ptr.i.7, align 4
  %incdec.ptr.i.8 = getelementptr inbounds i32, ptr %bfpt, i32 9
  %58 = ptrtoint ptr %incdec.ptr.i.8 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %incdec.ptr.i.8, align 4
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #8
  %61 = ptrtoint ptr %incdec.ptr.i.8 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %incdec.ptr.i.8, align 4
  %incdec.ptr.i.9 = getelementptr inbounds i32, ptr %bfpt, i32 10
  %62 = ptrtoint ptr %incdec.ptr.i.9 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %incdec.ptr.i.9, align 4
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #8
  %65 = ptrtoint ptr %incdec.ptr.i.9 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %incdec.ptr.i.9, align 4
  %incdec.ptr.i.10 = getelementptr inbounds i32, ptr %bfpt, i32 11
  %66 = ptrtoint ptr %incdec.ptr.i.10 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %incdec.ptr.i.10, align 4
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #8
  %69 = ptrtoint ptr %incdec.ptr.i.10 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %incdec.ptr.i.10, align 4
  %incdec.ptr.i.11 = getelementptr inbounds i32, ptr %bfpt, i32 12
  %70 = ptrtoint ptr %incdec.ptr.i.11 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %incdec.ptr.i.11, align 4
  %72 = tail call i32 @llvm.bswap.i32(i32 %71) #8
  %73 = ptrtoint ptr %incdec.ptr.i.11 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %incdec.ptr.i.11, align 4
  %incdec.ptr.i.12 = getelementptr inbounds i32, ptr %bfpt, i32 13
  %74 = ptrtoint ptr %incdec.ptr.i.12 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %incdec.ptr.i.12, align 4
  %76 = tail call i32 @llvm.bswap.i32(i32 %75) #8
  %77 = ptrtoint ptr %incdec.ptr.i.12 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %incdec.ptr.i.12, align 4
  %incdec.ptr.i.13 = getelementptr inbounds i32, ptr %bfpt, i32 14
  %78 = ptrtoint ptr %incdec.ptr.i.13 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %incdec.ptr.i.13, align 4
  %80 = tail call i32 @llvm.bswap.i32(i32 %79) #8
  %81 = ptrtoint ptr %incdec.ptr.i.13 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %incdec.ptr.i.13, align 4
  %incdec.ptr.i.14 = getelementptr inbounds i32, ptr %bfpt, i32 15
  %82 = ptrtoint ptr %incdec.ptr.i.14 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %incdec.ptr.i.14, align 4
  %84 = tail call i32 @llvm.bswap.i32(i32 %83) #8
  %85 = ptrtoint ptr %incdec.ptr.i.14 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %incdec.ptr.i.14, align 4
  %incdec.ptr.i.15 = getelementptr inbounds i32, ptr %bfpt, i32 16
  %86 = ptrtoint ptr %incdec.ptr.i.15 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %incdec.ptr.i.15, align 4
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #8
  %89 = ptrtoint ptr %incdec.ptr.i.15 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %incdec.ptr.i.15, align 4
  %incdec.ptr.i.16 = getelementptr inbounds i32, ptr %bfpt, i32 17
  %90 = ptrtoint ptr %incdec.ptr.i.16 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %incdec.ptr.i.16, align 4
  %92 = tail call i32 @llvm.bswap.i32(i32 %91) #8
  %93 = ptrtoint ptr %incdec.ptr.i.16 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %incdec.ptr.i.16, align 4
  %incdec.ptr.i.17 = getelementptr inbounds i32, ptr %bfpt, i32 18
  %94 = ptrtoint ptr %incdec.ptr.i.17 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %incdec.ptr.i.17, align 4
  %96 = tail call i32 @llvm.bswap.i32(i32 %95) #8
  %97 = ptrtoint ptr %incdec.ptr.i.17 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %incdec.ptr.i.17, align 4
  %incdec.ptr.i.18 = getelementptr inbounds i32, ptr %bfpt, i32 19
  %98 = ptrtoint ptr %incdec.ptr.i.18 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %incdec.ptr.i.18, align 4
  %100 = tail call i32 @llvm.bswap.i32(i32 %99) #8
  %101 = ptrtoint ptr %incdec.ptr.i.18 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %incdec.ptr.i.18, align 4
  %102 = ptrtoint ptr %bfpt to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %bfpt, align 4
  %and = and i32 %103, 393216
  %104 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %104, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %and, label %while.body.i.preheader.sw.epilog_crit_edge [
    i32 0, label %while.body.i.preheader.sw.epilog.sink.split_crit_edge
    i32 131072, label %while.body.i.preheader.sw.epilog.sink.split_crit_edge306
    i32 262144, label %sw.bb25
  ]

while.body.i.preheader.sw.epilog.sink.split_crit_edge306: ; preds = %while.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

while.body.i.preheader.sw.epilog.sink.split_crit_edge: ; preds = %while.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

while.body.i.preheader.sw.epilog_crit_edge:       ; preds = %while.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb25:                                          ; preds = %while.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb25, %while.body.i.preheader.sw.epilog.sink.split_crit_edge, %while.body.i.preheader.sw.epilog.sink.split_crit_edge306
  %.sink = phi i8 [ 4, %sw.bb25 ], [ 3, %while.body.i.preheader.sw.epilog.sink.split_crit_edge ], [ 3, %while.body.i.preheader.sw.epilog.sink.split_crit_edge306 ]
  %105 = ptrtoint ptr %addr_width2.i.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %.sink, ptr %addr_width2.i.i, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %while.body.i.preheader.sw.epilog_crit_edge
  %106 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %incdec.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %107)
  %tobool.not = icmp sgt i32 %107, -1
  br i1 %tobool.not, label %if.else, label %if.then30

if.then30:                                        ; preds = %sw.epilog
  %and31 = and i32 %107, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %and31)
  %cmp32 = icmp ugt i32 %and31, 63
  br i1 %cmp32, label %if.then30.cleanup200_crit_edge, label %if.end35

if.then30.cleanup200_crit_edge:                   ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup200

if.end35:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  %sh_prom = zext i32 %and31 to i64
  %shl36 = shl nuw i64 1, %sh_prom
  br label %if.end39

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %add = add nuw i32 %107, 1
  %conv37 = zext i32 %add to i64
  br label %if.end39

if.end39:                                         ; preds = %if.else, %if.end35
  %storemerge = phi i64 [ %conv37, %if.else ], [ %shl36, %if.end35 ]
  %shr = lshr i64 %storemerge, 3
  %108 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %108)
  store i64 %shr, ptr %1, align 8
  %hwcaps53 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end39
  %i.0300 = phi i32 [ 0, %if.end39 ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx43 = getelementptr [6 x %struct.sfdp_bfpt_read], ptr @sfdp_bfpt_reads, i32 0, i32 %i.0300
  %supported_dword = getelementptr [6 x %struct.sfdp_bfpt_read], ptr @sfdp_bfpt_reads, i32 0, i32 %i.0300, i32 1
  %109 = ptrtoint ptr %supported_dword to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %supported_dword, align 4
  %arrayidx45 = getelementptr [20 x i32], ptr %bfpt, i32 0, i32 %110
  %111 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx45, align 4
  %supported_bit = getelementptr [6 x %struct.sfdp_bfpt_read], ptr @sfdp_bfpt_reads, i32 0, i32 %i.0300, i32 2
  %113 = ptrtoint ptr %supported_bit to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %supported_bit, align 4
  %and46 = and i32 %114, %112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  %115 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx43, align 4
  br i1 %tobool47.not, label %if.then48, label %if.end51

if.then48:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %neg = xor i32 %116, -1
  %117 = ptrtoint ptr %hwcaps53 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %hwcaps53, align 4
  %and50 = and i32 %118, %neg
  store i32 %and50, ptr %hwcaps53, align 4
  br label %cleanup

if.end51:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %119 = ptrtoint ptr %hwcaps53 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %hwcaps53, align 4
  %or55 = or i32 %120, %116
  store i32 %or55, ptr %hwcaps53, align 4
  %call57 = tail call i32 @spi_nor_hwcaps_read2cmd(i32 noundef %116) #8
  %arrayidx58 = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 6, i32 %call57
  %settings_dword = getelementptr [6 x %struct.sfdp_bfpt_read], ptr @sfdp_bfpt_reads, i32 0, i32 %i.0300, i32 3
  %121 = ptrtoint ptr %settings_dword to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %settings_dword, align 4
  %arrayidx60 = getelementptr [20 x i32], ptr %bfpt, i32 0, i32 %122
  %123 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx60, align 4
  %settings_shift = getelementptr [6 x %struct.sfdp_bfpt_read], ptr @sfdp_bfpt_reads, i32 0, i32 %i.0300, i32 4
  %125 = ptrtoint ptr %settings_shift to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %settings_shift, align 4
  %shr61 = lshr i32 %124, %126
  %proto = getelementptr [6 x %struct.sfdp_bfpt_read], ptr @sfdp_bfpt_reads, i32 0, i32 %i.0300, i32 5
  %127 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %proto, align 4
  %129 = trunc i32 %shr61 to i8
  %130 = lshr i8 %129, 5
  %131 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %130, ptr %arrayidx58, align 4
  %conv5.i = and i8 %129, 31
  %num_wait_states.i = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 6, i32 %call57, i32 1
  %132 = ptrtoint ptr %num_wait_states.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %conv5.i, ptr %num_wait_states.i, align 1
  %133 = lshr i32 %shr61, 8
  %conv9.i = trunc i32 %133 to i8
  %opcode.i = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 6, i32 %call57, i32 2
  %134 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %conv9.i, ptr %opcode.i, align 2
  %proto10.i = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 6, i32 %call57, i32 3
  %135 = ptrtoint ptr %proto10.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %128, ptr %proto10.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %if.then48
  %inc = add nuw nsw i32 %i.0300, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %cleanup
  %136 = call ptr @memset(ptr %erase_map, i32 0, i32 96)
  %arrayidx71 = getelementptr inbounds [20 x i32], ptr %bfpt, i32 0, i32 7
  %137 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arrayidx71, align 4
  %and75 = and i32 %138, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %for.end.cleanup90_crit_edge, label %if.end78

for.end.cleanup90_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup90

if.end78:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %shl79 = shl nuw i32 1, %and75
  %conv74 = lshr i32 %138, 8
  %conv83 = trunc i32 %conv74 to i8
  tail call void @spi_nor_set_erase_type(ptr noundef %erase_type2, i32 noundef %shl79, i8 noundef zeroext %conv83) #8
  br label %cleanup90

cleanup90:                                        ; preds = %if.end78, %for.end.cleanup90_crit_edge
  %erase_mask.1 = phi i8 [ 1, %if.end78 ], [ 0, %for.end.cleanup90_crit_edge ]
  %139 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx71, align 4
  %shr72.1 = lshr i32 %140, 16
  %and75.1 = and i32 %shr72.1, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75.1)
  %tobool76.not.1 = icmp eq i32 %and75.1, 0
  br i1 %tobool76.not.1, label %cleanup90.cleanup90.1_crit_edge, label %if.end78.1

cleanup90.cleanup90.1_crit_edge:                  ; preds = %cleanup90
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup90.1

if.end78.1:                                       ; preds = %cleanup90
  call void @__sanitizer_cov_trace_pc() #10
  %shl79.1 = shl nuw i32 1, %and75.1
  %conv74.1 = lshr i32 %140, 24
  %conv83.1 = trunc i32 %conv74.1 to i8
  %conv87.1 = or i8 %erase_mask.1, 2
  %arrayidx88.1 = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 8, i32 2, i32 1
  %idx.i.1 = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 8, i32 2, i32 1, i32 4
  %141 = ptrtoint ptr %idx.i.1 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 1, ptr %idx.i.1, align 1
  tail call void @spi_nor_set_erase_type(ptr noundef %arrayidx88.1, i32 noundef %shl79.1, i8 noundef zeroext %conv83.1) #8
  br label %cleanup90.1

cleanup90.1:                                      ; preds = %if.end78.1, %cleanup90.cleanup90.1_crit_edge
  %erase_mask.1.1 = phi i8 [ %conv87.1, %if.end78.1 ], [ %erase_mask.1, %cleanup90.cleanup90.1_crit_edge ]
  %arrayidx71.2 = getelementptr inbounds [20 x i32], ptr %bfpt, i32 0, i32 8
  %142 = ptrtoint ptr %arrayidx71.2 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx71.2, align 4
  %and75.2 = and i32 %143, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75.2)
  %tobool76.not.2 = icmp eq i32 %and75.2, 0
  br i1 %tobool76.not.2, label %cleanup90.1.cleanup90.2_crit_edge, label %if.end78.2

cleanup90.1.cleanup90.2_crit_edge:                ; preds = %cleanup90.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup90.2

if.end78.2:                                       ; preds = %cleanup90.1
  call void @__sanitizer_cov_trace_pc() #10
  %shl79.2 = shl nuw i32 1, %and75.2
  %conv74.2 = lshr i32 %143, 8
  %conv83.2 = trunc i32 %conv74.2 to i8
  %conv87.2 = or i8 %erase_mask.1.1, 4
  %arrayidx88.2 = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 8, i32 2, i32 2
  %idx.i.2 = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 8, i32 2, i32 2, i32 4
  %144 = ptrtoint ptr %idx.i.2 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 2, ptr %idx.i.2, align 1
  tail call void @spi_nor_set_erase_type(ptr noundef %arrayidx88.2, i32 noundef %shl79.2, i8 noundef zeroext %conv83.2) #8
  br label %cleanup90.2

cleanup90.2:                                      ; preds = %if.end78.2, %cleanup90.1.cleanup90.2_crit_edge
  %erase_mask.1.2 = phi i8 [ %conv87.2, %if.end78.2 ], [ %erase_mask.1.1, %cleanup90.1.cleanup90.2_crit_edge ]
  %145 = ptrtoint ptr %arrayidx71.2 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %arrayidx71.2, align 4
  %shr72.3 = lshr i32 %146, 16
  %and75.3 = and i32 %shr72.3, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75.3)
  %tobool76.not.3 = icmp eq i32 %and75.3, 0
  br i1 %tobool76.not.3, label %cleanup90.2.cleanup90.3_crit_edge, label %if.end78.3

cleanup90.2.cleanup90.3_crit_edge:                ; preds = %cleanup90.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup90.3

if.end78.3:                                       ; preds = %cleanup90.2
  call void @__sanitizer_cov_trace_pc() #10
  %shl79.3 = shl nuw i32 1, %and75.3
  %conv74.3 = lshr i32 %146, 24
  %conv83.3 = trunc i32 %conv74.3 to i8
  %conv87.3 = or i8 %erase_mask.1.2, 8
  %arrayidx88.3 = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 8, i32 2, i32 3
  %idx.i.3 = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 8, i32 2, i32 3, i32 4
  %147 = ptrtoint ptr %idx.i.3 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 3, ptr %idx.i.3, align 1
  tail call void @spi_nor_set_erase_type(ptr noundef %arrayidx88.3, i32 noundef %shl79.3, i8 noundef zeroext %conv83.3) #8
  br label %cleanup90.3

cleanup90.3:                                      ; preds = %if.end78.3, %cleanup90.2.cleanup90.3_crit_edge
  %erase_mask.1.3 = phi i8 [ %conv87.3, %if.end78.3 ], [ %erase_mask.1.2, %cleanup90.2.cleanup90.3_crit_edge ]
  %148 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %148)
  %149 = load i64, ptr %1, align 8
  tail call void @spi_nor_init_uniform_erase_map(ptr noundef %erase_map, i8 noundef zeroext %erase_mask.1.3, i64 noundef %149) #8
  tail call void @sort(ptr noundef %erase_type2, i32 noundef 4, i32 noundef 16, ptr noundef nonnull @spi_nor_map_cmp_erase_type, ptr noundef null) #8
  tail call fastcc void @spi_nor_regions_sort_erase_types(ptr noundef %erase_map)
  %uniform_region = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 8, i32 1
  %150 = ptrtoint ptr %uniform_region to i32
  call void @__asan_load8_noabort(i32 %150)
  %151 = load i64, ptr %uniform_region, align 8
  %152 = trunc i64 %151 to i8
  %conv100 = and i8 %152, 15
  %uniform_erase_type = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 8, i32 3
  %153 = ptrtoint ptr %uniform_erase_type to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %conv100, ptr %uniform_erase_type, align 8
  %154 = ptrtoint ptr %length to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %length, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %155)
  %cmp103 = icmp eq i8 %155, 9
  br i1 %cmp103, label %if.then105, label %if.end107

if.then105:                                       ; preds = %cleanup90.3
  call void @__sanitizer_cov_trace_pc() #10
  %call106 = call i32 @spi_nor_post_bfpt_fixups(ptr noundef %nor, ptr noundef %bfpt_header, ptr noundef nonnull %bfpt) #8
  br label %cleanup200

if.end107:                                        ; preds = %cleanup90.3
  %arrayidx109 = getelementptr inbounds [20 x i32], ptr %bfpt, i32 0, i32 10
  %156 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx109, align 4
  %and110 = lshr i32 %157, 4
  %shr111 = and i32 %and110, 15
  %shl112 = shl nuw nsw i32 1, %shr111
  %page_size = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 2
  %158 = ptrtoint ptr %page_size to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %shl112, ptr %page_size, align 4
  %arrayidx114 = getelementptr inbounds [20 x i32], ptr %bfpt, i32 0, i32 14
  %159 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %arrayidx114, align 4
  %and115 = lshr i32 %160, 20
  %161 = and i32 %and115, 7
  %162 = zext i32 %161 to i64
  call void @__sanitizer_cov_trace_switch(i64 %162, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %161, label %do.body [
    i32 0, label %sw.bb116
    i32 1, label %if.end107.sw.bb117_crit_edge
    i32 4, label %if.end107.sw.bb117_crit_edge307
    i32 2, label %sw.bb120
    i32 3, label %sw.bb124
    i32 5, label %sw.bb128
  ]

if.end107.sw.bb117_crit_edge307:                  ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb117

if.end107.sw.bb117_crit_edge:                     ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb117

sw.bb116:                                         ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  %quad_enable = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 11
  %163 = ptrtoint ptr %quad_enable to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr null, ptr %quad_enable, align 4
  br label %sw.epilog140

sw.bb117:                                         ; preds = %if.end107.sw.bb117_crit_edge, %if.end107.sw.bb117_crit_edge307
  %flags = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 17
  %164 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %flags, align 4
  %or118 = or i32 %165, 1536
  store i32 %or118, ptr %flags, align 4
  %quad_enable119 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 11
  %166 = ptrtoint ptr %quad_enable119 to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr @spi_nor_sr2_bit1_quad_enable, ptr %quad_enable119, align 4
  br label %sw.epilog140

sw.bb120:                                         ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  %flags121 = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 17
  %167 = ptrtoint ptr %flags121 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %flags121, align 4
  %and122 = and i32 %168, -513
  store i32 %and122, ptr %flags121, align 4
  %quad_enable123 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 11
  %169 = ptrtoint ptr %quad_enable123 to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr @spi_nor_sr1_bit6_quad_enable, ptr %quad_enable123, align 4
  br label %sw.epilog140

sw.bb124:                                         ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  %flags125 = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 17
  %170 = ptrtoint ptr %flags125 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %flags125, align 4
  %and126 = and i32 %171, -513
  store i32 %and126, ptr %flags125, align 4
  %quad_enable127 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 11
  %172 = ptrtoint ptr %quad_enable127 to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr @spi_nor_sr2_bit7_quad_enable, ptr %quad_enable127, align 4
  br label %sw.epilog140

sw.bb128:                                         ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  %flags129 = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 17
  %173 = ptrtoint ptr %flags129 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %flags129, align 4
  %or130 = or i32 %174, 512
  store i32 %or130, ptr %flags129, align 4
  %quad_enable131 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 11
  %175 = ptrtoint ptr %quad_enable131 to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr @spi_nor_sr2_bit1_quad_enable, ptr %quad_enable131, align 4
  br label %sw.epilog140

do.body:                                          ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_nor_parse_bfpt.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spi_nor_parse_bfpt, %if.then138)) #8
          to label %sw.epilog140 [label %if.then138], !srcloc !51

if.then138:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %176 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spi_nor_parse_bfpt.__UNIQUE_ID_ddebug238, ptr noundef %177, ptr noundef nonnull @.str.10) #8
  br label %sw.epilog140

sw.epilog140:                                     ; preds = %if.then138, %do.body, %sw.bb128, %sw.bb124, %sw.bb120, %sw.bb117, %sw.bb116
  %arrayidx142 = getelementptr inbounds [20 x i32], ptr %bfpt, i32 0, i32 15
  %178 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %arrayidx142, align 4
  %and143 = and i32 %179, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and143)
  %tobool144.not = icmp eq i32 %and143, 0
  br i1 %tobool144.not, label %sw.epilog140.if.end148_crit_edge, label %if.then145

sw.epilog140.if.end148_crit_edge:                 ; preds = %sw.epilog140
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end148

if.then145:                                       ; preds = %sw.epilog140
  call void @__sanitizer_cov_trace_pc() #10
  %flags146 = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 17
  %180 = ptrtoint ptr %flags146 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %flags146, align 4
  %or147 = or i32 %181, 32768
  store i32 %or147, ptr %flags146, align 4
  br label %if.end148

if.end148:                                        ; preds = %if.then145, %sw.epilog140.if.end148_crit_edge
  %182 = ptrtoint ptr %length to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %length, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %183)
  %cmp151 = icmp eq i8 %183, 16
  br i1 %cmp151, label %if.then153, label %if.end155

if.then153:                                       ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #10
  %call154 = call i32 @spi_nor_post_bfpt_fixups(ptr noundef %nor, ptr noundef %bfpt_header, ptr noundef nonnull %bfpt) #8
  br label %cleanup200

if.end155:                                        ; preds = %if.end148
  %arrayidx157 = getelementptr inbounds [20 x i32], ptr %bfpt, i32 0, i32 17
  %184 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %arrayidx157, align 4
  %and158 = lshr i32 %185, 29
  %186 = and i32 %and158, 3
  %187 = zext i32 %186 to i64
  call void @__sanitizer_cov_trace_switch(i64 %187, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %186, label %if.end155.unreachabledefault [
    i32 0, label %sw.bb159
    i32 1, label %sw.bb160
    i32 2, label %do.body163
    i32 3, label %do.body181
  ]

sw.bb159:                                         ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #10
  %cmd_ext_type = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 18
  %188 = ptrtoint ptr %cmd_ext_type to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 1, ptr %cmd_ext_type, align 8
  br label %sw.epilog198

sw.bb160:                                         ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #10
  %cmd_ext_type161 = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 18
  %189 = ptrtoint ptr %cmd_ext_type161 to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 2, ptr %cmd_ext_type161, align 8
  br label %sw.epilog198

do.body163:                                       ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_nor_parse_bfpt.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spi_nor_parse_bfpt, %if.then175)) #8
          to label %sw.epilog198 [label %if.then175], !srcloc !51

if.then175:                                       ; preds = %do.body163
  call void @__sanitizer_cov_trace_pc() #10
  %dev176 = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %190 = ptrtoint ptr %dev176 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %dev176, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spi_nor_parse_bfpt.__UNIQUE_ID_ddebug239, ptr noundef %191, ptr noundef nonnull @.str.11) #8
  br label %sw.epilog198

do.body181:                                       ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_nor_parse_bfpt.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spi_nor_parse_bfpt, %if.then193)) #8
          to label %cleanup200 [label %if.then193], !srcloc !51

if.then193:                                       ; preds = %do.body181
  call void @__sanitizer_cov_trace_pc() #10
  %dev194 = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %192 = ptrtoint ptr %dev194 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %dev194, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spi_nor_parse_bfpt.__UNIQUE_ID_ddebug240, ptr noundef %193, ptr noundef nonnull @.str.12) #8
  br label %cleanup200

if.end155.unreachabledefault:                     ; preds = %if.end155
  unreachable

sw.epilog198:                                     ; preds = %if.then175, %do.body163, %sw.bb160, %sw.bb159
  %call199 = call i32 @spi_nor_post_bfpt_fixups(ptr noundef %nor, ptr noundef %bfpt_header, ptr noundef nonnull %bfpt) #8
  br label %cleanup200

cleanup200:                                       ; preds = %sw.epilog198, %if.then193, %do.body181, %if.then153, %if.then105, %if.then30.cleanup200_crit_edge, %spi_nor_read_sfdp_dma_unsafe.exit.cleanup200_crit_edge, %if.end.cleanup200_crit_edge, %entry.cleanup200_crit_edge
  %retval.0 = phi i32 [ %call106, %if.then105 ], [ %call154, %if.then153 ], [ %call199, %sw.epilog198 ], [ -22, %entry.cleanup200_crit_edge ], [ %retval.0.i.i.i, %spi_nor_read_sfdp_dma_unsafe.exit.cleanup200_crit_edge ], [ -22, %if.then30.cleanup200_crit_edge ], [ -95, %if.then193 ], [ -95, %do.body181 ], [ -12, %if.end.cleanup200_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %bfpt) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @spi_nor_parse_smpt(ptr noundef %nor, ptr nocapture noundef readonly %smpt_header) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %length = getelementptr inbounds %struct.sfdp_parameter_header, ptr %smpt_header, i32 0, i32 3
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %length, align 1
  %conv = zext i8 %1 to i32
  %mul = shl nuw nsw i32 %conv, 2
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3264) #12
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %parameter_table_pointer = getelementptr inbounds %struct.sfdp_parameter_header, ptr %smpt_header, i32 0, i32 4
  %arrayidx = getelementptr %struct.sfdp_parameter_header, ptr %smpt_header, i32 0, i32 4, i32 2
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %arrayidx3 = getelementptr %struct.sfdp_parameter_header, ptr %smpt_header, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx3, align 1
  %6 = ptrtoint ptr %parameter_table_pointer to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %parameter_table_pointer, align 1
  %read_opcode1.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 10
  %8 = ptrtoint ptr %read_opcode1.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %read_opcode1.i, align 2
  %addr_width2.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 8
  %10 = ptrtoint ptr %addr_width2.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %addr_width2.i, align 4
  %read_dummy3.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 11
  %12 = ptrtoint ptr %read_dummy3.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %read_dummy3.i, align 1
  store i8 90, ptr %read_opcode1.i, align 2
  store i8 3, ptr %addr_width2.i, align 4
  store i8 8, ptr %read_dummy3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not18.i.i = icmp eq i8 %1, 0
  br i1 %tobool.not18.i.i, label %if.end.if.end14_crit_edge, label %while.body.i.i.preheader

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

while.body.i.i.preheader:                         ; preds = %if.end
  %conv4 = zext i8 %5 to i32
  %shl5 = shl nuw nsw i32 %conv4, 8
  %conv1 = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %conv1, 16
  %or = or i32 %shl5, %shl
  %conv8 = zext i8 %7 to i32
  %or10 = or i32 %or, %conv8
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end6.i.i.while.body.i.i_crit_edge, %while.body.i.i.preheader
  %buf.addr.021.i.i = phi ptr [ %add.ptr.i.i, %if.end6.i.i.while.body.i.i_crit_edge ], [ %call9.i, %while.body.i.i.preheader ]
  %len.addr.020.i.i = phi i32 [ %sub.i.i, %if.end6.i.i.while.body.i.i_crit_edge ], [ %mul, %while.body.i.i.preheader ]
  %addr.addr.019.i.i = phi i32 [ %add.i.i, %if.end6.i.i.while.body.i.i_crit_edge ], [ %or10, %while.body.i.i.preheader ]
  %conv.i.i = zext i32 %addr.addr.019.i.i to i64
  %call.i.i = tail call i32 @spi_nor_read_data(ptr noundef %nor, i64 noundef %conv.i.i, i32 noundef %len.addr.020.i.i, ptr noundef %buf.addr.021.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i48 = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i48, label %while.body.i.i.spi_nor_read_sfdp.exit_crit_edge, label %if.end.i.i49

while.body.i.i.spi_nor_read_sfdp.exit_crit_edge:  ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_nor_read_sfdp.exit

if.end.i.i49:                                     ; preds = %while.body.i.i
  %14 = add nsw i32 %call.i.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %len.addr.020.i.i)
  %.not.i.i = icmp ult i32 %14, %len.addr.020.i.i
  br i1 %.not.i.i, label %if.end6.i.i, label %if.end.i.i49.spi_nor_read_sfdp.exit_crit_edge

if.end.i.i49.spi_nor_read_sfdp.exit_crit_edge:    ; preds = %if.end.i.i49
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_nor_read_sfdp.exit

if.end6.i.i:                                      ; preds = %if.end.i.i49
  %add.ptr.i.i = getelementptr i8, ptr %buf.addr.021.i.i, i32 %call.i.i
  %add.i.i = add i32 %call.i.i, %addr.addr.019.i.i
  %sub.i.i = sub i32 %len.addr.020.i.i, %call.i.i
  %tobool.not.i.i50 = icmp eq i32 %sub.i.i, 0
  br i1 %tobool.not.i.i50, label %if.end6.i.i.if.end14_crit_edge, label %if.end6.i.i.while.body.i.i_crit_edge

if.end6.i.i.while.body.i.i_crit_edge:             ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

if.end6.i.i.if.end14_crit_edge:                   ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

spi_nor_read_sfdp.exit:                           ; preds = %if.end.i.i49.spi_nor_read_sfdp.exit_crit_edge, %while.body.i.i.spi_nor_read_sfdp.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i, %while.body.i.i.spi_nor_read_sfdp.exit_crit_edge ], [ -5, %if.end.i.i49.spi_nor_read_sfdp.exit_crit_edge ]
  %15 = ptrtoint ptr %read_opcode1.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %9, ptr %read_opcode1.i, align 2
  %16 = ptrtoint ptr %addr_width2.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %11, ptr %addr_width2.i, align 4
  %17 = ptrtoint ptr %read_dummy3.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %13, ptr %read_dummy3.i, align 1
  br label %out

if.end14:                                         ; preds = %if.end6.i.i.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %18 = ptrtoint ptr %read_opcode1.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %9, ptr %read_opcode1.i, align 2
  %19 = ptrtoint ptr %addr_width2.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %11, ptr %addr_width2.i, align 4
  %20 = ptrtoint ptr %read_dummy3.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %13, ptr %read_dummy3.i, align 1
  %21 = ptrtoint ptr %length to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %length, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not2.i = icmp eq i8 %22, 0
  br i1 %tobool.not2.i, label %if.end14.le32_to_cpu_array.exit_crit_edge, label %while.body.i.preheader

if.end14.le32_to_cpu_array.exit_crit_edge:        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %le32_to_cpu_array.exit

while.body.i.preheader:                           ; preds = %if.end14
  %conv16 = zext i8 %22 to i32
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.i.preheader
  %words.addr.04.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %conv16, %while.body.i.preheader ]
  %buf.addr.03.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %call9.i, %while.body.i.preheader ]
  %dec.i = add nsw i32 %words.addr.04.i, -1
  %23 = ptrtoint ptr %buf.addr.03.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %buf.addr.03.i, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #8
  %26 = ptrtoint ptr %buf.addr.03.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %buf.addr.03.i, align 4
  %incdec.ptr.i = getelementptr i32, ptr %buf.addr.03.i, i32 1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %le32_to_cpu_array.exitthread-pre-split, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

le32_to_cpu_array.exitthread-pre-split:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %length to i32
  call void @__asan_load1_noabort(i32 %27)
  %.pr = load i8, ptr %length, align 1
  br label %le32_to_cpu_array.exit

le32_to_cpu_array.exit:                           ; preds = %le32_to_cpu_array.exitthread-pre-split, %if.end14.le32_to_cpu_array.exit_crit_edge
  %28 = phi i8 [ %.pr, %le32_to_cpu_array.exitthread-pre-split ], [ 0, %if.end14.le32_to_cpu_array.exit_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %29 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3264, i32 noundef 1) #11
  %tobool.not.i51 = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i51, label %le32_to_cpu_array.exit.if.then20_crit_edge, label %if.end.i54

le32_to_cpu_array.exit.if.then20_crit_edge:       ; preds = %le32_to_cpu_array.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20

if.end.i54:                                       ; preds = %le32_to_cpu_array.exit
  %30 = ptrtoint ptr %addr_width2.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %addr_width2.i, align 4
  %32 = ptrtoint ptr %read_dummy3.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %read_dummy3.i, align 1
  %34 = ptrtoint ptr %read_opcode1.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %read_opcode1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp138.not.i = icmp eq i8 %28, 0
  br i1 %cmp138.not.i, label %if.end.i54.for.end.i_crit_edge, label %if.end.i54.for.body.i_crit_edge

if.end.i54.for.body.i_crit_edge:                  ; preds = %if.end.i54
  br label %for.body.i

if.end.i54.for.end.i_crit_edge:                   ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i:                                       ; preds = %if.end34.i.for.body.i_crit_edge, %if.end.i54.for.body.i_crit_edge
  %conv141.i = phi i32 [ %conv.i, %if.end34.i.for.body.i_crit_edge ], [ 0, %if.end.i54.for.body.i_crit_edge ]
  %map_id.0140.i = phi i32 [ %phi.cast.i, %if.end34.i.for.body.i_crit_edge ], [ 0, %if.end.i54.for.body.i_crit_edge ]
  %i.0139.i = phi i8 [ %add43.i, %if.end34.i.for.body.i_crit_edge ], [ 0, %if.end.i54.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %call9.i, i32 %conv141.i
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.end9.i:                                        ; preds = %for.body.i
  %and.i.i = lshr i32 %37, 22
  %38 = and i32 %and.i.i, 3
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %38, label %entry.unreachabledefault.i.i [
    i32 0, label %if.end9.i.spi_nor_smpt_addr_width.exit.i_crit_edge
    i32 1, label %sw.bb1.i.i
    i32 2, label %sw.bb2.i.i
    i32 3, label %sw.default.i.i
  ]

if.end9.i.spi_nor_smpt_addr_width.exit.i_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_nor_smpt_addr_width.exit.i

sw.bb1.i.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_nor_smpt_addr_width.exit.i

sw.bb2.i.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_nor_smpt_addr_width.exit.i

entry.unreachabledefault.i.i:                     ; preds = %if.end9.i
  unreachable

sw.default.i.i:                                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %addr_width2.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %addr_width2.i, align 4
  br label %spi_nor_smpt_addr_width.exit.i

spi_nor_smpt_addr_width.exit.i:                   ; preds = %sw.default.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %if.end9.i.spi_nor_smpt_addr_width.exit.i_crit_edge
  %retval.0.i.i55 = phi i8 [ %41, %sw.default.i.i ], [ 4, %sw.bb2.i.i ], [ 3, %sw.bb1.i.i ], [ 0, %if.end9.i.spi_nor_smpt_addr_width.exit.i_crit_edge ]
  %42 = ptrtoint ptr %addr_width2.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %retval.0.i.i55, ptr %addr_width2.i, align 4
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i, align 4
  %and.i126.i = lshr i32 %44, 16
  %45 = trunc i32 %and.i126.i to i8
  %conv.i.i56 = and i8 %45, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %conv.i.i56)
  %cmp.i.i57 = icmp eq i8 %conv.i.i56, 15
  br i1 %cmp.i.i57, label %if.then.i.i, label %spi_nor_smpt_addr_width.exit.i.spi_nor_smpt_read_dummy.exit.i_crit_edge

spi_nor_smpt_addr_width.exit.i.spi_nor_smpt_read_dummy.exit.i_crit_edge: ; preds = %spi_nor_smpt_addr_width.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_nor_smpt_read_dummy.exit.i

if.then.i.i:                                      ; preds = %spi_nor_smpt_addr_width.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %read_dummy3.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %read_dummy3.i, align 1
  br label %spi_nor_smpt_read_dummy.exit.i

spi_nor_smpt_read_dummy.exit.i:                   ; preds = %if.then.i.i, %spi_nor_smpt_addr_width.exit.i.spi_nor_smpt_read_dummy.exit.i_crit_edge
  %retval.0.i127.i = phi i8 [ %47, %if.then.i.i ], [ %conv.i.i56, %spi_nor_smpt_addr_width.exit.i.spi_nor_smpt_read_dummy.exit.i_crit_edge ]
  %48 = ptrtoint ptr %read_dummy3.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %retval.0.i127.i, ptr %read_dummy3.i, align 1
  %49 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i, align 4
  %and24.i = lshr i32 %50, 8
  %conv26.i = trunc i32 %and24.i to i8
  %51 = ptrtoint ptr %read_opcode1.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv26.i, ptr %read_opcode1.i, align 2
  %add.i = or i32 %conv141.i, 1
  %arrayidx29.i = getelementptr i32, ptr %call9.i, i32 %add.i
  %52 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx29.i, align 4
  br label %while.body.i.i62

while.body.i.i62:                                 ; preds = %if.end6.i.i69.while.body.i.i62_crit_edge, %spi_nor_smpt_read_dummy.exit.i
  %buf.addr.021.i.i58 = phi ptr [ %add.ptr.i.i65, %if.end6.i.i69.while.body.i.i62_crit_edge ], [ %call7.i.i, %spi_nor_smpt_read_dummy.exit.i ]
  %len.addr.020.i.i59 = phi i32 [ %sub.i.i67, %if.end6.i.i69.while.body.i.i62_crit_edge ], [ 1, %spi_nor_smpt_read_dummy.exit.i ]
  %addr.addr.019.i.i60 = phi i32 [ %add.i.i66, %if.end6.i.i69.while.body.i.i62_crit_edge ], [ %53, %spi_nor_smpt_read_dummy.exit.i ]
  %conv.i128.i = zext i32 %addr.addr.019.i.i60 to i64
  %call.i.i61 = tail call i32 @spi_nor_read_data(ptr noundef %nor, i64 noundef %conv.i128.i, i32 noundef %len.addr.020.i.i59, ptr noundef %buf.addr.021.i.i58) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i61)
  %cmp.i129.i = icmp slt i32 %call.i.i61, 0
  br i1 %cmp.i129.i, label %while.body.i.i62.if.then32.i_crit_edge, label %if.end.i.i64

while.body.i.i62.if.then32.i_crit_edge:           ; preds = %while.body.i.i62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32.i

if.end.i.i64:                                     ; preds = %while.body.i.i62
  %54 = add nsw i32 %call.i.i61, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %len.addr.020.i.i59)
  %.not.i.i63 = icmp ult i32 %54, %len.addr.020.i.i59
  br i1 %.not.i.i63, label %if.end6.i.i69, label %if.end.i.i64.if.then32.i_crit_edge

if.end.i.i64.if.then32.i_crit_edge:               ; preds = %if.end.i.i64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32.i

if.end6.i.i69:                                    ; preds = %if.end.i.i64
  %add.ptr.i.i65 = getelementptr i8, ptr %buf.addr.021.i.i58, i32 %call.i.i61
  %add.i.i66 = add i32 %call.i.i61, %addr.addr.019.i.i60
  %sub.i.i67 = sub i32 %len.addr.020.i.i59, %call.i.i61
  %tobool.not.i.i68 = icmp eq i32 %sub.i.i67, 0
  br i1 %tobool.not.i.i68, label %if.end34.i, label %if.end6.i.i69.while.body.i.i62_crit_edge

if.end6.i.i69.while.body.i.i62_crit_edge:         ; preds = %if.end6.i.i69
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i62

if.then32.i:                                      ; preds = %if.end.i.i64.if.then32.i_crit_edge, %while.body.i.i62.if.then32.i_crit_edge
  %retval.0.i130.ph.i = phi i32 [ %call.i.i61, %while.body.i.i62.if.then32.i_crit_edge ], [ -5, %if.end.i.i64.if.then32.i_crit_edge ]
  %55 = inttoptr i32 %retval.0.i130.ph.i to ptr
  br label %spi_nor_get_map_in_use.exit

if.end34.i:                                       ; preds = %if.end6.i.i69
  %shr.i = lshr i32 %37, 24
  %shl.i = shl nsw i32 %map_id.0140.i, 1
  %56 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %call7.i.i, align 8
  %conv36.i = zext i8 %57 to i32
  %and38.i = and i32 %shr.i, %conv36.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %tobool39.i = icmp ne i32 %and38.i, 0
  %lnot.ext.i = zext i1 %tobool39.i to i32
  %add43.i = add i8 %i.0139.i, 2
  %shl.masked.i = and i32 %shl.i, 254
  %phi.cast.i = or i32 %shl.masked.i, %lnot.ext.i
  %conv.i = zext i8 %add43.i to i32
  %cmp.i = icmp ult i8 %add43.i, %28
  br i1 %cmp.i, label %if.end34.i.for.body.i_crit_edge, label %if.end34.i.for.end.i_crit_edge

if.end34.i.for.end.i_crit_edge:                   ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.end34.i.for.body.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %if.end34.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge, %if.end.i54.for.end.i_crit_edge
  %i.0.lcssa.i = phi i8 [ 0, %if.end.i54.for.end.i_crit_edge ], [ %add43.i, %if.end34.i.for.end.i_crit_edge ], [ %i.0139.i, %for.body.i.for.end.i_crit_edge ]
  %map_id.0.lcssa.i = phi i32 [ 0, %if.end.i54.for.end.i_crit_edge ], [ %phi.cast.i, %if.end34.i.for.end.i_crit_edge ], [ %map_id.0140.i, %for.body.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %i.0.lcssa.i, i8 %28)
  %cmp48149.i = icmp ult i8 %i.0.lcssa.i, %28
  br i1 %cmp48149.i, label %for.end.i.while.body.i70_crit_edge, label %for.end.i.spi_nor_get_map_in_use.exit_crit_edge

for.end.i.spi_nor_get_map_in_use.exit_crit_edge:  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_nor_get_map_in_use.exit

for.end.i.while.body.i70_crit_edge:               ; preds = %for.end.i
  br label %while.body.i70

while.body.i70:                                   ; preds = %if.end65.i.while.body.i70_crit_edge, %for.end.i.while.body.i70_crit_edge
  %i.1150.i = phi i8 [ %conv74.i, %if.end65.i.while.body.i70_crit_edge ], [ %i.0.lcssa.i, %for.end.i.while.body.i70_crit_edge ]
  %conv46.i = zext i8 %i.1150.i to i32
  %arrayidx51.i = getelementptr i32, ptr %call9.i, i32 %conv46.i
  %58 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx51.i, align 4
  %and52.i = lshr i32 %59, 8
  %shr53.i = and i32 %and52.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %shr53.i, i32 %map_id.0.lcssa.i)
  %cmp55.i = icmp eq i32 %shr53.i, %map_id.0.lcssa.i
  br i1 %cmp55.i, label %spi_nor_get_map_in_use.exit.loopexit.split.loop.exit, label %if.end59.i

if.end59.i:                                       ; preds = %while.body.i70
  %and62.i = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62.i)
  %tobool63.not.i = icmp eq i32 %and62.i, 0
  br i1 %tobool63.not.i, label %if.end65.i, label %if.end59.i.spi_nor_get_map_in_use.exit_crit_edge

if.end59.i.spi_nor_get_map_in_use.exit_crit_edge: ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_nor_get_map_in_use.exit

if.end65.i:                                       ; preds = %if.end59.i
  %and68.i = lshr i32 %59, 16
  %60 = trunc i32 %and68.i to i8
  %61 = add i8 %i.1150.i, 2
  %conv74.i = add i8 %61, %60
  %cmp48.i = icmp ult i8 %conv74.i, %28
  br i1 %cmp48.i, label %if.end65.i.while.body.i70_crit_edge, label %if.end65.i.spi_nor_get_map_in_use.exit_crit_edge

if.end65.i.spi_nor_get_map_in_use.exit_crit_edge: ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_nor_get_map_in_use.exit

if.end65.i.while.body.i70_crit_edge:              ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i70

spi_nor_get_map_in_use.exit.loopexit.split.loop.exit: ; preds = %while.body.i70
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx51.i.le = getelementptr i32, ptr %call9.i, i32 %conv46.i
  br label %spi_nor_get_map_in_use.exit

spi_nor_get_map_in_use.exit:                      ; preds = %spi_nor_get_map_in_use.exit.loopexit.split.loop.exit, %if.end65.i.spi_nor_get_map_in_use.exit_crit_edge, %if.end59.i.spi_nor_get_map_in_use.exit_crit_edge, %for.end.i.spi_nor_get_map_in_use.exit_crit_edge, %if.then32.i
  %ret.0.i = phi ptr [ %55, %if.then32.i ], [ inttoptr (i32 -22 to ptr), %for.end.i.spi_nor_get_map_in_use.exit_crit_edge ], [ %arrayidx51.i.le, %spi_nor_get_map_in_use.exit.loopexit.split.loop.exit ], [ inttoptr (i32 -22 to ptr), %if.end65.i.spi_nor_get_map_in_use.exit_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end59.i.spi_nor_get_map_in_use.exit_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  %62 = ptrtoint ptr %addr_width2.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %31, ptr %addr_width2.i, align 4
  %63 = ptrtoint ptr %read_dummy3.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %33, ptr %read_dummy3.i, align 1
  %64 = ptrtoint ptr %read_opcode1.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %35, ptr %read_opcode1.i, align 2
  %cmp.i71 = icmp ugt ptr %ret.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i71, label %spi_nor_get_map_in_use.exit.if.then20_crit_edge, label %if.end22

spi_nor_get_map_in_use.exit.if.then20_crit_edge:  ; preds = %spi_nor_get_map_in_use.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20

if.then20:                                        ; preds = %spi_nor_get_map_in_use.exit.if.then20_crit_edge, %le32_to_cpu_array.exit.if.then20_crit_edge
  %retval.0.i98 = phi ptr [ %ret.0.i, %spi_nor_get_map_in_use.exit.if.then20_crit_edge ], [ inttoptr (i32 -12 to ptr), %le32_to_cpu_array.exit.if.then20_crit_edge ]
  %65 = ptrtoint ptr %retval.0.i98 to i32
  br label %out

if.end22:                                         ; preds = %spi_nor_get_map_in_use.exit
  %params.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 21
  %66 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %params.i, align 4
  %erase_type.i = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %67, i32 0, i32 8, i32 2
  %68 = ptrtoint ptr %ret.0.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ret.0.i, align 4
  %and.i72 = lshr i32 %69, 16
  %shr.i73 = and i32 %and.i72, 255
  %add.i74 = shl nuw nsw i32 %shr.i73, 4
  %70 = add nuw nsw i32 %add.i74, 16
  %dev.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %71 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev.i, align 4
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %72, i32 noundef %70, i32 noundef 3520) #8
  %tobool.not.i75 = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i75, label %if.end22.out_crit_edge, label %if.end.i76

if.end22.out_crit_edge:                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end.i76:                                       ; preds = %if.end22
  %erase_map.i = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %67, i32 0, i32 8
  %73 = ptrtoint ptr %erase_map.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call5.i.i.i, ptr %erase_map.i, align 8
  %idx.i.i = getelementptr %struct.spi_nor_flash_parameter, ptr %67, i32 0, i32 8, i32 2, i32 0, i32 4
  %size_mask.i.i = getelementptr %struct.spi_nor_flash_parameter, ptr %67, i32 0, i32 8, i32 2, i32 0, i32 2
  %arrayidx.1.i.i = getelementptr %struct.spi_nor_flash_parameter, ptr %67, i32 0, i32 8, i32 2, i32 1
  %idx.1.i.i = getelementptr %struct.spi_nor_flash_parameter, ptr %67, i32 0, i32 8, i32 2, i32 1, i32 4
  %size_mask.1.i.i = getelementptr %struct.spi_nor_flash_parameter, ptr %67, i32 0, i32 8, i32 2, i32 1, i32 2
  %arrayidx.2.i.i = getelementptr %struct.spi_nor_flash_parameter, ptr %67, i32 0, i32 8, i32 2, i32 2
  %idx.2.i.i = getelementptr %struct.spi_nor_flash_parameter, ptr %67, i32 0, i32 8, i32 2, i32 2, i32 4
  %size_mask.2.i.i = getelementptr %struct.spi_nor_flash_parameter, ptr %67, i32 0, i32 8, i32 2, i32 2, i32 2
  %arrayidx.3.i.i = getelementptr %struct.spi_nor_flash_parameter, ptr %67, i32 0, i32 8, i32 2, i32 3
  %idx.3.i.i = getelementptr %struct.spi_nor_flash_parameter, ptr %67, i32 0, i32 8, i32 2, i32 3, i32 4
  %size_mask.3.i.i = getelementptr %struct.spi_nor_flash_parameter, ptr %67, i32 0, i32 8, i32 2, i32 3, i32 2
  br label %for.body.i82

for.body.i82:                                     ; preds = %spi_nor_region_check_overlay.exit.i.for.body.i82_crit_edge, %if.end.i76
  %regions_erase_type.0129.i = phi i8 [ 0, %if.end.i76 ], [ %or2099.i, %spi_nor_region_check_overlay.exit.i.for.body.i82_crit_edge ]
  %uniform_erase_type.0128.i = phi i8 [ -1, %if.end.i76 ], [ %and1698.i, %spi_nor_region_check_overlay.exit.i.for.body.i82_crit_edge ]
  %i.0127.i = phi i32 [ 0, %if.end.i76 ], [ %add2.i, %spi_nor_region_check_overlay.exit.i.for.body.i82_crit_edge ]
  %offset.0126.i = phi i64 [ 0, %if.end.i76 ], [ %add27.i, %spi_nor_region_check_overlay.exit.i.for.body.i82_crit_edge ]
  %add2.i = add nuw nsw i32 %i.0127.i, 1
  %arrayidx.i77 = getelementptr i32, ptr %ret.0.i, i32 %add2.i
  %74 = ptrtoint ptr %arrayidx.i77 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx.i77, align 4
  %76 = add i32 %75, 256
  %mul.i = and i32 %76, -256
  %conv.i78 = zext i32 %mul.i to i64
  %arrayidx6.i79 = getelementptr %struct.spi_nor_erase_region, ptr %call5.i.i.i, i32 %i.0127.i
  %size.i = getelementptr %struct.spi_nor_erase_region, ptr %call5.i.i.i, i32 %i.0127.i, i32 1
  %77 = ptrtoint ptr %size.i to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %conv.i78, ptr %size.i, align 8
  %78 = trunc i32 %75 to i8
  %conv9.i = and i8 %78, 15
  %conv10.i = zext i8 %conv9.i to i64
  %or.i = or i64 %offset.0126.i, %conv10.i
  %79 = ptrtoint ptr %arrayidx6.i79 to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %or.i, ptr %arrayidx6.i79, align 8
  %conv.i.i80 = zext i8 %conv9.i to i32
  %80 = ptrtoint ptr %erase_type.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %erase_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool.not.i.i81 = icmp eq i32 %81, 0
  br i1 %tobool.not.i.i81, label %for.body.i82.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i82.for.inc.i.i_crit_edge:               ; preds = %for.body.i82
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i82
  %82 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %idx.i.i, align 1
  %conv2.i.i = zext i8 %83 to i32
  %shl.i.i = shl nuw i32 1, %conv2.i.i
  %and.i.i83 = and i32 %shl.i.i, %conv.i.i80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i83)
  %tobool3.not.i.i = icmp eq i32 %and.i.i83, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge, label %if.end.i.i84

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.end.i.i84:                                     ; preds = %land.lhs.true.i.i
  %84 = ptrtoint ptr %size_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %size_mask.i.i, align 4
  %and7.i.i101 = and i32 %85, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i101)
  %tobool8.not.i.i = icmp eq i32 %and7.i.i101, 0
  br i1 %tobool8.not.i.i, label %if.end.i.i84.for.inc.i.i_crit_edge, label %if.end.i.i84.if.then9.i.i_crit_edge

if.end.i.i84.if.then9.i.i_crit_edge:              ; preds = %if.end.i.i84
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9.i.i

if.end.i.i84.for.inc.i.i_crit_edge:               ; preds = %if.end.i.i84
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.then9.i.i:                                     ; preds = %if.end.3.i.i.if.then9.i.i_crit_edge, %if.end.2.i.i.if.then9.i.i_crit_edge, %if.end.1.i.i.if.then9.i.i_crit_edge, %if.end.i.i84.if.then9.i.i_crit_edge
  %or.i.i.i = or i64 %or.i, 32
  %86 = ptrtoint ptr %arrayidx6.i79 to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %or.i.i.i, ptr %arrayidx6.i79, align 8
  br label %spi_nor_region_check_overlay.exit.i

for.inc.i.i:                                      ; preds = %if.end.i.i84.for.inc.i.i_crit_edge, %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i82.for.inc.i.i_crit_edge
  %87 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool.not.1.i.i = icmp eq i32 %88, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.for.inc.1.i.i_crit_edge, label %land.lhs.true.1.i.i

for.inc.i.i.for.inc.1.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.i.i

land.lhs.true.1.i.i:                              ; preds = %for.inc.i.i
  %89 = ptrtoint ptr %idx.1.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %idx.1.i.i, align 1
  %conv2.1.i.i = zext i8 %90 to i32
  %shl.1.i.i = shl nuw i32 1, %conv2.1.i.i
  %and.1.i.i = and i32 %shl.1.i.i, %conv.i.i80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i.i)
  %tobool3.not.1.i.i = icmp eq i32 %and.1.i.i, 0
  br i1 %tobool3.not.1.i.i, label %land.lhs.true.1.i.i.for.inc.1.i.i_crit_edge, label %if.end.1.i.i

land.lhs.true.1.i.i.for.inc.1.i.i_crit_edge:      ; preds = %land.lhs.true.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.i.i

if.end.1.i.i:                                     ; preds = %land.lhs.true.1.i.i
  %91 = ptrtoint ptr %size_mask.1.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %size_mask.1.i.i, align 4
  %and7.1.i.i102 = and i32 %92, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.1.i.i102)
  %tobool8.not.1.i.i = icmp eq i32 %and7.1.i.i102, 0
  br i1 %tobool8.not.1.i.i, label %if.end.1.i.i.for.inc.1.i.i_crit_edge, label %if.end.1.i.i.if.then9.i.i_crit_edge

if.end.1.i.i.if.then9.i.i_crit_edge:              ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9.i.i

if.end.1.i.i.for.inc.1.i.i_crit_edge:             ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.i.i

for.inc.1.i.i:                                    ; preds = %if.end.1.i.i.for.inc.1.i.i_crit_edge, %land.lhs.true.1.i.i.for.inc.1.i.i_crit_edge, %for.inc.i.i.for.inc.1.i.i_crit_edge
  %93 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx.2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool.not.2.i.i = icmp eq i32 %94, 0
  br i1 %tobool.not.2.i.i, label %for.inc.1.i.i.for.inc.2.i.i_crit_edge, label %land.lhs.true.2.i.i

for.inc.1.i.i.for.inc.2.i.i_crit_edge:            ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2.i.i

land.lhs.true.2.i.i:                              ; preds = %for.inc.1.i.i
  %95 = ptrtoint ptr %idx.2.i.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %idx.2.i.i, align 1
  %conv2.2.i.i = zext i8 %96 to i32
  %shl.2.i.i = shl nuw i32 1, %conv2.2.i.i
  %and.2.i.i = and i32 %shl.2.i.i, %conv.i.i80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i.i)
  %tobool3.not.2.i.i = icmp eq i32 %and.2.i.i, 0
  br i1 %tobool3.not.2.i.i, label %land.lhs.true.2.i.i.for.inc.2.i.i_crit_edge, label %if.end.2.i.i

land.lhs.true.2.i.i.for.inc.2.i.i_crit_edge:      ; preds = %land.lhs.true.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2.i.i

if.end.2.i.i:                                     ; preds = %land.lhs.true.2.i.i
  %97 = ptrtoint ptr %size_mask.2.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %size_mask.2.i.i, align 4
  %and7.2.i.i103 = and i32 %98, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.2.i.i103)
  %tobool8.not.2.i.i = icmp eq i32 %and7.2.i.i103, 0
  br i1 %tobool8.not.2.i.i, label %if.end.2.i.i.for.inc.2.i.i_crit_edge, label %if.end.2.i.i.if.then9.i.i_crit_edge

if.end.2.i.i.if.then9.i.i_crit_edge:              ; preds = %if.end.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9.i.i

if.end.2.i.i.for.inc.2.i.i_crit_edge:             ; preds = %if.end.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2.i.i

for.inc.2.i.i:                                    ; preds = %if.end.2.i.i.for.inc.2.i.i_crit_edge, %land.lhs.true.2.i.i.for.inc.2.i.i_crit_edge, %for.inc.1.i.i.for.inc.2.i.i_crit_edge
  %99 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx.3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool.not.3.i.i = icmp eq i32 %100, 0
  br i1 %tobool.not.3.i.i, label %for.inc.2.i.i.spi_nor_region_check_overlay.exit.i_crit_edge, label %land.lhs.true.3.i.i

for.inc.2.i.i.spi_nor_region_check_overlay.exit.i_crit_edge: ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_nor_region_check_overlay.exit.i

land.lhs.true.3.i.i:                              ; preds = %for.inc.2.i.i
  %101 = ptrtoint ptr %idx.3.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %idx.3.i.i, align 1
  %conv2.3.i.i = zext i8 %102 to i32
  %shl.3.i.i = shl nuw i32 1, %conv2.3.i.i
  %and.3.i.i = and i32 %shl.3.i.i, %conv.i.i80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i.i)
  %tobool3.not.3.i.i = icmp eq i32 %and.3.i.i, 0
  br i1 %tobool3.not.3.i.i, label %land.lhs.true.3.i.i.spi_nor_region_check_overlay.exit.i_crit_edge, label %if.end.3.i.i

land.lhs.true.3.i.i.spi_nor_region_check_overlay.exit.i_crit_edge: ; preds = %land.lhs.true.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_nor_region_check_overlay.exit.i

if.end.3.i.i:                                     ; preds = %land.lhs.true.3.i.i
  %103 = ptrtoint ptr %size_mask.3.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %size_mask.3.i.i, align 4
  %and7.3.i.i104 = and i32 %104, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.3.i.i104)
  %tobool8.not.3.i.i = icmp eq i32 %and7.3.i.i104, 0
  br i1 %tobool8.not.3.i.i, label %if.end.3.i.i.spi_nor_region_check_overlay.exit.i_crit_edge, label %if.end.3.i.i.if.then9.i.i_crit_edge

if.end.3.i.i.if.then9.i.i_crit_edge:              ; preds = %if.end.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9.i.i

if.end.3.i.i.spi_nor_region_check_overlay.exit.i_crit_edge: ; preds = %if.end.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_nor_region_check_overlay.exit.i

spi_nor_region_check_overlay.exit.i:              ; preds = %if.end.3.i.i.spi_nor_region_check_overlay.exit.i_crit_edge, %land.lhs.true.3.i.i.spi_nor_region_check_overlay.exit.i_crit_edge, %for.inc.2.i.i.spi_nor_region_check_overlay.exit.i_crit_edge, %if.then9.i.i
  %and1698.i = and i8 %conv9.i, %uniform_erase_type.0128.i
  %or2099.i = or i8 %conv9.i, %regions_erase_type.0129.i
  %105 = ptrtoint ptr %arrayidx6.i79 to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %arrayidx6.i79, align 8
  %and24.i85 = and i64 %106, -64
  %107 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %size.i, align 8
  %add27.i = add i64 %and24.i85, %108
  %exitcond.i = icmp eq i32 %i.0127.i, %shr.i73
  br i1 %exitcond.i, label %for.end.i86, label %spi_nor_region_check_overlay.exit.i.for.body.i82_crit_edge

spi_nor_region_check_overlay.exit.i.for.body.i82_crit_edge: ; preds = %spi_nor_region_check_overlay.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i82

for.end.i86:                                      ; preds = %spi_nor_region_check_overlay.exit.i
  %or.i.i = or i64 %106, 16
  %109 = ptrtoint ptr %arrayidx6.i79 to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 %or.i.i, ptr %arrayidx6.i79, align 8
  %uniform_erase_type29.i = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %67, i32 0, i32 8, i32 3
  %110 = ptrtoint ptr %uniform_erase_type29.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %uniform_erase_type29.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and1698.i)
  %tobool.not.i100.i = icmp eq i8 %and1698.i, 0
  br i1 %tobool.not.i100.i, label %for.end.i86.spi_nor_sort_erase_mask.exit.i_crit_edge, label %for.cond.preheader.i.i

for.end.i86.spi_nor_sort_erase_mask.exit.i_crit_edge: ; preds = %for.end.i86
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_nor_sort_erase_mask.exit.i

for.cond.preheader.i.i:                           ; preds = %for.end.i86
  %conv.i101.i = zext i8 %and1698.i to i32
  %112 = ptrtoint ptr %erase_type.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %erase_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool2.not.i.i = icmp eq i32 %113, 0
  br i1 %tobool2.not.i.i, label %for.cond.preheader.i.i.for.inc.i107.i_crit_edge, label %land.lhs.true.i105.i

for.cond.preheader.i.i.for.inc.i107.i_crit_edge:  ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i107.i

land.lhs.true.i105.i:                             ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %114 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %idx.i.i, align 1
  %conv4.i.i = zext i8 %115 to i32
  %shl.i103.i = shl nuw i32 1, %conv4.i.i
  %and.i104.i = and i32 %shl.i103.i, %conv.i101.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i104.i)
  %tobool5.not.i.i = icmp ne i32 %and.i104.i, 0
  %spec.select.i.i87 = zext i1 %tobool5.not.i.i to i8
  br label %for.inc.i107.i

for.inc.i107.i:                                   ; preds = %land.lhs.true.i105.i, %for.cond.preheader.i.i.for.inc.i107.i_crit_edge
  %sorted_erase_mask.1.i.i = phi i8 [ 0, %for.cond.preheader.i.i.for.inc.i107.i_crit_edge ], [ %spec.select.i.i87, %land.lhs.true.i105.i ]
  %116 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool2.not.1.i.i = icmp eq i32 %117, 0
  br i1 %tobool2.not.1.i.i, label %for.inc.i107.i.for.inc.1.i113.i_crit_edge, label %land.lhs.true.1.i111.i

for.inc.i107.i.for.inc.1.i113.i_crit_edge:        ; preds = %for.inc.i107.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.i113.i

land.lhs.true.1.i111.i:                           ; preds = %for.inc.i107.i
  call void @__sanitizer_cov_trace_pc() #10
  %118 = ptrtoint ptr %idx.1.i.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %idx.1.i.i, align 1
  %conv4.1.i.i = zext i8 %119 to i32
  %shl.1.i109.i = shl nuw i32 1, %conv4.1.i.i
  %and.1.i110.i = and i32 %shl.1.i109.i, %conv.i101.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i110.i)
  %tobool5.not.1.i.i = icmp eq i32 %and.1.i110.i, 0
  %conv9.1.i.i = or i8 %sorted_erase_mask.1.i.i, 2
  %spec.select23.i.i = select i1 %tobool5.not.1.i.i, i8 %sorted_erase_mask.1.i.i, i8 %conv9.1.i.i
  br label %for.inc.1.i113.i

for.inc.1.i113.i:                                 ; preds = %land.lhs.true.1.i111.i, %for.inc.i107.i.for.inc.1.i113.i_crit_edge
  %sorted_erase_mask.1.1.i.i = phi i8 [ %sorted_erase_mask.1.i.i, %for.inc.i107.i.for.inc.1.i113.i_crit_edge ], [ %spec.select23.i.i, %land.lhs.true.1.i111.i ]
  %120 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx.2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool2.not.2.i.i = icmp eq i32 %121, 0
  br i1 %tobool2.not.2.i.i, label %for.inc.1.i113.i.for.inc.2.i119.i_crit_edge, label %land.lhs.true.2.i117.i

for.inc.1.i113.i.for.inc.2.i119.i_crit_edge:      ; preds = %for.inc.1.i113.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2.i119.i

land.lhs.true.2.i117.i:                           ; preds = %for.inc.1.i113.i
  call void @__sanitizer_cov_trace_pc() #10
  %122 = ptrtoint ptr %idx.2.i.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %idx.2.i.i, align 1
  %conv4.2.i.i = zext i8 %123 to i32
  %shl.2.i115.i = shl nuw i32 1, %conv4.2.i.i
  %and.2.i116.i = and i32 %shl.2.i115.i, %conv.i101.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i116.i)
  %tobool5.not.2.i.i = icmp eq i32 %and.2.i116.i, 0
  %conv9.2.i.i = or i8 %sorted_erase_mask.1.1.i.i, 4
  %spec.select24.i.i = select i1 %tobool5.not.2.i.i, i8 %sorted_erase_mask.1.1.i.i, i8 %conv9.2.i.i
  br label %for.inc.2.i119.i

for.inc.2.i119.i:                                 ; preds = %land.lhs.true.2.i117.i, %for.inc.1.i113.i.for.inc.2.i119.i_crit_edge
  %sorted_erase_mask.1.2.i.i = phi i8 [ %sorted_erase_mask.1.1.i.i, %for.inc.1.i113.i.for.inc.2.i119.i_crit_edge ], [ %spec.select24.i.i, %land.lhs.true.2.i117.i ]
  %124 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx.3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool2.not.3.i.i = icmp eq i32 %125, 0
  br i1 %tobool2.not.3.i.i, label %for.inc.2.i119.i.spi_nor_sort_erase_mask.exit.i_crit_edge, label %land.lhs.true.3.i123.i

for.inc.2.i119.i.spi_nor_sort_erase_mask.exit.i_crit_edge: ; preds = %for.inc.2.i119.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_nor_sort_erase_mask.exit.i

land.lhs.true.3.i123.i:                           ; preds = %for.inc.2.i119.i
  call void @__sanitizer_cov_trace_pc() #10
  %126 = ptrtoint ptr %idx.3.i.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %idx.3.i.i, align 1
  %conv4.3.i.i = zext i8 %127 to i32
  %shl.3.i121.i = shl nuw i32 1, %conv4.3.i.i
  %and.3.i122.i = and i32 %shl.3.i121.i, %conv.i101.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i122.i)
  %tobool5.not.3.i.i = icmp eq i32 %and.3.i122.i, 0
  %conv9.3.i.i = or i8 %sorted_erase_mask.1.2.i.i, 8
  %spec.select25.i.i = select i1 %tobool5.not.3.i.i, i8 %sorted_erase_mask.1.2.i.i, i8 %conv9.3.i.i
  br label %spi_nor_sort_erase_mask.exit.i

spi_nor_sort_erase_mask.exit.i:                   ; preds = %land.lhs.true.3.i123.i, %for.inc.2.i119.i.spi_nor_sort_erase_mask.exit.i_crit_edge, %for.end.i86.spi_nor_sort_erase_mask.exit.i_crit_edge
  %retval.0.i.i88 = phi i8 [ 0, %for.end.i86.spi_nor_sort_erase_mask.exit.i_crit_edge ], [ %sorted_erase_mask.1.2.i.i, %for.inc.2.i119.i.spi_nor_sort_erase_mask.exit.i_crit_edge ], [ %spec.select25.i.i, %land.lhs.true.3.i123.i ]
  %128 = ptrtoint ptr %uniform_erase_type29.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %retval.0.i.i88, ptr %uniform_erase_type29.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %or2099.i)
  %tobool32.not.i = icmp eq i8 %or2099.i, 0
  br i1 %tobool32.not.i, label %if.then33.i, label %for.cond36.preheader.i

for.cond36.preheader.i:                           ; preds = %spi_nor_sort_erase_mask.exit.i
  %conv40.i = zext i8 %or2099.i to i32
  %129 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %idx.i.i, align 1
  %conv42.i = zext i8 %130 to i32
  %shl.i89 = shl nuw i32 1, %conv42.i
  %and43.i = and i32 %shl.i89, %conv40.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  br i1 %tobool44.not.i, label %if.then45.i, label %for.cond36.preheader.i.for.inc48.i_crit_edge

for.cond36.preheader.i.for.inc48.i_crit_edge:     ; preds = %for.cond36.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc48.i

if.then33.i:                                      ; preds = %spi_nor_sort_erase_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %131 = ptrtoint ptr %uniform_erase_type29.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %111, ptr %uniform_erase_type29.i, align 8
  br label %out

if.then45.i:                                      ; preds = %for.cond36.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @spi_nor_set_erase_type(ptr noundef %erase_type.i, i32 noundef 0, i8 noundef zeroext -1) #8
  br label %for.inc48.i

for.inc48.i:                                      ; preds = %if.then45.i, %for.cond36.preheader.i.for.inc48.i_crit_edge
  %132 = ptrtoint ptr %idx.1.i.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %idx.1.i.i, align 1
  %conv42.1.i = zext i8 %133 to i32
  %shl.1.i = shl nuw i32 1, %conv42.1.i
  %and43.1.i = and i32 %shl.1.i, %conv40.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.1.i)
  %tobool44.not.1.i = icmp eq i32 %and43.1.i, 0
  br i1 %tobool44.not.1.i, label %if.then45.1.i, label %for.inc48.i.for.inc48.1.i_crit_edge

for.inc48.i.for.inc48.1.i_crit_edge:              ; preds = %for.inc48.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc48.1.i

if.then45.1.i:                                    ; preds = %for.inc48.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @spi_nor_set_erase_type(ptr noundef %arrayidx.1.i.i, i32 noundef 0, i8 noundef zeroext -1) #8
  br label %for.inc48.1.i

for.inc48.1.i:                                    ; preds = %if.then45.1.i, %for.inc48.i.for.inc48.1.i_crit_edge
  %134 = ptrtoint ptr %idx.2.i.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %idx.2.i.i, align 1
  %conv42.2.i = zext i8 %135 to i32
  %shl.2.i = shl nuw i32 1, %conv42.2.i
  %and43.2.i = and i32 %shl.2.i, %conv40.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.2.i)
  %tobool44.not.2.i = icmp eq i32 %and43.2.i, 0
  br i1 %tobool44.not.2.i, label %if.then45.2.i, label %for.inc48.1.i.for.inc48.2.i_crit_edge

for.inc48.1.i.for.inc48.2.i_crit_edge:            ; preds = %for.inc48.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc48.2.i

if.then45.2.i:                                    ; preds = %for.inc48.1.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @spi_nor_set_erase_type(ptr noundef %arrayidx.2.i.i, i32 noundef 0, i8 noundef zeroext -1) #8
  br label %for.inc48.2.i

for.inc48.2.i:                                    ; preds = %if.then45.2.i, %for.inc48.1.i.for.inc48.2.i_crit_edge
  %136 = ptrtoint ptr %idx.3.i.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %idx.3.i.i, align 1
  %conv42.3.i = zext i8 %137 to i32
  %shl.3.i = shl nuw i32 1, %conv42.3.i
  %and43.3.i = and i32 %shl.3.i, %conv40.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.3.i)
  %tobool44.not.3.i = icmp eq i32 %and43.3.i, 0
  br i1 %tobool44.not.3.i, label %if.then45.3.i, label %for.inc48.2.i.if.end26_crit_edge

for.inc48.2.i.if.end26_crit_edge:                 ; preds = %for.inc48.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then45.3.i:                                    ; preds = %for.inc48.2.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @spi_nor_set_erase_type(ptr noundef %arrayidx.3.i.i, i32 noundef 0, i8 noundef zeroext -1) #8
  br label %if.end26

if.end26:                                         ; preds = %if.then45.3.i, %for.inc48.2.i.if.end26_crit_edge
  %138 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %params.i, align 4
  %erase_map = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %139, i32 0, i32 8
  tail call fastcc void @spi_nor_regions_sort_erase_types(ptr noundef %erase_map)
  br label %out

out:                                              ; preds = %if.end26, %if.then33.i, %if.end22.out_crit_edge, %if.then20, %spi_nor_read_sfdp.exit
  %ret.0 = phi i32 [ %retval.0.i.i, %spi_nor_read_sfdp.exit ], [ %65, %if.then20 ], [ 0, %if.end26 ], [ -22, %if.then33.i ], [ -12, %if.end22.out_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @spi_nor_parse_4bait(ptr noundef %nor, ptr nocapture noundef readonly %param_header) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %params1 = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 21
  %0 = ptrtoint ptr %params1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params1, align 4
  %page_programs = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 7
  %erase_type2 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 8, i32 2
  %major = getelementptr inbounds %struct.sfdp_parameter_header, ptr %param_header, i32 0, i32 2
  %2 = ptrtoint ptr %major to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %major, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.not = icmp eq i8 %3, 1
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %length = getelementptr inbounds %struct.sfdp_parameter_header, ptr %param_header, i32 0, i32 3
  %4 = ptrtoint ptr %length to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %length, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp6 = icmp ult i8 %5, 2
  br i1 %cmp6, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 8) #11
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %parameter_table_pointer = getelementptr inbounds %struct.sfdp_parameter_header, ptr %param_header, i32 0, i32 4
  %arrayidx = getelementptr %struct.sfdp_parameter_header, ptr %param_header, i32 0, i32 4, i32 2
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %conv10 = zext i8 %8 to i32
  %shl = shl nuw nsw i32 %conv10, 16
  %arrayidx12 = getelementptr %struct.sfdp_parameter_header, ptr %param_header, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %10 to i32
  %shl14 = shl nuw nsw i32 %conv13, 8
  %or = or i32 %shl14, %shl
  %11 = ptrtoint ptr %parameter_table_pointer to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %parameter_table_pointer, align 1
  %conv17 = zext i8 %12 to i32
  %or19 = or i32 %or, %conv17
  %read_opcode1.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 10
  %13 = ptrtoint ptr %read_opcode1.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %read_opcode1.i, align 2
  %addr_width2.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 8
  %15 = ptrtoint ptr %addr_width2.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %addr_width2.i, align 4
  %read_dummy3.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 11
  %17 = ptrtoint ptr %read_dummy3.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %read_dummy3.i, align 1
  store i8 90, ptr %read_opcode1.i, align 2
  store i8 3, ptr %addr_width2.i, align 4
  store i8 8, ptr %read_dummy3.i, align 1
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end6.i.i.while.body.i.i_crit_edge, %if.end9
  %buf.addr.021.i.i = phi ptr [ %add.ptr.i.i, %if.end6.i.i.while.body.i.i_crit_edge ], [ %call7.i, %if.end9 ]
  %len.addr.020.i.i = phi i32 [ %sub.i.i, %if.end6.i.i.while.body.i.i_crit_edge ], [ 8, %if.end9 ]
  %addr.addr.019.i.i = phi i32 [ %add.i.i, %if.end6.i.i.while.body.i.i_crit_edge ], [ %or19, %if.end9 ]
  %conv.i.i = zext i32 %addr.addr.019.i.i to i64
  %call.i.i = tail call i32 @spi_nor_read_data(ptr noundef %nor, i64 noundef %conv.i.i, i32 noundef %len.addr.020.i.i, ptr noundef %buf.addr.021.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %while.body.i.i.spi_nor_read_sfdp.exit.thread_crit_edge, label %if.end.i.i

while.body.i.i.spi_nor_read_sfdp.exit.thread_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_nor_read_sfdp.exit.thread

if.end.i.i:                                       ; preds = %while.body.i.i
  %19 = add nsw i32 %call.i.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %len.addr.020.i.i)
  %.not.i.i = icmp ult i32 %19, %len.addr.020.i.i
  br i1 %.not.i.i, label %if.end6.i.i, label %if.end.i.i.spi_nor_read_sfdp.exit.thread_crit_edge

if.end.i.i.spi_nor_read_sfdp.exit.thread_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_nor_read_sfdp.exit.thread

if.end6.i.i:                                      ; preds = %if.end.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf.addr.021.i.i, i32 %call.i.i
  %add.i.i = add i32 %call.i.i, %addr.addr.019.i.i
  %sub.i.i = sub i32 %len.addr.020.i.i, %call.i.i
  %tobool.not.i.i = icmp eq i32 %sub.i.i, 0
  br i1 %tobool.not.i.i, label %if.end23, label %if.end6.i.i.while.body.i.i_crit_edge

if.end6.i.i.while.body.i.i_crit_edge:             ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

spi_nor_read_sfdp.exit.thread:                    ; preds = %if.end.i.i.spi_nor_read_sfdp.exit.thread_crit_edge, %while.body.i.i.spi_nor_read_sfdp.exit.thread_crit_edge
  %retval.0.i.i.ph = phi i32 [ -5, %if.end.i.i.spi_nor_read_sfdp.exit.thread_crit_edge ], [ %call.i.i, %while.body.i.i.spi_nor_read_sfdp.exit.thread_crit_edge ]
  %20 = ptrtoint ptr %read_opcode1.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %14, ptr %read_opcode1.i, align 2
  %21 = ptrtoint ptr %addr_width2.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %16, ptr %addr_width2.i, align 4
  %22 = ptrtoint ptr %read_dummy3.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %18, ptr %read_dummy3.i, align 1
  br label %out

if.end23:                                         ; preds = %if.end6.i.i
  %23 = ptrtoint ptr %read_opcode1.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %14, ptr %read_opcode1.i, align 2
  %24 = ptrtoint ptr %addr_width2.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %16, ptr %addr_width2.i, align 4
  %25 = ptrtoint ptr %read_dummy3.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %18, ptr %read_dummy3.i, align 1
  %26 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %call7.i, align 8
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #8
  %29 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %call7.i, align 8
  %incdec.ptr.i = getelementptr i32, ptr %call7.i, i32 1
  %30 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %incdec.ptr.i, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #8
  %33 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %incdec.ptr.i, align 4
  %hwcaps28 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 5
  %34 = ptrtoint ptr %hwcaps28 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %hwcaps28, align 4
  %and = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool30.not = icmp eq i32 %and, 0
  br i1 %tobool30.not, label %if.end23.if.end37_crit_edge, label %land.lhs.true

if.end23.if.end37_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

land.lhs.true:                                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %call7.i, align 8
  %and32 = and i32 %37, 1
  br label %if.end37

if.end37:                                         ; preds = %land.lhs.true, %if.end23.if.end37_crit_edge
  %read_hwcaps.1 = phi i32 [ 0, %if.end23.if.end37_crit_edge ], [ %and32, %land.lhs.true ]
  %and.1 = and i32 %35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool30.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool30.not.1, label %if.end37.if.end37.1_crit_edge, label %land.lhs.true.1

if.end37.if.end37.1_crit_edge:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.1

land.lhs.true.1:                                  ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %call7.i, align 8
  %and32.1 = and i32 %39, 2
  %spec.select.1 = or i32 %and32.1, %read_hwcaps.1
  br label %if.end37.1

if.end37.1:                                       ; preds = %land.lhs.true.1, %if.end37.if.end37.1_crit_edge
  %read_hwcaps.1.1 = phi i32 [ %read_hwcaps.1, %if.end37.if.end37.1_crit_edge ], [ %spec.select.1, %land.lhs.true.1 ]
  %and.2 = and i32 %35, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool30.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool30.not.2, label %if.end37.1.if.end37.2_crit_edge, label %land.lhs.true.2

if.end37.1.if.end37.2_crit_edge:                  ; preds = %if.end37.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.2

land.lhs.true.2:                                  ; preds = %if.end37.1
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %call7.i, align 8
  %and32.2 = shl i32 %41, 1
  %42 = and i32 %and32.2, 8
  %spec.select.2 = or i32 %42, %read_hwcaps.1.1
  br label %if.end37.2

if.end37.2:                                       ; preds = %land.lhs.true.2, %if.end37.1.if.end37.2_crit_edge
  %read_hwcaps.1.2 = phi i32 [ %read_hwcaps.1.1, %if.end37.1.if.end37.2_crit_edge ], [ %spec.select.2, %land.lhs.true.2 ]
  %and.3 = and i32 %35, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool30.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool30.not.3, label %if.end37.2.if.end37.3_crit_edge, label %land.lhs.true.3

if.end37.2.if.end37.3_crit_edge:                  ; preds = %if.end37.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.3

land.lhs.true.3:                                  ; preds = %if.end37.2
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %call7.i, align 8
  %and32.3 = shl i32 %44, 1
  %45 = and i32 %and32.3, 16
  %spec.select.3 = or i32 %45, %read_hwcaps.1.2
  br label %if.end37.3

if.end37.3:                                       ; preds = %land.lhs.true.3, %if.end37.2.if.end37.3_crit_edge
  %read_hwcaps.1.3 = phi i32 [ %read_hwcaps.1.2, %if.end37.2.if.end37.3_crit_edge ], [ %spec.select.3, %land.lhs.true.3 ]
  %and.4 = and i32 %35, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool30.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool30.not.4, label %if.end37.3.if.end37.4_crit_edge, label %land.lhs.true.4

if.end37.3.if.end37.4_crit_edge:                  ; preds = %if.end37.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.4

land.lhs.true.4:                                  ; preds = %if.end37.3
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %call7.i, align 8
  %and32.4 = shl i32 %47, 3
  %48 = and i32 %and32.4, 128
  %spec.select.4 = or i32 %48, %read_hwcaps.1.3
  br label %if.end37.4

if.end37.4:                                       ; preds = %land.lhs.true.4, %if.end37.3.if.end37.4_crit_edge
  %read_hwcaps.1.4 = phi i32 [ %read_hwcaps.1.3, %if.end37.3.if.end37.4_crit_edge ], [ %spec.select.4, %land.lhs.true.4 ]
  %and.5 = and i32 %35, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool30.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool30.not.5, label %if.end37.4.if.end37.5_crit_edge, label %land.lhs.true.5

if.end37.4.if.end37.5_crit_edge:                  ; preds = %if.end37.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.5

land.lhs.true.5:                                  ; preds = %if.end37.4
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %call7.i, align 8
  %and32.5 = shl i32 %50, 3
  %51 = and i32 %and32.5, 256
  %spec.select.5 = or i32 %51, %read_hwcaps.1.4
  br label %if.end37.5

if.end37.5:                                       ; preds = %land.lhs.true.5, %if.end37.4.if.end37.5_crit_edge
  %read_hwcaps.1.5 = phi i32 [ %read_hwcaps.1.4, %if.end37.4.if.end37.5_crit_edge ], [ %spec.select.5, %land.lhs.true.5 ]
  %and.6 = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool30.not.6 = icmp eq i32 %and.6, 0
  br i1 %tobool30.not.6, label %if.end37.5.if.end37.6_crit_edge, label %land.lhs.true.6

if.end37.5.if.end37.6_crit_edge:                  ; preds = %if.end37.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.6

land.lhs.true.6:                                  ; preds = %if.end37.5
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %call7.i, align 8
  %and32.6 = lshr i32 %53, 11
  %54 = and i32 %and32.6, 4
  %spec.select.6 = or i32 %54, %read_hwcaps.1.5
  br label %if.end37.6

if.end37.6:                                       ; preds = %land.lhs.true.6, %if.end37.5.if.end37.6_crit_edge
  %read_hwcaps.1.6 = phi i32 [ %read_hwcaps.1.5, %if.end37.5.if.end37.6_crit_edge ], [ %spec.select.6, %land.lhs.true.6 ]
  %and.7 = and i32 %35, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %tobool30.not.7 = icmp eq i32 %and.7, 0
  br i1 %tobool30.not.7, label %if.end37.6.if.end37.7_crit_edge, label %land.lhs.true.7

if.end37.6.if.end37.7_crit_edge:                  ; preds = %if.end37.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.7

land.lhs.true.7:                                  ; preds = %if.end37.6
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %call7.i, align 8
  %and32.7 = lshr i32 %56, 8
  %57 = and i32 %and32.7, 64
  %spec.select.7 = or i32 %57, %read_hwcaps.1.6
  br label %if.end37.7

if.end37.7:                                       ; preds = %land.lhs.true.7, %if.end37.6.if.end37.7_crit_edge
  %read_hwcaps.1.7 = phi i32 [ %read_hwcaps.1.6, %if.end37.6.if.end37.7_crit_edge ], [ %spec.select.7, %land.lhs.true.7 ]
  %and.8 = and i32 %35, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.8)
  %tobool30.not.8 = icmp eq i32 %and.8, 0
  br i1 %tobool30.not.8, label %if.end37.7.if.end37.8_crit_edge, label %land.lhs.true.8

if.end37.7.if.end37.8_crit_edge:                  ; preds = %if.end37.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.8

land.lhs.true.8:                                  ; preds = %if.end37.7
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %call7.i, align 8
  %and32.8 = lshr i32 %59, 5
  %60 = and i32 %and32.8, 1024
  %spec.select.8 = or i32 %60, %read_hwcaps.1.7
  br label %if.end37.8

if.end37.8:                                       ; preds = %land.lhs.true.8, %if.end37.7.if.end37.8_crit_edge
  %read_hwcaps.1.8 = phi i32 [ %read_hwcaps.1.7, %if.end37.7.if.end37.8_crit_edge ], [ %spec.select.8, %land.lhs.true.8 ]
  %61 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %call7.i, align 8
  %and47 = and i32 %62, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  %and47.1 = and i32 %62, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.1)
  %tobool48.not.1 = icmp eq i32 %and47.1, 0
  %and47.2 = and i32 %62, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.2)
  %tobool48.not.2 = icmp eq i32 %and47.2, 0
  %63 = shl nuw nsw i32 %and47.2, 10
  %and63 = lshr i32 %62, 9
  %and63.lobit = and i32 %and63, 1
  %and63.1 = lshr i32 %62, 9
  %64 = and i32 %and63.1, 2
  %erase_mask.1.1 = or i32 %64, %and63.lobit
  %and63.2 = lshr i32 %62, 9
  %65 = and i32 %and63.2, 4
  %erase_mask.1.2 = or i32 %65, %erase_mask.1.1
  %and63.3 = lshr i32 %62, 9
  %66 = and i32 %and63.3, 8
  %erase_mask.1.3 = or i32 %66, %erase_mask.1.2
  %67 = shl i32 %62, 10
  %spec.select211.1 = and i32 %67, 196608
  %spec.select211.2 = or i32 %63, %spec.select211.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %erase_mask.1.3)
  %tobool.not.i213 = icmp eq i32 %erase_mask.1.3, 0
  br i1 %tobool.not.i213, label %if.end37.8.out_crit_edge, label %for.cond.preheader.i

if.end37.8.out_crit_edge:                         ; preds = %if.end37.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.cond.preheader.i:                             ; preds = %if.end37.8
  %68 = ptrtoint ptr %erase_type2 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %erase_type2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool2.not.i = icmp eq i32 %69, 0
  br i1 %tobool2.not.i, label %for.cond.preheader.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.cond.preheader.i.for.inc.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  %idx.i = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 8, i32 2, i32 0, i32 4
  %70 = ptrtoint ptr %idx.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %idx.i, align 1
  %conv4.i = zext i8 %71 to i32
  %shl.i = shl nuw i32 1, %conv4.i
  %and.i = and i32 %shl.i, %erase_mask.1.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp ne i32 %and.i, 0
  %spec.select.i = zext i1 %tobool5.not.i to i8
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i, %for.cond.preheader.i.for.inc.i_crit_edge
  %sorted_erase_mask.1.i = phi i8 [ 0, %for.cond.preheader.i.for.inc.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %arrayidx.1.i = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 8, i32 2, i32 1
  %72 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool2.not.1.i = icmp eq i32 %73, 0
  br i1 %tobool2.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %land.lhs.true.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.i

land.lhs.true.1.i:                                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  %idx.1.i = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 8, i32 2, i32 1, i32 4
  %74 = ptrtoint ptr %idx.1.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %idx.1.i, align 1
  %conv4.1.i = zext i8 %75 to i32
  %shl.1.i = shl nuw i32 1, %conv4.1.i
  %and.1.i = and i32 %shl.1.i, %erase_mask.1.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool5.not.1.i = icmp eq i32 %and.1.i, 0
  %conv9.1.i = or i8 %sorted_erase_mask.1.i, 2
  %spec.select23.i = select i1 %tobool5.not.1.i, i8 %sorted_erase_mask.1.i, i8 %conv9.1.i
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %land.lhs.true.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %sorted_erase_mask.1.1.i = phi i8 [ %sorted_erase_mask.1.i, %for.inc.i.for.inc.1.i_crit_edge ], [ %spec.select23.i, %land.lhs.true.1.i ]
  %arrayidx.2.i = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 8, i32 2, i32 2
  %76 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool2.not.2.i = icmp eq i32 %77, 0
  br i1 %tobool2.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %land.lhs.true.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2.i

land.lhs.true.2.i:                                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %idx.2.i = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 8, i32 2, i32 2, i32 4
  %78 = ptrtoint ptr %idx.2.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %idx.2.i, align 1
  %conv4.2.i = zext i8 %79 to i32
  %shl.2.i = shl nuw i32 1, %conv4.2.i
  %and.2.i = and i32 %shl.2.i, %erase_mask.1.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %tobool5.not.2.i = icmp eq i32 %and.2.i, 0
  %conv9.2.i = or i8 %sorted_erase_mask.1.1.i, 4
  %spec.select24.i = select i1 %tobool5.not.2.i, i8 %sorted_erase_mask.1.1.i, i8 %conv9.2.i
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %land.lhs.true.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %sorted_erase_mask.1.2.i = phi i8 [ %sorted_erase_mask.1.1.i, %for.inc.1.i.for.inc.2.i_crit_edge ], [ %spec.select24.i, %land.lhs.true.2.i ]
  %arrayidx.3.i = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 8, i32 2, i32 3
  %80 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool2.not.3.i = icmp eq i32 %81, 0
  br i1 %tobool2.not.3.i, label %for.inc.2.i.spi_nor_sort_erase_mask.exit_crit_edge, label %land.lhs.true.3.i

for.inc.2.i.spi_nor_sort_erase_mask.exit_crit_edge: ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_nor_sort_erase_mask.exit

land.lhs.true.3.i:                                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  %idx.3.i = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 8, i32 2, i32 3, i32 4
  %82 = ptrtoint ptr %idx.3.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %idx.3.i, align 1
  %conv4.3.i = zext i8 %83 to i32
  %shl.3.i = shl nuw i32 1, %conv4.3.i
  %and.3.i = and i32 %shl.3.i, %erase_mask.1.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i)
  %tobool5.not.3.i = icmp eq i32 %and.3.i, 0
  %conv9.3.i = or i8 %sorted_erase_mask.1.2.i, 8
  %spec.select25.i = select i1 %tobool5.not.3.i, i8 %sorted_erase_mask.1.2.i, i8 %conv9.3.i
  br label %spi_nor_sort_erase_mask.exit

spi_nor_sort_erase_mask.exit:                     ; preds = %land.lhs.true.3.i, %for.inc.2.i.spi_nor_sort_erase_mask.exit_crit_edge
  %retval.0.i = phi i8 [ %sorted_erase_mask.1.2.i, %for.inc.2.i.spi_nor_sort_erase_mask.exit_crit_edge ], [ %spec.select25.i, %land.lhs.true.3.i ]
  %conv74 = zext i8 %retval.0.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %read_hwcaps.1.8)
  %tobool75.not = icmp eq i32 %read_hwcaps.1.8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select211.2)
  %tobool77.not = icmp eq i32 %spec.select211.2, 0
  %or.cond = select i1 %tobool75.not, i1 true, i1 %tobool77.not
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retval.0.i)
  %tobool79.not = icmp eq i8 %retval.0.i, 0
  %or.cond212 = select i1 %or.cond, i1 true, i1 %tobool79.not
  br i1 %or.cond212, label %spi_nor_sort_erase_mask.exit.out_crit_edge, label %if.end81

spi_nor_sort_erase_mask.exit.out_crit_edge:       ; preds = %spi_nor_sort_erase_mask.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end81:                                         ; preds = %spi_nor_sort_erase_mask.exit
  %84 = ptrtoint ptr %hwcaps28 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %hwcaps28, align 4
  %and84 = and i32 %85, -460256
  %or85 = or i32 %spec.select211.2, %read_hwcaps.1.8
  %or88 = or i32 %or85, %and84
  store i32 %or88, ptr %hwcaps28, align 4
  %opcode = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 6, i32 0, i32 2
  %86 = ptrtoint ptr %opcode to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %opcode, align 2
  %call94 = tail call zeroext i8 @spi_nor_convert_3to4_read(i8 noundef zeroext %87) #8
  %88 = ptrtoint ptr %opcode to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %call94, ptr %opcode, align 2
  %opcode.1 = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 6, i32 1, i32 2
  %89 = ptrtoint ptr %opcode.1 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %opcode.1, align 2
  %call94.1 = tail call zeroext i8 @spi_nor_convert_3to4_read(i8 noundef zeroext %90) #8
  %91 = ptrtoint ptr %opcode.1 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %call94.1, ptr %opcode.1, align 2
  %opcode.2 = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 6, i32 2, i32 2
  %92 = ptrtoint ptr %opcode.2 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %opcode.2, align 2
  %call94.2 = tail call zeroext i8 @spi_nor_convert_3to4_read(i8 noundef zeroext %93) #8
  %94 = ptrtoint ptr %opcode.2 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %call94.2, ptr %opcode.2, align 2
  %opcode.3 = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 6, i32 3, i32 2
  %95 = ptrtoint ptr %opcode.3 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %opcode.3, align 2
  %call94.3 = tail call zeroext i8 @spi_nor_convert_3to4_read(i8 noundef zeroext %96) #8
  %97 = ptrtoint ptr %opcode.3 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %call94.3, ptr %opcode.3, align 2
  %opcode.4 = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 6, i32 4, i32 2
  %98 = ptrtoint ptr %opcode.4 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %opcode.4, align 2
  %call94.4 = tail call zeroext i8 @spi_nor_convert_3to4_read(i8 noundef zeroext %99) #8
  %100 = ptrtoint ptr %opcode.4 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %call94.4, ptr %opcode.4, align 2
  %opcode.5 = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 6, i32 5, i32 2
  %101 = ptrtoint ptr %opcode.5 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %opcode.5, align 2
  %call94.5 = tail call zeroext i8 @spi_nor_convert_3to4_read(i8 noundef zeroext %102) #8
  %103 = ptrtoint ptr %opcode.5 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %call94.5, ptr %opcode.5, align 2
  %opcode.6 = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 6, i32 6, i32 2
  %104 = ptrtoint ptr %opcode.6 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %opcode.6, align 2
  %call94.6 = tail call zeroext i8 @spi_nor_convert_3to4_read(i8 noundef zeroext %105) #8
  %106 = ptrtoint ptr %opcode.6 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %call94.6, ptr %opcode.6, align 2
  %opcode.7 = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 6, i32 7, i32 2
  %107 = ptrtoint ptr %opcode.7 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %opcode.7, align 2
  %call94.7 = tail call zeroext i8 @spi_nor_convert_3to4_read(i8 noundef zeroext %108) #8
  %109 = ptrtoint ptr %opcode.7 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %call94.7, ptr %opcode.7, align 2
  %opcode.8 = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 6, i32 8, i32 2
  %110 = ptrtoint ptr %opcode.8 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %opcode.8, align 2
  %call94.8 = tail call zeroext i8 @spi_nor_convert_3to4_read(i8 noundef zeroext %111) #8
  %112 = ptrtoint ptr %opcode.8 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %call94.8, ptr %opcode.8, align 2
  %opcode.9 = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 6, i32 9, i32 2
  %113 = ptrtoint ptr %opcode.9 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %opcode.9, align 2
  %call94.9 = tail call zeroext i8 @spi_nor_convert_3to4_read(i8 noundef zeroext %114) #8
  %115 = ptrtoint ptr %opcode.9 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %call94.9, ptr %opcode.9, align 2
  %opcode.10 = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 6, i32 10, i32 2
  %116 = ptrtoint ptr %opcode.10 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %opcode.10, align 2
  %call94.10 = tail call zeroext i8 @spi_nor_convert_3to4_read(i8 noundef zeroext %117) #8
  %118 = ptrtoint ptr %opcode.10 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %call94.10, ptr %opcode.10, align 2
  %opcode.11 = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 6, i32 11, i32 2
  %119 = ptrtoint ptr %opcode.11 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %opcode.11, align 2
  %call94.11 = tail call zeroext i8 @spi_nor_convert_3to4_read(i8 noundef zeroext %120) #8
  %121 = ptrtoint ptr %opcode.11 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %call94.11, ptr %opcode.11, align 2
  %opcode.12 = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 6, i32 12, i32 2
  %122 = ptrtoint ptr %opcode.12 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %opcode.12, align 2
  %call94.12 = tail call zeroext i8 @spi_nor_convert_3to4_read(i8 noundef zeroext %123) #8
  %124 = ptrtoint ptr %opcode.12 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %call94.12, ptr %opcode.12, align 2
  %opcode.13 = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 6, i32 13, i32 2
  %125 = ptrtoint ptr %opcode.13 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %opcode.13, align 2
  %call94.13 = tail call zeroext i8 @spi_nor_convert_3to4_read(i8 noundef zeroext %126) #8
  %127 = ptrtoint ptr %opcode.13 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %call94.13, ptr %opcode.13, align 2
  %opcode.14 = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 6, i32 14, i32 2
  %128 = ptrtoint ptr %opcode.14 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %opcode.14, align 2
  %call94.14 = tail call zeroext i8 @spi_nor_convert_3to4_read(i8 noundef zeroext %129) #8
  %130 = ptrtoint ptr %opcode.14 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %call94.14, ptr %opcode.14, align 2
  %opcode.15 = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 6, i32 15, i32 2
  %131 = ptrtoint ptr %opcode.15 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %opcode.15, align 2
  %call94.15 = tail call zeroext i8 @spi_nor_convert_3to4_read(i8 noundef zeroext %132) #8
  %133 = ptrtoint ptr %opcode.15 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %call94.15, ptr %opcode.15, align 2
  br i1 %tobool48.not, label %if.end81.if.end104_crit_edge, label %if.then101

if.end81.if.end104_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end104

if.then101:                                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @spi_nor_set_pp_settings(ptr noundef %page_programs, i8 noundef zeroext 18, i32 noundef 65793) #8
  %arrayidx103 = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 7, i32 7
  tail call void @spi_nor_set_pp_settings(ptr noundef %arrayidx103, i8 noundef zeroext 18, i32 noundef 17303560) #8
  br label %if.end104

if.end104:                                        ; preds = %if.then101, %if.end81.if.end104_crit_edge
  br i1 %tobool48.not.1, label %if.end104.if.end109_crit_edge, label %if.then107

if.end104.if.end109_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end109

if.then107:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx108 = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 7, i32 1
  tail call void @spi_nor_set_pp_settings(ptr noundef %arrayidx108, i8 noundef zeroext 52, i32 noundef 65796) #8
  br label %if.end109

if.end109:                                        ; preds = %if.then107, %if.end104.if.end109_crit_edge
  br i1 %tobool48.not.2, label %if.end109.if.end114_crit_edge, label %if.then112

if.end109.if.end114_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end114

if.then112:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx113 = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 7, i32 2
  tail call void @spi_nor_set_pp_settings(ptr noundef %arrayidx113, i8 noundef zeroext 62, i32 noundef 66564) #8
  br label %if.end114

if.end114:                                        ; preds = %if.then112, %if.end109.if.end114_crit_edge
  %and120 = and i32 %conv74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool121.not = icmp eq i32 %and120, 0
  br i1 %tobool121.not, label %if.else, label %if.then122

if.then122:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #10
  %134 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %incdec.ptr.i, align 4
  %idx = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 8, i32 2, i32 0, i32 4
  %136 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %idx, align 1
  %conv125 = zext i8 %137 to i32
  %mul = shl nuw nsw i32 %conv125, 3
  %shr = lshr i32 %135, %mul
  %conv127 = trunc i32 %shr to i8
  %opcode129 = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 8, i32 2, i32 0, i32 3
  %138 = ptrtoint ptr %opcode129 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %conv127, ptr %opcode129, align 4
  br label %for.inc132

if.else:                                          ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @spi_nor_set_erase_type(ptr noundef %erase_type2, i32 noundef 0, i8 noundef zeroext -1) #8
  br label %for.inc132

for.inc132:                                       ; preds = %if.else, %if.then122
  %and120.1 = and i32 %conv74, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120.1)
  %tobool121.not.1 = icmp eq i32 %and120.1, 0
  br i1 %tobool121.not.1, label %if.else.1, label %if.then122.1

if.then122.1:                                     ; preds = %for.inc132
  call void @__sanitizer_cov_trace_pc() #10
  %139 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %incdec.ptr.i, align 4
  %idx.1 = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 8, i32 2, i32 1, i32 4
  %141 = ptrtoint ptr %idx.1 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %idx.1, align 1
  %conv125.1 = zext i8 %142 to i32
  %mul.1 = shl nuw nsw i32 %conv125.1, 3
  %shr.1 = lshr i32 %140, %mul.1
  %conv127.1 = trunc i32 %shr.1 to i8
  %opcode129.1 = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 8, i32 2, i32 1, i32 3
  %143 = ptrtoint ptr %opcode129.1 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %conv127.1, ptr %opcode129.1, align 4
  br label %for.inc132.1

if.else.1:                                        ; preds = %for.inc132
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx130.1 = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 8, i32 2, i32 1
  tail call void @spi_nor_set_erase_type(ptr noundef %arrayidx130.1, i32 noundef 0, i8 noundef zeroext -1) #8
  br label %for.inc132.1

for.inc132.1:                                     ; preds = %if.else.1, %if.then122.1
  %and120.2 = and i32 %conv74, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120.2)
  %tobool121.not.2 = icmp eq i32 %and120.2, 0
  br i1 %tobool121.not.2, label %if.else.2, label %if.then122.2

if.then122.2:                                     ; preds = %for.inc132.1
  call void @__sanitizer_cov_trace_pc() #10
  %144 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %incdec.ptr.i, align 4
  %idx.2 = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 8, i32 2, i32 2, i32 4
  %146 = ptrtoint ptr %idx.2 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %idx.2, align 1
  %conv125.2 = zext i8 %147 to i32
  %mul.2 = shl nuw nsw i32 %conv125.2, 3
  %shr.2 = lshr i32 %145, %mul.2
  %conv127.2 = trunc i32 %shr.2 to i8
  %opcode129.2 = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 8, i32 2, i32 2, i32 3
  %148 = ptrtoint ptr %opcode129.2 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %conv127.2, ptr %opcode129.2, align 4
  br label %for.inc132.2

if.else.2:                                        ; preds = %for.inc132.1
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx130.2 = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 8, i32 2, i32 2
  tail call void @spi_nor_set_erase_type(ptr noundef %arrayidx130.2, i32 noundef 0, i8 noundef zeroext -1) #8
  br label %for.inc132.2

for.inc132.2:                                     ; preds = %if.else.2, %if.then122.2
  %and120.3 = and i32 %conv74, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120.3)
  %tobool121.not.3 = icmp eq i32 %and120.3, 0
  br i1 %tobool121.not.3, label %if.else.3, label %if.then122.3

if.then122.3:                                     ; preds = %for.inc132.2
  call void @__sanitizer_cov_trace_pc() #10
  %149 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %incdec.ptr.i, align 4
  %idx.3 = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 8, i32 2, i32 3, i32 4
  %151 = ptrtoint ptr %idx.3 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %idx.3, align 1
  %conv125.3 = zext i8 %152 to i32
  %mul.3 = shl nuw nsw i32 %conv125.3, 3
  %shr.3 = lshr i32 %150, %mul.3
  %conv127.3 = trunc i32 %shr.3 to i8
  %opcode129.3 = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 8, i32 2, i32 3, i32 3
  %153 = ptrtoint ptr %opcode129.3 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %conv127.3, ptr %opcode129.3, align 4
  br label %for.inc132.3

if.else.3:                                        ; preds = %for.inc132.2
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx130.3 = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 8, i32 2, i32 3
  tail call void @spi_nor_set_erase_type(ptr noundef %arrayidx130.3, i32 noundef 0, i8 noundef zeroext -1) #8
  br label %for.inc132.3

for.inc132.3:                                     ; preds = %if.else.3, %if.then122.3
  %154 = ptrtoint ptr %addr_width2.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 4, ptr %addr_width2.i, align 4
  %flags = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 17
  %155 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %flags, align 4
  %or135 = or i32 %156, 192
  store i32 %or135, ptr %flags, align 4
  br label %out

out:                                              ; preds = %for.inc132.3, %spi_nor_sort_erase_mask.exit.out_crit_edge, %if.end37.8.out_crit_edge, %spi_nor_read_sfdp.exit.thread
  %retval.0.i.i216 = phi i32 [ %retval.0.i.i.ph, %spi_nor_read_sfdp.exit.thread ], [ 0, %spi_nor_sort_erase_mask.exit.out_crit_edge ], [ 0, %for.inc132.3 ], [ 0, %if.end37.8.out_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.i216, %out ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @spi_nor_parse_profile1(ptr noundef %nor, ptr nocapture noundef readonly %profile1_header) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %length = getelementptr inbounds %struct.sfdp_parameter_header, ptr %profile1_header, i32 0, i32 3
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %length, align 1
  %conv = zext i8 %1 to i32
  %mul = shl nuw nsw i32 %conv, 2
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3264) #12
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %parameter_table_pointer = getelementptr inbounds %struct.sfdp_parameter_header, ptr %profile1_header, i32 0, i32 4
  %arrayidx = getelementptr %struct.sfdp_parameter_header, ptr %profile1_header, i32 0, i32 4, i32 2
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %arrayidx3 = getelementptr %struct.sfdp_parameter_header, ptr %profile1_header, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx3, align 1
  %6 = ptrtoint ptr %parameter_table_pointer to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %parameter_table_pointer, align 1
  %read_opcode1.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 10
  %8 = ptrtoint ptr %read_opcode1.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %read_opcode1.i, align 2
  %addr_width2.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 8
  %10 = ptrtoint ptr %addr_width2.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %addr_width2.i, align 4
  %read_dummy3.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 11
  %12 = ptrtoint ptr %read_dummy3.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %read_dummy3.i, align 1
  store i8 90, ptr %read_opcode1.i, align 2
  store i8 3, ptr %addr_width2.i, align 4
  store i8 8, ptr %read_dummy3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not18.i.i = icmp eq i8 %1, 0
  br i1 %tobool.not18.i.i, label %if.end.if.end14_crit_edge, label %while.body.i.i.preheader

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

while.body.i.i.preheader:                         ; preds = %if.end
  %conv4 = zext i8 %5 to i32
  %shl5 = shl nuw nsw i32 %conv4, 8
  %conv1 = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %conv1, 16
  %or = or i32 %shl5, %shl
  %conv8 = zext i8 %7 to i32
  %or10 = or i32 %or, %conv8
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end6.i.i.while.body.i.i_crit_edge, %while.body.i.i.preheader
  %buf.addr.021.i.i = phi ptr [ %add.ptr.i.i, %if.end6.i.i.while.body.i.i_crit_edge ], [ %call9.i, %while.body.i.i.preheader ]
  %len.addr.020.i.i = phi i32 [ %sub.i.i, %if.end6.i.i.while.body.i.i_crit_edge ], [ %mul, %while.body.i.i.preheader ]
  %addr.addr.019.i.i = phi i32 [ %add.i.i, %if.end6.i.i.while.body.i.i_crit_edge ], [ %or10, %while.body.i.i.preheader ]
  %conv.i.i = zext i32 %addr.addr.019.i.i to i64
  %call.i.i = tail call i32 @spi_nor_read_data(ptr noundef %nor, i64 noundef %conv.i.i, i32 noundef %len.addr.020.i.i, ptr noundef %buf.addr.021.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i186 = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i186, label %while.body.i.i.spi_nor_read_sfdp.exit_crit_edge, label %if.end.i.i187

while.body.i.i.spi_nor_read_sfdp.exit_crit_edge:  ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_nor_read_sfdp.exit

if.end.i.i187:                                    ; preds = %while.body.i.i
  %14 = add nsw i32 %call.i.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %len.addr.020.i.i)
  %.not.i.i = icmp ult i32 %14, %len.addr.020.i.i
  br i1 %.not.i.i, label %if.end6.i.i, label %if.end.i.i187.spi_nor_read_sfdp.exit_crit_edge

if.end.i.i187.spi_nor_read_sfdp.exit_crit_edge:   ; preds = %if.end.i.i187
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_nor_read_sfdp.exit

if.end6.i.i:                                      ; preds = %if.end.i.i187
  %add.ptr.i.i = getelementptr i8, ptr %buf.addr.021.i.i, i32 %call.i.i
  %add.i.i = add i32 %call.i.i, %addr.addr.019.i.i
  %sub.i.i = sub i32 %len.addr.020.i.i, %call.i.i
  %tobool.not.i.i188 = icmp eq i32 %sub.i.i, 0
  br i1 %tobool.not.i.i188, label %if.end6.i.i.if.end14_crit_edge, label %if.end6.i.i.while.body.i.i_crit_edge

if.end6.i.i.while.body.i.i_crit_edge:             ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

if.end6.i.i.if.end14_crit_edge:                   ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

spi_nor_read_sfdp.exit:                           ; preds = %if.end.i.i187.spi_nor_read_sfdp.exit_crit_edge, %while.body.i.i.spi_nor_read_sfdp.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i, %while.body.i.i.spi_nor_read_sfdp.exit_crit_edge ], [ -5, %if.end.i.i187.spi_nor_read_sfdp.exit_crit_edge ]
  %15 = ptrtoint ptr %read_opcode1.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %9, ptr %read_opcode1.i, align 2
  %16 = ptrtoint ptr %addr_width2.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %11, ptr %addr_width2.i, align 4
  %17 = ptrtoint ptr %read_dummy3.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %13, ptr %read_dummy3.i, align 1
  br label %out

if.end14:                                         ; preds = %if.end6.i.i.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %18 = ptrtoint ptr %read_opcode1.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %9, ptr %read_opcode1.i, align 2
  %19 = ptrtoint ptr %addr_width2.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %11, ptr %addr_width2.i, align 4
  %20 = ptrtoint ptr %read_dummy3.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %13, ptr %read_dummy3.i, align 1
  %21 = ptrtoint ptr %length to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %length, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not2.i = icmp eq i8 %22, 0
  br i1 %tobool.not2.i, label %if.end14.le32_to_cpu_array.exit_crit_edge, label %while.body.i.preheader

if.end14.le32_to_cpu_array.exit_crit_edge:        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %le32_to_cpu_array.exit

while.body.i.preheader:                           ; preds = %if.end14
  %conv16 = zext i8 %22 to i32
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.i.preheader
  %words.addr.04.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %conv16, %while.body.i.preheader ]
  %buf.addr.03.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %call9.i, %while.body.i.preheader ]
  %dec.i = add nsw i32 %words.addr.04.i, -1
  %23 = ptrtoint ptr %buf.addr.03.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %buf.addr.03.i, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #8
  %26 = ptrtoint ptr %buf.addr.03.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %buf.addr.03.i, align 4
  %incdec.ptr.i = getelementptr i32, ptr %buf.addr.03.i, i32 1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.body.i.le32_to_cpu_array.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i.le32_to_cpu_array.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %le32_to_cpu_array.exit

le32_to_cpu_array.exit:                           ; preds = %while.body.i.le32_to_cpu_array.exit_crit_edge, %if.end14.le32_to_cpu_array.exit_crit_edge
  %27 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %call9.i, align 128
  %and = lshr i32 %28, 8
  %conv30 = trunc i32 %and to i8
  %and32 = and i32 %28, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  %params35 = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 21
  %29 = ptrtoint ptr %params35 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %params35, align 4
  %rdsr_dummy36 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %30, i32 0, i32 3
  %. = select i1 %tobool33.not, i8 4, i8 8
  %31 = ptrtoint ptr %rdsr_dummy36 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %., ptr %rdsr_dummy36, align 8
  %32 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %call9.i, align 128
  %and39 = lshr i32 %33, 27
  %34 = trunc i32 %and39 to i8
  %35 = and i8 %34, 4
  %params42 = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 21
  %36 = ptrtoint ptr %params42 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %params42, align 4
  %rdsr_addr_nbytes = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %rdsr_addr_nbytes to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %35, ptr %rdsr_addr_nbytes, align 1
  %arrayidx63 = getelementptr i32, ptr %call9.i, i32 3
  %39 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx63, align 4
  %and64 = lshr i32 %40, 7
  %41 = trunc i32 %and64 to i8
  %conv66 = and i8 %41, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv66)
  %tobool67.not = icmp eq i8 %conv66, 0
  br i1 %tobool67.not, label %if.end89, label %le32_to_cpu_array.exit.if.end148_crit_edge

le32_to_cpu_array.exit.if.end148_crit_edge:       ; preds = %le32_to_cpu_array.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end148

if.end89:                                         ; preds = %le32_to_cpu_array.exit
  %arrayidx85 = getelementptr i32, ptr %call9.i, i32 4
  %42 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx85, align 16
  %shr87 = lshr i32 %43, 27
  %conv88 = trunc i32 %shr87 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv88)
  %tobool90.not = icmp eq i8 %conv88, 0
  br i1 %tobool90.not, label %if.end112, label %if.end89.if.end148_crit_edge

if.end89.if.end148_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end148

if.end112:                                        ; preds = %if.end89
  %44 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx85, align 16
  %and109 = lshr i32 %45, 17
  %46 = trunc i32 %and109 to i8
  %conv111 = and i8 %46, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv111)
  %tobool113.not = icmp eq i8 %conv111, 0
  br i1 %tobool113.not, label %if.end135, label %if.end112.if.end148_crit_edge

if.end112.if.end148_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end148

if.end135:                                        ; preds = %if.end112
  %47 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx85, align 16
  %and132 = lshr i32 %48, 7
  %49 = trunc i32 %and132 to i8
  %conv134 = and i8 %49, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv134)
  %tobool136.not = icmp eq i8 %conv134, 0
  br i1 %tobool136.not, label %do.body138, label %if.end135.if.end148_crit_edge

if.end135.if.end148_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end148

do.body138:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_nor_parse_profile1.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spi_nor_parse_profile1, %if.then144)) #8
          to label %if.end148 [label %if.then144], !srcloc !51

if.then144:                                       ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %50 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spi_nor_parse_profile1.__UNIQUE_ID_ddebug266, ptr noundef %51, ptr noundef nonnull @.str.14) #8
  br label %if.end148

if.end148:                                        ; preds = %if.then144, %do.body138, %if.end135.if.end148_crit_edge, %if.end112.if.end148_crit_edge, %if.end89.if.end148_crit_edge, %le32_to_cpu_array.exit.if.end148_crit_edge
  %dummy.2210 = phi i8 [ 0, %if.then144 ], [ %conv134, %if.end135.if.end148_crit_edge ], [ 0, %do.body138 ], [ %conv111, %if.end112.if.end148_crit_edge ], [ %conv88, %if.end89.if.end148_crit_edge ], [ %conv66, %le32_to_cpu_array.exit.if.end148_crit_edge ]
  %sub = add nsw i8 %dummy.2210, -1
  %or150 = or i8 %sub, 1
  %add = add i8 %or150, 1
  %params152 = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 21
  %52 = ptrtoint ptr %params152 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %params152, align 4
  %arrayidx153 = getelementptr %struct.spi_nor_flash_parameter, ptr %53, i32 0, i32 6, i32 15
  tail call void @spi_nor_set_read_settings(ptr noundef %arrayidx153, i8 noundef zeroext 0, i8 noundef zeroext %add, i8 noundef zeroext %conv30, i32 noundef 17303560) #8
  br label %out

out:                                              ; preds = %if.end148, %spi_nor_read_sfdp.exit
  %retval.0.i.i198 = phi i32 [ %retval.0.i.i, %spi_nor_read_sfdp.exit ], [ 0, %if.end148 ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.i198, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @spi_nor_parse_sccr(ptr noundef %nor, ptr nocapture noundef readonly %sccr_header) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %length = getelementptr inbounds %struct.sfdp_parameter_header, ptr %sccr_header, i32 0, i32 3
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %length, align 1
  %conv = zext i8 %1 to i32
  %mul = shl nuw nsw i32 %conv, 2
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3264) #12
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %parameter_table_pointer = getelementptr inbounds %struct.sfdp_parameter_header, ptr %sccr_header, i32 0, i32 4
  %arrayidx = getelementptr %struct.sfdp_parameter_header, ptr %sccr_header, i32 0, i32 4, i32 2
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %arrayidx3 = getelementptr %struct.sfdp_parameter_header, ptr %sccr_header, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx3, align 1
  %6 = ptrtoint ptr %parameter_table_pointer to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %parameter_table_pointer, align 1
  %read_opcode1.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 10
  %8 = ptrtoint ptr %read_opcode1.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %read_opcode1.i, align 2
  %addr_width2.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 8
  %10 = ptrtoint ptr %addr_width2.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %addr_width2.i, align 4
  %read_dummy3.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 11
  %12 = ptrtoint ptr %read_dummy3.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %read_dummy3.i, align 1
  store i8 90, ptr %read_opcode1.i, align 2
  store i8 3, ptr %addr_width2.i, align 4
  store i8 8, ptr %read_dummy3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not18.i.i = icmp eq i8 %1, 0
  br i1 %tobool.not18.i.i, label %if.end.if.end14_crit_edge, label %while.body.i.i.preheader

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

while.body.i.i.preheader:                         ; preds = %if.end
  %conv4 = zext i8 %5 to i32
  %shl5 = shl nuw nsw i32 %conv4, 8
  %conv1 = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %conv1, 16
  %or = or i32 %shl5, %shl
  %conv8 = zext i8 %7 to i32
  %or10 = or i32 %or, %conv8
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end6.i.i.while.body.i.i_crit_edge, %while.body.i.i.preheader
  %buf.addr.021.i.i = phi ptr [ %add.ptr.i.i, %if.end6.i.i.while.body.i.i_crit_edge ], [ %call9.i, %while.body.i.i.preheader ]
  %len.addr.020.i.i = phi i32 [ %sub.i.i, %if.end6.i.i.while.body.i.i_crit_edge ], [ %mul, %while.body.i.i.preheader ]
  %addr.addr.019.i.i = phi i32 [ %add.i.i, %if.end6.i.i.while.body.i.i_crit_edge ], [ %or10, %while.body.i.i.preheader ]
  %conv.i.i = zext i32 %addr.addr.019.i.i to i64
  %call.i.i = tail call i32 @spi_nor_read_data(ptr noundef %nor, i64 noundef %conv.i.i, i32 noundef %len.addr.020.i.i, ptr noundef %buf.addr.021.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i48 = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i48, label %while.body.i.i.spi_nor_read_sfdp.exit_crit_edge, label %if.end.i.i49

while.body.i.i.spi_nor_read_sfdp.exit_crit_edge:  ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_nor_read_sfdp.exit

if.end.i.i49:                                     ; preds = %while.body.i.i
  %14 = add nsw i32 %call.i.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %len.addr.020.i.i)
  %.not.i.i = icmp ult i32 %14, %len.addr.020.i.i
  br i1 %.not.i.i, label %if.end6.i.i, label %if.end.i.i49.spi_nor_read_sfdp.exit_crit_edge

if.end.i.i49.spi_nor_read_sfdp.exit_crit_edge:    ; preds = %if.end.i.i49
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_nor_read_sfdp.exit

if.end6.i.i:                                      ; preds = %if.end.i.i49
  %add.ptr.i.i = getelementptr i8, ptr %buf.addr.021.i.i, i32 %call.i.i
  %add.i.i = add i32 %call.i.i, %addr.addr.019.i.i
  %sub.i.i = sub i32 %len.addr.020.i.i, %call.i.i
  %tobool.not.i.i50 = icmp eq i32 %sub.i.i, 0
  br i1 %tobool.not.i.i50, label %if.end6.i.i.if.end14_crit_edge, label %if.end6.i.i.while.body.i.i_crit_edge

if.end6.i.i.while.body.i.i_crit_edge:             ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

if.end6.i.i.if.end14_crit_edge:                   ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

spi_nor_read_sfdp.exit:                           ; preds = %if.end.i.i49.spi_nor_read_sfdp.exit_crit_edge, %while.body.i.i.spi_nor_read_sfdp.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i, %while.body.i.i.spi_nor_read_sfdp.exit_crit_edge ], [ -5, %if.end.i.i49.spi_nor_read_sfdp.exit_crit_edge ]
  %15 = ptrtoint ptr %read_opcode1.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %9, ptr %read_opcode1.i, align 2
  %16 = ptrtoint ptr %addr_width2.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %11, ptr %addr_width2.i, align 4
  %17 = ptrtoint ptr %read_dummy3.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %13, ptr %read_dummy3.i, align 1
  br label %out

if.end14:                                         ; preds = %if.end6.i.i.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %18 = ptrtoint ptr %read_opcode1.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %9, ptr %read_opcode1.i, align 2
  %19 = ptrtoint ptr %addr_width2.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %11, ptr %addr_width2.i, align 4
  %20 = ptrtoint ptr %read_dummy3.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %13, ptr %read_dummy3.i, align 1
  %21 = ptrtoint ptr %length to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %length, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not2.i = icmp eq i8 %22, 0
  br i1 %tobool.not2.i, label %if.end14.le32_to_cpu_array.exit_crit_edge, label %while.body.i.preheader

if.end14.le32_to_cpu_array.exit_crit_edge:        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %le32_to_cpu_array.exit

while.body.i.preheader:                           ; preds = %if.end14
  %conv16 = zext i8 %22 to i32
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.i.preheader
  %words.addr.04.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %conv16, %while.body.i.preheader ]
  %buf.addr.03.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %call9.i, %while.body.i.preheader ]
  %dec.i = add nsw i32 %words.addr.04.i, -1
  %23 = ptrtoint ptr %buf.addr.03.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %buf.addr.03.i, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #8
  %26 = ptrtoint ptr %buf.addr.03.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %buf.addr.03.i, align 4
  %incdec.ptr.i = getelementptr i32, ptr %buf.addr.03.i, i32 1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.body.i.le32_to_cpu_array.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i.le32_to_cpu_array.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %le32_to_cpu_array.exit

le32_to_cpu_array.exit:                           ; preds = %while.body.i.le32_to_cpu_array.exit_crit_edge, %if.end14.le32_to_cpu_array.exit_crit_edge
  %arrayidx29 = getelementptr i32, ptr %call9.i, i32 22
  %27 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx29, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %tobool30.not = icmp sgt i32 %28, -1
  br i1 %tobool30.not, label %le32_to_cpu_array.exit.out_crit_edge, label %if.then31

le32_to_cpu_array.exit.out_crit_edge:             ; preds = %le32_to_cpu_array.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then31:                                        ; preds = %le32_to_cpu_array.exit
  call void @__sanitizer_cov_trace_pc() #10
  %flags = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 17
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags, align 4
  %or32 = or i32 %30, 16384
  store i32 %or32, ptr %flags, align 4
  br label %out

out:                                              ; preds = %if.then31, %le32_to_cpu_array.exit.out_crit_edge, %spi_nor_read_sfdp.exit
  %retval.0.i.i57 = phi i32 [ 0, %le32_to_cpu_array.exit.out_crit_edge ], [ 0, %if.then31 ], [ %retval.0.i.i, %spi_nor_read_sfdp.exit ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.i57, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @spi_nor_post_sfdp_fixups(ptr noundef %nor) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %manufacturer = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 7
  %0 = ptrtoint ptr %manufacturer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %manufacturer, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %fixups = getelementptr inbounds %struct.spi_nor_manufacturer, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %fixups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fixups, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true3

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %post_sfdp = getelementptr inbounds %struct.spi_nor_fixups, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %post_sfdp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %post_sfdp, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %land.lhs.true3.if.end_crit_edge, label %if.then

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %5(ptr noundef %nor) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true3.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %info = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 6
  %6 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info, align 4
  %fixups10 = getelementptr inbounds %struct.flash_info, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %fixups10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fixups10, align 8
  %tobool11.not = icmp eq ptr %9, null
  br i1 %tobool11.not, label %if.end.if.end21_crit_edge, label %land.lhs.true12

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

land.lhs.true12:                                  ; preds = %if.end
  %post_sfdp15 = getelementptr inbounds %struct.spi_nor_fixups, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %post_sfdp15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %post_sfdp15, align 4
  %tobool16.not = icmp eq ptr %11, null
  br i1 %tobool16.not, label %land.lhs.true12.if.end21_crit_edge, label %if.then17

land.lhs.true12.if.end21_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then17:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %11(ptr noundef %nor) #8
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %land.lhs.true12.if.end21_crit_edge, %if.end.if.end21_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_read_data(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_hwcaps_read2cmd(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_nor_init_uniform_erase_map(ptr noundef, i8 noundef zeroext, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @spi_nor_map_cmp_erase_type(ptr nocapture noundef readonly %l, ptr nocapture noundef readonly %r) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %l, align 4
  %2 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %r, align 4
  %sub = sub i32 %1, %3
  ret i32 %sub
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @spi_nor_regions_sort_erase_types(ptr nocapture noundef readonly %map) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map, align 8
  %tobool.not11 = icmp eq ptr %1, null
  br i1 %tobool.not11, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %erase_type1.i = getelementptr inbounds %struct.spi_nor_erase_map, ptr %map, i32 0, i32 2
  %idx.i = getelementptr %struct.spi_nor_erase_map, ptr %map, i32 0, i32 2, i32 0, i32 4
  %arrayidx.1.i = getelementptr %struct.spi_nor_erase_map, ptr %map, i32 0, i32 2, i32 1
  %idx.1.i = getelementptr %struct.spi_nor_erase_map, ptr %map, i32 0, i32 2, i32 1, i32 4
  %arrayidx.2.i = getelementptr %struct.spi_nor_erase_map, ptr %map, i32 0, i32 2, i32 2
  %idx.2.i = getelementptr %struct.spi_nor_erase_map, ptr %map, i32 0, i32 2, i32 2, i32 4
  %arrayidx.3.i = getelementptr %struct.spi_nor_erase_map, ptr %map, i32 0, i32 2, i32 3
  %idx.3.i = getelementptr %struct.spi_nor_erase_map, ptr %map, i32 0, i32 2, i32 3, i32 4
  br label %while.body

while.body:                                       ; preds = %spi_nor_sort_erase_mask.exit.while.body_crit_edge, %while.body.lr.ph
  %region.012 = phi ptr [ %1, %while.body.lr.ph ], [ %call5, %spi_nor_sort_erase_mask.exit.while.body_crit_edge ]
  %2 = ptrtoint ptr %region.012 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %region.012, align 8
  %4 = trunc i64 %3 to i8
  %conv = and i8 %4, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %tobool.not.i = icmp eq i8 %conv, 0
  br i1 %tobool.not.i, label %while.body.spi_nor_sort_erase_mask.exit_crit_edge, label %for.cond.preheader.i

while.body.spi_nor_sort_erase_mask.exit_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_nor_sort_erase_mask.exit

for.cond.preheader.i:                             ; preds = %while.body
  %conv.i = zext i8 %conv to i32
  %5 = ptrtoint ptr %erase_type1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %erase_type1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not.i = icmp eq i32 %6, 0
  br i1 %tobool2.not.i, label %for.cond.preheader.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.cond.preheader.i.for.inc.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %idx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %idx.i, align 1
  %conv4.i = zext i8 %8 to i32
  %shl.i = shl nuw i32 1, %conv4.i
  %and.i = and i32 %shl.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp ne i32 %and.i, 0
  %spec.select.i = zext i1 %tobool5.not.i to i8
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i, %for.cond.preheader.i.for.inc.i_crit_edge
  %sorted_erase_mask.1.i = phi i8 [ 0, %for.cond.preheader.i.for.inc.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %9 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool2.not.1.i = icmp eq i32 %10, 0
  br i1 %tobool2.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %land.lhs.true.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.i

land.lhs.true.1.i:                                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %idx.1.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %idx.1.i, align 1
  %conv4.1.i = zext i8 %12 to i32
  %shl.1.i = shl nuw i32 1, %conv4.1.i
  %and.1.i = and i32 %shl.1.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool5.not.1.i = icmp eq i32 %and.1.i, 0
  %conv9.1.i = or i8 %sorted_erase_mask.1.i, 2
  %spec.select23.i = select i1 %tobool5.not.1.i, i8 %sorted_erase_mask.1.i, i8 %conv9.1.i
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %land.lhs.true.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %sorted_erase_mask.1.1.i = phi i8 [ %sorted_erase_mask.1.i, %for.inc.i.for.inc.1.i_crit_edge ], [ %spec.select23.i, %land.lhs.true.1.i ]
  %13 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool2.not.2.i = icmp eq i32 %14, 0
  br i1 %tobool2.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %land.lhs.true.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2.i

land.lhs.true.2.i:                                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %idx.2.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %idx.2.i, align 1
  %conv4.2.i = zext i8 %16 to i32
  %shl.2.i = shl nuw i32 1, %conv4.2.i
  %and.2.i = and i32 %shl.2.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %tobool5.not.2.i = icmp eq i32 %and.2.i, 0
  %conv9.2.i = or i8 %sorted_erase_mask.1.1.i, 4
  %spec.select24.i = select i1 %tobool5.not.2.i, i8 %sorted_erase_mask.1.1.i, i8 %conv9.2.i
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %land.lhs.true.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %sorted_erase_mask.1.2.i = phi i8 [ %sorted_erase_mask.1.1.i, %for.inc.1.i.for.inc.2.i_crit_edge ], [ %spec.select24.i, %land.lhs.true.2.i ]
  %17 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool2.not.3.i = icmp eq i32 %18, 0
  br i1 %tobool2.not.3.i, label %for.inc.2.i.spi_nor_sort_erase_mask.exit_crit_edge, label %land.lhs.true.3.i

for.inc.2.i.spi_nor_sort_erase_mask.exit_crit_edge: ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_nor_sort_erase_mask.exit

land.lhs.true.3.i:                                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %idx.3.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %idx.3.i, align 1
  %conv4.3.i = zext i8 %20 to i32
  %shl.3.i = shl nuw i32 1, %conv4.3.i
  %and.3.i = and i32 %shl.3.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i)
  %tobool5.not.3.i = icmp eq i32 %and.3.i, 0
  %conv9.3.i = or i8 %sorted_erase_mask.1.2.i, 8
  %spec.select25.i = select i1 %tobool5.not.3.i, i8 %sorted_erase_mask.1.2.i, i8 %conv9.3.i
  br label %spi_nor_sort_erase_mask.exit

spi_nor_sort_erase_mask.exit:                     ; preds = %land.lhs.true.3.i, %for.inc.2.i.spi_nor_sort_erase_mask.exit_crit_edge, %while.body.spi_nor_sort_erase_mask.exit_crit_edge
  %retval.0.i = phi i8 [ 0, %while.body.spi_nor_sort_erase_mask.exit_crit_edge ], [ %sorted_erase_mask.1.2.i, %for.inc.2.i.spi_nor_sort_erase_mask.exit_crit_edge ], [ %spec.select25.i, %land.lhs.true.3.i ]
  %and2 = and i64 %3, -16
  %conv3 = zext i8 %retval.0.i to i64
  %or = or i64 %and2, %conv3
  %21 = ptrtoint ptr %region.012 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %or, ptr %region.012, align 8
  %call5 = tail call ptr @spi_nor_region_next(ptr noundef nonnull %region.012) #8
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %spi_nor_sort_erase_mask.exit.while.end_crit_edge, label %spi_nor_sort_erase_mask.exit.while.body_crit_edge

spi_nor_sort_erase_mask.exit.while.body_crit_edge: ; preds = %spi_nor_sort_erase_mask.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

spi_nor_sort_erase_mask.exit.while.end_crit_edge: ; preds = %spi_nor_sort_erase_mask.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %spi_nor_sort_erase_mask.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_post_bfpt_fixups(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_sr2_bit1_quad_enable(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_sr1_bit6_quad_enable(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_sr2_bit7_quad_enable(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_nor_set_erase_type(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_nor_region_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @spi_nor_convert_3to4_read(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_nor_set_pp_settings(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_nor_set_read_settings(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !14, !15, !16, !17, !18, !20, !21, !22, !24, !25, !27, !28, !30, !32, !34, !36, !38, !40, !41}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mtd/spi-nor/sfdp.c", i32 1316, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @spi_nor_parse_sfdp.__UNIQUE_ID_ddebug272, !1, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/mtd/spi-nor/sfdp.c", i32 1337, i32 3}
!8 = !{ptr @spi_nor_parse_sfdp.__UNIQUE_ID_ddebug275, !7, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/mtd/spi-nor/sfdp.c", i32 1365, i32 3}
!11 = !{ptr @spi_nor_parse_sfdp.__UNIQUE_ID_ddebug276, !10, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mtd/spi-nor/sfdp.c", i32 1418, i32 4}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @spi_nor_parse_sfdp._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @spi_nor_parse_sfdp._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mtd/spi-nor/sfdp.c", i32 605, i32 3}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @spi_nor_parse_bfpt.__UNIQUE_ID_ddebug238, !19, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mtd/spi-nor/sfdp.c", i32 628, i32 3}
!24 = !{ptr @spi_nor_parse_bfpt.__UNIQUE_ID_ddebug239, !23, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/mtd/spi-nor/sfdp.c", i32 632, i32 3}
!27 = !{ptr @spi_nor_parse_bfpt.__UNIQUE_ID_ddebug240, !26, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!28 = !{ptr @sfdp_bfpt_reads, !29, !"sfdp_bfpt_reads", i1 false, i1 false}
!29 = !{!"../drivers/mtd/spi-nor/sfdp.c", i32 242, i32 36}
!30 = distinct !{null, !31, !"sfdp_bfpt_erases", i1 false, i1 false}
!31 = !{!"../drivers/mtd/spi-nor/sfdp.c", i32 292, i32 37}
!32 = distinct !{null, !33, !"reads", i1 false, i1 false}
!33 = !{!"../drivers/mtd/spi-nor/sfdp.c", i32 944, i32 33}
!34 = distinct !{null, !35, !"programs", i1 false, i1 false}
!35 = !{!"../drivers/mtd/spi-nor/sfdp.c", i32 955, i32 33}
!36 = distinct !{null, !37, !"erases", i1 false, i1 false}
!37 = !{!"../drivers/mtd/spi-nor/sfdp.c", i32 960, i32 33}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mtd/spi-nor/sfdp.c", i32 1177, i32 3}
!40 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @spi_nor_parse_profile1.__UNIQUE_ID_ddebug266, !39, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{i64 2148285798, i64 2148285803, i64 2148285816, i64 2148285860, i64 2148285894, i64 2148285915}
