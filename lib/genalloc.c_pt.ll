; ModuleID = '/llk/IR_all_yes/lib/genalloc.c_pt.bc'
source_filename = "../lib/genalloc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+gen_pool_create\22, \22a\22\09"
module asm "\09.weak\09__crc_gen_pool_create\09\09\09\09"
module asm "\09.long\09__crc_gen_pool_create\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gen_pool_create:\09\09\09\09\09"
module asm "\09.asciz \09\22gen_pool_create\22\09\09\09\09\09"
module asm "__kstrtabns_gen_pool_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+gen_pool_add_owner\22, \22a\22\09"
module asm "\09.weak\09__crc_gen_pool_add_owner\09\09\09\09"
module asm "\09.long\09__crc_gen_pool_add_owner\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gen_pool_add_owner:\09\09\09\09\09"
module asm "\09.asciz \09\22gen_pool_add_owner\22\09\09\09\09\09"
module asm "__kstrtabns_gen_pool_add_owner:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+gen_pool_virt_to_phys\22, \22a\22\09"
module asm "\09.weak\09__crc_gen_pool_virt_to_phys\09\09\09\09"
module asm "\09.long\09__crc_gen_pool_virt_to_phys\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gen_pool_virt_to_phys:\09\09\09\09\09"
module asm "\09.asciz \09\22gen_pool_virt_to_phys\22\09\09\09\09\09"
module asm "__kstrtabns_gen_pool_virt_to_phys:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+gen_pool_destroy\22, \22a\22\09"
module asm "\09.weak\09__crc_gen_pool_destroy\09\09\09\09"
module asm "\09.long\09__crc_gen_pool_destroy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gen_pool_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22gen_pool_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_gen_pool_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+gen_pool_alloc_algo_owner\22, \22a\22\09"
module asm "\09.weak\09__crc_gen_pool_alloc_algo_owner\09\09\09\09"
module asm "\09.long\09__crc_gen_pool_alloc_algo_owner\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gen_pool_alloc_algo_owner:\09\09\09\09\09"
module asm "\09.asciz \09\22gen_pool_alloc_algo_owner\22\09\09\09\09\09"
module asm "__kstrtabns_gen_pool_alloc_algo_owner:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+gen_pool_dma_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_gen_pool_dma_alloc\09\09\09\09"
module asm "\09.long\09__crc_gen_pool_dma_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gen_pool_dma_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22gen_pool_dma_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_gen_pool_dma_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+gen_pool_dma_alloc_algo\22, \22a\22\09"
module asm "\09.weak\09__crc_gen_pool_dma_alloc_algo\09\09\09\09"
module asm "\09.long\09__crc_gen_pool_dma_alloc_algo\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gen_pool_dma_alloc_algo:\09\09\09\09\09"
module asm "\09.asciz \09\22gen_pool_dma_alloc_algo\22\09\09\09\09\09"
module asm "__kstrtabns_gen_pool_dma_alloc_algo:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+gen_pool_dma_alloc_align\22, \22a\22\09"
module asm "\09.weak\09__crc_gen_pool_dma_alloc_align\09\09\09\09"
module asm "\09.long\09__crc_gen_pool_dma_alloc_align\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gen_pool_dma_alloc_align:\09\09\09\09\09"
module asm "\09.asciz \09\22gen_pool_dma_alloc_align\22\09\09\09\09\09"
module asm "__kstrtabns_gen_pool_dma_alloc_align:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+gen_pool_dma_zalloc\22, \22a\22\09"
module asm "\09.weak\09__crc_gen_pool_dma_zalloc\09\09\09\09"
module asm "\09.long\09__crc_gen_pool_dma_zalloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gen_pool_dma_zalloc:\09\09\09\09\09"
module asm "\09.asciz \09\22gen_pool_dma_zalloc\22\09\09\09\09\09"
module asm "__kstrtabns_gen_pool_dma_zalloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+gen_pool_dma_zalloc_algo\22, \22a\22\09"
module asm "\09.weak\09__crc_gen_pool_dma_zalloc_algo\09\09\09\09"
module asm "\09.long\09__crc_gen_pool_dma_zalloc_algo\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gen_pool_dma_zalloc_algo:\09\09\09\09\09"
module asm "\09.asciz \09\22gen_pool_dma_zalloc_algo\22\09\09\09\09\09"
module asm "__kstrtabns_gen_pool_dma_zalloc_algo:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+gen_pool_dma_zalloc_align\22, \22a\22\09"
module asm "\09.weak\09__crc_gen_pool_dma_zalloc_align\09\09\09\09"
module asm "\09.long\09__crc_gen_pool_dma_zalloc_align\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gen_pool_dma_zalloc_align:\09\09\09\09\09"
module asm "\09.asciz \09\22gen_pool_dma_zalloc_align\22\09\09\09\09\09"
module asm "__kstrtabns_gen_pool_dma_zalloc_align:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+gen_pool_free_owner\22, \22a\22\09"
module asm "\09.weak\09__crc_gen_pool_free_owner\09\09\09\09"
module asm "\09.long\09__crc_gen_pool_free_owner\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gen_pool_free_owner:\09\09\09\09\09"
module asm "\09.asciz \09\22gen_pool_free_owner\22\09\09\09\09\09"
module asm "__kstrtabns_gen_pool_free_owner:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+gen_pool_for_each_chunk\22, \22a\22\09"
module asm "\09.weak\09__crc_gen_pool_for_each_chunk\09\09\09\09"
module asm "\09.long\09__crc_gen_pool_for_each_chunk\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gen_pool_for_each_chunk:\09\09\09\09\09"
module asm "\09.asciz \09\22gen_pool_for_each_chunk\22\09\09\09\09\09"
module asm "__kstrtabns_gen_pool_for_each_chunk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+gen_pool_has_addr\22, \22a\22\09"
module asm "\09.weak\09__crc_gen_pool_has_addr\09\09\09\09"
module asm "\09.long\09__crc_gen_pool_has_addr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gen_pool_has_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22gen_pool_has_addr\22\09\09\09\09\09"
module asm "__kstrtabns_gen_pool_has_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+gen_pool_avail\22, \22a\22\09"
module asm "\09.weak\09__crc_gen_pool_avail\09\09\09\09"
module asm "\09.long\09__crc_gen_pool_avail\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gen_pool_avail:\09\09\09\09\09"
module asm "\09.asciz \09\22gen_pool_avail\22\09\09\09\09\09"
module asm "__kstrtabns_gen_pool_avail:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+gen_pool_size\22, \22a\22\09"
module asm "\09.weak\09__crc_gen_pool_size\09\09\09\09"
module asm "\09.long\09__crc_gen_pool_size\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gen_pool_size:\09\09\09\09\09"
module asm "\09.asciz \09\22gen_pool_size\22\09\09\09\09\09"
module asm "__kstrtabns_gen_pool_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+gen_pool_set_algo\22, \22a\22\09"
module asm "\09.weak\09__crc_gen_pool_set_algo\09\09\09\09"
module asm "\09.long\09__crc_gen_pool_set_algo\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gen_pool_set_algo:\09\09\09\09\09"
module asm "\09.asciz \09\22gen_pool_set_algo\22\09\09\09\09\09"
module asm "__kstrtabns_gen_pool_set_algo:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+gen_pool_first_fit\22, \22a\22\09"
module asm "\09.weak\09__crc_gen_pool_first_fit\09\09\09\09"
module asm "\09.long\09__crc_gen_pool_first_fit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gen_pool_first_fit:\09\09\09\09\09"
module asm "\09.asciz \09\22gen_pool_first_fit\22\09\09\09\09\09"
module asm "__kstrtabns_gen_pool_first_fit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+gen_pool_first_fit_align\22, \22a\22\09"
module asm "\09.weak\09__crc_gen_pool_first_fit_align\09\09\09\09"
module asm "\09.long\09__crc_gen_pool_first_fit_align\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gen_pool_first_fit_align:\09\09\09\09\09"
module asm "\09.asciz \09\22gen_pool_first_fit_align\22\09\09\09\09\09"
module asm "__kstrtabns_gen_pool_first_fit_align:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+gen_pool_fixed_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_gen_pool_fixed_alloc\09\09\09\09"
module asm "\09.long\09__crc_gen_pool_fixed_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gen_pool_fixed_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22gen_pool_fixed_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_gen_pool_fixed_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+gen_pool_first_fit_order_align\22, \22a\22\09"
module asm "\09.weak\09__crc_gen_pool_first_fit_order_align\09\09\09\09"
module asm "\09.long\09__crc_gen_pool_first_fit_order_align\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gen_pool_first_fit_order_align:\09\09\09\09\09"
module asm "\09.asciz \09\22gen_pool_first_fit_order_align\22\09\09\09\09\09"
module asm "__kstrtabns_gen_pool_first_fit_order_align:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+gen_pool_best_fit\22, \22a\22\09"
module asm "\09.weak\09__crc_gen_pool_best_fit\09\09\09\09"
module asm "\09.long\09__crc_gen_pool_best_fit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gen_pool_best_fit:\09\09\09\09\09"
module asm "\09.asciz \09\22gen_pool_best_fit\22\09\09\09\09\09"
module asm "__kstrtabns_gen_pool_best_fit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+gen_pool_get\22, \22a\22\09"
module asm "\09.weak\09__crc_gen_pool_get\09\09\09\09"
module asm "\09.long\09__crc_gen_pool_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gen_pool_get:\09\09\09\09\09"
module asm "\09.asciz \09\22gen_pool_get\22\09\09\09\09\09"
module asm "__kstrtabns_gen_pool_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+devm_gen_pool_create\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_gen_pool_create\09\09\09\09"
module asm "\09.long\09__crc_devm_gen_pool_create\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_gen_pool_create:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_gen_pool_create\22\09\09\09\09\09"
module asm "__kstrtabns_devm_gen_pool_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+of_gen_pool_get\22, \22a\22\09"
module asm "\09.weak\09__crc_of_gen_pool_get\09\09\09\09"
module asm "\09.long\09__crc_of_gen_pool_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_gen_pool_get:\09\09\09\09\09"
module asm "\09.asciz \09\22of_gen_pool_get\22\09\09\09\09\09"
module asm "__kstrtabns_of_gen_pool_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gen_pool = type { %struct.spinlock, %struct.list_head, i32, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.gen_pool_chunk = type { %struct.list_head, %struct.atomic_t, i32, ptr, i32, i32, [0 x i32] }
%struct.atomic_t = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.genpool_data_align = type { i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@gen_pool_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&pool->lock\00", [20 x i8] zeroinitializer }, align 32
@__kstrtab_gen_pool_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_gen_pool_create = external dso_local constant [0 x i8], align 1
@__ksymtab_gen_pool_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gen_pool_create to i32), ptr @__kstrtab_gen_pool_create, ptr @__kstrtabns_gen_pool_create }, section "___ksymtab+gen_pool_create", align 4
@__kstrtab_gen_pool_add_owner = external dso_local constant [0 x i8], align 1
@__kstrtabns_gen_pool_add_owner = external dso_local constant [0 x i8], align 1
@__ksymtab_gen_pool_add_owner = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gen_pool_add_owner to i32), ptr @__kstrtab_gen_pool_add_owner, ptr @__kstrtabns_gen_pool_add_owner }, section "___ksymtab+gen_pool_add_owner", align 4
@gen_pool_virt_to_phys.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lib/genalloc.c\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@__kstrtab_gen_pool_virt_to_phys = external dso_local constant [0 x i8], align 1
@__kstrtabns_gen_pool_virt_to_phys = external dso_local constant [0 x i8], align 1
@__ksymtab_gen_pool_virt_to_phys = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gen_pool_virt_to_phys to i32), ptr @__kstrtab_gen_pool_virt_to_phys, ptr @__kstrtabns_gen_pool_virt_to_phys }, section "___ksymtab+gen_pool_virt_to_phys", align 4
@__kstrtab_gen_pool_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_gen_pool_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_gen_pool_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gen_pool_destroy to i32), ptr @__kstrtab_gen_pool_destroy, ptr @__kstrtabns_gen_pool_destroy }, section "___ksymtab+gen_pool_destroy", align 4
@gen_pool_alloc_algo_owner.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__kstrtab_gen_pool_alloc_algo_owner = external dso_local constant [0 x i8], align 1
@__kstrtabns_gen_pool_alloc_algo_owner = external dso_local constant [0 x i8], align 1
@__ksymtab_gen_pool_alloc_algo_owner = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gen_pool_alloc_algo_owner to i32), ptr @__kstrtab_gen_pool_alloc_algo_owner, ptr @__kstrtabns_gen_pool_alloc_algo_owner }, section "___ksymtab+gen_pool_alloc_algo_owner", align 4
@__kstrtab_gen_pool_dma_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_gen_pool_dma_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_gen_pool_dma_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gen_pool_dma_alloc to i32), ptr @__kstrtab_gen_pool_dma_alloc, ptr @__kstrtabns_gen_pool_dma_alloc }, section "___ksymtab+gen_pool_dma_alloc", align 4
@__kstrtab_gen_pool_dma_alloc_algo = external dso_local constant [0 x i8], align 1
@__kstrtabns_gen_pool_dma_alloc_algo = external dso_local constant [0 x i8], align 1
@__ksymtab_gen_pool_dma_alloc_algo = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gen_pool_dma_alloc_algo to i32), ptr @__kstrtab_gen_pool_dma_alloc_algo, ptr @__kstrtabns_gen_pool_dma_alloc_algo }, section "___ksymtab+gen_pool_dma_alloc_algo", align 4
@__kstrtab_gen_pool_dma_alloc_align = external dso_local constant [0 x i8], align 1
@__kstrtabns_gen_pool_dma_alloc_align = external dso_local constant [0 x i8], align 1
@__ksymtab_gen_pool_dma_alloc_align = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gen_pool_dma_alloc_align to i32), ptr @__kstrtab_gen_pool_dma_alloc_align, ptr @__kstrtabns_gen_pool_dma_alloc_align }, section "___ksymtab+gen_pool_dma_alloc_align", align 4
@__kstrtab_gen_pool_dma_zalloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_gen_pool_dma_zalloc = external dso_local constant [0 x i8], align 1
@__ksymtab_gen_pool_dma_zalloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gen_pool_dma_zalloc to i32), ptr @__kstrtab_gen_pool_dma_zalloc, ptr @__kstrtabns_gen_pool_dma_zalloc }, section "___ksymtab+gen_pool_dma_zalloc", align 4
@__kstrtab_gen_pool_dma_zalloc_algo = external dso_local constant [0 x i8], align 1
@__kstrtabns_gen_pool_dma_zalloc_algo = external dso_local constant [0 x i8], align 1
@__ksymtab_gen_pool_dma_zalloc_algo = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gen_pool_dma_zalloc_algo to i32), ptr @__kstrtab_gen_pool_dma_zalloc_algo, ptr @__kstrtabns_gen_pool_dma_zalloc_algo }, section "___ksymtab+gen_pool_dma_zalloc_algo", align 4
@__kstrtab_gen_pool_dma_zalloc_align = external dso_local constant [0 x i8], align 1
@__kstrtabns_gen_pool_dma_zalloc_align = external dso_local constant [0 x i8], align 1
@__ksymtab_gen_pool_dma_zalloc_align = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gen_pool_dma_zalloc_align to i32), ptr @__kstrtab_gen_pool_dma_zalloc_align, ptr @__kstrtabns_gen_pool_dma_zalloc_align }, section "___ksymtab+gen_pool_dma_zalloc_align", align 4
@gen_pool_free_owner.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__kstrtab_gen_pool_free_owner = external dso_local constant [0 x i8], align 1
@__kstrtabns_gen_pool_free_owner = external dso_local constant [0 x i8], align 1
@__ksymtab_gen_pool_free_owner = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gen_pool_free_owner to i32), ptr @__kstrtab_gen_pool_free_owner, ptr @__kstrtabns_gen_pool_free_owner }, section "___ksymtab+gen_pool_free_owner", align 4
@gen_pool_for_each_chunk.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__kstrtab_gen_pool_for_each_chunk = external dso_local constant [0 x i8], align 1
@__kstrtabns_gen_pool_for_each_chunk = external dso_local constant [0 x i8], align 1
@__ksymtab_gen_pool_for_each_chunk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gen_pool_for_each_chunk to i32), ptr @__kstrtab_gen_pool_for_each_chunk, ptr @__kstrtabns_gen_pool_for_each_chunk }, section "___ksymtab+gen_pool_for_each_chunk", align 4
@gen_pool_has_addr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__kstrtab_gen_pool_has_addr = external dso_local constant [0 x i8], align 1
@__kstrtabns_gen_pool_has_addr = external dso_local constant [0 x i8], align 1
@__ksymtab_gen_pool_has_addr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gen_pool_has_addr to i32), ptr @__kstrtab_gen_pool_has_addr, ptr @__kstrtabns_gen_pool_has_addr }, section "___ksymtab+gen_pool_has_addr", align 4
@gen_pool_avail.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__kstrtab_gen_pool_avail = external dso_local constant [0 x i8], align 1
@__kstrtabns_gen_pool_avail = external dso_local constant [0 x i8], align 1
@__ksymtab_gen_pool_avail = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gen_pool_avail to i32), ptr @__kstrtab_gen_pool_avail, ptr @__kstrtabns_gen_pool_avail }, section "___ksymtab_gpl+gen_pool_avail", align 4
@gen_pool_size.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__kstrtab_gen_pool_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_gen_pool_size = external dso_local constant [0 x i8], align 1
@__ksymtab_gen_pool_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gen_pool_size to i32), ptr @__kstrtab_gen_pool_size, ptr @__kstrtabns_gen_pool_size }, section "___ksymtab_gpl+gen_pool_size", align 4
@__kstrtab_gen_pool_set_algo = external dso_local constant [0 x i8], align 1
@__kstrtabns_gen_pool_set_algo = external dso_local constant [0 x i8], align 1
@__ksymtab_gen_pool_set_algo = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gen_pool_set_algo to i32), ptr @__kstrtab_gen_pool_set_algo, ptr @__kstrtabns_gen_pool_set_algo }, section "___ksymtab+gen_pool_set_algo", align 4
@__kstrtab_gen_pool_first_fit = external dso_local constant [0 x i8], align 1
@__kstrtabns_gen_pool_first_fit = external dso_local constant [0 x i8], align 1
@__ksymtab_gen_pool_first_fit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gen_pool_first_fit to i32), ptr @__kstrtab_gen_pool_first_fit, ptr @__kstrtabns_gen_pool_first_fit }, section "___ksymtab+gen_pool_first_fit", align 4
@__kstrtab_gen_pool_first_fit_align = external dso_local constant [0 x i8], align 1
@__kstrtabns_gen_pool_first_fit_align = external dso_local constant [0 x i8], align 1
@__ksymtab_gen_pool_first_fit_align = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gen_pool_first_fit_align to i32), ptr @__kstrtab_gen_pool_first_fit_align, ptr @__kstrtabns_gen_pool_first_fit_align }, section "___ksymtab+gen_pool_first_fit_align", align 4
@__kstrtab_gen_pool_fixed_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_gen_pool_fixed_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_gen_pool_fixed_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gen_pool_fixed_alloc to i32), ptr @__kstrtab_gen_pool_fixed_alloc, ptr @__kstrtabns_gen_pool_fixed_alloc }, section "___ksymtab+gen_pool_fixed_alloc", align 4
@__kstrtab_gen_pool_first_fit_order_align = external dso_local constant [0 x i8], align 1
@__kstrtabns_gen_pool_first_fit_order_align = external dso_local constant [0 x i8], align 1
@__ksymtab_gen_pool_first_fit_order_align = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gen_pool_first_fit_order_align to i32), ptr @__kstrtab_gen_pool_first_fit_order_align, ptr @__kstrtabns_gen_pool_first_fit_order_align }, section "___ksymtab+gen_pool_first_fit_order_align", align 4
@__kstrtab_gen_pool_best_fit = external dso_local constant [0 x i8], align 1
@__kstrtabns_gen_pool_best_fit = external dso_local constant [0 x i8], align 1
@__ksymtab_gen_pool_best_fit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gen_pool_best_fit to i32), ptr @__kstrtab_gen_pool_best_fit, ptr @__kstrtabns_gen_pool_best_fit }, section "___ksymtab+gen_pool_best_fit", align 4
@__kstrtab_gen_pool_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_gen_pool_get = external dso_local constant [0 x i8], align 1
@__ksymtab_gen_pool_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gen_pool_get to i32), ptr @__kstrtab_gen_pool_get, ptr @__kstrtabns_gen_pool_get }, section "___ksymtab_gpl+gen_pool_get", align 4
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"devm_gen_pool_release\00", [42 x i8] zeroinitializer }, align 32
@__kstrtab_devm_gen_pool_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_gen_pool_create = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_gen_pool_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_gen_pool_create to i32), ptr @__kstrtab_devm_gen_pool_create, ptr @__kstrtabns_devm_gen_pool_create }, section "___ksymtab+devm_gen_pool_create", align 4
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@__kstrtab_of_gen_pool_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_gen_pool_get = external dso_local constant [0 x i8], align 1
@__ksymtab_of_gen_pool_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_gen_pool_get to i32), ptr @__kstrtab_of_gen_pool_get, ptr @__kstrtabns_of_gen_pool_get }, section "___ksymtab_gpl+of_gen_pool_get", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@___asan_gen_.8 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 159, i32 3 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 223, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 845, i32 8 }
@___asan_gen_.24 = private constant [18 x i8] c"../lib/genalloc.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 898, i32 36 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 695, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 723, i32 2 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__ksymtab_devm_gen_pool_create, ptr @__ksymtab_gen_pool_add_owner, ptr @__ksymtab_gen_pool_alloc_algo_owner, ptr @__ksymtab_gen_pool_avail, ptr @__ksymtab_gen_pool_best_fit, ptr @__ksymtab_gen_pool_create, ptr @__ksymtab_gen_pool_destroy, ptr @__ksymtab_gen_pool_dma_alloc, ptr @__ksymtab_gen_pool_dma_alloc_algo, ptr @__ksymtab_gen_pool_dma_alloc_align, ptr @__ksymtab_gen_pool_dma_zalloc, ptr @__ksymtab_gen_pool_dma_zalloc_algo, ptr @__ksymtab_gen_pool_dma_zalloc_align, ptr @__ksymtab_gen_pool_first_fit, ptr @__ksymtab_gen_pool_first_fit_align, ptr @__ksymtab_gen_pool_first_fit_order_align, ptr @__ksymtab_gen_pool_fixed_alloc, ptr @__ksymtab_gen_pool_for_each_chunk, ptr @__ksymtab_gen_pool_free_owner, ptr @__ksymtab_gen_pool_get, ptr @__ksymtab_gen_pool_has_addr, ptr @__ksymtab_gen_pool_set_algo, ptr @__ksymtab_gen_pool_size, ptr @__ksymtab_gen_pool_virt_to_phys, ptr @__ksymtab_of_gen_pool_get, ptr @gen_pool_create.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gen_pool_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @gen_pool_create(i32 noundef %min_alloc_order, i32 %nid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 68) #13
  %cmp.not = icmp eq ptr %call.i.i, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str, ptr noundef nonnull @gen_pool_create.__key, i16 noundef signext 3) #14
  %chunks = getelementptr inbounds %struct.gen_pool, ptr %call.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %chunks to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %chunks, ptr %chunks, align 4
  %prev.i = getelementptr inbounds %struct.gen_pool, ptr %call.i.i, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %chunks, ptr %prev.i, align 8
  %min_alloc_order2 = getelementptr inbounds %struct.gen_pool, ptr %call.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %min_alloc_order2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %min_alloc_order, ptr %min_alloc_order2, align 4
  %algo = getelementptr inbounds %struct.gen_pool, ptr %call.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @gen_pool_first_fit, ptr %algo, align 8
  %data = getelementptr inbounds %struct.gen_pool, ptr %call.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %data, align 4
  %name = getelementptr inbounds %struct.gen_pool, ptr %call.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %name, align 8
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  ret ptr %call.i.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gen_pool_first_fit(ptr noundef %map, i32 noundef %size, i32 noundef %start, i32 noundef %nr, ptr nocapture readnone %data, ptr nocapture readnone %pool, i32 %start_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @bitmap_find_next_zero_area_off(ptr noundef %map, i32 noundef %size, i32 noundef %start, i32 noundef %nr, i32 noundef 0, i32 noundef 0) #14
  ret i32 %call.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gen_pool_add_owner(ptr noundef %pool, i32 noundef %virt, i32 noundef %phys, i32 noundef %size, i32 noundef %nid, ptr noundef %owner) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %min_alloc_order = getelementptr inbounds %struct.gen_pool, ptr %pool, i32 0, i32 2
  %0 = ptrtoint ptr %min_alloc_order to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %min_alloc_order, align 4
  %shr = lshr i32 %size, %1
  %sub = add i32 %shr, 31
  %2 = lshr i32 %sub, 3
  %mul = and i32 %2, 536870908
  %add1 = add nuw nsw i32 %mul, 28
  %call = tail call noalias ptr @vzalloc_node(i32 noundef %add1, i32 noundef %nid) #15
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !89

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %phys_addr = getelementptr inbounds %struct.gen_pool_chunk, ptr %call, i32 0, i32 2
  %3 = ptrtoint ptr %phys_addr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %phys, ptr %phys_addr, align 4
  %start_addr = getelementptr inbounds %struct.gen_pool_chunk, ptr %call, i32 0, i32 4
  %4 = ptrtoint ptr %start_addr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %virt, ptr %start_addr, align 4
  %add3 = add i32 %virt, -1
  %sub4 = add i32 %add3, %size
  %end_addr = getelementptr inbounds %struct.gen_pool_chunk, ptr %call, i32 0, i32 5
  %5 = ptrtoint ptr %end_addr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %sub4, ptr %end_addr, align 4
  %owner5 = getelementptr inbounds %struct.gen_pool_chunk, ptr %call, i32 0, i32 3
  %6 = ptrtoint ptr %owner5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %owner, ptr %owner5, align 4
  %avail = getelementptr inbounds %struct.gen_pool_chunk, ptr %call, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %avail, i32 noundef 4) #14
  %7 = ptrtoint ptr %avail to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 %size, ptr %avail, align 4
  tail call void @_raw_spin_lock(ptr noundef %pool) #14
  %chunks = getelementptr inbounds %struct.gen_pool, ptr %pool, i32 0, i32 1
  %8 = ptrtoint ptr %chunks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chunks, align 4
  %call.i.i22 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call, ptr noundef %chunks, ptr noundef %9) #14
  br i1 %call.i.i22, label %if.end.i.i, label %if.end.list_add_rcu.exit_crit_edge

