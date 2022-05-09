; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/ecc.c_pt.bc'
source_filename = "../drivers/mtd/nand/ecc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+nand_ecc_init_ctx\22, \22a\22\09"
module asm "\09.weak\09__crc_nand_ecc_init_ctx\09\09\09\09"
module asm "\09.long\09__crc_nand_ecc_init_ctx\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_ecc_init_ctx:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_ecc_init_ctx\22\09\09\09\09\09"
module asm "__kstrtabns_nand_ecc_init_ctx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+nand_ecc_cleanup_ctx\22, \22a\22\09"
module asm "\09.weak\09__crc_nand_ecc_cleanup_ctx\09\09\09\09"
module asm "\09.long\09__crc_nand_ecc_cleanup_ctx\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_ecc_cleanup_ctx:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_ecc_cleanup_ctx\22\09\09\09\09\09"
module asm "__kstrtabns_nand_ecc_cleanup_ctx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+nand_ecc_prepare_io_req\22, \22a\22\09"
module asm "\09.weak\09__crc_nand_ecc_prepare_io_req\09\09\09\09"
module asm "\09.long\09__crc_nand_ecc_prepare_io_req\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_ecc_prepare_io_req:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_ecc_prepare_io_req\22\09\09\09\09\09"
module asm "__kstrtabns_nand_ecc_prepare_io_req:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+nand_ecc_finish_io_req\22, \22a\22\09"
module asm "\09.weak\09__crc_nand_ecc_finish_io_req\09\09\09\09"
module asm "\09.long\09__crc_nand_ecc_finish_io_req\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_ecc_finish_io_req:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_ecc_finish_io_req\22\09\09\09\09\09"
module asm "__kstrtabns_nand_ecc_finish_io_req:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nand_get_small_page_ooblayout\22, \22a\22\09"
module asm "\09.weak\09__crc_nand_get_small_page_ooblayout\09\09\09\09"
module asm "\09.long\09__crc_nand_get_small_page_ooblayout\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_get_small_page_ooblayout:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_get_small_page_ooblayout\22\09\09\09\09\09"
module asm "__kstrtabns_nand_get_small_page_ooblayout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nand_get_large_page_ooblayout\22, \22a\22\09"
module asm "\09.weak\09__crc_nand_get_large_page_ooblayout\09\09\09\09"
module asm "\09.long\09__crc_nand_get_large_page_ooblayout\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_get_large_page_ooblayout:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_get_large_page_ooblayout\22\09\09\09\09\09"
module asm "__kstrtabns_nand_get_large_page_ooblayout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nand_get_large_page_hamming_ooblayout\22, \22a\22\09"
module asm "\09.weak\09__crc_nand_get_large_page_hamming_ooblayout\09\09\09\09"
module asm "\09.long\09__crc_nand_get_large_page_hamming_ooblayout\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_get_large_page_hamming_ooblayout:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_get_large_page_hamming_ooblayout\22\09\09\09\09\09"
module asm "__kstrtabns_nand_get_large_page_hamming_ooblayout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+of_get_nand_ecc_user_config\22, \22a\22\09"
module asm "\09.weak\09__crc_of_get_nand_ecc_user_config\09\09\09\09"
module asm "\09.long\09__crc_of_get_nand_ecc_user_config\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_get_nand_ecc_user_config:\09\09\09\09\09"
module asm "\09.asciz \09\22of_get_nand_ecc_user_config\22\09\09\09\09\09"
module asm "__kstrtabns_of_get_nand_ecc_user_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+nand_ecc_is_strong_enough\22, \22a\22\09"
module asm "\09.weak\09__crc_nand_ecc_is_strong_enough\09\09\09\09"
module asm "\09.long\09__crc_nand_ecc_is_strong_enough\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_ecc_is_strong_enough:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_ecc_is_strong_enough\22\09\09\09\09\09"
module asm "__kstrtabns_nand_ecc_is_strong_enough:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nand_ecc_init_req_tweaking\22, \22a\22\09"
module asm "\09.weak\09__crc_nand_ecc_init_req_tweaking\09\09\09\09"
module asm "\09.long\09__crc_nand_ecc_init_req_tweaking\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_ecc_init_req_tweaking:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_ecc_init_req_tweaking\22\09\09\09\09\09"
module asm "__kstrtabns_nand_ecc_init_req_tweaking:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nand_ecc_cleanup_req_tweaking\22, \22a\22\09"
module asm "\09.weak\09__crc_nand_ecc_cleanup_req_tweaking\09\09\09\09"
module asm "\09.long\09__crc_nand_ecc_cleanup_req_tweaking\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_ecc_cleanup_req_tweaking:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_ecc_cleanup_req_tweaking\22\09\09\09\09\09"
module asm "__kstrtabns_nand_ecc_cleanup_req_tweaking:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nand_ecc_tweak_req\22, \22a\22\09"
module asm "\09.weak\09__crc_nand_ecc_tweak_req\09\09\09\09"
module asm "\09.long\09__crc_nand_ecc_tweak_req\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_ecc_tweak_req:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_ecc_tweak_req\22\09\09\09\09\09"
module asm "__kstrtabns_nand_ecc_tweak_req:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nand_ecc_restore_req\22, \22a\22\09"
module asm "\09.weak\09__crc_nand_ecc_restore_req\09\09\09\09"
module asm "\09.long\09__crc_nand_ecc_restore_req\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_ecc_restore_req:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_ecc_restore_req\22\09\09\09\09\09"
module asm "__kstrtabns_nand_ecc_restore_req:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+nand_ecc_get_sw_engine\22, \22a\22\09"
module asm "\09.weak\09__crc_nand_ecc_get_sw_engine\09\09\09\09"
module asm "\09.long\09__crc_nand_ecc_get_sw_engine\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_ecc_get_sw_engine:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_ecc_get_sw_engine\22\09\09\09\09\09"
module asm "__kstrtabns_nand_ecc_get_sw_engine:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+nand_ecc_get_on_die_hw_engine\22, \22a\22\09"
module asm "\09.weak\09__crc_nand_ecc_get_on_die_hw_engine\09\09\09\09"
module asm "\09.long\09__crc_nand_ecc_get_on_die_hw_engine\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_ecc_get_on_die_hw_engine:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_ecc_get_on_die_hw_engine\22\09\09\09\09\09"
module asm "__kstrtabns_nand_ecc_get_on_die_hw_engine:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mtd_ooblayout_ops = type { ptr, ptr }
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
%struct.nand_ecc_engine_ops = type { ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.nand_ecc_req_tweak_ctx = type { %struct.nand_page_io_req, ptr, i32, i32, ptr, ptr, i8, i8 }
%struct.nand_page_io_req = type { i32, %struct.nand_pos, i32, i32, %union.anon.44, i32, i32, %union.anon.45, i32 }
%struct.nand_pos = type { i32, i32, i32, i32, i32 }
%union.anon.44 = type { ptr }
%union.anon.45 = type { ptr }
%struct.mtd_oob_region = type { i32, i32 }

@__kstrtab_nand_ecc_init_ctx = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_ecc_init_ctx = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_ecc_init_ctx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_ecc_init_ctx to i32), ptr @__kstrtab_nand_ecc_init_ctx, ptr @__kstrtabns_nand_ecc_init_ctx }, section "___ksymtab+nand_ecc_init_ctx", align 4
@__kstrtab_nand_ecc_cleanup_ctx = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_ecc_cleanup_ctx = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_ecc_cleanup_ctx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_ecc_cleanup_ctx to i32), ptr @__kstrtab_nand_ecc_cleanup_ctx, ptr @__kstrtabns_nand_ecc_cleanup_ctx }, section "___ksymtab+nand_ecc_cleanup_ctx", align 4
@__kstrtab_nand_ecc_prepare_io_req = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_ecc_prepare_io_req = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_ecc_prepare_io_req = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_ecc_prepare_io_req to i32), ptr @__kstrtab_nand_ecc_prepare_io_req, ptr @__kstrtabns_nand_ecc_prepare_io_req }, section "___ksymtab+nand_ecc_prepare_io_req", align 4
@__kstrtab_nand_ecc_finish_io_req = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_ecc_finish_io_req = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_ecc_finish_io_req = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_ecc_finish_io_req to i32), ptr @__kstrtab_nand_ecc_finish_io_req, ptr @__kstrtabns_nand_ecc_finish_io_req }, section "___ksymtab+nand_ecc_finish_io_req", align 4
@nand_ooblayout_sp_ops = internal constant { %struct.mtd_ooblayout_ops, [24 x i8] } { %struct.mtd_ooblayout_ops { ptr @nand_ooblayout_ecc_sp, ptr @nand_ooblayout_free_sp }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_nand_get_small_page_ooblayout = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_get_small_page_ooblayout = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_get_small_page_ooblayout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_get_small_page_ooblayout to i32), ptr @__kstrtab_nand_get_small_page_ooblayout, ptr @__kstrtabns_nand_get_small_page_ooblayout }, section "___ksymtab_gpl+nand_get_small_page_ooblayout", align 4
@nand_ooblayout_lp_ops = internal constant { %struct.mtd_ooblayout_ops, [24 x i8] } { %struct.mtd_ooblayout_ops { ptr @nand_ooblayout_ecc_lp, ptr @nand_ooblayout_free_lp }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_nand_get_large_page_ooblayout = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_get_large_page_ooblayout = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_get_large_page_ooblayout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_get_large_page_ooblayout to i32), ptr @__kstrtab_nand_get_large_page_ooblayout, ptr @__kstrtabns_nand_get_large_page_ooblayout }, section "___ksymtab_gpl+nand_get_large_page_ooblayout", align 4
@nand_ooblayout_lp_hamming_ops = internal constant { %struct.mtd_ooblayout_ops, [24 x i8] } { %struct.mtd_ooblayout_ops { ptr @nand_ooblayout_ecc_lp_hamming, ptr @nand_ooblayout_free_lp_hamming }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_nand_get_large_page_hamming_ooblayout = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_get_large_page_hamming_ooblayout = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_get_large_page_hamming_ooblayout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_get_large_page_hamming_ooblayout to i32), ptr @__kstrtab_nand_get_large_page_hamming_ooblayout, ptr @__kstrtabns_nand_get_large_page_hamming_ooblayout }, section "___ksymtab_gpl+nand_get_large_page_hamming_ooblayout", align 4
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nand-ecc-maximize\00", [46 x i8] zeroinitializer }, align 32
@__kstrtab_of_get_nand_ecc_user_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_get_nand_ecc_user_config = external dso_local constant [0 x i8], align 1
@__ksymtab_of_get_nand_ecc_user_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_get_nand_ecc_user_config to i32), ptr @__kstrtab_of_get_nand_ecc_user_config, ptr @__kstrtabns_of_get_nand_ecc_user_config }, section "___ksymtab+of_get_nand_ecc_user_config", align 4
@__kstrtab_nand_ecc_is_strong_enough = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_ecc_is_strong_enough = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_ecc_is_strong_enough = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_ecc_is_strong_enough to i32), ptr @__kstrtab_nand_ecc_is_strong_enough, ptr @__kstrtabns_nand_ecc_is_strong_enough }, section "___ksymtab+nand_ecc_is_strong_enough", align 4
@__kstrtab_nand_ecc_init_req_tweaking = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_ecc_init_req_tweaking = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_ecc_init_req_tweaking = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_ecc_init_req_tweaking to i32), ptr @__kstrtab_nand_ecc_init_req_tweaking, ptr @__kstrtabns_nand_ecc_init_req_tweaking }, section "___ksymtab_gpl+nand_ecc_init_req_tweaking", align 4
@__kstrtab_nand_ecc_cleanup_req_tweaking = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_ecc_cleanup_req_tweaking = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_ecc_cleanup_req_tweaking = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_ecc_cleanup_req_tweaking to i32), ptr @__kstrtab_nand_ecc_cleanup_req_tweaking, ptr @__kstrtabns_nand_ecc_cleanup_req_tweaking }, section "___ksymtab_gpl+nand_ecc_cleanup_req_tweaking", align 4
@__kstrtab_nand_ecc_tweak_req = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_ecc_tweak_req = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_ecc_tweak_req = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_ecc_tweak_req to i32), ptr @__kstrtab_nand_ecc_tweak_req, ptr @__kstrtabns_nand_ecc_tweak_req }, section "___ksymtab_gpl+nand_ecc_tweak_req", align 4
@__kstrtab_nand_ecc_restore_req = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_ecc_restore_req = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_ecc_restore_req = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_ecc_restore_req to i32), ptr @__kstrtab_nand_ecc_restore_req, ptr @__kstrtabns_nand_ecc_restore_req }, section "___ksymtab_gpl+nand_ecc_restore_req", align 4
@__kstrtab_nand_ecc_get_sw_engine = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_ecc_get_sw_engine = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_ecc_get_sw_engine = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_ecc_get_sw_engine to i32), ptr @__kstrtab_nand_ecc_get_sw_engine, ptr @__kstrtabns_nand_ecc_get_sw_engine }, section "___ksymtab+nand_ecc_get_sw_engine", align 4
@__kstrtab_nand_ecc_get_on_die_hw_engine = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_ecc_get_on_die_hw_engine = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_ecc_get_on_die_hw_engine = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_ecc_get_on_die_hw_engine to i32), ptr @__kstrtab_nand_ecc_get_on_die_hw_engine, ptr @__kstrtabns_nand_ecc_get_on_die_hw_engine }, section "___ksymtab+nand_ecc_get_on_die_hw_engine", align 4
@__UNIQUE_ID_file193 = internal constant [40 x i8] c"nandcore.file=drivers/mtd/nand/nandcore\00", section ".modinfo", align 1
@__UNIQUE_ID_license194 = internal constant [21 x i8] c"nandcore.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author195 = internal constant [58 x i8] c"nandcore.author=Miquel Raynal <miquel.raynal@bootlin.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description196 = internal constant [40 x i8] c"nandcore.description=Generic ECC engine\00", section ".modinfo", align 1
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nand-no-ecc-engine\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nand-use-soft-ecc-engine\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nand-ecc-engine\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nand-ecc-algo\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hamming\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bch\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rs\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nand-ecc-placement\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"oob\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"interleaved\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nand-ecc-strength\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nand-ecc-step-size\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 64, i64 128]
@___asan_gen_.15 = private unnamed_addr constant [22 x i8] c"nand_ooblayout_sp_ops\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 206, i32 39 }
@___asan_gen_.18 = private unnamed_addr constant [22 x i8] c"nand_ooblayout_lp_ops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 247, i32 39 }
@___asan_gen_.21 = private unnamed_addr constant [30 x i8] c"nand_ooblayout_lp_hamming_ops\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 321, i32 39 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 439, i32 32 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 337, i32 32 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 340, i32 32 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 343, i32 32 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 391, i32 36 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 380, i32 28 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 381, i32 24 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 382, i32 23 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 367, i32 36 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 357, i32 29 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 358, i32 37 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 418, i32 33 }
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private constant [26 x i8] c"../drivers/mtd/nand/ecc.c\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 409, i32 33 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_author195, ptr @__UNIQUE_ID_description196, ptr @__UNIQUE_ID_file193, ptr @__UNIQUE_ID_license194, ptr @__ksymtab_nand_ecc_cleanup_ctx, ptr @__ksymtab_nand_ecc_cleanup_req_tweaking, ptr @__ksymtab_nand_ecc_finish_io_req, ptr @__ksymtab_nand_ecc_get_on_die_hw_engine, ptr @__ksymtab_nand_ecc_get_sw_engine, ptr @__ksymtab_nand_ecc_init_ctx, ptr @__ksymtab_nand_ecc_init_req_tweaking, ptr @__ksymtab_nand_ecc_is_strong_enough, ptr @__ksymtab_nand_ecc_prepare_io_req, ptr @__ksymtab_nand_ecc_restore_req, ptr @__ksymtab_nand_ecc_tweak_req, ptr @__ksymtab_nand_get_large_page_hamming_ooblayout, ptr @__ksymtab_nand_get_large_page_ooblayout, ptr @__ksymtab_nand_get_small_page_ooblayout, ptr @__ksymtab_of_get_nand_ecc_user_config, ptr @nand_ooblayout_sp_ops, ptr @nand_ooblayout_lp_ops, ptr @nand_ooblayout_lp_hamming_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_ooblayout_sp_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_ooblayout_lp_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_ooblayout_lp_hamming_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nand_ecc_init_ctx(ptr noundef %nand) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %engine = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 2, i32 5
  %0 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %engine, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 %5(ptr noundef %nand) #10
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %lor.lhs.false.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nand_ecc_cleanup_ctx(ptr noundef %nand) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %engine = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 2, i32 5
  %0 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %engine, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %cleanup_ctx = getelementptr inbounds %struct.nand_ecc_engine_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %cleanup_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cleanup_ctx, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %5(ptr noundef %nand) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nand_ecc_prepare_io_req(ptr noundef %nand, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %engine = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 2, i32 5
  %0 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %engine, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %prepare_io_req = getelementptr inbounds %struct.nand_ecc_engine_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %prepare_io_req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prepare_io_req, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 %5(ptr noundef %nand, ptr noundef %req) #10
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %lor.lhs.false.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nand_ecc_finish_io_req(ptr noundef %nand, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %engine = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 2, i32 5
  %0 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %engine, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %finish_io_req = getelementptr inbounds %struct.nand_ecc_engine_ops, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %finish_io_req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %finish_io_req, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 %5(ptr noundef %nand, ptr noundef %req) #10
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %lor.lhs.false.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @nand_get_small_page_ooblayout() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @nand_ooblayout_sp_ops
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @nand_get_large_page_ooblayout() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @nand_ooblayout_lp_ops
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @nand_get_large_page_hamming_ooblayout() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @nand_ooblayout_lp_hamming_ops
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @of_get_nand_ecc_user_config(ptr nocapture noundef %nand) #0 align 64 {
entry:
  %val.i50 = alloca i32, align 4
  %val.i = alloca i32, align 4
  %pm.i38 = alloca ptr, align 4
  %pm.i = alloca ptr, align 4
  %args.i.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node.i.i.i = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 56, i32 27
  %0 = ptrtoint ptr %of_node.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node.i.i.i, align 8
  %call.i.i = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef null) #10
  %tobool.i.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.i.not.i, label %if.end.i, label %entry.of_get_nand_ecc_engine_type.exit_crit_edge

entry.of_get_nand_ecc_engine_type.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %of_get_nand_ecc_engine_type.exit

if.end.i:                                         ; preds = %entry
  %call.i13.i = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef null) #10
  %tobool.i14.not.i = icmp eq ptr %call.i13.i, null
  br i1 %tobool.i14.not.i, label %if.end3.i, label %if.end.i.of_get_nand_ecc_engine_type.exit_crit_edge

