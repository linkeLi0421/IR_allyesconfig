; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/ecc-sw-hamming.c_pt.bc'
source_filename = "../drivers/mtd/nand/ecc-sw-hamming.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ecc_sw_hamming_calculate\22, \22a\22\09"
module asm "\09.weak\09__crc_ecc_sw_hamming_calculate\09\09\09\09"
module asm "\09.long\09__crc_ecc_sw_hamming_calculate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ecc_sw_hamming_calculate:\09\09\09\09\09"
module asm "\09.asciz \09\22ecc_sw_hamming_calculate\22\09\09\09\09\09"
module asm "__kstrtabns_ecc_sw_hamming_calculate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+nand_ecc_sw_hamming_calculate\22, \22a\22\09"
module asm "\09.weak\09__crc_nand_ecc_sw_hamming_calculate\09\09\09\09"
module asm "\09.long\09__crc_nand_ecc_sw_hamming_calculate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_ecc_sw_hamming_calculate:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_ecc_sw_hamming_calculate\22\09\09\09\09\09"
module asm "__kstrtabns_nand_ecc_sw_hamming_calculate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ecc_sw_hamming_correct\22, \22a\22\09"
module asm "\09.weak\09__crc_ecc_sw_hamming_correct\09\09\09\09"
module asm "\09.long\09__crc_ecc_sw_hamming_correct\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ecc_sw_hamming_correct:\09\09\09\09\09"
module asm "\09.asciz \09\22ecc_sw_hamming_correct\22\09\09\09\09\09"
module asm "__kstrtabns_ecc_sw_hamming_correct:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+nand_ecc_sw_hamming_correct\22, \22a\22\09"
module asm "\09.weak\09__crc_nand_ecc_sw_hamming_correct\09\09\09\09"
module asm "\09.long\09__crc_nand_ecc_sw_hamming_correct\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_ecc_sw_hamming_correct:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_ecc_sw_hamming_correct\22\09\09\09\09\09"
module asm "__kstrtabns_nand_ecc_sw_hamming_correct:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+nand_ecc_sw_hamming_init_ctx\22, \22a\22\09"
module asm "\09.weak\09__crc_nand_ecc_sw_hamming_init_ctx\09\09\09\09"
module asm "\09.long\09__crc_nand_ecc_sw_hamming_init_ctx\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_ecc_sw_hamming_init_ctx:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_ecc_sw_hamming_init_ctx\22\09\09\09\09\09"
module asm "__kstrtabns_nand_ecc_sw_hamming_init_ctx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+nand_ecc_sw_hamming_cleanup_ctx\22, \22a\22\09"
module asm "\09.weak\09__crc_nand_ecc_sw_hamming_cleanup_ctx\09\09\09\09"
module asm "\09.long\09__crc_nand_ecc_sw_hamming_cleanup_ctx\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_ecc_sw_hamming_cleanup_ctx:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_ecc_sw_hamming_cleanup_ctx\22\09\09\09\09\09"
module asm "__kstrtabns_nand_ecc_sw_hamming_cleanup_ctx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+nand_ecc_sw_hamming_get_engine\22, \22a\22\09"
module asm "\09.weak\09__crc_nand_ecc_sw_hamming_get_engine\09\09\09\09"
module asm "\09.long\09__crc_nand_ecc_sw_hamming_get_engine\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_ecc_sw_hamming_get_engine:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_ecc_sw_hamming_get_engine\22\09\09\09\09\09"
module asm "__kstrtabns_nand_ecc_sw_hamming_get_engine:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%union.anon.43 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.nand_memory_organization = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc = type { %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_context, ptr, ptr }
%struct.nand_ecc_props = type { i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc_context = type { %struct.nand_ecc_props, i32, i32, ptr }
%struct.nand_row_converter = type { i32, i32 }
%struct.nand_bbt = type { ptr }
%struct.nand_ecc_sw_hamming_conf = type { %struct.nand_ecc_req_tweak_ctx, i32, ptr, ptr, i32 }
%struct.nand_ecc_req_tweak_ctx = type { %struct.nand_page_io_req, ptr, i32, i32, ptr, ptr, i8, i8 }
%struct.nand_page_io_req = type { i32, %struct.nand_pos, i32, i32, %union.anon.44, i32, i32, %union.anon.45, i32 }
%struct.nand_pos = type { i32, i32, i32, i32, i32 }
%union.anon.44 = type { ptr }
%union.anon.45 = type { ptr }

@invparity = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01", [64 x i8] zeroinitializer }, align 32
@__kstrtab_ecc_sw_hamming_calculate = external dso_local constant [0 x i8], align 1
@__kstrtabns_ecc_sw_hamming_calculate = external dso_local constant [0 x i8], align 1
@__ksymtab_ecc_sw_hamming_calculate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ecc_sw_hamming_calculate to i32), ptr @__kstrtab_ecc_sw_hamming_calculate, ptr @__kstrtabns_ecc_sw_hamming_calculate }, section "___ksymtab+ecc_sw_hamming_calculate", align 4
@__kstrtab_nand_ecc_sw_hamming_calculate = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_ecc_sw_hamming_calculate = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_ecc_sw_hamming_calculate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_ecc_sw_hamming_calculate to i32), ptr @__kstrtab_nand_ecc_sw_hamming_calculate, ptr @__kstrtabns_nand_ecc_sw_hamming_calculate }, section "___ksymtab+nand_ecc_sw_hamming_calculate", align 4
@addressbits = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"\00\00\01\01\00\00\01\01\02\02\03\03\02\02\03\03\00\00\01\01\00\00\01\01\02\02\03\03\02\02\03\03\04\04\05\05\04\04\05\05\06\06\07\07\06\06\07\07\04\04\05\05\04\04\05\05\06\06\07\07\06\06\07\07\00\00\01\01\00\00\01\01\02\02\03\03\02\02\03\03\00\00\01\01\00\00\01\01\02\02\03\03\02\02\03\03\04\04\05\05\04\04\05\05\06\06\07\07\06\06\07\07\04\04\05\05\04\04\05\05\06\06\07\07\06\06\07\07\08\08\09\09\08\08\09\09\0A\0A\0B\0B\0A\0A\0B\0B\08\08\09\09\08\08\09\09\0A\0A\0B\0B\0A\0A\0B\0B\0C\0C\0D\0D\0C\0C\0D\0D\0E\0E\0F\0F\0E\0E\0F\0F\0C\0C\0D\0D\0C\0C\0D\0D\0E\0E\0F\0F\0E\0E\0F\0F\08\08\09\09\08\08\09\09\0A\0A\0B\0B\0A\0A\0B\0B\08\08\09\09\08\08\09\09\0A\0A\0B\0B\0A\0A\0B\0B\0C\0C\0D\0D\0C\0C\0D\0D\0E\0E\0F\0F\0E\0E\0F\0F\0C\0C\0D\0D\0C\0C\0D\0D\0E\0E\0F\0F\0E\0E\0F\0F", [64 x i8] zeroinitializer }, align 32
@bitsperbyte = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"\00\01\01\02\01\02\02\03\01\02\02\03\02\03\03\04\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\04\05\05\06\05\06\06\07\05\06\06\07\06\07\07\08", [64 x i8] zeroinitializer }, align 32
@ecc_sw_hamming_correct._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 440, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: uncorrectable ECC error\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ecc_sw_hamming_correct\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/mtd/nand/ecc-sw-hamming.c\00", [62 x i8] zeroinitializer }, align 32
@ecc_sw_hamming_correct._entry_ptr = internal global ptr @ecc_sw_hamming_correct._entry, section ".printk_index", align 4
@__kstrtab_ecc_sw_hamming_correct = external dso_local constant [0 x i8], align 1
@__kstrtabns_ecc_sw_hamming_correct = external dso_local constant [0 x i8], align 1
@__ksymtab_ecc_sw_hamming_correct = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ecc_sw_hamming_correct to i32), ptr @__kstrtab_ecc_sw_hamming_correct, ptr @__kstrtabns_ecc_sw_hamming_correct }, section "___ksymtab+ecc_sw_hamming_correct", align 4
@__kstrtab_nand_ecc_sw_hamming_correct = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_ecc_sw_hamming_correct = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_ecc_sw_hamming_correct = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_ecc_sw_hamming_correct to i32), ptr @__kstrtab_nand_ecc_sw_hamming_correct, ptr @__kstrtabns_nand_ecc_sw_hamming_correct }, section "___ksymtab+nand_ecc_sw_hamming_correct", align 4
@__kstrtab_nand_ecc_sw_hamming_init_ctx = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_ecc_sw_hamming_init_ctx = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_ecc_sw_hamming_init_ctx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_ecc_sw_hamming_init_ctx to i32), ptr @__kstrtab_nand_ecc_sw_hamming_init_ctx, ptr @__kstrtabns_nand_ecc_sw_hamming_init_ctx }, section "___ksymtab+nand_ecc_sw_hamming_init_ctx", align 4
@__kstrtab_nand_ecc_sw_hamming_cleanup_ctx = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_ecc_sw_hamming_cleanup_ctx = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_ecc_sw_hamming_cleanup_ctx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_ecc_sw_hamming_cleanup_ctx to i32), ptr @__kstrtab_nand_ecc_sw_hamming_cleanup_ctx, ptr @__kstrtabns_nand_ecc_sw_hamming_cleanup_ctx }, section "___ksymtab+nand_ecc_sw_hamming_cleanup_ctx", align 4
@nand_ecc_sw_hamming_engine = internal global { %struct.nand_ecc_engine, [28 x i8] } { %struct.nand_ecc_engine { ptr @nand_ecc_sw_hamming_engine_ops }, [28 x i8] zeroinitializer }, align 32
@__kstrtab_nand_ecc_sw_hamming_get_engine = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_ecc_sw_hamming_get_engine = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_ecc_sw_hamming_get_engine = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_ecc_sw_hamming_get_engine to i32), ptr @__kstrtab_nand_ecc_sw_hamming_get_engine, ptr @__kstrtabns_nand_ecc_sw_hamming_get_engine }, section "___ksymtab+nand_ecc_sw_hamming_get_engine", align 4
@__UNIQUE_ID_file195 = internal constant [40 x i8] c"nandcore.file=drivers/mtd/nand/nandcore\00", section ".modinfo", align 1
@__UNIQUE_ID_license196 = internal constant [21 x i8] c"nandcore.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author197 = internal constant [65 x i8] c"nandcore.author=Frans Meulenbroeks <fransmeulenbroeks@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description198 = internal constant [55 x i8] c"nandcore.description=NAND software Hamming ECC support\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nand_ecc_sw_hamming_engine_ops = internal global { %struct.nand_ecc_engine_ops, [16 x i8] } { %struct.nand_ecc_engine_ops { ptr @nand_ecc_sw_hamming_init_ctx, ptr @nand_ecc_sw_hamming_cleanup_ctx, ptr @nand_ecc_sw_hamming_prepare_io_req, ptr @nand_ecc_sw_hamming_finish_io_req }, [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.3 = internal global [6 x i64] [i64 4, i64 32, i64 8, i64 16, i64 64, i64 128]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 32, i64 256, i64 512]
@___asan_gen_.5 = private unnamed_addr constant [10 x i8] c"invparity\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 31, i32 19 }
@___asan_gen_.8 = private unnamed_addr constant [12 x i8] c"addressbits\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 80, i32 19 }
@___asan_gen_.11 = private unnamed_addr constant [12 x i8] c"bitsperbyte\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 55, i32 19 }
@___asan_gen_.14 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 440, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant [27 x i8] c"nand_ecc_sw_hamming_engine\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 648, i32 31 }
@___asan_gen_.29 = private unnamed_addr constant [31 x i8] c"nand_ecc_sw_hamming_engine_ops\00", align 1
@___asan_gen_.30 = private constant [37 x i8] c"../drivers/mtd/nand/ecc-sw-hamming.c\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 641, i32 35 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_author197, ptr @__UNIQUE_ID_description198, ptr @__UNIQUE_ID_file195, ptr @__UNIQUE_ID_license196, ptr @__ksymtab_ecc_sw_hamming_calculate, ptr @__ksymtab_ecc_sw_hamming_correct, ptr @__ksymtab_nand_ecc_sw_hamming_calculate, ptr @__ksymtab_nand_ecc_sw_hamming_cleanup_ctx, ptr @__ksymtab_nand_ecc_sw_hamming_correct, ptr @__ksymtab_nand_ecc_sw_hamming_get_engine, ptr @__ksymtab_nand_ecc_sw_hamming_init_ctx, ptr @ecc_sw_hamming_correct._entry, ptr @ecc_sw_hamming_correct._entry_ptr, ptr @invparity, ptr @addressbits, ptr @bitsperbyte, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @nand_ecc_sw_hamming_engine, ptr @nand_ecc_sw_hamming_engine_ops], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @invparity to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @addressbits to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bitsperbyte to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecc_sw_hamming_correct._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_ecc_sw_hamming_engine to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_ecc_sw_hamming_engine_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ecc_sw_hamming_calculate(ptr nocapture noundef readonly %buf, i32 noundef %step_size, ptr nocapture noundef writeonly %code, i1 noundef zeroext %sm_order) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %step_size)
  %cmp = icmp eq i32 %step_size, 256
  %cond = select i1 %cmp, i32 4, i32 8
  %cmp.not = xor i1 %cmp, true
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.0546 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %par.0545 = phi i32 [ 0, %entry ], [ %xor52, %for.body.for.body_crit_edge ]
  %rp16.0544 = phi i32 [ 0, %entry ], [ %rp16.1, %for.body.for.body_crit_edge ]
  %rp14.0543 = phi i32 [ 0, %entry ], [ %rp14.1, %for.body.for.body_crit_edge ]
  %rp12.0542 = phi i32 [ 0, %entry ], [ %spec.select, %for.body.for.body_crit_edge ]
  %rp10.0541 = phi i32 [ 0, %entry ], [ %xor23, %for.body.for.body_crit_edge ]
  %rp8.0540 = phi i32 [ 0, %entry ], [ %xor39, %for.body.for.body_crit_edge ]
  %rp6.0539 = phi i32 [ 0, %entry ], [ %xor46, %for.body.for.body_crit_edge ]
  %rp4.0538 = phi i32 [ 0, %entry ], [ %xor49, %for.body.for.body_crit_edge ]
  %bp.0537 = phi ptr [ %buf, %entry ], [ %incdec.ptr50, %for.body.for.body_crit_edge ]
  %incdec.ptr = getelementptr i32, ptr %bp.0537, i32 1
  %0 = ptrtoint ptr %bp.0537 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bp.0537, align 4
  %incdec.ptr2 = getelementptr i32, ptr %bp.0537, i32 2
  %2 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %incdec.ptr, align 4
  %xor3 = xor i32 %3, %1
  %incdec.ptr5 = getelementptr i32, ptr %bp.0537, i32 3
  %4 = ptrtoint ptr %incdec.ptr2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %incdec.ptr2, align 4
  %xor6 = xor i32 %xor3, %5
  %incdec.ptr8 = getelementptr i32, ptr %bp.0537, i32 4
  %6 = ptrtoint ptr %incdec.ptr5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %incdec.ptr5, align 4
  %xor9 = xor i32 %xor6, %7
  %incdec.ptr11 = getelementptr i32, ptr %bp.0537, i32 5
  %8 = ptrtoint ptr %incdec.ptr8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %incdec.ptr8, align 4
  %incdec.ptr15 = getelementptr i32, ptr %bp.0537, i32 6
  %10 = ptrtoint ptr %incdec.ptr11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %incdec.ptr11, align 4
  %incdec.ptr18 = getelementptr i32, ptr %bp.0537, i32 7
  %12 = ptrtoint ptr %incdec.ptr15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %incdec.ptr15, align 4
  %incdec.ptr21 = getelementptr i32, ptr %bp.0537, i32 8
  %14 = ptrtoint ptr %incdec.ptr18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %incdec.ptr18, align 4
  %xor12 = xor i32 %11, %9
  %xor16 = xor i32 %xor12, %xor9
  %xor19 = xor i32 %xor16, %13
  %xor22 = xor i32 %xor19, %15
  %xor23 = xor i32 %xor22, %rp10.0541
  %incdec.ptr24 = getelementptr i32, ptr %bp.0537, i32 9
  %16 = ptrtoint ptr %incdec.ptr21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %incdec.ptr21, align 4
  %incdec.ptr29 = getelementptr i32, ptr %bp.0537, i32 10
  %18 = ptrtoint ptr %incdec.ptr24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %incdec.ptr24, align 4
  %incdec.ptr33 = getelementptr i32, ptr %bp.0537, i32 11
  %20 = ptrtoint ptr %incdec.ptr29 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %incdec.ptr29, align 4
  %incdec.ptr37 = getelementptr i32, ptr %bp.0537, i32 12
  %22 = ptrtoint ptr %incdec.ptr33 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %incdec.ptr33, align 4
  %xor10 = xor i32 %19, %17
  %xor28 = xor i32 %xor10, %rp8.0540
  %xor32 = xor i32 %xor28, %xor9
  %xor36 = xor i32 %xor32, %21
  %xor39 = xor i32 %xor36, %23
  %incdec.ptr40 = getelementptr i32, ptr %bp.0537, i32 13
  %24 = ptrtoint ptr %incdec.ptr37 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %incdec.ptr37, align 4
  %incdec.ptr44 = getelementptr i32, ptr %bp.0537, i32 14
  %26 = ptrtoint ptr %incdec.ptr40 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %incdec.ptr40, align 4
  %xor14 = xor i32 %xor10, %rp6.0539
  %xor17 = xor i32 %xor14, %xor3
  %xor27 = xor i32 %xor17, %9
  %xor31 = xor i32 %xor27, %11
  %xor43 = xor i32 %xor31, %25
  %xor46 = xor i32 %xor43, %27
  %incdec.ptr47 = getelementptr i32, ptr %bp.0537, i32 15
  %28 = ptrtoint ptr %incdec.ptr44 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %incdec.ptr44, align 4
  %xor = xor i32 %21, %17
  %xor7 = xor i32 %xor, %rp4.0538
  %xor13 = xor i32 %xor7, %1
  %xor20 = xor i32 %xor13, %5
  %xor26 = xor i32 %xor20, %9
  %xor35 = xor i32 %xor26, %13
  %xor42 = xor i32 %xor35, %25
  %xor49 = xor i32 %xor42, %29
  %incdec.ptr50 = getelementptr i32, ptr %bp.0537, i32 16
  %30 = ptrtoint ptr %incdec.ptr47 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %incdec.ptr47, align 4
  %xor30 = xor i32 %xor10, %xor22
  %xor34 = xor i32 %xor30, %21
  %xor38 = xor i32 %xor34, %23
  %xor41 = xor i32 %xor38, %25
  %xor45 = xor i32 %xor41, %27
  %xor48 = xor i32 %xor45, %29
  %xor51 = xor i32 %xor48, %31
  %xor52 = xor i32 %xor51, %par.0545
  %and = and i32 %i.0546, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp53 = icmp eq i32 %and, 0
  %xor54 = select i1 %cmp53, i32 %xor51, i32 0
  %spec.select = xor i32 %xor54, %rp12.0542
  %and55 = and i32 %i.0546, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %cmp56 = icmp eq i32 %and55, 0
  %xor58 = select i1 %cmp56, i32 %xor51, i32 0
  %rp14.1 = xor i32 %xor58, %rp14.0543
  %and61 = and i32 %i.0546, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %cmp62 = icmp eq i32 %and61, 0
  %or.cond = select i1 %cmp.not, i1 %cmp62, i1 false
  %xor64 = select i1 %or.cond, i32 %xor51, i32 0
  %rp16.1 = xor i32 %xor64, %rp16.0544
  %inc = add nuw nsw i32 %i.0546, 1
  %exitcond.not = icmp eq i32 %inc, %cond
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  %shr = lshr i32 %xor49, 16
  %xor66 = xor i32 %shr, %xor49
  %shr67 = lshr i32 %xor66, 8
  %xor68 = xor i32 %shr67, %xor66
  %and69 = and i32 %xor68, 255
  %shr70 = lshr i32 %xor46, 16
  %xor71 = xor i32 %shr70, %xor46
  %shr72 = lshr i32 %xor71, 8
  %xor73 = xor i32 %shr72, %xor71
  %and74 = and i32 %xor73, 255
  %shr75 = lshr i32 %xor39, 16
  %xor76 = xor i32 %shr75, %xor39
  %shr77 = lshr i32 %xor76, 8
  %xor78 = xor i32 %shr77, %xor76
  %and79 = and i32 %xor78, 255
  %shr80 = lshr i32 %xor23, 16
  %xor81 = xor i32 %shr80, %xor23
  %shr82 = lshr i32 %xor81, 8
  %xor83 = xor i32 %shr82, %xor81
  %and84 = and i32 %xor83, 255
  %shr85 = lshr i32 %spec.select, 16
  %xor86 = xor i32 %shr85, %spec.select
  %shr87 = lshr i32 %xor86, 8
  %xor88 = xor i32 %shr87, %xor86
  %and89 = and i32 %xor88, 255
  %shr90 = lshr i32 %rp14.1, 16
  %xor91 = xor i32 %shr90, %rp14.1
  %shr92 = lshr i32 %xor91, 8
  %xor93 = xor i32 %shr92, %xor91
  %and94 = and i32 %xor93, 255
  %shr97 = lshr i32 %rp16.1, 16
  %xor98 = xor i32 %shr97, %rp16.1
  %shr99 = lshr i32 %xor98, 8
  %xor100 = xor i32 %shr99, %xor98
  %and101 = and i32 %xor100, 255
  %rp16.2 = select i1 %cmp, i32 %rp16.1, i32 %and101
  %shr103 = lshr i32 %xor52, 16
  %shr104 = lshr i32 %xor52, 24
  %shr103.masked = and i32 %shr103, 255
  %and106 = xor i32 %shr103.masked, %shr104
  %shr108 = lshr i32 %xor52, 8
  %xor109 = xor i32 %shr108, %xor52
  %and110 = and i32 %xor109, 255
  %xor112 = xor i32 %shr103, %xor52
  %shr113 = lshr i32 %xor112, 8
  %and114 = and i32 %shr113, 255
  %and115 = and i32 %xor112, 255
  %xor117 = xor i32 %shr113, %xor112
  %and118 = and i32 %xor117, 255
  %xor119 = xor i32 %and118, %and69
  %xor121 = xor i32 %and118, %and74
  %xor123 = xor i32 %and118, %and79
  %xor125 = xor i32 %and118, %and84
  %xor127 = xor i32 %and118, %and89
  %xor129 = xor i32 %and118, %and94
  %xor133 = xor i32 %rp16.2, %xor117
  %and134 = and i32 %xor133, 255
  %rp17.0 = select i1 %cmp, i32 0, i32 %and134
  %arrayidx = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %xor121
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx, align 1
  %shl137 = shl i8 %33, 7
  %arrayidx138 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %and74
  %34 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx138, align 1
  %shl140 = shl i8 %35, 6
  %or = or i8 %shl140, %shl137
  %arrayidx141 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %xor119
  %36 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx141, align 1
  %shl143 = shl i8 %37, 5
  %or144 = or i8 %or, %shl143
  %arrayidx145 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %and69
  %38 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx145, align 1
  %shl147 = shl i8 %39, 4
  %or148 = or i8 %or144, %shl147
  %arrayidx149 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %and110
  %40 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx149, align 1
  %shl151 = shl i8 %41, 3
  %or152 = or i8 %or148, %shl151
  %arrayidx153 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %and106
  %42 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx153, align 1
  %shl155 = shl i8 %43, 2
  %or156 = or i8 %or152, %shl155
  %arrayidx157 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %and115
  %44 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx157, align 1
  %shl159 = shl i8 %45, 1
  %or160 = or i8 %or156, %shl159
  %arrayidx161 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %and114
  %46 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx161, align 1
  %or163 = or i8 %or160, %47
  br i1 %sm_order, label %if.then136, label %if.else