if.end.list_add_rcu.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_rcu.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %call, align 4
  %prev2.i.i = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %11 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %chunks, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !90
  %12 = ptrtoint ptr %chunks to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %call, ptr %chunks, align 4
  %prev37.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %13 = ptrtoint ptr %prev37.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call, ptr %prev37.i.i, align 4
  br label %list_add_rcu.exit

list_add_rcu.exit:                                ; preds = %if.end.i.i, %if.end.list_add_rcu.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %pool) #14
  br label %cleanup

cleanup:                                          ; preds = %list_add_rcu.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add_rcu.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc_node(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gen_pool_virt_to_phys(ptr noundef %pool, i32 noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = tail call i32 @llvm.read_register.i32(metadata !80) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !91
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b33 = load i1, ptr @gen_pool_virt_to_phys.__warned, align 1
  br i1 %.b33, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @gen_pool_virt_to_phys.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 223, ptr noundef nonnull @.str.2) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %chunks = getelementptr inbounds %struct.gen_pool, ptr %pool, i32 0, i32 1
  %4 = ptrtoint ptr %chunks to i32
  call void @__asan_load4_noabort(i32 %4)
  %chunk.044 = load volatile ptr, ptr %chunks, align 4
  %cmp.not45 = icmp eq ptr %chunk.044, %chunks
  br i1 %cmp.not45, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %chunk.046 = phi ptr [ %chunk.0, %for.inc.for.body_crit_edge ], [ %chunk.044, %do.end.for.body_crit_edge ]
  %start_addr = getelementptr inbounds %struct.gen_pool_chunk, ptr %chunk.046, i32 0, i32 4
  %5 = ptrtoint ptr %start_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %start_addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %addr)
  %cmp10.not = icmp ugt i32 %6, %addr
  br i1 %cmp10.not, label %for.body.for.inc_crit_edge, label %land.lhs.true11

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true11:                                  ; preds = %for.body
  %end_addr = getelementptr inbounds %struct.gen_pool_chunk, ptr %chunk.046, i32 0, i32 5
  %7 = ptrtoint ptr %end_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %end_addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %addr)
  %cmp12.not = icmp ult i32 %8, %addr
  br i1 %cmp12.not, label %land.lhs.true11.for.inc_crit_edge, label %if.then13