if.end.i.of_get_nand_ecc_engine_type.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %of_get_nand_ecc_engine_type.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #10
  %2 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i15.i = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15.i)
  %tobool.not.i.i = icmp eq i32 %call.i15.i, 0
  br i1 %tobool.not.i.i, label %of_parse_phandle.exit.i, label %of_parse_phandle.exit.thread.i

of_parse_phandle.exit.thread.i:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #10
  call void @of_node_put(ptr noundef null) #10
  br label %of_get_nand_ecc_engine_type.exit

of_parse_phandle.exit.i:                          ; preds = %if.end3.i
  %3 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %args.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #10
  call void @of_node_put(ptr noundef %4) #10
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %of_parse_phandle.exit.i.of_get_nand_ecc_engine_type.exit_crit_edge, label %if.then5.i

of_parse_phandle.exit.i.of_get_nand_ecc_engine_type.exit_crit_edge: ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %of_get_nand_ecc_engine_type.exit

if.then5.i:                                       ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %cmp.i = icmp eq ptr %4, %1
  %..i = select i1 %cmp.i, i32 4, i32 3
  br label %of_get_nand_ecc_engine_type.exit

of_get_nand_ecc_engine_type.exit:                 ; preds = %if.then5.i, %of_parse_phandle.exit.i.of_get_nand_ecc_engine_type.exit_crit_edge, %of_parse_phandle.exit.thread.i, %if.end.i.of_get_nand_ecc_engine_type.exit_crit_edge, %entry.of_get_nand_ecc_engine_type.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %entry.of_get_nand_ecc_engine_type.exit_crit_edge ], [ 2, %if.end.i.of_get_nand_ecc_engine_type.exit_crit_edge ], [ %..i, %if.then5.i ], [ 0, %of_parse_phandle.exit.i.of_get_nand_ecc_engine_type.exit_crit_edge ], [ 0, %of_parse_phandle.exit.thread.i ]
  %user_conf = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 2, i32 2
  %5 = ptrtoint ptr %user_conf to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %retval.0.i, ptr %user_conf, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pm.i) #10
  %6 = ptrtoint ptr %pm.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %pm.i, align 4, !annotation !82
  %call.i = call i32 @of_property_read_string(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull %pm.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i36 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i36, label %for.cond.preheader.i, label %of_get_nand_ecc_engine_type.exit.of_get_nand_ecc_algo.exit_crit_edge

of_get_nand_ecc_engine_type.exit.of_get_nand_ecc_algo.exit_crit_edge: ; preds = %of_get_nand_ecc_engine_type.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %of_get_nand_ecc_algo.exit

for.cond.preheader.i:                             ; preds = %of_get_nand_ecc_engine_type.exit
  %7 = ptrtoint ptr %pm.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pm.i, align 4
  %call1.i = call i32 @strcasecmp(ptr noundef %8, ptr noundef nonnull @.str.5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %for.cond.preheader.i.of_get_nand_ecc_algo.exit_crit_edge, label %for.inc.i

for.cond.preheader.i.of_get_nand_ecc_algo.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %of_get_nand_ecc_algo.exit

for.inc.i:                                        ; preds = %for.cond.preheader.i
  %call1.1.i = call i32 @strcasecmp(ptr noundef %8, ptr noundef nonnull @.str.6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i)
  %tobool2.not.1.i = icmp eq i32 %call1.1.i, 0
  br i1 %tobool2.not.1.i, label %for.inc.i.of_get_nand_ecc_algo.exit_crit_edge, label %for.inc.1.i

for.inc.i.of_get_nand_ecc_algo.exit_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %of_get_nand_ecc_algo.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  %call1.2.i = call i32 @strcasecmp(ptr noundef %8, ptr noundef nonnull @.str.7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i)
  %tobool2.not.2.i = icmp eq i32 %call1.2.i, 0
  %spec.select.i = select i1 %tobool2.not.2.i, i32 3, i32 0
  br label %of_get_nand_ecc_algo.exit

of_get_nand_ecc_algo.exit:                        ; preds = %for.inc.1.i, %for.inc.i.of_get_nand_ecc_algo.exit_crit_edge, %for.cond.preheader.i.of_get_nand_ecc_algo.exit_crit_edge, %of_get_nand_ecc_engine_type.exit.of_get_nand_ecc_algo.exit_crit_edge
  %retval.0.i37 = phi i32 [ 0, %of_get_nand_ecc_engine_type.exit.of_get_nand_ecc_algo.exit_crit_edge ], [ 1, %for.cond.preheader.i.of_get_nand_ecc_algo.exit_crit_edge ], [ 2, %for.inc.i.of_get_nand_ecc_algo.exit_crit_edge ], [ %spec.select.i, %for.inc.1.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pm.i) #10
  %algo = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 2, i32 2, i32 2
  %9 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %retval.0.i37, ptr %algo, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pm.i38) #10
  %10 = ptrtoint ptr %pm.i38 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -1 to ptr), ptr %pm.i38, align 4, !annotation !82
  %call.i39 = call i32 @of_property_read_string(ptr noundef %1, ptr noundef nonnull @.str.8, ptr noundef nonnull %pm.i38) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39)
  %tobool.not.i40 = icmp eq i32 %call.i39, 0
  br i1 %tobool.not.i40, label %for.cond.preheader.i43, label %of_get_nand_ecc_algo.exit.of_get_nand_ecc_placement.exit_crit_edge

