; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/ecc-sw-bch.c_pt.bc'
source_filename = "../drivers/mtd/nand/ecc-sw-bch.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+nand_ecc_sw_bch_calculate\22, \22a\22\09"
module asm "\09.weak\09__crc_nand_ecc_sw_bch_calculate\09\09\09\09"
module asm "\09.long\09__crc_nand_ecc_sw_bch_calculate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_ecc_sw_bch_calculate:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_ecc_sw_bch_calculate\22\09\09\09\09\09"
module asm "__kstrtabns_nand_ecc_sw_bch_calculate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+nand_ecc_sw_bch_correct\22, \22a\22\09"
module asm "\09.weak\09__crc_nand_ecc_sw_bch_correct\09\09\09\09"
module asm "\09.long\09__crc_nand_ecc_sw_bch_correct\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_ecc_sw_bch_correct:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_ecc_sw_bch_correct\22\09\09\09\09\09"
module asm "__kstrtabns_nand_ecc_sw_bch_correct:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+nand_ecc_sw_bch_init_ctx\22, \22a\22\09"
module asm "\09.weak\09__crc_nand_ecc_sw_bch_init_ctx\09\09\09\09"
module asm "\09.long\09__crc_nand_ecc_sw_bch_init_ctx\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_ecc_sw_bch_init_ctx:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_ecc_sw_bch_init_ctx\22\09\09\09\09\09"
module asm "__kstrtabns_nand_ecc_sw_bch_init_ctx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+nand_ecc_sw_bch_cleanup_ctx\22, \22a\22\09"
module asm "\09.weak\09__crc_nand_ecc_sw_bch_cleanup_ctx\09\09\09\09"
module asm "\09.long\09__crc_nand_ecc_sw_bch_cleanup_ctx\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_ecc_sw_bch_cleanup_ctx:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_ecc_sw_bch_cleanup_ctx\22\09\09\09\09\09"
module asm "__kstrtabns_nand_ecc_sw_bch_cleanup_ctx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+nand_ecc_sw_bch_get_engine\22, \22a\22\09"
module asm "\09.weak\09__crc_nand_ecc_sw_bch_get_engine\09\09\09\09"
module asm "\09.long\09__crc_nand_ecc_sw_bch_get_engine\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_ecc_sw_bch_get_engine:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_ecc_sw_bch_get_engine\22\09\09\09\09\09"
module asm "__kstrtabns_nand_ecc_sw_bch_get_engine:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nand_ecc_engine = type { ptr }
%struct.nand_ecc_engine_ops = type { ptr, ptr, ptr, ptr }
%struct.nand_device = type { %struct.mtd_info, %struct.nand_memory_organization, %struct.nand_ecc, %struct.nand_row_converter, %struct.nand_bbt, ptr }
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
%struct.list_head = type { ptr, ptr }
%union.anon.43 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.nand_memory_organization = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc = type { %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_context, ptr, ptr }
%struct.nand_ecc_props = type { i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc_context = type { %struct.nand_ecc_props, i32, i32, ptr }
%struct.nand_row_converter = type { i32, i32 }
%struct.nand_bbt = type { ptr }
%struct.nand_ecc_sw_bch_conf = type { %struct.nand_ecc_req_tweak_ctx, i32, ptr, ptr, ptr, ptr, ptr }
%struct.nand_ecc_req_tweak_ctx = type { %struct.nand_page_io_req, ptr, i32, i32, ptr, ptr, i8, i8 }
%struct.nand_page_io_req = type { i32, %struct.nand_pos, i32, i32, %union.anon.44, i32, i32, %union.anon.45, i32 }
%struct.nand_pos = type { i32, i32, i32, i32, i32 }
%union.anon.44 = type { ptr }
%union.anon.45 = type { ptr }
%struct.bch_control = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x ptr], i8 }