land.lhs.true11.for.inc_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #12
  %phys_addr = getelementptr inbounds %struct.gen_pool_chunk, ptr %chunk.046, i32 0, i32 2
  %9 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %phys_addr, align 4
  %sub = sub i32 %addr, %6
  %add = add i32 %sub, %10
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true11.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %11 = ptrtoint ptr %chunk.046 to i32
  call void @__asan_load4_noabort(i32 %11)
  %chunk.0 = load volatile ptr, ptr %chunk.046, align 4
  %cmp.not = icmp eq ptr %chunk.0, %chunks
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then13, %do.end.for.end_crit_edge
  %paddr.0 = phi i32 [ %add, %if.then13 ], [ -1, %do.end.for.end_crit_edge ], [ -1, %for.inc.for.end_crit_edge ]
  %call.i34 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i34, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i37

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i37:                                ; preds = %for.end
  %call1.i35 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i35)
  %tobool.not.i36 = icmp eq i32 %call1.i35, 0
  br i1 %tobool.not.i36, label %land.lhs.true.i37.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i39

land.lhs.true.i37.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i37
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i39:                               ; preds = %land.lhs.true.i37
  %.b4.i38 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i38, label %land.lhs.true2.i39.rcu_read_unlock.exit_crit_edge, label %if.then.i40

land.lhs.true2.i39.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i39
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i40:                                      ; preds = %land.lhs.true2.i39
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i40, %land.lhs.true2.i39.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i37.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !92
  %12 = tail call i32 @llvm.read_register.i32(metadata !80) #14
  %and.i.i.i.i.i41 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i41 to ptr
  %preempt_count.i.i.i.i42 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i42 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i42, align 4
  %sub.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i42, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret i32 %paddr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !92
  %0 = tail call i32 @llvm.read_register.i32(metadata !80) #14
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gen_pool_destroy(ptr noundef %pool) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %min_alloc_order = getelementptr inbounds %struct.gen_pool, ptr %pool, i32 0, i32 2
  %0 = ptrtoint ptr %min_alloc_order to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %min_alloc_order, align 4
  %chunks = getelementptr inbounds %struct.gen_pool, ptr %pool, i32 0, i32 1
  %2 = ptrtoint ptr %chunks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chunks, align 4
  %cmp.i.not27 = icmp eq ptr %3, %chunks
  br i1 %cmp.i.not27, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %do.end13.for.body_crit_edge, %entry.for.body_crit_edge
  %_chunk.028 = phi ptr [ %_next_chunk.029, %do.end13.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %_chunk.028 to i32
  call void @__asan_load4_noabort(i32 %4)
  %_next_chunk.029 = load ptr, ptr %_chunk.028, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %_chunk.028) #14
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %_chunk.028, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %_chunk.028 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %_chunk.028, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %11 = ptrtoint ptr %_chunk.028 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %_chunk.028, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %_chunk.028, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %end_addr.i = getelementptr inbounds %struct.gen_pool_chunk, ptr %_chunk.028, i32 0, i32 5
  %13 = ptrtoint ptr %end_addr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %end_addr.i, align 4
  %start_addr.i = getelementptr inbounds %struct.gen_pool_chunk, ptr %_chunk.028, i32 0, i32 4
  %15 = ptrtoint ptr %start_addr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %start_addr.i, align 4
  %sub.i = add i32 %14, 1
  %add.i = sub i32 %sub.i, %16
  %shr = lshr i32 %add.i, %1
  %bits = getelementptr inbounds %struct.gen_pool_chunk, ptr %_chunk.028, i32 0, i32 6
  %call4 = tail call i32 @_find_first_bit_be(ptr noundef %bits, i32 noundef %shr) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %call4, i32 %shr)
  %cmp = icmp ult i32 %call4, %shr
  br i1 %cmp, label %do.body8, label %do.end13, !prof !89

do.body8:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/genalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 255, 0\0A.popsection", ""() #14, !srcloc !93
  unreachable

do.end13:                                         ; preds = %list_del.exit
  tail call void @vfree(ptr noundef %_chunk.028) #14
  %cmp.i.not = icmp eq ptr %_next_chunk.029, %chunks
  br i1 %cmp.i.not, label %do.end13.for.end_crit_edge, label %do.end13.for.body_crit_edge

do.end13.for.body_crit_edge:                      ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.end13.for.end_crit_edge:                       ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %do.end13.for.end_crit_edge, %entry.for.end_crit_edge
  %name = getelementptr inbounds %struct.gen_pool, ptr %pool, i32 0, i32 5
  %17 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name, align 4
  tail call void @kfree_const(ptr noundef %18) #14
  tail call void @kfree(ptr noundef %pool) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_const(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gen_pool_alloc_algo_owner(ptr noundef %pool, i32 noundef %size, ptr nocapture noundef readonly %algo, ptr noundef %data, ptr noundef writeonly %owner) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %min_alloc_order = getelementptr inbounds %struct.gen_pool, ptr %pool, i32 0, i32 2
  %0 = ptrtoint ptr %min_alloc_order to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %min_alloc_order, align 4
  %tobool.not = icmp eq ptr %owner, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %owner, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp = icmp eq i32 %size, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %shl = shl nuw i32 1, %1
  %add = add i32 %size, -1
  %sub = add i32 %add, %shl
  %shr = lshr i32 %sub, %1
  %3 = tail call i32 @llvm.read_register.i32(metadata !80) #14
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !91
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %if.end2.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end2.rcu_read_lock.exit_crit_edge:             ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end2
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end2.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true6

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b107 = load i1, ptr @gen_pool_alloc_algo_owner.__warned, align 1
  br i1 %.b107, label %land.lhs.true6.do.end_crit_edge, label %if.then8

land.lhs.true6.do.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then8:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @gen_pool_alloc_algo_owner.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 297, ptr noundef nonnull @.str.2) #14
  br label %do.end

do.end:                                           ; preds = %if.then8, %land.lhs.true6.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %chunks = getelementptr inbounds %struct.gen_pool, ptr %pool, i32 0, i32 1
  %7 = ptrtoint ptr %chunks to i32
  call void @__asan_load4_noabort(i32 %7)
  %chunk.0140 = load volatile ptr, ptr %chunks, align 4
  %cmp15.not141 = icmp eq ptr %chunk.0140, %chunks
  br i1 %cmp15.not141, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %chunk.0142 = phi ptr [ %chunk.0, %for.inc.for.body_crit_edge ], [ %chunk.0140, %do.end.for.body_crit_edge ]
  %avail = getelementptr inbounds %struct.gen_pool_chunk, ptr %chunk.0142, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %avail, i32 noundef 4) #14
  %8 = ptrtoint ptr %avail to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %avail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %size)
  %cmp17 = icmp ult i32 %9, %size
  br i1 %cmp17, label %for.body.for.inc_crit_edge, label %if.end19

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end19:                                         ; preds = %for.body
  %end_addr.i = getelementptr inbounds %struct.gen_pool_chunk, ptr %chunk.0142, i32 0, i32 5
  %10 = ptrtoint ptr %end_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %end_addr.i, align 4
  %start_addr.i = getelementptr inbounds %struct.gen_pool_chunk, ptr %chunk.0142, i32 0, i32 4
  %12 = ptrtoint ptr %start_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %start_addr.i, align 4
  %sub.i = add i32 %11, 1
  %add.i = sub i32 %sub.i, %13
  %shr21 = lshr i32 %add.i, %1
  %bits = getelementptr inbounds %struct.gen_pool_chunk, ptr %chunk.0142, i32 0, i32 6
  br label %retry

retry:                                            ; preds = %if.then30.retry_crit_edge, %if.end19
  %start_bit.0 = phi i32 [ 0, %if.end19 ], [ %call22, %if.then30.retry_crit_edge ]
  %14 = ptrtoint ptr %start_addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %start_addr.i, align 4
  %call22 = tail call i32 %algo(ptr noundef %bits, i32 noundef %shr21, i32 noundef %start_bit.0, i32 noundef %shr, ptr noundef %data, ptr noundef %pool, i32 noundef %15) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %call22, i32 %shr21)
  %cmp23.not = icmp ult i32 %call22, %shr21
  br i1 %cmp23.not, label %if.end25, label %retry.for.inc_crit_edge

retry.for.inc_crit_edge:                          ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end25:                                         ; preds = %retry
  %div28.i = lshr i32 %call22, 5
  %add.ptr.i = getelementptr i32, ptr %bits, i32 %div28.i
  %add.i109 = add i32 %shr, %call22
  %rem.i = and i32 %call22, 31
  %sub.i110 = sub nuw nsw i32 32, %rem.i
  %shl.i = shl nsw i32 -1, %rem.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i110, i32 %shr)
  %cmp.not53.i = icmp ugt i32 %sub.i110, %shr
  br i1 %cmp.not53.i, label %if.end25.while.end.i_crit_edge, label %if.end25.while.body.i_crit_edge

if.end25.while.body.i_crit_edge:                  ; preds = %if.end25
  br label %while.body.i

if.end25.while.end.i_crit_edge:                   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.end25.while.body.i_crit_edge
  %mask_to_set.057.i = phi i32 [ -1, %if.end.i.while.body.i_crit_edge ], [ %shl.i, %if.end25.while.body.i_crit_edge ]
  %bits_to_set.056.i = phi i32 [ 32, %if.end.i.while.body.i_crit_edge ], [ %sub.i110, %if.end25.while.body.i_crit_edge ]
  %p.055.i = phi ptr [ %incdec.ptr.i, %if.end.i.while.body.i_crit_edge ], [ %add.ptr.i, %if.end25.while.body.i_crit_edge ]
  %nr.addr.054.i = phi i32 [ %sub1.i, %if.end.i.while.body.i_crit_edge ], [ %shr, %if.end25.while.body.i_crit_edge ]
  %16 = ptrtoint ptr %p.055.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %p.055.i, align 4
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %__cmpxchg.exit.i.i.do.body.i.i_crit_edge, %while.body.i
  %nval.0.i.i = phi i32 [ %17, %while.body.i ], [ %asmresult1.i.i.i, %__cmpxchg.exit.i.i.do.body.i.i_crit_edge ]
  %and.i.i = and i32 %nval.0.i.i, %mask_to_set.057.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i, label %do.body.i.i.bitmap_set_ll.exit_crit_edge

do.body.i.i.bitmap_set_ll.exit_crit_edge:         ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bitmap_set_ll.exit

do.end.i.i:                                       ; preds = %do.body.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !94
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !95
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %p.055.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !96
  %or.i.i = or i32 %nval.0.i.i, %mask_to_set.057.i
  tail call void @llvm.prefetch.p0(ptr %p.055.i, i32 1, i32 3, i32 1) #14
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %do.end.i.i
  %18 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %p.055.i, i32 %nval.0.i.i, i32 %or.i.i) #14, !srcloc !97
  %asmresult.i.i.i = extractvalue { i32, i32 } %18, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %__cmpxchg.exit.i.i, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i

__cmpxchg.exit.i.i:                               ; preds = %do.body.i.i.i
  %asmresult1.i.i.i = extractvalue { i32, i32 } %18, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !98
  %cmp.not.i.i = icmp eq i32 %asmresult1.i.i.i, %nval.0.i.i
  br i1 %cmp.not.i.i, label %if.end.i, label %__cmpxchg.exit.i.i.do.body.i.i_crit_edge