of_get_nand_ecc_algo.exit.of_get_nand_ecc_placement.exit_crit_edge: ; preds = %of_get_nand_ecc_algo.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %of_get_nand_ecc_placement.exit

for.cond.preheader.i43:                           ; preds = %of_get_nand_ecc_algo.exit
  %11 = ptrtoint ptr %pm.i38 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pm.i38, align 4
  %call1.i41 = call i32 @strcasecmp(ptr noundef %12, ptr noundef nonnull @.str.9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i41)
  %tobool2.not.i42 = icmp eq i32 %call1.i41, 0
  br i1 %tobool2.not.i42, label %for.cond.preheader.i43.of_get_nand_ecc_placement.exit_crit_edge, label %for.inc.i47

for.cond.preheader.i43.of_get_nand_ecc_placement.exit_crit_edge: ; preds = %for.cond.preheader.i43
  call void @__sanitizer_cov_trace_pc() #12
  br label %of_get_nand_ecc_placement.exit

for.inc.i47:                                      ; preds = %for.cond.preheader.i43
  call void @__sanitizer_cov_trace_pc() #12
  %call1.1.i44 = call i32 @strcasecmp(ptr noundef %12, ptr noundef nonnull @.str.10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i44)
  %tobool2.not.1.i45 = icmp eq i32 %call1.1.i44, 0
  %spec.select.i46 = select i1 %tobool2.not.1.i45, i32 2, i32 0
  br label %of_get_nand_ecc_placement.exit

