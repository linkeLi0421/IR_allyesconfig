; ModuleID = '/llk/IR_all_yes/lib/kfifo.c_pt.bc'
source_filename = "../lib/kfifo.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+__kfifo_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc___kfifo_alloc\09\09\09\09"
module asm "\09.long\09__crc___kfifo_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___kfifo_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22__kfifo_alloc\22\09\09\09\09\09"
module asm "__kstrtabns___kfifo_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__kfifo_free\22, \22a\22\09"
module asm "\09.weak\09__crc___kfifo_free\09\09\09\09"
module asm "\09.long\09__crc___kfifo_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___kfifo_free:\09\09\09\09\09"
module asm "\09.asciz \09\22__kfifo_free\22\09\09\09\09\09"
module asm "__kstrtabns___kfifo_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__kfifo_init\22, \22a\22\09"
module asm "\09.weak\09__crc___kfifo_init\09\09\09\09"
module asm "\09.long\09__crc___kfifo_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___kfifo_init:\09\09\09\09\09"
module asm "\09.asciz \09\22__kfifo_init\22\09\09\09\09\09"
module asm "__kstrtabns___kfifo_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__kfifo_in\22, \22a\22\09"
module asm "\09.weak\09__crc___kfifo_in\09\09\09\09"
module asm "\09.long\09__crc___kfifo_in\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___kfifo_in:\09\09\09\09\09"
module asm "\09.asciz \09\22__kfifo_in\22\09\09\09\09\09"
module asm "__kstrtabns___kfifo_in:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__kfifo_out_peek\22, \22a\22\09"
module asm "\09.weak\09__crc___kfifo_out_peek\09\09\09\09"
module asm "\09.long\09__crc___kfifo_out_peek\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___kfifo_out_peek:\09\09\09\09\09"
module asm "\09.asciz \09\22__kfifo_out_peek\22\09\09\09\09\09"
module asm "__kstrtabns___kfifo_out_peek:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__kfifo_out\22, \22a\22\09"
module asm "\09.weak\09__crc___kfifo_out\09\09\09\09"
module asm "\09.long\09__crc___kfifo_out\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___kfifo_out:\09\09\09\09\09"
module asm "\09.asciz \09\22__kfifo_out\22\09\09\09\09\09"
module asm "__kstrtabns___kfifo_out:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__kfifo_from_user\22, \22a\22\09"
module asm "\09.weak\09__crc___kfifo_from_user\09\09\09\09"
module asm "\09.long\09__crc___kfifo_from_user\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___kfifo_from_user:\09\09\09\09\09"
module asm "\09.asciz \09\22__kfifo_from_user\22\09\09\09\09\09"
module asm "__kstrtabns___kfifo_from_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__kfifo_to_user\22, \22a\22\09"
module asm "\09.weak\09__crc___kfifo_to_user\09\09\09\09"
module asm "\09.long\09__crc___kfifo_to_user\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___kfifo_to_user:\09\09\09\09\09"
module asm "\09.asciz \09\22__kfifo_to_user\22\09\09\09\09\09"
module asm "__kstrtabns___kfifo_to_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__kfifo_dma_in_prepare\22, \22a\22\09"
module asm "\09.weak\09__crc___kfifo_dma_in_prepare\09\09\09\09"
module asm "\09.long\09__crc___kfifo_dma_in_prepare\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___kfifo_dma_in_prepare:\09\09\09\09\09"
module asm "\09.asciz \09\22__kfifo_dma_in_prepare\22\09\09\09\09\09"
module asm "__kstrtabns___kfifo_dma_in_prepare:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__kfifo_dma_out_prepare\22, \22a\22\09"
module asm "\09.weak\09__crc___kfifo_dma_out_prepare\09\09\09\09"
module asm "\09.long\09__crc___kfifo_dma_out_prepare\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___kfifo_dma_out_prepare:\09\09\09\09\09"
module asm "\09.asciz \09\22__kfifo_dma_out_prepare\22\09\09\09\09\09"
module asm "__kstrtabns___kfifo_dma_out_prepare:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__kfifo_max_r\22, \22a\22\09"
module asm "\09.weak\09__crc___kfifo_max_r\09\09\09\09"
module asm "\09.long\09__crc___kfifo_max_r\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___kfifo_max_r:\09\09\09\09\09"
module asm "\09.asciz \09\22__kfifo_max_r\22\09\09\09\09\09"
module asm "__kstrtabns___kfifo_max_r:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__kfifo_len_r\22, \22a\22\09"
module asm "\09.weak\09__crc___kfifo_len_r\09\09\09\09"
module asm "\09.long\09__crc___kfifo_len_r\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___kfifo_len_r:\09\09\09\09\09"
module asm "\09.asciz \09\22__kfifo_len_r\22\09\09\09\09\09"
module asm "__kstrtabns___kfifo_len_r:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__kfifo_in_r\22, \22a\22\09"
module asm "\09.weak\09__crc___kfifo_in_r\09\09\09\09"
module asm "\09.long\09__crc___kfifo_in_r\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___kfifo_in_r:\09\09\09\09\09"
module asm "\09.asciz \09\22__kfifo_in_r\22\09\09\09\09\09"
module asm "__kstrtabns___kfifo_in_r:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__kfifo_out_peek_r\22, \22a\22\09"
module asm "\09.weak\09__crc___kfifo_out_peek_r\09\09\09\09"
module asm "\09.long\09__crc___kfifo_out_peek_r\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___kfifo_out_peek_r:\09\09\09\09\09"
module asm "\09.asciz \09\22__kfifo_out_peek_r\22\09\09\09\09\09"
module asm "__kstrtabns___kfifo_out_peek_r:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__kfifo_out_r\22, \22a\22\09"
module asm "\09.weak\09__crc___kfifo_out_r\09\09\09\09"
module asm "\09.long\09__crc___kfifo_out_r\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___kfifo_out_r:\09\09\09\09\09"
module asm "\09.asciz \09\22__kfifo_out_r\22\09\09\09\09\09"
module asm "__kstrtabns___kfifo_out_r:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__kfifo_skip_r\22, \22a\22\09"
module asm "\09.weak\09__crc___kfifo_skip_r\09\09\09\09"
module asm "\09.long\09__crc___kfifo_skip_r\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___kfifo_skip_r:\09\09\09\09\09"
module asm "\09.asciz \09\22__kfifo_skip_r\22\09\09\09\09\09"
module asm "__kstrtabns___kfifo_skip_r:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__kfifo_from_user_r\22, \22a\22\09"
module asm "\09.weak\09__crc___kfifo_from_user_r\09\09\09\09"
module asm "\09.long\09__crc___kfifo_from_user_r\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___kfifo_from_user_r:\09\09\09\09\09"
module asm "\09.asciz \09\22__kfifo_from_user_r\22\09\09\09\09\09"
module asm "__kstrtabns___kfifo_from_user_r:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__kfifo_to_user_r\22, \22a\22\09"
module asm "\09.weak\09__crc___kfifo_to_user_r\09\09\09\09"
module asm "\09.long\09__crc___kfifo_to_user_r\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___kfifo_to_user_r:\09\09\09\09\09"
module asm "\09.asciz \09\22__kfifo_to_user_r\22\09\09\09\09\09"
module asm "__kstrtabns___kfifo_to_user_r:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__kfifo_dma_in_prepare_r\22, \22a\22\09"
module asm "\09.weak\09__crc___kfifo_dma_in_prepare_r\09\09\09\09"
module asm "\09.long\09__crc___kfifo_dma_in_prepare_r\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___kfifo_dma_in_prepare_r:\09\09\09\09\09"
module asm "\09.asciz \09\22__kfifo_dma_in_prepare_r\22\09\09\09\09\09"
module asm "__kstrtabns___kfifo_dma_in_prepare_r:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__kfifo_dma_in_finish_r\22, \22a\22\09"
module asm "\09.weak\09__crc___kfifo_dma_in_finish_r\09\09\09\09"
module asm "\09.long\09__crc___kfifo_dma_in_finish_r\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___kfifo_dma_in_finish_r:\09\09\09\09\09"
module asm "\09.asciz \09\22__kfifo_dma_in_finish_r\22\09\09\09\09\09"
module asm "__kstrtabns___kfifo_dma_in_finish_r:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__kfifo_dma_out_prepare_r\22, \22a\22\09"
module asm "\09.weak\09__crc___kfifo_dma_out_prepare_r\09\09\09\09"
module asm "\09.long\09__crc___kfifo_dma_out_prepare_r\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___kfifo_dma_out_prepare_r:\09\09\09\09\09"
module asm "\09.asciz \09\22__kfifo_dma_out_prepare_r\22\09\09\09\09\09"
module asm "__kstrtabns___kfifo_dma_out_prepare_r:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__kfifo_dma_out_finish_r\22, \22a\22\09"
module asm "\09.weak\09__crc___kfifo_dma_out_finish_r\09\09\09\09"
module asm "\09.long\09__crc___kfifo_dma_out_finish_r\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___kfifo_dma_out_finish_r:\09\09\09\09\09"
module asm "\09.asciz \09\22__kfifo_dma_out_finish_r\22\09\09\09\09\09"
module asm "__kstrtabns___kfifo_dma_out_finish_r:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.7, %union.anon.38, %struct.atomic_t, i32 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.38 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