if.then136:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %code to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %or163, ptr %code, align 1
  %arrayidx166 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %xor129
  %49 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx166, align 1
  %shl168 = shl i8 %50, 7
  %arrayidx169 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %and94
  %51 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx169, align 1
  %shl171 = shl i8 %52, 6
  %or172 = or i8 %shl171, %shl168
  %arrayidx173 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %xor127
  %53 = ptrtoint ptr %arrayidx173 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx173, align 1
  %shl175 = shl i8 %54, 5
  %or176 = or i8 %or172, %shl175
  %arrayidx177 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %and89
  %55 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx177, align 1
  %shl179 = shl i8 %56, 4
  %or180 = or i8 %or176, %shl179
  %arrayidx181 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %xor125
  %57 = ptrtoint ptr %arrayidx181 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx181, align 1
  %shl183 = shl i8 %58, 3
  %or184 = or i8 %or180, %shl183
  %arrayidx185 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %and84
  %59 = ptrtoint ptr %arrayidx185 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx185, align 1
  %shl187 = shl i8 %60, 2
  %or188 = or i8 %or184, %shl187
  %arrayidx189 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %xor123
  %61 = ptrtoint ptr %arrayidx189 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx189, align 1
  %shl191 = shl i8 %62, 1
  %or192 = or i8 %or188, %shl191
  %arrayidx193 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %and79
  %63 = ptrtoint ptr %arrayidx193 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx193, align 1
  %or195 = or i8 %or192, %64
  br label %if.end262

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx230 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %xor129
  %65 = ptrtoint ptr %arrayidx230 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx230, align 1
  %shl232 = shl i8 %66, 7
  %arrayidx233 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %and94
  %67 = ptrtoint ptr %arrayidx233 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx233, align 1
  %shl235 = shl i8 %68, 6
  %or236 = or i8 %shl235, %shl232
  %arrayidx237 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %xor127
  %69 = ptrtoint ptr %arrayidx237 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx237, align 1
  %shl239 = shl i8 %70, 5
  %or240 = or i8 %or236, %shl239
  %arrayidx241 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %and89
  %71 = ptrtoint ptr %arrayidx241 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx241, align 1
  %shl243 = shl i8 %72, 4
  %or244 = or i8 %or240, %shl243
  %arrayidx245 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %xor125
  %73 = ptrtoint ptr %arrayidx245 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx245, align 1
  %shl247 = shl i8 %74, 3
  %or248 = or i8 %or244, %shl247
  %arrayidx249 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %and84
  %75 = ptrtoint ptr %arrayidx249 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx249, align 1
  %shl251 = shl i8 %76, 2
  %or252 = or i8 %or248, %shl251
  %arrayidx253 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %xor123
  %77 = ptrtoint ptr %arrayidx253 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx253, align 1
  %shl255 = shl i8 %78, 1
  %or256 = or i8 %or252, %shl255
  %arrayidx257 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %and79
  %79 = ptrtoint ptr %arrayidx257 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx257, align 1
  %or259 = or i8 %or256, %80
  %81 = ptrtoint ptr %code to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %or259, ptr %code, align 1
  br label %if.end262