__cmpxchg.exit.i.i.do.body.i.i_crit_edge:         ; preds = %__cmpxchg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

if.end.i:                                         ; preds = %__cmpxchg.exit.i.i
  %sub1.i = sub i32 %nr.addr.054.i, %bits_to_set.056.i
  %incdec.ptr.i = getelementptr i32, ptr %p.055.i, i32 1
  %cmp.not.i = icmp ult i32 %sub1.i, 32
  br i1 %cmp.not.i, label %if.end.i.while.end.i_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.end.i:                                      ; preds = %if.end.i.while.end.i_crit_edge, %if.end25.while.end.i_crit_edge
  %nr.addr.0.lcssa.i = phi i32 [ %shr, %if.end25.while.end.i_crit_edge ], [ %sub1.i, %if.end.i.while.end.i_crit_edge ]
  %p.0.lcssa.i = phi ptr [ %add.ptr.i, %if.end25.while.end.i_crit_edge ], [ %incdec.ptr.i, %if.end.i.while.end.i_crit_edge ]
  %mask_to_set.0.lcssa.i = phi i32 [ %shl.i, %if.end25.while.end.i_crit_edge ], [ -1, %if.end.i.while.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr.addr.0.lcssa.i)
  %tobool2.not.i = icmp eq i32 %nr.addr.0.lcssa.i, 0
  br i1 %tobool2.not.i, label %while.end.i.if.end49_crit_edge, label %if.then3.i

while.end.i.if.end49_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.then3.i:                                       ; preds = %while.end.i
  %sub4.i = sub i32 0, %add.i109
  %and5.i = and i32 %sub4.i, 31
  %shr.i = lshr i32 -1, %and5.i
  %and6.i = and i32 %mask_to_set.0.lcssa.i, %shr.i
  %19 = ptrtoint ptr %p.0.lcssa.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %p.0.lcssa.i, align 4
  br label %do.body.i32.i

do.body.i32.i:                                    ; preds = %__cmpxchg.exit.i41.i.do.body.i32.i_crit_edge, %if.then3.i
  %nval.0.i29.i = phi i32 [ %20, %if.then3.i ], [ %asmresult1.i.i39.i, %__cmpxchg.exit.i41.i.do.body.i32.i_crit_edge ]
  %and.i30.i = and i32 %nval.0.i29.i, %and6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i30.i)
  %tobool.not.i31.i = icmp eq i32 %and.i30.i, 0
  br i1 %tobool.not.i31.i, label %do.end.i35.i, label %do.body.i32.i.bitmap_set_ll.exit_crit_edge

do.body.i32.i.bitmap_set_ll.exit_crit_edge:       ; preds = %do.body.i32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bitmap_set_ll.exit

do.end.i35.i:                                     ; preds = %do.body.i32.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !94
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !95
  %call.i.i33.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %p.0.lcssa.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !96
  %or.i34.i = or i32 %nval.0.i29.i, %and6.i
  tail call void @llvm.prefetch.p0(ptr %p.0.lcssa.i, i32 1, i32 3, i32 1) #14
  br label %do.body.i.i38.i

do.body.i.i38.i:                                  ; preds = %do.body.i.i38.i.do.body.i.i38.i_crit_edge, %do.end.i35.i
  %21 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %p.0.lcssa.i, i32 %nval.0.i29.i, i32 %or.i34.i) #14, !srcloc !97
  %asmresult.i.i36.i = extractvalue { i32, i32 } %21, 0
  %tobool.not.i.i37.i = icmp eq i32 %asmresult.i.i36.i, 0
  br i1 %tobool.not.i.i37.i, label %__cmpxchg.exit.i41.i, label %do.body.i.i38.i.do.body.i.i38.i_crit_edge

do.body.i.i38.i.do.body.i.i38.i_crit_edge:        ; preds = %do.body.i.i38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i38.i

__cmpxchg.exit.i41.i:                             ; preds = %do.body.i.i38.i
  %asmresult1.i.i39.i = extractvalue { i32, i32 } %21, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !98
  %cmp.not.i40.i = icmp eq i32 %asmresult1.i.i39.i, %nval.0.i29.i
  br i1 %cmp.not.i40.i, label %__cmpxchg.exit.i41.i.if.end49_crit_edge, label %__cmpxchg.exit.i41.i.do.body.i32.i_crit_edge

__cmpxchg.exit.i41.i.do.body.i32.i_crit_edge:     ; preds = %__cmpxchg.exit.i41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i32.i

__cmpxchg.exit.i41.i.if.end49_crit_edge:          ; preds = %__cmpxchg.exit.i41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

bitmap_set_ll.exit:                               ; preds = %do.body.i32.i.bitmap_set_ll.exit_crit_edge, %do.body.i.i.bitmap_set_ll.exit_crit_edge
  %retval.0.i = phi i32 [ %nr.addr.054.i, %do.body.i.i.bitmap_set_ll.exit_crit_edge ], [ %nr.addr.0.lcssa.i, %do.body.i32.i.bitmap_set_ll.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool29.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool29.not, label %bitmap_set_ll.exit.if.end49_crit_edge, label %if.then30

bitmap_set_ll.exit.if.end49_crit_edge:            ; preds = %bitmap_set_ll.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.then30:                                        ; preds = %bitmap_set_ll.exit
  %sub33 = sub i32 %shr, %retval.0.i
  %call34 = tail call fastcc i32 @bitmap_clear_ll(ptr noundef %bits, i32 noundef %call22, i32 noundef %sub33)
  %tobool36.not = icmp eq i32 %call34, 0
  br i1 %tobool36.not, label %if.then30.retry_crit_edge, label %do.body40, !prof !99

if.then30.retry_crit_edge:                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %retry

do.body40:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/genalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 312, 0\0A.popsection", ""() #14, !srcloc !100
  unreachable

if.end49:                                         ; preds = %bitmap_set_ll.exit.if.end49_crit_edge, %__cmpxchg.exit.i41.i.if.end49_crit_edge, %while.end.i.if.end49_crit_edge
  %22 = ptrtoint ptr %start_addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %start_addr.i, align 4
  %shl51 = shl i32 %call22, %1
  %add52 = add i32 %23, %shl51
  %shl53 = shl i32 %shr, %1
  %call.i.i108 = tail call zeroext i1 @__kasan_check_write(ptr noundef %avail, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %avail, i32 1, i32 3, i32 1) #14
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %avail, ptr %avail, i32 %shl53, ptr elementtype(i32) %avail) #14, !srcloc !101
  br i1 %tobool.not, label %if.end49.for.end_crit_edge, label %if.then56

if.end49.for.end_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.then56:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  %owner57 = getelementptr inbounds %struct.gen_pool_chunk, ptr %chunk.0142, i32 0, i32 3
  %25 = ptrtoint ptr %owner57 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %owner57, align 4
  %27 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %owner, align 4
  br label %for.end

for.inc:                                          ; preds = %retry.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %28 = ptrtoint ptr %chunk.0142 to i32
  call void @__asan_load4_noabort(i32 %28)
  %chunk.0 = load volatile ptr, ptr %chunk.0142, align 4
  %cmp15.not = icmp eq ptr %chunk.0, %chunks
  br i1 %cmp15.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then56, %if.end49.for.end_crit_edge, %do.end.for.end_crit_edge
  %addr.0 = phi i32 [ %add52, %if.then56 ], [ %add52, %if.end49.for.end_crit_edge ], [ 0, %do.end.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  %call.i111 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i111, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i114

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i114:                               ; preds = %for.end
  %call1.i112 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i112)
  %tobool.not.i113 = icmp eq i32 %call1.i112, 0
  br i1 %tobool.not.i113, label %land.lhs.true.i114.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i116

land.lhs.true.i114.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i114
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i116:                              ; preds = %land.lhs.true.i114
  %.b4.i115 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i115, label %land.lhs.true2.i116.rcu_read_unlock.exit_crit_edge, label %if.then.i117

land.lhs.true2.i116.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i116
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i117:                                     ; preds = %land.lhs.true2.i116
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i117, %land.lhs.true2.i116.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i114.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !92
  %29 = tail call i32 @llvm.read_register.i32(metadata !80) #14
  %and.i.i.i.i.i118 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i118 to ptr
  %preempt_count.i.i.i.i119 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i119 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i119, align 4
  %sub.i.i.i = add i32 %32, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i119, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %addr.0, %rcu_read_unlock.exit ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bitmap_clear_ll(ptr noundef %map, i32 noundef %start, i32 noundef %nr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %div28 = lshr i32 %start, 5
  %add.ptr = getelementptr i32, ptr %map, i32 %div28
  %add = add i32 %start, %nr
  %rem = and i32 %start, 31
  %sub = sub nuw nsw i32 32, %rem
  %shl = shl nsw i32 -1, %rem
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %nr)
  %cmp.not54 = icmp ugt i32 %sub, %nr
  br i1 %cmp.not54, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %mask_to_clear.058 = phi i32 [ -1, %if.end.while.body_crit_edge ], [ %shl, %entry.while.body_crit_edge ]
  %bits_to_clear.057 = phi i32 [ 32, %if.end.while.body_crit_edge ], [ %sub, %entry.while.body_crit_edge ]
  %p.056 = phi ptr [ %incdec.ptr, %if.end.while.body_crit_edge ], [ %add.ptr, %entry.while.body_crit_edge ]
  %nr.addr.055 = phi i32 [ %sub1, %if.end.while.body_crit_edge ], [ %nr, %entry.while.body_crit_edge ]
  %0 = ptrtoint ptr %p.056 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p.056, align 4
  %neg.i = xor i32 %mask_to_clear.058, -1
  br label %do.body.i

do.body.i:                                        ; preds = %__cmpxchg.exit.i.do.body.i_crit_edge, %while.body
  %nval.0.i = phi i32 [ %1, %while.body ], [ %asmresult1.i.i, %__cmpxchg.exit.i.do.body.i_crit_edge ]
  %and.i = and i32 %nval.0.i, %mask_to_clear.058
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %mask_to_clear.058)
  %cmp.not.i = icmp eq i32 %and.i, %mask_to_clear.058
  br i1 %cmp.not.i, label %do.end.i, label %do.body.i.cleanup_crit_edge

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end.i:                                         ; preds = %do.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !102
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !103
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %p.056, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !104
  %and19.i = and i32 %nval.0.i, %neg.i
  tail call void @llvm.prefetch.p0(ptr %p.056, i32 1, i32 3, i32 1) #14
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %do.end.i
  %2 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %p.056, i32 %nval.0.i, i32 %and19.i) #14, !srcloc !97
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  %tobool.not.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i.i, label %__cmpxchg.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

__cmpxchg.exit.i:                                 ; preds = %do.body.i.i
  %asmresult1.i.i = extractvalue { i32, i32 } %2, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !105
  %cmp27.not.i = icmp eq i32 %asmresult1.i.i, %nval.0.i
  br i1 %cmp27.not.i, label %if.end, label %__cmpxchg.exit.i.do.body.i_crit_edge

__cmpxchg.exit.i.do.body.i_crit_edge:             ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

if.end:                                           ; preds = %__cmpxchg.exit.i
  %sub1 = sub i32 %nr.addr.055, %bits_to_clear.057
  %incdec.ptr = getelementptr i32, ptr %p.056, i32 1
  %cmp.not = icmp ult i32 %sub1, 32
  br i1 %cmp.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %nr.addr.0.lcssa = phi i32 [ %nr, %entry.while.end_crit_edge ], [ %sub1, %if.end.while.end_crit_edge ]
  %p.0.lcssa = phi ptr [ %add.ptr, %entry.while.end_crit_edge ], [ %incdec.ptr, %if.end.while.end_crit_edge ]
  %mask_to_clear.0.lcssa = phi i32 [ %shl, %entry.while.end_crit_edge ], [ -1, %if.end.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr.addr.0.lcssa)
  %tobool2.not = icmp eq i32 %nr.addr.0.lcssa, 0
  br i1 %tobool2.not, label %while.end.cleanup_crit_edge, label %if.then3

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3:                                         ; preds = %while.end
  %sub4 = sub i32 0, %add
  %and5 = and i32 %sub4, 31
  %shr = lshr i32 -1, %and5
  %and6 = and i32 %mask_to_clear.0.lcssa, %shr
  %3 = ptrtoint ptr %p.0.lcssa to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %p.0.lcssa, align 4
  %neg.i29 = xor i32 %and6, -1
  br label %do.body.i33

do.body.i33:                                      ; preds = %__cmpxchg.exit.i42.do.body.i33_crit_edge, %if.then3
  %nval.0.i30 = phi i32 [ %4, %if.then3 ], [ %asmresult1.i.i40, %__cmpxchg.exit.i42.do.body.i33_crit_edge ]
  %and.i31 = and i32 %nval.0.i30, %and6
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i31, i32 %and6)
  %cmp.not.i32 = icmp eq i32 %and.i31, %and6
  br i1 %cmp.not.i32, label %do.end.i36, label %do.body.i33.cleanup_crit_edge

do.body.i33.cleanup_crit_edge:                    ; preds = %do.body.i33
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end.i36:                                       ; preds = %do.body.i33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !102
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !103
  %call.i.i34 = tail call zeroext i1 @__kasan_check_write(ptr noundef %p.0.lcssa, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !104
  %and19.i35 = and i32 %nval.0.i30, %neg.i29
  tail call void @llvm.prefetch.p0(ptr %p.0.lcssa, i32 1, i32 3, i32 1) #14
  br label %do.body.i.i39

do.body.i.i39:                                    ; preds = %do.body.i.i39.do.body.i.i39_crit_edge, %do.end.i36
  %5 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %p.0.lcssa, i32 %nval.0.i30, i32 %and19.i35) #14, !srcloc !97
  %asmresult.i.i37 = extractvalue { i32, i32 } %5, 0
  %tobool.not.i.i38 = icmp eq i32 %asmresult.i.i37, 0
  br i1 %tobool.not.i.i38, label %__cmpxchg.exit.i42, label %do.body.i.i39.do.body.i.i39_crit_edge