@__kstrtab___kfifo_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns___kfifo_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab___kfifo_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__kfifo_alloc to i32), ptr @__kstrtab___kfifo_alloc, ptr @__kstrtabns___kfifo_alloc }, section "___ksymtab+__kfifo_alloc", align 4
@__kstrtab___kfifo_free = external dso_local constant [0 x i8], align 1
@__kstrtabns___kfifo_free = external dso_local constant [0 x i8], align 1
@__ksymtab___kfifo_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__kfifo_free to i32), ptr @__kstrtab___kfifo_free, ptr @__kstrtabns___kfifo_free }, section "___ksymtab+__kfifo_free", align 4
@__kstrtab___kfifo_init = external dso_local constant [0 x i8], align 1
@__kstrtabns___kfifo_init = external dso_local constant [0 x i8], align 1
@__ksymtab___kfifo_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__kfifo_init to i32), ptr @__kstrtab___kfifo_init, ptr @__kstrtabns___kfifo_init }, section "___ksymtab+__kfifo_init", align 4
@__kstrtab___kfifo_in = external dso_local constant [0 x i8], align 1
@__kstrtabns___kfifo_in = external dso_local constant [0 x i8], align 1
@__ksymtab___kfifo_in = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__kfifo_in to i32), ptr @__kstrtab___kfifo_in, ptr @__kstrtabns___kfifo_in }, section "___ksymtab+__kfifo_in", align 4
@__kstrtab___kfifo_out_peek = external dso_local constant [0 x i8], align 1
@__kstrtabns___kfifo_out_peek = external dso_local constant [0 x i8], align 1
@__ksymtab___kfifo_out_peek = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__kfifo_out_peek to i32), ptr @__kstrtab___kfifo_out_peek, ptr @__kstrtabns___kfifo_out_peek }, section "___ksymtab+__kfifo_out_peek", align 4
@__kstrtab___kfifo_out = external dso_local constant [0 x i8], align 1
@__kstrtabns___kfifo_out = external dso_local constant [0 x i8], align 1
@__ksymtab___kfifo_out = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__kfifo_out to i32), ptr @__kstrtab___kfifo_out, ptr @__kstrtabns___kfifo_out }, section "___ksymtab+__kfifo_out", align 4
@__kstrtab___kfifo_from_user = external dso_local constant [0 x i8], align 1
@__kstrtabns___kfifo_from_user = external dso_local constant [0 x i8], align 1
@__ksymtab___kfifo_from_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__kfifo_from_user to i32), ptr @__kstrtab___kfifo_from_user, ptr @__kstrtabns___kfifo_from_user }, section "___ksymtab+__kfifo_from_user", align 4
@__kstrtab___kfifo_to_user = external dso_local constant [0 x i8], align 1
@__kstrtabns___kfifo_to_user = external dso_local constant [0 x i8], align 1
@__ksymtab___kfifo_to_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__kfifo_to_user to i32), ptr @__kstrtab___kfifo_to_user, ptr @__kstrtabns___kfifo_to_user }, section "___ksymtab+__kfifo_to_user", align 4
@__kstrtab___kfifo_dma_in_prepare = external dso_local constant [0 x i8], align 1
@__kstrtabns___kfifo_dma_in_prepare = external dso_local constant [0 x i8], align 1
@__ksymtab___kfifo_dma_in_prepare = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__kfifo_dma_in_prepare to i32), ptr @__kstrtab___kfifo_dma_in_prepare, ptr @__kstrtabns___kfifo_dma_in_prepare }, section "___ksymtab+__kfifo_dma_in_prepare", align 4
@__kstrtab___kfifo_dma_out_prepare = external dso_local constant [0 x i8], align 1
@__kstrtabns___kfifo_dma_out_prepare = external dso_local constant [0 x i8], align 1
@__ksymtab___kfifo_dma_out_prepare = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__kfifo_dma_out_prepare to i32), ptr @__kstrtab___kfifo_dma_out_prepare, ptr @__kstrtabns___kfifo_dma_out_prepare }, section "___ksymtab+__kfifo_dma_out_prepare", align 4
@__kstrtab___kfifo_max_r = external dso_local constant [0 x i8], align 1
@__kstrtabns___kfifo_max_r = external dso_local constant [0 x i8], align 1
@__ksymtab___kfifo_max_r = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__kfifo_max_r to i32), ptr @__kstrtab___kfifo_max_r, ptr @__kstrtabns___kfifo_max_r }, section "___ksymtab+__kfifo_max_r", align 4
@__kstrtab___kfifo_len_r = external dso_local constant [0 x i8], align 1
@__kstrtabns___kfifo_len_r = external dso_local constant [0 x i8], align 1
@__ksymtab___kfifo_len_r = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__kfifo_len_r to i32), ptr @__kstrtab___kfifo_len_r, ptr @__kstrtabns___kfifo_len_r }, section "___ksymtab+__kfifo_len_r", align 4
@__kstrtab___kfifo_in_r = external dso_local constant [0 x i8], align 1
@__kstrtabns___kfifo_in_r = external dso_local constant [0 x i8], align 1
@__ksymtab___kfifo_in_r = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__kfifo_in_r to i32), ptr @__kstrtab___kfifo_in_r, ptr @__kstrtabns___kfifo_in_r }, section "___ksymtab+__kfifo_in_r", align 4
@__kstrtab___kfifo_out_peek_r = external dso_local constant [0 x i8], align 1
@__kstrtabns___kfifo_out_peek_r = external dso_local constant [0 x i8], align 1
@__ksymtab___kfifo_out_peek_r = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__kfifo_out_peek_r to i32), ptr @__kstrtab___kfifo_out_peek_r, ptr @__kstrtabns___kfifo_out_peek_r }, section "___ksymtab+__kfifo_out_peek_r", align 4
@__kstrtab___kfifo_out_r = external dso_local constant [0 x i8], align 1
@__kstrtabns___kfifo_out_r = external dso_local constant [0 x i8], align 1
@__ksymtab___kfifo_out_r = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__kfifo_out_r to i32), ptr @__kstrtab___kfifo_out_r, ptr @__kstrtabns___kfifo_out_r }, section "___ksymtab+__kfifo_out_r", align 4
@__kstrtab___kfifo_skip_r = external dso_local constant [0 x i8], align 1
@__kstrtabns___kfifo_skip_r = external dso_local constant [0 x i8], align 1
@__ksymtab___kfifo_skip_r = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__kfifo_skip_r to i32), ptr @__kstrtab___kfifo_skip_r, ptr @__kstrtabns___kfifo_skip_r }, section "___ksymtab+__kfifo_skip_r", align 4
@__kstrtab___kfifo_from_user_r = external dso_local constant [0 x i8], align 1
@__kstrtabns___kfifo_from_user_r = external dso_local constant [0 x i8], align 1
@__ksymtab___kfifo_from_user_r = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__kfifo_from_user_r to i32), ptr @__kstrtab___kfifo_from_user_r, ptr @__kstrtabns___kfifo_from_user_r }, section "___ksymtab+__kfifo_from_user_r", align 4
@__kstrtab___kfifo_to_user_r = external dso_local constant [0 x i8], align 1
@__kstrtabns___kfifo_to_user_r = external dso_local constant [0 x i8], align 1
@__ksymtab___kfifo_to_user_r = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__kfifo_to_user_r to i32), ptr @__kstrtab___kfifo_to_user_r, ptr @__kstrtabns___kfifo_to_user_r }, section "___ksymtab+__kfifo_to_user_r", align 4
@__kstrtab___kfifo_dma_in_prepare_r = external dso_local constant [0 x i8], align 1
@__kstrtabns___kfifo_dma_in_prepare_r = external dso_local constant [0 x i8], align 1
@__ksymtab___kfifo_dma_in_prepare_r = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__kfifo_dma_in_prepare_r to i32), ptr @__kstrtab___kfifo_dma_in_prepare_r, ptr @__kstrtabns___kfifo_dma_in_prepare_r }, section "___ksymtab+__kfifo_dma_in_prepare_r", align 4
@__kstrtab___kfifo_dma_in_finish_r = external dso_local constant [0 x i8], align 1
@__kstrtabns___kfifo_dma_in_finish_r = external dso_local constant [0 x i8], align 1
@__ksymtab___kfifo_dma_in_finish_r = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__kfifo_dma_in_finish_r to i32), ptr @__kstrtab___kfifo_dma_in_finish_r, ptr @__kstrtabns___kfifo_dma_in_finish_r }, section "___ksymtab+__kfifo_dma_in_finish_r", align 4
@__kstrtab___kfifo_dma_out_prepare_r = external dso_local constant [0 x i8], align 1
@__kstrtabns___kfifo_dma_out_prepare_r = external dso_local constant [0 x i8], align 1
@__ksymtab___kfifo_dma_out_prepare_r = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__kfifo_dma_out_prepare_r to i32), ptr @__kstrtab___kfifo_dma_out_prepare_r, ptr @__kstrtabns___kfifo_dma_out_prepare_r }, section "___ksymtab+__kfifo_dma_out_prepare_r", align 4
@__kstrtab___kfifo_dma_out_finish_r = external dso_local constant [0 x i8], align 1
@__kstrtabns___kfifo_dma_out_finish_r = external dso_local constant [0 x i8], align 1
@__ksymtab___kfifo_dma_out_finish_r = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__kfifo_dma_out_finish_r to i32), ptr @__kstrtab___kfifo_dma_out_finish_r, ptr @__kstrtabns___kfifo_dma_out_finish_r }, section "___ksymtab+__kfifo_dma_out_finish_r", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@___asan_gen_ = private constant [15 x i8] c"../lib/kfifo.c\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 230, i32 6 }
@___asan_gen_.7 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 214, i32 2 }
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 156, i32 2 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__ksymtab___kfifo_alloc, ptr @__ksymtab___kfifo_dma_in_finish_r, ptr @__ksymtab___kfifo_dma_in_prepare, ptr @__ksymtab___kfifo_dma_in_prepare_r, ptr @__ksymtab___kfifo_dma_out_finish_r, ptr @__ksymtab___kfifo_dma_out_prepare, ptr @__ksymtab___kfifo_dma_out_prepare_r, ptr @__ksymtab___kfifo_free, ptr @__ksymtab___kfifo_from_user, ptr @__ksymtab___kfifo_from_user_r, ptr @__ksymtab___kfifo_in, ptr @__ksymtab___kfifo_in_r, ptr @__ksymtab___kfifo_init, ptr @__ksymtab___kfifo_len_r, ptr @__ksymtab___kfifo_max_r, ptr @__ksymtab___kfifo_out, ptr @__ksymtab___kfifo_out_peek, ptr @__ksymtab___kfifo_out_peek_r, ptr @__ksymtab___kfifo_out_r, ptr @__ksymtab___kfifo_skip_r, ptr @__ksymtab___kfifo_to_user, ptr @__ksymtab___kfifo_to_user_r, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__kfifo_alloc(ptr nocapture noundef writeonly %fifo, i32 noundef %size, i32 noundef %esize, i32 noundef %gfp_mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i48 = add i32 %size, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i48)
  %tobool.not.i.i.i = icmp eq i32 %sub.i48, 0
  br i1 %tobool.not.i.i.i, label %cond.end17.thread, label %cond.end17

cond.end17.thread:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %fifo to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %fifo, align 4
  %out51 = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 1
  %1 = ptrtoint ptr %out51 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %out51, align 4
  %esize1952 = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 3
  %2 = ptrtoint ptr %esize1952 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %esize, ptr %esize1952, align 4
  br label %return.sink.split

cond.end17:                                       ; preds = %entry
  %3 = tail call i32 @llvm.ctlz.i32(i32 %sub.i48, i1 true) #12, !range !60
  %sub.i.i.i = sub nuw nsw i32 32, %3
  %cond18 = shl nuw i32 1, %sub.i.i.i
  %4 = ptrtoint ptr %fifo to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %fifo, align 4
  %out = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 1
  %5 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %out, align 4
  %esize19 = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 3
  %6 = ptrtoint ptr %esize19 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %esize, ptr %esize19, align 4
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %esize, i32 %cond18) #12
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %cond.end17.return.sink.split_crit_edge, label %if.end7.i, !prof !61

cond.end17.return.sink.split_crit_edge:           ; preds = %cond.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split

if.end7.i:                                        ; preds = %cond.end17
  call void @__sanitizer_cov_trace_pc() #11
  %9 = extractvalue { i32, i1 } %7, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %9, i32 noundef %gfp_mask) #13
  %data23 = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 4
  %10 = ptrtoint ptr %data23 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call8.i, ptr %data23, align 4
  %tobool.not = icmp eq ptr %call8.i, null
  %sub28 = add i32 %cond18, -1
  %spec.select = select i1 %tobool.not, i32 0, i32 %sub28
  %spec.select61 = select i1 %tobool.not, i32 -12, i32 0
  br label %return