of_get_nand_ecc_placement.exit:                   ; preds = %for.inc.i47, %for.cond.preheader.i43.of_get_nand_ecc_placement.exit_crit_edge, %of_get_nand_ecc_algo.exit.of_get_nand_ecc_placement.exit_crit_edge
  %retval.0.i48 = phi i32 [ 0, %of_get_nand_ecc_algo.exit.of_get_nand_ecc_placement.exit_crit_edge ], [ 1, %for.cond.preheader.i43.of_get_nand_ecc_placement.exit_crit_edge ], [ %spec.select.i46, %for.inc.i47 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pm.i38) #10
  %placement = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 2, i32 2, i32 1
  %13 = ptrtoint ptr %placement to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %retval.0.i48, ptr %placement, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #10
  %14 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %val.i, align 4, !annotation !82
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #10
  %15 = call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i49 = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i49, label %cond.false.i, label %of_get_nand_ecc_placement.exit.of_get_nand_ecc_strength.exit_crit_edge

of_get_nand_ecc_placement.exit.of_get_nand_ecc_strength.exit_crit_edge: ; preds = %of_get_nand_ecc_placement.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %of_get_nand_ecc_strength.exit

cond.false.i:                                     ; preds = %of_get_nand_ecc_placement.exit
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val.i, align 4
  br label %of_get_nand_ecc_strength.exit

of_get_nand_ecc_strength.exit:                    ; preds = %cond.false.i, %of_get_nand_ecc_placement.exit.of_get_nand_ecc_strength.exit_crit_edge
  %cond.i = phi i32 [ %17, %cond.false.i ], [ %15, %of_get_nand_ecc_placement.exit.of_get_nand_ecc_strength.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cond.i)
  %cmp = icmp sgt i32 %cond.i, -1
  br i1 %cmp, label %if.then, label %of_get_nand_ecc_strength.exit.if.end_crit_edge

of_get_nand_ecc_strength.exit.if.end_crit_edge:   ; preds = %of_get_nand_ecc_strength.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %of_get_nand_ecc_strength.exit
  call void @__sanitizer_cov_trace_pc() #12
  %strength11 = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 2, i32 2, i32 3
  %18 = ptrtoint ptr %strength11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %cond.i, ptr %strength11, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %of_get_nand_ecc_strength.exit.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i50) #10
  %19 = ptrtoint ptr %val.i50 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %val.i50, align 4, !annotation !82
  %call.i.i.i51 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.12, ptr noundef nonnull %val.i50, i32 noundef 1, i32 noundef 0) #10
  %20 = call i32 @llvm.smin.i32(i32 %call.i.i.i51, i32 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i51)
  %tobool.not.i52 = icmp sgt i32 %call.i.i.i51, -1
  br i1 %tobool.not.i52, label %cond.false.i53, label %if.end.of_get_nand_ecc_step_size.exit_crit_edge