if.end262:                                        ; preds = %if.else, %if.then136
  %or227.sink = phi i8 [ %or195, %if.then136 ], [ %or163, %if.else ]
  %82 = getelementptr i8, ptr %code, i32 1
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %or227.sink, ptr %82, align 1
  %and266 = and i32 %xor117, 240
  %arrayidx267 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %and266
  %84 = ptrtoint ptr %arrayidx267 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx267, align 1
  %shl269 = shl i8 %85, 7
  %and270 = and i32 %xor117, 15
  %arrayidx271 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %and270
  %86 = ptrtoint ptr %arrayidx271 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx271, align 1
  %shl273 = shl i8 %87, 6
  br i1 %cmp, label %if.then265, label %if.else298

if.then265:                                       ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #9
  %and275 = and i32 %xor117, 204
  %arrayidx276 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %and275
  %88 = ptrtoint ptr %arrayidx276 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx276, align 1
  %shl278 = shl i8 %89, 5
  %and280 = and i32 %xor117, 51
  %arrayidx281 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %and280
  %90 = ptrtoint ptr %arrayidx281 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx281, align 1
  %shl283 = shl i8 %91, 4
  %and285 = and i32 %xor117, 170
  %arrayidx286 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %and285
  %92 = ptrtoint ptr %arrayidx286 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx286, align 1
  %shl288 = shl i8 %93, 3
  %and290 = and i32 %xor117, 85
  %arrayidx291 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %and290
  %94 = ptrtoint ptr %arrayidx291 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx291, align 1
  %shl293 = shl i8 %95, 2
  %or274 = or i8 %shl269, %shl273
  %or279 = or i8 %or274, %shl278
  %or284 = or i8 %or279, %shl283
  %or289 = or i8 %or284, %shl288
  %or294 = or i8 %or289, %shl293
  %or295 = or i8 %or294, 3
  br label %if.end338