@__kstrtab_nand_ecc_sw_bch_calculate = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_ecc_sw_bch_calculate = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_ecc_sw_bch_calculate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_ecc_sw_bch_calculate to i32), ptr @__kstrtab_nand_ecc_sw_bch_calculate, ptr @__kstrtabns_nand_ecc_sw_bch_calculate }, section "___ksymtab+nand_ecc_sw_bch_calculate", align 4
@nand_ecc_sw_bch_correct.__UNIQUE_ID_ddebug193 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 16, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nandcore\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nand_ecc_sw_bch_correct\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/mtd/nand/ecc-sw-bch.c\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: corrected bitflip %u\0A\00", [38 x i8] zeroinitializer }, align 32
@nand_ecc_sw_bch_correct._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 70, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013ECC unrecoverable error\0A\00", [37 x i8] zeroinitializer }, align 32
@nand_ecc_sw_bch_correct._entry_ptr = internal global ptr @nand_ecc_sw_bch_correct._entry, section ".printk_index", align 4
@__kstrtab_nand_ecc_sw_bch_correct = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_ecc_sw_bch_correct = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_ecc_sw_bch_correct = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_ecc_sw_bch_correct to i32), ptr @__kstrtab_nand_ecc_sw_bch_correct, ptr @__kstrtabns_nand_ecc_sw_bch_correct }, section "___ksymtab+nand_ecc_sw_bch_correct", align 4
@nand_ecc_sw_bch_init_ctx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013BCH cannot be used with small page NAND chips\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nand_ecc_sw_bch_init_ctx\00", [39 x i8] zeroinitializer }, align 32
@nand_ecc_sw_bch_init_ctx._entry_ptr = internal global ptr @nand_ecc_sw_bch_init_ctx._entry, section ".printk_index", align 4
@nand_ecc_sw_bch_init_ctx._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013Missing ECC parameters\0A\00", [38 x i8] zeroinitializer }, align 32
@nand_ecc_sw_bch_init_ctx._entry_ptr.9 = internal global ptr @nand_ecc_sw_bch_init_ctx._entry.7, section ".printk_index", align 4
@nand_ecc_sw_bch_init_ctx._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.2, i32 257, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013Invalid ECC layout\0A\00", [42 x i8] zeroinitializer }, align 32
@nand_ecc_sw_bch_init_ctx._entry_ptr.12 = internal global ptr @nand_ecc_sw_bch_init_ctx._entry.10, section ".printk_index", align 4
@__kstrtab_nand_ecc_sw_bch_init_ctx = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_ecc_sw_bch_init_ctx = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_ecc_sw_bch_init_ctx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_ecc_sw_bch_init_ctx to i32), ptr @__kstrtab_nand_ecc_sw_bch_init_ctx, ptr @__kstrtabns_nand_ecc_sw_bch_init_ctx }, section "___ksymtab+nand_ecc_sw_bch_init_ctx", align 4
@__kstrtab_nand_ecc_sw_bch_cleanup_ctx = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_ecc_sw_bch_cleanup_ctx = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_ecc_sw_bch_cleanup_ctx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_ecc_sw_bch_cleanup_ctx to i32), ptr @__kstrtab_nand_ecc_sw_bch_cleanup_ctx, ptr @__kstrtabns_nand_ecc_sw_bch_cleanup_ctx }, section "___ksymtab+nand_ecc_sw_bch_cleanup_ctx", align 4
@nand_ecc_sw_bch_engine = internal global { %struct.nand_ecc_engine, [28 x i8] } { %struct.nand_ecc_engine { ptr @nand_ecc_sw_bch_engine_ops }, [28 x i8] zeroinitializer }, align 32
@__kstrtab_nand_ecc_sw_bch_get_engine = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_ecc_sw_bch_get_engine = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_ecc_sw_bch_get_engine = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_ecc_sw_bch_get_engine to i32), ptr @__kstrtab_nand_ecc_sw_bch_get_engine, ptr @__kstrtabns_nand_ecc_sw_bch_get_engine }, section "___ksymtab+nand_ecc_sw_bch_get_engine", align 4
@__UNIQUE_ID_file196 = internal constant [40 x i8] c"nandcore.file=drivers/mtd/nand/nandcore\00", section ".modinfo", align 1
@__UNIQUE_ID_license197 = internal constant [21 x i8] c"nandcore.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author198 = internal constant [53 x i8] c"nandcore.author=Ivan Djelic <ivan.djelic@parrot.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description199 = internal constant [51 x i8] c"nandcore.description=NAND software BCH ECC support\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nand_ecc_sw_bch_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013Invalid number of ECC bytes: %u, expected: %u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nand_ecc_sw_bch_init\00", [43 x i8] zeroinitializer }, align 32
@nand_ecc_sw_bch_init._entry_ptr = internal global ptr @nand_ecc_sw_bch_init._entry, section ".printk_index", align 4
@nand_ecc_sw_bch_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013ECC step size is too large (%u)\0A\00", [61 x i8] zeroinitializer }, align 32
@nand_ecc_sw_bch_init._entry_ptr.17 = internal global ptr @nand_ecc_sw_bch_init._entry.15, section ".printk_index", align 4
@nand_ecc_sw_bch_engine_ops = internal global { %struct.nand_ecc_engine_ops, [16 x i8] } { %struct.nand_ecc_engine_ops { ptr @nand_ecc_sw_bch_init_ctx, ptr @nand_ecc_sw_bch_cleanup_ctx, ptr @nand_ecc_sw_bch_prepare_io_req, ptr @nand_ecc_sw_bch_finish_io_req }, [16 x i8] zeroinitializer }, align 32
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 66, i32 4 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 70, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 180, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 226, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 257, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [23 x i8] c"nand_ecc_sw_bch_engine\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 394, i32 31 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 149, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 157, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [27 x i8] c"nand_ecc_sw_bch_engine_ops\00", align 1
@___asan_gen_.76 = private constant [33 x i8] c"../drivers/mtd/nand/ecc-sw-bch.c\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 387, i32 35 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_author198, ptr @__UNIQUE_ID_description199, ptr @__UNIQUE_ID_file196, ptr @__UNIQUE_ID_license197, ptr @__ksymtab_nand_ecc_sw_bch_calculate, ptr @__ksymtab_nand_ecc_sw_bch_cleanup_ctx, ptr @__ksymtab_nand_ecc_sw_bch_correct, ptr @__ksymtab_nand_ecc_sw_bch_get_engine, ptr @__ksymtab_nand_ecc_sw_bch_init_ctx, ptr @nand_ecc_sw_bch_correct._entry, ptr @nand_ecc_sw_bch_correct._entry_ptr, ptr @nand_ecc_sw_bch_init._entry, ptr @nand_ecc_sw_bch_init._entry.15, ptr @nand_ecc_sw_bch_init._entry_ptr, ptr @nand_ecc_sw_bch_init._entry_ptr.17, ptr @nand_ecc_sw_bch_init_ctx._entry, ptr @nand_ecc_sw_bch_init_ctx._entry.10, ptr @nand_ecc_sw_bch_init_ctx._entry.7, ptr @nand_ecc_sw_bch_init_ctx._entry_ptr, ptr @nand_ecc_sw_bch_init_ctx._entry_ptr.12, ptr @nand_ecc_sw_bch_init_ctx._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @nand_ecc_sw_bch_engine, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @nand_ecc_sw_bch_engine_ops], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_ecc_sw_bch_correct._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_ecc_sw_bch_init_ctx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_ecc_sw_bch_init_ctx._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_ecc_sw_bch_init_ctx._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_ecc_sw_bch_engine to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_ecc_sw_bch_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_ecc_sw_bch_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_ecc_sw_bch_engine_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nand_ecc_sw_bch_calculate(ptr nocapture noundef readonly %nand, ptr noundef %buf, ptr noundef %code) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 2, i32 3, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %code_size = getelementptr inbounds %struct.nand_ecc_sw_bch_conf, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %code_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %code_size, align 4
  %4 = call ptr @memset(ptr %code, i32 0, i32 %3)
  %bch = getelementptr inbounds %struct.nand_ecc_sw_bch_conf, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %bch to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bch, align 4
  %step_size = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 2, i32 3, i32 0, i32 4
  %7 = ptrtoint ptr %step_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %step_size, align 4
  tail call void @bch_encode(ptr noundef %6, ptr noundef %buf, i32 noundef %8, ptr noundef %code) #7
  %9 = ptrtoint ptr %code_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %code_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp17.not = icmp eq i32 %10, 0
  br i1 %cmp17.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %eccmask = getelementptr inbounds %struct.nand_ecc_sw_bch_conf, ptr %1, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.018 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %11 = ptrtoint ptr %eccmask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %eccmask, align 4
  %arrayidx = getelementptr i8, ptr %12, i32 %i.018
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx, align 1
  %arrayidx4 = getelementptr i8, ptr %code, i32 %i.018
  %15 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx4, align 1
  %xor16 = xor i8 %16, %14
  store i8 %xor16, ptr %arrayidx4, align 1
  %inc = add nuw i32 %i.018, 1
  %17 = ptrtoint ptr %code_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %code_size, align 4
  %cmp = icmp ult i32 %inc, %18
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_encode(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nand_ecc_sw_bch_correct(ptr nocapture noundef readonly %nand, ptr nocapture noundef %buf, ptr noundef %read_ecc, ptr noundef %calc_ecc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 2, i32 3, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %step_size3 = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 2, i32 3, i32 0, i32 4
  %2 = ptrtoint ptr %step_size3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %step_size3, align 4
  %errloc4 = getelementptr inbounds %struct.nand_ecc_sw_bch_conf, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %errloc4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %errloc4, align 4
  %bch = getelementptr inbounds %struct.nand_ecc_sw_bch_conf, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %bch to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bch, align 4
  %call = tail call i32 @bch_decode(ptr noundef %7, ptr noundef null, i32 noundef %3, ptr noundef %read_ecc, ptr noundef %calc_ecc, ptr noundef null, ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %for.body.lr.ph, label %if.else

for.body.lr.ph:                                   ; preds = %entry
  %mul = shl i32 %3, 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.045 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %5, i32 %i.045
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %mul)
  %cmp6 = icmp ult i32 %9, %mul
  br i1 %cmp6, label %if.then7, label %for.body.do.body_crit_edge

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %and = and i32 %9, 7
  %shl = shl nuw nsw i32 1, %and
  %shr = lshr i32 %9, 3
  %arrayidx10 = getelementptr i8, ptr %buf, i32 %shr
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx10, align 1
  %12 = trunc i32 %shl to i8
  %conv11 = xor i8 %11, %12
  store i8 %conv11, ptr %arrayidx10, align 1
  br label %do.body

do.body:                                          ; preds = %if.then7, %for.body.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nand_ecc_sw_bch_correct.__UNIQUE_ID_ddebug193, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nand_ecc_sw_bch_correct, %if.then15)) #7
          to label %for.inc [label %if.then15], !srcloc !62

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nand_ecc_sw_bch_correct.__UNIQUE_ID_ddebug193, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %14) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then15, %do.body
  %inc = add nuw nsw i32 %i.045, 1
  %exitcond.not = icmp eq i32 %inc, %call
  br i1 %exitcond.not, label %for.inc.if.end27_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.if.end27_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp18 = icmp slt i32 %call, 0
  br i1 %cmp18, label %do.end23, label %if.else.if.end27_crit_edge