if.end.of_get_nand_ecc_step_size.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %of_get_nand_ecc_step_size.exit

cond.false.i53:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %val.i50 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val.i50, align 4
  br label %of_get_nand_ecc_step_size.exit

of_get_nand_ecc_step_size.exit:                   ; preds = %cond.false.i53, %if.end.of_get_nand_ecc_step_size.exit_crit_edge
  %cond.i54 = phi i32 [ %22, %cond.false.i53 ], [ %20, %if.end.of_get_nand_ecc_step_size.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i50) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cond.i54)
  %cmp13 = icmp sgt i32 %cond.i54, -1
  br i1 %cmp13, label %if.then14, label %of_get_nand_ecc_step_size.exit.if.end17_crit_edge

of_get_nand_ecc_step_size.exit.if.end17_crit_edge: ; preds = %of_get_nand_ecc_step_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then14:                                        ; preds = %of_get_nand_ecc_step_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  %step_size = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 2, i32 2, i32 4
  %23 = ptrtoint ptr %step_size to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %cond.i54, ptr %step_size, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %of_get_nand_ecc_step_size.exit.if.end17_crit_edge
  %call.i55 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef null) #10
  %tobool.i.not = icmp eq ptr %call.i55, null
  br i1 %tobool.i.not, label %if.end17.if.end22_crit_edge, label %if.then19