if.else298:                                       ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #9
  %or307 = or i8 %shl273, %shl269
  %and308 = and i32 %xor117, 204
  %arrayidx309 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %and308
  %96 = ptrtoint ptr %arrayidx309 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx309, align 1
  %shl311 = shl i8 %97, 5
  %or312 = or i8 %or307, %shl311
  %and313 = and i32 %xor117, 51
  %arrayidx314 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %and313
  %98 = ptrtoint ptr %arrayidx314 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx314, align 1
  %shl316 = shl i8 %99, 4
  %or317 = or i8 %or312, %shl316
  %and318 = and i32 %xor117, 170
  %arrayidx319 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %and318
  %100 = ptrtoint ptr %arrayidx319 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx319, align 1
  %shl321 = shl i8 %101, 3
  %or322 = or i8 %or317, %shl321
  %and323 = and i32 %xor117, 85
  %arrayidx324 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %and323
  %102 = ptrtoint ptr %arrayidx324 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx324, align 1
  %shl326 = shl i8 %103, 2
  %or327 = or i8 %or322, %shl326
  %arrayidx328 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %rp17.0
  %104 = ptrtoint ptr %arrayidx328 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx328, align 1
  %shl330 = shl i8 %105, 1
  %or331 = or i8 %or327, %shl330
  %arrayidx332 = getelementptr [256 x i8], ptr @invparity, i32 0, i32 %rp16.2
  %106 = ptrtoint ptr %arrayidx332 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx332, align 1
  %or335 = or i8 %or331, %107
  br label %if.end338