return.sink.split:                                ; preds = %cond.end17.return.sink.split_crit_edge, %cond.end17.thread
  %retval.0.ph = phi i32 [ -22, %cond.end17.thread ], [ -12, %cond.end17.return.sink.split_crit_edge ]
  %data2355 = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 4
  %11 = ptrtoint ptr %data2355 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %data2355, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %if.end7.i
  %sub28.sink = phi i32 [ %spec.select, %if.end7.i ], [ 0, %return.sink.split ]
  %retval.0 = phi i32 [ %spec.select61, %if.end7.i ], [ %retval.0.ph, %return.sink.split ]
  %mask29 = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 2
  %12 = ptrtoint ptr %mask29 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub28.sink, ptr %mask29, align 4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__kfifo_free(ptr nocapture noundef %fifo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %data = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 4
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call void @kfree(ptr noundef %1) #12
  %2 = call ptr @memset(ptr %fifo, i32 0, i32 20)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @__kfifo_init(ptr nocapture noundef writeonly %fifo, ptr noundef %buffer, i32 noundef %size, i32 noundef %esize) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %div = udiv i32 %size, %esize
  call void @__sanitizer_cov_trace_cmp4(i32 %esize, i32 %size)
  %cmp.not.i = icmp ule i32 %esize, %size
  %0 = tail call i32 @llvm.ctpop.i32(i32 %div) #12, !range !60
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp1.i = icmp ult i32 %0, 2
  %or.cond = and i1 %cmp.not.i, %cmp1.i
  %1 = tail call i32 @llvm.ctlz.i32(i32 %div, i1 true) #12, !range !60
  %sub.i.i.op.i = xor i32 %1, 31
  %sub.i.i.op.op.i = shl nuw i32 1, %sub.i.i.op.i
  %size.addr.0 = select i1 %or.cond, i32 %div, i32 %sub.i.i.op.op.i
  %2 = ptrtoint ptr %fifo to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %fifo, align 4
  %out = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 1
  %3 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %out, align 4
  %esize11 = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 3
  %4 = ptrtoint ptr %esize11 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %esize, ptr %esize11, align 4
  %data = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 4
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %buffer, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %size.addr.0)
  %cmp12 = icmp ult i32 %size.addr.0, 2
  %spec.select38 = select i1 %cmp12, i32 -22, i32 0
  %sub16 = add i32 %size.addr.0, -1
  %spec.select = select i1 %cmp12, i32 0, i32 %sub16
  %6 = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %spec.select, ptr %6, align 4
  ret i32 %spec.select38
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__kfifo_in(ptr nocapture noundef %fifo, ptr nocapture noundef readonly %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %mask.i = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 2
  %0 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mask.i, align 4
  %2 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fifo, align 4
  %out.i = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 1
  %4 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %out.i, align 4
  %sub.neg.i = add i32 %1, 1
  %add.i = sub i32 %sub.neg.i, %3
  %sub1.i = add i32 %add.i, %5
  %6 = tail call i32 @llvm.umin.i32(i32 %sub1.i, i32 %len)
  %esize1.i = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 3
  %7 = ptrtoint ptr %esize1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %esize1.i, align 4
  %and.i = and i32 %3, %1
  %mul.i = mul i32 %8, %and.i
  %mul3.i = mul i32 %8, %sub.neg.i
  %mul4.i = mul i32 %6, %8
  %sub.i = sub i32 %mul3.i, %mul.i
  %9 = tail call i32 @llvm.umin.i32(i32 %mul4.i, i32 %sub.i) #12
  %data.i = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 4
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %mul.i
  %12 = call ptr @memcpy(ptr %add.ptr.i, ptr %buf, i32 %9)
  %13 = load ptr, ptr %data.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %buf, i32 %9
  %sub8.i = sub i32 %mul4.i, %9
  %14 = call ptr @memcpy(ptr %13, ptr %add.ptr7.i, i32 %sub8.i)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !62
  %15 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fifo, align 4
  %add = add i32 %16, %6
  store i32 %add, ptr %fifo, align 4
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__kfifo_out_peek(ptr nocapture noundef readonly %fifo, ptr nocapture noundef writeonly %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fifo, align 4
  %out = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 1
  %2 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %out, align 4
  %sub = sub i32 %1, %3
  %4 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %len)
  %mask.i = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 2
  %5 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mask.i, align 4
  %add.i = add i32 %6, 1
  %esize1.i = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 3
  %7 = ptrtoint ptr %esize1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %esize1.i, align 4
  %and.i = and i32 %6, %3
  %mul.i = mul i32 %and.i, %8
  %mul3.i = mul i32 %add.i, %8
  %mul4.i = mul i32 %8, %4
  %sub.i = sub i32 %mul3.i, %mul.i
  %9 = tail call i32 @llvm.umin.i32(i32 %mul4.i, i32 %sub.i) #12
  %data.i = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 4
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %mul.i
  %12 = call ptr @memcpy(ptr %buf, ptr %add.ptr.i, i32 %9)
  %add.ptr6.i = getelementptr i8, ptr %buf, i32 %9
  %13 = load ptr, ptr %data.i, align 4
  %sub8.i = sub i32 %mul4.i, %9
  %14 = call ptr @memcpy(ptr %add.ptr6.i, ptr %13, i32 %sub8.i)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !63
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__kfifo_out(ptr nocapture noundef %fifo, ptr nocapture noundef writeonly %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fifo, align 4
  %out.i = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 1
  %2 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %out.i, align 4
  %sub.i = sub i32 %1, %3
  %4 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 %len) #12
  %mask.i.i = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 2
  %5 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mask.i.i, align 4
  %add.i.i = add i32 %6, 1
  %esize1.i.i = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 3
  %7 = ptrtoint ptr %esize1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %esize1.i.i, align 4
  %and.i.i = and i32 %6, %3
  %mul.i.i = mul i32 %and.i.i, %8
  %mul3.i.i = mul i32 %add.i.i, %8
  %mul4.i.i = mul i32 %8, %4
  %sub.i.i = sub i32 %mul3.i.i, %mul.i.i
  %9 = tail call i32 @llvm.umin.i32(i32 %mul4.i.i, i32 %sub.i.i) #12
  %data.i.i = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 4
  %10 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %mul.i.i
  %12 = call ptr @memcpy(ptr %buf, ptr %add.ptr.i.i, i32 %9)
  %add.ptr6.i.i = getelementptr i8, ptr %buf, i32 %9
  %13 = load ptr, ptr %data.i.i, align 4
  %sub8.i.i = sub i32 %mul4.i.i, %9
  %14 = call ptr @memcpy(ptr %add.ptr6.i.i, ptr %13, i32 %sub8.i.i)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !63
  %15 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %out.i, align 4
  %add = add i32 %16, %4
  store i32 %add, ptr %out.i, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__kfifo_from_user(ptr nocapture noundef %fifo, ptr noundef %from, i32 noundef %len, ptr nocapture noundef writeonly %copied) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %esize1 = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 3
  %0 = ptrtoint ptr %esize1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %esize1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %div = udiv i32 %len, %1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %len.addr.0 = phi i32 [ %div, %if.then ], [ %len, %entry.if.end_crit_edge ]
  %mask.i = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 2
  %2 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mask.i, align 4
  %4 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fifo, align 4
  %out.i = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 1
  %6 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %out.i, align 4
  %sub.neg.i = add i32 %3, 1
  %add.i = sub i32 %sub.neg.i, %5
  %sub1.i = add i32 %add.i, %7
  %8 = tail call i32 @llvm.umin.i32(i32 %len.addr.0, i32 %sub1.i)
  %call5 = tail call fastcc i32 @kfifo_copy_from_user(ptr noundef %fifo, ptr noundef %from, i32 noundef %8, i32 noundef %5, ptr noundef %copied)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end.if.end9_crit_edge, label %if.then8, !prof !64

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %sub = sub i32 %8, %call5
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end.if.end9_crit_edge
  %len.addr.2 = phi i32 [ %sub, %if.then8 ], [ %8, %if.end.if.end9_crit_edge ]
  %err.0 = phi i32 [ -14, %if.then8 ], [ 0, %if.end.if.end9_crit_edge ]
  %9 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fifo, align 4
  %add = add i32 %10, %len.addr.2
  store i32 %add, ptr %fifo, align 4
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kfifo_copy_from_user(ptr nocapture noundef readonly %fifo, ptr noundef %from, i32 noundef %len, i32 noundef %off, ptr nocapture noundef writeonly %copied) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %mask = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 2
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mask, align 4
  %add = add i32 %1, 1
  %esize1 = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 3
  %2 = ptrtoint ptr %esize1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %esize1, align 4
  %and = and i32 %1, %off
  %mul = mul i32 %and, %3
  %mul3 = mul i32 %add, %3
  %mul4 = mul i32 %3, %len
  %sub = sub i32 %mul3, %mul
  %4 = tail call i32 @llvm.umin.i32(i32 %mul4, i32 %sub)
  %data = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 4
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp9.i.i = icmp slt i32 %4, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %entry
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.if.then8_crit_edge, label %if.then27.i.i, !prof !64

land.rhs16.i.i.if.then8_crit_edge:                ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %if.then8

if.then.i.i.i:                                    ; preds = %entry
  tail call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %4, i1 noundef zeroext false) #12
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 156) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %from, i32 %4, i32 -1226833920) #14, !srcloc !65
  %asmresult.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !64

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef %4) #12
  %8 = tail call i32 @llvm.read_register.i32(metadata !51) #12
  %and.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !66
  %and.i.i.i.i = and i32 %10, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #12, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !68
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %add.ptr, ptr noundef %from, i32 noundef %4) #12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #12, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !68
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %4, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %4, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.else, label %if.then11.i.i, !prof !64

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = sub i32 %4, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr, i32 %sub.i.i
  %11 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %if.then8

if.then8:                                         ; preds = %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.if.then8_crit_edge
  %n.addr.0.i.ph = phi i32 [ %4, %land.rhs16.i.i.if.then8_crit_edge ], [ %4, %if.then27.i.i ], [ %res.0.i.i, %if.then11.i.i ]
  %add9 = add i32 %3, -1
  %sub10 = add i32 %add9, %mul4
  %add11 = sub i32 %sub10, %4
  %sub12 = add i32 %add11, %n.addr.0.i.ph
  br label %do.end.sink.split

if.else:                                          ; preds = %if.end.i.i
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %add.ptr14 = getelementptr i8, ptr %from, i32 %4
  %sub15 = sub i32 %mul4, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub15)
  %cmp9.i.i72 = icmp slt i32 %sub15, 0
  br i1 %cmp9.i.i72, label %land.rhs16.i.i75, label %if.then.i.i.i78

land.rhs16.i.i75:                                 ; preds = %if.else
  %.b71.i.i74 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i74, label %land.rhs16.i.i75.if.then24_crit_edge, label %if.then27.i.i76, !prof !64

land.rhs16.i.i75.if.then24_crit_edge:             ; preds = %land.rhs16.i.i75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then24

if.then27.i.i76:                                  ; preds = %land.rhs16.i.i75
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %if.then24

if.then.i.i.i78:                                  ; preds = %if.else
  tail call void @__check_object_size(ptr noundef %13, i32 noundef %sub15, i1 noundef zeroext false) #12
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 156) #12
  %call.i.i79 = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i79, label %if.then.i.i.i78.if.end.i.i93_crit_edge, label %land.lhs.true.i.i83

if.then.i.i.i78.if.end.i.i93_crit_edge:           ; preds = %if.then.i.i.i78
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i93