do.body.i.i39.do.body.i.i39_crit_edge:            ; preds = %do.body.i.i39
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i39

__cmpxchg.exit.i42:                               ; preds = %do.body.i.i39
  %asmresult1.i.i40 = extractvalue { i32, i32 } %5, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !105
  %cmp27.not.i41 = icmp eq i32 %asmresult1.i.i40, %nval.0.i30
  br i1 %cmp27.not.i41, label %__cmpxchg.exit.i42.cleanup_crit_edge, label %__cmpxchg.exit.i42.do.body.i33_crit_edge

__cmpxchg.exit.i42.do.body.i33_crit_edge:         ; preds = %__cmpxchg.exit.i42
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i33

__cmpxchg.exit.i42.cleanup_crit_edge:             ; preds = %__cmpxchg.exit.i42
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %__cmpxchg.exit.i42.cleanup_crit_edge, %do.body.i33.cleanup_crit_edge, %while.end.cleanup_crit_edge, %do.body.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.end.cleanup_crit_edge ], [ 0, %__cmpxchg.exit.i42.cleanup_crit_edge ], [ %nr.addr.0.lcssa, %do.body.i33.cleanup_crit_edge ], [ %nr.addr.055, %do.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @gen_pool_dma_alloc(ptr noundef %pool, i32 noundef %size, ptr noundef writeonly %dma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %tobool.not.i = icmp eq ptr %pool, null
  br i1 %tobool.not.i, label %entry.gen_pool_dma_alloc_algo.exit_crit_edge, label %if.end.i

entry.gen_pool_dma_alloc_algo.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %gen_pool_dma_alloc_algo.exit

if.end.i:                                         ; preds = %entry
  %data = getelementptr inbounds %struct.gen_pool, ptr %pool, i32 0, i32 4
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %algo = getelementptr inbounds %struct.gen_pool, ptr %pool, i32 0, i32 3
  %2 = ptrtoint ptr %algo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo, align 4
  %call.i.i = tail call i32 @gen_pool_alloc_algo_owner(ptr noundef nonnull %pool, i32 noundef %size, ptr noundef %3, ptr noundef %1, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i, label %if.end.i.gen_pool_dma_alloc_algo.exit_crit_edge, label %if.end3.i

if.end.i.gen_pool_dma_alloc_algo.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gen_pool_dma_alloc_algo.exit

if.end3.i:                                        ; preds = %if.end.i
  %tobool4.not.i = icmp eq ptr %dma, null
  br i1 %tobool4.not.i, label %if.end3.i.if.end7.i_crit_edge, label %if.then5.i

if.end3.i.if.end7.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  %call6.i = tail call i32 @gen_pool_virt_to_phys(ptr noundef nonnull %pool, i32 noundef %call.i.i) #14
  %4 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call6.i, ptr %dma, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.end3.i.if.end7.i_crit_edge
  %5 = inttoptr i32 %call.i.i to ptr
  br label %gen_pool_dma_alloc_algo.exit

gen_pool_dma_alloc_algo.exit:                     ; preds = %if.end7.i, %if.end.i.gen_pool_dma_alloc_algo.exit_crit_edge, %entry.gen_pool_dma_alloc_algo.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end7.i ], [ null, %entry.gen_pool_dma_alloc_algo.exit_crit_edge ], [ null, %if.end.i.gen_pool_dma_alloc_algo.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @gen_pool_dma_alloc_algo(ptr noundef %pool, i32 noundef %size, ptr noundef writeonly %dma, ptr nocapture noundef readonly %algo, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %tobool.not = icmp eq ptr %pool, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @gen_pool_alloc_algo_owner(ptr noundef nonnull %pool, i32 noundef %size, ptr noundef %algo, ptr noundef %data, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not = icmp eq i32 %call.i, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %tobool4.not = icmp eq ptr %dma, null
  br i1 %tobool4.not, label %if.end3.if.end7_crit_edge, label %if.then5

if.end3.if.end7_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %call6 = tail call i32 @gen_pool_virt_to_phys(ptr noundef nonnull %pool, i32 noundef %call.i)
  %0 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call6, ptr %dma, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end3.if.end7_crit_edge
  %1 = inttoptr i32 %call.i to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %1, %if.end7 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @gen_pool_dma_alloc_align(ptr noundef %pool, i32 noundef %size, ptr noundef writeonly %dma, i32 noundef %align) #0 align 64 {
entry:
  %data = alloca %struct.genpool_data_align, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #14
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %align, ptr %data, align 4
  %tobool.not.i = icmp eq ptr %pool, null
  br i1 %tobool.not.i, label %entry.gen_pool_dma_alloc_algo.exit_crit_edge, label %if.end.i

entry.gen_pool_dma_alloc_algo.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %gen_pool_dma_alloc_algo.exit

if.end.i:                                         ; preds = %entry
  %call.i.i = call i32 @gen_pool_alloc_algo_owner(ptr noundef nonnull %pool, i32 noundef %size, ptr noundef nonnull @gen_pool_first_fit_align, ptr noundef nonnull %data, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i, label %if.end.i.gen_pool_dma_alloc_algo.exit_crit_edge, label %if.end3.i

if.end.i.gen_pool_dma_alloc_algo.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gen_pool_dma_alloc_algo.exit

if.end3.i:                                        ; preds = %if.end.i
  %tobool4.not.i = icmp eq ptr %dma, null
  br i1 %tobool4.not.i, label %if.end3.i.if.end7.i_crit_edge, label %if.then5.i

if.end3.i.if.end7.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  %call6.i = call i32 @gen_pool_virt_to_phys(ptr noundef nonnull %pool, i32 noundef %call.i.i) #14
  %1 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call6.i, ptr %dma, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.end3.i.if.end7.i_crit_edge
  %2 = inttoptr i32 %call.i.i to ptr
  br label %gen_pool_dma_alloc_algo.exit

gen_pool_dma_alloc_algo.exit:                     ; preds = %if.end7.i, %if.end.i.gen_pool_dma_alloc_algo.exit_crit_edge, %entry.gen_pool_dma_alloc_algo.exit_crit_edge
  %retval.0.i = phi ptr [ %2, %if.end7.i ], [ null, %entry.gen_pool_dma_alloc_algo.exit_crit_edge ], [ null, %if.end.i.gen_pool_dma_alloc_algo.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #14
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gen_pool_first_fit_align(ptr noundef %map, i32 noundef %size, i32 noundef %start, i32 noundef %nr, ptr nocapture noundef readonly %data, ptr nocapture noundef readonly %pool, i32 noundef %start_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %min_alloc_order = getelementptr inbounds %struct.gen_pool, ptr %pool, i32 0, i32 2
  %0 = ptrtoint ptr %min_alloc_order to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %min_alloc_order, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  %shl = shl nuw i32 1, %1
  %add = add i32 %3, -1
  %sub = add i32 %add, %shl
  %shr = lshr i32 %sub, %1
  %sub1 = add i32 %shr, -1
  %and = and i32 %add, %start_addr
  %shr4 = lshr i32 %and, %1
  %call = tail call i32 @bitmap_find_next_zero_area_off(ptr noundef %map, i32 noundef %size, i32 noundef %start, i32 noundef %nr, i32 noundef %sub1, i32 noundef %shr4) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @gen_pool_dma_zalloc(ptr noundef %pool, i32 noundef %size, ptr noundef writeonly %dma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %tobool.not.i.i = icmp eq ptr %pool, null
  br i1 %tobool.not.i.i, label %entry.gen_pool_dma_zalloc_algo.exit_crit_edge, label %if.end.i.i

entry.gen_pool_dma_zalloc_algo.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %gen_pool_dma_zalloc_algo.exit

if.end.i.i:                                       ; preds = %entry
  %data = getelementptr inbounds %struct.gen_pool, ptr %pool, i32 0, i32 4
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %algo = getelementptr inbounds %struct.gen_pool, ptr %pool, i32 0, i32 3
  %2 = ptrtoint ptr %algo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo, align 4
  %call.i.i.i = tail call i32 @gen_pool_alloc_algo_owner(ptr noundef nonnull %pool, i32 noundef %size, ptr noundef %3, ptr noundef %1, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i.gen_pool_dma_zalloc_algo.exit_crit_edge, label %if.end3.i.i

if.end.i.i.gen_pool_dma_zalloc_algo.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gen_pool_dma_zalloc_algo.exit

if.end3.i.i:                                      ; preds = %if.end.i.i
  %tobool4.not.i.i = icmp eq ptr %dma, null
  br i1 %tobool4.not.i.i, label %if.end3.i.i.if.then.i_crit_edge, label %if.then5.i.i

if.end3.i.i.if.then.i_crit_edge:                  ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then5.i.i:                                     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call6.i.i = tail call i32 @gen_pool_virt_to_phys(ptr noundef nonnull %pool, i32 noundef %call.i.i.i) #14
  %4 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call6.i.i, ptr %dma, align 4
  br label %if.then.i

if.then.i:                                        ; preds = %if.then5.i.i, %if.end3.i.i.if.then.i_crit_edge
  %5 = inttoptr i32 %call.i.i.i to ptr
  %6 = call ptr @memset(ptr %5, i32 0, i32 %size)
  br label %gen_pool_dma_zalloc_algo.exit

gen_pool_dma_zalloc_algo.exit:                    ; preds = %if.then.i, %if.end.i.i.gen_pool_dma_zalloc_algo.exit_crit_edge, %entry.gen_pool_dma_zalloc_algo.exit_crit_edge
  %retval.0.i6.i = phi ptr [ %5, %if.then.i ], [ null, %entry.gen_pool_dma_zalloc_algo.exit_crit_edge ], [ null, %if.end.i.i.gen_pool_dma_zalloc_algo.exit_crit_edge ]
  ret ptr %retval.0.i6.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @gen_pool_dma_zalloc_algo(ptr noundef %pool, i32 noundef %size, ptr noundef writeonly %dma, ptr nocapture noundef readonly %algo, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %tobool.not.i = icmp eq ptr %pool, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  %call.i.i = tail call i32 @gen_pool_alloc_algo_owner(ptr noundef nonnull %pool, i32 noundef %size, ptr noundef %algo, ptr noundef %data, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end_crit_edge, label %if.end3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end3.i:                                        ; preds = %if.end.i
  %tobool4.not.i = icmp eq ptr %dma, null
  br i1 %tobool4.not.i, label %if.end3.i.if.then_crit_edge, label %if.then5.i

if.end3.i.if.then_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then5.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  %call6.i = tail call i32 @gen_pool_virt_to_phys(ptr noundef nonnull %pool, i32 noundef %call.i.i) #14
  %0 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call6.i, ptr %dma, align 4
  br label %if.then

if.then:                                          ; preds = %if.then5.i, %if.end3.i.if.then_crit_edge
  %1 = inttoptr i32 %call.i.i to ptr
  %2 = call ptr @memset(ptr %1, i32 0, i32 %size)
  br label %if.end

if.end:                                           ; preds = %if.then, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %retval.0.i6 = phi ptr [ %1, %if.then ], [ null, %entry.if.end_crit_edge ], [ null, %if.end.i.if.end_crit_edge ]
  ret ptr %retval.0.i6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @gen_pool_dma_zalloc_align(ptr noundef %pool, i32 noundef %size, ptr noundef writeonly %dma, i32 noundef %align) #0 align 64 {
entry:
  %data = alloca %struct.genpool_data_align, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #14
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %align, ptr %data, align 4
  %tobool.not.i.i = icmp eq ptr %pool, null
  br i1 %tobool.not.i.i, label %entry.gen_pool_dma_zalloc_algo.exit_crit_edge, label %if.end.i.i

entry.gen_pool_dma_zalloc_algo.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %gen_pool_dma_zalloc_algo.exit

if.end.i.i:                                       ; preds = %entry
  %call.i.i.i = call i32 @gen_pool_alloc_algo_owner(ptr noundef nonnull %pool, i32 noundef %size, ptr noundef nonnull @gen_pool_first_fit_align, ptr noundef nonnull %data, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i.gen_pool_dma_zalloc_algo.exit_crit_edge, label %if.end3.i.i

if.end.i.i.gen_pool_dma_zalloc_algo.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gen_pool_dma_zalloc_algo.exit

if.end3.i.i:                                      ; preds = %if.end.i.i
  %tobool4.not.i.i = icmp eq ptr %dma, null
  br i1 %tobool4.not.i.i, label %if.end3.i.i.if.then.i_crit_edge, label %if.then5.i.i

if.end3.i.i.if.then.i_crit_edge:                  ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then5.i.i:                                     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call6.i.i = call i32 @gen_pool_virt_to_phys(ptr noundef nonnull %pool, i32 noundef %call.i.i.i) #14
  %1 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call6.i.i, ptr %dma, align 4
  br label %if.then.i

if.then.i:                                        ; preds = %if.then5.i.i, %if.end3.i.i.if.then.i_crit_edge
  %2 = inttoptr i32 %call.i.i.i to ptr
  %3 = call ptr @memset(ptr %2, i32 0, i32 %size)
  br label %gen_pool_dma_zalloc_algo.exit

gen_pool_dma_zalloc_algo.exit:                    ; preds = %if.then.i, %if.end.i.i.gen_pool_dma_zalloc_algo.exit_crit_edge, %entry.gen_pool_dma_zalloc_algo.exit_crit_edge
  %retval.0.i6.i = phi ptr [ %2, %if.then.i ], [ null, %entry.gen_pool_dma_zalloc_algo.exit_crit_edge ], [ null, %if.end.i.i.gen_pool_dma_zalloc_algo.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #14
  ret ptr %retval.0.i6.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gen_pool_free_owner(ptr noundef %pool, i32 noundef %addr, i32 noundef %size, ptr noundef writeonly %owner) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %min_alloc_order = getelementptr inbounds %struct.gen_pool, ptr %pool, i32 0, i32 2
  %0 = ptrtoint ptr %min_alloc_order to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %min_alloc_order, align 4
  %tobool.not = icmp eq ptr %owner, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %owner, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %shl = shl nuw i32 1, %1
  %add = add i32 %size, -1
  %sub = add i32 %add, %shl
  %shr = lshr i32 %sub, %1
  %3 = tail call i32 @llvm.read_register.i32(metadata !80) #14
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !91
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b104 = load i1, ptr @gen_pool_free_owner.__warned, align 1
  br i1 %.b104, label %land.lhs.true4.do.end_crit_edge, label %if.then6

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then6:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @gen_pool_free_owner.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 503, ptr noundef nonnull @.str.2) #14
  br label %do.end

do.end:                                           ; preds = %if.then6, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %chunks = getelementptr inbounds %struct.gen_pool, ptr %pool, i32 0, i32 1
  %7 = ptrtoint ptr %chunks to i32
  call void @__asan_load4_noabort(i32 %7)
  %chunk.0116 = load volatile ptr, ptr %chunks, align 4
  %cmp.not117 = icmp eq ptr %chunk.0116, %chunks
  br i1 %cmp.not117, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %chunk.0118 = phi ptr [ %chunk.0, %for.inc.for.body_crit_edge ], [ %chunk.0116, %do.end.for.body_crit_edge ]
  %start_addr = getelementptr inbounds %struct.gen_pool_chunk, ptr %chunk.0118, i32 0, i32 4
  %8 = ptrtoint ptr %start_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %start_addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %addr)
  %cmp13.not = icmp ugt i32 %9, %addr
  br i1 %cmp13.not, label %for.body.for.inc_crit_edge, label %land.lhs.true14

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true14:                                  ; preds = %for.body
  %end_addr = getelementptr inbounds %struct.gen_pool_chunk, ptr %chunk.0118, i32 0, i32 5
  %10 = ptrtoint ptr %end_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %end_addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %addr)
  %cmp15.not = icmp ult i32 %11, %addr
  br i1 %cmp15.not, label %land.lhs.true14.for.inc_crit_edge, label %do.body17

land.lhs.true14.for.inc_crit_edge:                ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.body17:                                        ; preds = %land.lhs.true14
  %sub19 = add i32 %add, %addr
  call void @__sanitizer_cov_trace_cmp4(i32 %sub19, i32 %11)
  %cmp21 = icmp ugt i32 %sub19, %11
  br i1 %cmp21, label %do.body25, label %do.end33, !prof !89

do.body25:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/genalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 505, 0\0A.popsection", ""() #14, !srcloc !106
  unreachable

do.end33:                                         ; preds = %do.body17
  %sub35 = sub i32 %addr, %9
  %shr36 = lshr i32 %sub35, %1
  %bits = getelementptr inbounds %struct.gen_pool_chunk, ptr %chunk.0118, i32 0, i32 6
  %call37 = tail call fastcc i32 @bitmap_clear_ll(ptr noundef %bits, i32 noundef %shr36, i32 noundef %shr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool39.not = icmp eq i32 %call37, 0
  br i1 %tobool39.not, label %do.end55, label %do.body47, !prof !99

do.body47:                                        ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/genalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 508, 0\0A.popsection", ""() #14, !srcloc !107
  unreachable

do.end55:                                         ; preds = %do.end33
  %shl56 = shl i32 %shr, %1
  %avail = getelementptr inbounds %struct.gen_pool_chunk, ptr %chunk.0118, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %avail, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %avail, i32 1, i32 3, i32 1) #14
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %avail, ptr %avail, i32 %shl56, ptr elementtype(i32) %avail) #14, !srcloc !108
  br i1 %tobool.not, label %do.end55.if.end60_crit_edge, label %if.then58

do.end55.if.end60_crit_edge:                      ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.then58:                                        ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #12
  %owner59 = getelementptr inbounds %struct.gen_pool_chunk, ptr %chunk.0118, i32 0, i32 3
  %13 = ptrtoint ptr %owner59 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %owner59, align 4
  %15 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %owner, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %do.end55.if.end60_crit_edge
  %call.i105 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i105, label %if.end60.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i108

if.end60.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i108:                               ; preds = %if.end60
  %call1.i106 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i106)
  %tobool.not.i107 = icmp eq i32 %call1.i106, 0
  br i1 %tobool.not.i107, label %land.lhs.true.i108.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i110

land.lhs.true.i108.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i108
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i110:                              ; preds = %land.lhs.true.i108
  %.b4.i109 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i109, label %land.lhs.true2.i110.rcu_read_unlock.exit_crit_edge, label %if.then.i111

land.lhs.true2.i110.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i110
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i111:                                     ; preds = %land.lhs.true2.i110
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i111, %land.lhs.true2.i110.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i108.rcu_read_unlock.exit_crit_edge, %if.end60.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !92
  %16 = tail call i32 @llvm.read_register.i32(metadata !80) #14
  %and.i.i.i.i.i112 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i112 to ptr
  %preempt_count.i.i.i.i113 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i113 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i113, align 4
  %sub.i.i.i = add i32 %19, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i113, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret void

for.inc:                                          ; preds = %land.lhs.true14.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %20 = ptrtoint ptr %chunk.0118 to i32
  call void @__asan_load4_noabort(i32 %20)
  %chunk.0 = load volatile ptr, ptr %chunk.0118, align 4
  %cmp.not = icmp eq ptr %chunk.0, %chunks
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  tail call fastcc void @rcu_read_unlock()
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/genalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 518, 0\0A.popsection", ""() #14, !srcloc !109
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gen_pool_for_each_chunk(ptr noundef %pool, ptr nocapture noundef readonly %func, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = tail call i32 @llvm.read_register.i32(metadata !80) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !91
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b23 = load i1, ptr @gen_pool_for_each_chunk.__warned, align 1
  br i1 %.b23, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @gen_pool_for_each_chunk.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 538, ptr noundef nonnull @.str.2) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %chunks = getelementptr inbounds %struct.gen_pool, ptr %pool, i32 0, i32 1
  %4 = ptrtoint ptr %chunks to i32
  call void @__asan_load4_noabort(i32 %4)
  %chunk.033 = load volatile ptr, ptr %chunks, align 4
  %cmp.not34 = icmp eq ptr %chunk.033, %chunks
  br i1 %cmp.not34, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %chunk.035 = phi ptr [ %chunk.0, %for.body.for.body_crit_edge ], [ %chunk.033, %do.end.for.body_crit_edge ]
  tail call void %func(ptr noundef %pool, ptr noundef %chunk.035, ptr noundef %data) #14
  %5 = ptrtoint ptr %chunk.035 to i32
  call void @__asan_load4_noabort(i32 %5)
  %chunk.0 = load volatile ptr, ptr %chunk.035, align 4
  %cmp.not = icmp eq ptr %chunk.0, %chunks
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i24 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i24, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i27

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i27:                                ; preds = %for.end
  %call1.i25 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i25)
  %tobool.not.i26 = icmp eq i32 %call1.i25, 0
  br i1 %tobool.not.i26, label %land.lhs.true.i27.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i29

land.lhs.true.i27.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i27
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i29:                               ; preds = %land.lhs.true.i27
  %.b4.i28 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i28, label %land.lhs.true2.i29.rcu_read_unlock.exit_crit_edge, label %if.then.i30

land.lhs.true2.i29.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i29
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i30:                                      ; preds = %land.lhs.true2.i29
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i30, %land.lhs.true2.i29.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i27.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !92
  %6 = tail call i32 @llvm.read_register.i32(metadata !80) #14
  %and.i.i.i.i.i31 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i31 to ptr
  %preempt_count.i.i.i.i32 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i32 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i32, align 4
  %sub.i.i.i = add i32 %9, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i32, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @gen_pool_has_addr(ptr noundef %pool, i32 noundef %start, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %add = add i32 %start, -1
  %sub = add i32 %add, %size
  %0 = tail call i32 @llvm.read_register.i32(metadata !80) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !91
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b36 = load i1, ptr @gen_pool_has_addr.__warned, align 1
  br i1 %.b36, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @gen_pool_has_addr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 561, ptr noundef nonnull @.str.2) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %chunks = getelementptr inbounds %struct.gen_pool, ptr %pool, i32 0, i32 1
  %4 = ptrtoint ptr %chunks to i32
  call void @__asan_load4_noabort(i32 %4)
  %chunk.046 = load volatile ptr, ptr %chunks, align 4
  %cmp.not47 = icmp eq ptr %chunk.046, %chunks
  br i1 %cmp.not47, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %chunk.048 = phi ptr [ %chunk.0, %for.inc.for.body_crit_edge ], [ %chunk.046, %do.end.for.body_crit_edge ]
  %start_addr = getelementptr inbounds %struct.gen_pool_chunk, ptr %chunk.048, i32 0, i32 4
  %5 = ptrtoint ptr %start_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %start_addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %start)
  %cmp10.not = icmp ugt i32 %6, %start
  br i1 %cmp10.not, label %for.body.for.inc_crit_edge, label %land.lhs.true11

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true11:                                  ; preds = %for.body
  %end_addr = getelementptr inbounds %struct.gen_pool_chunk, ptr %chunk.048, i32 0, i32 5
  %7 = ptrtoint ptr %end_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %end_addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %start)
  %cmp12.not = icmp ult i32 %8, %start
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %8)
  %cmp15.not = icmp ugt i32 %sub, %8
  %or.cond = or i1 %cmp12.not, %cmp15.not
  br i1 %or.cond, label %land.lhs.true11.for.inc_crit_edge, label %land.lhs.true11.for.end_crit_edge

land.lhs.true11.for.end_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

land.lhs.true11.for.inc_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true11.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %9 = ptrtoint ptr %chunk.048 to i32
  call void @__asan_load4_noabort(i32 %9)
  %chunk.0 = load volatile ptr, ptr %chunk.048, align 4
  %cmp.not = icmp eq ptr %chunk.0, %chunks
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.lhs.true11.for.end_crit_edge, %do.end.for.end_crit_edge
  %cmp.not.lcssa = phi i1 [ false, %do.end.for.end_crit_edge ], [ true, %land.lhs.true11.for.end_crit_edge ], [ false, %for.inc.for.end_crit_edge ]
  %call.i37 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i37, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i40

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i40:                                ; preds = %for.end
  %call1.i38 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i38)
  %tobool.not.i39 = icmp eq i32 %call1.i38, 0
  br i1 %tobool.not.i39, label %land.lhs.true.i40.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i42

land.lhs.true.i40.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i40
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i42:                               ; preds = %land.lhs.true.i40
  %.b4.i41 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i41, label %land.lhs.true2.i42.rcu_read_unlock.exit_crit_edge, label %if.then.i43

land.lhs.true2.i42.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i42
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i43:                                      ; preds = %land.lhs.true2.i42
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i43, %land.lhs.true2.i42.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i40.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !92
  %10 = tail call i32 @llvm.read_register.i32(metadata !80) #14
  %and.i.i.i.i.i44 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i44 to ptr
  %preempt_count.i.i.i.i45 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i45 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i45, align 4
  %sub.i.i.i = add i32 %13, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i45, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret i1 %cmp.not.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gen_pool_avail(ptr noundef %pool) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = tail call i32 @llvm.read_register.i32(metadata !80) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !91
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b25 = load i1, ptr @gen_pool_avail.__warned, align 1
  br i1 %.b25, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @gen_pool_avail.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 586, ptr noundef nonnull @.str.2) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %chunks = getelementptr inbounds %struct.gen_pool, ptr %pool, i32 0, i32 1
  %4 = ptrtoint ptr %chunks to i32
  call void @__asan_load4_noabort(i32 %4)
  %chunk.035 = load volatile ptr, ptr %chunks, align 4
  %cmp.not36 = icmp eq ptr %chunk.035, %chunks
  br i1 %cmp.not36, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %chunk.038 = phi ptr [ %chunk.0, %for.body.for.body_crit_edge ], [ %chunk.035, %do.end.for.body_crit_edge ]
  %avail.037 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %avail10 = getelementptr inbounds %struct.gen_pool_chunk, ptr %chunk.038, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %avail10, i32 noundef 4) #14
  %5 = ptrtoint ptr %avail10 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %avail10, align 4
  %add = add i32 %6, %avail.037
  %7 = ptrtoint ptr %chunk.038 to i32
  call void @__asan_load4_noabort(i32 %7)
  %chunk.0 = load volatile ptr, ptr %chunk.038, align 4
  %cmp.not = icmp eq ptr %chunk.0, %chunks
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end.for.end_crit_edge
  %avail.0.lcssa = phi i32 [ 0, %do.end.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %call.i26 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i26, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i29

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i29:                                ; preds = %for.end
  %call1.i27 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i27)
  %tobool.not.i28 = icmp eq i32 %call1.i27, 0
  br i1 %tobool.not.i28, label %land.lhs.true.i29.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i31

land.lhs.true.i29.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i29
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i31:                               ; preds = %land.lhs.true.i29
  %.b4.i30 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i30, label %land.lhs.true2.i31.rcu_read_unlock.exit_crit_edge, label %if.then.i32

land.lhs.true2.i31.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i31
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i32:                                      ; preds = %land.lhs.true2.i31
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i32, %land.lhs.true2.i31.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i29.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !92
  %8 = tail call i32 @llvm.read_register.i32(metadata !80) #14
  %and.i.i.i.i.i33 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i33 to ptr
  %preempt_count.i.i.i.i34 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i34, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i34, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret i32 %avail.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gen_pool_size(ptr noundef %pool) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = tail call i32 @llvm.read_register.i32(metadata !80) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !91
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b24 = load i1, ptr @gen_pool_size.__warned, align 1
  br i1 %.b24, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @gen_pool_size.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 605, ptr noundef nonnull @.str.2) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %chunks = getelementptr inbounds %struct.gen_pool, ptr %pool, i32 0, i32 1
  %4 = ptrtoint ptr %chunks to i32
  call void @__asan_load4_noabort(i32 %4)
  %chunk.034 = load volatile ptr, ptr %chunks, align 4
  %cmp.not35 = icmp eq ptr %chunk.034, %chunks
  br i1 %cmp.not35, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %chunk.037 = phi ptr [ %chunk.0, %for.body.for.body_crit_edge ], [ %chunk.034, %do.end.for.body_crit_edge ]
  %size.036 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %end_addr.i = getelementptr inbounds %struct.gen_pool_chunk, ptr %chunk.037, i32 0, i32 5
  %5 = ptrtoint ptr %end_addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %end_addr.i, align 4
  %start_addr.i = getelementptr inbounds %struct.gen_pool_chunk, ptr %chunk.037, i32 0, i32 4
  %7 = ptrtoint ptr %start_addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %start_addr.i, align 4
  %sub.i = add i32 %size.036, 1
  %add.i = add i32 %sub.i, %6
  %add = sub i32 %add.i, %8
  %9 = ptrtoint ptr %chunk.037 to i32
  call void @__asan_load4_noabort(i32 %9)
  %chunk.0 = load volatile ptr, ptr %chunk.037, align 4
  %cmp.not = icmp eq ptr %chunk.0, %chunks
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end.for.end_crit_edge
  %size.0.lcssa = phi i32 [ 0, %do.end.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %call.i25 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i25, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i28

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i28:                                ; preds = %for.end
  %call1.i26 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i26)
  %tobool.not.i27 = icmp eq i32 %call1.i26, 0
  br i1 %tobool.not.i27, label %land.lhs.true.i28.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i30

land.lhs.true.i28.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i28
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i30:                               ; preds = %land.lhs.true.i28
  %.b4.i29 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i29, label %land.lhs.true2.i30.rcu_read_unlock.exit_crit_edge, label %if.then.i31

land.lhs.true2.i30.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i30
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i31:                                      ; preds = %land.lhs.true2.i30
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i31, %land.lhs.true2.i30.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i28.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !92
  %10 = tail call i32 @llvm.read_register.i32(metadata !80) #14
  %and.i.i.i.i.i32 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i32 to ptr
  %preempt_count.i.i.i.i33 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i33 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i33, align 4
  %sub.i.i.i = add i32 %13, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i33, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret i32 %size.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gen_pool_set_algo(ptr nocapture noundef writeonly %pool, ptr noundef %algo, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = tail call i32 @llvm.read_register.i32(metadata !80) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !91
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %tobool.not = icmp eq ptr %algo, null
  %spec.select = select i1 %tobool.not, ptr @gen_pool_first_fit, ptr %algo
  %algo1 = getelementptr inbounds %struct.gen_pool, ptr %pool, i32 0, i32 3
  %4 = ptrtoint ptr %algo1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %spec.select, ptr %algo1, align 4
  %data4 = getelementptr inbounds %struct.gen_pool, ptr %pool, i32 0, i32 4
  %5 = ptrtoint ptr %data4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %data, ptr %data4, align 4
  %call.i8 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i8, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i11

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i11:                                ; preds = %rcu_read_lock.exit
  %call1.i9 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i9)
  %tobool.not.i10 = icmp eq i32 %call1.i9, 0
  br i1 %tobool.not.i10, label %land.lhs.true.i11.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i13

land.lhs.true.i11.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i11
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i13:                               ; preds = %land.lhs.true.i11
  %.b4.i12 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i12, label %land.lhs.true2.i13.rcu_read_unlock.exit_crit_edge, label %if.then.i14

land.lhs.true2.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i13
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i14:                                      ; preds = %land.lhs.true2.i13
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i14, %land.lhs.true2.i13.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i11.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !92
  %6 = tail call i32 @llvm.read_register.i32(metadata !80) #14
  %and.i.i.i.i.i15 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i15 to ptr
  %preempt_count.i.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i16, align 4
  %sub.i.i.i = add i32 %9, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i16, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_find_next_zero_area_off(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gen_pool_fixed_alloc(ptr noundef %map, i32 noundef %size, i32 noundef %start, i32 noundef %nr, ptr nocapture noundef readonly %data, ptr nocapture noundef readonly %pool, i32 %start_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %min_alloc_order = getelementptr inbounds %struct.gen_pool, ptr %pool, i32 0, i32 2
  %0 = ptrtoint ptr %min_alloc_order to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %min_alloc_order, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  %notmask = shl nsw i32 -1, %1
  %sub = xor i32 %notmask, -1
  %and = and i32 %3, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end23, label %do.end, !prof !99

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 706, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %shr = lshr i32 %3, %1
  %add = add i32 %shr, %start
  %call.i = tail call i32 @bitmap_find_next_zero_area_off(ptr noundef %map, i32 noundef %size, i32 noundef %add, i32 noundef %nr, i32 noundef 0, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %shr)
  %cmp.not = icmp eq i32 %call.i, %shr
  %spec.select = select i1 %cmp.not, i32 %call.i, i32 %size
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end
  %retval.0 = phi i32 [ %size, %do.end ], [ %spec.select, %if.end23 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gen_pool_first_fit_order_align(ptr noundef %map, i32 noundef %size, i32 noundef %start, i32 noundef %nr, ptr nocapture readnone %data, ptr nocapture readnone %pool, i32 %start_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i28 = add i32 %nr, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i28)
  %tobool.not.i.i.i = icmp eq i32 %sub.i28, 0
  %0 = tail call i32 @llvm.ctlz.i32(i32 %sub.i28, i1 true) #14, !range !110
  %sub.i.i.i = sub nuw nsw i32 32, %0
  %notmask = shl nsw i32 -1, %sub.i.i.i
  %sub.i.i.op.i.op = xor i32 %notmask, -1
  %sub19 = select i1 %tobool.not.i.i.i, i32 0, i32 %sub.i.i.op.i.op
  %call.i = tail call i32 @bitmap_find_next_zero_area_off(ptr noundef %map, i32 noundef %size, i32 noundef %start, i32 noundef %nr, i32 noundef %sub19, i32 noundef 0) #14
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gen_pool_best_fit(ptr noundef %map, i32 noundef %size, i32 noundef %start, i32 noundef %nr, ptr nocapture readnone %data, ptr nocapture readnone %pool, i32 %start_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @bitmap_find_next_zero_area_off(ptr noundef %map, i32 noundef %size, i32 noundef %start, i32 noundef %nr, i32 noundef 0, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %size)
  %cmp37 = icmp ult i32 %call.i, %size
  br i1 %cmp37, label %while.body.preheader, label %entry.cleanup10_crit_edge

entry.cleanup10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup10

while.body.preheader:                             ; preds = %entry
  %add = add i32 %size, 1
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.preheader
  %index.040 = phi i32 [ %call.i31, %cleanup.while.body_crit_edge ], [ %call.i, %while.body.preheader ]
  %len.039 = phi i32 [ %len.1, %cleanup.while.body_crit_edge ], [ %add, %while.body.preheader ]
  %start_bit.038 = phi i32 [ %start_bit.1, %cleanup.while.body_crit_edge ], [ %size, %while.body.preheader ]
  %add1 = add i32 %index.040, %nr
  %call2 = tail call i32 @_find_next_bit_be(ptr noundef %map, i32 noundef %size, i32 noundef %add1) #14
  %sub = sub i32 %call2, %index.040
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %len.039)
  %cmp3 = icmp ult i32 %sub, %len.039
  br i1 %cmp3, label %if.then, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %nr)
  %cmp5 = icmp eq i32 %sub, %nr
  br i1 %cmp5, label %if.then.cleanup10_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.cleanup10_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup10

cleanup:                                          ; preds = %if.then.cleanup_crit_edge, %while.body.cleanup_crit_edge
  %start_bit.1 = phi i32 [ %index.040, %if.then.cleanup_crit_edge ], [ %start_bit.038, %while.body.cleanup_crit_edge ]
  %len.1 = phi i32 [ %sub, %if.then.cleanup_crit_edge ], [ %len.039, %while.body.cleanup_crit_edge ]
  %add8 = add i32 %call2, 1
  %call.i31 = tail call i32 @bitmap_find_next_zero_area_off(ptr noundef %map, i32 noundef %size, i32 noundef %add8, i32 noundef %nr, i32 noundef 0, i32 noundef 0) #14
  %cmp = icmp ult i32 %call.i31, %size
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %cleanup.cleanup10_crit_edge

cleanup.cleanup10_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup10

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup10:                                        ; preds = %cleanup.cleanup10_crit_edge, %if.then.cleanup10_crit_edge, %entry.cleanup10_crit_edge
  %retval.2 = phi i32 [ %size, %entry.cleanup10_crit_edge ], [ %index.040, %if.then.cleanup10_crit_edge ], [ %start_bit.1, %cleanup.cleanup10_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @gen_pool_get(ptr noundef %dev, ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call ptr @devres_find(ptr noundef %dev, ptr noundef nonnull @devm_gen_pool_release, ptr noundef nonnull @devm_gen_pool_match, ptr noundef %name) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %1, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devres_find(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devm_gen_pool_release(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res, align 4
  tail call void @gen_pool_destroy(ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @devm_gen_pool_match(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %res, ptr noundef readonly %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %tobool.not = icmp eq ptr %data, null
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res, align 4
  %name = getelementptr inbounds %struct.gen_pool, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %land.lhs.true, label %lor.lhs.false.critedge

land.lhs.true:                                    ; preds = %entry
  br i1 %tobool1.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.then5_crit_edge

land.lhs.true.if.then5_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false.critedge:                           ; preds = %entry
  br i1 %tobool1.not, label %lor.lhs.false.critedge.if.then5_crit_edge, label %if.end6

lor.lhs.false.critedge.if.then5_crit_edge:        ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

if.then5:                                         ; preds = %lor.lhs.false.critedge.if.then5_crit_edge, %land.lhs.true.if.then5_crit_edge
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @strcmp(ptr noundef nonnull %3, ptr noundef nonnull %data) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  %lnot.ext = zext i1 %tobool8.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then5, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %lnot.ext, %if.end6 ], [ 0, %if.then5 ], [ 1, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @devm_gen_pool_create(ptr noundef %dev, i32 noundef %min_alloc_order, i32 %nid, ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call ptr @devres_find(ptr noundef %dev, ptr noundef nonnull @devm_gen_pool_release, ptr noundef nonnull @devm_gen_pool_match, ptr noundef %name) #14
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %gen_pool_get.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

gen_pool_get.exit:                                ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %gen_pool_get.exit.if.end_crit_edge, label %gen_pool_get.exit.cleanup_crit_edge

gen_pool_get.exit.cleanup_crit_edge:              ; preds = %gen_pool_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

gen_pool_get.exit.if.end_crit_edge:               ; preds = %gen_pool_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %gen_pool_get.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool2.not = icmp eq ptr %name, null
  br i1 %tobool2.not, label %if.end.if.end9_crit_edge, label %if.then3

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then3:                                         ; preds = %if.end
  %call4 = tail call ptr @kstrdup_const(ptr noundef nonnull %name, i32 noundef 3264) #14
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.then3.cleanup_crit_edge, label %if.then3.if.end9_crit_edge

if.then3.if.end9_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.then3.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %pool_name.0 = phi ptr [ %call4, %if.then3.if.end9_crit_edge ], [ null, %if.end.if.end9_crit_edge ]
  %call10 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_gen_pool_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.3) #14
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end9.free_pool_name_crit_edge, label %if.end13

if.end9.free_pool_name_crit_edge:                 ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_pool_name

if.end13:                                         ; preds = %if.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 68) #13
  %cmp.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %cmp.not.i, label %free_devres, label %if.end17

if.end17:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call.i.i.i, ptr noundef nonnull @.str, ptr noundef nonnull @gen_pool_create.__key, i16 noundef signext 3) #14
  %chunks.i = getelementptr inbounds %struct.gen_pool, ptr %call.i.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %chunks.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %chunks.i, ptr %chunks.i, align 4
  %prev.i.i = getelementptr inbounds %struct.gen_pool, ptr %call.i.i.i, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %chunks.i, ptr %prev.i.i, align 8
  %min_alloc_order2.i = getelementptr inbounds %struct.gen_pool, ptr %call.i.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %min_alloc_order2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %min_alloc_order, ptr %min_alloc_order2.i, align 4
  %algo.i = getelementptr inbounds %struct.gen_pool, ptr %call.i.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %algo.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @gen_pool_first_fit, ptr %algo.i, align 8
  %data.i = getelementptr inbounds %struct.gen_pool, ptr %call.i.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %data.i, align 4
  %name.i = getelementptr inbounds %struct.gen_pool, ptr %call.i.i.i, i32 0, i32 5
  %8 = ptrtoint ptr %call10 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i.i.i, ptr %call10, align 4
  %9 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %pool_name.0, ptr %name.i, align 8
  tail call void @devres_add(ptr noundef %dev, ptr noundef nonnull %call10) #14
  br label %cleanup

free_devres:                                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @devres_free(ptr noundef nonnull %call10) #14
  br label %free_pool_name

free_pool_name:                                   ; preds = %free_devres, %if.end9.free_pool_name_crit_edge
  tail call void @kfree_const(ptr noundef %pool_name.0) #14
  br label %cleanup

cleanup:                                          ; preds = %free_pool_name, %if.end17, %if.then3.cleanup_crit_edge, %gen_pool_get.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i.i.i, %if.end17 ], [ inttoptr (i32 -12 to ptr), %free_pool_name ], [ inttoptr (i32 -22 to ptr), %gen_pool_get.exit.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then3.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrdup_const(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @of_gen_pool_get(ptr noundef %np, ptr noundef %propname, i32 noundef %index) #0 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  %name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name) #14
  %0 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %name, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #14
  %1 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %np, ptr noundef %propname, ptr noundef null, i32 noundef 0, i32 noundef %index, ptr noundef nonnull %args.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #14
  br label %cleanup

of_parse_phandle.exit:                            ; preds = %entry
  %2 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #14
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %of_parse_phandle.exit.cleanup_crit_edge, label %if.end

of_parse_phandle.exit.cleanup_crit_edge:          ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %of_parse_phandle.exit
  %call1 = call ptr @of_find_device_by_node(ptr noundef nonnull %3) #14
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then3, label %if.end.if.then13_crit_edge

if.end.if.then13_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

if.then3:                                         ; preds = %if.end
  %call4 = call ptr @of_get_parent(ptr noundef nonnull %3) #14
  %call5 = call ptr @of_find_device_by_node(ptr noundef %call4) #14
  call void @of_node_put(ptr noundef %call4) #14
  %call6 = call i32 @of_property_read_string(ptr noundef nonnull %3, ptr noundef nonnull @.str.4, ptr noundef nonnull %name) #14
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %tobool7.not = icmp eq ptr %5, null
  br i1 %tobool7.not, label %if.then8, label %if.then3.if.end11_crit_edge

if.then3.if.end11_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then8:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %8 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %name, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.then3.if.end11_crit_edge
  %tobool12.not = icmp eq ptr %call5, null
  br i1 %tobool12.not, label %if.end11.if.end15_crit_edge, label %if.end11.if.then13_crit_edge

if.end11.if.then13_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then13:                                        ; preds = %if.end11.if.then13_crit_edge, %if.end.if.then13_crit_edge
  %pdev.036 = phi ptr [ %call5, %if.end11.if.then13_crit_edge ], [ %call1, %if.end.if.then13_crit_edge ]
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev.036, i32 0, i32 3
  %9 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name, align 4
  %call.i28 = call ptr @devres_find(ptr noundef %dev, ptr noundef nonnull @devm_gen_pool_release, ptr noundef nonnull @devm_gen_pool_match, ptr noundef %10) #14
  %tobool.not.i29 = icmp eq ptr %call.i28, null
  br i1 %tobool.not.i29, label %if.then13.if.end15_crit_edge, label %if.end.i30

if.then13.if.end15_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.end.i30:                                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %call.i28 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call.i28, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.end.i30, %if.then13.if.end15_crit_edge, %if.end11.if.end15_crit_edge
  %pool.0 = phi ptr [ null, %if.end11.if.end15_crit_edge ], [ %12, %if.end.i30 ], [ null, %if.then13.if.end15_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %3) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %of_parse_phandle.exit.cleanup_crit_edge, %of_parse_phandle.exit.thread
  %retval.0 = phi ptr [ %pool.0, %if.end15 ], [ null, %of_parse_phandle.exit.cleanup_crit_edge ], [ null, %of_parse_phandle.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name) #14
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind uwtable(sync) }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !76, !77, !79}
!llvm.named.register.sp = !{!80}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = !{ptr @gen_pool_create.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../lib/genalloc.c", i32 159, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__ksymtab_gen_pool_create, !4, !"__ksymtab_gen_pool_create", i1 false, i1 false}
!4 = !{!"../lib/genalloc.c", i32 168, i32 1}
!5 = !{ptr @__ksymtab_gen_pool_add_owner, !6, !"__ksymtab_gen_pool_add_owner", i1 false, i1 false}
!6 = !{!"../lib/genalloc.c", i32 208, i32 1}
!7 = distinct !{null, !8, !"__warned", i1 false, i1 false}
!8 = !{!"../lib/genalloc.c", i32 223, i32 2}
!9 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @__ksymtab_gen_pool_virt_to_phys, !12, !"__ksymtab_gen_pool_virt_to_phys", i1 false, i1 false}
!12 = !{!"../lib/genalloc.c", i32 233, i32 1}
!13 = !{ptr @__ksymtab_gen_pool_destroy, !14, !"__ksymtab_gen_pool_destroy", i1 false, i1 false}
!14 = !{!"../lib/genalloc.c", i32 262, i32 1}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../lib/genalloc.c", i32 297, i32 2}
!17 = !{ptr @__ksymtab_gen_pool_alloc_algo_owner, !18, !"__ksymtab_gen_pool_alloc_algo_owner", i1 false, i1 false}
!18 = !{!"../lib/genalloc.c", i32 326, i32 1}
!19 = !{ptr @__ksymtab_gen_pool_dma_alloc, !20, !"__ksymtab_gen_pool_dma_alloc", i1 false, i1 false}
!20 = !{!"../lib/genalloc.c", i32 345, i32 1}
!21 = !{ptr @__ksymtab_gen_pool_dma_alloc_algo, !22, !"__ksymtab_gen_pool_dma_alloc_algo", i1 false, i1 false}
!22 = !{!"../lib/genalloc.c", i32 379, i32 1}
!23 = !{ptr @__ksymtab_gen_pool_dma_alloc_align, !24, !"__ksymtab_gen_pool_dma_alloc_align", i1 false, i1 false}
!24 = !{!"../lib/genalloc.c", i32 403, i32 1}
!25 = !{ptr @__ksymtab_gen_pool_dma_zalloc, !26, !"__ksymtab_gen_pool_dma_zalloc", i1 false, i1 false}
!26 = !{!"../lib/genalloc.c", i32 423, i32 1}
!27 = !{ptr @__ksymtab_gen_pool_dma_zalloc_algo, !28, !"__ksymtab_gen_pool_dma_zalloc_algo", i1 false, i1 false}
!28 = !{!"../lib/genalloc.c", i32 450, i32 1}
!29 = !{ptr @__ksymtab_gen_pool_dma_zalloc_align, !30, !"__ksymtab_gen_pool_dma_zalloc_align", i1 false, i1 false}
!30 = !{!"../lib/genalloc.c", i32 474, i32 1}
!31 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!32 = !{!"../lib/genalloc.c", i32 503, i32 2}
!33 = !{ptr @__ksymtab_gen_pool_free_owner, !34, !"__ksymtab_gen_pool_free_owner", i1 false, i1 false}
!34 = !{!"../lib/genalloc.c", i32 520, i32 1}
!35 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!36 = !{!"../lib/genalloc.c", i32 538, i32 2}
!37 = !{ptr @__ksymtab_gen_pool_for_each_chunk, !38, !"__ksymtab_gen_pool_for_each_chunk", i1 false, i1 false}
!38 = !{!"../lib/genalloc.c", i32 542, i32 1}
!39 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!40 = !{!"../lib/genalloc.c", i32 561, i32 2}
!41 = !{ptr @__ksymtab_gen_pool_has_addr, !42, !"__ksymtab_gen_pool_has_addr", i1 false, i1 false}
!42 = !{!"../lib/genalloc.c", i32 572, i32 1}
!43 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!44 = !{!"../lib/genalloc.c", i32 586, i32 2}
!45 = !{ptr @__ksymtab_gen_pool_avail, !46, !"__ksymtab_gen_pool_avail", i1 false, i1 false}
!46 = !{!"../lib/genalloc.c", i32 591, i32 1}
!47 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!48 = !{!"../lib/genalloc.c", i32 605, i32 2}
!49 = !{ptr @__ksymtab_gen_pool_size, !50, !"__ksymtab_gen_pool_size", i1 false, i1 false}
!50 = !{!"../lib/genalloc.c", i32 610, i32 1}
!51 = !{ptr @__ksymtab_gen_pool_set_algo, !52, !"__ksymtab_gen_pool_set_algo", i1 false, i1 false}
!52 = !{!"../lib/genalloc.c", i32 634, i32 1}
!53 = !{ptr @__ksymtab_gen_pool_first_fit, !54, !"__ksymtab_gen_pool_first_fit", i1 false, i1 false}
!54 = !{!"../lib/genalloc.c", i32 653, i32 1}
!55 = !{ptr @__ksymtab_gen_pool_first_fit_align, !56, !"__ksymtab_gen_pool_first_fit_align", i1 false, i1 false}
!56 = !{!"../lib/genalloc.c", i32 682, i32 1}
!57 = !{ptr @__ksymtab_gen_pool_fixed_alloc, !58, !"__ksymtab_gen_pool_fixed_alloc", i1 false, i1 false}
!58 = !{!"../lib/genalloc.c", i32 715, i32 1}
!59 = !{ptr @__ksymtab_gen_pool_first_fit_order_align, !60, !"__ksymtab_gen_pool_first_fit_order_align", i1 false, i1 false}
!60 = !{!"../lib/genalloc.c", i32 738, i32 1}
!61 = !{ptr @__ksymtab_gen_pool_best_fit, !62, !"__ksymtab_gen_pool_best_fit", i1 false, i1 false}
!62 = !{!"../lib/genalloc.c", i32 778, i32 1}
!63 = !{ptr @__ksymtab_gen_pool_get, !64, !"__ksymtab_gen_pool_get", i1 false, i1 false}
!64 = !{!"../lib/genalloc.c", i32 816, i32 1}
!65 = !{ptr @.str.3, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../lib/genalloc.c", i32 845, i32 8}
!67 = !{ptr @__ksymtab_devm_gen_pool_create, !68, !"__ksymtab_devm_gen_pool_create", i1 false, i1 false}
!68 = !{!"../lib/genalloc.c", i32 866, i32 1}
!69 = !{ptr @.str.4, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../lib/genalloc.c", i32 898, i32 36}
!71 = !{ptr @__ksymtab_of_gen_pool_get, !72, !"__ksymtab_of_gen_pool_get", i1 false, i1 false}
!72 = !{!"../lib/genalloc.c", i32 908, i32 1}
!73 = distinct !{null, !74, !"__warned", i1 false, i1 false}
!74 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!75 = !{ptr @.str.5, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.6, !74, !"<string literal>", i1 false, i1 false}
!77 = distinct !{null, !78, !"__warned", i1 false, i1 false}
!78 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!79 = !{ptr @.str.7, !78, !"<string literal>", i1 false, i1 false}
!80 = !{!"sp"}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!89 = !{!"branch_weights", i32 1, i32 2000}
!90 = !{i64 2151444990}
!91 = !{i64 2149942478}
!92 = !{i64 2149942744}
!93 = !{i64 2153204339, i64 2153204818, i64 2153204376, i64 2153204432, i64 2153204466, i64 2153204490, i64 2153204531, i64 2153204552, i64 2153204580, i64 2153204614}
!94 = !{i64 2153152912}
!95 = !{i64 2153152754}
!96 = !{i64 2153153887}
!97 = !{i64 1115099, i64 1115120, i64 1115143, i64 1115162, i64 1115181}
!98 = !{i64 2153154306}
!99 = !{!"branch_weights", i32 2000, i32 1}
!100 = !{i64 2153244312, i64 2153244791, i64 2153244349, i64 2153244405, i64 2153244439, i64 2153244463, i64 2153244504, i64 2153244525, i64 2153244553, i64 2153244587}
!101 = !{i64 2148608072, i64 2148608098, i64 2148608127, i64 2148608161, i64 2148608192, i64 2148608215}
!102 = !{i64 2153154584}
!103 = !{i64 2153154426}
!104 = !{i64 2153155574}
!105 = !{i64 2153155996}
!106 = !{i64 2153298226, i64 2153298705, i64 2153298263, i64 2153298319, i64 2153298353, i64 2153298377, i64 2153298418, i64 2153298439, i64 2153298467, i64 2153298501}
!107 = !{i64 2153303840, i64 2153304319, i64 2153303877, i64 2153303933, i64 2153303967, i64 2153303991, i64 2153304032, i64 2153304053, i64 2153304081, i64 2153304115}
!108 = !{i64 2148605607, i64 2148605633, i64 2148605662, i64 2148605696, i64 2148605727, i64 2148605750}
!109 = !{i64 2153305303, i64 2153305782, i64 2153305340, i64 2153305396, i64 2153305430, i64 2153305454, i64 2153305495, i64 2153305516, i64 2153305544, i64 2153305578}
!110 = !{i32 0, i32 33}