if.end338:                                        ; preds = %if.else298, %if.then265
  %or335.sink = phi i8 [ %or295, %if.then265 ], [ %or335, %if.else298 ]
  %108 = getelementptr i8, ptr %code, i32 2
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %or335.sink, ptr %108, align 1
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nand_ecc_sw_hamming_calculate(ptr nocapture noundef readonly %nand, ptr nocapture noundef readonly %buf, ptr nocapture noundef writeonly %code) #0 align 64 {
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
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sm_order4 = getelementptr inbounds %struct.nand_ecc_sw_hamming_conf, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %sm_order4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sm_order4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %phi.cmp = icmp ne i32 %5, 0
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i1 [ %phi.cmp, %cond.true ], [ false, %entry.cond.end_crit_edge ]
  %call = tail call i32 @ecc_sw_hamming_calculate(ptr noundef %buf, i32 noundef %3, ptr noundef %code, i1 noundef zeroext %cond)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ecc_sw_hamming_correct(ptr nocapture noundef %buf, ptr nocapture noundef readonly %read_ecc, ptr nocapture noundef readonly %calc_ecc, i32 noundef %step_size, i1 noundef zeroext %sm_order) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %step_size, 8
  br i1 %sm_order, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %read_ecc to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %read_ecc, align 1
  %2 = ptrtoint ptr %calc_ecc to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %calc_ecc, align 1
  %xor156 = xor i8 %3, %1
  %arrayidx4 = getelementptr i8, ptr %read_ecc, i32 1
  %arrayidx6 = getelementptr i8, ptr %calc_ecc, i32 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx10 = getelementptr i8, ptr %read_ecc, i32 1
  %4 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx10, align 1
  %arrayidx12 = getelementptr i8, ptr %calc_ecc, i32 1
  %6 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx12, align 1
  %xor14151 = xor i8 %7, %5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %calc_ecc.sink = phi ptr [ %calc_ecc, %if.else ], [ %arrayidx6, %if.then ]
  %.sink159.in = phi ptr [ %read_ecc, %if.else ], [ %arrayidx4, %if.then ]
  %b0.0 = phi i8 [ %xor14151, %if.else ], [ %xor156, %if.then ]
  %8 = ptrtoint ptr %.sink159.in to i32
  call void @__asan_load1_noabort(i32 %8)
  %.sink159 = load i8, ptr %.sink159.in, align 1
  %9 = ptrtoint ptr %calc_ecc.sink to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %calc_ecc.sink, align 1
  %xor20152 = xor i8 %10, %.sink159
  %arrayidx22 = getelementptr i8, ptr %read_ecc, i32 2
  %11 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx22, align 1
  %arrayidx24 = getelementptr i8, ptr %calc_ecc, i32 2
  %13 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx24, align 1
  %xor26153 = xor i8 %14, %12
  %conv28 = zext i8 %b0.0 to i32
  %conv29 = zext i8 %xor20152 to i32
  %or154 = or i8 %xor20152, %b0.0
  %conv30 = zext i8 %xor26153 to i32
  %or31155 = or i8 %or154, %xor26153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %or31155)
  %cmp = icmp eq i8 %or31155, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end34

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end34:                                         ; preds = %if.end
  %15 = lshr i32 %conv28, 1
  %xor38 = xor i32 %15, %conv28
  %and = and i32 %xor38, 85
  call void @__sanitizer_cov_trace_const_cmp4(i32 85, i32 %and)
  %cmp39 = icmp eq i32 %and, 85
  br i1 %cmp39, label %land.lhs.true, label %if.end34.if.end103_crit_edge

if.end34.if.end103_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end103

land.lhs.true:                                    ; preds = %if.end34
  %16 = lshr i32 %conv29, 1
  %xor44 = xor i32 %16, %conv29
  %and45 = and i32 %xor44, 85
  call void @__sanitizer_cov_trace_const_cmp4(i32 85, i32 %and45)
  %cmp46 = icmp eq i32 %and45, 85
  br i1 %cmp46, label %land.lhs.true48, label %land.lhs.true.if.end103_crit_edge

land.lhs.true.if.end103_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end103

land.lhs.true48:                                  ; preds = %land.lhs.true
  %17 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr, label %land.lhs.true48.if.end103_crit_edge [
    i32 1, label %land.lhs.true51
    i32 2, label %land.lhs.true61
  ]

land.lhs.true48.if.end103_crit_edge:              ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end103

land.lhs.true51:                                  ; preds = %land.lhs.true48
  %18 = lshr i32 %conv30, 1
  %xor55 = xor i32 %18, %conv30
  %and56 = and i32 %xor55, 84
  call void @__sanitizer_cov_trace_const_cmp4(i32 84, i32 %and56)
  %cmp57 = icmp eq i32 %and56, 84
  br i1 %cmp57, label %if.then72, label %land.lhs.true51.if.end103_crit_edge

land.lhs.true51.if.end103_crit_edge:              ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end103

land.lhs.true61:                                  ; preds = %land.lhs.true48
  %19 = lshr i32 %conv30, 1
  %xor65 = xor i32 %19, %conv30
  %and66 = and i32 %xor65, 85
  call void @__sanitizer_cov_trace_const_cmp4(i32 85, i32 %and66)
  %cmp67 = icmp eq i32 %and66, 85
  br i1 %cmp67, label %if.else78, label %land.lhs.true61.if.end103_crit_edge

land.lhs.true61.if.end103_crit_edge:              ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end103

if.then72:                                        ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx73 = getelementptr [256 x i8], ptr @addressbits, i32 0, i32 %conv29
  %20 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx73, align 1
  %conv74 = zext i8 %21 to i32
  %shl = shl nuw nsw i32 %conv74, 4
  br label %if.end93

if.else78:                                        ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #9
  %and80 = and i32 %conv30, 3
  %arrayidx81 = getelementptr [256 x i8], ptr @addressbits, i32 0, i32 %and80
  %22 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx81, align 1
  %conv82 = zext i8 %23 to i32
  %shl83 = shl nuw nsw i32 %conv82, 8
  %arrayidx85 = getelementptr [256 x i8], ptr @addressbits, i32 0, i32 %conv29
  %24 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx85, align 1
  %conv86 = zext i8 %25 to i32
  %shl87 = shl nuw nsw i32 %conv86, 4
  %add88 = add nuw nsw i32 %shl87, %shl83
  br label %if.end93

if.end93:                                         ; preds = %if.else78, %if.then72
  %add88.sink = phi i32 [ %add88, %if.else78 ], [ %shl, %if.then72 ]
  %arrayidx90 = getelementptr [256 x i8], ptr @addressbits, i32 0, i32 %conv28
  %26 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx90, align 1
  %conv91 = zext i8 %27 to i32
  %add92 = add nuw nsw i32 %add88.sink, %conv91
  %28 = lshr i32 %conv30, 2
  %arrayidx96 = getelementptr [256 x i8], ptr @addressbits, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx96, align 1
  %conv97 = zext i8 %30 to i32
  %shl98 = shl nuw i32 1, %conv97
  %arrayidx99 = getelementptr i8, ptr %buf, i32 %add92
  %31 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx99, align 1
  %33 = trunc i32 %shl98 to i8
  %conv102 = xor i8 %32, %33
  store i8 %conv102, ptr %arrayidx99, align 1
  br label %cleanup