land.lhs.true.i.i83:                              ; preds = %if.then.i.i.i78
  %14 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr14, i32 %sub15, i32 -1226833920) #14, !srcloc !65
  %asmresult.i.i81 = extractvalue { i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i81)
  %cmp.i6.i82 = icmp eq i32 %asmresult.i.i81, 0
  br i1 %cmp.i6.i82, label %if.then.i7.i90, label %land.lhs.true.i.i83.if.end.i.i93_crit_edge, !prof !64

land.lhs.true.i.i83.if.end.i.i93_crit_edge:       ; preds = %land.lhs.true.i.i83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i93

if.then.i7.i90:                                   ; preds = %land.lhs.true.i.i83
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i84 = tail call zeroext i1 @__kasan_check_write(ptr noundef %13, i32 noundef %sub15) #12
  %15 = tail call i32 @llvm.read_register.i32(metadata !51) #12
  %and.i.i.i.i.i.i85 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i.i85 to ptr
  %cpu_domain.i.i.i.i.i86 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 4
  %17 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i86) #9, !srcloc !66
  %and.i.i.i.i87 = and i32 %17, -13
  %or.i.i.i.i88 = or i32 %and.i.i.i.i87, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i88) #12, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !68
  %call1.i.i.i89 = tail call i32 @arm_copy_from_user(ptr noundef %13, ptr noundef %add.ptr14, i32 noundef %sub15) #12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #12, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !68
  br label %if.end.i.i93

if.end.i.i93:                                     ; preds = %if.then.i7.i90, %land.lhs.true.i.i83.if.end.i.i93_crit_edge, %if.then.i.i.i78.if.end.i.i93_crit_edge
  %res.0.i.i91 = phi i32 [ %sub15, %if.then.i.i.i78.if.end.i.i93_crit_edge ], [ %call1.i.i.i89, %if.then.i7.i90 ], [ %sub15, %land.lhs.true.i.i83.if.end.i.i93_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i91)
  %tobool4.not.i.i92 = icmp eq i32 %res.0.i.i91, 0
  br i1 %tobool4.not.i.i92, label %if.end.i.i93.do.end_crit_edge, label %if.then11.i.i96, !prof !64

if.end.i.i93.do.end_crit_edge:                    ; preds = %if.end.i.i93
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then11.i.i96:                                  ; preds = %if.end.i.i93
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i94 = sub i32 %sub15, %res.0.i.i91
  %add.ptr.i.i95 = getelementptr i8, ptr %13, i32 %sub.i.i94
  %18 = call ptr @memset(ptr %add.ptr.i.i95, i32 0, i32 %res.0.i.i91)
  br label %if.then24

if.then24:                                        ; preds = %if.then11.i.i96, %if.then27.i.i76, %land.rhs16.i.i75.if.then24_crit_edge
  %n.addr.0.i97.ph = phi i32 [ %sub15, %land.rhs16.i.i75.if.then24_crit_edge ], [ %sub15, %if.then27.i.i76 ], [ %res.0.i.i91, %if.then11.i.i96 ]
  %add25 = add i32 %3, -1
  %sub26 = add i32 %add25, %n.addr.0.i97.ph
  br label %do.end.sink.split

do.end.sink.split:                                ; preds = %if.then24, %if.then8
  %sub26.sink = phi i32 [ %sub26, %if.then24 ], [ %sub12, %if.then8 ]
  %div27 = udiv i32 %sub26.sink, %3
  br label %do.end

do.end:                                           ; preds = %do.end.sink.split, %if.end.i.i93.do.end_crit_edge
  %ret.0 = phi i32 [ 0, %if.end.i.i93.do.end_crit_edge ], [ %div27, %do.end.sink.split ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !69
  %mul33 = mul i32 %ret.0, %3
  %sub34 = sub i32 %mul4, %mul33
  %19 = ptrtoint ptr %copied to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %sub34, ptr %copied, align 4
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__kfifo_to_user(ptr nocapture noundef %fifo, ptr noundef %to, i32 noundef %len, ptr nocapture noundef writeonly %copied) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %esize1 = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 3
  %0 = ptrtoint ptr %esize1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %esize1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %div = udiv i32 %len, %1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %len.addr.0 = phi i32 [ %div, %if.then ], [ %len, %entry.if.end_crit_edge ]
  %2 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fifo, align 4
  %out = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 1
  %4 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %out, align 4
  %sub = sub i32 %3, %5
  %6 = tail call i32 @llvm.umin.i32(i32 %len.addr.0, i32 %sub)
  %call = tail call fastcc i32 @kfifo_copy_to_user(ptr noundef %fifo, ptr noundef %to, i32 noundef %6, i32 noundef %5, ptr noundef %copied)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end.if.end10_crit_edge, label %if.then8, !prof !64

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %sub9 = sub i32 %6, %call
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end.if.end10_crit_edge
  %len.addr.2 = phi i32 [ %sub9, %if.then8 ], [ %6, %if.end.if.end10_crit_edge ]
  %err.0 = phi i32 [ -14, %if.then8 ], [ 0, %if.end.if.end10_crit_edge ]
  %7 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %out, align 4
  %add = add i32 %8, %len.addr.2
  store i32 %add, ptr %out, align 4
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kfifo_copy_to_user(ptr nocapture noundef readonly %fifo, ptr noundef %to, i32 noundef %len, i32 noundef %off, ptr nocapture noundef writeonly %copied) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %mask = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 2
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mask, align 4
  %add = add i32 %1, 1
  %esize1 = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 3
  %2 = ptrtoint ptr %esize1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %esize1, align 4
  %and = and i32 %1, %off
  %mul = mul i32 %and, %3
  %mul3 = mul i32 %add, %3
  %mul4 = mul i32 %3, %len
  %sub = sub i32 %mul3, %mul
  %4 = tail call i32 @llvm.umin.i32(i32 %mul4, i32 %sub)
  %data = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 4
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp9.i.i = icmp slt i32 %4, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %entry
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.if.then8_crit_edge, label %if.then27.i.i, !prof !64

land.rhs16.i.i.if.then8_crit_edge:                ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %if.then8

if.then.i.i.i:                                    ; preds = %entry
  tail call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %4, i1 noundef zeroext true) #12
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 174) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %to, i32 %4, i32 -1226833920) #14, !srcloc !70
  %asmresult.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef %4) #12
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %to, ptr noundef %add.ptr, i32 noundef %4) #12
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %4, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %4, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool.not, label %if.else, label %copy_to_user.exit.if.then8_crit_edge, !prof !64

copy_to_user.exit.if.then8_crit_edge:             ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.then8:                                         ; preds = %copy_to_user.exit.if.then8_crit_edge, %if.then27.i.i, %land.rhs16.i.i.if.then8_crit_edge
  %n.addr.0.i91 = phi i32 [ %n.addr.0.i, %copy_to_user.exit.if.then8_crit_edge ], [ %4, %if.then27.i.i ], [ %4, %land.rhs16.i.i.if.then8_crit_edge ]
  %add9 = add i32 %3, -1
  %sub10 = add i32 %add9, %mul4
  %add11 = sub i32 %sub10, %4
  %sub12 = add i32 %add11, %n.addr.0.i91
  br label %do.end.sink.split

if.else:                                          ; preds = %copy_to_user.exit
  %add.ptr13 = getelementptr i8, ptr %to, i32 %4
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %sub15 = sub i32 %mul4, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub15)
  %cmp9.i.i72 = icmp slt i32 %sub15, 0
  br i1 %cmp9.i.i72, label %land.rhs16.i.i75, label %if.then.i.i.i78

land.rhs16.i.i75:                                 ; preds = %if.else
  %.b71.i.i74 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i74, label %land.rhs16.i.i75.if.then24_crit_edge, label %if.then27.i.i76, !prof !64

land.rhs16.i.i75.if.then24_crit_edge:             ; preds = %land.rhs16.i.i75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then24

if.then27.i.i76:                                  ; preds = %land.rhs16.i.i75
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %if.then24

if.then.i.i.i78:                                  ; preds = %if.else
  tail call void @__check_object_size(ptr noundef %9, i32 noundef %sub15, i1 noundef zeroext true) #12
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 174) #12
  %call.i.i79 = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i79, label %if.then.i.i.i78.copy_to_user.exit88_crit_edge, label %if.end.i.i83

if.then.i.i.i78.copy_to_user.exit88_crit_edge:    ; preds = %if.then.i.i.i78
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit88

if.end.i.i83:                                     ; preds = %if.then.i.i.i78
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr13, i32 %sub15, i32 -1226833920) #14, !srcloc !70
  %asmresult.i.i81 = extractvalue { i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i81)
  %cmp.i6.i82 = icmp eq i32 %asmresult.i.i81, 0
  br i1 %cmp.i6.i82, label %if.then2.i.i86, label %if.end.i.i83.copy_to_user.exit88_crit_edge

if.end.i.i83.copy_to_user.exit88_crit_edge:       ; preds = %if.end.i.i83
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit88

if.then2.i.i86:                                   ; preds = %if.end.i.i83
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i84 = tail call zeroext i1 @__kasan_check_read(ptr noundef %9, i32 noundef %sub15) #12
  %call.i12.i.i85 = tail call i32 @arm_copy_to_user(ptr noundef %add.ptr13, ptr noundef %9, i32 noundef %sub15) #12
  br label %copy_to_user.exit88

copy_to_user.exit88:                              ; preds = %if.then2.i.i86, %if.end.i.i83.copy_to_user.exit88_crit_edge, %if.then.i.i.i78.copy_to_user.exit88_crit_edge
  %n.addr.0.i87 = phi i32 [ %sub15, %if.then.i.i.i78.copy_to_user.exit88_crit_edge ], [ %call.i12.i.i85, %if.then2.i.i86 ], [ %sub15, %if.end.i.i83.copy_to_user.exit88_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i87)
  %tobool17.not = icmp eq i32 %n.addr.0.i87, 0
  br i1 %tobool17.not, label %copy_to_user.exit88.do.end_crit_edge, label %copy_to_user.exit88.if.then24_crit_edge, !prof !64

copy_to_user.exit88.if.then24_crit_edge:          ; preds = %copy_to_user.exit88
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then24

copy_to_user.exit88.do.end_crit_edge:             ; preds = %copy_to_user.exit88
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then24:                                        ; preds = %copy_to_user.exit88.if.then24_crit_edge, %if.then27.i.i76, %land.rhs16.i.i75.if.then24_crit_edge
  %n.addr.0.i8794 = phi i32 [ %n.addr.0.i87, %copy_to_user.exit88.if.then24_crit_edge ], [ %sub15, %if.then27.i.i76 ], [ %sub15, %land.rhs16.i.i75.if.then24_crit_edge ]
  %add25 = add i32 %3, -1
  %sub26 = add i32 %add25, %n.addr.0.i8794
  br label %do.end.sink.split

do.end.sink.split:                                ; preds = %if.then24, %if.then8
  %sub26.sink = phi i32 [ %sub26, %if.then24 ], [ %sub12, %if.then8 ]
  %div27 = udiv i32 %sub26.sink, %3
  br label %do.end