if.else.if.end27_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

do.end23:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #10
  br label %if.end27

if.end27:                                         ; preds = %do.end23, %if.else.if.end27_crit_edge, %for.inc.if.end27_crit_edge
  %count.0 = phi i32 [ -74, %do.end23 ], [ 0, %if.else.if.end27_crit_edge ], [ %call, %for.inc.if.end27_crit_edge ]
  ret i32 %count.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bch_decode(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nand_ecc_sw_bch_init_ctx(ptr noundef %nand) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 2, i32 3
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 6
  %0 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %oobsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %1)
  %cmp = icmp ult i32 %1, 64
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %ooblayout = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 15
  %2 = ptrtoint ptr %ooblayout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ooblayout, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call ptr @nand_get_large_page_ooblayout() #7
  %4 = ptrtoint ptr %ooblayout to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call4, ptr %ooblayout, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %5 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %ctx, align 4
  %algo = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 2, i32 3, i32 0, i32 2
  %6 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %algo, align 4
  %step_size = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 2, i32 2, i32 4
  %7 = ptrtoint ptr %step_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %step_size, align 4
  %step_size7 = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 2, i32 3, i32 0, i32 4
  %9 = ptrtoint ptr %step_size7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %step_size7, align 4
  %strength = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 2, i32 2, i32 3
  %10 = ptrtoint ptr %strength to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %strength, align 4
  %strength10 = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 2, i32 3, i32 0, i32 3
  %12 = ptrtoint ptr %strength10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %strength10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool12.not = icmp eq i32 %8, 0
  br i1 %tobool12.not, label %if.then13, label %if.end5.if.end21_crit_edge

if.end5.if.end21_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then13:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %oobsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %14)
  %cmp15 = icmp ugt i32 %14, 63
  %. = select i1 %cmp15, i32 512, i32 256
  %15 = ptrtoint ptr %step_size7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %., ptr %step_size7, align 4
  %16 = ptrtoint ptr %strength10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 4, ptr %strength10, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then13, %if.end5.if.end21_crit_edge
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 4
  %17 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %writesize, align 4
  %19 = ptrtoint ptr %step_size7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %step_size7, align 4
  %div = udiv i32 %18, %20
  %flags = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 2, i32 2, i32 5
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 4
  %and = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %if.end21.if.then40_crit_edge, label %if.end38

if.end21.if.then40_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then40

if.end38:                                         ; preds = %if.end21
  %23 = ptrtoint ptr %step_size7 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1024, ptr %step_size7, align 4
  %div30182 = lshr i32 %18, 10
  %24 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %oobsize, align 4
  %sub = add i32 %25, -2
  %div32 = udiv i32 %sub, %div30182
  %mul = shl i32 %div32, 3
  %div36 = udiv i32 %mul, 14
  %26 = ptrtoint ptr %strength10 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %div36, ptr %strength10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div30182, i32 %sub)
  %tobool39.not = icmp ugt i32 %div30182, %sub
  br i1 %tobool39.not, label %if.end38.if.then40_crit_edge, label %if.end38.if.end48_crit_edge

if.end38.if.end48_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

if.end38.if.then40_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then40

if.then40:                                        ; preds = %if.end38.if.then40_crit_edge, %if.end21.if.then40_crit_edge
  %nsteps.0255 = phi i32 [ %div30182, %if.end38.if.then40_crit_edge ], [ %div, %if.end21.if.then40_crit_edge ]
  %27 = ptrtoint ptr %strength10 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %strength10, align 4
  %29 = ptrtoint ptr %step_size7 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %step_size7, align 4
  %mul43 = shl i32 %30, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul43)
  %tobool.not.i = icmp eq i32 %mul43, 0
  %31 = tail call i32 @llvm.ctlz.i32(i32 %mul43, i1 true) #7, !range !63
  %sub.i = sub nuw nsw i32 32, %31
  %cond.i = select i1 %tobool.not.i, i32 0, i32 %sub.i
  %mul45 = mul i32 %cond.i, %28
  %sub46 = add i32 %mul45, 7
  %div47181 = lshr i32 %sub46, 3
  br label %if.end48

if.end48:                                         ; preds = %if.then40, %if.end38.if.end48_crit_edge
  %32 = phi i32 [ %28, %if.then40 ], [ %div36, %if.end38.if.end48_crit_edge ]
  %nsteps.0254 = phi i32 [ %nsteps.0255, %if.then40 ], [ %div30182, %if.end38.if.end48_crit_edge ]
  %code_size.1 = phi i32 [ %div47181, %if.then40 ], [ %div32, %if.end38.if.end48_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool50.not = icmp eq i32 %32, 0
  br i1 %tobool50.not, label %if.then51, label %if.end48.if.end58_crit_edge

if.end48.if.end58_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

if.then51:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  %mul52 = shl i32 %code_size.1, 3
  %33 = ptrtoint ptr %step_size7 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %step_size7, align 4
  %mul54 = shl i32 %34, 3
  %35 = tail call i32 @llvm.ctlz.i32(i32 %mul54, i1 true) #7, !range !63
  %sub.i184 = sub nuw nsw i32 32, %35
  %div56 = udiv i32 %mul52, %sub.i184
  %36 = ptrtoint ptr %strength10 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %div56, ptr %strength10, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then51, %if.end48.if.end58_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %code_size.1)
  %tobool59.not = icmp eq i32 %code_size.1, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.end58.if.end68_crit_edge