if.end103:                                        ; preds = %land.lhs.true61.if.end103_crit_edge, %land.lhs.true51.if.end103_crit_edge, %land.lhs.true48.if.end103_crit_edge, %land.lhs.true.if.end103_crit_edge, %if.end34.if.end103_crit_edge
  %arrayidx105 = getelementptr [256 x i8], ptr @bitsperbyte, i32 0, i32 %conv28
  %34 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx105, align 1
  %conv106 = zext i8 %35 to i32
  %arrayidx108 = getelementptr [256 x i8], ptr @bitsperbyte, i32 0, i32 %conv29
  %36 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx108, align 1
  %conv109 = zext i8 %37 to i32
  %add110 = add nuw nsw i32 %conv109, %conv106
  %arrayidx112 = getelementptr [256 x i8], ptr @bitsperbyte, i32 0, i32 %conv30
  %38 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx112, align 1
  %conv113 = zext i8 %39 to i32
  %add114 = add nuw nsw i32 %add110, %conv113
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add114)
  %cmp115 = icmp eq i32 %add114, 1
  br i1 %cmp115, label %if.end103.cleanup_crit_edge, label %do.end

if.end103.cleanup_crit_edge:                      ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end103.cleanup_crit_edge, %if.end93, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end93 ], [ -74, %do.end ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %if.end103.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nand_ecc_sw_hamming_correct(ptr nocapture noundef readonly %nand, ptr nocapture noundef %buf, ptr nocapture noundef readonly %read_ecc, ptr nocapture noundef readonly %calc_ecc) #1 align 64 {
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
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sm_order4 = getelementptr inbounds %struct.nand_ecc_sw_hamming_conf, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %sm_order4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sm_order4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %phi.cmp = icmp ne i32 %5, 0
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i1 [ %phi.cmp, %cond.true ], [ false, %entry.cond.end_crit_edge ]
  %call = tail call i32 @ecc_sw_hamming_correct(ptr noundef %buf, ptr noundef %read_ecc, ptr noundef %calc_ecc, i32 noundef %3, i1 noundef zeroext %cond)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nand_ecc_sw_hamming_init_ctx(ptr noundef %nand) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 2, i32 3
  %ooblayout = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 15
  %0 = ptrtoint ptr %ooblayout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ooblayout, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 6
  %2 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %oobsize, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %3, label %if.then.cleanup_crit_edge [
    i32 8, label %if.then.sw.bb_crit_edge
    i32 16, label %if.then.sw.bb_crit_edge112
    i32 64, label %if.then.sw.bb3_crit_edge
    i32 128, label %if.then.sw.bb3_crit_edge113
  ]

if.then.sw.bb3_crit_edge113:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

if.then.sw.bb3_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

if.then.sw.bb_crit_edge112:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.then.sw.bb_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.then.sw.bb_crit_edge, %if.then.sw.bb_crit_edge112
  %call2 = tail call ptr @nand_get_small_page_ooblayout() #7
  br label %if.end.sink.split

sw.bb3:                                           ; preds = %if.then.sw.bb3_crit_edge, %if.then.sw.bb3_crit_edge113
  %call4 = tail call ptr @nand_get_large_page_hamming_ooblayout() #7
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %sw.bb3, %sw.bb
  %call2.sink = phi ptr [ %call2, %sw.bb ], [ %call4, %sw.bb3 ]
  %5 = ptrtoint ptr %ooblayout to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call2.sink, ptr %ooblayout, align 8
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %ctx, align 4
  %algo = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 2, i32 3, i32 0, i32 2
  %7 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %algo, align 4
  %step_size = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 2, i32 2, i32 4
  %8 = ptrtoint ptr %step_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %step_size, align 4
  %step_size6 = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 2, i32 3, i32 0, i32 4
  %10 = ptrtoint ptr %step_size6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %step_size6, align 4
  %strength = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 2, i32 3, i32 0, i32 3
  %11 = ptrtoint ptr %strength to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %strength, align 4
  %12 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %9, label %if.then10 [
    i32 256, label %if.end.if.end12_crit_edge
    i32 512, label %if.end.if.end12_crit_edge114
  ]

if.end.if.end12_crit_edge114:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %step_size6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 256, ptr %step_size6, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end.if.end12_crit_edge, %if.end.if.end12_crit_edge114
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 92) #11
  %tobool14.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool14.not, label %if.end12.cleanup_crit_edge, label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %call17 = tail call i32 @nand_ecc_init_req_tweaking(ptr noundef nonnull %call7.i.i, ptr noundef %nand) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.free_engine_conf_crit_edge

if.end16.free_engine_conf_crit_edge:              ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_engine_conf

if.end20:                                         ; preds = %if.end16
  %code_size = getelementptr inbounds %struct.nand_ecc_sw_hamming_conf, ptr %call7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %code_size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 3, ptr %code_size, align 4
  %oobsize21 = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 6
  %16 = ptrtoint ptr %oobsize21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %oobsize21, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %17, i32 noundef 3520) #12
  %calc_buf = getelementptr inbounds %struct.nand_ecc_sw_hamming_conf, ptr %call7.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %calc_buf to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call9.i.i, ptr %calc_buf, align 8
  %19 = ptrtoint ptr %oobsize21 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %oobsize21, align 4
  %call9.i.i108 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %20, i32 noundef 3520) #12
  %code_buf = getelementptr inbounds %struct.nand_ecc_sw_hamming_conf, ptr %call7.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %code_buf to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call9.i.i108, ptr %code_buf, align 4
  %22 = ptrtoint ptr %calc_buf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %calc_buf, align 8
  %tobool26.not = icmp eq ptr %23, null
  %tobool28.not = icmp eq ptr %call9.i.i108, null
  %or.cond = select i1 %tobool26.not, i1 true, i1 %tobool28.not
  br i1 %or.cond, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @nand_ecc_cleanup_req_tweaking(ptr noundef nonnull %call7.i.i) #7
  %24 = ptrtoint ptr %calc_buf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %calc_buf, align 8
  tail call void @kfree(ptr noundef %25) #7
  %26 = ptrtoint ptr %code_buf to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %code_buf, align 4
  tail call void @kfree(ptr noundef %27) #7
  br label %free_engine_conf

if.end30:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %priv = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 2, i32 3, i32 3
  %28 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call7.i.i, ptr %priv, align 4
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 4
  %29 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %writesize, align 4
  %31 = ptrtoint ptr %step_size6 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %step_size6, align 4
  %div = udiv i32 %30, %32
  %nsteps = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 2, i32 3, i32 1
  %33 = ptrtoint ptr %nsteps to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %div, ptr %nsteps, align 4
  %34 = ptrtoint ptr %code_size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %code_size, align 4
  %mul = mul i32 %35, %div
  %total = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 2, i32 3, i32 2
  %36 = ptrtoint ptr %total to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %mul, ptr %total, align 4
  br label %cleanup