if.end17.if.end22_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %flags = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 2, i32 2, i32 5
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags, align 4
  %or = or i32 %25, 1
  store i32 %or, ptr %flags, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end17.if.end22_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @nand_ecc_is_strong_enough(ptr nocapture noundef readonly %nand) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %step_size = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 2, i32 3, i32 0, i32 4
  %0 = ptrtoint ptr %step_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %step_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %step_size3 = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 2, i32 1, i32 4
  %2 = ptrtoint ptr %step_size3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %step_size3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp4 = icmp eq i32 %3, 0
  br i1 %cmp4, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 4
  %4 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %writesize, align 4
  %strength = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 2, i32 3, i32 0, i32 3
  %6 = ptrtoint ptr %strength to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %strength, align 4
  %mul = mul i32 %7, %5
  %div = udiv i32 %mul, %1
  %strength7 = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 2, i32 1, i32 3
  %8 = ptrtoint ptr %strength7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %strength7, align 4
  %mul8 = mul i32 %9, %5
  %div10 = udiv i32 %mul8, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %div10)
  %cmp11.not = icmp sge i32 %div, %div10
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp14 = icmp uge i32 %7, %9
  %spec.select = select i1 %cmp11.not, i1 %cmp14, i1 false
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %spec.select, %if.end ], [ true, %lor.lhs.false.cleanup_crit_edge ], [ true, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nand_ecc_init_req_tweaking(ptr nocapture noundef %ctx, ptr noundef %nand) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nand1 = getelementptr inbounds %struct.nand_ecc_req_tweak_ctx, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %nand1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %nand, ptr %nand1, align 4
  %page_buffer_size = getelementptr inbounds %struct.nand_ecc_req_tweak_ctx, ptr %ctx, i32 0, i32 2
  %1 = ptrtoint ptr %page_buffer_size to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %page_buffer_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pagesize.i = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %pagesize.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pagesize.i, align 4
  %5 = ptrtoint ptr %page_buffer_size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %page_buffer_size, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %oob_buffer_size = getelementptr inbounds %struct.nand_ecc_req_tweak_ctx, ptr %ctx, i32 0, i32 3
  %6 = ptrtoint ptr %oob_buffer_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %oob_buffer_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end8.i.i_crit_edge

if.end.if.end8.i.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %oobsize.i = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %oobsize.i, align 8
  %10 = ptrtoint ptr %oob_buffer_size to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %oob_buffer_size, align 4
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then4, %if.end.if.end8.i.i_crit_edge
  %11 = ptrtoint ptr %oob_buffer_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %oob_buffer_size, align 4
  %13 = ptrtoint ptr %page_buffer_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %page_buffer_size, align 4
  %add = add i32 %12, %14
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #13
  %spare_databuf = getelementptr inbounds %struct.nand_ecc_req_tweak_ctx, ptr %ctx, i32 0, i32 4
  %15 = ptrtoint ptr %spare_databuf to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call9.i.i, ptr %spare_databuf, align 4
  %tobool12.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool12.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end14

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %page_buffer_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %page_buffer_size, align 4
  %add.ptr = getelementptr i8, ptr %call9.i.i, i32 %17
  %spare_oobbuf = getelementptr inbounds %struct.nand_ecc_req_tweak_ctx, ptr %ctx, i32 0, i32 5
  %18 = ptrtoint ptr %spare_oobbuf to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr, ptr %spare_oobbuf, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end8.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ -12, %if.end8.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nand_ecc_cleanup_req_tweaking(ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %spare_databuf = getelementptr inbounds %struct.nand_ecc_req_tweak_ctx, ptr %ctx, i32 0, i32 4
  %0 = ptrtoint ptr %spare_databuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spare_databuf, align 4
  tail call void @kfree(ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @nand_ecc_tweak_req(ptr nocapture noundef %ctx, ptr nocapture noundef %req) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nand1 = getelementptr inbounds %struct.nand_ecc_req_tweak_ctx, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %nand1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nand1, align 4
  %2 = call ptr @memcpy(ptr %ctx, ptr %req, i32 52)
  %bounce_data = getelementptr inbounds %struct.nand_ecc_req_tweak_ctx, ptr %ctx, i32 0, i32 6
  %3 = ptrtoint ptr %bounce_data to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %bounce_data, align 4
  %bounce_oob = getelementptr inbounds %struct.nand_ecc_req_tweak_ctx, ptr %ctx, i32 0, i32 7
  %4 = ptrtoint ptr %bounce_oob to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %bounce_oob, align 1
  %datalen = getelementptr inbounds %struct.nand_page_io_req, ptr %ctx, i32 0, i32 3
  %5 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %datalen, align 4
  %pagesize.i = getelementptr inbounds %struct.nand_device, ptr %1, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %pagesize.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pagesize.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp = icmp ult i32 %6, %8
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %bounce_data to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %bounce_data, align 4
  %dataoffs = getelementptr inbounds %struct.nand_page_io_req, ptr %req, i32 0, i32 2
  %10 = ptrtoint ptr %dataoffs to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %dataoffs, align 4
  %11 = ptrtoint ptr %pagesize.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pagesize.i, align 4
  %datalen5 = getelementptr inbounds %struct.nand_page_io_req, ptr %req, i32 0, i32 3
  %13 = ptrtoint ptr %datalen5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %datalen5, align 4
  %spare_databuf = getelementptr inbounds %struct.nand_ecc_req_tweak_ctx, ptr %ctx, i32 0, i32 4
  %14 = ptrtoint ptr %spare_databuf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %spare_databuf, align 4
  %databuf = getelementptr inbounds %struct.nand_page_io_req, ptr %req, i32 0, i32 4
  %16 = ptrtoint ptr %databuf to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %databuf, align 4
  %page_buffer_size = getelementptr inbounds %struct.nand_ecc_req_tweak_ctx, ptr %ctx, i32 0, i32 2
  %17 = ptrtoint ptr %page_buffer_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %page_buffer_size, align 4
  %19 = call ptr @memset(ptr %15, i32 255, i32 %18)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ooblen = getelementptr inbounds %struct.nand_page_io_req, ptr %ctx, i32 0, i32 6
  %20 = ptrtoint ptr %ooblen to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ooblen, align 4
  %oobsize.i = getelementptr inbounds %struct.nand_device, ptr %1, i32 0, i32 1, i32 2
  %22 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %oobsize.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp8 = icmp ult i32 %21, %23
  br i1 %cmp8, label %if.then9, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %bounce_oob to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %bounce_oob, align 1
  %ooboffs = getelementptr inbounds %struct.nand_page_io_req, ptr %req, i32 0, i32 5
  %25 = ptrtoint ptr %ooboffs to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %ooboffs, align 4
  %26 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %oobsize.i, align 8
  %ooblen12 = getelementptr inbounds %struct.nand_page_io_req, ptr %req, i32 0, i32 6
  %28 = ptrtoint ptr %ooblen12 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %ooblen12, align 4
  %spare_oobbuf = getelementptr inbounds %struct.nand_ecc_req_tweak_ctx, ptr %ctx, i32 0, i32 5
  %29 = ptrtoint ptr %spare_oobbuf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %spare_oobbuf, align 4
  %oobbuf = getelementptr inbounds %struct.nand_page_io_req, ptr %req, i32 0, i32 7
  %31 = ptrtoint ptr %oobbuf to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %oobbuf, align 4
  %oob_buffer_size = getelementptr inbounds %struct.nand_ecc_req_tweak_ctx, ptr %ctx, i32 0, i32 3
  %32 = ptrtoint ptr %oob_buffer_size to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %oob_buffer_size, align 4
  %34 = call ptr @memset(ptr %30, i32 255, i32 %33)
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %if.end.if.end14_crit_edge
  %35 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp15 = icmp eq i32 %36, 1
  br i1 %cmp15, label %if.then16, label %if.end14.if.end33_crit_edge

if.end14.if.end33_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then16:                                        ; preds = %if.end14
  %37 = ptrtoint ptr %bounce_data to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %bounce_data, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not = icmp eq i8 %38, 0
  br i1 %tobool.not, label %if.then16.if.end23_crit_edge, label %if.then18

if.then16.if.end23_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then18:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  %databuf19 = getelementptr inbounds %struct.nand_page_io_req, ptr %req, i32 0, i32 4
  %39 = ptrtoint ptr %databuf19 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %databuf19, align 4
  %dataoffs20 = getelementptr inbounds %struct.nand_page_io_req, ptr %ctx, i32 0, i32 2
  %41 = ptrtoint ptr %dataoffs20 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dataoffs20, align 4
  %add.ptr = getelementptr i8, ptr %40, i32 %42
  %databuf21 = getelementptr inbounds %struct.nand_page_io_req, ptr %ctx, i32 0, i32 4
  %43 = ptrtoint ptr %databuf21 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %databuf21, align 4
  %45 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %datalen, align 4
  %47 = call ptr @memcpy(ptr %add.ptr, ptr %44, i32 %46)
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %if.then16.if.end23_crit_edge
  %48 = ptrtoint ptr %bounce_oob to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %bounce_oob, align 1, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool25.not = icmp eq i8 %49, 0
  br i1 %tobool25.not, label %if.end23.if.end33_crit_edge, label %if.then26

if.end23.if.end33_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %oobbuf27 = getelementptr inbounds %struct.nand_page_io_req, ptr %req, i32 0, i32 7
  %50 = ptrtoint ptr %oobbuf27 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %oobbuf27, align 4
  %ooboffs28 = getelementptr inbounds %struct.nand_page_io_req, ptr %ctx, i32 0, i32 5
  %52 = ptrtoint ptr %ooboffs28 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ooboffs28, align 4
  %add.ptr29 = getelementptr i8, ptr %51, i32 %53
  %oobbuf30 = getelementptr inbounds %struct.nand_page_io_req, ptr %ctx, i32 0, i32 7
  %54 = ptrtoint ptr %oobbuf30 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %oobbuf30, align 4
  %56 = ptrtoint ptr %ooblen to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ooblen, align 4
  %58 = call ptr @memcpy(ptr %add.ptr29, ptr %55, i32 %57)
  br label %if.end33

if.end33:                                         ; preds = %if.then26, %if.end23.if.end33_crit_edge, %if.end14.if.end33_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @nand_ecc_restore_req(ptr nocapture noundef readonly %ctx, ptr nocapture noundef %req) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then:                                          ; preds = %entry
  %bounce_data = getelementptr inbounds %struct.nand_ecc_req_tweak_ctx, ptr %ctx, i32 0, i32 6
  %2 = ptrtoint ptr %bounce_data to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bounce_data, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then1

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %databuf = getelementptr inbounds %struct.nand_page_io_req, ptr %ctx, i32 0, i32 4
  %4 = ptrtoint ptr %databuf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %databuf, align 4
  %databuf2 = getelementptr inbounds %struct.nand_page_io_req, ptr %req, i32 0, i32 4
  %6 = ptrtoint ptr %databuf2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %databuf2, align 4
  %dataoffs = getelementptr inbounds %struct.nand_page_io_req, ptr %ctx, i32 0, i32 2
  %8 = ptrtoint ptr %dataoffs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dataoffs, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %9
  %datalen = getelementptr inbounds %struct.nand_page_io_req, ptr %ctx, i32 0, i32 3
  %10 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %datalen, align 4
  %12 = call ptr @memcpy(ptr %5, ptr %add.ptr, i32 %11)
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then.if.end_crit_edge
  %bounce_oob = getelementptr inbounds %struct.nand_ecc_req_tweak_ctx, ptr %ctx, i32 0, i32 7
  %13 = ptrtoint ptr %bounce_oob to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bounce_oob, align 1, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool3.not = icmp eq i8 %14, 0
  br i1 %tobool3.not, label %if.end.if.end8_crit_edge, label %if.then4

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %oobbuf = getelementptr inbounds %struct.nand_page_io_req, ptr %ctx, i32 0, i32 7
  %15 = ptrtoint ptr %oobbuf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %oobbuf, align 4
  %oobbuf5 = getelementptr inbounds %struct.nand_page_io_req, ptr %req, i32 0, i32 7
  %17 = ptrtoint ptr %oobbuf5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %oobbuf5, align 4
  %ooboffs = getelementptr inbounds %struct.nand_page_io_req, ptr %ctx, i32 0, i32 5
  %19 = ptrtoint ptr %ooboffs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ooboffs, align 4
  %add.ptr6 = getelementptr i8, ptr %18, i32 %20
  %ooblen = getelementptr inbounds %struct.nand_page_io_req, ptr %ctx, i32 0, i32 6
  %21 = ptrtoint ptr %ooblen to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ooblen, align 4
  %23 = call ptr @memcpy(ptr %16, ptr %add.ptr6, i32 %22)
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end.if.end8_crit_edge, %entry.if.end8_crit_edge
  %24 = call ptr @memcpy(ptr %req, ptr %ctx, i32 52)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nand_ecc_get_sw_engine(ptr nocapture noundef readonly %nand) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %algo1 = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 2, i32 2, i32 2
  %0 = ptrtoint ptr %algo1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %algo1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %algo3 = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 2, i32 0, i32 2
  %2 = ptrtoint ptr %algo3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %algo3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %algo.0 = phi i32 [ %3, %if.then ], [ %1, %entry.if.end_crit_edge ]
  %4 = zext i32 %algo.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %algo.0, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb4
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call ptr @nand_ecc_sw_hamming_get_engine() #10
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call ptr @nand_ecc_sw_bch_get_engine() #10
  br label %cleanup

cleanup:                                          ; preds = %sw.bb4, %sw.bb, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %call5, %sw.bb4 ], [ %call, %sw.bb ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nand_ecc_sw_hamming_get_engine() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nand_ecc_sw_bch_get_engine() local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @nand_ecc_get_on_die_hw_engine(ptr nocapture noundef readonly %nand) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ondie_engine = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 2, i32 4
  %0 = ptrtoint ptr %ondie_engine to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ondie_engine, align 4
  ret ptr %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nand_ooblayout_ecc_sp(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %total = getelementptr inbounds %struct.nand_device, ptr %mtd, i32 0, i32 2, i32 3, i32 2
  %0 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %total, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %section)
  %cmp = icmp sgt i32 %section, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %section)
  %tobool.not = icmp eq i32 %section, 0
  br i1 %tobool.not, label %if.then1, label %if.else6

if.then1:                                         ; preds = %if.end
  %2 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %oobregion, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %3 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %oobsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %4)
  %cmp2 = icmp eq i32 %4, 16
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %length, align 4
  br label %cleanup

if.else:                                          ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3, ptr %length, align 4
  br label %cleanup

if.else6:                                         ; preds = %if.end
  %oobsize7 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %7 = ptrtoint ptr %oobsize7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %oobsize7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %8)
  %cmp8 = icmp eq i32 %8, 8
  br i1 %cmp8, label %if.else6.cleanup_crit_edge, label %if.end10