do.end:                                           ; preds = %do.end.sink.split, %copy_to_user.exit88.do.end_crit_edge
  %ret.0 = phi i32 [ 0, %copy_to_user.exit88.do.end_crit_edge ], [ %div27, %do.end.sink.split ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !71
  %mul33 = mul i32 %ret.0, %3
  %sub34 = sub i32 %mul4, %mul33
  %11 = ptrtoint ptr %copied to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub34, ptr %copied, align 4
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__kfifo_dma_in_prepare(ptr nocapture noundef readonly %fifo, ptr noundef %sgl, i32 noundef %nents, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %mask.i = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 2
  %0 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mask.i, align 4
  %2 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fifo, align 4
  %out.i = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 1
  %4 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %out.i, align 4
  %sub.neg.i = add i32 %1, 1
  %add.i = sub i32 %sub.neg.i, %3
  %sub1.i = add i32 %add.i, %5
  %6 = tail call i32 @llvm.umin.i32(i32 %sub1.i, i32 %len)
  %esize1.i = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 3
  %7 = ptrtoint ptr %esize1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %esize1.i, align 4
  %and.i = and i32 %3, %1
  %mul.i = mul i32 %8, %and.i
  %mul3.i = mul i32 %8, %sub.neg.i
  %mul4.i = mul i32 %6, %8
  %sub.i = sub i32 %mul3.i, %mul.i
  %9 = tail call i32 @llvm.umin.i32(i32 %mul4.i, i32 %sub.i) #12
  %data.i = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 4
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %mul.i
  %call.i = tail call fastcc i32 @setup_sgl_buf(ptr noundef %sgl, ptr noundef %add.ptr.i, i32 noundef %nents, i32 noundef %9) #12
  %add.ptr6.i = getelementptr %struct.scatterlist, ptr %sgl, i32 %call.i
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  %sub8.i = sub i32 %nents, %call.i
  %sub9.i = sub i32 %mul4.i, %9
  %call10.i = tail call fastcc i32 @setup_sgl_buf(ptr noundef %add.ptr6.i, ptr noundef %13, i32 noundef %sub8.i, i32 noundef %sub9.i) #12
  %add11.i = add i32 %call10.i, %call.i
  ret i32 %add11.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__kfifo_dma_out_prepare(ptr nocapture noundef readonly %fifo, ptr noundef %sgl, i32 noundef %nents, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fifo, align 4
  %out = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 1
  %2 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %out, align 4
  %sub = sub i32 %1, %3
  %4 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %len)
  %mask.i = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 2
  %5 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mask.i, align 4
  %add.i = add i32 %6, 1
  %esize1.i = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 3
  %7 = ptrtoint ptr %esize1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %esize1.i, align 4
  %and.i = and i32 %6, %3
  %mul.i = mul i32 %and.i, %8
  %mul3.i = mul i32 %add.i, %8
  %mul4.i = mul i32 %8, %4
  %sub.i = sub i32 %mul3.i, %mul.i
  %9 = tail call i32 @llvm.umin.i32(i32 %mul4.i, i32 %sub.i) #12
  %data.i = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 4
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %mul.i
  %call.i = tail call fastcc i32 @setup_sgl_buf(ptr noundef %sgl, ptr noundef %add.ptr.i, i32 noundef %nents, i32 noundef %9) #12
  %add.ptr6.i = getelementptr %struct.scatterlist, ptr %sgl, i32 %call.i
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  %sub8.i = sub i32 %nents, %call.i
  %sub9.i = sub i32 %mul4.i, %9
  %call10.i = tail call fastcc i32 @setup_sgl_buf(ptr noundef %add.ptr6.i, ptr noundef %13, i32 noundef %sub8.i, i32 noundef %sub9.i) #12
  %add11.i = add i32 %call10.i, %call.i
  ret i32 %add11.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @__kfifo_max_r(i32 noundef %len, i32 noundef %recsize) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %shl = shl i32 %recsize, 3
  %notmask = shl nsw i32 -1, %shl
  %sub = xor i32 %notmask, -1
  %0 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %len)
  ret i32 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @__kfifo_len_r(ptr nocapture noundef readonly %fifo, i32 noundef %recsize) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %mask1.i = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 2
  %0 = ptrtoint ptr %mask1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mask1.i, align 4
  %data2.i = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 4
  %2 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data2.i, align 4
  %out.i = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 1
  %4 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %out.i, align 4
  %and.i = and i32 %5, %1
  %arrayidx.i = getelementptr i8, ptr %3, i32 %and.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %recsize)
  %tobool.not.i = icmp eq i32 %recsize, 1
  br i1 %tobool.not.i, label %entry.__kfifo_peek_n.exit_crit_edge, label %if.then.i

entry.__kfifo_peek_n.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__kfifo_peek_n.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.i = add i32 %5, 1
  %and4.i = and i32 %add.i, %1
  %arrayidx5.i = getelementptr i8, ptr %3, i32 %and4.i
  %8 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx5.i, align 1
  %conv6.i = zext i8 %9 to i32
  %shl.i = shl nuw nsw i32 %conv6.i, 8
  %or.i = or i32 %shl.i, %conv.i
  br label %__kfifo_peek_n.exit

__kfifo_peek_n.exit:                              ; preds = %if.then.i, %entry.__kfifo_peek_n.exit_crit_edge
  %l.0.i = phi i32 [ %or.i, %if.then.i ], [ %conv.i, %entry.__kfifo_peek_n.exit_crit_edge ]
  ret i32 %l.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__kfifo_in_r(ptr nocapture noundef %fifo, ptr nocapture noundef readonly %buf, i32 noundef %len, i32 noundef %recsize) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %add = add i32 %recsize, %len
  %mask.i = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 2
  %0 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mask.i, align 4
  %2 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fifo, align 4
  %out.i = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 1
  %4 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %out.i, align 4
  %sub.neg.i = add i32 %1, 1
  %add.i = sub i32 %sub.neg.i, %3
  %sub1.i = add i32 %add.i, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub1.i)
  %cmp = icmp ugt i32 %add, %sub1.i
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %data2.i = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 4
  %6 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data2.i, align 4
  %conv.i = trunc i32 %len to i8
  %and.i = and i32 %3, %1
  %arrayidx.i = getelementptr i8, ptr %7, i32 %and.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv.i, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %recsize)
  %cmp.i = icmp ugt i32 %recsize, 1
  br i1 %cmp.i, label %if.then.i, label %if.end.__kfifo_poke_n.exit_crit_edge

if.end.__kfifo_poke_n.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %__kfifo_poke_n.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i = lshr i32 %len, 8
  %conv4.i = trunc i32 %shr.i to i8
  %9 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fifo, align 4
  %add.i16 = add i32 %10, 1
  %and6.i = and i32 %add.i16, %1
  %arrayidx7.i = getelementptr i8, ptr %7, i32 %and6.i
  %11 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv4.i, ptr %arrayidx7.i, align 1
  br label %__kfifo_poke_n.exit

__kfifo_poke_n.exit:                              ; preds = %if.then.i, %if.end.__kfifo_poke_n.exit_crit_edge
  %12 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fifo, align 4
  %add1 = add i32 %13, %recsize
  %14 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mask.i, align 4
  %add.i18 = add i32 %15, 1
  %esize1.i = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 3
  %16 = ptrtoint ptr %esize1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %esize1.i, align 4
  %and.i19 = and i32 %15, %add1
  %mul.i = mul i32 %and.i19, %17
  %mul3.i = mul i32 %add.i18, %17
  %mul4.i = mul i32 %17, %len
  %sub.i = sub i32 %mul3.i, %mul.i
  %18 = tail call i32 @llvm.umin.i32(i32 %mul4.i, i32 %sub.i) #12
  %19 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data2.i, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 %mul.i
  %21 = call ptr @memcpy(ptr %add.ptr.i, ptr %buf, i32 %18)
  %22 = load ptr, ptr %data2.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %buf, i32 %18
  %sub8.i = sub i32 %mul4.i, %18
  %23 = call ptr @memcpy(ptr %22, ptr %add.ptr7.i, i32 %sub8.i)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !62
  %24 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fifo, align 4
  %add4 = add i32 %25, %add
  store i32 %add4, ptr %fifo, align 4
  br label %return

return:                                           ; preds = %__kfifo_poke_n.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ %len, %__kfifo_poke_n.exit ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__kfifo_out_peek_r(ptr nocapture noundef readonly %fifo, ptr nocapture noundef writeonly %buf, i32 noundef %len, i32 noundef %recsize) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fifo, align 4
  %out = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 1
  %2 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %mask1.i.i = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 2
  %4 = ptrtoint ptr %mask1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mask1.i.i, align 4
  %data2.i.i = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 4
  %6 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data2.i.i, align 4
  %and.i.i = and i32 %5, %3
  %arrayidx.i.i = getelementptr i8, ptr %7, i32 %and.i.i
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %recsize)
  %tobool.not.i.i = icmp eq i32 %recsize, 1
  br i1 %tobool.not.i.i, label %if.end.kfifo_out_copy_r.exit_crit_edge, label %if.then.i.i

if.end.kfifo_out_copy_r.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %kfifo_out_copy_r.exit

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %add.i.i = add i32 %3, 1
  %and4.i.i = and i32 %5, %add.i.i
  %arrayidx5.i.i = getelementptr i8, ptr %7, i32 %and4.i.i
  %10 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx5.i.i, align 1
  %conv6.i.i = zext i8 %11 to i32
  %shl.i.i = shl nuw nsw i32 %conv6.i.i, 8
  %or.i.i = or i32 %shl.i.i, %conv.i.i
  br label %kfifo_out_copy_r.exit

kfifo_out_copy_r.exit:                            ; preds = %if.then.i.i, %if.end.kfifo_out_copy_r.exit_crit_edge
  %l.0.i.i = phi i32 [ %or.i.i, %if.then.i.i ], [ %conv.i.i, %if.end.kfifo_out_copy_r.exit_crit_edge ]
  %12 = tail call i32 @llvm.umin.i32(i32 %l.0.i.i, i32 %len) #12
  %add.i = add i32 %3, %recsize
  %add.i8.i = add i32 %5, 1
  %esize1.i.i = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 3
  %13 = ptrtoint ptr %esize1.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %esize1.i.i, align 4
  %and.i9.i = and i32 %5, %add.i
  %mul.i.i = mul i32 %14, %and.i9.i
  %mul3.i.i = mul i32 %14, %add.i8.i
  %mul4.i.i = mul i32 %14, %12
  %sub.i.i = sub i32 %mul3.i.i, %mul.i.i
  %15 = tail call i32 @llvm.umin.i32(i32 %mul4.i.i, i32 %sub.i.i) #12
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %mul.i.i
  %16 = call ptr @memcpy(ptr %buf, ptr %add.ptr.i.i, i32 %15)
  %add.ptr6.i.i = getelementptr i8, ptr %buf, i32 %15
  %17 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data2.i.i, align 4
  %sub8.i.i = sub i32 %mul4.i.i, %15
  %19 = call ptr @memcpy(ptr %add.ptr6.i.i, ptr %18, i32 %sub8.i.i)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !63
  br label %cleanup