free_engine_conf:                                 ; preds = %if.then29, %if.end16.free_engine_conf_crit_edge
  %ret.0 = phi i32 [ %call17, %if.end16.free_engine_conf_crit_edge ], [ -12, %if.then29 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %free_engine_conf, %if.end30, %if.end12.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %free_engine_conf ], [ 0, %if.end30 ], [ -524, %if.then.cleanup_crit_edge ], [ -12, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nand_get_small_page_ooblayout() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nand_get_large_page_hamming_ooblayout() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_ecc_init_req_tweaking(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_ecc_cleanup_req_tweaking(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nand_ecc_sw_hamming_cleanup_ctx(ptr nocapture noundef readonly %nand) #1 align 64 {
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
  tail call void @nand_ecc_cleanup_req_tweaking(ptr noundef nonnull %1) #7
  %calc_buf = getelementptr inbounds %struct.nand_ecc_sw_hamming_conf, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %calc_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %calc_buf, align 4
  tail call void @kfree(ptr noundef %3) #7
  %code_buf = getelementptr inbounds %struct.nand_ecc_sw_hamming_conf, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %code_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %code_buf, align 4
  tail call void @kfree(ptr noundef %5) #7
  tail call void @kfree(ptr noundef nonnull %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @nand_ecc_sw_hamming_get_engine() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @nand_ecc_sw_hamming_engine
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nand_ecc_sw_hamming_prepare_io_req(ptr noundef %nand, ptr noundef %req) #1 align 64 {
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
  %code_size = getelementptr inbounds %struct.nand_ecc_sw_hamming_conf, ptr %1, i32 0, i32 1
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
  %calc_buf = getelementptr inbounds %struct.nand_ecc_sw_hamming_conf, ptr %1, i32 0, i32 2
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

for.body:                                         ; preds = %nand_ecc_sw_hamming_calculate.exit.for.body_crit_edge, %for.body.preheader
  %i.043 = phi i32 [ %add, %nand_ecc_sw_hamming_calculate.exit.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %data.042 = phi ptr [ %add.ptr, %nand_ecc_sw_hamming_calculate.exit.for.body_crit_edge ], [ %19, %for.body.preheader ]
  %eccsteps.041 = phi i32 [ %dec, %nand_ecc_sw_hamming_calculate.exit.for.body_crit_edge ], [ %7, %for.body.preheader ]
  %arrayidx = getelementptr i8, ptr %11, i32 %i.043
  %20 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv, align 4
  %22 = ptrtoint ptr %step_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %step_size, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %for.body.nand_ecc_sw_hamming_calculate.exit_crit_edge, label %cond.true.i

for.body.nand_ecc_sw_hamming_calculate.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %nand_ecc_sw_hamming_calculate.exit

cond.true.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %sm_order4.i = getelementptr inbounds %struct.nand_ecc_sw_hamming_conf, ptr %21, i32 0, i32 4
  %24 = ptrtoint ptr %sm_order4.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sm_order4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %phi.cmp.i = icmp ne i32 %25, 0
  br label %nand_ecc_sw_hamming_calculate.exit

nand_ecc_sw_hamming_calculate.exit:               ; preds = %cond.true.i, %for.body.nand_ecc_sw_hamming_calculate.exit_crit_edge
  %cond.i = phi i1 [ %phi.cmp.i, %cond.true.i ], [ false, %for.body.nand_ecc_sw_hamming_calculate.exit_crit_edge ]
  %call.i = tail call i32 @ecc_sw_hamming_calculate(ptr noundef %data.042, i32 noundef %23, ptr noundef %arrayidx, i1 noundef zeroext %cond.i) #7
  %dec = add i32 %eccsteps.041, -1
  %add = add i32 %i.043, %5
  %add.ptr = getelementptr i8, ptr %data.042, i32 %3
  %tobool13.not = icmp eq i32 %dec, 0
  br i1 %tobool13.not, label %nand_ecc_sw_hamming_calculate.exit.for.end_crit_edge, label %nand_ecc_sw_hamming_calculate.exit.for.body_crit_edge

nand_ecc_sw_hamming_calculate.exit.for.body_crit_edge: ; preds = %nand_ecc_sw_hamming_calculate.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

nand_ecc_sw_hamming_calculate.exit.for.end_crit_edge: ; preds = %nand_ecc_sw_hamming_calculate.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %nand_ecc_sw_hamming_calculate.exit.for.end_crit_edge, %if.end12.for.end_crit_edge
  %oobbuf = getelementptr inbounds %struct.nand_page_io_req, ptr %req, i32 0, i32 7
  %26 = ptrtoint ptr %oobbuf to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %oobbuf, align 4
  %call15 = tail call i32 @mtd_ooblayout_set_eccbytes(ptr noundef %nand, ptr noundef %11, ptr noundef %27, i32 noundef 0, i32 noundef %9) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %for.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nand_ecc_sw_hamming_finish_io_req(ptr noundef %nand, ptr noundef %req) #1 align 64 {
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
  %code_size = getelementptr inbounds %struct.nand_ecc_sw_hamming_conf, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %code_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %code_size, align 4
  %nsteps = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 2, i32 3, i32 1
  %8 = ptrtoint ptr %nsteps to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nsteps, align 4
  %calc_buf = getelementptr inbounds %struct.nand_ecc_sw_hamming_conf, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %calc_buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %calc_buf, align 4
  %code_buf = getelementptr inbounds %struct.nand_ecc_sw_hamming_conf, ptr %1, i32 0, i32 3
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
  %tobool17.not100 = icmp eq i32 %9, 0
  br i1 %tobool17.not100, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %nand_ecc_sw_hamming_calculate.exit.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0103 = phi i32 [ %add, %nand_ecc_sw_hamming_calculate.exit.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %data.0102 = phi ptr [ %add.ptr, %nand_ecc_sw_hamming_calculate.exit.for.body_crit_edge ], [ %15, %for.cond.preheader.for.body_crit_edge ]
  %eccsteps.0101 = phi i32 [ %dec, %nand_ecc_sw_hamming_calculate.exit.for.body_crit_edge ], [ %9, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %11, i32 %i.0103
  %24 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv, align 4
  %26 = ptrtoint ptr %step_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %step_size, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %for.body.nand_ecc_sw_hamming_calculate.exit_crit_edge, label %cond.true.i

for.body.nand_ecc_sw_hamming_calculate.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %nand_ecc_sw_hamming_calculate.exit

cond.true.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %sm_order4.i = getelementptr inbounds %struct.nand_ecc_sw_hamming_conf, ptr %25, i32 0, i32 4
  %28 = ptrtoint ptr %sm_order4.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sm_order4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %phi.cmp.i = icmp ne i32 %29, 0
  br label %nand_ecc_sw_hamming_calculate.exit

nand_ecc_sw_hamming_calculate.exit:               ; preds = %cond.true.i, %for.body.nand_ecc_sw_hamming_calculate.exit_crit_edge
  %cond.i = phi i1 [ %phi.cmp.i, %cond.true.i ], [ false, %for.body.nand_ecc_sw_hamming_calculate.exit_crit_edge ]
  %call.i = tail call i32 @ecc_sw_hamming_calculate(ptr noundef %data.0102, i32 noundef %27, ptr noundef %arrayidx, i1 noundef zeroext %cond.i) #7
  %dec = add i32 %eccsteps.0101, -1
  %add = add i32 %i.0103, %7
  %add.ptr = getelementptr i8, ptr %data.0102, i32 %3
  %tobool17.not = icmp eq i32 %dec, 0
  br i1 %tobool17.not, label %nand_ecc_sw_hamming_calculate.exit.for.end_crit_edge, label %nand_ecc_sw_hamming_calculate.exit.for.body_crit_edge

nand_ecc_sw_hamming_calculate.exit.for.body_crit_edge: ; preds = %nand_ecc_sw_hamming_calculate.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

nand_ecc_sw_hamming_calculate.exit.for.end_crit_edge: ; preds = %nand_ecc_sw_hamming_calculate.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %nand_ecc_sw_hamming_calculate.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %30 = ptrtoint ptr %nsteps to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nsteps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool24.not104 = icmp eq i32 %31, 0
  br i1 %tobool24.not104, label %for.end.cleanup.sink.split_crit_edge, label %for.body25.lr.ph

for.end.cleanup.sink.split_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

for.body25.lr.ph:                                 ; preds = %for.end
  %32 = ptrtoint ptr %databuf to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %databuf, align 4
  %ecc_stats31 = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 52
  %failed = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 52, i32 1
  br label %for.body25

for.body25:                                       ; preds = %if.end34.for.body25_crit_edge, %for.body25.lr.ph
  %i.1108 = phi i32 [ 0, %for.body25.lr.ph ], [ %add37, %if.end34.for.body25_crit_edge ]
  %data.1107 = phi ptr [ %33, %for.body25.lr.ph ], [ %add.ptr38, %if.end34.for.body25_crit_edge ]
  %max_bitflips.0106 = phi i32 [ 0, %for.body25.lr.ph ], [ %max_bitflips.1, %if.end34.for.body25_crit_edge ]
  %eccsteps.1105 = phi i32 [ %31, %for.body25.lr.ph ], [ %dec36, %if.end34.for.body25_crit_edge ]
  %arrayidx26 = getelementptr i8, ptr %13, i32 %i.1108
  %arrayidx27 = getelementptr i8, ptr %11, i32 %i.1108
  %34 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %priv, align 4
  %36 = ptrtoint ptr %step_size to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %step_size, align 4
  %tobool.not.i94 = icmp eq ptr %35, null
  br i1 %tobool.not.i94, label %for.body25.nand_ecc_sw_hamming_correct.exit_crit_edge, label %cond.true.i97

for.body25.nand_ecc_sw_hamming_correct.exit_crit_edge: ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #9
  br label %nand_ecc_sw_hamming_correct.exit

cond.true.i97:                                    ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #9
  %sm_order4.i95 = getelementptr inbounds %struct.nand_ecc_sw_hamming_conf, ptr %35, i32 0, i32 4
  %38 = ptrtoint ptr %sm_order4.i95 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sm_order4.i95, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %phi.cmp.i96 = icmp ne i32 %39, 0
  br label %nand_ecc_sw_hamming_correct.exit

nand_ecc_sw_hamming_correct.exit:                 ; preds = %cond.true.i97, %for.body25.nand_ecc_sw_hamming_correct.exit_crit_edge
  %cond.i98 = phi i1 [ %phi.cmp.i96, %cond.true.i97 ], [ false, %for.body25.nand_ecc_sw_hamming_correct.exit_crit_edge ]
  %call.i99 = tail call i32 @ecc_sw_hamming_correct(ptr noundef %data.1107, ptr noundef %arrayidx26, ptr noundef %arrayidx27, i32 noundef %37, i1 noundef zeroext %cond.i98) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99)
  %cmp29 = icmp slt i32 %call.i99, 0
  br i1 %cmp29, label %if.then30, label %if.else

if.then30:                                        ; preds = %nand_ecc_sw_hamming_correct.exit
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %failed to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %failed, align 4
  %inc = add i32 %41, 1
  store i32 %inc, ptr %failed, align 4
  br label %if.end34

if.else:                                          ; preds = %nand_ecc_sw_hamming_correct.exit
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %ecc_stats31 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ecc_stats31, align 4
  %add32 = add i32 %43, %call.i99
  store i32 %add32, ptr %ecc_stats31, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %max_bitflips.0106, i32 %call.i99)
  %cmp33 = icmp ugt i32 %max_bitflips.0106, %call.i99
  %.call28 = select i1 %cmp33, i32 1, i32 %call.i99
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then30
  %max_bitflips.1 = phi i32 [ %max_bitflips.0106, %if.then30 ], [ %.call28, %if.else ]
  %dec36 = add i32 %eccsteps.1105, -1
  %add37 = add i32 %i.1108, %7
  %add.ptr38 = getelementptr i8, ptr %data.1107, i32 %3
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
declare dso_local void @nand_ecc_tweak_req(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_ooblayout_set_eccbytes(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_ecc_restore_req(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_ooblayout_get_eccbytes(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !16, !18, !20, !22, !23, !25, !27, !29, !31, !33, !35}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @__ksymtab_ecc_sw_hamming_calculate, !1, !"__ksymtab_ecc_sw_hamming_calculate", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/ecc-sw-hamming.c", i32 354, i32 1}
!2 = !{ptr @__ksymtab_nand_ecc_sw_hamming_calculate, !3, !"__ksymtab_nand_ecc_sw_hamming_calculate", i1 false, i1 false}
!3 = !{!"../drivers/mtd/nand/ecc-sw-hamming.c", i32 371, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/mtd/nand/ecc-sw-hamming.c", i32 440, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @ecc_sw_hamming_correct._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @ecc_sw_hamming_correct._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @__ksymtab_ecc_sw_hamming_correct, !11, !"__ksymtab_ecc_sw_hamming_correct", i1 false, i1 false}
!11 = !{!"../drivers/mtd/nand/ecc-sw-hamming.c", i32 443, i32 1}
!12 = !{ptr @__ksymtab_nand_ecc_sw_hamming_correct, !13, !"__ksymtab_nand_ecc_sw_hamming_correct", i1 false, i1 false}
!13 = !{!"../drivers/mtd/nand/ecc-sw-hamming.c", i32 465, i32 1}
!14 = !{ptr @__ksymtab_nand_ecc_sw_hamming_init_ctx, !15, !"__ksymtab_nand_ecc_sw_hamming_init_ctx", i1 false, i1 false}
!15 = !{!"../drivers/mtd/nand/ecc-sw-hamming.c", i32 530, i32 1}
!16 = !{ptr @__ksymtab_nand_ecc_sw_hamming_cleanup_ctx, !17, !"__ksymtab_nand_ecc_sw_hamming_cleanup_ctx", i1 false, i1 false}
!17 = !{!"../drivers/mtd/nand/ecc-sw-hamming.c", i32 543, i32 1}
!18 = !{ptr @__ksymtab_nand_ecc_sw_hamming_get_engine, !19, !"__ksymtab_nand_ecc_sw_hamming_get_engine", i1 false, i1 false}
!19 = !{!"../drivers/mtd/nand/ecc-sw-hamming.c", i32 656, i32 1}
!20 = !{ptr @__UNIQUE_ID_file195, !21, !"__UNIQUE_ID_file195", i1 false, i1 false}
!21 = !{!"../drivers/mtd/nand/ecc-sw-hamming.c", i32 658, i32 1}
!22 = !{ptr @__UNIQUE_ID_license196, !21, !"__UNIQUE_ID_license196", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_author197, !24, !"__UNIQUE_ID_author197", i1 false, i1 false}
!24 = !{!"../drivers/mtd/nand/ecc-sw-hamming.c", i32 659, i32 1}
!25 = !{ptr @__UNIQUE_ID_description198, !26, !"__UNIQUE_ID_description198", i1 false, i1 false}
!26 = !{!"../drivers/mtd/nand/ecc-sw-hamming.c", i32 660, i32 1}
!27 = !{ptr @invparity, !28, !"invparity", i1 false, i1 false}
!28 = !{!"../drivers/mtd/nand/ecc-sw-hamming.c", i32 31, i32 19}
!29 = !{ptr @addressbits, !30, !"addressbits", i1 false, i1 false}
!30 = !{!"../drivers/mtd/nand/ecc-sw-hamming.c", i32 80, i32 19}
!31 = !{ptr @bitsperbyte, !32, !"bitsperbyte", i1 false, i1 false}
!32 = !{!"../drivers/mtd/nand/ecc-sw-hamming.c", i32 55, i32 19}
!33 = !{ptr @nand_ecc_sw_hamming_engine, !34, !"nand_ecc_sw_hamming_engine", i1 false, i1 false}
!34 = !{!"../drivers/mtd/nand/ecc-sw-hamming.c", i32 648, i32 31}
!35 = !{ptr @nand_ecc_sw_hamming_engine_ops, !36, !"nand_ecc_sw_hamming_engine_ops", i1 false, i1 false}
!36 = !{!"../drivers/mtd/nand/ecc-sw-hamming.c", i32 641, i32 35}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