if.end58.if.end68_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

land.lhs.true:                                    ; preds = %if.end58
  %37 = ptrtoint ptr %strength10 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %strength10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool61.not = icmp eq i32 %38, 0
  br i1 %tobool61.not, label %do.end65, label %land.lhs.true.if.end68_crit_edge

land.lhs.true.if.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

do.end65:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #10
  br label %cleanup

if.end68:                                         ; preds = %land.lhs.true.if.end68_crit_edge, %if.end58.if.end68_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %39 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %39, i32 noundef 3520, i32 noundef 100) #11
  %tobool70.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool70.not, label %if.end68.cleanup_crit_edge, label %if.end72

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end72:                                         ; preds = %if.end68
  %call73 = tail call i32 @nand_ecc_init_req_tweaking(ptr noundef nonnull %call7.i.i, ptr noundef %nand) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end76, label %if.end72.free_engine_conf_crit_edge

if.end72.free_engine_conf_crit_edge:              ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_engine_conf

if.end76:                                         ; preds = %if.end72
  %code_size77 = getelementptr inbounds %struct.nand_ecc_sw_bch_conf, ptr %call7.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %code_size77 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %code_size.1, ptr %code_size77, align 4
  %41 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %oobsize, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %42, i32 noundef 3520) #12
  %calc_buf = getelementptr inbounds %struct.nand_ecc_sw_bch_conf, ptr %call7.i.i, i32 0, i32 2
  %43 = ptrtoint ptr %calc_buf to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call9.i.i, ptr %calc_buf, align 8
  %44 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %oobsize, align 4
  %call9.i.i215 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %45, i32 noundef 3520) #12
  %code_buf = getelementptr inbounds %struct.nand_ecc_sw_bch_conf, ptr %call7.i.i, i32 0, i32 3
  %46 = ptrtoint ptr %code_buf to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call9.i.i215, ptr %code_buf, align 4
  %47 = ptrtoint ptr %calc_buf to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %calc_buf, align 8
  %tobool83.not = icmp eq ptr %48, null
  %tobool85.not = icmp eq ptr %call9.i.i215, null
  %or.cond = select i1 %tobool83.not, i1 true, i1 %tobool85.not
  br i1 %or.cond, label %if.end76.free_bufs_crit_edge, label %if.end87

if.end76.free_bufs_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_bufs

if.end87:                                         ; preds = %if.end76
  %priv = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 2, i32 3, i32 3
  %49 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call7.i.i, ptr %priv, align 4
  %nsteps92 = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 2, i32 3, i32 1
  %50 = ptrtoint ptr %nsteps92 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %nsteps.0254, ptr %nsteps92, align 4
  %mul93 = mul i32 %code_size.1, %nsteps.0254
  %total = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 2, i32 3, i32 2
  %51 = ptrtoint ptr %total to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %mul93, ptr %total, align 4
  %52 = ptrtoint ptr %step_size7 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %step_size7, align 4
  %54 = ptrtoint ptr %code_size77 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %code_size77, align 4
  %mul.i = shl i32 %53, 3
  %add.i = or i32 %mul.i, 1
  %56 = tail call i32 @llvm.ctlz.i32(i32 %add.i, i1 true) #7, !range !63
  %sub.i.i = sub nuw nsw i32 32, %56
  %mul3.i = shl i32 %55, 3
  %div.i = udiv i32 %mul3.i, %sub.i.i
  %call4.i = tail call ptr @bch_init(i32 noundef %sub.i.i, i32 noundef %div.i, i32 noundef 0, i1 noundef zeroext false) #7
  %bch.i = getelementptr inbounds %struct.nand_ecc_sw_bch_conf, ptr %call7.i.i, i32 0, i32 4
  %57 = ptrtoint ptr %bch.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call4.i, ptr %bch.i, align 8
  %tobool.not.i219 = icmp eq ptr %call4.i, null
  br i1 %tobool.not.i219, label %if.end87.free_bufs_crit_edge, label %if.end8.i.i.i

if.end87.free_bufs_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_bufs

if.end8.i.i.i:                                    ; preds = %if.end87
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %55, i32 noundef 3520) #12
  %eccmask.i = getelementptr inbounds %struct.nand_ecc_sw_bch_conf, ptr %call7.i.i, i32 0, i32 6
  %58 = ptrtoint ptr %eccmask.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call9.i.i.i, ptr %eccmask.i, align 8
  %59 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %div.i, i32 4) #7
  %60 = extractvalue { i32, i1 } %59, 1
  br i1 %60, label %kmalloc_array.exit.thread.i, label %if.end7.i.i, !prof !64

kmalloc_array.exit.thread.i:                      ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %errloc112.i = getelementptr inbounds %struct.nand_ecc_sw_bch_conf, ptr %call7.i.i, i32 0, i32 5
  %61 = ptrtoint ptr %errloc112.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %errloc112.i, align 4
  br label %cleanup.i

if.end7.i.i:                                      ; preds = %if.end8.i.i.i
  %62 = extractvalue { i32, i1 } %59, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %62, i32 noundef 3264) #12
  %errloc.i = getelementptr inbounds %struct.nand_ecc_sw_bch_conf, ptr %call7.i.i, i32 0, i32 5
  %63 = ptrtoint ptr %errloc.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call8.i.i, ptr %errloc.i, align 4
  %64 = ptrtoint ptr %eccmask.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %eccmask.i, align 8
  %tobool9.not.i = icmp eq ptr %65, null
  %tobool11.not.i = icmp eq ptr %call8.i.i, null
  %or.cond.i = select i1 %tobool9.not.i, i1 true, i1 %tobool11.not.i
  br i1 %or.cond.i, label %if.end7.i.i.cleanup.i_crit_edge, label %if.end8.i.i249

if.end7.i.i.cleanup.i_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.end8.i.i249:                                   ; preds = %if.end7.i.i
  %call9.i.i248 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %53, i32 noundef 3264) #12
  %tobool15.not.i = icmp eq ptr %call9.i.i248, null
  br i1 %tobool15.not.i, label %if.end8.i.i249.cleanup.i_crit_edge, label %if.end17.i