cleanup:                                          ; preds = %kfifo_out_copy_r.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %kfifo_out_copy_r.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__kfifo_out_r(ptr nocapture noundef %fifo, ptr nocapture noundef writeonly %buf, i32 noundef %len, i32 noundef %recsize) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fifo, align 4
  %out = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 1
  %2 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %mask1.i.i = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 2
  %4 = ptrtoint ptr %mask1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mask1.i.i, align 4
  %data2.i.i = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 4
  %6 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data2.i.i, align 4
  %and.i.i = and i32 %5, %3
  %arrayidx.i.i = getelementptr i8, ptr %7, i32 %and.i.i
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %recsize)
  %tobool.not.i.i = icmp eq i32 %recsize, 1
  br i1 %tobool.not.i.i, label %if.end.kfifo_out_copy_r.exit_crit_edge, label %if.then.i.i

if.end.kfifo_out_copy_r.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %kfifo_out_copy_r.exit

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %add.i.i = add i32 %3, 1
  %and4.i.i = and i32 %5, %add.i.i
  %arrayidx5.i.i = getelementptr i8, ptr %7, i32 %and4.i.i
  %10 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx5.i.i, align 1
  %conv6.i.i = zext i8 %11 to i32
  %shl.i.i = shl nuw nsw i32 %conv6.i.i, 8
  %or.i.i = or i32 %shl.i.i, %conv.i.i
  br label %kfifo_out_copy_r.exit

kfifo_out_copy_r.exit:                            ; preds = %if.then.i.i, %if.end.kfifo_out_copy_r.exit_crit_edge
  %l.0.i.i = phi i32 [ %or.i.i, %if.then.i.i ], [ %conv.i.i, %if.end.kfifo_out_copy_r.exit_crit_edge ]
  %12 = tail call i32 @llvm.umin.i32(i32 %l.0.i.i, i32 %len) #12
  %add.i = add i32 %3, %recsize
  %add.i8.i = add i32 %5, 1
  %esize1.i.i = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 3
  %13 = ptrtoint ptr %esize1.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %esize1.i.i, align 4
  %and.i9.i = and i32 %5, %add.i
  %mul.i.i = mul i32 %14, %and.i9.i
  %mul3.i.i = mul i32 %14, %add.i8.i
  %mul4.i.i = mul i32 %14, %12
  %sub.i.i = sub i32 %mul3.i.i, %mul.i.i
  %15 = tail call i32 @llvm.umin.i32(i32 %mul4.i.i, i32 %sub.i.i) #12
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %mul.i.i
  %16 = call ptr @memcpy(ptr %buf, ptr %add.ptr.i.i, i32 %15)
  %add.ptr6.i.i = getelementptr i8, ptr %buf, i32 %15
  %17 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data2.i.i, align 4
  %sub8.i.i = sub i32 %mul4.i.i, %15
  %19 = call ptr @memcpy(ptr %add.ptr6.i.i, ptr %18, i32 %sub8.i.i)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !63
  %add = add i32 %l.0.i.i, %recsize
  %20 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %out, align 4
  %add2 = add i32 %add, %21
  store i32 %add2, ptr %out, align 4
  br label %cleanup

cleanup:                                          ; preds = %kfifo_out_copy_r.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %kfifo_out_copy_r.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @__kfifo_skip_r(ptr nocapture noundef %fifo, i32 noundef %recsize) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %mask1.i = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 2
  %0 = ptrtoint ptr %mask1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mask1.i, align 4
  %data2.i = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 4
  %2 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data2.i, align 4
  %out.i = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 1
  %4 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %out.i, align 4
  %and.i = and i32 %5, %1
  %arrayidx.i = getelementptr i8, ptr %3, i32 %and.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %recsize)
  %tobool.not.i = icmp eq i32 %recsize, 1
  br i1 %tobool.not.i, label %entry.__kfifo_peek_n.exit_crit_edge, label %if.then.i

entry.__kfifo_peek_n.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__kfifo_peek_n.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.i = add i32 %5, 1
  %and4.i = and i32 %add.i, %1
  %arrayidx5.i = getelementptr i8, ptr %3, i32 %and4.i
  %8 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx5.i, align 1
  %conv6.i = zext i8 %9 to i32
  %shl.i = shl nuw nsw i32 %conv6.i, 8
  %or.i = or i32 %shl.i, %conv.i
  br label %__kfifo_peek_n.exit

__kfifo_peek_n.exit:                              ; preds = %if.then.i, %entry.__kfifo_peek_n.exit_crit_edge
  %l.0.i = phi i32 [ %or.i, %if.then.i ], [ %conv.i, %entry.__kfifo_peek_n.exit_crit_edge ]
  %add = add i32 %5, %recsize
  %add1 = add i32 %add, %l.0.i
  %10 = ptrtoint ptr %out.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add1, ptr %out.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__kfifo_from_user_r(ptr nocapture noundef %fifo, ptr noundef %from, i32 noundef %len, ptr nocapture noundef writeonly %copied, i32 noundef %recsize) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i = shl i32 %recsize, 3
  %notmask.i = shl nsw i32 -1, %shl.i
  %sub.i = xor i32 %notmask.i, -1
  %0 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 %len) #12
  %add = add i32 %0, %recsize
  %mask.i = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 2
  %1 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mask.i, align 4
  %3 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fifo, align 4
  %out.i = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 1
  %5 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %out.i, align 4
  %sub.neg.i = add i32 %2, 1
  %add.i = sub i32 %sub.neg.i, %4
  %sub1.i = add i32 %add.i, %6
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub1.i)
  %cmp = icmp ugt i32 %add, %sub1.i
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %copied to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %copied, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %data2.i = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 4
  %8 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data2.i, align 4
  %conv.i = trunc i32 %0 to i8
  %and.i = and i32 %4, %2
  %arrayidx.i = getelementptr i8, ptr %9, i32 %and.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv.i, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %recsize)
  %cmp.i = icmp ugt i32 %recsize, 1
  br i1 %cmp.i, label %if.then.i, label %if.end.__kfifo_poke_n.exit_crit_edge

if.end.__kfifo_poke_n.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %__kfifo_poke_n.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i = lshr i32 %0, 8
  %conv4.i = trunc i32 %shr.i to i8
  %11 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fifo, align 4
  %add.i25 = add i32 %12, 1
  %and6.i = and i32 %add.i25, %2
  %arrayidx7.i = getelementptr i8, ptr %9, i32 %and6.i
  %13 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv4.i, ptr %arrayidx7.i, align 1
  br label %__kfifo_poke_n.exit

__kfifo_poke_n.exit:                              ; preds = %if.then.i, %if.end.__kfifo_poke_n.exit_crit_edge
  %14 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fifo, align 4
  %add2 = add i32 %15, %recsize
  %call3 = tail call fastcc i32 @kfifo_copy_from_user(ptr noundef %fifo, ptr noundef %from, i32 noundef %0, i32 noundef %add2, ptr noundef %copied)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end7, label %if.then6, !prof !64

if.then6:                                         ; preds = %__kfifo_poke_n.exit
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %copied to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %copied, align 4
  br label %cleanup

if.end7:                                          ; preds = %__kfifo_poke_n.exit
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fifo, align 4
  %add10 = add i32 %18, %add
  store i32 %add10, ptr %fifo, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -14, %if.then6 ], [ 0, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__kfifo_to_user_r(ptr nocapture noundef %fifo, ptr noundef %to, i32 noundef %len, ptr nocapture noundef writeonly %copied, i32 noundef %recsize) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fifo, align 4
  %out = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 1
  %2 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %copied to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %copied, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %mask1.i = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 2
  %5 = ptrtoint ptr %mask1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mask1.i, align 4
  %data2.i = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 4
  %7 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data2.i, align 4
  %and.i = and i32 %6, %3
  %arrayidx.i = getelementptr i8, ptr %8, i32 %and.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %recsize)
  %tobool.not.i = icmp eq i32 %recsize, 1
  br i1 %tobool.not.i, label %if.end.__kfifo_peek_n.exit_crit_edge, label %if.then.i

if.end.__kfifo_peek_n.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %__kfifo_peek_n.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %add.i = add i32 %3, 1
  %and4.i = and i32 %6, %add.i
  %arrayidx5.i = getelementptr i8, ptr %8, i32 %and4.i
  %11 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx5.i, align 1
  %conv6.i = zext i8 %12 to i32
  %shl.i = shl nuw nsw i32 %conv6.i, 8
  %or.i = or i32 %shl.i, %conv.i
  br label %__kfifo_peek_n.exit

__kfifo_peek_n.exit:                              ; preds = %if.then.i, %if.end.__kfifo_peek_n.exit_crit_edge
  %l.0.i = phi i32 [ %or.i, %if.then.i ], [ %conv.i, %if.end.__kfifo_peek_n.exit_crit_edge ]
  %13 = tail call i32 @llvm.umin.i32(i32 %l.0.i, i32 %len)
  %add = add i32 %3, %recsize
  %call5 = tail call fastcc i32 @kfifo_copy_to_user(ptr noundef %fifo, ptr noundef %to, i32 noundef %13, i32 noundef %add, ptr noundef %copied)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end9, label %if.then8, !prof !64

if.then8:                                         ; preds = %__kfifo_peek_n.exit
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %copied to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %copied, align 4
  br label %cleanup

if.end9:                                          ; preds = %__kfifo_peek_n.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add10 = add i32 %l.0.i, %recsize
  %15 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %out, align 4
  %add12 = add i32 %add10, %16
  store i32 %add12, ptr %out, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then8, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -14, %if.then8 ], [ 0, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__kfifo_dma_in_prepare_r(ptr nocapture noundef readonly %fifo, ptr noundef %sgl, i32 noundef %nents, i32 noundef %len, i32 noundef %recsize) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nents)
  %tobool.not = icmp eq i32 %nents, 0
  br i1 %tobool.not, label %do.body4, label %do.end7, !prof !61

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/kfifo.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 551, 0\0A.popsection", ""() #12, !srcloc !72
  unreachable

do.end7:                                          ; preds = %entry
  %shl.i = shl i32 %recsize, 3
  %notmask.i = shl nsw i32 -1, %shl.i
  %sub.i = xor i32 %notmask.i, -1
  %0 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 %len) #12
  %add = add i32 %0, %recsize
  %mask.i = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 2
  %1 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mask.i, align 4
  %3 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fifo, align 4
  %out.i = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 1
  %5 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %out.i, align 4
  %sub.neg.i = add i32 %2, 1
  %add.i = sub i32 %sub.neg.i, %4
  %sub1.i = add i32 %add.i, %6
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub1.i)
  %cmp = icmp ugt i32 %add, %sub1.i
  br i1 %cmp, label %do.end7.return_crit_edge, label %if.end10