if.else6.cleanup_crit_edge:                       ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 6, ptr %oobregion, align 4
  %sub = add i32 %1, -4
  %length12 = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %10 = ptrtoint ptr %length12 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sub, ptr %length12, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.else6.cleanup_crit_edge, %if.else, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -34, %entry.cleanup_crit_edge ], [ -34, %if.else6.cleanup_crit_edge ], [ 0, %if.then3 ], [ 0, %if.else ], [ 0, %if.end10 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nand_ooblayout_free_sp(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %section)
  %cmp = icmp sgt i32 %section, 1
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %0 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %oobsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %cmp1 = icmp eq i32 %1, 16
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %section)
  %tobool.not = icmp eq i32 %section, 0
  br i1 %tobool.not, label %if.end4, label %if.then2.return_crit_edge

if.then2.return_crit_edge:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end4:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %2 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 8, ptr %length, align 4
  br label %return.sink.split

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %length5 = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %3 = ptrtoint ptr %length5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %length5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %section)
  %tobool6.not = icmp eq i32 %section, 0
  %. = select i1 %tobool6.not, i32 3, i32 6
  br label %return.sink.split

return.sink.split:                                ; preds = %if.else, %if.end4
  %.sink = phi i32 [ 8, %if.end4 ], [ %., %if.else ]
  %4 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %.sink, ptr %oobregion, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %if.then2.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -34, %entry.return_crit_edge ], [ -34, %if.then2.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nand_ooblayout_ecc_lp(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %total = getelementptr inbounds %struct.nand_device, ptr %mtd, i32 0, i32 2, i32 3, i32 2
  %0 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %total, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %section)
  %tobool.not = icmp ne i32 %section, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %2 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %length, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %3 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %oobsize, align 4
  %sub = sub i32 %4, %1
  %5 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %sub, ptr %oobregion, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nand_ooblayout_free_lp(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %section)
  %tobool.not = icmp eq i32 %section, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %total = getelementptr inbounds %struct.nand_device, ptr %mtd, i32 0, i32 2, i32 3, i32 2
  %0 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %total, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %2 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %oobsize, align 4
  %sub = sub i32 -2, %1
  %sub1 = add i32 %sub, %3
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %4 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sub1, ptr %length, align 4
  %5 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %oobregion, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nand_ooblayout_ecc_lp_hamming(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %total = getelementptr inbounds %struct.nand_device, ptr %mtd, i32 0, i32 2, i32 3, i32 2
  %0 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %total, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %section)
  %tobool.not = icmp eq i32 %section, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %2 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %oobsize, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %3, label %if.end.cleanup_crit_edge [
    i32 64, label %if.end.sw.epilog_crit_edge
    i32 128, label %sw.bb1
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %if.end.sw.epilog_crit_edge
  %storemerge = phi i32 [ 80, %sw.bb1 ], [ 40, %if.end.sw.epilog_crit_edge ]
  %5 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %storemerge, ptr %oobregion, align 4
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %6 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %1, ptr %length, align 4
  %add = add i32 %storemerge, %1
  %7 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %oobsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %8)
  %cmp = icmp ugt i32 %add, %8
  %. = select i1 %cmp, i32 -34, i32 0
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -34, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %., %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nand_ooblayout_free_lp_hamming(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %total = getelementptr inbounds %struct.nand_device, ptr %mtd, i32 0, i32 2, i32 3, i32 2
  %0 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %total, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %section)
  %2 = icmp ugt i32 %section, 1
  br i1 %2, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %3 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %oobsize, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %4, label %if.end.cleanup_crit_edge [
    i32 64, label %if.end.sw.epilog_crit_edge
    i32 128, label %sw.bb2
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %if.end.sw.epilog_crit_edge
  %ecc_offset.0 = phi i32 [ 80, %sw.bb2 ], [ 40, %if.end.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %section)
  %cmp3 = icmp eq i32 %section, 0
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %oobregion, align 4
  %sub = add nsw i32 %ecc_offset.0, -2
  br label %cleanup.sink.split

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %add = add i32 %ecc_offset.0, %1
  %7 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add, ptr %oobregion, align 4
  %8 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %oobsize, align 4
  %sub8 = sub i32 %9, %add
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else, %if.then4
  %sub.sink = phi i32 [ %sub, %if.then4 ], [ %sub8, %if.else ]
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %10 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sub.sink, ptr %length, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -34, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @__ksymtab_nand_ecc_init_ctx, !1, !"__ksymtab_nand_ecc_init_ctx", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/ecc.c", i32 113, i32 1}
!2 = !{ptr @__ksymtab_nand_ecc_cleanup_ctx, !3, !"__ksymtab_nand_ecc_cleanup_ctx", i1 false, i1 false}
!3 = !{!"../drivers/mtd/nand/ecc.c", i32 124, i32 1}
!4 = !{ptr @__ksymtab_nand_ecc_prepare_io_req, !5, !"__ksymtab_nand_ecc_prepare_io_req", i1 false, i1 false}
!5 = !{!"../drivers/mtd/nand/ecc.c", i32 139, i32 1}
!6 = !{ptr @__ksymtab_nand_ecc_finish_io_req, !7, !"__ksymtab_nand_ecc_finish_io_req", i1 false, i1 false}
!7 = !{!"../drivers/mtd/nand/ecc.c", i32 154, i32 1}
!8 = !{ptr @__ksymtab_nand_get_small_page_ooblayout, !9, !"__ksymtab_nand_get_small_page_ooblayout", i1 false, i1 false}
!9 = !{!"../drivers/mtd/nand/ecc.c", i32 215, i32 1}
!10 = !{ptr @__ksymtab_nand_get_large_page_ooblayout, !11, !"__ksymtab_nand_get_large_page_ooblayout", i1 false, i1 false}
!11 = !{!"../drivers/mtd/nand/ecc.c", i32 256, i32 1}
!12 = !{ptr @__ksymtab_nand_get_large_page_hamming_ooblayout, !13, !"__ksymtab_nand_get_large_page_hamming_ooblayout", i1 false, i1 false}
!13 = !{!"../drivers/mtd/nand/ecc.c", i32 330, i32 1}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mtd/nand/ecc.c", i32 439, i32 32}
!16 = !{ptr @__ksymtab_of_get_nand_ecc_user_config, !17, !"__ksymtab_of_get_nand_ecc_user_config", i1 false, i1 false}
!17 = !{!"../drivers/mtd/nand/ecc.c", i32 442, i32 1}
!18 = !{ptr @__ksymtab_nand_ecc_is_strong_enough, !19, !"__ksymtab_nand_ecc_is_strong_enough", i1 false, i1 false}
!19 = !{!"../drivers/mtd/nand/ecc.c", i32 481, i32 1}
!20 = !{ptr @__ksymtab_nand_ecc_init_req_tweaking, !21, !"__ksymtab_nand_ecc_init_req_tweaking", i1 false, i1 false}
!21 = !{!"../drivers/mtd/nand/ecc.c", i32 507, i32 1}
!22 = !{ptr @__ksymtab_nand_ecc_cleanup_req_tweaking, !23, !"__ksymtab_nand_ecc_cleanup_req_tweaking", i1 false, i1 false}
!23 = !{!"../drivers/mtd/nand/ecc.c", i32 513, i32 1}
!24 = !{ptr @__ksymtab_nand_ecc_tweak_req, !25, !"__ksymtab_nand_ecc_tweak_req", i1 false, i1 false}
!25 = !{!"../drivers/mtd/nand/ecc.c", i32 560, i32 1}
!26 = !{ptr @__ksymtab_nand_ecc_restore_req, !27, !"__ksymtab_nand_ecc_restore_req", i1 false, i1 false}
!27 = !{!"../drivers/mtd/nand/ecc.c", i32 586, i32 1}
!28 = !{ptr @__ksymtab_nand_ecc_get_sw_engine, !29, !"__ksymtab_nand_ecc_get_sw_engine", i1 false, i1 false}
!29 = !{!"../drivers/mtd/nand/ecc.c", i32 606, i32 1}
!30 = !{ptr @__ksymtab_nand_ecc_get_on_die_hw_engine, !31, !"__ksymtab_nand_ecc_get_on_die_hw_engine", i1 false, i1 false}
!31 = !{!"../drivers/mtd/nand/ecc.c", i32 612, i32 1}
!32 = !{ptr @__UNIQUE_ID_file193, !33, !"__UNIQUE_ID_file193", i1 false, i1 false}
!33 = !{!"../drivers/mtd/nand/ecc.c", i32 614, i32 1}
!34 = !{ptr @__UNIQUE_ID_license194, !33, !"__UNIQUE_ID_license194", i1 false, i1 false}
!35 = !{ptr @__UNIQUE_ID_author195, !36, !"__UNIQUE_ID_author195", i1 false, i1 false}
!36 = !{!"../drivers/mtd/nand/ecc.c", i32 615, i32 1}
!37 = !{ptr @__UNIQUE_ID_description196, !38, !"__UNIQUE_ID_description196", i1 false, i1 false}
!38 = !{!"../drivers/mtd/nand/ecc.c", i32 616, i32 1}
!39 = !{ptr @nand_ooblayout_sp_ops, !40, !"nand_ooblayout_sp_ops", i1 false, i1 false}
!40 = !{!"../drivers/mtd/nand/ecc.c", i32 206, i32 39}
!41 = !{ptr @nand_ooblayout_lp_ops, !42, !"nand_ooblayout_lp_ops", i1 false, i1 false}
!42 = !{!"../drivers/mtd/nand/ecc.c", i32 247, i32 39}
!43 = !{ptr @nand_ooblayout_lp_hamming_ops, !44, !"nand_ooblayout_lp_hamming_ops", i1 false, i1 false}
!44 = !{!"../drivers/mtd/nand/ecc.c", i32 321, i32 39}
!45 = !{ptr @.str.1, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/mtd/nand/ecc.c", i32 337, i32 32}
!47 = !{ptr @.str.2, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/mtd/nand/ecc.c", i32 340, i32 32}
!49 = !{ptr @.str.3, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/mtd/nand/ecc.c", i32 343, i32 32}
!51 = !{ptr @.str.4, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/mtd/nand/ecc.c", i32 391, i32 36}
!53 = !{ptr @.str.5, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/mtd/nand/ecc.c", i32 380, i32 28}
!55 = !{ptr @.str.6, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/mtd/nand/ecc.c", i32 381, i32 24}
!57 = !{ptr @.str.7, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/mtd/nand/ecc.c", i32 382, i32 23}
!59 = distinct !{null, !60, !"nand_ecc_algos", i1 false, i1 false}
!60 = !{!"../drivers/mtd/nand/ecc.c", i32 379, i32 27}
!61 = !{ptr @.str.8, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/mtd/nand/ecc.c", i32 367, i32 36}
!63 = !{ptr @.str.9, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/mtd/nand/ecc.c", i32 357, i32 29}
!65 = !{ptr @.str.10, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/mtd/nand/ecc.c", i32 358, i32 37}
!67 = distinct !{null, !68, !"nand_ecc_placement", i1 false, i1 false}
!68 = !{!"../drivers/mtd/nand/ecc.c", i32 356, i32 27}
!69 = !{ptr @.str.11, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/mtd/nand/ecc.c", i32 418, i32 33}
!71 = !{ptr @.str.12, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/mtd/nand/ecc.c", i32 409, i32 33}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{!"auto-init"}
!83 = !{i8 0, i8 2}