if.end8.i.i249.cleanup.i_crit_edge:               ; preds = %if.end8.i.i249
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.end17.i:                                       ; preds = %if.end8.i.i249
  %66 = call ptr @memset(ptr %call9.i.i248, i32 255, i32 %53)
  %67 = ptrtoint ptr %bch.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bch.i, align 8
  %69 = ptrtoint ptr %eccmask.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %eccmask.i, align 8
  tail call void @bch_encode(ptr noundef %68, ptr noundef nonnull %call9.i.i248, i32 noundef %53, ptr noundef %70) #7
  tail call void @kfree(ptr noundef nonnull %call9.i.i248) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp119.not.i = icmp eq i32 %55, 0
  br i1 %cmp119.not.i, label %if.end17.i.for.end.i_crit_edge, label %if.end17.i.for.body.i_crit_edge

if.end17.i.for.body.i_crit_edge:                  ; preds = %if.end17.i
  br label %for.body.i

if.end17.i.for.end.i_crit_edge:                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end17.i.for.body.i_crit_edge
  %i.0120.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end17.i.for.body.i_crit_edge ]
  %71 = ptrtoint ptr %eccmask.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %eccmask.i, align 8
  %arrayidx.i = getelementptr i8, ptr %72, i32 %i.0120.i
  %73 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx.i, align 1
  %75 = xor i8 %74, -1
  store i8 %75, ptr %arrayidx.i, align 1
  %inc.i = add nuw i32 %i.0120.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %55
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end17.i.for.end.i_crit_edge
  %76 = ptrtoint ptr %bch.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %bch.i, align 8
  %ecc_bytes.i = getelementptr inbounds %struct.bch_control, ptr %77, i32 0, i32 4
  %78 = ptrtoint ptr %ecc_bytes.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %ecc_bytes.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %55)
  %cmp23.not.i = icmp eq i32 %79, %55
  br i1 %cmp23.not.i, label %if.end29.i, label %do.end.i

do.end.i:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call28.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %55, i32 noundef %79) #10
  br label %cleanup.i

if.end29.i:                                       ; preds = %for.end.i
  %add30.i = add i32 %55, %53
  %mul31.i = shl i32 %add30.i, 3
  %mul31.highbits.i = lshr i32 %mul31.i, %sub.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul31.highbits.i)
  %cmp32.not.i = icmp eq i32 %mul31.highbits.i, 0
  br i1 %cmp32.not.i, label %if.end99, label %do.end37.i

do.end37.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  %call39.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %53) #10
  br label %cleanup.i

cleanup.i:                                        ; preds = %do.end37.i, %do.end.i, %if.end8.i.i249.cleanup.i_crit_edge, %if.end7.i.i.cleanup.i_crit_edge, %kmalloc_array.exit.thread.i
  %ret.0.i = phi i32 [ -22, %do.end.i ], [ -22, %do.end37.i ], [ -12, %if.end7.i.i.cleanup.i_crit_edge ], [ -12, %if.end8.i.i249.cleanup.i_crit_edge ], [ -12, %kmalloc_array.exit.thread.i ]
  %80 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %priv, align 4
  %bch.i.i = getelementptr inbounds %struct.nand_ecc_sw_bch_conf, ptr %81, i32 0, i32 4
  %82 = ptrtoint ptr %bch.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %bch.i.i, align 4
  tail call void @bch_free(ptr noundef %83) #7
  %errloc.i.i = getelementptr inbounds %struct.nand_ecc_sw_bch_conf, ptr %81, i32 0, i32 5
  %84 = ptrtoint ptr %errloc.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %errloc.i.i, align 4
  tail call void @kfree(ptr noundef %85) #7
  %eccmask.i.i = getelementptr inbounds %struct.nand_ecc_sw_bch_conf, ptr %81, i32 0, i32 6
  %86 = ptrtoint ptr %eccmask.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %eccmask.i.i, align 4
  tail call void @kfree(ptr noundef %87) #7
  br label %free_bufs

if.end99:                                         ; preds = %if.end29.i
  %call100 = tail call i32 @mtd_ooblayout_count_eccbytes(ptr noundef %nand) #7
  %88 = ptrtoint ptr %nsteps92 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %nsteps92, align 4
  %90 = ptrtoint ptr %code_size77 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %code_size77, align 4
  %mul105 = mul i32 %91, %89
  call void @__sanitizer_cov_trace_cmp4(i32 %call100, i32 %mul105)
  %cmp106.not = icmp eq i32 %call100, %mul105
  br i1 %cmp106.not, label %if.end99.cleanup_crit_edge, label %do.end110

if.end99.cleanup_crit_edge:                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end110:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  %call112 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #10
  tail call fastcc void @nand_ecc_sw_bch_cleanup(ptr noundef %nand)
  br label %free_bufs

free_bufs:                                        ; preds = %do.end110, %cleanup.i, %if.end87.free_bufs_crit_edge, %if.end76.free_bufs_crit_edge
  %ret.0 = phi i32 [ -22, %do.end110 ], [ -12, %if.end76.free_bufs_crit_edge ], [ -22, %if.end87.free_bufs_crit_edge ], [ %ret.0.i, %cleanup.i ]
  tail call void @nand_ecc_cleanup_req_tweaking(ptr noundef nonnull %call7.i.i) #7
  %92 = ptrtoint ptr %calc_buf to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %calc_buf, align 8
  tail call void @kfree(ptr noundef %93) #7
  %94 = ptrtoint ptr %code_buf to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %code_buf, align 4
  tail call void @kfree(ptr noundef %95) #7
  br label %free_engine_conf