do.end7.return_crit_edge:                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end10:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  %add11 = add i32 %4, %recsize
  %esize1.i = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 3
  %7 = ptrtoint ptr %esize1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %esize1.i, align 4
  %and.i = and i32 %add11, %2
  %mul.i = mul i32 %8, %and.i
  %mul3.i = mul i32 %8, %sub.neg.i
  %mul4.i = mul i32 %8, %0
  %sub.i22 = sub i32 %mul3.i, %mul.i
  %9 = tail call i32 @llvm.umin.i32(i32 %mul4.i, i32 %sub.i22) #12
  %data.i = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 4
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %mul.i
  %call.i = tail call fastcc i32 @setup_sgl_buf(ptr noundef %sgl, ptr noundef %add.ptr.i, i32 noundef %nents, i32 noundef %9) #12
  %add.ptr6.i = getelementptr %struct.scatterlist, ptr %sgl, i32 %call.i
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  %sub8.i = sub i32 %nents, %call.i
  %sub9.i = sub i32 %mul4.i, %9
  %call10.i = tail call fastcc i32 @setup_sgl_buf(ptr noundef %add.ptr6.i, ptr noundef %13, i32 noundef %sub8.i, i32 noundef %sub9.i) #12
  %add11.i = add i32 %call10.i, %call.i
  br label %return

return:                                           ; preds = %if.end10, %do.end7.return_crit_edge
  %retval.0 = phi i32 [ %add11.i, %if.end10 ], [ 0, %do.end7.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @__kfifo_dma_in_finish_r(ptr nocapture noundef %fifo, i32 noundef %len, i32 noundef %recsize) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i = shl i32 %recsize, 3
  %notmask.i = shl nsw i32 -1, %shl.i
  %sub.i = xor i32 %notmask.i, -1
  %0 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 %len) #12
  %mask1.i = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 2
  %1 = ptrtoint ptr %mask1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mask1.i, align 4
  %data2.i = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 4
  %3 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data2.i, align 4
  %conv.i = trunc i32 %0 to i8
  %5 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fifo, align 4
  %and.i = and i32 %6, %2
  %arrayidx.i = getelementptr i8, ptr %4, i32 %and.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv.i, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %recsize)
  %cmp.i = icmp ugt i32 %recsize, 1
  br i1 %cmp.i, label %if.then.i, label %entry.__kfifo_poke_n.exit_crit_edge

entry.__kfifo_poke_n.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__kfifo_poke_n.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i = lshr i32 %0, 8
  %conv4.i = trunc i32 %shr.i to i8
  %8 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fifo, align 4
  %add.i = add i32 %9, 1
  %and6.i = and i32 %add.i, %2
  %arrayidx7.i = getelementptr i8, ptr %4, i32 %and6.i
  %10 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv4.i, ptr %arrayidx7.i, align 1
  br label %__kfifo_poke_n.exit

__kfifo_poke_n.exit:                              ; preds = %if.then.i, %entry.__kfifo_poke_n.exit_crit_edge
  %add = add i32 %0, %recsize
  %11 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fifo, align 4
  %add1 = add i32 %add, %12
  store i32 %add1, ptr %fifo, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__kfifo_dma_out_prepare_r(ptr nocapture noundef readonly %fifo, ptr noundef %sgl, i32 noundef %nents, i32 noundef %len, i32 noundef %recsize) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nents)
  %tobool.not = icmp eq i32 %nents, 0
  br i1 %tobool.not, label %do.body4, label %do.end7, !prof !61

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/kfifo.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 574, 0\0A.popsection", ""() #12, !srcloc !73
  unreachable

do.end7:                                          ; preds = %entry
  %shl.i = shl i32 %recsize, 3
  %notmask.i = shl nsw i32 -1, %shl.i
  %sub.i = xor i32 %notmask.i, -1
  %0 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 %len) #12
  %add = add i32 %0, %recsize
  %1 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fifo, align 4
  %out = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 1
  %3 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %out, align 4
  %sub = sub i32 %2, %4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub)
  %cmp = icmp ugt i32 %add, %sub
  br i1 %cmp, label %do.end7.return_crit_edge, label %if.end9

do.end7.return_crit_edge:                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end9:                                          ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  %add11 = add i32 %4, %recsize
  %mask.i = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 2
  %5 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mask.i, align 4
  %add.i = add i32 %6, 1
  %esize1.i = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 3
  %7 = ptrtoint ptr %esize1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %esize1.i, align 4
  %and.i = and i32 %6, %add11
  %mul.i = mul i32 %and.i, %8
  %mul3.i = mul i32 %add.i, %8
  %mul4.i = mul i32 %8, %0
  %sub.i21 = sub i32 %mul3.i, %mul.i
  %9 = tail call i32 @llvm.umin.i32(i32 %mul4.i, i32 %sub.i21) #12
  %data.i = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 4
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %mul.i
  %call.i = tail call fastcc i32 @setup_sgl_buf(ptr noundef %sgl, ptr noundef %add.ptr.i, i32 noundef %nents, i32 noundef %9) #12
  %add.ptr6.i = getelementptr %struct.scatterlist, ptr %sgl, i32 %call.i
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  %sub8.i = sub i32 %nents, %call.i
  %sub9.i = sub i32 %mul4.i, %9
  %call10.i = tail call fastcc i32 @setup_sgl_buf(ptr noundef %add.ptr6.i, ptr noundef %13, i32 noundef %sub8.i, i32 noundef %sub9.i) #12
  %add11.i = add i32 %call10.i, %call.i
  br label %return

return:                                           ; preds = %if.end9, %do.end7.return_crit_edge
  %retval.0 = phi i32 [ %add11.i, %if.end9 ], [ 0, %do.end7.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @__kfifo_dma_out_finish_r(ptr nocapture noundef %fifo, i32 noundef %recsize) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %mask1.i = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 2
  %0 = ptrtoint ptr %mask1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mask1.i, align 4
  %data2.i = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 4
  %2 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data2.i, align 4
  %out.i = getelementptr inbounds %struct.__kfifo, ptr %fifo, i32 0, i32 1
  %4 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %out.i, align 4
  %and.i = and i32 %5, %1
  %arrayidx.i = getelementptr i8, ptr %3, i32 %and.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %recsize)
  %tobool.not.i = icmp eq i32 %recsize, 1
  br i1 %tobool.not.i, label %entry.__kfifo_peek_n.exit_crit_edge, label %if.then.i

entry.__kfifo_peek_n.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__kfifo_peek_n.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.i = add i32 %5, 1
  %and4.i = and i32 %add.i, %1
  %arrayidx5.i = getelementptr i8, ptr %3, i32 %and4.i
  %8 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx5.i, align 1
  %conv6.i = zext i8 %9 to i32
  %shl.i = shl nuw nsw i32 %conv6.i, 8
  %or.i = or i32 %shl.i, %conv.i
  br label %__kfifo_peek_n.exit

__kfifo_peek_n.exit:                              ; preds = %if.then.i, %entry.__kfifo_peek_n.exit_crit_edge
  %l.0.i = phi i32 [ %or.i, %if.then.i ], [ %conv.i, %entry.__kfifo_peek_n.exit_crit_edge ]
  %add = add i32 %5, %recsize
  %add1 = add i32 %add, %l.0.i
  %10 = ptrtoint ptr %out.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add1, ptr %out.i, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @setup_sgl_buf(ptr noundef %sgl, ptr noundef %buf, i32 noundef %nents, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nents)
  %tobool.not = icmp eq i32 %nents, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool1.not = icmp eq i32 %len, 0
  %or.cond60 = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond60, label %entry.cleanup33_crit_edge, label %if.end3

entry.cleanup33_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup33

if.end3:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %0 = load ptr, ptr @mem_map, align 4
  %1 = ptrtoint ptr %buf to i32
  %sub = add i32 %1, 1073741824
  %shr = lshr i32 %sub, 12
  %add.ptr = getelementptr %struct.page, ptr %0, i32 %shr
  %and = and i32 %1, 4095
  %sub696 = sub nuw nsw i32 4096, %and
  call void @__sanitizer_cov_trace_cmp4(i32 %sub696, i32 %len)
  %cmp.not97 = icmp ugt i32 %sub696, %len
  br i1 %cmp.not97, label %if.end3.while.end_crit_edge, label %if.end3.while.body_crit_edge

if.end3.while.body_crit_edge:                     ; preds = %if.end3
  br label %while.body

if.end3.while.end_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %if.end3.while.body_crit_edge
  %sub6105 = phi i32 [ %sub6, %cleanup.while.body_crit_edge ], [ %sub696, %if.end3.while.body_crit_edge ]
  %add5104 = phi i32 [ %add5, %cleanup.while.body_crit_edge ], [ 4096, %if.end3.while.body_crit_edge ]
  %page.0103 = phi ptr [ %page.2, %cleanup.while.body_crit_edge ], [ %add.ptr, %if.end3.while.body_crit_edge ]
  %off.0102 = phi i32 [ %off.2, %cleanup.while.body_crit_edge ], [ %and, %if.end3.while.body_crit_edge ]
  %n.0101 = phi i32 [ %n.2, %cleanup.while.body_crit_edge ], [ 0, %if.end3.while.body_crit_edge ]
  %len.addr.0100 = phi i32 [ %len.addr.2, %cleanup.while.body_crit_edge ], [ %len, %if.end3.while.body_crit_edge ]
  %buf.addr.099 = phi ptr [ %add.ptr8, %cleanup.while.body_crit_edge ], [ %buf, %if.end3.while.body_crit_edge ]
  %sgl.addr.098 = phi ptr [ %sgl.addr.2, %cleanup.while.body_crit_edge ], [ %sgl, %if.end3.while.body_crit_edge ]
  %add.ptr8 = getelementptr i8, ptr %buf.addr.099, i32 4096
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %2 = load ptr, ptr @mem_map, align 4
  %3 = ptrtoint ptr %add.ptr8 to i32
  %sub9 = add i32 %3, 1073741824
  %shr10 = lshr i32 %sub9, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %4 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.ptr13 = getelementptr %struct.page, ptr %2, i32 %shr10
  %sub.ptr.lhs.cast = ptrtoint ptr %page.0103 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %2 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  %add14 = add i32 %sub.ptr.div, %4
  %shl = shl i32 %add14, 12
  %add19 = add i32 %4, %shr10
  %shl20 = shl i32 %add19, 12
  %sub21 = sub i32 %shl20, %add5104
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %sub21)
  %cmp22.not = icmp eq i32 %shl, %sub21
  br i1 %cmp22.not, label %while.body.cleanup_crit_edge, label %if.then23

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then23:                                        ; preds = %while.body
  %5 = ptrtoint ptr %sgl.addr.098 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sgl.addr.098, align 4
  %and2.i.i = and i32 %sub.ptr.lhs.cast, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i, label %do.body11.i.i, label %do.body5.i.i, !prof !64

do.body5.i.i:                                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #12, !srcloc !74
  unreachable

do.body11.i.i:                                    ; preds = %if.then23
  %and.i.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !64

do.body19.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #12, !srcloc !75
  unreachable

sg_set_page.exit:                                 ; preds = %do.body11.i.i
  %and.i.i = and i32 %6, 3
  %or.i.i = or i32 %and.i.i, %sub.ptr.lhs.cast
  %7 = ptrtoint ptr %sgl.addr.098 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or.i.i, ptr %sgl.addr.098, align 4
  %offset1.i = getelementptr inbounds %struct.scatterlist, ptr %sgl.addr.098, i32 0, i32 1
  %8 = ptrtoint ptr %offset1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %off.0102, ptr %offset1.i, align 4
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %sgl.addr.098, i32 0, i32 2
  %9 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sub6105, ptr %length.i, align 4
  %call = tail call ptr @sg_next(ptr noundef %sgl.addr.098) #12
  %inc = add i32 %n.0101, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %nents)
  %cmp25 = icmp eq i32 %inc, %nents
  %cmp26 = icmp eq ptr %call, null
  %or.cond = select i1 %cmp25, i1 true, i1 %cmp26
  br i1 %or.cond, label %sg_set_page.exit.cleanup33_crit_edge, label %if.end28