free_engine_conf:                                 ; preds = %free_bufs, %if.end72.free_engine_conf_crit_edge
  %ret.1 = phi i32 [ %call73, %if.end72.free_engine_conf_crit_edge ], [ %ret.0, %free_bufs ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %free_engine_conf, %if.end99.cleanup_crit_edge, %if.end68.cleanup_crit_edge, %do.end65, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %ret.1, %free_engine_conf ], [ -22, %do.end65 ], [ -12, %if.end68.cleanup_crit_edge ], [ 0, %if.end99.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nand_get_large_page_ooblayout() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_ecc_init_req_tweaking(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_ooblayout_count_eccbytes(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nand_ecc_sw_bch_cleanup(ptr nocapture noundef readonly %nand) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 2, i32 3, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %bch = getelementptr inbounds %struct.nand_ecc_sw_bch_conf, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %bch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bch, align 4
  tail call void @bch_free(ptr noundef %3) #7
  %errloc = getelementptr inbounds %struct.nand_ecc_sw_bch_conf, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %errloc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %errloc, align 4
  tail call void @kfree(ptr noundef %5) #7
  %eccmask = getelementptr inbounds %struct.nand_ecc_sw_bch_conf, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %eccmask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %eccmask, align 4
  tail call void @kfree(ptr noundef %7) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_ecc_cleanup_req_tweaking(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nand_ecc_sw_bch_cleanup_ctx(ptr nocapture noundef readonly %nand) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 2, i32 3, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %bch.i = getelementptr inbounds %struct.nand_ecc_sw_bch_conf, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %bch.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bch.i, align 4
  tail call void @bch_free(ptr noundef %3) #7
  %errloc.i = getelementptr inbounds %struct.nand_ecc_sw_bch_conf, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %errloc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %errloc.i, align 4
  tail call void @kfree(ptr noundef %5) #7
  %eccmask.i = getelementptr inbounds %struct.nand_ecc_sw_bch_conf, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %eccmask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %eccmask.i, align 4
  tail call void @kfree(ptr noundef %7) #7
  tail call void @nand_ecc_cleanup_req_tweaking(ptr noundef nonnull %1) #7
  %calc_buf = getelementptr inbounds %struct.nand_ecc_sw_bch_conf, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %calc_buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %calc_buf, align 4
  tail call void @kfree(ptr noundef %9) #7
  %code_buf = getelementptr inbounds %struct.nand_ecc_sw_bch_conf, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %code_buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %code_buf, align 4
  tail call void @kfree(ptr noundef %11) #7
  tail call void @kfree(ptr noundef nonnull %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @nand_ecc_sw_bch_get_engine() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @nand_ecc_sw_bch_engine
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bch_init(i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nand_ecc_sw_bch_prepare_io_req(ptr noundef %nand, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 2, i32 3, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %step_size = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 2, i32 3, i32 0, i32 4
  %2 = ptrtoint ptr %step_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %step_size, align 4
  %code_size = getelementptr inbounds %struct.nand_ecc_sw_bch_conf, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %code_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %code_size, align 4
  %nsteps = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 2, i32 3, i32 1
  %6 = ptrtoint ptr %nsteps to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nsteps, align 4
  %total7 = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 2, i32 3, i32 2
  %8 = ptrtoint ptr %total7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %total7, align 4
  %calc_buf = getelementptr inbounds %struct.nand_ecc_sw_bch_conf, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %calc_buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %calc_buf, align 4
  %mode = getelementptr inbounds %struct.nand_page_io_req, ptr %req, i32 0, i32 8
  %12 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp = icmp eq i32 %13, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %datalen = getelementptr inbounds %struct.nand_page_io_req, ptr %req, i32 0, i32 3
  %14 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %datalen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  tail call void @nand_ecc_tweak_req(ptr noundef %1, ptr noundef %req) #7
  %16 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp10 = icmp eq i32 %17, 0
  br i1 %cmp10, label %if.end9.cleanup_crit_edge, label %if.end12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool13.not40 = icmp eq i32 %7, 0
  br i1 %tobool13.not40, label %if.end12.for.end_crit_edge, label %for.body.preheader

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.preheader:                               ; preds = %if.end12
  %databuf = getelementptr inbounds %struct.nand_page_io_req, ptr %req, i32 0, i32 4
  %18 = ptrtoint ptr %databuf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %databuf, align 4
  br label %for.body

for.body:                                         ; preds = %nand_ecc_sw_bch_calculate.exit.for.body_crit_edge, %for.body.preheader
  %i.043 = phi i32 [ %add, %nand_ecc_sw_bch_calculate.exit.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %data.042 = phi ptr [ %add.ptr, %nand_ecc_sw_bch_calculate.exit.for.body_crit_edge ], [ %19, %for.body.preheader ]
  %eccsteps.041 = phi i32 [ %dec, %nand_ecc_sw_bch_calculate.exit.for.body_crit_edge ], [ %7, %for.body.preheader ]
  %arrayidx = getelementptr i8, ptr %11, i32 %i.043
  %20 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv, align 4
  %code_size.i = getelementptr inbounds %struct.nand_ecc_sw_bch_conf, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %code_size.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %code_size.i, align 4
  %24 = call ptr @memset(ptr %arrayidx, i32 0, i32 %23)
  %bch.i = getelementptr inbounds %struct.nand_ecc_sw_bch_conf, ptr %21, i32 0, i32 4
  %25 = ptrtoint ptr %bch.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bch.i, align 4
  %27 = ptrtoint ptr %step_size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %step_size, align 4
  tail call void @bch_encode(ptr noundef %26, ptr noundef %data.042, i32 noundef %28, ptr noundef %arrayidx) #7
  %29 = ptrtoint ptr %code_size.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %code_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp17.not.i = icmp eq i32 %30, 0
  br i1 %cmp17.not.i, label %for.body.nand_ecc_sw_bch_calculate.exit_crit_edge, label %for.body.lr.ph.i

for.body.nand_ecc_sw_bch_calculate.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %nand_ecc_sw_bch_calculate.exit

for.body.lr.ph.i:                                 ; preds = %for.body
  %eccmask.i = getelementptr inbounds %struct.nand_ecc_sw_bch_conf, ptr %21, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.018.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %31 = ptrtoint ptr %eccmask.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %eccmask.i, align 4
  %arrayidx.i = getelementptr i8, ptr %32, i32 %i.018.i
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i, align 1
  %arrayidx4.i = getelementptr i8, ptr %arrayidx, i32 %i.018.i
  %35 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx4.i, align 1
  %xor16.i = xor i8 %36, %34
  store i8 %xor16.i, ptr %arrayidx4.i, align 1
  %inc.i = add nuw i32 %i.018.i, 1
  %37 = ptrtoint ptr %code_size.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %code_size.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %38
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.nand_ecc_sw_bch_calculate.exit_crit_edge

for.body.i.nand_ecc_sw_bch_calculate.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nand_ecc_sw_bch_calculate.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

nand_ecc_sw_bch_calculate.exit:                   ; preds = %for.body.i.nand_ecc_sw_bch_calculate.exit_crit_edge, %for.body.nand_ecc_sw_bch_calculate.exit_crit_edge
  %dec = add i32 %eccsteps.041, -1
  %add = add i32 %i.043, %5
  %add.ptr = getelementptr i8, ptr %data.042, i32 %3
  %tobool13.not = icmp eq i32 %dec, 0
  br i1 %tobool13.not, label %nand_ecc_sw_bch_calculate.exit.for.end_crit_edge, label %nand_ecc_sw_bch_calculate.exit.for.body_crit_edge

nand_ecc_sw_bch_calculate.exit.for.body_crit_edge: ; preds = %nand_ecc_sw_bch_calculate.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

nand_ecc_sw_bch_calculate.exit.for.end_crit_edge: ; preds = %nand_ecc_sw_bch_calculate.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %nand_ecc_sw_bch_calculate.exit.for.end_crit_edge, %if.end12.for.end_crit_edge
  %oobbuf = getelementptr inbounds %struct.nand_page_io_req, ptr %req, i32 0, i32 7
  %39 = ptrtoint ptr %oobbuf to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %oobbuf, align 4
  %call15 = tail call i32 @mtd_ooblayout_set_eccbytes(ptr noundef %nand, ptr noundef %11, ptr noundef %40, i32 noundef 0, i32 noundef %9) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %for.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nand_ecc_sw_bch_finish_io_req(ptr noundef %nand, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 2, i32 3, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %step_size = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 2, i32 3, i32 0, i32 4
  %2 = ptrtoint ptr %step_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %step_size, align 4
  %total5 = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 2, i32 3, i32 2
  %4 = ptrtoint ptr %total5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %total5, align 4
  %code_size = getelementptr inbounds %struct.nand_ecc_sw_bch_conf, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %code_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %code_size, align 4
  %nsteps = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 2, i32 3, i32 1
  %8 = ptrtoint ptr %nsteps to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nsteps, align 4
  %calc_buf = getelementptr inbounds %struct.nand_ecc_sw_bch_conf, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %calc_buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %calc_buf, align 4
  %code_buf = getelementptr inbounds %struct.nand_ecc_sw_bch_conf, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %code_buf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %code_buf, align 4
  %databuf = getelementptr inbounds %struct.nand_page_io_req, ptr %req, i32 0, i32 4
  %14 = ptrtoint ptr %databuf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %databuf, align 4
  %mode = getelementptr inbounds %struct.nand_page_io_req, ptr %req, i32 0, i32 8
  %16 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp = icmp eq i32 %17, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %datalen = getelementptr inbounds %struct.nand_page_io_req, ptr %req, i32 0, i32 3
  %18 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %datalen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %20 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp10 = icmp eq i32 %21, 1
  br i1 %cmp10, label %if.end9.cleanup.sink.split_crit_edge, label %if.end12

if.end9.cleanup.sink.split_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end12:                                         ; preds = %if.end9
  %oobbuf = getelementptr inbounds %struct.nand_page_io_req, ptr %req, i32 0, i32 7
  %22 = ptrtoint ptr %oobbuf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %oobbuf, align 4
  %call13 = tail call i32 @mtd_ooblayout_get_eccbytes(ptr noundef %nand, ptr noundef %13, ptr noundef %23, i32 noundef 0, i32 noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %for.cond.preheader, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool17.not92 = icmp eq i32 %9, 0
  br i1 %tobool17.not92, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %nand_ecc_sw_bch_calculate.exit.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.095 = phi i32 [ %add, %nand_ecc_sw_bch_calculate.exit.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %data.094 = phi ptr [ %add.ptr, %nand_ecc_sw_bch_calculate.exit.for.body_crit_edge ], [ %15, %for.cond.preheader.for.body_crit_edge ]
  %eccsteps.093 = phi i32 [ %dec, %nand_ecc_sw_bch_calculate.exit.for.body_crit_edge ], [ %9, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %11, i32 %i.095
  %24 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv, align 4
  %code_size.i = getelementptr inbounds %struct.nand_ecc_sw_bch_conf, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %code_size.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %code_size.i, align 4
  %28 = call ptr @memset(ptr %arrayidx, i32 0, i32 %27)
  %bch.i = getelementptr inbounds %struct.nand_ecc_sw_bch_conf, ptr %25, i32 0, i32 4
  %29 = ptrtoint ptr %bch.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bch.i, align 4
  %31 = ptrtoint ptr %step_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %step_size, align 4
  tail call void @bch_encode(ptr noundef %30, ptr noundef %data.094, i32 noundef %32, ptr noundef %arrayidx) #7
  %33 = ptrtoint ptr %code_size.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %code_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp17.not.i = icmp eq i32 %34, 0
  br i1 %cmp17.not.i, label %for.body.nand_ecc_sw_bch_calculate.exit_crit_edge, label %for.body.lr.ph.i

for.body.nand_ecc_sw_bch_calculate.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %nand_ecc_sw_bch_calculate.exit

for.body.lr.ph.i:                                 ; preds = %for.body
  %eccmask.i = getelementptr inbounds %struct.nand_ecc_sw_bch_conf, ptr %25, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.018.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %35 = ptrtoint ptr %eccmask.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %eccmask.i, align 4
  %arrayidx.i = getelementptr i8, ptr %36, i32 %i.018.i
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.i, align 1
  %arrayidx4.i = getelementptr i8, ptr %arrayidx, i32 %i.018.i
  %39 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx4.i, align 1
  %xor16.i = xor i8 %40, %38
  store i8 %xor16.i, ptr %arrayidx4.i, align 1
  %inc.i = add nuw i32 %i.018.i, 1
  %41 = ptrtoint ptr %code_size.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %code_size.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %42
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.nand_ecc_sw_bch_calculate.exit_crit_edge

for.body.i.nand_ecc_sw_bch_calculate.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nand_ecc_sw_bch_calculate.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

nand_ecc_sw_bch_calculate.exit:                   ; preds = %for.body.i.nand_ecc_sw_bch_calculate.exit_crit_edge, %for.body.nand_ecc_sw_bch_calculate.exit_crit_edge
  %dec = add i32 %eccsteps.093, -1
  %add = add i32 %i.095, %7
  %add.ptr = getelementptr i8, ptr %data.094, i32 %3
  %tobool17.not = icmp eq i32 %dec, 0
  br i1 %tobool17.not, label %nand_ecc_sw_bch_calculate.exit.for.end_crit_edge, label %nand_ecc_sw_bch_calculate.exit.for.body_crit_edge

nand_ecc_sw_bch_calculate.exit.for.body_crit_edge: ; preds = %nand_ecc_sw_bch_calculate.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

nand_ecc_sw_bch_calculate.exit.for.end_crit_edge: ; preds = %nand_ecc_sw_bch_calculate.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %nand_ecc_sw_bch_calculate.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %43 = ptrtoint ptr %nsteps to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %nsteps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool24.not96 = icmp eq i32 %44, 0
  br i1 %tobool24.not96, label %for.end.cleanup.sink.split_crit_edge, label %for.body25.lr.ph

for.end.cleanup.sink.split_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

for.body25.lr.ph:                                 ; preds = %for.end
  %45 = ptrtoint ptr %databuf to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %databuf, align 4
  %ecc_stats31 = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 52
  %failed = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 52, i32 1
  br label %for.body25

for.body25:                                       ; preds = %if.end34.for.body25_crit_edge, %for.body25.lr.ph
  %i.1100 = phi i32 [ 0, %for.body25.lr.ph ], [ %add37, %if.end34.for.body25_crit_edge ]
  %data.199 = phi ptr [ %46, %for.body25.lr.ph ], [ %add.ptr38, %if.end34.for.body25_crit_edge ]
  %max_bitflips.098 = phi i32 [ 0, %for.body25.lr.ph ], [ %max_bitflips.1, %if.end34.for.body25_crit_edge ]
  %eccsteps.197 = phi i32 [ %44, %for.body25.lr.ph ], [ %dec36, %if.end34.for.body25_crit_edge ]
  %arrayidx26 = getelementptr i8, ptr %13, i32 %i.1100
  %arrayidx27 = getelementptr i8, ptr %11, i32 %i.1100
  %call28 = tail call i32 @nand_ecc_sw_bch_correct(ptr noundef %nand, ptr noundef %data.199, ptr noundef %arrayidx26, ptr noundef %arrayidx27)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.then30, label %if.else

if.then30:                                        ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %failed to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %failed, align 4
  %inc = add i32 %48, 1
  store i32 %inc, ptr %failed, align 4
  br label %if.end34

if.else:                                          ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %ecc_stats31 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ecc_stats31, align 4
  %add32 = add i32 %50, %call28
  store i32 %add32, ptr %ecc_stats31, align 4
  %51 = tail call i32 @llvm.umax.i32(i32 %max_bitflips.098, i32 %call28)
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then30
  %max_bitflips.1 = phi i32 [ %max_bitflips.098, %if.then30 ], [ %51, %if.else ]
  %dec36 = add i32 %eccsteps.197, -1
  %add37 = add i32 %i.1100, %7
  %add.ptr38 = getelementptr i8, ptr %data.199, i32 %3
  %tobool24.not = icmp eq i32 %dec36, 0
  br i1 %tobool24.not, label %if.end34.cleanup.sink.split_crit_edge, label %if.end34.for.body25_crit_edge

if.end34.for.body25_crit_edge:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body25

if.end34.cleanup.sink.split_crit_edge:            ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end34.cleanup.sink.split_crit_edge, %for.end.cleanup.sink.split_crit_edge, %if.end9.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end9.cleanup.sink.split_crit_edge ], [ 0, %for.end.cleanup.sink.split_crit_edge ], [ %max_bitflips.1, %if.end34.cleanup.sink.split_crit_edge ]
  tail call void @nand_ecc_restore_req(ptr noundef %1, ptr noundef %req) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_ecc_tweak_req(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_ooblayout_set_eccbytes(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_ecc_restore_req(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_ooblayout_get_eccbytes(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !31, !33, !35, !36, !38, !40, !42, !43, !44, !45, !47, !48, !49, !51}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @__ksymtab_nand_ecc_sw_bch_calculate, !1, !"__ksymtab_nand_ecc_sw_bch_calculate", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/ecc-sw-bch.c", i32 38, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/mtd/nand/ecc-sw-bch.c", i32 66, i32 4}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @nand_ecc_sw_bch_correct.__UNIQUE_ID_ddebug193, !3, !"__UNIQUE_ID_ddebug193", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/mtd/nand/ecc-sw-bch.c", i32 70, i32 3}
!10 = !{ptr @nand_ecc_sw_bch_correct._entry, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @nand_ecc_sw_bch_correct._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @__ksymtab_nand_ecc_sw_bch_correct, !13, !"__ksymtab_nand_ecc_sw_bch_correct", i1 false, i1 false}
!13 = !{!"../drivers/mtd/nand/ecc-sw-bch.c", i32 76, i32 1}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mtd/nand/ecc-sw-bch.c", i32 180, i32 3}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @nand_ecc_sw_bch_init_ctx._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @nand_ecc_sw_bch_init_ctx._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/mtd/nand/ecc-sw-bch.c", i32 226, i32 3}
!21 = !{ptr @nand_ecc_sw_bch_init_ctx._entry.7, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @nand_ecc_sw_bch_init_ctx._entry_ptr.9, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/mtd/nand/ecc-sw-bch.c", i32 257, i32 3}
!25 = !{ptr @nand_ecc_sw_bch_init_ctx._entry.10, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @nand_ecc_sw_bch_init_ctx._entry_ptr.12, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @__ksymtab_nand_ecc_sw_bch_init_ctx, !28, !"__ksymtab_nand_ecc_sw_bch_init_ctx", i1 false, i1 false}
!28 = !{!"../drivers/mtd/nand/ecc-sw-bch.c", i32 275, i32 1}
!29 = !{ptr @__ksymtab_nand_ecc_sw_bch_cleanup_ctx, !30, !"__ksymtab_nand_ecc_sw_bch_cleanup_ctx", i1 false, i1 false}
!30 = !{!"../drivers/mtd/nand/ecc-sw-bch.c", i32 289, i32 1}
!31 = !{ptr @__ksymtab_nand_ecc_sw_bch_get_engine, !32, !"__ksymtab_nand_ecc_sw_bch_get_engine", i1 false, i1 false}
!32 = !{!"../drivers/mtd/nand/ecc-sw-bch.c", i32 402, i32 1}
!33 = !{ptr @__UNIQUE_ID_file196, !34, !"__UNIQUE_ID_file196", i1 false, i1 false}
!34 = !{!"../drivers/mtd/nand/ecc-sw-bch.c", i32 404, i32 1}
!35 = !{ptr @__UNIQUE_ID_license197, !34, !"__UNIQUE_ID_license197", i1 false, i1 false}
!36 = !{ptr @__UNIQUE_ID_author198, !37, !"__UNIQUE_ID_author198", i1 false, i1 false}
!37 = !{!"../drivers/mtd/nand/ecc-sw-bch.c", i32 405, i32 1}
!38 = !{ptr @__UNIQUE_ID_description199, !39, !"__UNIQUE_ID_description199", i1 false, i1 false}
!39 = !{!"../drivers/mtd/nand/ecc-sw-bch.c", i32 406, i32 1}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/mtd/nand/ecc-sw-bch.c", i32 149, i32 3}
!42 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @nand_ecc_sw_bch_init._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @nand_ecc_sw_bch_init._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/mtd/nand/ecc-sw-bch.c", i32 157, i32 3}
!47 = !{ptr @nand_ecc_sw_bch_init._entry.15, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @nand_ecc_sw_bch_init._entry_ptr.17, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @nand_ecc_sw_bch_engine, !50, !"nand_ecc_sw_bch_engine", i1 false, i1 false}
!50 = !{!"../drivers/mtd/nand/ecc-sw-bch.c", i32 394, i32 31}
!51 = !{ptr @nand_ecc_sw_bch_engine_ops, !52, !"nand_ecc_sw_bch_engine_ops", i1 false, i1 false}
!52 = !{!"../drivers/mtd/nand/ecc-sw-bch.c", i32 387, i32 35}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{i64 2148701018, i64 2148701023, i64 2148701036, i64 2148701080, i64 2148701114, i64 2148701135}
!63 = !{i32 0, i32 33}
!64 = !{!"branch_weights", i32 1, i32 2000}