sg_set_page.exit.cleanup33_crit_edge:             ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup33

if.end28:                                         ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sub30 = sub i32 %len.addr.0100, %sub6105
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %while.body.cleanup_crit_edge
  %sgl.addr.2 = phi ptr [ %call, %if.end28 ], [ %sgl.addr.098, %while.body.cleanup_crit_edge ]
  %len.addr.2 = phi i32 [ %sub30, %if.end28 ], [ %len.addr.0100, %while.body.cleanup_crit_edge ]
  %n.2 = phi i32 [ %inc, %if.end28 ], [ %n.0101, %while.body.cleanup_crit_edge ]
  %l.2 = phi i32 [ 0, %if.end28 ], [ %add5104, %while.body.cleanup_crit_edge ]
  %off.2 = phi i32 [ 0, %if.end28 ], [ %off.0102, %while.body.cleanup_crit_edge ]
  %page.2 = phi ptr [ %add.ptr13, %if.end28 ], [ %page.0103, %while.body.cleanup_crit_edge ]
  %add5 = add i32 %l.2, 4096
  %sub6 = sub i32 %add5, %off.2
  %cmp.not = icmp ult i32 %len.addr.2, %sub6
  br i1 %cmp.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end3.while.end_crit_edge
  %sgl.addr.0.lcssa = phi ptr [ %sgl, %if.end3.while.end_crit_edge ], [ %sgl.addr.2, %cleanup.while.end_crit_edge ]
  %len.addr.0.lcssa = phi i32 [ %len, %if.end3.while.end_crit_edge ], [ %len.addr.2, %cleanup.while.end_crit_edge ]
  %n.0.lcssa = phi i32 [ 0, %if.end3.while.end_crit_edge ], [ %n.2, %cleanup.while.end_crit_edge ]
  %off.0.lcssa = phi i32 [ %and, %if.end3.while.end_crit_edge ], [ %off.2, %cleanup.while.end_crit_edge ]
  %page.0.lcssa = phi ptr [ %add.ptr, %if.end3.while.end_crit_edge ], [ %page.2, %cleanup.while.end_crit_edge ]
  %10 = ptrtoint ptr %sgl.addr.0.lcssa to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sgl.addr.0.lcssa, align 4
  %12 = ptrtoint ptr %page.0.lcssa to i32
  %and2.i.i61 = and i32 %12, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i61)
  %tobool.not.i.i62 = icmp eq i32 %and2.i.i61, 0
  br i1 %tobool.not.i.i62, label %do.body11.i.i66, label %do.body5.i.i63, !prof !64

do.body5.i.i63:                                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #12, !srcloc !74
  unreachable

do.body11.i.i66:                                  ; preds = %while.end
  %and.i.i.i64 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i64)
  %tobool.i.not.i.i65 = icmp eq i32 %and.i.i.i64, 0
  br i1 %tobool.i.not.i.i65, label %sg_set_page.exit72, label %do.body19.i.i67, !prof !64

do.body19.i.i67:                                  ; preds = %do.body11.i.i66
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #12, !srcloc !75
  unreachable

sg_set_page.exit72:                               ; preds = %do.body11.i.i66
  call void @__sanitizer_cov_trace_pc() #11
  %and.i.i68 = and i32 %11, 3
  %or.i.i69 = or i32 %and.i.i68, %12
  %13 = ptrtoint ptr %sgl.addr.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or.i.i69, ptr %sgl.addr.0.lcssa, align 4
  %offset1.i70 = getelementptr inbounds %struct.scatterlist, ptr %sgl.addr.0.lcssa, i32 0, i32 1
  %14 = ptrtoint ptr %offset1.i70 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %off.0.lcssa, ptr %offset1.i70, align 4
  %length.i71 = getelementptr inbounds %struct.scatterlist, ptr %sgl.addr.0.lcssa, i32 0, i32 2
  %15 = ptrtoint ptr %length.i71 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %len.addr.0.lcssa, ptr %length.i71, align 4
  %add32 = add i32 %n.0.lcssa, 1
  br label %cleanup33

cleanup33:                                        ; preds = %sg_set_page.exit72, %sg_set_page.exit.cleanup33_crit_edge, %entry.cleanup33_crit_edge
  %retval.2 = phi i32 [ %add32, %sg_set_page.exit72 ], [ 0, %entry.cleanup33_crit_edge ], [ %inc, %sg_set_page.exit.cleanup33_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind uwtable(sync) }
attributes #11 = { nomerge }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !47, !49}
!llvm.named.register.sp = !{!51}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @__ksymtab___kfifo_alloc, !1, !"__ksymtab___kfifo_alloc", i1 false, i1 false}
!1 = !{!"../lib/kfifo.c", i32 53, i32 1}
!2 = !{ptr @__ksymtab___kfifo_free, !3, !"__ksymtab___kfifo_free", i1 false, i1 false}
!3 = !{!"../lib/kfifo.c", i32 64, i32 1}
!4 = !{ptr @__ksymtab___kfifo_init, !5, !"__ksymtab___kfifo_init", i1 false, i1 false}
!5 = !{!"../lib/kfifo.c", i32 87, i32 1}
!6 = !{ptr @__ksymtab___kfifo_in, !7, !"__ksymtab___kfifo_in", i1 false, i1 false}
!7 = !{!"../lib/kfifo.c", i32 126, i32 1}
!8 = !{ptr @__ksymtab___kfifo_out_peek, !9, !"__ksymtab___kfifo_out_peek", i1 false, i1 false}
!9 = !{!"../lib/kfifo.c", i32 164, i32 1}
!10 = !{ptr @__ksymtab___kfifo_out, !11, !"__ksymtab___kfifo_out", i1 false, i1 false}
!11 = !{!"../lib/kfifo.c", i32 173, i32 1}
!12 = !{ptr @__ksymtab___kfifo_from_user, !13, !"__ksymtab___kfifo_from_user", i1 false, i1 false}
!13 = !{!"../lib/kfifo.c", i32 234, i32 1}
!14 = !{ptr @__ksymtab___kfifo_to_user, !15, !"__ksymtab___kfifo_to_user", i1 false, i1 false}
!15 = !{!"../lib/kfifo.c", i32 293, i32 1}
!16 = !{ptr @__ksymtab___kfifo_dma_in_prepare, !17, !"__ksymtab___kfifo_dma_in_prepare", i1 false, i1 false}
!17 = !{!"../lib/kfifo.c", i32 367, i32 1}
!18 = !{ptr @__ksymtab___kfifo_dma_out_prepare, !19, !"__ksymtab___kfifo_dma_out_prepare", i1 false, i1 false}
!19 = !{!"../lib/kfifo.c", i32 380, i32 1}
!20 = !{ptr @__ksymtab___kfifo_max_r, !21, !"__ksymtab___kfifo_max_r", i1 false, i1 false}
!21 = !{!"../lib/kfifo.c", i32 390, i32 1}
!22 = !{ptr @__ksymtab___kfifo_len_r, !23, !"__ksymtab___kfifo_len_r", i1 false, i1 false}
!23 = !{!"../lib/kfifo.c", i32 436, i32 1}
!24 = !{ptr @__ksymtab___kfifo_in_r, !25, !"__ksymtab___kfifo_in_r", i1 false, i1 false}
!25 = !{!"../lib/kfifo.c", i32 450, i32 1}
!26 = !{ptr @__ksymtab___kfifo_out_peek_r, !27, !"__ksymtab___kfifo_out_peek_r", i1 false, i1 false}
!27 = !{!"../lib/kfifo.c", i32 474, i32 1}
!28 = !{ptr @__ksymtab___kfifo_out_r, !29, !"__ksymtab___kfifo_out_r", i1 false, i1 false}
!29 = !{!"../lib/kfifo.c", i32 488, i32 1}
!30 = !{ptr @__ksymtab___kfifo_skip_r, !31, !"__ksymtab___kfifo_skip_r", i1 false, i1 false}
!31 = !{!"../lib/kfifo.c", i32 497, i32 1}
!32 = !{ptr @__ksymtab___kfifo_from_user_r, !33, !"__ksymtab___kfifo_from_user_r", i1 false, i1 false}
!33 = !{!"../lib/kfifo.c", i32 521, i32 1}
!34 = !{ptr @__ksymtab___kfifo_to_user_r, !35, !"__ksymtab___kfifo_to_user_r", i1 false, i1 false}
!35 = !{!"../lib/kfifo.c", i32 546, i32 1}
!36 = !{ptr @__ksymtab___kfifo_dma_in_prepare_r, !37, !"__ksymtab___kfifo_dma_in_prepare_r", i1 false, i1 false}
!37 = !{!"../lib/kfifo.c", i32 560, i32 1}
!38 = !{ptr @__ksymtab___kfifo_dma_in_finish_r, !39, !"__ksymtab___kfifo_dma_in_finish_r", i1 false, i1 false}
!39 = !{!"../lib/kfifo.c", i32 569, i32 1}
!40 = !{ptr @__ksymtab___kfifo_dma_out_prepare_r, !41, !"__ksymtab___kfifo_dma_out_prepare_r", i1 false, i1 false}
!41 = !{!"../lib/kfifo.c", i32 583, i32 1}
!42 = !{ptr @__ksymtab___kfifo_dma_out_finish_r, !43, !"__ksymtab___kfifo_dma_out_finish_r", i1 false, i1 false}
!43 = !{!"../lib/kfifo.c", i32 592, i32 1}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!46 = !{ptr @.str, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.1, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!49 = !{ptr @.str.2, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!51 = !{!"sp"}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{i32 0, i32 33}
!61 = !{!"branch_weights", i32 1, i32 2000}
!62 = !{i64 2153443292}
!63 = !{i64 2153446085}
!64 = !{!"branch_weights", i32 2000, i32 1}
!65 = !{i64 2152099005, i64 2152099030}
!66 = !{i64 4594560}
!67 = !{i64 4594757}
!68 = !{i64 2152079990}
!69 = !{i64 2153454602}
!70 = !{i64 2152099686, i64 2152099711}
!71 = !{i64 2153457800}
!72 = !{i64 2153477609, i64 2153478085, i64 2153477646, i64 2153477702, i64 2153477736, i64 2153477760, i64 2153477801, i64 2153477822, i64 2153477850, i64 2153477884}
!73 = !{i64 2153486473, i64 2153486949, i64 2153486510, i64 2153486566, i64 2153486600, i64 2153486624, i64 2153486665, i64 2153486686, i64 2153486714, i64 2153486748}
!74 = !{i64 2153425170, i64 2153425662, i64 2153425207, i64 2153425263, i64 2153425297, i64 2153425321, i64 2153425362, i64 2153425383, i64 2153425411, i64 2153425445}
!75 = !{i64 2153426780, i64 2153427272, i64 2153426817, i64 2153426873, i64 2153426907, i64 2153426931, i64 2153426972, i64 2153426993, i64 2153427021, i64 2153427055}
