; ModuleID = '/llk/IR_all_yes/mm/slab_common.c_pt.bc'
source_filename = "../mm/slab_common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+kmem_cache_size\22, \22a\22\09"
module asm "\09.weak\09__crc_kmem_cache_size\09\09\09\09"
module asm "\09.long\09__crc_kmem_cache_size\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kmem_cache_size:\09\09\09\09\09"
module asm "\09.asciz \09\22kmem_cache_size\22\09\09\09\09\09"
module asm "__kstrtabns_kmem_cache_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+kmem_cache_create_usercopy\22, \22a\22\09"
module asm "\09.weak\09__crc_kmem_cache_create_usercopy\09\09\09\09"
module asm "\09.long\09__crc_kmem_cache_create_usercopy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kmem_cache_create_usercopy:\09\09\09\09\09"
module asm "\09.asciz \09\22kmem_cache_create_usercopy\22\09\09\09\09\09"
module asm "__kstrtabns_kmem_cache_create_usercopy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+kmem_cache_create\22, \22a\22\09"
module asm "\09.weak\09__crc_kmem_cache_create\09\09\09\09"
module asm "\09.long\09__crc_kmem_cache_create\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kmem_cache_create:\09\09\09\09\09"
module asm "\09.asciz \09\22kmem_cache_create\22\09\09\09\09\09"
module asm "__kstrtabns_kmem_cache_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+kmem_cache_destroy\22, \22a\22\09"
module asm "\09.weak\09__crc_kmem_cache_destroy\09\09\09\09"
module asm "\09.long\09__crc_kmem_cache_destroy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kmem_cache_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22kmem_cache_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_kmem_cache_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+kmem_cache_shrink\22, \22a\22\09"
module asm "\09.weak\09__crc_kmem_cache_shrink\09\09\09\09"
module asm "\09.long\09__crc_kmem_cache_shrink\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kmem_cache_shrink:\09\09\09\09\09"
module asm "\09.asciz \09\22kmem_cache_shrink\22\09\09\09\09\09"
module asm "__kstrtabns_kmem_cache_shrink:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kmem_valid_obj\22, \22a\22\09"
module asm "\09.weak\09__crc_kmem_valid_obj\09\09\09\09"
module asm "\09.long\09__crc_kmem_valid_obj\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kmem_valid_obj:\09\09\09\09\09"
module asm "\09.asciz \09\22kmem_valid_obj\22\09\09\09\09\09"
module asm "__kstrtabns_kmem_valid_obj:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kmem_dump_obj\22, \22a\22\09"
module asm "\09.weak\09__crc_kmem_dump_obj\09\09\09\09"
module asm "\09.long\09__crc_kmem_dump_obj\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kmem_dump_obj:\09\09\09\09\09"
module asm "\09.asciz \09\22kmem_dump_obj\22\09\09\09\09\09"
module asm "__kstrtabns_kmem_dump_obj:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+kmalloc_caches\22, \22a\22\09"
module asm "\09.weak\09__crc_kmalloc_caches\09\09\09\09"
module asm "\09.long\09__crc_kmalloc_caches\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kmalloc_caches:\09\09\09\09\09"
module asm "\09.asciz \09\22kmalloc_caches\22\09\09\09\09\09"
module asm "__kstrtabns_kmalloc_caches:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+kmalloc_order\22, \22a\22\09"
module asm "\09.weak\09__crc_kmalloc_order\09\09\09\09"
module asm "\09.long\09__crc_kmalloc_order\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kmalloc_order:\09\09\09\09\09"
module asm "\09.asciz \09\22kmalloc_order\22\09\09\09\09\09"
module asm "__kstrtabns_kmalloc_order:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+kmalloc_order_trace\22, \22a\22\09"
module asm "\09.weak\09__crc_kmalloc_order_trace\09\09\09\09"
module asm "\09.long\09__crc_kmalloc_order_trace\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kmalloc_order_trace:\09\09\09\09\09"
module asm "\09.asciz \09\22kmalloc_order_trace\22\09\09\09\09\09"
module asm "__kstrtabns_kmalloc_order_trace:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+krealloc\22, \22a\22\09"
module asm "\09.weak\09__crc_krealloc\09\09\09\09"
module asm "\09.long\09__crc_krealloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_krealloc:\09\09\09\09\09"
module asm "\09.asciz \09\22krealloc\22\09\09\09\09\09"
module asm "__kstrtabns_krealloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+kfree_sensitive\22, \22a\22\09"
module asm "\09.weak\09__crc_kfree_sensitive\09\09\09\09"
module asm "\09.long\09__crc_kfree_sensitive\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kfree_sensitive:\09\09\09\09\09"
module asm "\09.asciz \09\22kfree_sensitive\22\09\09\09\09\09"
module asm "__kstrtabns_kfree_sensitive:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ksize\22, \22a\22\09"
module asm "\09.weak\09__crc_ksize\09\09\09\09"
module asm "\09.long\09__crc_ksize\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ksize:\09\09\09\09\09"
module asm "\09.asciz \09\22ksize\22\09\09\09\09\09"
module asm "__kstrtabns_ksize:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__tracepoint_kmalloc\22, \22a\22\09"
module asm "\09.weak\09__crc___tracepoint_kmalloc\09\09\09\09"
module asm "\09.long\09__crc___tracepoint_kmalloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_kmalloc:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_kmalloc\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_kmalloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__traceiter_kmalloc\22, \22a\22\09"
module asm "\09.weak\09__crc___traceiter_kmalloc\09\09\09\09"
module asm "\09.long\09__crc___traceiter_kmalloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_kmalloc:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_kmalloc\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_kmalloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__SCK__tp_func_kmalloc\22, \22a\22\09"
module asm "\09.weak\09__crc___SCK__tp_func_kmalloc\09\09\09\09"
module asm "\09.long\09__crc___SCK__tp_func_kmalloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_kmalloc:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_kmalloc\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_kmalloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__tracepoint_kmem_cache_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc___tracepoint_kmem_cache_alloc\09\09\09\09"
module asm "\09.long\09__crc___tracepoint_kmem_cache_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_kmem_cache_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_kmem_cache_alloc\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_kmem_cache_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__traceiter_kmem_cache_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc___traceiter_kmem_cache_alloc\09\09\09\09"
module asm "\09.long\09__crc___traceiter_kmem_cache_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_kmem_cache_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_kmem_cache_alloc\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_kmem_cache_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__SCK__tp_func_kmem_cache_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc___SCK__tp_func_kmem_cache_alloc\09\09\09\09"
module asm "\09.long\09__crc___SCK__tp_func_kmem_cache_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_kmem_cache_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_kmem_cache_alloc\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_kmem_cache_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__tracepoint_kmalloc_node\22, \22a\22\09"
module asm "\09.weak\09__crc___tracepoint_kmalloc_node\09\09\09\09"
module asm "\09.long\09__crc___tracepoint_kmalloc_node\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_kmalloc_node:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_kmalloc_node\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_kmalloc_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__traceiter_kmalloc_node\22, \22a\22\09"
module asm "\09.weak\09__crc___traceiter_kmalloc_node\09\09\09\09"
module asm "\09.long\09__crc___traceiter_kmalloc_node\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_kmalloc_node:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_kmalloc_node\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_kmalloc_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__SCK__tp_func_kmalloc_node\22, \22a\22\09"
module asm "\09.weak\09__crc___SCK__tp_func_kmalloc_node\09\09\09\09"
module asm "\09.long\09__crc___SCK__tp_func_kmalloc_node\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_kmalloc_node:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_kmalloc_node\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_kmalloc_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__tracepoint_kmem_cache_alloc_node\22, \22a\22\09"
module asm "\09.weak\09__crc___tracepoint_kmem_cache_alloc_node\09\09\09\09"
module asm "\09.long\09__crc___tracepoint_kmem_cache_alloc_node\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_kmem_cache_alloc_node:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_kmem_cache_alloc_node\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_kmem_cache_alloc_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__traceiter_kmem_cache_alloc_node\22, \22a\22\09"
module asm "\09.weak\09__crc___traceiter_kmem_cache_alloc_node\09\09\09\09"
module asm "\09.long\09__crc___traceiter_kmem_cache_alloc_node\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_kmem_cache_alloc_node:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_kmem_cache_alloc_node\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_kmem_cache_alloc_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__SCK__tp_func_kmem_cache_alloc_node\22, \22a\22\09"
module asm "\09.weak\09__crc___SCK__tp_func_kmem_cache_alloc_node\09\09\09\09"
module asm "\09.long\09__crc___SCK__tp_func_kmem_cache_alloc_node\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_kmem_cache_alloc_node:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_kmem_cache_alloc_node\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_kmem_cache_alloc_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__tracepoint_kfree\22, \22a\22\09"
module asm "\09.weak\09__crc___tracepoint_kfree\09\09\09\09"
module asm "\09.long\09__crc___tracepoint_kfree\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_kfree:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_kfree\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_kfree:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__traceiter_kfree\22, \22a\22\09"
module asm "\09.weak\09__crc___traceiter_kfree\09\09\09\09"
module asm "\09.long\09__crc___traceiter_kfree\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_kfree:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_kfree\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_kfree:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__SCK__tp_func_kfree\22, \22a\22\09"
module asm "\09.weak\09__crc___SCK__tp_func_kfree\09\09\09\09"
module asm "\09.long\09__crc___SCK__tp_func_kfree\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_kfree:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_kfree\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_kfree:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__tracepoint_kmem_cache_free\22, \22a\22\09"
module asm "\09.weak\09__crc___tracepoint_kmem_cache_free\09\09\09\09"
module asm "\09.long\09__crc___tracepoint_kmem_cache_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_kmem_cache_free:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_kmem_cache_free\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_kmem_cache_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__traceiter_kmem_cache_free\22, \22a\22\09"
module asm "\09.weak\09__crc___traceiter_kmem_cache_free\09\09\09\09"
module asm "\09.long\09__crc___traceiter_kmem_cache_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_kmem_cache_free:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_kmem_cache_free\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_kmem_cache_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__SCK__tp_func_kmem_cache_free\22, \22a\22\09"
module asm "\09.weak\09__crc___SCK__tp_func_kmem_cache_free\09\09\09\09"
module asm "\09.long\09__crc___SCK__tp_func_kmem_cache_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_kmem_cache_free:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_kmem_cache_free\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_kmem_cache_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_eval_map = type { ptr, ptr, i32 }
%struct.trace_event_fields = type { ptr, %union.anon.102 }
%union.anon.102 = type { %struct.anon.103 }
%struct.anon.103 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.104, %struct.trace_event, ptr, ptr, %union.anon.105, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.104 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.105 = type { ptr }
%union.anon.106 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.107 = type { %struct.bpf_raw_event_map }
%union.anon.108 = type { %struct.bpf_raw_event_map }
%union.anon.109 = type { %struct.bpf_raw_event_map }
%union.anon.110 = type { %struct.bpf_raw_event_map }
%union.anon.111 = type { %struct.bpf_raw_event_map }
%union.anon.112 = type { %struct.bpf_raw_event_map }
%union.anon.113 = type { %struct.bpf_raw_event_map }
%union.anon.114 = type { %struct.bpf_raw_event_map }
%union.anon.115 = type { %struct.bpf_raw_event_map }
%union.anon.116 = type { %struct.bpf_raw_event_map }
%union.anon.117 = type { %struct.bpf_raw_event_map }
%union.anon.118 = type { %struct.bpf_raw_event_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.static_key_true = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon }
%union.anon = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kmalloc_info_struct = type { [4 x ptr], i32 }
%struct.trace_print_flags = type { i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.cpumask = type { [1 x i32] }
%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_kmem_alloc = type { %struct.trace_entry, i32, ptr, i32, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_kmem_alloc_node = type { %struct.trace_entry, i32, ptr, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_kfree = type { %struct.trace_entry, i32, ptr, [0 x i8] }
%struct.trace_event_raw_kmem_cache_free = type { %struct.trace_entry, i32, ptr, i32, [0 x i8] }
%struct.trace_event_raw_mm_page_free = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_mm_page_free_batched = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_event_raw_mm_page_alloc = type { %struct.trace_entry, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_mm_page = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_mm_page_pcpu_drain = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_mm_page_alloc_extfrag = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_rss_stat = type { %struct.trace_entry, i32, i32, i32, i32, [0 x i8] }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.48, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.11 }
%struct.llist_node = type { ptr }
%union.anon.11 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.13 }
%union.anon.13 = type { %struct.anon.14 }
%struct.anon.14 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.48 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.kmem_cache = type { ptr, i32, i32, i32, i32, %struct.reciprocal_value, i32, i32, i32, %struct.kmem_cache_order_objects, %struct.kmem_cache_order_objects, %struct.kmem_cache_order_objects, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, %struct.kobject, i32, ptr, %struct.kasan_cache, i32, i32, [1 x ptr] }
%struct.reciprocal_value = type { i32, i8, i8 }
%struct.kmem_cache_order_objects = type { i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.kasan_cache = type { i32, i32, i8 }
%struct.page = type { i32, %union.anon.0, %union.anon.75, %struct.atomic_t, i32 }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.75 = type { %struct.atomic_t }
%struct.kmem_obj_info = type { ptr, ptr, ptr, i32, ptr, ptr, [16 x ptr], [16 x ptr] }
%struct.rnd_state = type { i32, i32, i32, i32 }
%struct.slabinfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_kmalloc = internal constant [8 x i8] c"kmalloc\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_kmalloc = dso_local global %struct.static_call_key { ptr @__traceiter_kmalloc }, align 4
@__tracepoint_kmalloc = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_kmalloc, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_kmalloc, ptr null, ptr @__traceiter_kmalloc, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_kmalloc = internal constant ptr @__tracepoint_kmalloc, section "__tracepoints_ptrs", align 4
@__tpstrtab_kmem_cache_alloc = internal constant [17 x i8] c"kmem_cache_alloc\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_kmem_cache_alloc = dso_local global %struct.static_call_key { ptr @__traceiter_kmem_cache_alloc }, align 4
@__tracepoint_kmem_cache_alloc = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_kmem_cache_alloc, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_kmem_cache_alloc, ptr null, ptr @__traceiter_kmem_cache_alloc, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_kmem_cache_alloc = internal constant ptr @__tracepoint_kmem_cache_alloc, section "__tracepoints_ptrs", align 4
@__tpstrtab_kmalloc_node = internal constant [13 x i8] c"kmalloc_node\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_kmalloc_node = dso_local global %struct.static_call_key { ptr @__traceiter_kmalloc_node }, align 4
@__tracepoint_kmalloc_node = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_kmalloc_node, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_kmalloc_node, ptr null, ptr @__traceiter_kmalloc_node, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_kmalloc_node = internal constant ptr @__tracepoint_kmalloc_node, section "__tracepoints_ptrs", align 4
@__tpstrtab_kmem_cache_alloc_node = internal constant [22 x i8] c"kmem_cache_alloc_node\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_kmem_cache_alloc_node = dso_local global %struct.static_call_key { ptr @__traceiter_kmem_cache_alloc_node }, align 4
@__tracepoint_kmem_cache_alloc_node = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_kmem_cache_alloc_node, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_kmem_cache_alloc_node, ptr null, ptr @__traceiter_kmem_cache_alloc_node, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_kmem_cache_alloc_node = internal constant ptr @__tracepoint_kmem_cache_alloc_node, section "__tracepoints_ptrs", align 4
@__tpstrtab_kfree = internal constant [6 x i8] c"kfree\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_kfree = dso_local global %struct.static_call_key { ptr @__traceiter_kfree }, align 4
@__tracepoint_kfree = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_kfree, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_kfree, ptr null, ptr @__traceiter_kfree, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_kfree = internal constant ptr @__tracepoint_kfree, section "__tracepoints_ptrs", align 4
@__tpstrtab_kmem_cache_free = internal constant [16 x i8] c"kmem_cache_free\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_kmem_cache_free = dso_local global %struct.static_call_key { ptr @__traceiter_kmem_cache_free }, align 4
@__tracepoint_kmem_cache_free = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_kmem_cache_free, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_kmem_cache_free, ptr null, ptr @__traceiter_kmem_cache_free, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_kmem_cache_free = internal constant ptr @__tracepoint_kmem_cache_free, section "__tracepoints_ptrs", align 4
@__tpstrtab_mm_page_free = internal constant [13 x i8] c"mm_page_free\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mm_page_free = dso_local global %struct.static_call_key { ptr @__traceiter_mm_page_free }, align 4
@__tracepoint_mm_page_free = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mm_page_free, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mm_page_free, ptr null, ptr @__traceiter_mm_page_free, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mm_page_free = internal constant ptr @__tracepoint_mm_page_free, section "__tracepoints_ptrs", align 4
@__tpstrtab_mm_page_free_batched = internal constant [21 x i8] c"mm_page_free_batched\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mm_page_free_batched = dso_local global %struct.static_call_key { ptr @__traceiter_mm_page_free_batched }, align 4
@__tracepoint_mm_page_free_batched = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mm_page_free_batched, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mm_page_free_batched, ptr null, ptr @__traceiter_mm_page_free_batched, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mm_page_free_batched = internal constant ptr @__tracepoint_mm_page_free_batched, section "__tracepoints_ptrs", align 4
@__tpstrtab_mm_page_alloc = internal constant [14 x i8] c"mm_page_alloc\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mm_page_alloc = dso_local global %struct.static_call_key { ptr @__traceiter_mm_page_alloc }, align 4
@__tracepoint_mm_page_alloc = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mm_page_alloc, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mm_page_alloc, ptr null, ptr @__traceiter_mm_page_alloc, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mm_page_alloc = internal constant ptr @__tracepoint_mm_page_alloc, section "__tracepoints_ptrs", align 4
@__tpstrtab_mm_page_alloc_zone_locked = internal constant [26 x i8] c"mm_page_alloc_zone_locked\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mm_page_alloc_zone_locked = dso_local global %struct.static_call_key { ptr @__traceiter_mm_page_alloc_zone_locked }, align 4
@__tracepoint_mm_page_alloc_zone_locked = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mm_page_alloc_zone_locked, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mm_page_alloc_zone_locked, ptr null, ptr @__traceiter_mm_page_alloc_zone_locked, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mm_page_alloc_zone_locked = internal constant ptr @__tracepoint_mm_page_alloc_zone_locked, section "__tracepoints_ptrs", align 4
@__tpstrtab_mm_page_pcpu_drain = internal constant [19 x i8] c"mm_page_pcpu_drain\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mm_page_pcpu_drain = dso_local global %struct.static_call_key { ptr @__traceiter_mm_page_pcpu_drain }, align 4
@__tracepoint_mm_page_pcpu_drain = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mm_page_pcpu_drain, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mm_page_pcpu_drain, ptr null, ptr @__traceiter_mm_page_pcpu_drain, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mm_page_pcpu_drain = internal constant ptr @__tracepoint_mm_page_pcpu_drain, section "__tracepoints_ptrs", align 4
@__tpstrtab_mm_page_alloc_extfrag = internal constant [22 x i8] c"mm_page_alloc_extfrag\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mm_page_alloc_extfrag = dso_local global %struct.static_call_key { ptr @__traceiter_mm_page_alloc_extfrag }, align 4
@__tracepoint_mm_page_alloc_extfrag = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mm_page_alloc_extfrag, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mm_page_alloc_extfrag, ptr null, ptr @__traceiter_mm_page_alloc_extfrag, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mm_page_alloc_extfrag = internal constant ptr @__tracepoint_mm_page_alloc_extfrag, section "__tracepoints_ptrs", align 4
@__tpstrtab_rss_stat = internal constant [9 x i8] c"rss_stat\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rss_stat = dso_local global %struct.static_call_key { ptr @__traceiter_rss_stat }, align 4
@__tracepoint_rss_stat = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_rss_stat, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_rss_stat, ptr null, ptr @__traceiter_rss_stat, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rss_stat = internal constant ptr @__tracepoint_rss_stat, section "__tracepoints_ptrs", align 4
@str__kmem__trace_system_name = internal constant [5 x i8] c"kmem\00", align 1
@.str = private unnamed_addr constant [16 x i8] c"COMPACT_SKIPPED\00", align 1
@__TRACE_SYSTEM_COMPACT_SKIPPED = internal global %struct.trace_eval_map { ptr @str__kmem__trace_system_name, ptr @.str, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_SKIPPED = internal global ptr @__TRACE_SYSTEM_COMPACT_SKIPPED, section "_ftrace_eval_map", align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"COMPACT_DEFERRED\00", align 1
@__TRACE_SYSTEM_COMPACT_DEFERRED = internal global %struct.trace_eval_map { ptr @str__kmem__trace_system_name, ptr @.str.1, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_DEFERRED = internal global ptr @__TRACE_SYSTEM_COMPACT_DEFERRED, section "_ftrace_eval_map", align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"COMPACT_CONTINUE\00", align 1
@__TRACE_SYSTEM_COMPACT_CONTINUE = internal global %struct.trace_eval_map { ptr @str__kmem__trace_system_name, ptr @.str.2, i32 4 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_CONTINUE = internal global ptr @__TRACE_SYSTEM_COMPACT_CONTINUE, section "_ftrace_eval_map", align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"COMPACT_SUCCESS\00", align 1
@__TRACE_SYSTEM_COMPACT_SUCCESS = internal global %struct.trace_eval_map { ptr @str__kmem__trace_system_name, ptr @.str.3, i32 8 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_SUCCESS = internal global ptr @__TRACE_SYSTEM_COMPACT_SUCCESS, section "_ftrace_eval_map", align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"COMPACT_PARTIAL_SKIPPED\00", align 1
@__TRACE_SYSTEM_COMPACT_PARTIAL_SKIPPED = internal global %struct.trace_eval_map { ptr @str__kmem__trace_system_name, ptr @.str.4, i32 6 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_PARTIAL_SKIPPED = internal global ptr @__TRACE_SYSTEM_COMPACT_PARTIAL_SKIPPED, section "_ftrace_eval_map", align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"COMPACT_COMPLETE\00", align 1
@__TRACE_SYSTEM_COMPACT_COMPLETE = internal global %struct.trace_eval_map { ptr @str__kmem__trace_system_name, ptr @.str.5, i32 5 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_COMPLETE = internal global ptr @__TRACE_SYSTEM_COMPACT_COMPLETE, section "_ftrace_eval_map", align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"COMPACT_NO_SUITABLE_PAGE\00", align 1
@__TRACE_SYSTEM_COMPACT_NO_SUITABLE_PAGE = internal global %struct.trace_eval_map { ptr @str__kmem__trace_system_name, ptr @.str.6, i32 3 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_NO_SUITABLE_PAGE = internal global ptr @__TRACE_SYSTEM_COMPACT_NO_SUITABLE_PAGE, section "_ftrace_eval_map", align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"COMPACT_NOT_SUITABLE_ZONE\00", align 1
@__TRACE_SYSTEM_COMPACT_NOT_SUITABLE_ZONE = internal global %struct.trace_eval_map { ptr @str__kmem__trace_system_name, ptr @.str.7, i32 0 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_NOT_SUITABLE_ZONE = internal global ptr @__TRACE_SYSTEM_COMPACT_NOT_SUITABLE_ZONE, section "_ftrace_eval_map", align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"COMPACT_CONTENDED\00", align 1
@__TRACE_SYSTEM_COMPACT_CONTENDED = internal global %struct.trace_eval_map { ptr @str__kmem__trace_system_name, ptr @.str.8, i32 7 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_CONTENDED = internal global ptr @__TRACE_SYSTEM_COMPACT_CONTENDED, section "_ftrace_eval_map", align 4
@.str.9 = private unnamed_addr constant [23 x i8] c"COMPACT_PRIO_SYNC_FULL\00", align 1
@__TRACE_SYSTEM_COMPACT_PRIO_SYNC_FULL = internal global %struct.trace_eval_map { ptr @str__kmem__trace_system_name, ptr @.str.9, i32 0 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_PRIO_SYNC_FULL = internal global ptr @__TRACE_SYSTEM_COMPACT_PRIO_SYNC_FULL, section "_ftrace_eval_map", align 4
@.str.10 = private unnamed_addr constant [24 x i8] c"COMPACT_PRIO_SYNC_LIGHT\00", align 1
@__TRACE_SYSTEM_COMPACT_PRIO_SYNC_LIGHT = internal global %struct.trace_eval_map { ptr @str__kmem__trace_system_name, ptr @.str.10, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_PRIO_SYNC_LIGHT = internal global ptr @__TRACE_SYSTEM_COMPACT_PRIO_SYNC_LIGHT, section "_ftrace_eval_map", align 4
@.str.11 = private unnamed_addr constant [19 x i8] c"COMPACT_PRIO_ASYNC\00", align 1
@__TRACE_SYSTEM_COMPACT_PRIO_ASYNC = internal global %struct.trace_eval_map { ptr @str__kmem__trace_system_name, ptr @.str.11, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_PRIO_ASYNC = internal global ptr @__TRACE_SYSTEM_COMPACT_PRIO_ASYNC, section "_ftrace_eval_map", align 4
@.str.12 = private unnamed_addr constant [9 x i8] c"ZONE_DMA\00", align 1
@__TRACE_SYSTEM_ZONE_DMA = internal global %struct.trace_eval_map { ptr @str__kmem__trace_system_name, ptr @.str.12, i32 0 }, section ".init.data", align 4
@TRACE_SYSTEM_ZONE_DMA = internal global ptr @__TRACE_SYSTEM_ZONE_DMA, section "_ftrace_eval_map", align 4
@.str.13 = private unnamed_addr constant [12 x i8] c"ZONE_NORMAL\00", align 1
@__TRACE_SYSTEM_ZONE_NORMAL = internal global %struct.trace_eval_map { ptr @str__kmem__trace_system_name, ptr @.str.13, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_ZONE_NORMAL = internal global ptr @__TRACE_SYSTEM_ZONE_NORMAL, section "_ftrace_eval_map", align 4
@.str.14 = private unnamed_addr constant [13 x i8] c"ZONE_HIGHMEM\00", align 1
@__TRACE_SYSTEM_ZONE_HIGHMEM = internal global %struct.trace_eval_map { ptr @str__kmem__trace_system_name, ptr @.str.14, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_ZONE_HIGHMEM = internal global ptr @__TRACE_SYSTEM_ZONE_HIGHMEM, section "_ftrace_eval_map", align 4
@.str.15 = private unnamed_addr constant [13 x i8] c"ZONE_MOVABLE\00", align 1
@__TRACE_SYSTEM_ZONE_MOVABLE = internal global %struct.trace_eval_map { ptr @str__kmem__trace_system_name, ptr @.str.15, i32 3 }, section ".init.data", align 4
@TRACE_SYSTEM_ZONE_MOVABLE = internal global ptr @__TRACE_SYSTEM_ZONE_MOVABLE, section "_ftrace_eval_map", align 4
@.str.16 = private unnamed_addr constant [18 x i8] c"LRU_INACTIVE_ANON\00", align 1
@__TRACE_SYSTEM_LRU_INACTIVE_ANON = internal global %struct.trace_eval_map { ptr @str__kmem__trace_system_name, ptr @.str.16, i32 0 }, section ".init.data", align 4
@TRACE_SYSTEM_LRU_INACTIVE_ANON = internal global ptr @__TRACE_SYSTEM_LRU_INACTIVE_ANON, section "_ftrace_eval_map", align 4
@.str.17 = private unnamed_addr constant [16 x i8] c"LRU_ACTIVE_ANON\00", align 1
@__TRACE_SYSTEM_LRU_ACTIVE_ANON = internal global %struct.trace_eval_map { ptr @str__kmem__trace_system_name, ptr @.str.17, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_LRU_ACTIVE_ANON = internal global ptr @__TRACE_SYSTEM_LRU_ACTIVE_ANON, section "_ftrace_eval_map", align 4
@.str.18 = private unnamed_addr constant [18 x i8] c"LRU_INACTIVE_FILE\00", align 1
@__TRACE_SYSTEM_LRU_INACTIVE_FILE = internal global %struct.trace_eval_map { ptr @str__kmem__trace_system_name, ptr @.str.18, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_LRU_INACTIVE_FILE = internal global ptr @__TRACE_SYSTEM_LRU_INACTIVE_FILE, section "_ftrace_eval_map", align 4
@.str.19 = private unnamed_addr constant [16 x i8] c"LRU_ACTIVE_FILE\00", align 1
@__TRACE_SYSTEM_LRU_ACTIVE_FILE = internal global %struct.trace_eval_map { ptr @str__kmem__trace_system_name, ptr @.str.19, i32 3 }, section ".init.data", align 4
@TRACE_SYSTEM_LRU_ACTIVE_FILE = internal global ptr @__TRACE_SYSTEM_LRU_ACTIVE_FILE, section "_ftrace_eval_map", align 4
@.str.20 = private unnamed_addr constant [16 x i8] c"LRU_UNEVICTABLE\00", align 1
@__TRACE_SYSTEM_LRU_UNEVICTABLE = internal global %struct.trace_eval_map { ptr @str__kmem__trace_system_name, ptr @.str.20, i32 4 }, section ".init.data", align 4
@TRACE_SYSTEM_LRU_UNEVICTABLE = internal global ptr @__TRACE_SYSTEM_LRU_UNEVICTABLE, section "_ftrace_eval_map", align 4
@.str.21 = private unnamed_addr constant [13 x i8] c"MM_FILEPAGES\00", align 1
@__TRACE_SYSTEM_MM_FILEPAGES = internal global %struct.trace_eval_map { ptr @str__kmem__trace_system_name, ptr @.str.21, i32 0 }, section ".init.data", align 4
@TRACE_SYSTEM_MM_FILEPAGES = internal global ptr @__TRACE_SYSTEM_MM_FILEPAGES, section "_ftrace_eval_map", align 4
@.str.22 = private unnamed_addr constant [13 x i8] c"MM_ANONPAGES\00", align 1
@__TRACE_SYSTEM_MM_ANONPAGES = internal global %struct.trace_eval_map { ptr @str__kmem__trace_system_name, ptr @.str.22, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_MM_ANONPAGES = internal global ptr @__TRACE_SYSTEM_MM_ANONPAGES, section "_ftrace_eval_map", align 4
@.str.23 = private unnamed_addr constant [12 x i8] c"MM_SWAPENTS\00", align 1
@__TRACE_SYSTEM_MM_SWAPENTS = internal global %struct.trace_eval_map { ptr @str__kmem__trace_system_name, ptr @.str.23, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_MM_SWAPENTS = internal global ptr @__TRACE_SYSTEM_MM_SWAPENTS, section "_ftrace_eval_map", align 4
@.str.24 = private unnamed_addr constant [14 x i8] c"MM_SHMEMPAGES\00", align 1
@__TRACE_SYSTEM_MM_SHMEMPAGES = internal global %struct.trace_eval_map { ptr @str__kmem__trace_system_name, ptr @.str.24, i32 3 }, section ".init.data", align 4
@TRACE_SYSTEM_MM_SHMEMPAGES = internal global ptr @__TRACE_SYSTEM_MM_SHMEMPAGES, section "_ftrace_eval_map", align 4
@trace_event_fields_kmem_alloc = internal global [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.186, %union.anon.102 { %struct.anon.103 { ptr @.str.187, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.188, %union.anon.102 { %struct.anon.103 { ptr @.str.189, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.190, %union.anon.102 { %struct.anon.103 { ptr @.str.191, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.190, %union.anon.102 { %struct.anon.103 { ptr @.str.192, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.193, %union.anon.102 { %struct.anon.103 { ptr @.str.194, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_kmem_alloc = internal global %struct.trace_event_class { ptr @str__kmem__trace_system_name, ptr @trace_event_raw_event_kmem_alloc, ptr @perf_trace_kmem_alloc, ptr @trace_event_reg, ptr @trace_event_fields_kmem_alloc, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_kmem_alloc, i64 24), ptr getelementptr (i8, ptr @event_class_kmem_alloc, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_kmem_alloc = internal global %struct.trace_event_functions { ptr @trace_raw_output_kmem_alloc, ptr null, ptr null, ptr null }, align 4
@print_fmt_kmem_alloc = internal global [3111 x i8] c"\22call_site=%pS ptr=%p bytes_req=%zu bytes_alloc=%zu gfp_flags=%s\22, (void *)REC->call_site, REC->ptr, REC->bytes_req, REC->bytes_alloc, (REC->gfp_flags) ? __print_flags(REC->gfp_flags, \22|\22, {(unsigned long)(((((((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u) | (( gfp_t)0x100000u)) | (( gfp_t)0x02u)) | (( gfp_t)0x08u) | (( gfp_t)0x1000000u)) | (( gfp_t)0x40000u) | (( gfp_t)0x80000u) | (( gfp_t)0x2000u)) & ~(( gfp_t)(0x400u|0x800u))) | (( gfp_t)0x400u)), \22GFP_TRANSHUGE\22}, {(unsigned long)((((((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u) | (( gfp_t)0x100000u)) | (( gfp_t)0x02u)) | (( gfp_t)0x08u) | (( gfp_t)0x1000000u)) | (( gfp_t)0x40000u) | (( gfp_t)0x80000u) | (( gfp_t)0x2000u)) & ~(( gfp_t)(0x400u|0x800u))), \22GFP_TRANSHUGE_LIGHT\22}, {(unsigned long)((((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u) | (( gfp_t)0x100000u)) | (( gfp_t)0x02u)) | (( gfp_t)0x08u) | (( gfp_t)0x1000000u)), \22GFP_HIGHUSER_MOVABLE\22}, {(unsigned long)(((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u) | (( gfp_t)0x100000u)) | (( gfp_t)0x02u)), \22GFP_HIGHUSER\22}, {(unsigned long)((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u) | (( gfp_t)0x100000u)), \22GFP_USER\22}, {(unsigned long)(((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u)) | (( gfp_t)0x400000u)), \22GFP_KERNEL_ACCOUNT\22}, {(unsigned long)((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u)), \22GFP_KERNEL\22}, {(unsigned long)((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u)), \22GFP_NOFS\22}, {(unsigned long)((( gfp_t)0x20u)|(( gfp_t)0x200u)|(( gfp_t)0x800u)), \22GFP_ATOMIC\22}, {(unsigned long)((( gfp_t)(0x400u|0x800u))), \22GFP_NOIO\22}, {(unsigned long)((( gfp_t)0x800u)), \22GFP_NOWAIT\22}, {(unsigned long)(( gfp_t)0x01u), \22GFP_DMA\22}, {(unsigned long)(( gfp_t)0x02u), \22__GFP_HIGHMEM\22}, {(unsigned long)(( gfp_t)0x04u), \22GFP_DMA32\22}, {(unsigned long)(( gfp_t)0x20u), \22__GFP_HIGH\22}, {(unsigned long)(( gfp_t)0x200u), \22__GFP_ATOMIC\22}, {(unsigned long)(( gfp_t)0x40u), \22__GFP_IO\22}, {(unsigned long)(( gfp_t)0x80u), \22__GFP_FS\22}, {(unsigned long)(( gfp_t)0x2000u), \22__GFP_NOWARN\22}, {(unsigned long)(( gfp_t)0x4000u), \22__GFP_RETRY_MAYFAIL\22}, {(unsigned long)(( gfp_t)0x8000u), \22__GFP_NOFAIL\22}, {(unsigned long)(( gfp_t)0x10000u), \22__GFP_NORETRY\22}, {(unsigned long)(( gfp_t)0x40000u), \22__GFP_COMP\22}, {(unsigned long)(( gfp_t)0x100u), \22__GFP_ZERO\22}, {(unsigned long)(( gfp_t)0x80000u), \22__GFP_NOMEMALLOC\22}, {(unsigned long)(( gfp_t)0x20000u), \22__GFP_MEMALLOC\22}, {(unsigned long)(( gfp_t)0x100000u), \22__GFP_HARDWALL\22}, {(unsigned long)(( gfp_t)0x200000u), \22__GFP_THISNODE\22}, {(unsigned long)(( gfp_t)0x10u), \22__GFP_RECLAIMABLE\22}, {(unsigned long)(( gfp_t)0x08u), \22__GFP_MOVABLE\22}, {(unsigned long)(( gfp_t)0x400000u), \22__GFP_ACCOUNT\22}, {(unsigned long)(( gfp_t)0x1000u), \22__GFP_WRITE\22}, {(unsigned long)(( gfp_t)(0x400u|0x800u)), \22__GFP_RECLAIM\22}, {(unsigned long)(( gfp_t)0x400u), \22__GFP_DIRECT_RECLAIM\22}, {(unsigned long)(( gfp_t)0x800u), \22__GFP_KSWAPD_RECLAIM\22}, {(unsigned long)(( gfp_t)0x800000u), \22__GFP_ZEROTAGS\22}, {(unsigned long)(( gfp_t)0x1000000u),\22__GFP_SKIP_KASAN_POISON\22} ) : \22none\22\00", align 1
@event_kmalloc = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_kmem_alloc, %union.anon.104 { ptr @__tracepoint_kmalloc }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_kmem_alloc }, ptr @print_fmt_kmem_alloc, ptr null, %union.anon.105 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_kmalloc = internal global ptr @event_kmalloc, section "_ftrace_events", align 4
@event_kmem_cache_alloc = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_kmem_alloc, %union.anon.104 { ptr @__tracepoint_kmem_cache_alloc }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_kmem_alloc }, ptr @print_fmt_kmem_alloc, ptr null, %union.anon.105 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_kmem_cache_alloc = internal global ptr @event_kmem_cache_alloc, section "_ftrace_events", align 4
@trace_event_fields_kmem_alloc_node = internal global [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.186, %union.anon.102 { %struct.anon.103 { ptr @.str.187, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.188, %union.anon.102 { %struct.anon.103 { ptr @.str.189, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.190, %union.anon.102 { %struct.anon.103 { ptr @.str.191, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.190, %union.anon.102 { %struct.anon.103 { ptr @.str.192, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.193, %union.anon.102 { %struct.anon.103 { ptr @.str.194, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.235, %union.anon.102 { %struct.anon.103 { ptr @.str.236, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_kmem_alloc_node = internal global %struct.trace_event_class { ptr @str__kmem__trace_system_name, ptr @trace_event_raw_event_kmem_alloc_node, ptr @perf_trace_kmem_alloc_node, ptr @trace_event_reg, ptr @trace_event_fields_kmem_alloc_node, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_kmem_alloc_node, i64 24), ptr getelementptr (i8, ptr @event_class_kmem_alloc_node, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_kmem_alloc_node = internal global %struct.trace_event_functions { ptr @trace_raw_output_kmem_alloc_node, ptr null, ptr null, ptr null }, align 4
@print_fmt_kmem_alloc_node = internal global [3130 x i8] c"\22call_site=%pS ptr=%p bytes_req=%zu bytes_alloc=%zu gfp_flags=%s node=%d\22, (void *)REC->call_site, REC->ptr, REC->bytes_req, REC->bytes_alloc, (REC->gfp_flags) ? __print_flags(REC->gfp_flags, \22|\22, {(unsigned long)(((((((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u) | (( gfp_t)0x100000u)) | (( gfp_t)0x02u)) | (( gfp_t)0x08u) | (( gfp_t)0x1000000u)) | (( gfp_t)0x40000u) | (( gfp_t)0x80000u) | (( gfp_t)0x2000u)) & ~(( gfp_t)(0x400u|0x800u))) | (( gfp_t)0x400u)), \22GFP_TRANSHUGE\22}, {(unsigned long)((((((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u) | (( gfp_t)0x100000u)) | (( gfp_t)0x02u)) | (( gfp_t)0x08u) | (( gfp_t)0x1000000u)) | (( gfp_t)0x40000u) | (( gfp_t)0x80000u) | (( gfp_t)0x2000u)) & ~(( gfp_t)(0x400u|0x800u))), \22GFP_TRANSHUGE_LIGHT\22}, {(unsigned long)((((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u) | (( gfp_t)0x100000u)) | (( gfp_t)0x02u)) | (( gfp_t)0x08u) | (( gfp_t)0x1000000u)), \22GFP_HIGHUSER_MOVABLE\22}, {(unsigned long)(((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u) | (( gfp_t)0x100000u)) | (( gfp_t)0x02u)), \22GFP_HIGHUSER\22}, {(unsigned long)((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u) | (( gfp_t)0x100000u)), \22GFP_USER\22}, {(unsigned long)(((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u)) | (( gfp_t)0x400000u)), \22GFP_KERNEL_ACCOUNT\22}, {(unsigned long)((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u)), \22GFP_KERNEL\22}, {(unsigned long)((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u)), \22GFP_NOFS\22}, {(unsigned long)((( gfp_t)0x20u)|(( gfp_t)0x200u)|(( gfp_t)0x800u)), \22GFP_ATOMIC\22}, {(unsigned long)((( gfp_t)(0x400u|0x800u))), \22GFP_NOIO\22}, {(unsigned long)((( gfp_t)0x800u)), \22GFP_NOWAIT\22}, {(unsigned long)(( gfp_t)0x01u), \22GFP_DMA\22}, {(unsigned long)(( gfp_t)0x02u), \22__GFP_HIGHMEM\22}, {(unsigned long)(( gfp_t)0x04u), \22GFP_DMA32\22}, {(unsigned long)(( gfp_t)0x20u), \22__GFP_HIGH\22}, {(unsigned long)(( gfp_t)0x200u), \22__GFP_ATOMIC\22}, {(unsigned long)(( gfp_t)0x40u), \22__GFP_IO\22}, {(unsigned long)(( gfp_t)0x80u), \22__GFP_FS\22}, {(unsigned long)(( gfp_t)0x2000u), \22__GFP_NOWARN\22}, {(unsigned long)(( gfp_t)0x4000u), \22__GFP_RETRY_MAYFAIL\22}, {(unsigned long)(( gfp_t)0x8000u), \22__GFP_NOFAIL\22}, {(unsigned long)(( gfp_t)0x10000u), \22__GFP_NORETRY\22}, {(unsigned long)(( gfp_t)0x40000u), \22__GFP_COMP\22}, {(unsigned long)(( gfp_t)0x100u), \22__GFP_ZERO\22}, {(unsigned long)(( gfp_t)0x80000u), \22__GFP_NOMEMALLOC\22}, {(unsigned long)(( gfp_t)0x20000u), \22__GFP_MEMALLOC\22}, {(unsigned long)(( gfp_t)0x100000u), \22__GFP_HARDWALL\22}, {(unsigned long)(( gfp_t)0x200000u), \22__GFP_THISNODE\22}, {(unsigned long)(( gfp_t)0x10u), \22__GFP_RECLAIMABLE\22}, {(unsigned long)(( gfp_t)0x08u), \22__GFP_MOVABLE\22}, {(unsigned long)(( gfp_t)0x400000u), \22__GFP_ACCOUNT\22}, {(unsigned long)(( gfp_t)0x1000u), \22__GFP_WRITE\22}, {(unsigned long)(( gfp_t)(0x400u|0x800u)), \22__GFP_RECLAIM\22}, {(unsigned long)(( gfp_t)0x400u), \22__GFP_DIRECT_RECLAIM\22}, {(unsigned long)(( gfp_t)0x800u), \22__GFP_KSWAPD_RECLAIM\22}, {(unsigned long)(( gfp_t)0x800000u), \22__GFP_ZEROTAGS\22}, {(unsigned long)(( gfp_t)0x1000000u),\22__GFP_SKIP_KASAN_POISON\22} ) : \22none\22, REC->node\00", align 1
@event_kmalloc_node = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_kmem_alloc_node, %union.anon.104 { ptr @__tracepoint_kmalloc_node }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_kmem_alloc_node }, ptr @print_fmt_kmem_alloc_node, ptr null, %union.anon.105 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_kmalloc_node = internal global ptr @event_kmalloc_node, section "_ftrace_events", align 4
@event_kmem_cache_alloc_node = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_kmem_alloc_node, %union.anon.104 { ptr @__tracepoint_kmem_cache_alloc_node }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_kmem_alloc_node }, ptr @print_fmt_kmem_alloc_node, ptr null, %union.anon.105 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_kmem_cache_alloc_node = internal global ptr @event_kmem_cache_alloc_node, section "_ftrace_events", align 4
@trace_event_fields_kfree = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.186, %union.anon.102 { %struct.anon.103 { ptr @.str.187, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.188, %union.anon.102 { %struct.anon.103 { ptr @.str.189, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_kfree = internal global %struct.trace_event_class { ptr @str__kmem__trace_system_name, ptr @trace_event_raw_event_kfree, ptr @perf_trace_kfree, ptr @trace_event_reg, ptr @trace_event_fields_kfree, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_kfree, i64 24), ptr getelementptr (i8, ptr @event_class_kfree, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_kfree = internal global %struct.trace_event_functions { ptr @trace_raw_output_kfree, ptr null, ptr null, ptr null }, align 4
@print_fmt_kfree = internal global [57 x i8] c"\22call_site=%pS ptr=%p\22, (void *)REC->call_site, REC->ptr\00", align 1
@event_kfree = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_kfree, %union.anon.104 { ptr @__tracepoint_kfree }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_kfree }, ptr @print_fmt_kfree, ptr null, %union.anon.105 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_kfree = internal global ptr @event_kfree, section "_ftrace_events", align 4
@trace_event_fields_kmem_cache_free = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.186, %union.anon.102 { %struct.anon.103 { ptr @.str.187, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.188, %union.anon.102 { %struct.anon.103 { ptr @.str.189, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.240, %union.anon.102 { %struct.anon.103 { ptr @.str.241, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_kmem_cache_free = internal global %struct.trace_event_class { ptr @str__kmem__trace_system_name, ptr @trace_event_raw_event_kmem_cache_free, ptr @perf_trace_kmem_cache_free, ptr @trace_event_reg, ptr @trace_event_fields_kmem_cache_free, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_kmem_cache_free, i64 24), ptr getelementptr (i8, ptr @event_class_kmem_cache_free, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_kmem_cache_free = internal global %struct.trace_event_functions { ptr @trace_raw_output_kmem_cache_free, ptr null, ptr null, ptr null }, align 4
@print_fmt_kmem_cache_free = internal global [82 x i8] c"\22call_site=%pS ptr=%p name=%s\22, (void *)REC->call_site, REC->ptr, __get_str(name)\00", align 1
@event_kmem_cache_free = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_kmem_cache_free, %union.anon.104 { ptr @__tracepoint_kmem_cache_free }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_kmem_cache_free }, ptr @print_fmt_kmem_cache_free, ptr null, %union.anon.105 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_kmem_cache_free = internal global ptr @event_kmem_cache_free, section "_ftrace_events", align 4
@trace_event_fields_mm_page_free = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.186, %union.anon.102 { %struct.anon.103 { ptr @.str.243, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.244, %union.anon.102 { %struct.anon.103 { ptr @.str.245, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_mm_page_free = internal global %struct.trace_event_class { ptr @str__kmem__trace_system_name, ptr @trace_event_raw_event_mm_page_free, ptr @perf_trace_mm_page_free, ptr @trace_event_reg, ptr @trace_event_fields_mm_page_free, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mm_page_free, i64 24), ptr getelementptr (i8, ptr @event_class_mm_page_free, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mm_page_free = internal global %struct.trace_event_functions { ptr @trace_raw_output_mm_page_free, ptr null, ptr null, ptr null }, align 4
@print_fmt_mm_page_free = internal global [102 x i8] c"\22page=%p pfn=0x%lx order=%d\22, (mem_map + ((REC->pfn) - (__pv_phys_pfn_offset))), REC->pfn, REC->order\00", align 1
@event_mm_page_free = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mm_page_free, %union.anon.104 { ptr @__tracepoint_mm_page_free }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mm_page_free }, ptr @print_fmt_mm_page_free, ptr null, %union.anon.105 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_mm_page_free = internal global ptr @event_mm_page_free, section "_ftrace_events", align 4
@trace_event_fields_mm_page_free_batched = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.186, %union.anon.102 { %struct.anon.103 { ptr @.str.243, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_mm_page_free_batched = internal global %struct.trace_event_class { ptr @str__kmem__trace_system_name, ptr @trace_event_raw_event_mm_page_free_batched, ptr @perf_trace_mm_page_free_batched, ptr @trace_event_reg, ptr @trace_event_fields_mm_page_free_batched, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mm_page_free_batched, i64 24), ptr getelementptr (i8, ptr @event_class_mm_page_free_batched, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mm_page_free_batched = internal global %struct.trace_event_functions { ptr @trace_raw_output_mm_page_free_batched, ptr null, ptr null, ptr null }, align 4
@print_fmt_mm_page_free_batched = internal global [89 x i8] c"\22page=%p pfn=0x%lx order=0\22, (mem_map + ((REC->pfn) - (__pv_phys_pfn_offset))), REC->pfn\00", align 1
@event_mm_page_free_batched = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mm_page_free_batched, %union.anon.104 { ptr @__tracepoint_mm_page_free_batched }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mm_page_free_batched }, ptr @print_fmt_mm_page_free_batched, ptr null, %union.anon.105 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_mm_page_free_batched = internal global ptr @event_mm_page_free_batched, section "_ftrace_events", align 4
@trace_event_fields_mm_page_alloc = internal global [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.186, %union.anon.102 { %struct.anon.103 { ptr @.str.243, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.244, %union.anon.102 { %struct.anon.103 { ptr @.str.245, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.193, %union.anon.102 { %struct.anon.103 { ptr @.str.194, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.235, %union.anon.102 { %struct.anon.103 { ptr @.str.248, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_mm_page_alloc = internal global %struct.trace_event_class { ptr @str__kmem__trace_system_name, ptr @trace_event_raw_event_mm_page_alloc, ptr @perf_trace_mm_page_alloc, ptr @trace_event_reg, ptr @trace_event_fields_mm_page_alloc, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mm_page_alloc, i64 24), ptr getelementptr (i8, ptr @event_class_mm_page_alloc, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mm_page_alloc = internal global %struct.trace_event_functions { ptr @trace_raw_output_mm_page_alloc, ptr null, ptr null, ptr null }, align 4
@print_fmt_mm_page_alloc = internal global [3181 x i8] c"\22page=%p pfn=0x%lx order=%d migratetype=%d gfp_flags=%s\22, REC->pfn != -1UL ? (mem_map + ((REC->pfn) - (__pv_phys_pfn_offset))) : ((void *)0), REC->pfn != -1UL ? REC->pfn : 0, REC->order, REC->migratetype, (REC->gfp_flags) ? __print_flags(REC->gfp_flags, \22|\22, {(unsigned long)(((((((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u) | (( gfp_t)0x100000u)) | (( gfp_t)0x02u)) | (( gfp_t)0x08u) | (( gfp_t)0x1000000u)) | (( gfp_t)0x40000u) | (( gfp_t)0x80000u) | (( gfp_t)0x2000u)) & ~(( gfp_t)(0x400u|0x800u))) | (( gfp_t)0x400u)), \22GFP_TRANSHUGE\22}, {(unsigned long)((((((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u) | (( gfp_t)0x100000u)) | (( gfp_t)0x02u)) | (( gfp_t)0x08u) | (( gfp_t)0x1000000u)) | (( gfp_t)0x40000u) | (( gfp_t)0x80000u) | (( gfp_t)0x2000u)) & ~(( gfp_t)(0x400u|0x800u))), \22GFP_TRANSHUGE_LIGHT\22}, {(unsigned long)((((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u) | (( gfp_t)0x100000u)) | (( gfp_t)0x02u)) | (( gfp_t)0x08u) | (( gfp_t)0x1000000u)), \22GFP_HIGHUSER_MOVABLE\22}, {(unsigned long)(((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u) | (( gfp_t)0x100000u)) | (( gfp_t)0x02u)), \22GFP_HIGHUSER\22}, {(unsigned long)((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u) | (( gfp_t)0x100000u)), \22GFP_USER\22}, {(unsigned long)(((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u)) | (( gfp_t)0x400000u)), \22GFP_KERNEL_ACCOUNT\22}, {(unsigned long)((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u)), \22GFP_KERNEL\22}, {(unsigned long)((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u)), \22GFP_NOFS\22}, {(unsigned long)((( gfp_t)0x20u)|(( gfp_t)0x200u)|(( gfp_t)0x800u)), \22GFP_ATOMIC\22}, {(unsigned long)((( gfp_t)(0x400u|0x800u))), \22GFP_NOIO\22}, {(unsigned long)((( gfp_t)0x800u)), \22GFP_NOWAIT\22}, {(unsigned long)(( gfp_t)0x01u), \22GFP_DMA\22}, {(unsigned long)(( gfp_t)0x02u), \22__GFP_HIGHMEM\22}, {(unsigned long)(( gfp_t)0x04u), \22GFP_DMA32\22}, {(unsigned long)(( gfp_t)0x20u), \22__GFP_HIGH\22}, {(unsigned long)(( gfp_t)0x200u), \22__GFP_ATOMIC\22}, {(unsigned long)(( gfp_t)0x40u), \22__GFP_IO\22}, {(unsigned long)(( gfp_t)0x80u), \22__GFP_FS\22}, {(unsigned long)(( gfp_t)0x2000u), \22__GFP_NOWARN\22}, {(unsigned long)(( gfp_t)0x4000u), \22__GFP_RETRY_MAYFAIL\22}, {(unsigned long)(( gfp_t)0x8000u), \22__GFP_NOFAIL\22}, {(unsigned long)(( gfp_t)0x10000u), \22__GFP_NORETRY\22}, {(unsigned long)(( gfp_t)0x40000u), \22__GFP_COMP\22}, {(unsigned long)(( gfp_t)0x100u), \22__GFP_ZERO\22}, {(unsigned long)(( gfp_t)0x80000u), \22__GFP_NOMEMALLOC\22}, {(unsigned long)(( gfp_t)0x20000u), \22__GFP_MEMALLOC\22}, {(unsigned long)(( gfp_t)0x100000u), \22__GFP_HARDWALL\22}, {(unsigned long)(( gfp_t)0x200000u), \22__GFP_THISNODE\22}, {(unsigned long)(( gfp_t)0x10u), \22__GFP_RECLAIMABLE\22}, {(unsigned long)(( gfp_t)0x08u), \22__GFP_MOVABLE\22}, {(unsigned long)(( gfp_t)0x400000u), \22__GFP_ACCOUNT\22}, {(unsigned long)(( gfp_t)0x1000u), \22__GFP_WRITE\22}, {(unsigned long)(( gfp_t)(0x400u|0x800u)), \22__GFP_RECLAIM\22}, {(unsigned long)(( gfp_t)0x400u), \22__GFP_DIRECT_RECLAIM\22}, {(unsigned long)(( gfp_t)0x800u), \22__GFP_KSWAPD_RECLAIM\22}, {(unsigned long)(( gfp_t)0x800000u), \22__GFP_ZEROTAGS\22}, {(unsigned long)(( gfp_t)0x1000000u),\22__GFP_SKIP_KASAN_POISON\22} ) : \22none\22\00", align 1
@event_mm_page_alloc = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mm_page_alloc, %union.anon.104 { ptr @__tracepoint_mm_page_alloc }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mm_page_alloc }, ptr @print_fmt_mm_page_alloc, ptr null, %union.anon.105 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_mm_page_alloc = internal global ptr @event_mm_page_alloc, section "_ftrace_events", align 4
@trace_event_fields_mm_page = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.186, %union.anon.102 { %struct.anon.103 { ptr @.str.243, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.244, %union.anon.102 { %struct.anon.103 { ptr @.str.245, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.235, %union.anon.102 { %struct.anon.103 { ptr @.str.248, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_mm_page = internal global %struct.trace_event_class { ptr @str__kmem__trace_system_name, ptr @trace_event_raw_event_mm_page, ptr @perf_trace_mm_page, ptr @trace_event_reg, ptr @trace_event_fields_mm_page, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mm_page, i64 24), ptr getelementptr (i8, ptr @event_class_mm_page, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mm_page = internal global %struct.trace_event_functions { ptr @trace_raw_output_mm_page, ptr null, ptr null, ptr null }, align 4
@print_fmt_mm_page = internal global [225 x i8] c"\22page=%p pfn=0x%lx order=%u migratetype=%d percpu_refill=%d\22, REC->pfn != -1UL ? (mem_map + ((REC->pfn) - (__pv_phys_pfn_offset))) : ((void *)0), REC->pfn != -1UL ? REC->pfn : 0, REC->order, REC->migratetype, REC->order == 0\00", align 1
@event_mm_page_alloc_zone_locked = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mm_page, %union.anon.104 { ptr @__tracepoint_mm_page_alloc_zone_locked }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mm_page }, ptr @print_fmt_mm_page, ptr null, %union.anon.105 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_mm_page_alloc_zone_locked = internal global ptr @event_mm_page_alloc_zone_locked, section "_ftrace_events", align 4
@trace_event_fields_mm_page_pcpu_drain = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.186, %union.anon.102 { %struct.anon.103 { ptr @.str.243, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.244, %union.anon.102 { %struct.anon.103 { ptr @.str.245, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.235, %union.anon.102 { %struct.anon.103 { ptr @.str.248, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_mm_page_pcpu_drain = internal global %struct.trace_event_class { ptr @str__kmem__trace_system_name, ptr @trace_event_raw_event_mm_page_pcpu_drain, ptr @perf_trace_mm_page_pcpu_drain, ptr @trace_event_reg, ptr @trace_event_fields_mm_page_pcpu_drain, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mm_page_pcpu_drain, i64 24), ptr getelementptr (i8, ptr @event_class_mm_page_pcpu_drain, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mm_page_pcpu_drain = internal global %struct.trace_event_functions { ptr @trace_raw_output_mm_page_pcpu_drain, ptr null, ptr null, ptr null }, align 4
@print_fmt_mm_page_pcpu_drain = internal global [135 x i8] c"\22page=%p pfn=0x%lx order=%d migratetype=%d\22, (mem_map + ((REC->pfn) - (__pv_phys_pfn_offset))), REC->pfn, REC->order, REC->migratetype\00", align 1
@event_mm_page_pcpu_drain = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mm_page_pcpu_drain, %union.anon.104 { ptr @__tracepoint_mm_page_pcpu_drain }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mm_page_pcpu_drain }, ptr @print_fmt_mm_page_pcpu_drain, ptr null, %union.anon.105 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_mm_page_pcpu_drain = internal global ptr @event_mm_page_pcpu_drain, section "_ftrace_events", align 4
@trace_event_fields_mm_page_alloc_extfrag = internal global [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.186, %union.anon.102 { %struct.anon.103 { ptr @.str.243, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.235, %union.anon.102 { %struct.anon.103 { ptr @.str.252, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.235, %union.anon.102 { %struct.anon.103 { ptr @.str.253, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.235, %union.anon.102 { %struct.anon.103 { ptr @.str.254, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.235, %union.anon.102 { %struct.anon.103 { ptr @.str.255, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.235, %union.anon.102 { %struct.anon.103 { ptr @.str.256, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_mm_page_alloc_extfrag = internal global %struct.trace_event_class { ptr @str__kmem__trace_system_name, ptr @trace_event_raw_event_mm_page_alloc_extfrag, ptr @perf_trace_mm_page_alloc_extfrag, ptr @trace_event_reg, ptr @trace_event_fields_mm_page_alloc_extfrag, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mm_page_alloc_extfrag, i64 24), ptr getelementptr (i8, ptr @event_class_mm_page_alloc_extfrag, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mm_page_alloc_extfrag = internal global %struct.trace_event_functions { ptr @trace_raw_output_mm_page_alloc_extfrag, ptr null, ptr null, ptr null }, align 4
@print_fmt_mm_page_alloc_extfrag = internal global [364 x i8] c"\22page=%p pfn=0x%lx alloc_order=%d fallback_order=%d pageblock_order=%d alloc_migratetype=%d fallback_migratetype=%d fragmenting=%d change_ownership=%d\22, (mem_map + ((REC->pfn) - (__pv_phys_pfn_offset))), REC->pfn, REC->alloc_order, REC->fallback_order, (12-1), REC->alloc_migratetype, REC->fallback_migratetype, REC->fallback_order < (12-1), REC->change_ownership\00", align 1
@event_mm_page_alloc_extfrag = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mm_page_alloc_extfrag, %union.anon.104 { ptr @__tracepoint_mm_page_alloc_extfrag }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mm_page_alloc_extfrag }, ptr @print_fmt_mm_page_alloc_extfrag, ptr null, %union.anon.105 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_mm_page_alloc_extfrag = internal global ptr @event_mm_page_alloc_extfrag, section "_ftrace_events", align 4
@trace_event_fields_rss_stat = internal global [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.244, %union.anon.102 { %struct.anon.103 { ptr @.str.258, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.244, %union.anon.102 { %struct.anon.103 { ptr @.str.259, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.235, %union.anon.102 { %struct.anon.103 { ptr @.str.260, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.261, %union.anon.102 { %struct.anon.103 { ptr @.str.262, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_rss_stat = internal global %struct.trace_event_class { ptr @str__kmem__trace_system_name, ptr @trace_event_raw_event_rss_stat, ptr @perf_trace_rss_stat, ptr @trace_event_reg, ptr @trace_event_fields_rss_stat, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rss_stat, i64 24), ptr getelementptr (i8, ptr @event_class_rss_stat, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rss_stat = internal global %struct.trace_event_functions { ptr @trace_raw_output_rss_stat, ptr null, ptr null, ptr null }, align 4
@print_fmt_rss_stat = internal global [238 x i8] c"\22mm_id=%u curr=%d type=%s size=%ldB\22, REC->mm_id, REC->curr, __print_symbolic(REC->member, { MM_FILEPAGES, \22MM_FILEPAGES\22 }, { MM_ANONPAGES, \22MM_ANONPAGES\22 }, { MM_SWAPENTS, \22MM_SWAPENTS\22 }, { MM_SHMEMPAGES, \22MM_SHMEMPAGES\22 }), REC->size\00", align 1
@event_rss_stat = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rss_stat, %union.anon.104 { ptr @__tracepoint_rss_stat }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rss_stat }, ptr @print_fmt_rss_stat, ptr null, %union.anon.105 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_rss_stat = internal global ptr @event_rss_stat, section "_ftrace_events", align 4
@__bpf_trace_tp_map_kmalloc = internal global %union.anon.106 { %struct.bpf_raw_event_map { ptr @__tracepoint_kmalloc, ptr @__bpf_trace_kmem_alloc, i32 5, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_kmem_cache_alloc = internal global %union.anon.107 { %struct.bpf_raw_event_map { ptr @__tracepoint_kmem_cache_alloc, ptr @__bpf_trace_kmem_alloc, i32 5, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_kmalloc_node = internal global %union.anon.108 { %struct.bpf_raw_event_map { ptr @__tracepoint_kmalloc_node, ptr @__bpf_trace_kmem_alloc_node, i32 6, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_kmem_cache_alloc_node = internal global %union.anon.109 { %struct.bpf_raw_event_map { ptr @__tracepoint_kmem_cache_alloc_node, ptr @__bpf_trace_kmem_alloc_node, i32 6, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_kfree = internal global %union.anon.110 { %struct.bpf_raw_event_map { ptr @__tracepoint_kfree, ptr @__bpf_trace_kfree, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_kmem_cache_free = internal global %union.anon.111 { %struct.bpf_raw_event_map { ptr @__tracepoint_kmem_cache_free, ptr @__bpf_trace_kmem_cache_free, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mm_page_free = internal global %union.anon.112 { %struct.bpf_raw_event_map { ptr @__tracepoint_mm_page_free, ptr @__bpf_trace_mm_page_free, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mm_page_free_batched = internal global %union.anon.113 { %struct.bpf_raw_event_map { ptr @__tracepoint_mm_page_free_batched, ptr @__bpf_trace_mm_page_free_batched, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mm_page_alloc = internal global %union.anon.114 { %struct.bpf_raw_event_map { ptr @__tracepoint_mm_page_alloc, ptr @__bpf_trace_mm_page_alloc, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mm_page_alloc_zone_locked = internal global %union.anon.115 { %struct.bpf_raw_event_map { ptr @__tracepoint_mm_page_alloc_zone_locked, ptr @__bpf_trace_mm_page, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mm_page_pcpu_drain = internal global %union.anon.116 { %struct.bpf_raw_event_map { ptr @__tracepoint_mm_page_pcpu_drain, ptr @__bpf_trace_mm_page_pcpu_drain, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mm_page_alloc_extfrag = internal global %union.anon.117 { %struct.bpf_raw_event_map { ptr @__tracepoint_mm_page_alloc_extfrag, ptr @__bpf_trace_mm_page_alloc_extfrag, i32 5, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_rss_stat = internal global %union.anon.118 { %struct.bpf_raw_event_map { ptr @__tracepoint_rss_stat, ptr @__bpf_trace_rss_stat, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@slab_caches = dso_local global %struct.list_head { ptr @slab_caches, ptr @slab_caches }, align 4
@.str.25 = private unnamed_addr constant [21 x i8] c"slab_mutex.wait_lock\00", align 1
@slab_mutex = dso_local global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.25, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @slab_mutex, i64 52), ptr getelementptr (i8, ptr @slab_mutex, i64 52) }, ptr @slab_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.26, i8 0, i8 4, i8 0, i32 0, i32 0 } }, align 4
@.str.26 = private unnamed_addr constant [11 x i8] c"slab_mutex\00", align 1
@__setup_str_slub_nomerge = internal constant [13 x i8] c"slub_nomerge\00", section ".init.rodata", align 1
@__setup_slub_nomerge = internal global %struct.obs_kernel_param { ptr @__setup_str_slub_nomerge, ptr @setup_slab_nomerge, i32 0 }, section ".init.setup", align 4
@__setup_str_slub_merge = internal constant [11 x i8] c"slub_merge\00", section ".init.rodata", align 1
@__setup_slub_merge = internal global %struct.obs_kernel_param { ptr @__setup_str_slub_merge, ptr @setup_slab_merge, i32 0 }, section ".init.setup", align 4
@__setup_str_setup_slab_nomerge = internal constant [13 x i8] c"slab_nomerge\00", section ".init.rodata", align 1
@__setup_setup_slab_nomerge = internal global %struct.obs_kernel_param { ptr @__setup_str_setup_slab_nomerge, ptr @setup_slab_nomerge, i32 0 }, section ".init.setup", align 4
@__setup_str_setup_slab_merge = internal constant [11 x i8] c"slab_merge\00", section ".init.rodata", align 1
@__setup_setup_slab_merge = internal global %struct.obs_kernel_param { ptr @__setup_str_setup_slab_merge, ptr @setup_slab_merge, i32 0 }, section ".init.setup", align 4
@__kstrtab_kmem_cache_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_kmem_cache_size = external dso_local constant [0 x i8], align 1
@__ksymtab_kmem_cache_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kmem_cache_size to i32), ptr @__kstrtab_kmem_cache_size, ptr @__kstrtabns_kmem_cache_size }, section "___ksymtab+kmem_cache_size", align 4
@slab_nomerge = internal unnamed_addr global i1 false, align 1
@slub_debug_enabled = external dso_local global %struct.static_key_true, align 4
@.str.27 = private unnamed_addr constant [17 x i8] c"mm/slab_common.c\00", align 1
@.str.28 = private unnamed_addr constant [42 x i8] c"%s: Failed to create slab '%s'. Error %d\0A\00", align 1
@__func__.kmem_cache_create_usercopy = private unnamed_addr constant [27 x i8] c"kmem_cache_create_usercopy\00", align 1
@kmem_cache_create_usercopy._entry = internal constant %struct.pi_entry { ptr @.str.29, ptr @__func__.kmem_cache_create_usercopy, ptr @.str.27, i32 376, ptr null, ptr null }, align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"\014%s(%s) failed with error %d\0A\00", align 1
@kmem_cache_create_usercopy._entry_ptr = internal global ptr @kmem_cache_create_usercopy._entry, section ".printk_index", align 4
@__kstrtab_kmem_cache_create_usercopy = external dso_local constant [0 x i8], align 1
@__kstrtabns_kmem_cache_create_usercopy = external dso_local constant [0 x i8], align 1
@__ksymtab_kmem_cache_create_usercopy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kmem_cache_create_usercopy to i32), ptr @__kstrtab_kmem_cache_create_usercopy, ptr @__kstrtabns_kmem_cache_create_usercopy }, section "___ksymtab+kmem_cache_create_usercopy", align 4
@__kstrtab_kmem_cache_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_kmem_cache_create = external dso_local constant [0 x i8], align 1
@__ksymtab_kmem_cache_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kmem_cache_create to i32), ptr @__kstrtab_kmem_cache_create, ptr @__kstrtabns_kmem_cache_create }, section "___ksymtab+kmem_cache_create", align 4
@kmem_cache = dso_local local_unnamed_addr global ptr null, align 4
@.str.30 = private unnamed_addr constant [57 x i8] c"%s %s: Slab cache still has objects when called from %pS\00", align 1
@__func__.kmem_cache_destroy = private unnamed_addr constant [19 x i8] c"kmem_cache_destroy\00", align 1
@__kstrtab_kmem_cache_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_kmem_cache_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_kmem_cache_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kmem_cache_destroy to i32), ptr @__kstrtab_kmem_cache_destroy, ptr @__kstrtabns_kmem_cache_destroy }, section "___ksymtab+kmem_cache_destroy", align 4
@__kstrtab_kmem_cache_shrink = external dso_local constant [0 x i8], align 1
@__kstrtabns_kmem_cache_shrink = external dso_local constant [0 x i8], align 1
@__ksymtab_kmem_cache_shrink = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kmem_cache_shrink to i32), ptr @__kstrtab_kmem_cache_shrink, ptr @__kstrtabns_kmem_cache_shrink }, section "___ksymtab+kmem_cache_shrink", align 4
@slab_state = dso_local local_unnamed_addr global i32 0, align 4
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_kmem_valid_obj = external dso_local constant [0 x i8], align 1
@__kstrtabns_kmem_valid_obj = external dso_local constant [0 x i8], align 1
@__ksymtab_kmem_valid_obj = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kmem_valid_obj to i32), ptr @__kstrtab_kmem_valid_obj, ptr @__kstrtabns_kmem_valid_obj }, section "___ksymtab_gpl+kmem_valid_obj", align 4
@.str.31 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@kmem_dump_obj.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@kmem_dump_obj.__already_done.32 = internal unnamed_addr global i1 false, section ".data.once", align 1
@kmem_dump_obj._entry = internal constant %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.27, i32 585, ptr null, ptr null }, align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"\01c non-slab memory.\0A\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"kmem_dump_obj\00", align 1
@kmem_dump_obj._entry_ptr = internal global ptr @kmem_dump_obj._entry, section ".printk_index", align 4
@kmem_dump_obj._entry.35 = internal constant %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.27, i32 590, ptr null, ptr null }, align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"\01c slab%s %s\00", align 1
@kmem_dump_obj._entry_ptr.37 = internal global ptr @kmem_dump_obj._entry.35, section ".printk_index", align 4
@kmem_dump_obj._entry.38 = internal constant %struct.pi_entry { ptr @.str.39, ptr @.str.34, ptr @.str.27, i32 592, ptr null, ptr null }, align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"\01c slab%s\00", align 1
@kmem_dump_obj._entry_ptr.40 = internal global ptr @kmem_dump_obj._entry.38, section ".printk_index", align 4
@kmem_dump_obj._entry.41 = internal constant %struct.pi_entry { ptr @.str.42, ptr @.str.34, ptr @.str.27, i32 594, ptr null, ptr null }, align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"\01c start %px\00", align 1
@kmem_dump_obj._entry_ptr.43 = internal global ptr @kmem_dump_obj._entry.41, section ".printk_index", align 4
@kmem_dump_obj._entry.44 = internal constant %struct.pi_entry { ptr @.str.45, ptr @.str.34, ptr @.str.27, i32 596, ptr null, ptr null }, align 1
@.str.45 = private unnamed_addr constant [19 x i8] c"\01c data offset %lu\00", align 1
@kmem_dump_obj._entry_ptr.46 = internal global ptr @kmem_dump_obj._entry.44, section ".printk_index", align 4
@kmem_dump_obj._entry.47 = internal constant %struct.pi_entry { ptr @.str.48, ptr @.str.34, ptr @.str.27, i32 599, ptr null, ptr null }, align 1
@.str.48 = private unnamed_addr constant [22 x i8] c"\01c pointer offset %lu\00", align 1
@kmem_dump_obj._entry_ptr.49 = internal global ptr @kmem_dump_obj._entry.47, section ".printk_index", align 4
@kmem_dump_obj._entry.50 = internal constant %struct.pi_entry { ptr @.str.51, ptr @.str.34, ptr @.str.27, i32 602, ptr null, ptr null }, align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"\01c size %u\00", align 1
@kmem_dump_obj._entry_ptr.52 = internal global ptr @kmem_dump_obj._entry.50, section ".printk_index", align 4
@kmem_dump_obj._entry.53 = internal constant %struct.pi_entry { ptr @.str.54, ptr @.str.34, ptr @.str.27, i32 604, ptr null, ptr null }, align 1
@.str.54 = private unnamed_addr constant [21 x i8] c"\01c allocated at %pS\0A\00", align 1
@kmem_dump_obj._entry_ptr.55 = internal global ptr @kmem_dump_obj._entry.53, section ".printk_index", align 4
@kmem_dump_obj._entry.56 = internal constant %struct.pi_entry { ptr @.str.57, ptr @.str.34, ptr @.str.27, i32 606, ptr null, ptr null }, align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"\01c\0A\00", align 1
@kmem_dump_obj._entry_ptr.58 = internal global ptr @kmem_dump_obj._entry.56, section ".printk_index", align 4
@kmem_dump_obj._entry.59 = internal constant %struct.pi_entry { ptr @.str.60, ptr @.str.34, ptr @.str.27, i32 610, ptr null, ptr null }, align 1
@.str.60 = private unnamed_addr constant [11 x i8] c"\016    %pS\0A\00", align 1
@kmem_dump_obj._entry_ptr.61 = internal global ptr @kmem_dump_obj._entry.59, section ".printk_index", align 4
@kmem_dump_obj._entry.62 = internal constant %struct.pi_entry { ptr @.str.63, ptr @.str.34, ptr @.str.27, i32 614, ptr null, ptr null }, align 1
@.str.63 = private unnamed_addr constant [15 x i8] c"\01c Free path:\0A\00", align 1
@kmem_dump_obj._entry_ptr.64 = internal global ptr @kmem_dump_obj._entry.62, section ".printk_index", align 4
@kmem_dump_obj._entry.65 = internal constant %struct.pi_entry { ptr @.str.60, ptr @.str.34, ptr @.str.27, i32 619, ptr null, ptr null }, align 1
@kmem_dump_obj._entry_ptr.66 = internal global ptr @kmem_dump_obj._entry.65, section ".printk_index", align 4
@__kstrtab_kmem_dump_obj = external dso_local constant [0 x i8], align 1
@__kstrtabns_kmem_dump_obj = external dso_local constant [0 x i8], align 1
@__ksymtab_kmem_dump_obj = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kmem_dump_obj to i32), ptr @__kstrtab_kmem_dump_obj, ptr @__kstrtabns_kmem_dump_obj }, section "___ksymtab_gpl+kmem_dump_obj", align 4
@.str.67 = private unnamed_addr constant [55 x i8] c"Creation of kmalloc slab %s size=%u failed. Reason %d\0A\00", align 1
@.str.68 = private unnamed_addr constant [37 x i8] c"Out of memory when creating slab %s\0A\00", align 1
@kmalloc_caches = dso_local global [4 x [14 x ptr]] zeroinitializer, section ".data..ro_after_init", align 4
@__kstrtab_kmalloc_caches = external dso_local constant [0 x i8], align 1
@__kstrtabns_kmalloc_caches = external dso_local constant [0 x i8], align 1
@__ksymtab_kmalloc_caches = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kmalloc_caches to i32), ptr @__kstrtab_kmalloc_caches, ptr @__kstrtabns_kmalloc_caches }, section "___ksymtab+kmalloc_caches", align 4
@size_index = internal unnamed_addr global [24 x i8] c"\03\04\05\05\06\06\06\06\01\01\01\01\07\07\07\07\02\02\02\02\02\02\02\02", section ".data..ro_after_init", align 1
@kmalloc_slab.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.69 = private unnamed_addr constant [10 x i8] c"kmalloc-0\00", align 1
@.str.70 = private unnamed_addr constant [13 x i8] c"kmalloc-cg-0\00", align 1
@.str.71 = private unnamed_addr constant [14 x i8] c"kmalloc-rcl-0\00", align 1
@.str.72 = private unnamed_addr constant [14 x i8] c"dma-kmalloc-0\00", align 1
@.str.73 = private unnamed_addr constant [11 x i8] c"kmalloc-96\00", align 1
@.str.74 = private unnamed_addr constant [14 x i8] c"kmalloc-cg-96\00", align 1
@.str.75 = private unnamed_addr constant [15 x i8] c"kmalloc-rcl-96\00", align 1
@.str.76 = private unnamed_addr constant [15 x i8] c"dma-kmalloc-96\00", align 1
@.str.77 = private unnamed_addr constant [12 x i8] c"kmalloc-192\00", align 1
@.str.78 = private unnamed_addr constant [15 x i8] c"kmalloc-cg-192\00", align 1
@.str.79 = private unnamed_addr constant [16 x i8] c"kmalloc-rcl-192\00", align 1
@.str.80 = private unnamed_addr constant [16 x i8] c"dma-kmalloc-192\00", align 1
@.str.81 = private unnamed_addr constant [10 x i8] c"kmalloc-8\00", align 1
@.str.82 = private unnamed_addr constant [13 x i8] c"kmalloc-cg-8\00", align 1
@.str.83 = private unnamed_addr constant [14 x i8] c"kmalloc-rcl-8\00", align 1
@.str.84 = private unnamed_addr constant [14 x i8] c"dma-kmalloc-8\00", align 1
@.str.85 = private unnamed_addr constant [11 x i8] c"kmalloc-16\00", align 1
@.str.86 = private unnamed_addr constant [14 x i8] c"kmalloc-cg-16\00", align 1
@.str.87 = private unnamed_addr constant [15 x i8] c"kmalloc-rcl-16\00", align 1
@.str.88 = private unnamed_addr constant [15 x i8] c"dma-kmalloc-16\00", align 1
@.str.89 = private unnamed_addr constant [11 x i8] c"kmalloc-32\00", align 1
@.str.90 = private unnamed_addr constant [14 x i8] c"kmalloc-cg-32\00", align 1
@.str.91 = private unnamed_addr constant [15 x i8] c"kmalloc-rcl-32\00", align 1
@.str.92 = private unnamed_addr constant [15 x i8] c"dma-kmalloc-32\00", align 1
@.str.93 = private unnamed_addr constant [11 x i8] c"kmalloc-64\00", align 1
@.str.94 = private unnamed_addr constant [14 x i8] c"kmalloc-cg-64\00", align 1
@.str.95 = private unnamed_addr constant [15 x i8] c"kmalloc-rcl-64\00", align 1
@.str.96 = private unnamed_addr constant [15 x i8] c"dma-kmalloc-64\00", align 1
@.str.97 = private unnamed_addr constant [12 x i8] c"kmalloc-128\00", align 1
@.str.98 = private unnamed_addr constant [15 x i8] c"kmalloc-cg-128\00", align 1
@.str.99 = private unnamed_addr constant [16 x i8] c"kmalloc-rcl-128\00", align 1
@.str.100 = private unnamed_addr constant [16 x i8] c"dma-kmalloc-128\00", align 1
@.str.101 = private unnamed_addr constant [12 x i8] c"kmalloc-256\00", align 1
@.str.102 = private unnamed_addr constant [15 x i8] c"kmalloc-cg-256\00", align 1
@.str.103 = private unnamed_addr constant [16 x i8] c"kmalloc-rcl-256\00", align 1
@.str.104 = private unnamed_addr constant [16 x i8] c"dma-kmalloc-256\00", align 1
@.str.105 = private unnamed_addr constant [12 x i8] c"kmalloc-512\00", align 1
@.str.106 = private unnamed_addr constant [15 x i8] c"kmalloc-cg-512\00", align 1
@.str.107 = private unnamed_addr constant [16 x i8] c"kmalloc-rcl-512\00", align 1
@.str.108 = private unnamed_addr constant [16 x i8] c"dma-kmalloc-512\00", align 1
@.str.109 = private unnamed_addr constant [11 x i8] c"kmalloc-1k\00", align 1
@.str.110 = private unnamed_addr constant [14 x i8] c"kmalloc-cg-1k\00", align 1
@.str.111 = private unnamed_addr constant [15 x i8] c"kmalloc-rcl-1k\00", align 1
@.str.112 = private unnamed_addr constant [15 x i8] c"dma-kmalloc-1k\00", align 1
@.str.113 = private unnamed_addr constant [11 x i8] c"kmalloc-2k\00", align 1
@.str.114 = private unnamed_addr constant [14 x i8] c"kmalloc-cg-2k\00", align 1
@.str.115 = private unnamed_addr constant [15 x i8] c"kmalloc-rcl-2k\00", align 1
@.str.116 = private unnamed_addr constant [15 x i8] c"dma-kmalloc-2k\00", align 1
@.str.117 = private unnamed_addr constant [11 x i8] c"kmalloc-4k\00", align 1
@.str.118 = private unnamed_addr constant [14 x i8] c"kmalloc-cg-4k\00", align 1
@.str.119 = private unnamed_addr constant [15 x i8] c"kmalloc-rcl-4k\00", align 1
@.str.120 = private unnamed_addr constant [15 x i8] c"dma-kmalloc-4k\00", align 1
@.str.121 = private unnamed_addr constant [11 x i8] c"kmalloc-8k\00", align 1
@.str.122 = private unnamed_addr constant [14 x i8] c"kmalloc-cg-8k\00", align 1
@.str.123 = private unnamed_addr constant [15 x i8] c"kmalloc-rcl-8k\00", align 1
@.str.124 = private unnamed_addr constant [15 x i8] c"dma-kmalloc-8k\00", align 1
@.str.125 = private unnamed_addr constant [12 x i8] c"kmalloc-16k\00", align 1
@.str.126 = private unnamed_addr constant [15 x i8] c"kmalloc-cg-16k\00", align 1
@.str.127 = private unnamed_addr constant [16 x i8] c"kmalloc-rcl-16k\00", align 1
@.str.128 = private unnamed_addr constant [16 x i8] c"dma-kmalloc-16k\00", align 1
@.str.129 = private unnamed_addr constant [12 x i8] c"kmalloc-32k\00", align 1
@.str.130 = private unnamed_addr constant [15 x i8] c"kmalloc-cg-32k\00", align 1
@.str.131 = private unnamed_addr constant [16 x i8] c"kmalloc-rcl-32k\00", align 1
@.str.132 = private unnamed_addr constant [16 x i8] c"dma-kmalloc-32k\00", align 1
@.str.133 = private unnamed_addr constant [12 x i8] c"kmalloc-64k\00", align 1
@.str.134 = private unnamed_addr constant [15 x i8] c"kmalloc-cg-64k\00", align 1
@.str.135 = private unnamed_addr constant [16 x i8] c"kmalloc-rcl-64k\00", align 1
@.str.136 = private unnamed_addr constant [16 x i8] c"dma-kmalloc-64k\00", align 1
@.str.137 = private unnamed_addr constant [13 x i8] c"kmalloc-128k\00", align 1
@.str.138 = private unnamed_addr constant [16 x i8] c"kmalloc-cg-128k\00", align 1
@.str.139 = private unnamed_addr constant [17 x i8] c"kmalloc-rcl-128k\00", align 1
@.str.140 = private unnamed_addr constant [17 x i8] c"dma-kmalloc-128k\00", align 1
@.str.141 = private unnamed_addr constant [13 x i8] c"kmalloc-256k\00", align 1
@.str.142 = private unnamed_addr constant [16 x i8] c"kmalloc-cg-256k\00", align 1
@.str.143 = private unnamed_addr constant [17 x i8] c"kmalloc-rcl-256k\00", align 1
@.str.144 = private unnamed_addr constant [17 x i8] c"dma-kmalloc-256k\00", align 1
@.str.145 = private unnamed_addr constant [13 x i8] c"kmalloc-512k\00", align 1
@.str.146 = private unnamed_addr constant [16 x i8] c"kmalloc-cg-512k\00", align 1
@.str.147 = private unnamed_addr constant [17 x i8] c"kmalloc-rcl-512k\00", align 1
@.str.148 = private unnamed_addr constant [17 x i8] c"dma-kmalloc-512k\00", align 1
@.str.149 = private unnamed_addr constant [11 x i8] c"kmalloc-1M\00", align 1
@.str.150 = private unnamed_addr constant [14 x i8] c"kmalloc-cg-1M\00", align 1
@.str.151 = private unnamed_addr constant [15 x i8] c"kmalloc-rcl-1M\00", align 1
@.str.152 = private unnamed_addr constant [15 x i8] c"dma-kmalloc-1M\00", align 1
@.str.153 = private unnamed_addr constant [11 x i8] c"kmalloc-2M\00", align 1
@.str.154 = private unnamed_addr constant [14 x i8] c"kmalloc-cg-2M\00", align 1
@.str.155 = private unnamed_addr constant [15 x i8] c"kmalloc-rcl-2M\00", align 1
@.str.156 = private unnamed_addr constant [15 x i8] c"dma-kmalloc-2M\00", align 1
@.str.157 = private unnamed_addr constant [11 x i8] c"kmalloc-4M\00", align 1
@.str.158 = private unnamed_addr constant [14 x i8] c"kmalloc-cg-4M\00", align 1
@.str.159 = private unnamed_addr constant [15 x i8] c"kmalloc-rcl-4M\00", align 1
@.str.160 = private unnamed_addr constant [15 x i8] c"dma-kmalloc-4M\00", align 1
@.str.161 = private unnamed_addr constant [11 x i8] c"kmalloc-8M\00", align 1
@.str.162 = private unnamed_addr constant [14 x i8] c"kmalloc-cg-8M\00", align 1
@.str.163 = private unnamed_addr constant [15 x i8] c"kmalloc-rcl-8M\00", align 1
@.str.164 = private unnamed_addr constant [15 x i8] c"dma-kmalloc-8M\00", align 1
@.str.165 = private unnamed_addr constant [12 x i8] c"kmalloc-16M\00", align 1
@.str.166 = private unnamed_addr constant [15 x i8] c"kmalloc-cg-16M\00", align 1
@.str.167 = private unnamed_addr constant [16 x i8] c"kmalloc-rcl-16M\00", align 1
@.str.168 = private unnamed_addr constant [16 x i8] c"dma-kmalloc-16M\00", align 1
@.str.169 = private unnamed_addr constant [12 x i8] c"kmalloc-32M\00", align 1
@.str.170 = private unnamed_addr constant [15 x i8] c"kmalloc-cg-32M\00", align 1
@.str.171 = private unnamed_addr constant [16 x i8] c"kmalloc-rcl-32M\00", align 1
@.str.172 = private unnamed_addr constant [16 x i8] c"dma-kmalloc-32M\00", align 1
@kmalloc_info = dso_local local_unnamed_addr constant [26 x %struct.kmalloc_info_struct] [%struct.kmalloc_info_struct { [4 x ptr] [ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72], i32 0 }, %struct.kmalloc_info_struct { [4 x ptr] [ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76], i32 96 }, %struct.kmalloc_info_struct { [4 x ptr] [ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80], i32 192 }, %struct.kmalloc_info_struct { [4 x ptr] [ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84], i32 8 }, %struct.kmalloc_info_struct { [4 x ptr] [ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88], i32 16 }, %struct.kmalloc_info_struct { [4 x ptr] [ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92], i32 32 }, %struct.kmalloc_info_struct { [4 x ptr] [ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96], i32 64 }, %struct.kmalloc_info_struct { [4 x ptr] [ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100], i32 128 }, %struct.kmalloc_info_struct { [4 x ptr] [ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104], i32 256 }, %struct.kmalloc_info_struct { [4 x ptr] [ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108], i32 512 }, %struct.kmalloc_info_struct { [4 x ptr] [ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112], i32 1024 }, %struct.kmalloc_info_struct { [4 x ptr] [ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116], i32 2048 }, %struct.kmalloc_info_struct { [4 x ptr] [ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120], i32 4096 }, %struct.kmalloc_info_struct { [4 x ptr] [ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124], i32 8192 }, %struct.kmalloc_info_struct { [4 x ptr] [ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128], i32 16384 }, %struct.kmalloc_info_struct { [4 x ptr] [ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132], i32 32768 }, %struct.kmalloc_info_struct { [4 x ptr] [ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136], i32 65536 }, %struct.kmalloc_info_struct { [4 x ptr] [ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140], i32 131072 }, %struct.kmalloc_info_struct { [4 x ptr] [ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144], i32 262144 }, %struct.kmalloc_info_struct { [4 x ptr] [ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148], i32 524288 }, %struct.kmalloc_info_struct { [4 x ptr] [ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152], i32 1048576 }, %struct.kmalloc_info_struct { [4 x ptr] [ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156], i32 2097152 }, %struct.kmalloc_info_struct { [4 x ptr] [ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160], i32 4194304 }, %struct.kmalloc_info_struct { [4 x ptr] [ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164], i32 8388608 }, %struct.kmalloc_info_struct { [4 x ptr] [ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168], i32 16777216 }, %struct.kmalloc_info_struct { [4 x ptr] [ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172], i32 33554432 }], section ".init.rodata", align 4
@kmalloc_fix_flags._entry = internal constant %struct.pi_entry { ptr @.str.173, ptr @.str.174, ptr @.str.27, i32 924, ptr null, ptr null }, align 1
@.str.173 = private unnamed_addr constant [76 x i8] c"\014Unexpected gfp: %#x (%pGg). Fixing up to gfp: %#x (%pGg). Fix your code!\0A\00", align 1
@.str.174 = private unnamed_addr constant [18 x i8] c"kmalloc_fix_flags\00", align 1
@kmalloc_fix_flags._entry_ptr = internal global ptr @kmalloc_fix_flags._entry, section ".printk_index", align 4
@__kstrtab_kmalloc_order = external dso_local constant [0 x i8], align 1
@__kstrtabns_kmalloc_order = external dso_local constant [0 x i8], align 1
@__ksymtab_kmalloc_order = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kmalloc_order to i32), ptr @__kstrtab_kmalloc_order, ptr @__kstrtabns_kmalloc_order }, section "___ksymtab+kmalloc_order", align 4
@__kstrtab_kmalloc_order_trace = external dso_local constant [0 x i8], align 1
@__kstrtabns_kmalloc_order_trace = external dso_local constant [0 x i8], align 1
@__ksymtab_kmalloc_order_trace = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kmalloc_order_trace to i32), ptr @__kstrtab_kmalloc_order_trace, ptr @__kstrtabns_kmalloc_order_trace }, section "___ksymtab+kmalloc_order_trace", align 4
@dump_unreclaimable_slab._entry = internal constant %struct.pi_entry { ptr @.str.175, ptr @.str.176, ptr @.str.27, i32 1100, ptr null, ptr null }, align 1
@.str.175 = private unnamed_addr constant [54 x i8] c"\014excessive unreclaimable slab but cannot dump stats\0A\00", align 1
@.str.176 = private unnamed_addr constant [24 x i8] c"dump_unreclaimable_slab\00", align 1
@dump_unreclaimable_slab._entry_ptr = internal global ptr @dump_unreclaimable_slab._entry, section ".printk_index", align 4
@dump_unreclaimable_slab._entry.177 = internal constant %struct.pi_entry { ptr @.str.178, ptr @.str.176, ptr @.str.27, i32 1104, ptr null, ptr null }, align 1
@.str.178 = private unnamed_addr constant [28 x i8] c"\016Unreclaimable slab info:\0A\00", align 1
@dump_unreclaimable_slab._entry_ptr.179 = internal global ptr @dump_unreclaimable_slab._entry.177, section ".printk_index", align 4
@dump_unreclaimable_slab._entry.180 = internal constant %struct.pi_entry { ptr @.str.181, ptr @.str.176, ptr @.str.27, i32 1105, ptr null, ptr null }, align 1
@.str.181 = private unnamed_addr constant [49 x i8] c"\016Name                      Used          Total\0A\00", align 1
@dump_unreclaimable_slab._entry_ptr.182 = internal global ptr @dump_unreclaimable_slab._entry.180, section ".printk_index", align 4
@dump_unreclaimable_slab._entry.183 = internal constant %struct.pi_entry { ptr @.str.184, ptr @.str.176, ptr @.str.27, i32 1116, ptr null, ptr null }, align 1
@.str.184 = private unnamed_addr constant [25 x i8] c"\016%-17s %10luKB %10luKB\0A\00", align 1
@dump_unreclaimable_slab._entry_ptr.185 = internal global ptr @dump_unreclaimable_slab._entry.183, section ".printk_index", align 4
@__initcall__kmod_slab_common__378_1160_slab_proc_init6 = internal global ptr @slab_proc_init, section ".initcall6.init", align 4
@__kstrtab_krealloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_krealloc = external dso_local constant [0 x i8], align 1
@__ksymtab_krealloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @krealloc to i32), ptr @__kstrtab_krealloc, ptr @__kstrtabns_krealloc }, section "___ksymtab+krealloc", align 4
@__kstrtab_kfree_sensitive = external dso_local constant [0 x i8], align 1
@__kstrtabns_kfree_sensitive = external dso_local constant [0 x i8], align 1
@__ksymtab_kfree_sensitive = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kfree_sensitive to i32), ptr @__kstrtab_kfree_sensitive, ptr @__kstrtabns_kfree_sensitive }, section "___ksymtab+kfree_sensitive", align 4
@__kstrtab_ksize = external dso_local constant [0 x i8], align 1
@__kstrtabns_ksize = external dso_local constant [0 x i8], align 1
@__ksymtab_ksize = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ksize to i32), ptr @__kstrtab_ksize, ptr @__kstrtabns_ksize }, section "___ksymtab+ksize", align 4
@__kstrtab___tracepoint_kmalloc = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_kmalloc = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_kmalloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_kmalloc to i32), ptr @__kstrtab___tracepoint_kmalloc, ptr @__kstrtabns___tracepoint_kmalloc }, section "___ksymtab+__tracepoint_kmalloc", align 4
@__kstrtab___traceiter_kmalloc = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_kmalloc = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_kmalloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_kmalloc to i32), ptr @__kstrtab___traceiter_kmalloc, ptr @__kstrtabns___traceiter_kmalloc }, section "___ksymtab+__traceiter_kmalloc", align 4
@__kstrtab___SCK__tp_func_kmalloc = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_kmalloc = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_kmalloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_kmalloc to i32), ptr @__kstrtab___SCK__tp_func_kmalloc, ptr @__kstrtabns___SCK__tp_func_kmalloc }, section "___ksymtab+__SCK__tp_func_kmalloc", align 4
@__kstrtab___tracepoint_kmem_cache_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_kmem_cache_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_kmem_cache_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_kmem_cache_alloc to i32), ptr @__kstrtab___tracepoint_kmem_cache_alloc, ptr @__kstrtabns___tracepoint_kmem_cache_alloc }, section "___ksymtab+__tracepoint_kmem_cache_alloc", align 4
@__kstrtab___traceiter_kmem_cache_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_kmem_cache_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_kmem_cache_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_kmem_cache_alloc to i32), ptr @__kstrtab___traceiter_kmem_cache_alloc, ptr @__kstrtabns___traceiter_kmem_cache_alloc }, section "___ksymtab+__traceiter_kmem_cache_alloc", align 4
@__kstrtab___SCK__tp_func_kmem_cache_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_kmem_cache_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_kmem_cache_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_kmem_cache_alloc to i32), ptr @__kstrtab___SCK__tp_func_kmem_cache_alloc, ptr @__kstrtabns___SCK__tp_func_kmem_cache_alloc }, section "___ksymtab+__SCK__tp_func_kmem_cache_alloc", align 4
@__kstrtab___tracepoint_kmalloc_node = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_kmalloc_node = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_kmalloc_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_kmalloc_node to i32), ptr @__kstrtab___tracepoint_kmalloc_node, ptr @__kstrtabns___tracepoint_kmalloc_node }, section "___ksymtab+__tracepoint_kmalloc_node", align 4
@__kstrtab___traceiter_kmalloc_node = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_kmalloc_node = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_kmalloc_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_kmalloc_node to i32), ptr @__kstrtab___traceiter_kmalloc_node, ptr @__kstrtabns___traceiter_kmalloc_node }, section "___ksymtab+__traceiter_kmalloc_node", align 4
@__kstrtab___SCK__tp_func_kmalloc_node = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_kmalloc_node = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_kmalloc_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_kmalloc_node to i32), ptr @__kstrtab___SCK__tp_func_kmalloc_node, ptr @__kstrtabns___SCK__tp_func_kmalloc_node }, section "___ksymtab+__SCK__tp_func_kmalloc_node", align 4
@__kstrtab___tracepoint_kmem_cache_alloc_node = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_kmem_cache_alloc_node = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_kmem_cache_alloc_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_kmem_cache_alloc_node to i32), ptr @__kstrtab___tracepoint_kmem_cache_alloc_node, ptr @__kstrtabns___tracepoint_kmem_cache_alloc_node }, section "___ksymtab+__tracepoint_kmem_cache_alloc_node", align 4
@__kstrtab___traceiter_kmem_cache_alloc_node = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_kmem_cache_alloc_node = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_kmem_cache_alloc_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_kmem_cache_alloc_node to i32), ptr @__kstrtab___traceiter_kmem_cache_alloc_node, ptr @__kstrtabns___traceiter_kmem_cache_alloc_node }, section "___ksymtab+__traceiter_kmem_cache_alloc_node", align 4
@__kstrtab___SCK__tp_func_kmem_cache_alloc_node = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_kmem_cache_alloc_node = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_kmem_cache_alloc_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_kmem_cache_alloc_node to i32), ptr @__kstrtab___SCK__tp_func_kmem_cache_alloc_node, ptr @__kstrtabns___SCK__tp_func_kmem_cache_alloc_node }, section "___ksymtab+__SCK__tp_func_kmem_cache_alloc_node", align 4
@__kstrtab___tracepoint_kfree = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_kfree = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_kfree = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_kfree to i32), ptr @__kstrtab___tracepoint_kfree, ptr @__kstrtabns___tracepoint_kfree }, section "___ksymtab+__tracepoint_kfree", align 4
@__kstrtab___traceiter_kfree = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_kfree = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_kfree = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_kfree to i32), ptr @__kstrtab___traceiter_kfree, ptr @__kstrtabns___traceiter_kfree }, section "___ksymtab+__traceiter_kfree", align 4
@__kstrtab___SCK__tp_func_kfree = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_kfree = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_kfree = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_kfree to i32), ptr @__kstrtab___SCK__tp_func_kfree, ptr @__kstrtabns___SCK__tp_func_kfree }, section "___ksymtab+__SCK__tp_func_kfree", align 4
@__kstrtab___tracepoint_kmem_cache_free = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_kmem_cache_free = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_kmem_cache_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_kmem_cache_free to i32), ptr @__kstrtab___tracepoint_kmem_cache_free, ptr @__kstrtabns___tracepoint_kmem_cache_free }, section "___ksymtab+__tracepoint_kmem_cache_free", align 4
@__kstrtab___traceiter_kmem_cache_free = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_kmem_cache_free = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_kmem_cache_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_kmem_cache_free to i32), ptr @__kstrtab___traceiter_kmem_cache_free, ptr @__kstrtabns___traceiter_kmem_cache_free }, section "___ksymtab+__traceiter_kmem_cache_free", align 4
@__kstrtab___SCK__tp_func_kmem_cache_free = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_kmem_cache_free = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_kmem_cache_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_kmem_cache_free to i32), ptr @__kstrtab___SCK__tp_func_kmem_cache_free, ptr @__kstrtabns___SCK__tp_func_kmem_cache_free }, section "___ksymtab+__SCK__tp_func_kmem_cache_free", align 4
@.str.186 = private unnamed_addr constant [14 x i8] c"unsigned long\00", align 1
@.str.187 = private unnamed_addr constant [10 x i8] c"call_site\00", align 1
@.str.188 = private unnamed_addr constant [13 x i8] c"const void *\00", align 1
@.str.189 = private unnamed_addr constant [4 x i8] c"ptr\00", align 1
@.str.190 = private unnamed_addr constant [7 x i8] c"size_t\00", align 1
@.str.191 = private unnamed_addr constant [10 x i8] c"bytes_req\00", align 1
@.str.192 = private unnamed_addr constant [12 x i8] c"bytes_alloc\00", align 1
@.str.193 = private unnamed_addr constant [6 x i8] c"gfp_t\00", align 1
@.str.194 = private unnamed_addr constant [10 x i8] c"gfp_flags\00", align 1
@.str.195 = private unnamed_addr constant [65 x i8] c"call_site=%pS ptr=%p bytes_req=%zu bytes_alloc=%zu gfp_flags=%s\0A\00", align 1
@trace_raw_output_kmem_alloc.__flags = internal constant [38 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 18621642, ptr @.str.196 }, %struct.trace_print_flags { i32 18620618, ptr @.str.197 }, %struct.trace_print_flags { i32 17829066, ptr @.str.198 }, %struct.trace_print_flags { i32 1051842, ptr @.str.199 }, %struct.trace_print_flags { i32 1051840, ptr @.str.200 }, %struct.trace_print_flags { i32 4197568, ptr @.str.201 }, %struct.trace_print_flags { i32 3264, ptr @.str.202 }, %struct.trace_print_flags { i32 3136, ptr @.str.203 }, %struct.trace_print_flags { i32 2592, ptr @.str.204 }, %struct.trace_print_flags { i32 3072, ptr @.str.205 }, %struct.trace_print_flags { i32 2048, ptr @.str.206 }, %struct.trace_print_flags { i32 1, ptr @.str.207 }, %struct.trace_print_flags { i32 2, ptr @.str.208 }, %struct.trace_print_flags { i32 4, ptr @.str.209 }, %struct.trace_print_flags { i32 32, ptr @.str.210 }, %struct.trace_print_flags { i32 512, ptr @.str.211 }, %struct.trace_print_flags { i32 64, ptr @.str.212 }, %struct.trace_print_flags { i32 128, ptr @.str.213 }, %struct.trace_print_flags { i32 8192, ptr @.str.214 }, %struct.trace_print_flags { i32 16384, ptr @.str.215 }, %struct.trace_print_flags { i32 32768, ptr @.str.216 }, %struct.trace_print_flags { i32 65536, ptr @.str.217 }, %struct.trace_print_flags { i32 262144, ptr @.str.218 }, %struct.trace_print_flags { i32 256, ptr @.str.219 }, %struct.trace_print_flags { i32 524288, ptr @.str.220 }, %struct.trace_print_flags { i32 131072, ptr @.str.221 }, %struct.trace_print_flags { i32 1048576, ptr @.str.222 }, %struct.trace_print_flags { i32 2097152, ptr @.str.223 }, %struct.trace_print_flags { i32 16, ptr @.str.224 }, %struct.trace_print_flags { i32 8, ptr @.str.225 }, %struct.trace_print_flags { i32 4194304, ptr @.str.226 }, %struct.trace_print_flags { i32 4096, ptr @.str.227 }, %struct.trace_print_flags { i32 3072, ptr @.str.228 }, %struct.trace_print_flags { i32 1024, ptr @.str.229 }, %struct.trace_print_flags { i32 2048, ptr @.str.230 }, %struct.trace_print_flags { i32 8388608, ptr @.str.231 }, %struct.trace_print_flags { i32 16777216, ptr @.str.232 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.196 = private unnamed_addr constant [14 x i8] c"GFP_TRANSHUGE\00", align 1
@.str.197 = private unnamed_addr constant [20 x i8] c"GFP_TRANSHUGE_LIGHT\00", align 1
@.str.198 = private unnamed_addr constant [21 x i8] c"GFP_HIGHUSER_MOVABLE\00", align 1
@.str.199 = private unnamed_addr constant [13 x i8] c"GFP_HIGHUSER\00", align 1
@.str.200 = private unnamed_addr constant [9 x i8] c"GFP_USER\00", align 1
@.str.201 = private unnamed_addr constant [19 x i8] c"GFP_KERNEL_ACCOUNT\00", align 1
@.str.202 = private unnamed_addr constant [11 x i8] c"GFP_KERNEL\00", align 1
@.str.203 = private unnamed_addr constant [9 x i8] c"GFP_NOFS\00", align 1
@.str.204 = private unnamed_addr constant [11 x i8] c"GFP_ATOMIC\00", align 1
@.str.205 = private unnamed_addr constant [9 x i8] c"GFP_NOIO\00", align 1
@.str.206 = private unnamed_addr constant [11 x i8] c"GFP_NOWAIT\00", align 1
@.str.207 = private unnamed_addr constant [8 x i8] c"GFP_DMA\00", align 1
@.str.208 = private unnamed_addr constant [14 x i8] c"__GFP_HIGHMEM\00", align 1
@.str.209 = private unnamed_addr constant [10 x i8] c"GFP_DMA32\00", align 1
@.str.210 = private unnamed_addr constant [11 x i8] c"__GFP_HIGH\00", align 1
@.str.211 = private unnamed_addr constant [13 x i8] c"__GFP_ATOMIC\00", align 1
@.str.212 = private unnamed_addr constant [9 x i8] c"__GFP_IO\00", align 1
@.str.213 = private unnamed_addr constant [9 x i8] c"__GFP_FS\00", align 1
@.str.214 = private unnamed_addr constant [13 x i8] c"__GFP_NOWARN\00", align 1
@.str.215 = private unnamed_addr constant [20 x i8] c"__GFP_RETRY_MAYFAIL\00", align 1
@.str.216 = private unnamed_addr constant [13 x i8] c"__GFP_NOFAIL\00", align 1
@.str.217 = private unnamed_addr constant [14 x i8] c"__GFP_NORETRY\00", align 1
@.str.218 = private unnamed_addr constant [11 x i8] c"__GFP_COMP\00", align 1
@.str.219 = private unnamed_addr constant [11 x i8] c"__GFP_ZERO\00", align 1
@.str.220 = private unnamed_addr constant [17 x i8] c"__GFP_NOMEMALLOC\00", align 1
@.str.221 = private unnamed_addr constant [15 x i8] c"__GFP_MEMALLOC\00", align 1
@.str.222 = private unnamed_addr constant [15 x i8] c"__GFP_HARDWALL\00", align 1
@.str.223 = private unnamed_addr constant [15 x i8] c"__GFP_THISNODE\00", align 1
@.str.224 = private unnamed_addr constant [18 x i8] c"__GFP_RECLAIMABLE\00", align 1
@.str.225 = private unnamed_addr constant [14 x i8] c"__GFP_MOVABLE\00", align 1
@.str.226 = private unnamed_addr constant [14 x i8] c"__GFP_ACCOUNT\00", align 1
@.str.227 = private unnamed_addr constant [12 x i8] c"__GFP_WRITE\00", align 1
@.str.228 = private unnamed_addr constant [14 x i8] c"__GFP_RECLAIM\00", align 1
@.str.229 = private unnamed_addr constant [21 x i8] c"__GFP_DIRECT_RECLAIM\00", align 1
@.str.230 = private unnamed_addr constant [21 x i8] c"__GFP_KSWAPD_RECLAIM\00", align 1
@.str.231 = private unnamed_addr constant [15 x i8] c"__GFP_ZEROTAGS\00", align 1
@.str.232 = private unnamed_addr constant [24 x i8] c"__GFP_SKIP_KASAN_POISON\00", align 1
@.str.233 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.234 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.235 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.236 = private unnamed_addr constant [5 x i8] c"node\00", align 1
@.str.237 = private unnamed_addr constant [73 x i8] c"call_site=%pS ptr=%p bytes_req=%zu bytes_alloc=%zu gfp_flags=%s node=%d\0A\00", align 1
@trace_raw_output_kmem_alloc_node.__flags = internal constant [38 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 18621642, ptr @.str.196 }, %struct.trace_print_flags { i32 18620618, ptr @.str.197 }, %struct.trace_print_flags { i32 17829066, ptr @.str.198 }, %struct.trace_print_flags { i32 1051842, ptr @.str.199 }, %struct.trace_print_flags { i32 1051840, ptr @.str.200 }, %struct.trace_print_flags { i32 4197568, ptr @.str.201 }, %struct.trace_print_flags { i32 3264, ptr @.str.202 }, %struct.trace_print_flags { i32 3136, ptr @.str.203 }, %struct.trace_print_flags { i32 2592, ptr @.str.204 }, %struct.trace_print_flags { i32 3072, ptr @.str.205 }, %struct.trace_print_flags { i32 2048, ptr @.str.206 }, %struct.trace_print_flags { i32 1, ptr @.str.207 }, %struct.trace_print_flags { i32 2, ptr @.str.208 }, %struct.trace_print_flags { i32 4, ptr @.str.209 }, %struct.trace_print_flags { i32 32, ptr @.str.210 }, %struct.trace_print_flags { i32 512, ptr @.str.211 }, %struct.trace_print_flags { i32 64, ptr @.str.212 }, %struct.trace_print_flags { i32 128, ptr @.str.213 }, %struct.trace_print_flags { i32 8192, ptr @.str.214 }, %struct.trace_print_flags { i32 16384, ptr @.str.215 }, %struct.trace_print_flags { i32 32768, ptr @.str.216 }, %struct.trace_print_flags { i32 65536, ptr @.str.217 }, %struct.trace_print_flags { i32 262144, ptr @.str.218 }, %struct.trace_print_flags { i32 256, ptr @.str.219 }, %struct.trace_print_flags { i32 524288, ptr @.str.220 }, %struct.trace_print_flags { i32 131072, ptr @.str.221 }, %struct.trace_print_flags { i32 1048576, ptr @.str.222 }, %struct.trace_print_flags { i32 2097152, ptr @.str.223 }, %struct.trace_print_flags { i32 16, ptr @.str.224 }, %struct.trace_print_flags { i32 8, ptr @.str.225 }, %struct.trace_print_flags { i32 4194304, ptr @.str.226 }, %struct.trace_print_flags { i32 4096, ptr @.str.227 }, %struct.trace_print_flags { i32 3072, ptr @.str.228 }, %struct.trace_print_flags { i32 1024, ptr @.str.229 }, %struct.trace_print_flags { i32 2048, ptr @.str.230 }, %struct.trace_print_flags { i32 8388608, ptr @.str.231 }, %struct.trace_print_flags { i32 16777216, ptr @.str.232 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.238 = private unnamed_addr constant [22 x i8] c"call_site=%pS ptr=%p\0A\00", align 1
@.str.239 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.240 = private unnamed_addr constant [18 x i8] c"__data_loc char[]\00", align 1
@.str.241 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.242 = private unnamed_addr constant [30 x i8] c"call_site=%pS ptr=%p name=%s\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.243 = private unnamed_addr constant [4 x i8] c"pfn\00", align 1
@.str.244 = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1
@.str.245 = private unnamed_addr constant [6 x i8] c"order\00", align 1
@.str.246 = private unnamed_addr constant [28 x i8] c"page=%p pfn=0x%lx order=%d\0A\00", align 1
@.str.247 = private unnamed_addr constant [27 x i8] c"page=%p pfn=0x%lx order=0\0A\00", align 1
@.str.248 = private unnamed_addr constant [12 x i8] c"migratetype\00", align 1
@.str.249 = private unnamed_addr constant [56 x i8] c"page=%p pfn=0x%lx order=%d migratetype=%d gfp_flags=%s\0A\00", align 1
@trace_raw_output_mm_page_alloc.__flags = internal constant [38 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 18621642, ptr @.str.196 }, %struct.trace_print_flags { i32 18620618, ptr @.str.197 }, %struct.trace_print_flags { i32 17829066, ptr @.str.198 }, %struct.trace_print_flags { i32 1051842, ptr @.str.199 }, %struct.trace_print_flags { i32 1051840, ptr @.str.200 }, %struct.trace_print_flags { i32 4197568, ptr @.str.201 }, %struct.trace_print_flags { i32 3264, ptr @.str.202 }, %struct.trace_print_flags { i32 3136, ptr @.str.203 }, %struct.trace_print_flags { i32 2592, ptr @.str.204 }, %struct.trace_print_flags { i32 3072, ptr @.str.205 }, %struct.trace_print_flags { i32 2048, ptr @.str.206 }, %struct.trace_print_flags { i32 1, ptr @.str.207 }, %struct.trace_print_flags { i32 2, ptr @.str.208 }, %struct.trace_print_flags { i32 4, ptr @.str.209 }, %struct.trace_print_flags { i32 32, ptr @.str.210 }, %struct.trace_print_flags { i32 512, ptr @.str.211 }, %struct.trace_print_flags { i32 64, ptr @.str.212 }, %struct.trace_print_flags { i32 128, ptr @.str.213 }, %struct.trace_print_flags { i32 8192, ptr @.str.214 }, %struct.trace_print_flags { i32 16384, ptr @.str.215 }, %struct.trace_print_flags { i32 32768, ptr @.str.216 }, %struct.trace_print_flags { i32 65536, ptr @.str.217 }, %struct.trace_print_flags { i32 262144, ptr @.str.218 }, %struct.trace_print_flags { i32 256, ptr @.str.219 }, %struct.trace_print_flags { i32 524288, ptr @.str.220 }, %struct.trace_print_flags { i32 131072, ptr @.str.221 }, %struct.trace_print_flags { i32 1048576, ptr @.str.222 }, %struct.trace_print_flags { i32 2097152, ptr @.str.223 }, %struct.trace_print_flags { i32 16, ptr @.str.224 }, %struct.trace_print_flags { i32 8, ptr @.str.225 }, %struct.trace_print_flags { i32 4194304, ptr @.str.226 }, %struct.trace_print_flags { i32 4096, ptr @.str.227 }, %struct.trace_print_flags { i32 3072, ptr @.str.228 }, %struct.trace_print_flags { i32 1024, ptr @.str.229 }, %struct.trace_print_flags { i32 2048, ptr @.str.230 }, %struct.trace_print_flags { i32 8388608, ptr @.str.231 }, %struct.trace_print_flags { i32 16777216, ptr @.str.232 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.250 = private unnamed_addr constant [60 x i8] c"page=%p pfn=0x%lx order=%u migratetype=%d percpu_refill=%d\0A\00", align 1
@.str.251 = private unnamed_addr constant [43 x i8] c"page=%p pfn=0x%lx order=%d migratetype=%d\0A\00", align 1
@.str.252 = private unnamed_addr constant [12 x i8] c"alloc_order\00", align 1
@.str.253 = private unnamed_addr constant [15 x i8] c"fallback_order\00", align 1
@.str.254 = private unnamed_addr constant [18 x i8] c"alloc_migratetype\00", align 1
@.str.255 = private unnamed_addr constant [21 x i8] c"fallback_migratetype\00", align 1
@.str.256 = private unnamed_addr constant [17 x i8] c"change_ownership\00", align 1
@.str.257 = private unnamed_addr constant [151 x i8] c"page=%p pfn=0x%lx alloc_order=%d fallback_order=%d pageblock_order=%d alloc_migratetype=%d fallback_migratetype=%d fragmenting=%d change_ownership=%d\0A\00", align 1
@.str.258 = private unnamed_addr constant [6 x i8] c"mm_id\00", align 1
@.str.259 = private unnamed_addr constant [5 x i8] c"curr\00", align 1
@.str.260 = private unnamed_addr constant [7 x i8] c"member\00", align 1
@.str.261 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.262 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.263 = private unnamed_addr constant [36 x i8] c"mm_id=%u curr=%d type=%s size=%ldB\0A\00", align 1
@trace_raw_output_rss_stat.symbols = internal constant [5 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.21 }, %struct.trace_print_flags { i32 1, ptr @.str.22 }, %struct.trace_print_flags { i32 2, ptr @.str.23 }, %struct.trace_print_flags { i32 3, ptr @.str.24 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@kmem_cache_sanity_check._entry = internal constant %struct.pi_entry { ptr @.str.264, ptr @.str.265, ptr @.str.27, i32 93, ptr null, ptr null }, align 1
@.str.264 = private unnamed_addr constant [48 x i8] c"\013kmem_cache_create(%s) integrity check failed\0A\00", align 1
@.str.265 = private unnamed_addr constant [24 x i8] c"kmem_cache_sanity_check\00", align 1
@kmem_cache_sanity_check._entry_ptr = internal global ptr @kmem_cache_sanity_check._entry, section ".printk_index", align 4
@slab_caches_to_rcu_destroy = internal global %struct.list_head { ptr @slab_caches_to_rcu_destroy, ptr @slab_caches_to_rcu_destroy }, align 4
@slab_caches_to_rcu_destroy_work = internal global %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @slab_caches_to_rcu_destroy_work, i64 4), ptr getelementptr (i8, ptr @slab_caches_to_rcu_destroy_work, i64 4) }, ptr @slab_caches_to_rcu_destroy_workfn, %struct.lockdep_map { ptr @slab_caches_to_rcu_destroy_work, [2 x ptr] zeroinitializer, ptr @.str.266, i8 0, i8 0, i8 0, i32 0, i32 0 } }, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.266 = private unnamed_addr constant [32 x i8] c"slab_caches_to_rcu_destroy_work\00", align 1
@.str.267 = private unnamed_addr constant [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", align 1
@.str.270 = private unnamed_addr constant [28 x i8] c"include/trace/events/kmem.h\00", align 1
@trace_kmalloc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.271 = private unnamed_addr constant [41 x i8] c"suspicious rcu_dereference_check() usage\00", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.272 = private unnamed_addr constant [24 x i8] c"include/linux/cpumask.h\00", align 1
@net_rand_noise = external dso_local global i32, section ".data..percpu", align 4
@.str.273 = private unnamed_addr constant [9 x i8] c"slabinfo\00", align 1
@slabinfo_proc_ops = internal constant %struct.proc_ops { i32 1, ptr @slabinfo_open, ptr @seq_read, ptr null, ptr @slabinfo_write, ptr @seq_lseek, ptr @seq_release, ptr null, ptr null, ptr null, ptr null }, align 4
@slabinfo_op = internal constant %struct.seq_operations { ptr @slab_start, ptr @slab_stop, ptr @slab_next, ptr @slab_show }, align 4
@.str.274 = private unnamed_addr constant [25 x i8] c"slabinfo - version: 2.1\0A\00", align 1
@.str.275 = private unnamed_addr constant [81 x i8] c"# name            <active_objs> <num_objs> <objsize> <objperslab> <pagesperslab>\00", align 1
@.str.276 = private unnamed_addr constant [48 x i8] c" : tunables <limit> <batchcount> <sharedfactor>\00", align 1
@.str.277 = private unnamed_addr constant [53 x i8] c" : slabdata <active_slabs> <num_slabs> <sharedavail>\00", align 1
@.str.278 = private unnamed_addr constant [28 x i8] c"%-17s %6lu %6lu %6u %4u %4d\00", align 1
@.str.279 = private unnamed_addr constant [24 x i8] c" : tunables %4u %4u %4u\00", align 1
@.str.280 = private unnamed_addr constant [27 x i8] c" : slabdata %6lu %6lu %6lu\00", align 1
@llvm.compiler.used = appending global [200 x ptr] [ptr @TRACE_SYSTEM_COMPACT_COMPLETE, ptr @TRACE_SYSTEM_COMPACT_CONTENDED, ptr @TRACE_SYSTEM_COMPACT_CONTINUE, ptr @TRACE_SYSTEM_COMPACT_DEFERRED, ptr @TRACE_SYSTEM_COMPACT_NOT_SUITABLE_ZONE, ptr @TRACE_SYSTEM_COMPACT_NO_SUITABLE_PAGE, ptr @TRACE_SYSTEM_COMPACT_PARTIAL_SKIPPED, ptr @TRACE_SYSTEM_COMPACT_PRIO_ASYNC, ptr @TRACE_SYSTEM_COMPACT_PRIO_SYNC_FULL, ptr @TRACE_SYSTEM_COMPACT_PRIO_SYNC_LIGHT, ptr @TRACE_SYSTEM_COMPACT_SKIPPED, ptr @TRACE_SYSTEM_COMPACT_SUCCESS, ptr @TRACE_SYSTEM_LRU_ACTIVE_ANON, ptr @TRACE_SYSTEM_LRU_ACTIVE_FILE, ptr @TRACE_SYSTEM_LRU_INACTIVE_ANON, ptr @TRACE_SYSTEM_LRU_INACTIVE_FILE, ptr @TRACE_SYSTEM_LRU_UNEVICTABLE, ptr @TRACE_SYSTEM_MM_ANONPAGES, ptr @TRACE_SYSTEM_MM_FILEPAGES, ptr @TRACE_SYSTEM_MM_SHMEMPAGES, ptr @TRACE_SYSTEM_MM_SWAPENTS, ptr @TRACE_SYSTEM_ZONE_DMA, ptr @TRACE_SYSTEM_ZONE_HIGHMEM, ptr @TRACE_SYSTEM_ZONE_MOVABLE, ptr @TRACE_SYSTEM_ZONE_NORMAL, ptr @__TRACE_SYSTEM_COMPACT_COMPLETE, ptr @__TRACE_SYSTEM_COMPACT_CONTENDED, ptr @__TRACE_SYSTEM_COMPACT_CONTINUE, ptr @__TRACE_SYSTEM_COMPACT_DEFERRED, ptr @__TRACE_SYSTEM_COMPACT_NOT_SUITABLE_ZONE, ptr @__TRACE_SYSTEM_COMPACT_NO_SUITABLE_PAGE, ptr @__TRACE_SYSTEM_COMPACT_PARTIAL_SKIPPED, ptr @__TRACE_SYSTEM_COMPACT_PRIO_ASYNC, ptr @__TRACE_SYSTEM_COMPACT_PRIO_SYNC_FULL, ptr @__TRACE_SYSTEM_COMPACT_PRIO_SYNC_LIGHT, ptr @__TRACE_SYSTEM_COMPACT_SKIPPED, ptr @__TRACE_SYSTEM_COMPACT_SUCCESS, ptr @__TRACE_SYSTEM_LRU_ACTIVE_ANON, ptr @__TRACE_SYSTEM_LRU_ACTIVE_FILE, ptr @__TRACE_SYSTEM_LRU_INACTIVE_ANON, ptr @__TRACE_SYSTEM_LRU_INACTIVE_FILE, ptr @__TRACE_SYSTEM_LRU_UNEVICTABLE, ptr @__TRACE_SYSTEM_MM_ANONPAGES, ptr @__TRACE_SYSTEM_MM_FILEPAGES, ptr @__TRACE_SYSTEM_MM_SHMEMPAGES, ptr @__TRACE_SYSTEM_MM_SWAPENTS, ptr @__TRACE_SYSTEM_ZONE_DMA, ptr @__TRACE_SYSTEM_ZONE_HIGHMEM, ptr @__TRACE_SYSTEM_ZONE_MOVABLE, ptr @__TRACE_SYSTEM_ZONE_NORMAL, ptr @__bpf_trace_tp_map_kfree, ptr @__bpf_trace_tp_map_kmalloc, ptr @__bpf_trace_tp_map_kmalloc_node, ptr @__bpf_trace_tp_map_kmem_cache_alloc, ptr @__bpf_trace_tp_map_kmem_cache_alloc_node, ptr @__bpf_trace_tp_map_kmem_cache_free, ptr @__bpf_trace_tp_map_mm_page_alloc, ptr @__bpf_trace_tp_map_mm_page_alloc_extfrag, ptr @__bpf_trace_tp_map_mm_page_alloc_zone_locked, ptr @__bpf_trace_tp_map_mm_page_free, ptr @__bpf_trace_tp_map_mm_page_free_batched, ptr @__bpf_trace_tp_map_mm_page_pcpu_drain, ptr @__bpf_trace_tp_map_rss_stat, ptr @__event_kfree, ptr @__event_kmalloc, ptr @__event_kmalloc_node, ptr @__event_kmem_cache_alloc, ptr @__event_kmem_cache_alloc_node, ptr @__event_kmem_cache_free, ptr @__event_mm_page_alloc, ptr @__event_mm_page_alloc_extfrag, ptr @__event_mm_page_alloc_zone_locked, ptr @__event_mm_page_free, ptr @__event_mm_page_free_batched, ptr @__event_mm_page_pcpu_drain, ptr @__event_rss_stat, ptr @__initcall__kmod_slab_common__378_1160_slab_proc_init6, ptr @__ksymtab___SCK__tp_func_kfree, ptr @__ksymtab___SCK__tp_func_kmalloc, ptr @__ksymtab___SCK__tp_func_kmalloc_node, ptr @__ksymtab___SCK__tp_func_kmem_cache_alloc, ptr @__ksymtab___SCK__tp_func_kmem_cache_alloc_node, ptr @__ksymtab___SCK__tp_func_kmem_cache_free, ptr @__ksymtab___traceiter_kfree, ptr @__ksymtab___traceiter_kmalloc, ptr @__ksymtab___traceiter_kmalloc_node, ptr @__ksymtab___traceiter_kmem_cache_alloc, ptr @__ksymtab___traceiter_kmem_cache_alloc_node, ptr @__ksymtab___traceiter_kmem_cache_free, ptr @__ksymtab___tracepoint_kfree, ptr @__ksymtab___tracepoint_kmalloc, ptr @__ksymtab___tracepoint_kmalloc_node, ptr @__ksymtab___tracepoint_kmem_cache_alloc, ptr @__ksymtab___tracepoint_kmem_cache_alloc_node, ptr @__ksymtab___tracepoint_kmem_cache_free, ptr @__ksymtab_kfree_sensitive, ptr @__ksymtab_kmalloc_caches, ptr @__ksymtab_kmalloc_order, ptr @__ksymtab_kmalloc_order_trace, ptr @__ksymtab_kmem_cache_create, ptr @__ksymtab_kmem_cache_create_usercopy, ptr @__ksymtab_kmem_cache_destroy, ptr @__ksymtab_kmem_cache_shrink, ptr @__ksymtab_kmem_cache_size, ptr @__ksymtab_kmem_dump_obj, ptr @__ksymtab_kmem_valid_obj, ptr @__ksymtab_krealloc, ptr @__ksymtab_ksize, ptr @__setup_setup_slab_merge, ptr @__setup_setup_slab_nomerge, ptr @__setup_slub_merge, ptr @__setup_slub_nomerge, ptr @__tracepoint_kfree, ptr @__tracepoint_kmalloc, ptr @__tracepoint_kmalloc_node, ptr @__tracepoint_kmem_cache_alloc, ptr @__tracepoint_kmem_cache_alloc_node, ptr @__tracepoint_kmem_cache_free, ptr @__tracepoint_mm_page_alloc, ptr @__tracepoint_mm_page_alloc_extfrag, ptr @__tracepoint_mm_page_alloc_zone_locked, ptr @__tracepoint_mm_page_free, ptr @__tracepoint_mm_page_free_batched, ptr @__tracepoint_mm_page_pcpu_drain, ptr @__tracepoint_ptr_kfree, ptr @__tracepoint_ptr_kmalloc, ptr @__tracepoint_ptr_kmalloc_node, ptr @__tracepoint_ptr_kmem_cache_alloc, ptr @__tracepoint_ptr_kmem_cache_alloc_node, ptr @__tracepoint_ptr_kmem_cache_free, ptr @__tracepoint_ptr_mm_page_alloc, ptr @__tracepoint_ptr_mm_page_alloc_extfrag, ptr @__tracepoint_ptr_mm_page_alloc_zone_locked, ptr @__tracepoint_ptr_mm_page_free, ptr @__tracepoint_ptr_mm_page_free_batched, ptr @__tracepoint_ptr_mm_page_pcpu_drain, ptr @__tracepoint_ptr_rss_stat, ptr @__tracepoint_rss_stat, ptr @dump_unreclaimable_slab._entry, ptr @dump_unreclaimable_slab._entry.177, ptr @dump_unreclaimable_slab._entry.180, ptr @dump_unreclaimable_slab._entry.183, ptr @dump_unreclaimable_slab._entry_ptr, ptr @dump_unreclaimable_slab._entry_ptr.179, ptr @dump_unreclaimable_slab._entry_ptr.182, ptr @dump_unreclaimable_slab._entry_ptr.185, ptr @event_class_kfree, ptr @event_class_kmem_alloc, ptr @event_class_kmem_alloc_node, ptr @event_class_kmem_cache_free, ptr @event_class_mm_page, ptr @event_class_mm_page_alloc, ptr @event_class_mm_page_alloc_extfrag, ptr @event_class_mm_page_free, ptr @event_class_mm_page_free_batched, ptr @event_class_mm_page_pcpu_drain, ptr @event_class_rss_stat, ptr @event_kfree, ptr @event_kmalloc, ptr @event_kmalloc_node, ptr @event_kmem_cache_alloc, ptr @event_kmem_cache_alloc_node, ptr @event_kmem_cache_free, ptr @event_mm_page_alloc, ptr @event_mm_page_alloc_extfrag, ptr @event_mm_page_alloc_zone_locked, ptr @event_mm_page_free, ptr @event_mm_page_free_batched, ptr @event_mm_page_pcpu_drain, ptr @event_rss_stat, ptr @kmalloc_fix_flags._entry, ptr @kmalloc_fix_flags._entry_ptr, ptr @kmem_cache_create_usercopy._entry, ptr @kmem_cache_create_usercopy._entry_ptr, ptr @kmem_cache_sanity_check._entry, ptr @kmem_cache_sanity_check._entry_ptr, ptr @kmem_dump_obj._entry, ptr @kmem_dump_obj._entry.35, ptr @kmem_dump_obj._entry.38, ptr @kmem_dump_obj._entry.41, ptr @kmem_dump_obj._entry.44, ptr @kmem_dump_obj._entry.47, ptr @kmem_dump_obj._entry.50, ptr @kmem_dump_obj._entry.53, ptr @kmem_dump_obj._entry.56, ptr @kmem_dump_obj._entry.59, ptr @kmem_dump_obj._entry.62, ptr @kmem_dump_obj._entry.65, ptr @kmem_dump_obj._entry_ptr, ptr @kmem_dump_obj._entry_ptr.37, ptr @kmem_dump_obj._entry_ptr.40, ptr @kmem_dump_obj._entry_ptr.43, ptr @kmem_dump_obj._entry_ptr.46, ptr @kmem_dump_obj._entry_ptr.49, ptr @kmem_dump_obj._entry_ptr.52, ptr @kmem_dump_obj._entry_ptr.55, ptr @kmem_dump_obj._entry_ptr.58, ptr @kmem_dump_obj._entry_ptr.61, ptr @kmem_dump_obj._entry_ptr.64, ptr @kmem_dump_obj._entry_ptr.66], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_kmalloc(ptr nocapture readnone %__data, i32 noundef %call_site, ptr noundef %ptr, i32 noundef %bytes_req, i32 noundef %bytes_alloc, i32 noundef %gfp_flags) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_kmalloc, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %do.body2

do.body2:                                         ; preds = %do.body2, %entry
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2 ], [ %0, %entry ]
  %1 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %2 = load ptr, ptr %data, align 4
  tail call void %1(ptr noundef %2, i32 noundef %call_site, ptr noundef %ptr, i32 noundef %bytes_req, i32 noundef %bytes_alloc, i32 noundef %gfp_flags) #19
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %3 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %3, null
  br i1 %tobool9.not, label %if.end, label %do.body2

if.end:                                           ; preds = %do.body2, %entry
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_kmem_cache_alloc(ptr nocapture readnone %__data, i32 noundef %call_site, ptr noundef %ptr, i32 noundef %bytes_req, i32 noundef %bytes_alloc, i32 noundef %gfp_flags) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_kmem_cache_alloc, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %do.body2

do.body2:                                         ; preds = %do.body2, %entry
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2 ], [ %0, %entry ]
  %1 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %2 = load ptr, ptr %data, align 4
  tail call void %1(ptr noundef %2, i32 noundef %call_site, ptr noundef %ptr, i32 noundef %bytes_req, i32 noundef %bytes_alloc, i32 noundef %gfp_flags) #19
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %3 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %3, null
  br i1 %tobool9.not, label %if.end, label %do.body2

if.end:                                           ; preds = %do.body2, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_kmalloc_node(ptr nocapture readnone %__data, i32 noundef %call_site, ptr noundef %ptr, i32 noundef %bytes_req, i32 noundef %bytes_alloc, i32 noundef %gfp_flags, i32 noundef %node) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_kmalloc_node, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %do.body2

do.body2:                                         ; preds = %do.body2, %entry
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2 ], [ %0, %entry ]
  %1 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %2 = load ptr, ptr %data, align 4
  tail call void %1(ptr noundef %2, i32 noundef %call_site, ptr noundef %ptr, i32 noundef %bytes_req, i32 noundef %bytes_alloc, i32 noundef %gfp_flags, i32 noundef %node) #19
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %3 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %3, null
  br i1 %tobool9.not, label %if.end, label %do.body2

if.end:                                           ; preds = %do.body2, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_kmem_cache_alloc_node(ptr nocapture readnone %__data, i32 noundef %call_site, ptr noundef %ptr, i32 noundef %bytes_req, i32 noundef %bytes_alloc, i32 noundef %gfp_flags, i32 noundef %node) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_kmem_cache_alloc_node, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %do.body2

do.body2:                                         ; preds = %do.body2, %entry
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2 ], [ %0, %entry ]
  %1 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %2 = load ptr, ptr %data, align 4
  tail call void %1(ptr noundef %2, i32 noundef %call_site, ptr noundef %ptr, i32 noundef %bytes_req, i32 noundef %bytes_alloc, i32 noundef %gfp_flags, i32 noundef %node) #19
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %3 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %3, null
  br i1 %tobool9.not, label %if.end, label %do.body2

if.end:                                           ; preds = %do.body2, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_kfree(ptr nocapture readnone %__data, i32 noundef %call_site, ptr noundef %ptr) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_kfree, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %do.body2

do.body2:                                         ; preds = %do.body2, %entry
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2 ], [ %0, %entry ]
  %1 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %2 = load ptr, ptr %data, align 4
  tail call void %1(ptr noundef %2, i32 noundef %call_site, ptr noundef %ptr) #19
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %3 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %3, null
  br i1 %tobool9.not, label %if.end, label %do.body2

if.end:                                           ; preds = %do.body2, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_kmem_cache_free(ptr nocapture readnone %__data, i32 noundef %call_site, ptr noundef %ptr, ptr noundef %name) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_kmem_cache_free, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %do.body2

do.body2:                                         ; preds = %do.body2, %entry
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2 ], [ %0, %entry ]
  %1 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %2 = load ptr, ptr %data, align 4
  tail call void %1(ptr noundef %2, i32 noundef %call_site, ptr noundef %ptr, ptr noundef %name) #19
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %3 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %3, null
  br i1 %tobool9.not, label %if.end, label %do.body2

if.end:                                           ; preds = %do.body2, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mm_page_free(ptr nocapture readnone %__data, ptr noundef %page, i32 noundef %order) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mm_page_free, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %do.body2

do.body2:                                         ; preds = %do.body2, %entry
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2 ], [ %0, %entry ]
  %1 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %2 = load ptr, ptr %data, align 4
  tail call void %1(ptr noundef %2, ptr noundef %page, i32 noundef %order) #19
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %3 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %3, null
  br i1 %tobool9.not, label %if.end, label %do.body2

if.end:                                           ; preds = %do.body2, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mm_page_free_batched(ptr nocapture readnone %__data, ptr noundef %page) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mm_page_free_batched, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %do.body2

do.body2:                                         ; preds = %do.body2, %entry
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2 ], [ %0, %entry ]
  %1 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %2 = load ptr, ptr %data, align 4
  tail call void %1(ptr noundef %2, ptr noundef %page) #19
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %3 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %3, null
  br i1 %tobool9.not, label %if.end, label %do.body2

if.end:                                           ; preds = %do.body2, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mm_page_alloc(ptr nocapture readnone %__data, ptr noundef %page, i32 noundef %order, i32 noundef %gfp_flags, i32 noundef %migratetype) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mm_page_alloc, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %do.body2

do.body2:                                         ; preds = %do.body2, %entry
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2 ], [ %0, %entry ]
  %1 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %2 = load ptr, ptr %data, align 4
  tail call void %1(ptr noundef %2, ptr noundef %page, i32 noundef %order, i32 noundef %gfp_flags, i32 noundef %migratetype) #19
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %3 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %3, null
  br i1 %tobool9.not, label %if.end, label %do.body2

if.end:                                           ; preds = %do.body2, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mm_page_alloc_zone_locked(ptr nocapture readnone %__data, ptr noundef %page, i32 noundef %order, i32 noundef %migratetype) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mm_page_alloc_zone_locked, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %do.body2

do.body2:                                         ; preds = %do.body2, %entry
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2 ], [ %0, %entry ]
  %1 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %2 = load ptr, ptr %data, align 4
  tail call void %1(ptr noundef %2, ptr noundef %page, i32 noundef %order, i32 noundef %migratetype) #19
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %3 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %3, null
  br i1 %tobool9.not, label %if.end, label %do.body2

if.end:                                           ; preds = %do.body2, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mm_page_pcpu_drain(ptr nocapture readnone %__data, ptr noundef %page, i32 noundef %order, i32 noundef %migratetype) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mm_page_pcpu_drain, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %do.body2

do.body2:                                         ; preds = %do.body2, %entry
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2 ], [ %0, %entry ]
  %1 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %2 = load ptr, ptr %data, align 4
  tail call void %1(ptr noundef %2, ptr noundef %page, i32 noundef %order, i32 noundef %migratetype) #19
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %3 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %3, null
  br i1 %tobool9.not, label %if.end, label %do.body2

if.end:                                           ; preds = %do.body2, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mm_page_alloc_extfrag(ptr nocapture readnone %__data, ptr noundef %page, i32 noundef %alloc_order, i32 noundef %fallback_order, i32 noundef %alloc_migratetype, i32 noundef %fallback_migratetype) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mm_page_alloc_extfrag, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %do.body2

do.body2:                                         ; preds = %do.body2, %entry
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2 ], [ %0, %entry ]
  %1 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %2 = load ptr, ptr %data, align 4
  tail call void %1(ptr noundef %2, ptr noundef %page, i32 noundef %alloc_order, i32 noundef %fallback_order, i32 noundef %alloc_migratetype, i32 noundef %fallback_migratetype) #19
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %3 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %3, null
  br i1 %tobool9.not, label %if.end, label %do.body2

if.end:                                           ; preds = %do.body2, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rss_stat(ptr nocapture readnone %__data, ptr noundef %mm, i32 noundef %member, i32 noundef %count) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rss_stat, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %do.body2

do.body2:                                         ; preds = %do.body2, %entry
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2 ], [ %0, %entry ]
  %1 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %2 = load ptr, ptr %data, align 4
  tail call void %1(ptr noundef %2, ptr noundef %mm, i32 noundef %member, i32 noundef %count) #19
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %3 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %3, null
  br i1 %tobool9.not, label %if.end, label %do.body2

if.end:                                           ; preds = %do.body2, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_kmem_alloc(ptr noundef %__data, i32 noundef %call_site, ptr noundef %ptr, i32 noundef %bytes_req, i32 noundef %bytes_alloc, i32 noundef %gfp_flags) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #18
  store ptr inttoptr (i32 -1 to ptr), ptr %fbuffer, align 4, !annotation !10
  %0 = getelementptr inbounds %struct.trace_event_buffer, ptr %fbuffer, i32 0, i32 1
  store ptr inttoptr (i32 -1 to ptr), ptr %0, align 4, !annotation !10
  %1 = getelementptr inbounds %struct.trace_event_buffer, ptr %fbuffer, i32 0, i32 2
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !10
  %2 = getelementptr inbounds %struct.trace_event_buffer, ptr %fbuffer, i32 0, i32 3
  store ptr inttoptr (i32 -1 to ptr), ptr %2, align 4, !annotation !10
  %3 = getelementptr inbounds %struct.trace_event_buffer, ptr %fbuffer, i32 0, i32 4
  store i32 -1, ptr %3, align 4, !annotation !10
  %4 = getelementptr inbounds %struct.trace_event_buffer, ptr %fbuffer, i32 0, i32 5
  store ptr inttoptr (i32 -1 to ptr), ptr %4, align 4, !annotation !10
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %5 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %5, 704
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end, label %if.end.i, !prof !11

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %5, 256
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end, !prof !12

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #19
  br i1 %call.i, label %cleanup, label %if.end

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit, %if.end.i, %entry
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 28) #19
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %call_site6 = getelementptr inbounds %struct.trace_event_raw_kmem_alloc, ptr %call3, i32 0, i32 1
  store i32 %call_site, ptr %call_site6, align 4
  %ptr7 = getelementptr inbounds %struct.trace_event_raw_kmem_alloc, ptr %call3, i32 0, i32 2
  store ptr %ptr, ptr %ptr7, align 4
  %bytes_req8 = getelementptr inbounds %struct.trace_event_raw_kmem_alloc, ptr %call3, i32 0, i32 3
  store i32 %bytes_req, ptr %bytes_req8, align 4
  %bytes_alloc9 = getelementptr inbounds %struct.trace_event_raw_kmem_alloc, ptr %call3, i32 0, i32 4
  store i32 %bytes_alloc, ptr %bytes_alloc9, align 4
  %gfp_flags10 = getelementptr inbounds %struct.trace_event_raw_kmem_alloc, ptr %call3, i32 0, i32 5
  store i32 %gfp_flags, ptr %gfp_flags10, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end, %trace_trigger_soft_disabled.exit
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_kmem_alloc(ptr noundef %__data, i32 noundef %call_site, ptr noundef %ptr, i32 noundef %bytes_req, i32 noundef %bytes_alloc, i32 noundef %gfp_flags) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #18
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #18
  store i32 -1, ptr %rctx, align 4, !annotation !10
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %0 = load ptr, ptr %perf_events, align 4
  %1 = ptrtoint ptr %0 to i32
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %4
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, %1
  %6 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %7 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %7, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %if.end

land.lhs.true7:                                   ; preds = %entry
  %8 = load volatile ptr, ptr %6, align 4
  %tobool.not.i.not = icmp eq ptr %8, null
  br i1 %tobool.not.i.not, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true7, %entry
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #19
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %cleanup, label %if.end16

if.end16:                                         ; preds = %if.end
  %9 = load ptr, ptr %__regs, align 4
  %10 = call ptr @llvm.returnaddress(i32 0) #18
  %11 = ptrtoint ptr %10 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %9, i32 0, i32 15
  store i32 %11, ptr %arrayidx.i, align 4
  %12 = call ptr @llvm.frameaddress.p0(i32 0) #18
  %13 = ptrtoint ptr %12 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %9, i32 0, i32 11
  store i32 %13, ptr %arrayidx2.i, align 4
  %14 = call i32 @llvm.read_register.i32(metadata !0) #18
  %arrayidx4.i = getelementptr [18 x i32], ptr %9, i32 0, i32 13
  store i32 %14, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %9, i32 0, i32 16
  store i32 19, ptr %arrayidx6.i, align 4
  %call_site17 = getelementptr inbounds %struct.trace_event_raw_kmem_alloc, ptr %call13, i32 0, i32 1
  store i32 %call_site, ptr %call_site17, align 4
  %ptr18 = getelementptr inbounds %struct.trace_event_raw_kmem_alloc, ptr %call13, i32 0, i32 2
  store ptr %ptr, ptr %ptr18, align 4
  %bytes_req19 = getelementptr inbounds %struct.trace_event_raw_kmem_alloc, ptr %call13, i32 0, i32 3
  store i32 %bytes_req, ptr %bytes_req19, align 4
  %bytes_alloc20 = getelementptr inbounds %struct.trace_event_raw_kmem_alloc, ptr %call13, i32 0, i32 4
  store i32 %bytes_alloc, ptr %bytes_alloc20, align 4
  %gfp_flags21 = getelementptr inbounds %struct.trace_event_raw_kmem_alloc, ptr %call13, i32 0, i32 5
  store i32 %gfp_flags, ptr %gfp_flags21, align 4
  %15 = load i32, ptr %rctx, align 4
  %16 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %15, ptr noundef %__data, i64 noundef 1, ptr noundef %16, ptr noundef %6, ptr noundef null) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end, %land.lhs.true7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_kmem_alloc_node(ptr noundef %__data, i32 noundef %call_site, ptr noundef %ptr, i32 noundef %bytes_req, i32 noundef %bytes_alloc, i32 noundef %gfp_flags, i32 noundef %node) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #18
  store ptr inttoptr (i32 -1 to ptr), ptr %fbuffer, align 4, !annotation !10
  %0 = getelementptr inbounds %struct.trace_event_buffer, ptr %fbuffer, i32 0, i32 1
  store ptr inttoptr (i32 -1 to ptr), ptr %0, align 4, !annotation !10
  %1 = getelementptr inbounds %struct.trace_event_buffer, ptr %fbuffer, i32 0, i32 2
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !10
  %2 = getelementptr inbounds %struct.trace_event_buffer, ptr %fbuffer, i32 0, i32 3
  store ptr inttoptr (i32 -1 to ptr), ptr %2, align 4, !annotation !10
  %3 = getelementptr inbounds %struct.trace_event_buffer, ptr %fbuffer, i32 0, i32 4
  store i32 -1, ptr %3, align 4, !annotation !10
  %4 = getelementptr inbounds %struct.trace_event_buffer, ptr %fbuffer, i32 0, i32 5
  store ptr inttoptr (i32 -1 to ptr), ptr %4, align 4, !annotation !10
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %5 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %5, 704
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end, label %if.end.i, !prof !11

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %5, 256
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end, !prof !12

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #19
  br i1 %call.i, label %cleanup, label %if.end

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit, %if.end.i, %entry
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 32) #19
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %call_site6 = getelementptr inbounds %struct.trace_event_raw_kmem_alloc_node, ptr %call3, i32 0, i32 1
  store i32 %call_site, ptr %call_site6, align 4
  %ptr7 = getelementptr inbounds %struct.trace_event_raw_kmem_alloc_node, ptr %call3, i32 0, i32 2
  store ptr %ptr, ptr %ptr7, align 4
  %bytes_req8 = getelementptr inbounds %struct.trace_event_raw_kmem_alloc_node, ptr %call3, i32 0, i32 3
  store i32 %bytes_req, ptr %bytes_req8, align 4
  %bytes_alloc9 = getelementptr inbounds %struct.trace_event_raw_kmem_alloc_node, ptr %call3, i32 0, i32 4
  store i32 %bytes_alloc, ptr %bytes_alloc9, align 4
  %gfp_flags10 = getelementptr inbounds %struct.trace_event_raw_kmem_alloc_node, ptr %call3, i32 0, i32 5
  store i32 %gfp_flags, ptr %gfp_flags10, align 4
  %node11 = getelementptr inbounds %struct.trace_event_raw_kmem_alloc_node, ptr %call3, i32 0, i32 6
  store i32 %node, ptr %node11, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end, %trace_trigger_soft_disabled.exit
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_kmem_alloc_node(ptr noundef %__data, i32 noundef %call_site, ptr noundef %ptr, i32 noundef %bytes_req, i32 noundef %bytes_alloc, i32 noundef %gfp_flags, i32 noundef %node) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #18
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #18
  store i32 -1, ptr %rctx, align 4, !annotation !10
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %0 = load ptr, ptr %perf_events, align 4
  %1 = ptrtoint ptr %0 to i32
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %4
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, %1
  %6 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %7 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %7, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %if.end

land.lhs.true7:                                   ; preds = %entry
  %8 = load volatile ptr, ptr %6, align 4
  %tobool.not.i.not = icmp eq ptr %8, null
  br i1 %tobool.not.i.not, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true7, %entry
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #19
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %cleanup, label %if.end16

if.end16:                                         ; preds = %if.end
  %9 = load ptr, ptr %__regs, align 4
  %10 = call ptr @llvm.returnaddress(i32 0) #18
  %11 = ptrtoint ptr %10 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %9, i32 0, i32 15
  store i32 %11, ptr %arrayidx.i, align 4
  %12 = call ptr @llvm.frameaddress.p0(i32 0) #18
  %13 = ptrtoint ptr %12 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %9, i32 0, i32 11
  store i32 %13, ptr %arrayidx2.i, align 4
  %14 = call i32 @llvm.read_register.i32(metadata !0) #18
  %arrayidx4.i = getelementptr [18 x i32], ptr %9, i32 0, i32 13
  store i32 %14, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %9, i32 0, i32 16
  store i32 19, ptr %arrayidx6.i, align 4
  %call_site17 = getelementptr inbounds %struct.trace_event_raw_kmem_alloc_node, ptr %call13, i32 0, i32 1
  store i32 %call_site, ptr %call_site17, align 4
  %ptr18 = getelementptr inbounds %struct.trace_event_raw_kmem_alloc_node, ptr %call13, i32 0, i32 2
  store ptr %ptr, ptr %ptr18, align 4
  %bytes_req19 = getelementptr inbounds %struct.trace_event_raw_kmem_alloc_node, ptr %call13, i32 0, i32 3
  store i32 %bytes_req, ptr %bytes_req19, align 4
  %bytes_alloc20 = getelementptr inbounds %struct.trace_event_raw_kmem_alloc_node, ptr %call13, i32 0, i32 4
  store i32 %bytes_alloc, ptr %bytes_alloc20, align 4
  %gfp_flags21 = getelementptr inbounds %struct.trace_event_raw_kmem_alloc_node, ptr %call13, i32 0, i32 5
  store i32 %gfp_flags, ptr %gfp_flags21, align 4
  %node22 = getelementptr inbounds %struct.trace_event_raw_kmem_alloc_node, ptr %call13, i32 0, i32 6
  store i32 %node, ptr %node22, align 4
  %15 = load i32, ptr %rctx, align 4
  %16 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 36, i32 noundef %15, ptr noundef %__data, i64 noundef 1, ptr noundef %16, ptr noundef %6, ptr noundef null) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end, %land.lhs.true7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_kfree(ptr noundef %__data, i32 noundef %call_site, ptr noundef %ptr) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #18
  store ptr inttoptr (i32 -1 to ptr), ptr %fbuffer, align 4, !annotation !10
  %0 = getelementptr inbounds %struct.trace_event_buffer, ptr %fbuffer, i32 0, i32 1
  store ptr inttoptr (i32 -1 to ptr), ptr %0, align 4, !annotation !10
  %1 = getelementptr inbounds %struct.trace_event_buffer, ptr %fbuffer, i32 0, i32 2
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !10
  %2 = getelementptr inbounds %struct.trace_event_buffer, ptr %fbuffer, i32 0, i32 3
  store ptr inttoptr (i32 -1 to ptr), ptr %2, align 4, !annotation !10
  %3 = getelementptr inbounds %struct.trace_event_buffer, ptr %fbuffer, i32 0, i32 4
  store i32 -1, ptr %3, align 4, !annotation !10
  %4 = getelementptr inbounds %struct.trace_event_buffer, ptr %fbuffer, i32 0, i32 5
  store ptr inttoptr (i32 -1 to ptr), ptr %4, align 4, !annotation !10
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %5 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %5, 704
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end, label %if.end.i, !prof !11

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %5, 256
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end, !prof !12

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #19
  br i1 %call.i, label %cleanup, label %if.end

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit, %if.end.i, %entry
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 16) #19
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %call_site6 = getelementptr inbounds %struct.trace_event_raw_kfree, ptr %call3, i32 0, i32 1
  store i32 %call_site, ptr %call_site6, align 4
  %ptr7 = getelementptr inbounds %struct.trace_event_raw_kfree, ptr %call3, i32 0, i32 2
  store ptr %ptr, ptr %ptr7, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end, %trace_trigger_soft_disabled.exit
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_kfree(ptr noundef %__data, i32 noundef %call_site, ptr noundef %ptr) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #18
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #18
  store i32 -1, ptr %rctx, align 4, !annotation !10
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %0 = load ptr, ptr %perf_events, align 4
  %1 = ptrtoint ptr %0 to i32
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %4
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, %1
  %6 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %7 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %7, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %if.end

land.lhs.true7:                                   ; preds = %entry
  %8 = load volatile ptr, ptr %6, align 4
  %tobool.not.i.not = icmp eq ptr %8, null
  br i1 %tobool.not.i.not, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true7, %entry
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #19
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %cleanup, label %if.end16

if.end16:                                         ; preds = %if.end
  %9 = load ptr, ptr %__regs, align 4
  %10 = call ptr @llvm.returnaddress(i32 0) #18
  %11 = ptrtoint ptr %10 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %9, i32 0, i32 15
  store i32 %11, ptr %arrayidx.i, align 4
  %12 = call ptr @llvm.frameaddress.p0(i32 0) #18
  %13 = ptrtoint ptr %12 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %9, i32 0, i32 11
  store i32 %13, ptr %arrayidx2.i, align 4
  %14 = call i32 @llvm.read_register.i32(metadata !0) #18
  %arrayidx4.i = getelementptr [18 x i32], ptr %9, i32 0, i32 13
  store i32 %14, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %9, i32 0, i32 16
  store i32 19, ptr %arrayidx6.i, align 4
  %call_site17 = getelementptr inbounds %struct.trace_event_raw_kfree, ptr %call13, i32 0, i32 1
  store i32 %call_site, ptr %call_site17, align 4
  %ptr18 = getelementptr inbounds %struct.trace_event_raw_kfree, ptr %call13, i32 0, i32 2
  store ptr %ptr, ptr %ptr18, align 4
  %15 = load i32, ptr %rctx, align 4
  %16 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %15, ptr noundef %__data, i64 noundef 1, ptr noundef %16, ptr noundef %6, ptr noundef null) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end, %land.lhs.true7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_kmem_cache_free(ptr noundef %__data, i32 noundef %call_site, ptr noundef %ptr, ptr noundef %name) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #18
  store ptr inttoptr (i32 -1 to ptr), ptr %fbuffer, align 4, !annotation !10
  %0 = getelementptr inbounds %struct.trace_event_buffer, ptr %fbuffer, i32 0, i32 1
  store ptr inttoptr (i32 -1 to ptr), ptr %0, align 4, !annotation !10
  %1 = getelementptr inbounds %struct.trace_event_buffer, ptr %fbuffer, i32 0, i32 2
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !10
  %2 = getelementptr inbounds %struct.trace_event_buffer, ptr %fbuffer, i32 0, i32 3
  store ptr inttoptr (i32 -1 to ptr), ptr %2, align 4, !annotation !10
  %3 = getelementptr inbounds %struct.trace_event_buffer, ptr %fbuffer, i32 0, i32 4
  store i32 -1, ptr %3, align 4, !annotation !10
  %4 = getelementptr inbounds %struct.trace_event_buffer, ptr %fbuffer, i32 0, i32 5
  store ptr inttoptr (i32 -1 to ptr), ptr %4, align 4, !annotation !10
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %5 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %5, 704
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end, label %if.end.i, !prof !11

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %5, 256
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end, !prof !12

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #19
  br i1 %call.i, label %cleanup, label %if.end

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit, %if.end.i, %entry
  %tobool.not.i26 = icmp eq ptr %name, null
  %cond.i = select i1 %tobool.not.i26, ptr @.str.239, ptr %name
  %call.i27 = tail call i32 @strlen(ptr noundef %cond.i) #19
  %add = add i32 %call.i27, 21
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #19
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %add.i = shl i32 %call.i27, 16
  %or.i = add i32 %add.i, 65556
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_kmem_cache_free, ptr %call3, i32 0, i32 3
  store i32 %or.i, ptr %__data_loc_name, align 4
  %call_site7 = getelementptr inbounds %struct.trace_event_raw_kmem_cache_free, ptr %call3, i32 0, i32 1
  store i32 %call_site, ptr %call_site7, align 4
  %ptr8 = getelementptr inbounds %struct.trace_event_raw_kmem_cache_free, ptr %call3, i32 0, i32 2
  store ptr %ptr, ptr %ptr8, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 20
  %call11 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond.i) #19
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end, %trace_trigger_soft_disabled.exit
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_kmem_cache_free(ptr noundef %__data, i32 noundef %call_site, ptr noundef %ptr, ptr noundef %name) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #18
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #18
  store i32 -1, ptr %rctx, align 4, !annotation !10
  %tobool.not.i = icmp eq ptr %name, null
  %cond.i = select i1 %tobool.not.i, ptr @.str.239, ptr %name
  %call.i = tail call i32 @strlen(ptr noundef %cond.i) #19
  %add.i = shl i32 %call.i, 16
  %or.i = add i32 %add.i, 65556
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %0 = load ptr, ptr %perf_events, align 4
  %1 = ptrtoint ptr %0 to i32
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %4
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, %1
  %6 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %7 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %7, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %if.end

land.lhs.true7:                                   ; preds = %entry
  %8 = load volatile ptr, ptr %6, align 4
  %tobool.not.i50.not = icmp eq ptr %8, null
  br i1 %tobool.not.i50.not, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true7, %entry
  %add12 = add i32 %call.i, 32
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #19
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %cleanup, label %if.end16

if.end16:                                         ; preds = %if.end
  %9 = load ptr, ptr %__regs, align 4
  %10 = call ptr @llvm.returnaddress(i32 0) #18
  %11 = ptrtoint ptr %10 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %9, i32 0, i32 15
  store i32 %11, ptr %arrayidx.i, align 4
  %12 = call ptr @llvm.frameaddress.p0(i32 0) #18
  %13 = ptrtoint ptr %12 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %9, i32 0, i32 11
  store i32 %13, ptr %arrayidx2.i, align 4
  %14 = call i32 @llvm.read_register.i32(metadata !0) #18
  %arrayidx4.i = getelementptr [18 x i32], ptr %9, i32 0, i32 13
  store i32 %14, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %9, i32 0, i32 16
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_kmem_cache_free, ptr %call13, i32 0, i32 3
  store i32 %or.i, ptr %__data_loc_name, align 4
  %call_site18 = getelementptr inbounds %struct.trace_event_raw_kmem_cache_free, ptr %call13, i32 0, i32 1
  store i32 %call_site, ptr %call_site18, align 4
  %ptr19 = getelementptr inbounds %struct.trace_event_raw_kmem_cache_free, ptr %call13, i32 0, i32 2
  store ptr %ptr, ptr %ptr19, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 20
  %call23 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond.i) #19
  %15 = load i32, ptr %rctx, align 4
  %16 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %15, ptr noundef %__data, i64 noundef 1, ptr noundef %16, ptr noundef %6, ptr noundef null) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end, %land.lhs.true7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mm_page_free(ptr noundef %__data, ptr noundef %page, i32 noundef %order) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #18
  store ptr inttoptr (i32 -1 to ptr), ptr %fbuffer, align 4, !annotation !10
  %0 = getelementptr inbounds %struct.trace_event_buffer, ptr %fbuffer, i32 0, i32 1
  store ptr inttoptr (i32 -1 to ptr), ptr %0, align 4, !annotation !10
  %1 = getelementptr inbounds %struct.trace_event_buffer, ptr %fbuffer, i32 0, i32 2
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !10
  %2 = getelementptr inbounds %struct.trace_event_buffer, ptr %fbuffer, i32 0, i32 3
  store ptr inttoptr (i32 -1 to ptr), ptr %2, align 4, !annotation !10
  %3 = getelementptr inbounds %struct.trace_event_buffer, ptr %fbuffer, i32 0, i32 4
  store i32 -1, ptr %3, align 4, !annotation !10
  %4 = getelementptr inbounds %struct.trace_event_buffer, ptr %fbuffer, i32 0, i32 5
  store ptr inttoptr (i32 -1 to ptr), ptr %4, align 4, !annotation !10
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %5 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %5, 704
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end, label %if.end.i, !prof !11

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %5, 256
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end, !prof !12

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #19
  br i1 %call.i, label %cleanup, label %if.end

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit, %if.end.i, %entry
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 16) #19
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %6 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %page to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %6 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  %7 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add6 = add i32 %sub.ptr.div, %7
  %pfn = getelementptr inbounds %struct.trace_event_raw_mm_page_free, ptr %call3, i32 0, i32 1
  store i32 %add6, ptr %pfn, align 4
  %order7 = getelementptr inbounds %struct.trace_event_raw_mm_page_free, ptr %call3, i32 0, i32 2
  store i32 %order, ptr %order7, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end, %trace_trigger_soft_disabled.exit
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_mm_page_free(ptr noundef %__data, ptr noundef %page, i32 noundef %order) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #18
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #18
  store i32 -1, ptr %rctx, align 4, !annotation !10
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %0 = load ptr, ptr %perf_events, align 4
  %1 = ptrtoint ptr %0 to i32
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %4
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, %1
  %6 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %7 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %7, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %if.end

land.lhs.true7:                                   ; preds = %entry
  %8 = load volatile ptr, ptr %6, align 4
  %tobool.not.i.not = icmp eq ptr %8, null
  br i1 %tobool.not.i.not, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true7, %entry
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #19
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %cleanup, label %if.end16

if.end16:                                         ; preds = %if.end
  %9 = load ptr, ptr %__regs, align 4
  %10 = call ptr @llvm.returnaddress(i32 0) #18
  %11 = ptrtoint ptr %10 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %9, i32 0, i32 15
  store i32 %11, ptr %arrayidx.i, align 4
  %12 = call ptr @llvm.frameaddress.p0(i32 0) #18
  %13 = ptrtoint ptr %12 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %9, i32 0, i32 11
  store i32 %13, ptr %arrayidx2.i, align 4
  %14 = call i32 @llvm.read_register.i32(metadata !0) #18
  %arrayidx4.i = getelementptr [18 x i32], ptr %9, i32 0, i32 13
  store i32 %14, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %9, i32 0, i32 16
  store i32 19, ptr %arrayidx6.i, align 4
  %15 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %page to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %15 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  %16 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add17 = add i32 %sub.ptr.div, %16
  %pfn = getelementptr inbounds %struct.trace_event_raw_mm_page_free, ptr %call13, i32 0, i32 1
  store i32 %add17, ptr %pfn, align 4
  %order18 = getelementptr inbounds %struct.trace_event_raw_mm_page_free, ptr %call13, i32 0, i32 2
  store i32 %order, ptr %order18, align 4
  %17 = load i32, ptr %rctx, align 4
  %18 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %17, ptr noundef %__data, i64 noundef 1, ptr noundef %18, ptr noundef %6, ptr noundef null) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end, %land.lhs.true7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mm_page_free_batched(ptr noundef %__data, ptr noundef %page) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #18
  store ptr inttoptr (i32 -1 to ptr), ptr %fbuffer, align 4, !annotation !10
  %0 = getelementptr inbounds %struct.trace_event_buffer, ptr %fbuffer, i32 0, i32 1
  store ptr inttoptr (i32 -1 to ptr), ptr %0, align 4, !annotation !10
  %1 = getelementptr inbounds %struct.trace_event_buffer, ptr %fbuffer, i32 0, i32 2
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !10
  %2 = getelementptr inbounds %struct.trace_event_buffer, ptr %fbuffer, i32 0, i32 3
  store ptr inttoptr (i32 -1 to ptr), ptr %2, align 4, !annotation !10
  %3 = getelementptr inbounds %struct.trace_event_buffer, ptr %fbuffer, i32 0, i32 4
  store i32 -1, ptr %3, align 4, !annotation !10
  %4 = getelementptr inbounds %struct.trace_event_buffer, ptr %fbuffer, i32 0, i32 5
  store ptr inttoptr (i32 -1 to ptr), ptr %4, align 4, !annotation !10
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %5 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %5, 704
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end, label %if.end.i, !prof !11

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %5, 256
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end, !prof !12

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #19
  br i1 %call.i, label %cleanup, label %if.end

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit, %if.end.i, %entry
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 12) #19
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %6 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %page to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %6 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  %7 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add6 = add i32 %sub.ptr.div, %7
  %pfn = getelementptr inbounds %struct.trace_event_raw_mm_page_free_batched, ptr %call3, i32 0, i32 1
  store i32 %add6, ptr %pfn, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end, %trace_trigger_soft_disabled.exit
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_mm_page_free_batched(ptr noundef %__data, ptr noundef %page) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #18
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #18
  store i32 -1, ptr %rctx, align 4, !annotation !10
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %0 = load ptr, ptr %perf_events, align 4
  %1 = ptrtoint ptr %0 to i32
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %4
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, %1
  %6 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %7 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %7, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %if.end

land.lhs.true7:                                   ; preds = %entry
  %8 = load volatile ptr, ptr %6, align 4
  %tobool.not.i.not = icmp eq ptr %8, null
  br i1 %tobool.not.i.not, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true7, %entry
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #19
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %cleanup, label %if.end16

if.end16:                                         ; preds = %if.end
  %9 = load ptr, ptr %__regs, align 4
  %10 = call ptr @llvm.returnaddress(i32 0) #18
  %11 = ptrtoint ptr %10 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %9, i32 0, i32 15
  store i32 %11, ptr %arrayidx.i, align 4
  %12 = call ptr @llvm.frameaddress.p0(i32 0) #18
  %13 = ptrtoint ptr %12 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %9, i32 0, i32 11
  store i32 %13, ptr %arrayidx2.i, align 4
  %14 = call i32 @llvm.read_register.i32(metadata !0) #18
  %arrayidx4.i = getelementptr [18 x i32], ptr %9, i32 0, i32 13
  store i32 %14, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %9, i32 0, i32 16
  store i32 19, ptr %arrayidx6.i, align 4
  %15 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %page to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %15 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  %16 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add17 = add i32 %sub.ptr.div, %16
  %pfn = getelementptr inbounds %struct.trace_event_raw_mm_page_free_batched, ptr %call13, i32 0, i32 1
  store i32 %add17, ptr %pfn, align 4
  %17 = load i32, ptr %rctx, align 4
  %18 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 12, i32 noundef %17, ptr noundef %__data, i64 noundef 1, ptr noundef %18, ptr noundef %6, ptr noundef null) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end, %land.lhs.true7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mm_page_alloc(ptr noundef %__data, ptr noundef %page, i32 noundef %order, i32 noundef %gfp_flags, i32 noundef %migratetype) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #18
  store ptr inttoptr (i32 -1 to ptr), ptr %fbuffer, align 4, !annotation !10
  %0 = getelementptr inbounds %struct.trace_event_buffer, ptr %fbuffer, i32 0, i32 1
  store ptr inttoptr (i32 -1 to ptr), ptr %0, align 4, !annotation !10
  %1 = getelementptr inbounds %struct.trace_event_buffer, ptr %fbuffer, i32 0, i32 2
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !10
  %2 = getelementptr inbounds %struct.trace_event_buffer, ptr %fbuffer, i32 0, i32 3
  store ptr inttoptr (i32 -1 to ptr), ptr %2, align 4, !annotation !10
  %3 = getelementptr inbounds %struct.trace_event_buffer, ptr %fbuffer, i32 0, i32 4
  store i32 -1, ptr %3, align 4, !annotation !10
  %4 = getelementptr inbounds %struct.trace_event_buffer, ptr %fbuffer, i32 0, i32 5
  store ptr inttoptr (i32 -1 to ptr), ptr %4, align 4, !annotation !10
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %5 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %5, 704
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end, label %if.end.i, !prof !11

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %5, 256
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end, !prof !12

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #19
  br i1 %call.i, label %cleanup, label %if.end

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit, %if.end.i, %entry
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 24) #19
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %tobool6.not = icmp eq ptr %page, null
  br i1 %tobool6.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.end5
  %6 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %page to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %6 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  %7 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add7 = add i32 %sub.ptr.div, %7
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end5
  %cond = phi i32 [ %add7, %cond.true ], [ -1, %if.end5 ]
  %pfn = getelementptr inbounds %struct.trace_event_raw_mm_page_alloc, ptr %call3, i32 0, i32 1
  store i32 %cond, ptr %pfn, align 4
  %order8 = getelementptr inbounds %struct.trace_event_raw_mm_page_alloc, ptr %call3, i32 0, i32 2
  store i32 %order, ptr %order8, align 4
  %gfp_flags9 = getelementptr inbounds %struct.trace_event_raw_mm_page_alloc, ptr %call3, i32 0, i32 3
  store i32 %gfp_flags, ptr %gfp_flags9, align 4
  %migratetype10 = getelementptr inbounds %struct.trace_event_raw_mm_page_alloc, ptr %call3, i32 0, i32 4
  store i32 %migratetype, ptr %migratetype10, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #19
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end, %trace_trigger_soft_disabled.exit
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_mm_page_alloc(ptr noundef %__data, ptr noundef %page, i32 noundef %order, i32 noundef %gfp_flags, i32 noundef %migratetype) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #18
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #18
  store i32 -1, ptr %rctx, align 4, !annotation !10
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %0 = load ptr, ptr %perf_events, align 4
  %1 = ptrtoint ptr %0 to i32
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %4
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, %1
  %6 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %7 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %7, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %if.end

land.lhs.true7:                                   ; preds = %entry
  %8 = load volatile ptr, ptr %6, align 4
  %tobool.not.i.not = icmp eq ptr %8, null
  br i1 %tobool.not.i.not, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true7, %entry
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #19
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %cleanup, label %if.end16

if.end16:                                         ; preds = %if.end
  %9 = load ptr, ptr %__regs, align 4
  %10 = call ptr @llvm.returnaddress(i32 0) #18
  %11 = ptrtoint ptr %10 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %9, i32 0, i32 15
  store i32 %11, ptr %arrayidx.i, align 4
  %12 = call ptr @llvm.frameaddress.p0(i32 0) #18
  %13 = ptrtoint ptr %12 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %9, i32 0, i32 11
  store i32 %13, ptr %arrayidx2.i, align 4
  %14 = call i32 @llvm.read_register.i32(metadata !0) #18
  %arrayidx4.i = getelementptr [18 x i32], ptr %9, i32 0, i32 13
  store i32 %14, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %9, i32 0, i32 16
  store i32 19, ptr %arrayidx6.i, align 4
  %tobool17.not = icmp eq ptr %page, null
  br i1 %tobool17.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.end16
  %15 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %page to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %15 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  %16 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add18 = add i32 %sub.ptr.div, %16
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end16
  %cond = phi i32 [ %add18, %cond.true ], [ -1, %if.end16 ]
  %pfn = getelementptr inbounds %struct.trace_event_raw_mm_page_alloc, ptr %call13, i32 0, i32 1
  store i32 %cond, ptr %pfn, align 4
  %order19 = getelementptr inbounds %struct.trace_event_raw_mm_page_alloc, ptr %call13, i32 0, i32 2
  store i32 %order, ptr %order19, align 4
  %gfp_flags20 = getelementptr inbounds %struct.trace_event_raw_mm_page_alloc, ptr %call13, i32 0, i32 3
  store i32 %gfp_flags, ptr %gfp_flags20, align 4
  %migratetype21 = getelementptr inbounds %struct.trace_event_raw_mm_page_alloc, ptr %call13, i32 0, i32 4
  store i32 %migratetype, ptr %migratetype21, align 4
  %17 = load i32, ptr %rctx, align 4
  %18 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %17, ptr noundef %__data, i64 noundef 1, ptr noundef %18, ptr noundef %6, ptr noundef null) #19
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end, %land.lhs.true7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mm_page(ptr noundef %__data, ptr noundef %page, i32 noundef %order, i32 noundef %migratetype) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #18
  store ptr inttoptr (i32 -1 to ptr), ptr %fbuffer, align 4, !annotation !10
  %0 = getelementptr inbounds %struct.trace_event_buffer, ptr %fbuffer, i32 0, i32 1
  store ptr inttoptr (i32 -1 to ptr), ptr %0, align 4, !annotation !10
  %1 = getelementptr inbounds %struct.trace_event_buffer, ptr %fbuffer, i32 0, i32 2
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !10
  %2 = getelementptr inbounds %struct.trace_event_buffer, ptr %fbuffer, i32 0, i32 3
  store ptr inttoptr (i32 -1 to ptr), ptr %2, align 4, !annotation !10
  %3 = getelementptr inbounds %struct.trace_event_buffer, ptr %fbuffer, i32 0, i32 4
  store i32 -1, ptr %3, align 4, !annotation !10
  %4 = getelementptr inbounds %struct.trace_event_buffer, ptr %fbuffer, i32 0, i32 5
  store ptr inttoptr (i32 -1 to ptr), ptr %4, align 4, !annotation !10
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %5 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %5, 704
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end, label %if.end.i, !prof !11

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %5, 256
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end, !prof !12

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #19
  br i1 %call.i, label %cleanup, label %if.end

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit, %if.end.i, %entry
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 20) #19
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %tobool6.not = icmp eq ptr %page, null
  br i1 %tobool6.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.end5
  %6 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %page to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %6 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  %7 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add7 = add i32 %sub.ptr.div, %7
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end5
  %cond = phi i32 [ %add7, %cond.true ], [ -1, %if.end5 ]
  %pfn = getelementptr inbounds %struct.trace_event_raw_mm_page, ptr %call3, i32 0, i32 1
  store i32 %cond, ptr %pfn, align 4
  %order8 = getelementptr inbounds %struct.trace_event_raw_mm_page, ptr %call3, i32 0, i32 2
  store i32 %order, ptr %order8, align 4
  %migratetype9 = getelementptr inbounds %struct.trace_event_raw_mm_page, ptr %call3, i32 0, i32 3
  store i32 %migratetype, ptr %migratetype9, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #19
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end, %trace_trigger_soft_disabled.exit
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_mm_page(ptr noundef %__data, ptr noundef %page, i32 noundef %order, i32 noundef %migratetype) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #18
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #18
  store i32 -1, ptr %rctx, align 4, !annotation !10
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %0 = load ptr, ptr %perf_events, align 4
  %1 = ptrtoint ptr %0 to i32
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %4
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, %1
  %6 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %7 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %7, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %if.end

land.lhs.true7:                                   ; preds = %entry
  %8 = load volatile ptr, ptr %6, align 4
  %tobool.not.i.not = icmp eq ptr %8, null
  br i1 %tobool.not.i.not, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true7, %entry
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #19
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %cleanup, label %if.end16

if.end16:                                         ; preds = %if.end
  %9 = load ptr, ptr %__regs, align 4
  %10 = call ptr @llvm.returnaddress(i32 0) #18
  %11 = ptrtoint ptr %10 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %9, i32 0, i32 15
  store i32 %11, ptr %arrayidx.i, align 4
  %12 = call ptr @llvm.frameaddress.p0(i32 0) #18
  %13 = ptrtoint ptr %12 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %9, i32 0, i32 11
  store i32 %13, ptr %arrayidx2.i, align 4
  %14 = call i32 @llvm.read_register.i32(metadata !0) #18
  %arrayidx4.i = getelementptr [18 x i32], ptr %9, i32 0, i32 13
  store i32 %14, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %9, i32 0, i32 16
  store i32 19, ptr %arrayidx6.i, align 4
  %tobool17.not = icmp eq ptr %page, null
  br i1 %tobool17.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.end16
  %15 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %page to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %15 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  %16 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add18 = add i32 %sub.ptr.div, %16
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end16
  %cond = phi i32 [ %add18, %cond.true ], [ -1, %if.end16 ]
  %pfn = getelementptr inbounds %struct.trace_event_raw_mm_page, ptr %call13, i32 0, i32 1
  store i32 %cond, ptr %pfn, align 4
  %order19 = getelementptr inbounds %struct.trace_event_raw_mm_page, ptr %call13, i32 0, i32 2
  store i32 %order, ptr %order19, align 4
  %migratetype20 = getelementptr inbounds %struct.trace_event_raw_mm_page, ptr %call13, i32 0, i32 3
  store i32 %migratetype, ptr %migratetype20, align 4
  %17 = load i32, ptr %rctx, align 4
  %18 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %17, ptr noundef %__data, i64 noundef 1, ptr noundef %18, ptr noundef %6, ptr noundef null) #19
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end, %land.lhs.true7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mm_page_pcpu_drain(ptr noundef %__data, ptr noundef %page, i32 noundef %order, i32 noundef %migratetype) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #18
  store ptr inttoptr (i32 -1 to ptr), ptr %fbuffer, align 4, !annotation !10
  %0 = getelementptr inbounds %struct.trace_event_buffer, ptr %fbuffer, i32 0, i32 1
  store ptr inttoptr (i32 -1 to ptr), ptr %0, align 4, !annotation !10
  %1 = getelementptr inbounds %struct.trace_event_buffer, ptr %fbuffer, i32 0, i32 2
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !10
  %2 = getelementptr inbounds %struct.trace_event_buffer, ptr %fbuffer, i32 0, i32 3
  store ptr inttoptr (i32 -1 to ptr), ptr %2, align 4, !annotation !10
  %3 = getelementptr inbounds %struct.trace_event_buffer, ptr %fbuffer, i32 0, i32 4
  store i32 -1, ptr %3, align 4, !annotation !10
  %4 = getelementptr inbounds %struct.trace_event_buffer, ptr %fbuffer, i32 0, i32 5
  store ptr inttoptr (i32 -1 to ptr), ptr %4, align 4, !annotation !10
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %5 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %5, 704
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end, label %if.end.i, !prof !11

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %5, 256
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end, !prof !12

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #19
  br i1 %call.i, label %cleanup, label %if.end

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit, %if.end.i, %entry
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 20) #19
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %tobool6.not = icmp eq ptr %page, null
  br i1 %tobool6.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.end5
  %6 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %page to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %6 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  %7 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add7 = add i32 %sub.ptr.div, %7
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end5
  %cond = phi i32 [ %add7, %cond.true ], [ -1, %if.end5 ]
  %pfn = getelementptr inbounds %struct.trace_event_raw_mm_page_pcpu_drain, ptr %call3, i32 0, i32 1
  store i32 %cond, ptr %pfn, align 4
  %order8 = getelementptr inbounds %struct.trace_event_raw_mm_page_pcpu_drain, ptr %call3, i32 0, i32 2
  store i32 %order, ptr %order8, align 4
  %migratetype9 = getelementptr inbounds %struct.trace_event_raw_mm_page_pcpu_drain, ptr %call3, i32 0, i32 3
  store i32 %migratetype, ptr %migratetype9, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #19
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end, %trace_trigger_soft_disabled.exit
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_mm_page_pcpu_drain(ptr noundef %__data, ptr noundef %page, i32 noundef %order, i32 noundef %migratetype) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #18
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #18
  store i32 -1, ptr %rctx, align 4, !annotation !10
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %0 = load ptr, ptr %perf_events, align 4
  %1 = ptrtoint ptr %0 to i32
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %4
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, %1
  %6 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %7 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %7, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %if.end

land.lhs.true7:                                   ; preds = %entry
  %8 = load volatile ptr, ptr %6, align 4
  %tobool.not.i.not = icmp eq ptr %8, null
  br i1 %tobool.not.i.not, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true7, %entry
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #19
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %cleanup, label %if.end16

if.end16:                                         ; preds = %if.end
  %9 = load ptr, ptr %__regs, align 4
  %10 = call ptr @llvm.returnaddress(i32 0) #18
  %11 = ptrtoint ptr %10 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %9, i32 0, i32 15
  store i32 %11, ptr %arrayidx.i, align 4
  %12 = call ptr @llvm.frameaddress.p0(i32 0) #18
  %13 = ptrtoint ptr %12 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %9, i32 0, i32 11
  store i32 %13, ptr %arrayidx2.i, align 4
  %14 = call i32 @llvm.read_register.i32(metadata !0) #18
  %arrayidx4.i = getelementptr [18 x i32], ptr %9, i32 0, i32 13
  store i32 %14, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %9, i32 0, i32 16
  store i32 19, ptr %arrayidx6.i, align 4
  %tobool17.not = icmp eq ptr %page, null
  br i1 %tobool17.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.end16
  %15 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %page to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %15 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  %16 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add18 = add i32 %sub.ptr.div, %16
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end16
  %cond = phi i32 [ %add18, %cond.true ], [ -1, %if.end16 ]
  %pfn = getelementptr inbounds %struct.trace_event_raw_mm_page_pcpu_drain, ptr %call13, i32 0, i32 1
  store i32 %cond, ptr %pfn, align 4
  %order19 = getelementptr inbounds %struct.trace_event_raw_mm_page_pcpu_drain, ptr %call13, i32 0, i32 2
  store i32 %order, ptr %order19, align 4
  %migratetype20 = getelementptr inbounds %struct.trace_event_raw_mm_page_pcpu_drain, ptr %call13, i32 0, i32 3
  store i32 %migratetype, ptr %migratetype20, align 4
  %17 = load i32, ptr %rctx, align 4
  %18 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %17, ptr noundef %__data, i64 noundef 1, ptr noundef %18, ptr noundef %6, ptr noundef null) #19
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end, %land.lhs.true7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mm_page_alloc_extfrag(ptr noundef %__data, ptr noundef %page, i32 noundef %alloc_order, i32 noundef %fallback_order, i32 noundef %alloc_migratetype, i32 noundef %fallback_migratetype) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #18
  store ptr inttoptr (i32 -1 to ptr), ptr %fbuffer, align 4, !annotation !10
  %0 = getelementptr inbounds %struct.trace_event_buffer, ptr %fbuffer, i32 0, i32 1
  store ptr inttoptr (i32 -1 to ptr), ptr %0, align 4, !annotation !10
  %1 = getelementptr inbounds %struct.trace_event_buffer, ptr %fbuffer, i32 0, i32 2
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !10
  %2 = getelementptr inbounds %struct.trace_event_buffer, ptr %fbuffer, i32 0, i32 3
  store ptr inttoptr (i32 -1 to ptr), ptr %2, align 4, !annotation !10
  %3 = getelementptr inbounds %struct.trace_event_buffer, ptr %fbuffer, i32 0, i32 4
  store i32 -1, ptr %3, align 4, !annotation !10
  %4 = getelementptr inbounds %struct.trace_event_buffer, ptr %fbuffer, i32 0, i32 5
  store ptr inttoptr (i32 -1 to ptr), ptr %4, align 4, !annotation !10
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %5 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %5, 704
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end, label %if.end.i, !prof !11

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %5, 256
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end, !prof !12

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #19
  br i1 %call.i, label %cleanup, label %if.end

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit, %if.end.i, %entry
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 32) #19
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %6 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %page to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %6 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  %7 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add6 = add i32 %sub.ptr.div, %7
  %pfn = getelementptr inbounds %struct.trace_event_raw_mm_page_alloc_extfrag, ptr %call3, i32 0, i32 1
  store i32 %add6, ptr %pfn, align 4
  %alloc_order7 = getelementptr inbounds %struct.trace_event_raw_mm_page_alloc_extfrag, ptr %call3, i32 0, i32 2
  store i32 %alloc_order, ptr %alloc_order7, align 4
  %fallback_order8 = getelementptr inbounds %struct.trace_event_raw_mm_page_alloc_extfrag, ptr %call3, i32 0, i32 3
  store i32 %fallback_order, ptr %fallback_order8, align 4
  %alloc_migratetype9 = getelementptr inbounds %struct.trace_event_raw_mm_page_alloc_extfrag, ptr %call3, i32 0, i32 4
  store i32 %alloc_migratetype, ptr %alloc_migratetype9, align 4
  %fallback_migratetype10 = getelementptr inbounds %struct.trace_event_raw_mm_page_alloc_extfrag, ptr %call3, i32 0, i32 5
  store i32 %fallback_migratetype, ptr %fallback_migratetype10, align 4
  %call16 = call i32 @get_pfnblock_flags_mask(ptr noundef %page, i32 noundef %add6, i32 noundef 7) #19
  %cmp = icmp eq i32 %call16, %alloc_migratetype
  %conv = zext i1 %cmp to i32
  %change_ownership = getelementptr inbounds %struct.trace_event_raw_mm_page_alloc_extfrag, ptr %call3, i32 0, i32 6
  store i32 %conv, ptr %change_ownership, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end, %trace_trigger_soft_disabled.exit
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_mm_page_alloc_extfrag(ptr noundef %__data, ptr noundef %page, i32 noundef %alloc_order, i32 noundef %fallback_order, i32 noundef %alloc_migratetype, i32 noundef %fallback_migratetype) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #18
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #18
  store i32 -1, ptr %rctx, align 4, !annotation !10
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %0 = load ptr, ptr %perf_events, align 4
  %1 = ptrtoint ptr %0 to i32
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %4
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, %1
  %6 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %7 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %7, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %if.end

land.lhs.true7:                                   ; preds = %entry
  %8 = load volatile ptr, ptr %6, align 4
  %tobool.not.i.not = icmp eq ptr %8, null
  br i1 %tobool.not.i.not, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true7, %entry
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #19
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %cleanup, label %if.end16

if.end16:                                         ; preds = %if.end
  %9 = load ptr, ptr %__regs, align 4
  %10 = call ptr @llvm.returnaddress(i32 0) #18
  %11 = ptrtoint ptr %10 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %9, i32 0, i32 15
  store i32 %11, ptr %arrayidx.i, align 4
  %12 = call ptr @llvm.frameaddress.p0(i32 0) #18
  %13 = ptrtoint ptr %12 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %9, i32 0, i32 11
  store i32 %13, ptr %arrayidx2.i, align 4
  %14 = call i32 @llvm.read_register.i32(metadata !0) #18
  %arrayidx4.i = getelementptr [18 x i32], ptr %9, i32 0, i32 13
  store i32 %14, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %9, i32 0, i32 16
  store i32 19, ptr %arrayidx6.i, align 4
  %15 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %page to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %15 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  %16 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add17 = add i32 %sub.ptr.div, %16
  %pfn = getelementptr inbounds %struct.trace_event_raw_mm_page_alloc_extfrag, ptr %call13, i32 0, i32 1
  store i32 %add17, ptr %pfn, align 4
  %alloc_order18 = getelementptr inbounds %struct.trace_event_raw_mm_page_alloc_extfrag, ptr %call13, i32 0, i32 2
  store i32 %alloc_order, ptr %alloc_order18, align 4
  %fallback_order19 = getelementptr inbounds %struct.trace_event_raw_mm_page_alloc_extfrag, ptr %call13, i32 0, i32 3
  store i32 %fallback_order, ptr %fallback_order19, align 4
  %alloc_migratetype20 = getelementptr inbounds %struct.trace_event_raw_mm_page_alloc_extfrag, ptr %call13, i32 0, i32 4
  store i32 %alloc_migratetype, ptr %alloc_migratetype20, align 4
  %fallback_migratetype21 = getelementptr inbounds %struct.trace_event_raw_mm_page_alloc_extfrag, ptr %call13, i32 0, i32 5
  store i32 %fallback_migratetype, ptr %fallback_migratetype21, align 4
  %call27 = call i32 @get_pfnblock_flags_mask(ptr noundef %page, i32 noundef %add17, i32 noundef 7) #19
  %cmp = icmp eq i32 %call27, %alloc_migratetype
  %conv = zext i1 %cmp to i32
  %change_ownership = getelementptr inbounds %struct.trace_event_raw_mm_page_alloc_extfrag, ptr %call13, i32 0, i32 6
  store i32 %conv, ptr %change_ownership, align 4
  %17 = load i32, ptr %rctx, align 4
  %18 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 36, i32 noundef %17, ptr noundef %__data, i64 noundef 1, ptr noundef %18, ptr noundef %6, ptr noundef null) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end, %land.lhs.true7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rss_stat(ptr noundef %__data, ptr noundef %mm, i32 noundef %member, i32 noundef %count) #0 align 64 {
entry:
  %hashval.i = alloca i32, align 4
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #18
  store ptr inttoptr (i32 -1 to ptr), ptr %fbuffer, align 4, !annotation !10
  %0 = getelementptr inbounds %struct.trace_event_buffer, ptr %fbuffer, i32 0, i32 1
  store ptr inttoptr (i32 -1 to ptr), ptr %0, align 4, !annotation !10
  %1 = getelementptr inbounds %struct.trace_event_buffer, ptr %fbuffer, i32 0, i32 2
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !10
  %2 = getelementptr inbounds %struct.trace_event_buffer, ptr %fbuffer, i32 0, i32 3
  store ptr inttoptr (i32 -1 to ptr), ptr %2, align 4, !annotation !10
  %3 = getelementptr inbounds %struct.trace_event_buffer, ptr %fbuffer, i32 0, i32 4
  store i32 -1, ptr %3, align 4, !annotation !10
  %4 = getelementptr inbounds %struct.trace_event_buffer, ptr %fbuffer, i32 0, i32 5
  store ptr inttoptr (i32 -1 to ptr), ptr %4, align 4, !annotation !10
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %5 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %5, 704
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end, label %if.end.i, !prof !11

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %5, 256
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end, !prof !12

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #19
  br i1 %call.i, label %cleanup, label %if.end

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit, %if.end.i, %entry
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 24) #19
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hashval.i) #18
  store i32 -1, ptr %hashval.i, align 4, !annotation !10
  %call.i24 = call i32 @ptr_to_hashval(ptr noundef %mm, ptr noundef nonnull %hashval.i) #19
  %tobool.not.i25 = icmp eq i32 %call.i24, 0
  %6 = load i32, ptr %hashval.i, align 4
  %retval.0.i26 = select i1 %tobool.not.i25, i32 %6, i32 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hashval.i) #18
  %mm_id = getelementptr inbounds %struct.trace_event_raw_rss_stat, ptr %call3, i32 0, i32 1
  store i32 %retval.0.i26, ptr %mm_id, align 4
  %7 = call i32 @llvm.read_register.i32(metadata !0) #18
  %and.i27 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i27 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = load ptr, ptr %task, align 8
  %mm8 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 53
  %10 = load ptr, ptr %mm8, align 8
  %cmp = icmp eq ptr %10, %mm
  %lnot.ext = zext i1 %cmp to i32
  %curr = getelementptr inbounds %struct.trace_event_raw_rss_stat, ptr %call3, i32 0, i32 2
  store i32 %lnot.ext, ptr %curr, align 4
  %member10 = getelementptr inbounds %struct.trace_event_raw_rss_stat, ptr %call3, i32 0, i32 3
  store i32 %member, ptr %member10, align 4
  %shl = shl i32 %count, 12
  %size = getelementptr inbounds %struct.trace_event_raw_rss_stat, ptr %call3, i32 0, i32 4
  store i32 %shl, ptr %size, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end, %trace_trigger_soft_disabled.exit
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_rss_stat(ptr noundef %__data, ptr noundef %mm, i32 noundef %member, i32 noundef %count) #0 align 64 {
entry:
  %hashval.i = alloca i32, align 4
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #18
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #18
  store i32 -1, ptr %rctx, align 4, !annotation !10
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %0 = load ptr, ptr %perf_events, align 4
  %1 = ptrtoint ptr %0 to i32
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %4
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, %1
  %6 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %7 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %7, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %if.end

land.lhs.true7:                                   ; preds = %entry
  %8 = load volatile ptr, ptr %6, align 4
  %tobool.not.i.not = icmp eq ptr %8, null
  br i1 %tobool.not.i.not, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true7, %entry
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #19
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %cleanup, label %if.end16

if.end16:                                         ; preds = %if.end
  %9 = load ptr, ptr %__regs, align 4
  %10 = call ptr @llvm.returnaddress(i32 0) #18
  %11 = ptrtoint ptr %10 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %9, i32 0, i32 15
  store i32 %11, ptr %arrayidx.i, align 4
  %12 = call ptr @llvm.frameaddress.p0(i32 0) #18
  %13 = ptrtoint ptr %12 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %9, i32 0, i32 11
  store i32 %13, ptr %arrayidx2.i, align 4
  %14 = call i32 @llvm.read_register.i32(metadata !0) #18
  %arrayidx4.i = getelementptr [18 x i32], ptr %9, i32 0, i32 13
  store i32 %14, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %9, i32 0, i32 16
  store i32 19, ptr %arrayidx6.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hashval.i) #18
  store i32 -1, ptr %hashval.i, align 4, !annotation !10
  %call.i = call i32 @ptr_to_hashval(ptr noundef %mm, ptr noundef nonnull %hashval.i) #19
  %tobool.not.i50 = icmp eq i32 %call.i, 0
  %15 = load i32, ptr %hashval.i, align 4
  %retval.0.i = select i1 %tobool.not.i50, i32 %15, i32 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hashval.i) #18
  %mm_id = getelementptr inbounds %struct.trace_event_raw_rss_stat, ptr %call13, i32 0, i32 1
  store i32 %retval.0.i, ptr %mm_id, align 4
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %16 = load ptr, ptr %task, align 8
  %mm19 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 53
  %17 = load ptr, ptr %mm19, align 8
  %cmp = icmp eq ptr %17, %mm
  %lnot.ext23 = zext i1 %cmp to i32
  %curr = getelementptr inbounds %struct.trace_event_raw_rss_stat, ptr %call13, i32 0, i32 2
  store i32 %lnot.ext23, ptr %curr, align 4
  %member24 = getelementptr inbounds %struct.trace_event_raw_rss_stat, ptr %call13, i32 0, i32 3
  store i32 %member, ptr %member24, align 4
  %shl = shl i32 %count, 12
  %size = getelementptr inbounds %struct.trace_event_raw_rss_stat, ptr %call13, i32 0, i32 4
  store i32 %shl, ptr %size, align 4
  %18 = load i32, ptr %rctx, align 4
  %19 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %18, ptr noundef %__data, i64 noundef 1, ptr noundef %19, ptr noundef %6, ptr noundef null) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end, %land.lhs.true7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @__bpf_trace_kmem_alloc(ptr noundef %__data, i32 noundef %call_site, ptr noundef %ptr, i32 noundef %bytes_req, i32 noundef %bytes_alloc, i32 noundef %gfp_flags) #0 align 64 {
entry:
  %__src = alloca i32, align 4
  %__dst = alloca i32, align 4
  %__src1 = alloca ptr, align 4
  %__dst2 = alloca i32, align 4
  %__src6 = alloca i32, align 4
  %__dst7 = alloca i32, align 4
  %__src11 = alloca i32, align 4
  %__dst12 = alloca i32, align 4
  %__src16 = alloca i32, align 4
  %__dst17 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__src) #18
  store i32 %call_site, ptr %__src, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__dst) #18
  store i32 -1, ptr %__dst, align 4, !annotation !10
  %call = call ptr @__memcpy(ptr noundef nonnull %__dst, ptr noundef nonnull %__src, i32 noundef 4) #19
  %0 = load i32, ptr %__dst, align 4
  %conv = zext i32 %0 to i64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__dst) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__src) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__src1) #18
  store ptr %ptr, ptr %__src1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__dst2) #18
  store i32 -1, ptr %__dst2, align 4, !annotation !10
  %call3 = call ptr @__memcpy(ptr noundef nonnull %__dst2, ptr noundef nonnull %__src1, i32 noundef 4) #19
  %1 = load i32, ptr %__dst2, align 4
  %conv5 = zext i32 %1 to i64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__dst2) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__src1) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__src6) #18
  store i32 %bytes_req, ptr %__src6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__dst7) #18
  store i32 -1, ptr %__dst7, align 4, !annotation !10
  %call8 = call ptr @__memcpy(ptr noundef nonnull %__dst7, ptr noundef nonnull %__src6, i32 noundef 4) #19
  %2 = load i32, ptr %__dst7, align 4
  %conv10 = zext i32 %2 to i64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__dst7) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__src6) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__src11) #18
  store i32 %bytes_alloc, ptr %__src11, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__dst12) #18
  store i32 -1, ptr %__dst12, align 4, !annotation !10
  %call13 = call ptr @__memcpy(ptr noundef nonnull %__dst12, ptr noundef nonnull %__src11, i32 noundef 4) #19
  %3 = load i32, ptr %__dst12, align 4
  %conv15 = zext i32 %3 to i64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__dst12) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__src11) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__src16) #18
  store i32 %gfp_flags, ptr %__src16, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__dst17) #18
  store i32 -1, ptr %__dst17, align 4, !annotation !10
  %call18 = call ptr @__memcpy(ptr noundef nonnull %__dst17, ptr noundef nonnull %__src16, i32 noundef 4) #19
  %4 = load i32, ptr %__dst17, align 4
  %conv20 = zext i32 %4 to i64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__dst17) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__src16) #18
  call void @bpf_trace_run5(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv5, i64 noundef %conv10, i64 noundef %conv15, i64 noundef %conv20) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @__bpf_trace_kmem_alloc_node(ptr noundef %__data, i32 noundef %call_site, ptr noundef %ptr, i32 noundef %bytes_req, i32 noundef %bytes_alloc, i32 noundef %gfp_flags, i32 noundef %node) #0 align 64 {
entry:
  %__src = alloca i32, align 4
  %__dst = alloca i32, align 4
  %__src1 = alloca ptr, align 4
  %__dst2 = alloca i32, align 4
  %__src6 = alloca i32, align 4
  %__dst7 = alloca i32, align 4
  %__src11 = alloca i32, align 4
  %__dst12 = alloca i32, align 4
  %__src16 = alloca i32, align 4
  %__dst17 = alloca i32, align 4
  %__src21 = alloca i32, align 4
  %__dst22 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__src) #18
  store i32 %call_site, ptr %__src, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__dst) #18
  store i32 -1, ptr %__dst, align 4, !annotation !10
  %call = call ptr @__memcpy(ptr noundef nonnull %__dst, ptr noundef nonnull %__src, i32 noundef 4) #19
  %0 = load i32, ptr %__dst, align 4
  %conv = zext i32 %0 to i64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__dst) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__src) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__src1) #18
  store ptr %ptr, ptr %__src1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__dst2) #18
  store i32 -1, ptr %__dst2, align 4, !annotation !10
  %call3 = call ptr @__memcpy(ptr noundef nonnull %__dst2, ptr noundef nonnull %__src1, i32 noundef 4) #19
  %1 = load i32, ptr %__dst2, align 4
  %conv5 = zext i32 %1 to i64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__dst2) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__src1) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__src6) #18
  store i32 %bytes_req, ptr %__src6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__dst7) #18
  store i32 -1, ptr %__dst7, align 4, !annotation !10
  %call8 = call ptr @__memcpy(ptr noundef nonnull %__dst7, ptr noundef nonnull %__src6, i32 noundef 4) #19
  %2 = load i32, ptr %__dst7, align 4
  %conv10 = zext i32 %2 to i64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__dst7) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__src6) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__src11) #18
  store i32 %bytes_alloc, ptr %__src11, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__dst12) #18
  store i32 -1, ptr %__dst12, align 4, !annotation !10
  %call13 = call ptr @__memcpy(ptr noundef nonnull %__dst12, ptr noundef nonnull %__src11, i32 noundef 4) #19
  %3 = load i32, ptr %__dst12, align 4
  %conv15 = zext i32 %3 to i64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__dst12) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__src11) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__src16) #18
  store i32 %gfp_flags, ptr %__src16, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__dst17) #18
  store i32 -1, ptr %__dst17, align 4, !annotation !10
  %call18 = call ptr @__memcpy(ptr noundef nonnull %__dst17, ptr noundef nonnull %__src16, i32 noundef 4) #19
  %4 = load i32, ptr %__dst17, align 4
  %conv20 = zext i32 %4 to i64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__dst17) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__src16) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__src21) #18
  store i32 %node, ptr %__src21, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__dst22) #18
  store i32 -1, ptr %__dst22, align 4, !annotation !10
  %call23 = call ptr @__memcpy(ptr noundef nonnull %__dst22, ptr noundef nonnull %__src21, i32 noundef 4) #19
  %5 = load i32, ptr %__dst22, align 4
  %conv25 = zext i32 %5 to i64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__dst22) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__src21) #18
  call void @bpf_trace_run6(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv5, i64 noundef %conv10, i64 noundef %conv15, i64 noundef %conv20, i64 noundef %conv25) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @__bpf_trace_kfree(ptr noundef %__data, i32 noundef %call_site, ptr noundef %ptr) #0 align 64 {
entry:
  %__src = alloca i32, align 4
  %__dst = alloca i32, align 4
  %__src1 = alloca ptr, align 4
  %__dst2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__src) #18
  store i32 %call_site, ptr %__src, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__dst) #18
  store i32 -1, ptr %__dst, align 4, !annotation !10
  %call = call ptr @__memcpy(ptr noundef nonnull %__dst, ptr noundef nonnull %__src, i32 noundef 4) #19
  %0 = load i32, ptr %__dst, align 4
  %conv = zext i32 %0 to i64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__dst) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__src) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__src1) #18
  store ptr %ptr, ptr %__src1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__dst2) #18
  store i32 -1, ptr %__dst2, align 4, !annotation !10
  %call3 = call ptr @__memcpy(ptr noundef nonnull %__dst2, ptr noundef nonnull %__src1, i32 noundef 4) #19
  %1 = load i32, ptr %__dst2, align 4
  %conv5 = zext i32 %1 to i64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__dst2) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__src1) #18
  call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv5) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @__bpf_trace_kmem_cache_free(ptr noundef %__data, i32 noundef %call_site, ptr noundef %ptr, ptr noundef %name) #0 align 64 {
entry:
  %__src = alloca i32, align 4
  %__dst = alloca i32, align 4
  %__src1 = alloca ptr, align 4
  %__dst2 = alloca i32, align 4
  %__src6 = alloca ptr, align 4
  %__dst7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__src) #18
  store i32 %call_site, ptr %__src, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__dst) #18
  store i32 -1, ptr %__dst, align 4, !annotation !10
  %call = call ptr @__memcpy(ptr noundef nonnull %__dst, ptr noundef nonnull %__src, i32 noundef 4) #19
  %0 = load i32, ptr %__dst, align 4
  %conv = zext i32 %0 to i64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__dst) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__src) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__src1) #18
  store ptr %ptr, ptr %__src1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__dst2) #18
  store i32 -1, ptr %__dst2, align 4, !annotation !10
  %call3 = call ptr @__memcpy(ptr noundef nonnull %__dst2, ptr noundef nonnull %__src1, i32 noundef 4) #19
  %1 = load i32, ptr %__dst2, align 4
  %conv5 = zext i32 %1 to i64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__dst2) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__src1) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__src6) #18
  store ptr %name, ptr %__src6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__dst7) #18
  store i32 -1, ptr %__dst7, align 4, !annotation !10
  %call8 = call ptr @__memcpy(ptr noundef nonnull %__dst7, ptr noundef nonnull %__src6, i32 noundef 4) #19
  %2 = load i32, ptr %__dst7, align 4
  %conv10 = zext i32 %2 to i64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__dst7) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__src6) #18
  call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv5, i64 noundef %conv10) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @__bpf_trace_mm_page_free(ptr noundef %__data, ptr noundef %page, i32 noundef %order) #0 align 64 {
entry:
  %__src = alloca ptr, align 4
  %__dst = alloca i32, align 4
  %__src1 = alloca i32, align 4
  %__dst2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__src) #18
  store ptr %page, ptr %__src, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__dst) #18
  store i32 -1, ptr %__dst, align 4, !annotation !10
  %call = call ptr @__memcpy(ptr noundef nonnull %__dst, ptr noundef nonnull %__src, i32 noundef 4) #19
  %0 = load i32, ptr %__dst, align 4
  %conv = zext i32 %0 to i64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__dst) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__src) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__src1) #18
  store i32 %order, ptr %__src1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__dst2) #18
  store i32 -1, ptr %__dst2, align 4, !annotation !10
  %call3 = call ptr @__memcpy(ptr noundef nonnull %__dst2, ptr noundef nonnull %__src1, i32 noundef 4) #19
  %1 = load i32, ptr %__dst2, align 4
  %conv5 = zext i32 %1 to i64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__dst2) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__src1) #18
  call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv5) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @__bpf_trace_mm_page_free_batched(ptr noundef %__data, ptr noundef %page) #0 align 64 {
entry:
  %__src = alloca ptr, align 4
  %__dst = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__src) #18
  store ptr %page, ptr %__src, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__dst) #18
  store i32 -1, ptr %__dst, align 4, !annotation !10
  %call = call ptr @__memcpy(ptr noundef nonnull %__dst, ptr noundef nonnull %__src, i32 noundef 4) #19
  %0 = load i32, ptr %__dst, align 4
  %conv = zext i32 %0 to i64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__dst) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__src) #18
  call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @__bpf_trace_mm_page_alloc(ptr noundef %__data, ptr noundef %page, i32 noundef %order, i32 noundef %gfp_flags, i32 noundef %migratetype) #0 align 64 {
entry:
  %__src = alloca ptr, align 4
  %__dst = alloca i32, align 4
  %__src1 = alloca i32, align 4
  %__dst2 = alloca i32, align 4
  %__src6 = alloca i32, align 4
  %__dst7 = alloca i32, align 4
  %__src11 = alloca i32, align 4
  %__dst12 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__src) #18
  store ptr %page, ptr %__src, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__dst) #18
  store i32 -1, ptr %__dst, align 4, !annotation !10
  %call = call ptr @__memcpy(ptr noundef nonnull %__dst, ptr noundef nonnull %__src, i32 noundef 4) #19
  %0 = load i32, ptr %__dst, align 4
  %conv = zext i32 %0 to i64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__dst) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__src) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__src1) #18
  store i32 %order, ptr %__src1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__dst2) #18
  store i32 -1, ptr %__dst2, align 4, !annotation !10
  %call3 = call ptr @__memcpy(ptr noundef nonnull %__dst2, ptr noundef nonnull %__src1, i32 noundef 4) #19
  %1 = load i32, ptr %__dst2, align 4
  %conv5 = zext i32 %1 to i64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__dst2) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__src1) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__src6) #18
  store i32 %gfp_flags, ptr %__src6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__dst7) #18
  store i32 -1, ptr %__dst7, align 4, !annotation !10
  %call8 = call ptr @__memcpy(ptr noundef nonnull %__dst7, ptr noundef nonnull %__src6, i32 noundef 4) #19
  %2 = load i32, ptr %__dst7, align 4
  %conv10 = zext i32 %2 to i64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__dst7) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__src6) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__src11) #18
  store i32 %migratetype, ptr %__src11, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__dst12) #18
  store i32 -1, ptr %__dst12, align 4, !annotation !10
  %call13 = call ptr @__memcpy(ptr noundef nonnull %__dst12, ptr noundef nonnull %__src11, i32 noundef 4) #19
  %3 = load i32, ptr %__dst12, align 4
  %conv15 = zext i32 %3 to i64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__dst12) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__src11) #18
  call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv5, i64 noundef %conv10, i64 noundef %conv15) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @__bpf_trace_mm_page(ptr noundef %__data, ptr noundef %page, i32 noundef %order, i32 noundef %migratetype) #0 align 64 {
entry:
  %__src = alloca ptr, align 4
  %__dst = alloca i32, align 4
  %__src1 = alloca i32, align 4
  %__dst2 = alloca i32, align 4
  %__src6 = alloca i32, align 4
  %__dst7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__src) #18
  store ptr %page, ptr %__src, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__dst) #18
  store i32 -1, ptr %__dst, align 4, !annotation !10
  %call = call ptr @__memcpy(ptr noundef nonnull %__dst, ptr noundef nonnull %__src, i32 noundef 4) #19
  %0 = load i32, ptr %__dst, align 4
  %conv = zext i32 %0 to i64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__dst) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__src) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__src1) #18
  store i32 %order, ptr %__src1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__dst2) #18
  store i32 -1, ptr %__dst2, align 4, !annotation !10
  %call3 = call ptr @__memcpy(ptr noundef nonnull %__dst2, ptr noundef nonnull %__src1, i32 noundef 4) #19
  %1 = load i32, ptr %__dst2, align 4
  %conv5 = zext i32 %1 to i64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__dst2) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__src1) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__src6) #18
  store i32 %migratetype, ptr %__src6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__dst7) #18
  store i32 -1, ptr %__dst7, align 4, !annotation !10
  %call8 = call ptr @__memcpy(ptr noundef nonnull %__dst7, ptr noundef nonnull %__src6, i32 noundef 4) #19
  %2 = load i32, ptr %__dst7, align 4
  %conv10 = zext i32 %2 to i64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__dst7) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__src6) #18
  call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv5, i64 noundef %conv10) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @__bpf_trace_mm_page_pcpu_drain(ptr noundef %__data, ptr noundef %page, i32 noundef %order, i32 noundef %migratetype) #0 align 64 {
entry:
  %__src = alloca ptr, align 4
  %__dst = alloca i32, align 4
  %__src1 = alloca i32, align 4
  %__dst2 = alloca i32, align 4
  %__src6 = alloca i32, align 4
  %__dst7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__src) #18
  store ptr %page, ptr %__src, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__dst) #18
  store i32 -1, ptr %__dst, align 4, !annotation !10
  %call = call ptr @__memcpy(ptr noundef nonnull %__dst, ptr noundef nonnull %__src, i32 noundef 4) #19
  %0 = load i32, ptr %__dst, align 4
  %conv = zext i32 %0 to i64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__dst) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__src) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__src1) #18
  store i32 %order, ptr %__src1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__dst2) #18
  store i32 -1, ptr %__dst2, align 4, !annotation !10
  %call3 = call ptr @__memcpy(ptr noundef nonnull %__dst2, ptr noundef nonnull %__src1, i32 noundef 4) #19
  %1 = load i32, ptr %__dst2, align 4
  %conv5 = zext i32 %1 to i64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__dst2) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__src1) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__src6) #18
  store i32 %migratetype, ptr %__src6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__dst7) #18
  store i32 -1, ptr %__dst7, align 4, !annotation !10
  %call8 = call ptr @__memcpy(ptr noundef nonnull %__dst7, ptr noundef nonnull %__src6, i32 noundef 4) #19
  %2 = load i32, ptr %__dst7, align 4
  %conv10 = zext i32 %2 to i64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__dst7) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__src6) #18
  call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv5, i64 noundef %conv10) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @__bpf_trace_mm_page_alloc_extfrag(ptr noundef %__data, ptr noundef %page, i32 noundef %alloc_order, i32 noundef %fallback_order, i32 noundef %alloc_migratetype, i32 noundef %fallback_migratetype) #0 align 64 {
entry:
  %__src = alloca ptr, align 4
  %__dst = alloca i32, align 4
  %__src1 = alloca i32, align 4
  %__dst2 = alloca i32, align 4
  %__src6 = alloca i32, align 4
  %__dst7 = alloca i32, align 4
  %__src11 = alloca i32, align 4
  %__dst12 = alloca i32, align 4
  %__src16 = alloca i32, align 4
  %__dst17 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__src) #18
  store ptr %page, ptr %__src, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__dst) #18
  store i32 -1, ptr %__dst, align 4, !annotation !10
  %call = call ptr @__memcpy(ptr noundef nonnull %__dst, ptr noundef nonnull %__src, i32 noundef 4) #19
  %0 = load i32, ptr %__dst, align 4
  %conv = zext i32 %0 to i64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__dst) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__src) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__src1) #18
  store i32 %alloc_order, ptr %__src1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__dst2) #18
  store i32 -1, ptr %__dst2, align 4, !annotation !10
  %call3 = call ptr @__memcpy(ptr noundef nonnull %__dst2, ptr noundef nonnull %__src1, i32 noundef 4) #19
  %1 = load i32, ptr %__dst2, align 4
  %conv5 = zext i32 %1 to i64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__dst2) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__src1) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__src6) #18
  store i32 %fallback_order, ptr %__src6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__dst7) #18
  store i32 -1, ptr %__dst7, align 4, !annotation !10
  %call8 = call ptr @__memcpy(ptr noundef nonnull %__dst7, ptr noundef nonnull %__src6, i32 noundef 4) #19
  %2 = load i32, ptr %__dst7, align 4
  %conv10 = zext i32 %2 to i64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__dst7) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__src6) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__src11) #18
  store i32 %alloc_migratetype, ptr %__src11, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__dst12) #18
  store i32 -1, ptr %__dst12, align 4, !annotation !10
  %call13 = call ptr @__memcpy(ptr noundef nonnull %__dst12, ptr noundef nonnull %__src11, i32 noundef 4) #19
  %3 = load i32, ptr %__dst12, align 4
  %conv15 = zext i32 %3 to i64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__dst12) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__src11) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__src16) #18
  store i32 %fallback_migratetype, ptr %__src16, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__dst17) #18
  store i32 -1, ptr %__dst17, align 4, !annotation !10
  %call18 = call ptr @__memcpy(ptr noundef nonnull %__dst17, ptr noundef nonnull %__src16, i32 noundef 4) #19
  %4 = load i32, ptr %__dst17, align 4
  %conv20 = zext i32 %4 to i64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__dst17) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__src16) #18
  call void @bpf_trace_run5(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv5, i64 noundef %conv10, i64 noundef %conv15, i64 noundef %conv20) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @__bpf_trace_rss_stat(ptr noundef %__data, ptr noundef %mm, i32 noundef %member, i32 noundef %count) #0 align 64 {
entry:
  %__src = alloca ptr, align 4
  %__dst = alloca i32, align 4
  %__src1 = alloca i32, align 4
  %__dst2 = alloca i32, align 4
  %__src6 = alloca i32, align 4
  %__dst7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__src) #18
  store ptr %mm, ptr %__src, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__dst) #18
  store i32 -1, ptr %__dst, align 4, !annotation !10
  %call = call ptr @__memcpy(ptr noundef nonnull %__dst, ptr noundef nonnull %__src, i32 noundef 4) #19
  %0 = load i32, ptr %__dst, align 4
  %conv = zext i32 %0 to i64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__dst) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__src) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__src1) #18
  store i32 %member, ptr %__src1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__dst2) #18
  store i32 -1, ptr %__dst2, align 4, !annotation !10
  %call3 = call ptr @__memcpy(ptr noundef nonnull %__dst2, ptr noundef nonnull %__src1, i32 noundef 4) #19
  %1 = load i32, ptr %__dst2, align 4
  %conv5 = zext i32 %1 to i64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__dst2) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__src1) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__src6) #18
  store i32 %count, ptr %__src6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__dst7) #18
  store i32 -1, ptr %__dst7, align 4, !annotation !10
  %call8 = call ptr @__memcpy(ptr noundef nonnull %__dst7, ptr noundef nonnull %__src6, i32 noundef 4) #19
  %2 = load i32, ptr %__dst7, align 4
  %conv10 = zext i32 %2 to i64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__dst7) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__src6) #18
  call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv5, i64 noundef %conv10) #19
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync)
define internal i32 @setup_slab_nomerge(ptr nocapture noundef readnone %str) #3 section ".init.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 true, ptr @slab_nomerge, align 1
  ret i32 1
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync)
define internal i32 @setup_slab_merge(ptr nocapture noundef readnone %str) #3 section ".init.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 false, ptr @slab_nomerge, align 1
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @kmem_cache_size(ptr nocapture noundef readonly %s) #4 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %object_size = getelementptr inbounds %struct.kmem_cache, ptr %s, i32 0, i32 4
  %0 = load i32, ptr %object_size, align 4
  ret i32 %0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__kmem_cache_free_bulk(ptr noundef %s, i32 noundef %nr, ptr nocapture noundef readonly %p) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp7.not = icmp eq i32 %nr, 0
  br i1 %cmp7.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not = icmp eq ptr %s, null
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %i.08 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %arrayidx1 = getelementptr ptr, ptr %p, i32 %i.08
  %0 = load ptr, ptr %arrayidx1, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  tail call void @kmem_cache_free(ptr noundef nonnull %s, ptr noundef %0) #19
  br label %for.inc

if.else:                                          ; preds = %for.body
  tail call void @kfree(ptr noundef %0) #19
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then
  %inc = add nuw i32 %i.08, 1
  %exitcond.not = icmp eq i32 %inc, %nr
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__kmem_cache_alloc_bulk(ptr noundef %s, i32 noundef %flags, i32 noundef %nr, ptr nocapture noundef %p) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp10.not = icmp eq i32 %nr, 0
  br i1 %cmp10.not, label %cleanup1, label %for.body

for.body:                                         ; preds = %for.inc.critedge, %entry
  %i.011 = phi i32 [ %inc, %for.inc.critedge ], [ 0, %entry ]
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %s, i32 noundef %flags) #19
  %arrayidx = getelementptr ptr, ptr %p, i32 %i.011
  store ptr %call, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %for.inc.critedge

if.then:                                          ; preds = %for.body
  %cmp7.not.i = icmp eq i32 %i.011, 0
  br i1 %cmp7.not.i, label %cleanup1, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %if.then
  %tobool.not.i = icmp eq ptr %s, null
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %for.body.lr.ph.i
  %i.08.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i ]
  %arrayidx1.i = getelementptr ptr, ptr %p, i32 %i.08.i
  %0 = load ptr, ptr %arrayidx1.i, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  tail call void @kmem_cache_free(ptr noundef nonnull %s, ptr noundef %0) #19
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  tail call void @kfree(ptr noundef %0) #19
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then.i
  %inc.i = add nuw i32 %i.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %i.011
  br i1 %exitcond.not.i, label %cleanup1, label %for.body.i

for.inc.critedge:                                 ; preds = %for.body
  %inc = add nuw i32 %i.011, 1
  %exitcond.not = icmp eq i32 %inc, %nr
  br i1 %exitcond.not, label %cleanup1, label %for.body

cleanup1:                                         ; preds = %for.inc.critedge, %for.inc.i, %if.then, %entry
  %retval.2 = phi i32 [ 0, %if.then ], [ 0, %entry ], [ 0, %for.inc.i ], [ %nr, %for.inc.critedge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @slab_unmergeable(ptr nocapture noundef readonly %s) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %.b13 = load i1, ptr @slab_nomerge, align 1
  br i1 %.b13, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.kmem_cache, ptr %s, i32 0, i32 1
  %0 = load i32, ptr %flags, align 4
  %call1.i = tail call i32 @__kasan_never_merge() #19
  %or = or i32 %call1.i, 44633088
  %and = and i32 %or, %0
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end, label %return

if.end:                                           ; preds = %lor.lhs.false
  %ctor = getelementptr inbounds %struct.kmem_cache, ptr %s, i32 0, i32 14
  %1 = load ptr, ptr %ctor, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.end4, label %return

if.end4:                                          ; preds = %if.end
  %usersize = getelementptr inbounds %struct.kmem_cache, ptr %s, i32 0, i32 25
  %2 = load i32, ptr %usersize, align 4
  %tobool5.not = icmp eq i32 %2, 0
  br i1 %tobool5.not, label %if.end7, label %return

if.end7:                                          ; preds = %if.end4
  %refcount = getelementptr inbounds %struct.kmem_cache, ptr %s, i32 0, i32 13
  %3 = load i32, ptr %refcount, align 4
  %.lobit = lshr i32 %3, 31
  br label %return

return:                                           ; preds = %if.end7, %if.end4, %if.end, %lor.lhs.false, %entry
  %retval.0 = phi i32 [ 1, %lor.lhs.false ], [ 1, %entry ], [ 1, %if.end ], [ 1, %if.end4 ], [ %.lobit, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @find_mergeable(i32 noundef %size, i32 noundef %align, i32 noundef %flags, ptr noundef %name, ptr noundef readnone %ctor) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %.b63 = load i1, ptr @slab_nomerge, align 1
  %tobool1.not = icmp ne ptr %ctor, null
  %0 = or i1 %tobool1.not, %.b63
  br i1 %0, label %cleanup, label %if.end3

if.end3:                                          ; preds = %entry
  %add = add i32 %size, 3
  %and = and i32 %add, -4
  %and.i = and i32 %flags, 8192
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %calculate_alignment.exit, label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i, %if.end3
  %ralign.0.i = phi i32 [ %div13.i, %while.cond.i ], [ 128, %if.end3 ]
  %div13.i = lshr i32 %ralign.0.i, 1
  %cmp.not.i = icmp ult i32 %div13.i, %and
  br i1 %cmp.not.i, label %while.end.i, label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  %1 = tail call i32 @llvm.umax.i32(i32 %ralign.0.i, i32 %align) #18
  br label %calculate_alignment.exit

calculate_alignment.exit:                         ; preds = %while.end.i, %if.end3
  %align.addr.0.i = phi i32 [ %1, %while.end.i ], [ %align, %if.end3 ]
  %2 = tail call i32 @llvm.umax.i32(i32 %align.addr.0.i, i32 8) #18
  %add.i = add i32 %2, 3
  %and6.i = and i32 %add.i, -4
  %sub = add i32 %and, -1
  %add4 = add i32 %sub, %and6.i
  %neg = sub i32 0, %and6.i
  %and6 = and i32 %add4, %neg
  %call7 = tail call i32 @kmem_cache_flags(i32 noundef %and6, i32 noundef %flags, ptr noundef %name) #19
  %call1.i = tail call i32 @__kasan_never_merge() #19
  %or = or i32 %call1.i, 44633088
  %and9 = and i32 %or, %call7
  %tobool10.not = icmp ne i32 %and9, 0
  %.pn71 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @slab_caches, i32 0, i32 1), align 4
  %cmp.not72 = icmp eq ptr %.pn71, @slab_caches
  %or.cond75 = select i1 %tobool10.not, i1 true, i1 %cmp.not72
  br i1 %or.cond75, label %cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %calculate_alignment.exit
  %.b13.i.pre77 = load i1, ptr @slab_nomerge, align 1
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.preheader
  %.b13.i = phi i1 [ %.b13.i78, %for.inc ], [ %.b13.i.pre77, %for.body.preheader ]
  %.pn73 = phi ptr [ %.pn, %for.inc ], [ %.pn71, %for.body.preheader ]
  br i1 %.b13.i, label %for.inc, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %for.body
  %flags.i = getelementptr i8, ptr %.pn73, i32 -76
  %3 = load i32, ptr %flags.i, align 4
  %call1.i.i = tail call i32 @__kasan_never_merge() #19
  %or.i = or i32 %call1.i.i, 44633088
  %and.i66 = and i32 %or.i, %3
  %tobool1.not.i = icmp eq i32 %and.i66, 0
  %.b13.i.pre = load i1, ptr @slab_nomerge, align 1
  br i1 %tobool1.not.i, label %if.end.i, label %for.inc

if.end.i:                                         ; preds = %lor.lhs.false.i
  %ctor.i = getelementptr i8, ptr %.pn73, i32 -20
  %4 = load ptr, ptr %ctor.i, align 4
  %tobool2.not.i = icmp eq ptr %4, null
  br i1 %tobool2.not.i, label %if.end4.i, label %for.inc

if.end4.i:                                        ; preds = %if.end.i
  %usersize.i = getelementptr i8, ptr %.pn73, i32 168
  %5 = load i32, ptr %usersize.i, align 4
  %tobool5.not.i = icmp eq i32 %5, 0
  br i1 %tobool5.not.i, label %slab_unmergeable.exit, label %for.inc

slab_unmergeable.exit:                            ; preds = %if.end4.i
  %refcount.i = getelementptr i8, ptr %.pn73, i32 -24
  %6 = load i32, ptr %refcount.i, align 4
  %tobool14.not = icmp sgt i32 %6, -1
  br i1 %tobool14.not, label %if.end16, label %for.inc

if.end16:                                         ; preds = %slab_unmergeable.exit
  %size17 = getelementptr i8, ptr %.pn73, i32 -68
  %7 = load i32, ptr %size17, align 4
  %cmp18 = icmp ult i32 %7, %and6
  br i1 %cmp18, label %for.inc, label %if.end20

if.end20:                                         ; preds = %if.end16
  %8 = load i32, ptr %flags.i, align 4
  %9 = xor i32 %8, %call7
  %10 = and i32 %9, 67289088
  %cmp24.not = icmp ne i32 %10, 0
  %and30 = and i32 %7, %neg
  %cmp32.not = icmp ne i32 %and30, %7
  %or.cond = select i1 %cmp24.not, i1 true, i1 %cmp32.not
  %sub36 = sub i32 %7, %and6
  %cmp37 = icmp ugt i32 %sub36, 3
  %or.cond64 = select i1 %or.cond, i1 true, i1 %cmp37
  br i1 %or.cond64, label %for.inc, label %cleanup.loopexit.split.loop.exit

for.inc:                                          ; preds = %if.end20, %if.end16, %slab_unmergeable.exit, %if.end4.i, %if.end.i, %lor.lhs.false.i, %for.body
  %.b13.i78 = phi i1 [ %.b13.i.pre, %if.end4.i ], [ %.b13.i.pre, %if.end.i ], [ true, %for.body ], [ %.b13.i.pre, %lor.lhs.false.i ], [ %.b13.i.pre, %if.end20 ], [ %.b13.i.pre, %if.end16 ], [ %.b13.i.pre, %slab_unmergeable.exit ]
  %prev = getelementptr inbounds %struct.list_head, ptr %.pn73, i32 0, i32 1
  %.pn = load ptr, ptr %prev, align 4
  %cmp.not = icmp eq ptr %.pn, @slab_caches
  br i1 %cmp.not, label %cleanup, label %for.body

cleanup.loopexit.split.loop.exit:                 ; preds = %if.end20
  %s.0.le = getelementptr i8, ptr %.pn73, i32 -80
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split.loop.exit, %for.inc, %calculate_alignment.exit, %entry
  %retval.0 = phi ptr [ null, %entry ], [ null, %calculate_alignment.exit ], [ %s.0.le, %cleanup.loopexit.split.loop.exit ], [ null, %for.inc ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kmem_cache_flags(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @kmem_cache_create_usercopy(ptr noundef %name, i32 noundef %size, i32 noundef %align, i32 noundef %flags, i32 noundef %useroffset, i32 noundef %usersize, ptr noundef %ctor) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 2166016
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @static_key_enable(ptr noundef nonnull @slub_debug_enabled) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @slab_mutex, i32 noundef 0) #19
  %tobool.not.i = icmp eq ptr %name, null
  br i1 %tobool.not.i, label %kmem_cache_sanity_check.exit, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.end
  %0 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = load volatile i32, ptr %preempt_count.i.i, align 4
  %and.i = and i32 %2, 15728640
  %3 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %and.i.i38.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i38.i to ptr
  %preempt_count.i39.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = load volatile i32, ptr %preempt_count.i39.i, align 4
  %and2.i = and i32 %5, 983040
  %or.i = or i32 %and2.i, %and.i
  %6 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %and.i.i40.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i40.i to ptr
  %preempt_count.i41.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = load volatile i32, ptr %preempt_count.i41.i, align 4
  %and4.i = and i32 %8, 65280
  %or5.i = or i32 %or.i, %and4.i
  %tobool6.i = icmp ne i32 %or5.i, 0
  %cmp.i = icmp ugt i32 %size, 8388608
  %or.cond.i = or i1 %cmp.i, %tobool6.i
  br i1 %or.cond.i, label %kmem_cache_sanity_check.exit, label %if.end.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call9.i = tail call ptr @strchr(ptr noundef nonnull %name, i32 noundef 32) #19
  %tobool10.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not.i, label %if.end3, label %do.end21.i, !prof !11

do.end21.i:                                       ; preds = %if.end.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 97, i32 noundef 9, ptr noundef null) #19
  br label %if.end3

kmem_cache_sanity_check.exit:                     ; preds = %lor.lhs.false.i, %if.end
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.264, ptr noundef %name) #20
  br label %if.then85

if.end3:                                          ; preds = %do.end21.i, %if.end.i
  %and4 = and i32 %flags, -83881217
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end7, label %if.then85

if.end7:                                          ; preds = %if.end3
  %and8 = and i32 %flags, 82832640
  %tobool9.not = icmp eq i32 %usersize, 0
  %tobool10 = icmp ne i32 %useroffset, 0
  %9 = and i1 %tobool10, %tobool9.not
  br i1 %9, label %if.end70.sink.split, label %lor.lhs.false.critedge, !prof !12

lor.lhs.false.critedge:                           ; preds = %if.end7
  %cmp = icmp ult i32 %size, %usersize
  %sub = sub i32 %size, %usersize
  %cmp34 = icmp ult i32 %sub, %useroffset
  %10 = or i1 %cmp, %cmp34
  br i1 %10, label %if.end70.sink.split, label %if.end66, !prof !12

if.end66:                                         ; preds = %lor.lhs.false.critedge
  br i1 %tobool9.not, label %if.end70, label %if.end73

if.end70.sink.split:                              ; preds = %lor.lhs.false.critedge, %if.end7
  %.sink = phi i32 [ 344, %if.end7 ], [ 345, %lor.lhs.false.critedge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #19
  br label %if.end70

if.end70:                                         ; preds = %if.end70.sink.split, %if.end66
  %useroffset.addr.0149 = phi i32 [ %useroffset, %if.end66 ], [ 0, %if.end70.sink.split ]
  %call69 = tail call ptr @__kmem_cache_alias(ptr noundef nonnull %name, i32 noundef %size, i32 noundef %align, i32 noundef %and8, ptr noundef %ctor) #19
  %tobool71.not = icmp eq ptr %call69, null
  br i1 %tobool71.not, label %if.end73, label %out_unlock.thread166

if.end73:                                         ; preds = %if.end70, %if.end66
  %usersize.addr.0146155 = phi i32 [ 0, %if.end70 ], [ %usersize, %if.end66 ]
  %useroffset.addr.0148154 = phi i32 [ %useroffset.addr.0149, %if.end70 ], [ %useroffset, %if.end66 ]
  %call74 = tail call ptr @kstrdup_const(ptr noundef nonnull %name, i32 noundef 3264) #19
  %tobool75.not = icmp eq ptr %call74, null
  br i1 %tobool75.not, label %if.then85, label %if.end77

if.end77:                                         ; preds = %if.end73
  %and.i132 = and i32 %flags, 8192
  %tobool.not.i133 = icmp eq i32 %and.i132, 0
  br i1 %tobool.not.i133, label %calculate_alignment.exit, label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i, %if.end77
  %ralign.0.i = phi i32 [ %div13.i, %while.cond.i ], [ 128, %if.end77 ]
  %div13.i = lshr i32 %ralign.0.i, 1
  %cmp.not.i = icmp ult i32 %div13.i, %size
  br i1 %cmp.not.i, label %while.end.i, label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  %11 = tail call i32 @llvm.umax.i32(i32 %ralign.0.i, i32 %align) #18
  br label %calculate_alignment.exit

calculate_alignment.exit:                         ; preds = %while.end.i, %if.end77
  %align.addr.0.i = phi i32 [ %11, %while.end.i ], [ %align, %if.end77 ]
  %12 = tail call i32 @llvm.umax.i32(i32 %align.addr.0.i, i32 8) #18
  %add.i = add i32 %12, 3
  %and6.i = and i32 %add.i, -4
  %add.i135 = add i32 %useroffset.addr.0148154, %usersize.addr.0146155
  %cmp.i136 = icmp ugt i32 %add.i135, %size
  br i1 %cmp.i136, label %do.end.i137, label %if.end.i138, !prof !12

do.end.i137:                                      ; preds = %calculate_alignment.exit
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 242, i32 noundef 9, ptr noundef null) #19
  br label %if.end.i138

if.end.i138:                                      ; preds = %do.end.i137, %calculate_alignment.exit
  %13 = load ptr, ptr @kmem_cache, align 4
  %call.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %13, i32 noundef 3520) #19
  %tobool22.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool22.not.i, label %out_unlock, label %if.end24.i

if.end24.i:                                       ; preds = %if.end.i138
  %spec.select1.i = select i1 %cmp.i136, i32 0, i32 %useroffset.addr.0148154
  %spec.select.i = select i1 %cmp.i136, i32 0, i32 %usersize.addr.0146155
  %name25.i = getelementptr inbounds %struct.kmem_cache, ptr %call.i.i, i32 0, i32 18
  store ptr %call74, ptr %name25.i, align 4
  %object_size26.i = getelementptr inbounds %struct.kmem_cache, ptr %call.i.i, i32 0, i32 4
  store i32 %size, ptr %object_size26.i, align 8
  %size.i = getelementptr inbounds %struct.kmem_cache, ptr %call.i.i, i32 0, i32 3
  store i32 %size, ptr %size.i, align 4
  %align27.i = getelementptr inbounds %struct.kmem_cache, ptr %call.i.i, i32 0, i32 16
  store i32 %and6.i, ptr %align27.i, align 4
  %ctor28.i = getelementptr inbounds %struct.kmem_cache, ptr %call.i.i, i32 0, i32 14
  store ptr %ctor, ptr %ctor28.i, align 4
  %useroffset29.i = getelementptr inbounds %struct.kmem_cache, ptr %call.i.i, i32 0, i32 24
  store i32 %spec.select1.i, ptr %useroffset29.i, align 4
  %usersize30.i = getelementptr inbounds %struct.kmem_cache, ptr %call.i.i, i32 0, i32 25
  store i32 %spec.select.i, ptr %usersize30.i, align 8
  %call31.i = tail call i32 @__kmem_cache_create(ptr noundef nonnull %call.i.i, i32 noundef %and8) #19
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %if.end34.i, label %out_free_cache.i

if.end34.i:                                       ; preds = %if.end24.i
  %refcount.i = getelementptr inbounds %struct.kmem_cache, ptr %call.i.i, i32 0, i32 13
  store i32 1, ptr %refcount.i, align 8
  %list.i = getelementptr inbounds %struct.kmem_cache, ptr %call.i.i, i32 0, i32 19
  %14 = load ptr, ptr @slab_caches, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef nonnull @slab_caches, ptr noundef %14) #19
  br i1 %call.i.i.i, label %if.end.i.i.i, label %create_cache.exit

if.end.i.i.i:                                     ; preds = %if.end34.i
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %list.i, ptr %prev1.i.i.i, align 4
  store ptr %14, ptr %list.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.kmem_cache, ptr %call.i.i, i32 0, i32 19, i32 1
  store ptr @slab_caches, ptr %prev3.i.i.i, align 4
  store volatile ptr %list.i, ptr @slab_caches, align 4
  br label %create_cache.exit

out_free_cache.i:                                 ; preds = %if.end24.i
  %15 = load ptr, ptr @kmem_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %15, ptr noundef nonnull %call.i.i) #19
  %phi.cast.i = inttoptr i32 %call31.i to ptr
  br label %create_cache.exit

create_cache.exit:                                ; preds = %out_free_cache.i, %if.end.i.i.i, %if.end34.i
  %retval.0.i139 = phi ptr [ %call.i.i, %if.end34.i ], [ %call.i.i, %if.end.i.i.i ], [ %phi.cast.i, %out_free_cache.i ]
  %cmp.i140 = icmp ugt ptr %retval.0.i139, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i140, label %out_unlock, label %out_unlock.thread166

out_unlock.thread166:                             ; preds = %create_cache.exit, %if.end70
  %s.1.ph = phi ptr [ %retval.0.i139, %create_cache.exit ], [ %call69, %if.end70 ]
  tail call void @mutex_unlock(ptr noundef nonnull @slab_mutex) #19
  br label %cleanup

out_unlock:                                       ; preds = %create_cache.exit, %if.end.i138
  %retval.0.i139158 = phi ptr [ %retval.0.i139, %create_cache.exit ], [ inttoptr (i32 -12 to ptr), %if.end.i138 ]
  %16 = ptrtoint ptr %retval.0.i139158 to i32
  tail call void @kfree_const(ptr noundef nonnull %call74) #19
  br label %if.then85

if.then85:                                        ; preds = %out_unlock, %if.end73, %if.end3, %kmem_cache_sanity_check.exit
  %flags.addr.0164 = phi i32 [ %and8, %out_unlock ], [ %and8, %if.end73 ], [ %flags, %if.end3 ], [ %flags, %kmem_cache_sanity_check.exit ]
  %err.0163 = phi i32 [ %16, %out_unlock ], [ -12, %if.end73 ], [ -22, %if.end3 ], [ -22, %kmem_cache_sanity_check.exit ]
  tail call void @mutex_unlock(ptr noundef nonnull @slab_mutex) #19
  %and86 = and i32 %flags.addr.0164, 262144
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %do.end91, label %if.then88

if.then88:                                        ; preds = %if.then85
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.kmem_cache_create_usercopy, ptr noundef %name, i32 noundef %err.0163) #21
  unreachable

do.end91:                                         ; preds = %if.then85
  %call93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.kmem_cache_create_usercopy, ptr noundef %name, i32 noundef %err.0163) #20
  tail call void @dump_stack() #20
  br label %cleanup

cleanup:                                          ; preds = %do.end91, %out_unlock.thread166
  %retval.0 = phi ptr [ null, %do.end91 ], [ %s.1.ph, %out_unlock.thread166 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmem_cache_alias(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrdup_const(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_const(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @kmem_cache_create(ptr noundef %name, i32 noundef %size, i32 noundef %align, i32 noundef %flags, ptr noundef %ctor) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create_usercopy(ptr noundef %name, i32 noundef %size, i32 noundef %align, i32 noundef %flags, i32 noundef 0, i32 noundef 0, ptr noundef %ctor) #22
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @slab_kmem_cache_release(ptr noundef %s) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__kmem_cache_release(ptr noundef %s) #19
  %name = getelementptr inbounds %struct.kmem_cache, ptr %s, i32 0, i32 18
  %0 = load ptr, ptr %name, align 4
  tail call void @kfree_const(ptr noundef %0) #19
  %1 = load ptr, ptr @kmem_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %1, ptr noundef %s) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kmem_cache_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kmem_cache_destroy(ptr noundef %s) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %s, null
  br i1 %tobool.not, label %return, label %lor.lhs.false, !prof !12

lor.lhs.false:                                    ; preds = %entry
  %0 = tail call ptr @llvm.returnaddress(i32 0) #18
  %1 = ptrtoint ptr %0 to i32
  %call1.i = tail call zeroext i1 @__kasan_check_byte(ptr noundef nonnull %s, i32 noundef %1) #19
  br i1 %call1.i, label %if.end, label %return

if.end:                                           ; preds = %lor.lhs.false
  tail call void @cpus_read_lock() #19
  tail call void @mutex_lock_nested(ptr noundef nonnull @slab_mutex, i32 noundef 0) #19
  %refcount = getelementptr inbounds %struct.kmem_cache, ptr %s, i32 0, i32 13
  %2 = load i32, ptr %refcount, align 4
  %dec = add i32 %2, -1
  store i32 %dec, ptr %refcount, align 4
  %tobool5.not = icmp eq i32 %dec, 0
  br i1 %tobool5.not, label %if.end7, label %out_unlock

if.end7:                                          ; preds = %if.end
  tail call void @kasan_cache_shutdown(ptr noundef nonnull %s) #19
  %call.i = tail call i32 @__kmem_cache_shutdown(ptr noundef nonnull %s) #19
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %do.end

if.end.i:                                         ; preds = %if.end7
  %list.i = getelementptr inbounds %struct.kmem_cache, ptr %s, i32 0, i32 19
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #19
  br i1 %call.i.i.i, label %if.end.i.i.i, label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  %prev.i.i.i = getelementptr inbounds %struct.kmem_cache, ptr %s, i32 0, i32 19, i32 1
  %3 = load ptr, ptr %prev.i.i.i, align 4
  %4 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %3, ptr %prev1.i.i.i.i, align 4
  store volatile ptr %4, ptr %3, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i
  store ptr inttoptr (i32 256 to ptr), ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.kmem_cache, ptr %s, i32 0, i32 19, i32 1
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %flags.i = getelementptr inbounds %struct.kmem_cache, ptr %s, i32 0, i32 1
  %5 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %5, 524288
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then1.i

if.then1.i:                                       ; preds = %list_del.exit.i
  tail call void @sysfs_slab_unlink(ptr noundef nonnull %s) #19
  %6 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @slab_caches_to_rcu_destroy, i32 0, i32 1), align 4
  %call.i.i14.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %6, ptr noundef nonnull @slab_caches_to_rcu_destroy) #19
  br i1 %call.i.i14.i, label %if.end.i.i15.i, label %list_add_tail.exit.i

if.end.i.i15.i:                                   ; preds = %if.then1.i
  store ptr %list.i, ptr getelementptr inbounds (%struct.list_head, ptr @slab_caches_to_rcu_destroy, i32 0, i32 1), align 4
  store ptr @slab_caches_to_rcu_destroy, ptr %list.i, align 4
  store ptr %6, ptr %prev.i.i, align 4
  store volatile ptr %list.i, ptr %6, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i15.i, %if.then1.i
  %7 = load ptr, ptr @system_wq, align 4
  %call.i.i16.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %7, ptr noundef nonnull @slab_caches_to_rcu_destroy_work) #19
  br label %out_unlock

if.else.i:                                        ; preds = %list_del.exit.i
  tail call void @kfence_shutdown_cache(ptr noundef nonnull %s) #19
  tail call void @debugfs_slab_release(ptr noundef nonnull %s) #19
  tail call void @sysfs_slab_unlink(ptr noundef nonnull %s) #19
  tail call void @sysfs_slab_release(ptr noundef nonnull %s) #19
  br label %out_unlock

do.end:                                           ; preds = %if.end7
  %name = getelementptr inbounds %struct.kmem_cache, ptr %s, i32 0, i32 18
  %8 = load ptr, ptr %name, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 504, i32 noundef 9, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.kmem_cache_destroy, ptr noundef %8, ptr noundef %0) #19
  br label %out_unlock

out_unlock:                                       ; preds = %do.end, %if.else.i, %list_add_tail.exit.i, %if.end
  tail call void @mutex_unlock(ptr noundef nonnull @slab_mutex) #19
  tail call void @cpus_read_unlock() #19
  br label %return

return:                                           ; preds = %out_unlock, %lor.lhs.false, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_lock() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_unlock() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kmem_cache_shrink(ptr noundef %cachep) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kasan_cache_shrink(ptr noundef %cachep) #19
  %call = tail call i32 @__kmem_cache_shrink(ptr noundef %cachep) #19
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kasan_cache_shrink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kmem_cache_shrink(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @slab_is_available() local_unnamed_addr #8 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @slab_state, align 4
  %cmp = icmp ugt i32 %0, 2
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @kmem_valid_obj(ptr noundef %object) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp uge ptr %object, inttoptr (i32 4096 to ptr)
  %cmp1 = icmp ugt ptr %object, inttoptr (i32 -1073741825 to ptr)
  %or.cond = and i1 %cmp, %cmp1
  %0 = load ptr, ptr @high_memory, align 4
  %cmp2 = icmp ugt ptr %0, %object
  %or.cond11 = select i1 %or.cond, i1 %cmp2, i1 false
  br i1 %or.cond11, label %land.lhs.true3, label %cleanup

land.lhs.true3:                                   ; preds = %entry
  %1 = ptrtoint ptr %object to i32
  %sub = add i32 %1, 1073741824
  %shr = lshr i32 %sub, 12
  %2 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %2, %shr
  %call = tail call i32 @pfn_valid(i32 noundef %add) #19
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true3
  %3 = load ptr, ptr @mem_map, align 4
  %4 = getelementptr %struct.page, ptr %3, i32 %shr, i32 1
  %5 = load volatile i32, ptr %4, align 4
  %and.i.i = and i32 %5, 1
  %tobool.not.i.i12 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i12, label %if.end.i.i, label %if.then.i.i13, !prof !11

if.then.i.i13:                                    ; preds = %if.end
  %sub.i.i = add i32 %5, -1
  br label %virt_to_folio.exit

if.end.i.i:                                       ; preds = %if.end
  %add.ptr.i = getelementptr %struct.page, ptr %3, i32 %shr
  %6 = ptrtoint ptr %add.ptr.i to i32
  br label %virt_to_folio.exit

virt_to_folio.exit:                               ; preds = %if.end.i.i, %if.then.i.i13
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i13 ], [ %6, %if.end.i.i ]
  %7 = inttoptr i32 %retval.0.i.i to ptr
  %8 = getelementptr inbounds %struct.page, ptr %7, i32 0, i32 1
  %9 = load volatile i32, ptr %8, align 4
  %and.i.i.i = and i32 %9, 1
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_test_slab.exit, label %if.then.i.i, !prof !11

if.then.i.i:                                      ; preds = %virt_to_folio.exit
  tail call void @dump_page(ptr noundef %7, ptr noundef nonnull @.str.267) #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #18, !srcloc !13
  unreachable

folio_test_slab.exit:                             ; preds = %virt_to_folio.exit
  %10 = load volatile i32, ptr %7, align 4
  %11 = and i32 %10, 512
  %tobool.i = icmp ne i32 %11, 0
  br label %cleanup

cleanup:                                          ; preds = %folio_test_slab.exit, %land.lhs.true3, %entry
  %retval.0 = phi i1 [ %tobool.i, %folio_test_slab.exit ], [ false, %land.lhs.true3 ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kmem_dump_obj(ptr noundef %object) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %kp = alloca %struct.kmem_obj_info, align 4
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %kp) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(152) %kp, i8 0, i32 152, i1 false)
  %0 = ptrtoint ptr %object to i32
  %cmp = icmp ugt ptr %object, inttoptr (i32 -1073741825 to ptr)
  %1 = load ptr, ptr @high_memory, align 4
  %cmp1 = icmp ugt ptr %1, %object
  %or.cond = select i1 %cmp, i1 %cmp1, i1 false
  br i1 %or.cond, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %sub = add i32 %0, 1073741824
  %shr = lshr i32 %sub, 12
  %2 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %2, %shr
  %call = tail call i32 @pfn_valid(i32 noundef %add) #19
  %tobool = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %tobool, %land.rhs ]
  %.b251 = load i1, ptr @kmem_dump_obj.__already_done, align 1
  %4 = select i1 %3, i1 true, i1 %.b251
  br i1 %4, label %if.end32, label %if.then, !prof !11

if.then:                                          ; preds = %land.end
  store i1 true, ptr @kmem_dump_obj.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 581, i32 noundef 9, ptr noundef null) #19
  br label %if.end32

if.end32:                                         ; preds = %if.then, %land.end
  br i1 %3, label %if.end42, label %cleanup

if.end42:                                         ; preds = %if.end32
  %5 = load ptr, ptr @mem_map, align 4
  %sub.i.i = add i32 %0, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %6 = getelementptr %struct.page, ptr %5, i32 %shr.i.i, i32 1
  %7 = load volatile i32, ptr %6, align 4
  %and.i.i.i = and i32 %7, 1
  %tobool.not.i.i3.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i3.i, label %if.end.i.i.i, label %if.then.i.i4.i, !prof !11

if.then.i.i4.i:                                   ; preds = %if.end42
  %sub.i.i.i = add i32 %7, -1
  br label %virt_to_folio.exit.i

if.end.i.i.i:                                     ; preds = %if.end42
  %add.ptr.i.i = getelementptr %struct.page, ptr %5, i32 %shr.i.i
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  br label %virt_to_folio.exit.i

virt_to_folio.exit.i:                             ; preds = %if.end.i.i.i, %if.then.i.i4.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i4.i ], [ %8, %if.end.i.i.i ]
  %9 = inttoptr i32 %retval.0.i.i.i to ptr
  %10 = getelementptr inbounds %struct.page, ptr %9, i32 0, i32 1
  %11 = load volatile i32, ptr %10, align 4
  %and.i.i.i.i = and i32 %11, 1
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %virt_to_slab.exit, label %if.then.i.i.i, !prof !11

if.then.i.i.i:                                    ; preds = %virt_to_folio.exit.i
  tail call void @dump_page(ptr noundef %9, ptr noundef nonnull @.str.267) #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #18, !srcloc !13
  unreachable

virt_to_slab.exit:                                ; preds = %virt_to_folio.exit.i
  %12 = load volatile i32, ptr %9, align 4
  %13 = and i32 %12, 512
  %tobool.i.not.i = icmp eq i32 %13, 0
  %call..i = select i1 %tobool.i.not.i, ptr null, ptr %9
  %tobool45.not = icmp eq ptr %call..i, null
  %.b250252 = load i1, ptr @kmem_dump_obj.__already_done.32, align 1
  %lnot56 = xor i1 %.b250252, true
  %14 = select i1 %tobool45.not, i1 %lnot56, i1 false
  br i1 %14, label %if.then65, label %if.end92, !prof !12

if.then65:                                        ; preds = %virt_to_slab.exit
  store i1 true, ptr @kmem_dump_obj.__already_done.32, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 584, i32 noundef 9, ptr noundef null) #19
  br label %if.end92

if.end92:                                         ; preds = %if.then65, %virt_to_slab.exit
  br i1 %tobool45.not, label %do.end104, label %if.end107

do.end104:                                        ; preds = %if.end92
  %call106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #20
  br label %cleanup

if.end107:                                        ; preds = %if.end92
  call void @kmem_obj_info(ptr noundef nonnull %kp, ptr noundef %object, ptr noundef nonnull %call..i) #19
  %kp_slab_cache = getelementptr inbounds %struct.kmem_obj_info, ptr %kp, i32 0, i32 4
  %15 = load ptr, ptr %kp_slab_cache, align 4
  %tobool108.not = icmp eq ptr %15, null
  br i1 %tobool108.not, label %do.end118, label %do.end112

do.end112:                                        ; preds = %if.end107
  %name = getelementptr inbounds %struct.kmem_cache, ptr %15, i32 0, i32 18
  %16 = load ptr, ptr %name, align 4
  %call115 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.31, ptr noundef %16) #20
  br label %if.end121

do.end118:                                        ; preds = %if.end107
  %call120 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.31) #20
  br label %if.end121

if.end121:                                        ; preds = %do.end118, %do.end112
  %kp_objp = getelementptr inbounds %struct.kmem_obj_info, ptr %kp, i32 0, i32 2
  %17 = load ptr, ptr %kp_objp, align 4
  %tobool122.not = icmp eq ptr %17, null
  br i1 %tobool122.not, label %if.end130, label %do.end126

do.end126:                                        ; preds = %if.end121
  %call129 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull %17) #20
  br label %if.end130

if.end130:                                        ; preds = %do.end126, %if.end121
  %kp_data_offset = getelementptr inbounds %struct.kmem_obj_info, ptr %kp, i32 0, i32 3
  %18 = load i32, ptr %kp_data_offset, align 4
  %tobool131.not = icmp eq i32 %18, 0
  br i1 %tobool131.not, label %if.end139, label %do.end135

do.end135:                                        ; preds = %if.end130
  %call138 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %18) #20
  br label %if.end139

if.end139:                                        ; preds = %do.end135, %if.end130
  %19 = load ptr, ptr %kp_objp, align 4
  %tobool141.not = icmp eq ptr %19, null
  br i1 %tobool141.not, label %if.end151, label %if.then142

if.then142:                                       ; preds = %if.end139
  %sub.ptr.rhs.cast = ptrtoint ptr %19 to i32
  %20 = load i32, ptr %kp_data_offset, align 4
  %21 = add i32 %20, %sub.ptr.rhs.cast
  %sub145 = sub i32 %0, %21
  %call150 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %sub145) #20
  br label %if.end151

if.end151:                                        ; preds = %if.then142, %if.end139
  %22 = load ptr, ptr %kp_slab_cache, align 4
  %tobool153.not = icmp eq ptr %22, null
  br i1 %tobool153.not, label %if.end165, label %land.lhs.true154

land.lhs.true154:                                 ; preds = %if.end151
  %usersize = getelementptr inbounds %struct.kmem_cache, ptr %22, i32 0, i32 25
  %23 = load i32, ptr %usersize, align 4
  %tobool156.not = icmp eq i32 %23, 0
  br i1 %tobool156.not, label %if.end165, label %do.end160

do.end160:                                        ; preds = %land.lhs.true154
  %call164 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %23) #20
  br label %if.end165

if.end165:                                        ; preds = %do.end160, %land.lhs.true154, %if.end151
  %kp_ret = getelementptr inbounds %struct.kmem_obj_info, ptr %kp, i32 0, i32 5
  %24 = load ptr, ptr %kp_ret, align 4
  %tobool166.not = icmp eq ptr %24, null
  br i1 %tobool166.not, label %do.end177, label %do.end170

do.end170:                                        ; preds = %if.end165
  %call173 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull %24) #20
  br label %if.end180

do.end177:                                        ; preds = %if.end165
  %call179 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57) #20
  br label %if.end180

if.end180:                                        ; preds = %do.end177, %do.end170
  %arrayidx = getelementptr inbounds %struct.kmem_obj_info, ptr %kp, i32 0, i32 6, i32 0
  %25 = load ptr, ptr %arrayidx, align 4
  %tobool182.not = icmp eq ptr %25, null
  br i1 %tobool182.not, label %for.end, label %do.end187

do.end187:                                        ; preds = %if.end180
  %call191 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull %25) #20
  %arrayidx.1 = getelementptr inbounds %struct.kmem_obj_info, ptr %kp, i32 0, i32 6, i32 1
  %26 = load ptr, ptr %arrayidx.1, align 4
  %tobool182.not.1 = icmp eq ptr %26, null
  br i1 %tobool182.not.1, label %for.end, label %do.end187.1

do.end187.1:                                      ; preds = %do.end187
  %call191.1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull %26) #20
  %arrayidx.2 = getelementptr inbounds %struct.kmem_obj_info, ptr %kp, i32 0, i32 6, i32 2
  %27 = load ptr, ptr %arrayidx.2, align 4
  %tobool182.not.2 = icmp eq ptr %27, null
  br i1 %tobool182.not.2, label %for.end, label %do.end187.2

do.end187.2:                                      ; preds = %do.end187.1
  %call191.2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull %27) #20
  %arrayidx.3 = getelementptr inbounds %struct.kmem_obj_info, ptr %kp, i32 0, i32 6, i32 3
  %28 = load ptr, ptr %arrayidx.3, align 4
  %tobool182.not.3 = icmp eq ptr %28, null
  br i1 %tobool182.not.3, label %for.end, label %do.end187.3

do.end187.3:                                      ; preds = %do.end187.2
  %call191.3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull %28) #20
  %arrayidx.4 = getelementptr inbounds %struct.kmem_obj_info, ptr %kp, i32 0, i32 6, i32 4
  %29 = load ptr, ptr %arrayidx.4, align 4
  %tobool182.not.4 = icmp eq ptr %29, null
  br i1 %tobool182.not.4, label %for.end, label %do.end187.4

do.end187.4:                                      ; preds = %do.end187.3
  %call191.4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull %29) #20
  %arrayidx.5 = getelementptr inbounds %struct.kmem_obj_info, ptr %kp, i32 0, i32 6, i32 5
  %30 = load ptr, ptr %arrayidx.5, align 4
  %tobool182.not.5 = icmp eq ptr %30, null
  br i1 %tobool182.not.5, label %for.end, label %do.end187.5

do.end187.5:                                      ; preds = %do.end187.4
  %call191.5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull %30) #20
  %arrayidx.6 = getelementptr inbounds %struct.kmem_obj_info, ptr %kp, i32 0, i32 6, i32 6
  %31 = load ptr, ptr %arrayidx.6, align 4
  %tobool182.not.6 = icmp eq ptr %31, null
  br i1 %tobool182.not.6, label %for.end, label %do.end187.6

do.end187.6:                                      ; preds = %do.end187.5
  %call191.6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull %31) #20
  %arrayidx.7 = getelementptr inbounds %struct.kmem_obj_info, ptr %kp, i32 0, i32 6, i32 7
  %32 = load ptr, ptr %arrayidx.7, align 4
  %tobool182.not.7 = icmp eq ptr %32, null
  br i1 %tobool182.not.7, label %for.end, label %do.end187.7

do.end187.7:                                      ; preds = %do.end187.6
  %call191.7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull %32) #20
  %arrayidx.8 = getelementptr inbounds %struct.kmem_obj_info, ptr %kp, i32 0, i32 6, i32 8
  %33 = load ptr, ptr %arrayidx.8, align 4
  %tobool182.not.8 = icmp eq ptr %33, null
  br i1 %tobool182.not.8, label %for.end, label %do.end187.8

do.end187.8:                                      ; preds = %do.end187.7
  %call191.8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull %33) #20
  %arrayidx.9 = getelementptr inbounds %struct.kmem_obj_info, ptr %kp, i32 0, i32 6, i32 9
  %34 = load ptr, ptr %arrayidx.9, align 4
  %tobool182.not.9 = icmp eq ptr %34, null
  br i1 %tobool182.not.9, label %for.end, label %do.end187.9

do.end187.9:                                      ; preds = %do.end187.8
  %call191.9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull %34) #20
  %arrayidx.10 = getelementptr inbounds %struct.kmem_obj_info, ptr %kp, i32 0, i32 6, i32 10
  %35 = load ptr, ptr %arrayidx.10, align 4
  %tobool182.not.10 = icmp eq ptr %35, null
  br i1 %tobool182.not.10, label %for.end, label %do.end187.10

do.end187.10:                                     ; preds = %do.end187.9
  %call191.10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull %35) #20
  %arrayidx.11 = getelementptr inbounds %struct.kmem_obj_info, ptr %kp, i32 0, i32 6, i32 11
  %36 = load ptr, ptr %arrayidx.11, align 4
  %tobool182.not.11 = icmp eq ptr %36, null
  br i1 %tobool182.not.11, label %for.end, label %do.end187.11

do.end187.11:                                     ; preds = %do.end187.10
  %call191.11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull %36) #20
  %arrayidx.12 = getelementptr inbounds %struct.kmem_obj_info, ptr %kp, i32 0, i32 6, i32 12
  %37 = load ptr, ptr %arrayidx.12, align 4
  %tobool182.not.12 = icmp eq ptr %37, null
  br i1 %tobool182.not.12, label %for.end, label %do.end187.12

do.end187.12:                                     ; preds = %do.end187.11
  %call191.12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull %37) #20
  %arrayidx.13 = getelementptr inbounds %struct.kmem_obj_info, ptr %kp, i32 0, i32 6, i32 13
  %38 = load ptr, ptr %arrayidx.13, align 4
  %tobool182.not.13 = icmp eq ptr %38, null
  br i1 %tobool182.not.13, label %for.end, label %do.end187.13

do.end187.13:                                     ; preds = %do.end187.12
  %call191.13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull %38) #20
  %arrayidx.14 = getelementptr inbounds %struct.kmem_obj_info, ptr %kp, i32 0, i32 6, i32 14
  %39 = load ptr, ptr %arrayidx.14, align 4
  %tobool182.not.14 = icmp eq ptr %39, null
  br i1 %tobool182.not.14, label %for.end, label %do.end187.14

do.end187.14:                                     ; preds = %do.end187.13
  %call191.14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull %39) #20
  %arrayidx.15 = getelementptr inbounds %struct.kmem_obj_info, ptr %kp, i32 0, i32 6, i32 15
  %40 = load ptr, ptr %arrayidx.15, align 4
  %tobool182.not.15 = icmp eq ptr %40, null
  br i1 %tobool182.not.15, label %for.end, label %do.end187.15

do.end187.15:                                     ; preds = %do.end187.14
  %call191.15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull %40) #20
  br label %for.end

for.end:                                          ; preds = %do.end187.15, %do.end187.14, %do.end187.13, %do.end187.12, %do.end187.11, %do.end187.10, %do.end187.9, %do.end187.8, %do.end187.7, %do.end187.6, %do.end187.5, %do.end187.4, %do.end187.3, %do.end187.2, %do.end187.1, %do.end187, %if.end180
  %kp_free_stack = getelementptr inbounds %struct.kmem_obj_info, ptr %kp, i32 0, i32 7
  %41 = load ptr, ptr %kp_free_stack, align 4
  %tobool193.not = icmp eq ptr %41, null
  br i1 %tobool193.not, label %cleanup, label %if.end200

if.end200:                                        ; preds = %for.end
  %call199 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63) #20
  %.pre = load ptr, ptr %kp_free_stack, align 4
  %tobool206.not = icmp eq ptr %.pre, null
  br i1 %tobool206.not, label %cleanup, label %do.end211

do.end211:                                        ; preds = %if.end200
  %call215 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull %.pre) #20
  %arrayidx205.1 = getelementptr inbounds %struct.kmem_obj_info, ptr %kp, i32 0, i32 7, i32 1
  %42 = load ptr, ptr %arrayidx205.1, align 4
  %tobool206.not.1 = icmp eq ptr %42, null
  br i1 %tobool206.not.1, label %cleanup, label %do.end211.1

do.end211.1:                                      ; preds = %do.end211
  %call215.1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull %42) #20
  %arrayidx205.2 = getelementptr inbounds %struct.kmem_obj_info, ptr %kp, i32 0, i32 7, i32 2
  %43 = load ptr, ptr %arrayidx205.2, align 4
  %tobool206.not.2 = icmp eq ptr %43, null
  br i1 %tobool206.not.2, label %cleanup, label %do.end211.2

do.end211.2:                                      ; preds = %do.end211.1
  %call215.2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull %43) #20
  %arrayidx205.3 = getelementptr inbounds %struct.kmem_obj_info, ptr %kp, i32 0, i32 7, i32 3
  %44 = load ptr, ptr %arrayidx205.3, align 4
  %tobool206.not.3 = icmp eq ptr %44, null
  br i1 %tobool206.not.3, label %cleanup, label %do.end211.3

do.end211.3:                                      ; preds = %do.end211.2
  %call215.3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull %44) #20
  %arrayidx205.4 = getelementptr inbounds %struct.kmem_obj_info, ptr %kp, i32 0, i32 7, i32 4
  %45 = load ptr, ptr %arrayidx205.4, align 4
  %tobool206.not.4 = icmp eq ptr %45, null
  br i1 %tobool206.not.4, label %cleanup, label %do.end211.4

do.end211.4:                                      ; preds = %do.end211.3
  %call215.4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull %45) #20
  %arrayidx205.5 = getelementptr inbounds %struct.kmem_obj_info, ptr %kp, i32 0, i32 7, i32 5
  %46 = load ptr, ptr %arrayidx205.5, align 4
  %tobool206.not.5 = icmp eq ptr %46, null
  br i1 %tobool206.not.5, label %cleanup, label %do.end211.5

do.end211.5:                                      ; preds = %do.end211.4
  %call215.5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull %46) #20
  %arrayidx205.6 = getelementptr inbounds %struct.kmem_obj_info, ptr %kp, i32 0, i32 7, i32 6
  %47 = load ptr, ptr %arrayidx205.6, align 4
  %tobool206.not.6 = icmp eq ptr %47, null
  br i1 %tobool206.not.6, label %cleanup, label %do.end211.6

do.end211.6:                                      ; preds = %do.end211.5
  %call215.6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull %47) #20
  %arrayidx205.7 = getelementptr inbounds %struct.kmem_obj_info, ptr %kp, i32 0, i32 7, i32 7
  %48 = load ptr, ptr %arrayidx205.7, align 4
  %tobool206.not.7 = icmp eq ptr %48, null
  br i1 %tobool206.not.7, label %cleanup, label %do.end211.7

do.end211.7:                                      ; preds = %do.end211.6
  %call215.7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull %48) #20
  %arrayidx205.8 = getelementptr inbounds %struct.kmem_obj_info, ptr %kp, i32 0, i32 7, i32 8
  %49 = load ptr, ptr %arrayidx205.8, align 4
  %tobool206.not.8 = icmp eq ptr %49, null
  br i1 %tobool206.not.8, label %cleanup, label %do.end211.8

do.end211.8:                                      ; preds = %do.end211.7
  %call215.8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull %49) #20
  %arrayidx205.9 = getelementptr inbounds %struct.kmem_obj_info, ptr %kp, i32 0, i32 7, i32 9
  %50 = load ptr, ptr %arrayidx205.9, align 4
  %tobool206.not.9 = icmp eq ptr %50, null
  br i1 %tobool206.not.9, label %cleanup, label %do.end211.9

do.end211.9:                                      ; preds = %do.end211.8
  %call215.9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull %50) #20
  %arrayidx205.10 = getelementptr inbounds %struct.kmem_obj_info, ptr %kp, i32 0, i32 7, i32 10
  %51 = load ptr, ptr %arrayidx205.10, align 4
  %tobool206.not.10 = icmp eq ptr %51, null
  br i1 %tobool206.not.10, label %cleanup, label %do.end211.10

do.end211.10:                                     ; preds = %do.end211.9
  %call215.10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull %51) #20
  %arrayidx205.11 = getelementptr inbounds %struct.kmem_obj_info, ptr %kp, i32 0, i32 7, i32 11
  %52 = load ptr, ptr %arrayidx205.11, align 4
  %tobool206.not.11 = icmp eq ptr %52, null
  br i1 %tobool206.not.11, label %cleanup, label %do.end211.11

do.end211.11:                                     ; preds = %do.end211.10
  %call215.11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull %52) #20
  %arrayidx205.12 = getelementptr inbounds %struct.kmem_obj_info, ptr %kp, i32 0, i32 7, i32 12
  %53 = load ptr, ptr %arrayidx205.12, align 4
  %tobool206.not.12 = icmp eq ptr %53, null
  br i1 %tobool206.not.12, label %cleanup, label %do.end211.12

do.end211.12:                                     ; preds = %do.end211.11
  %call215.12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull %53) #20
  %arrayidx205.13 = getelementptr inbounds %struct.kmem_obj_info, ptr %kp, i32 0, i32 7, i32 13
  %54 = load ptr, ptr %arrayidx205.13, align 4
  %tobool206.not.13 = icmp eq ptr %54, null
  br i1 %tobool206.not.13, label %cleanup, label %do.end211.13

do.end211.13:                                     ; preds = %do.end211.12
  %call215.13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull %54) #20
  %arrayidx205.14 = getelementptr inbounds %struct.kmem_obj_info, ptr %kp, i32 0, i32 7, i32 14
  %55 = load ptr, ptr %arrayidx205.14, align 4
  %tobool206.not.14 = icmp eq ptr %55, null
  br i1 %tobool206.not.14, label %cleanup, label %do.end211.14

do.end211.14:                                     ; preds = %do.end211.13
  %call215.14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull %55) #20
  %arrayidx205.15 = getelementptr inbounds %struct.kmem_obj_info, ptr %kp, i32 0, i32 7, i32 15
  %56 = load ptr, ptr %arrayidx205.15, align 4
  %tobool206.not.15 = icmp eq ptr %56, null
  br i1 %tobool206.not.15, label %cleanup, label %do.end211.15

do.end211.15:                                     ; preds = %do.end211.14
  %call215.15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull %56) #20
  br label %cleanup

cleanup:                                          ; preds = %do.end211.15, %do.end211.14, %do.end211.13, %do.end211.12, %do.end211.11, %do.end211.10, %do.end211.9, %do.end211.8, %do.end211.7, %do.end211.6, %do.end211.5, %do.end211.4, %do.end211.3, %do.end211.2, %do.end211.1, %do.end211, %if.end200, %for.end, %do.end104, %if.end32
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %kp) #18
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_obj_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @create_boot_cache(ptr noundef %s, ptr noundef %name, i32 noundef %size, i32 noundef %flags, i32 noundef %useroffset, i32 noundef %usersize) local_unnamed_addr #10 section ".init.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %name1 = getelementptr inbounds %struct.kmem_cache, ptr %s, i32 0, i32 18
  store ptr %name, ptr %name1, align 4
  %object_size = getelementptr inbounds %struct.kmem_cache, ptr %s, i32 0, i32 4
  store i32 %size, ptr %object_size, align 4
  %size2 = getelementptr inbounds %struct.kmem_cache, ptr %s, i32 0, i32 3
  store i32 %size, ptr %size2, align 4
  %cmp.not.i = icmp eq i32 %size, 0
  br i1 %cmp.not.i, label %is_power_of_2.exit.thread, label %is_power_of_2.exit

is_power_of_2.exit:                               ; preds = %entry
  %0 = tail call i32 @llvm.ctpop.i32(i32 %size) #18, !range !14
  %cmp1.i = icmp ult i32 %0, 2
  %1 = tail call i32 @llvm.umax.i32(i32 %size, i32 128)
  %spec.select = select i1 %cmp1.i, i32 %1, i32 128
  br label %is_power_of_2.exit.thread

is_power_of_2.exit.thread:                        ; preds = %is_power_of_2.exit, %entry
  %2 = phi i32 [ 128, %entry ], [ %spec.select, %is_power_of_2.exit ]
  %and.i = and i32 %flags, 8192
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %calculate_alignment.exit, label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i, %is_power_of_2.exit.thread
  %ralign.0.i = phi i32 [ %div13.i, %while.cond.i ], [ 128, %is_power_of_2.exit.thread ]
  %div13.i = lshr i32 %ralign.0.i, 1
  %cmp.not.i27 = icmp ult i32 %div13.i, %size
  br i1 %cmp.not.i27, label %while.end.i, label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  %3 = tail call i32 @llvm.umax.i32(i32 %ralign.0.i, i32 %2) #18
  br label %calculate_alignment.exit

calculate_alignment.exit:                         ; preds = %while.end.i, %is_power_of_2.exit.thread
  %align.addr.0.i = phi i32 [ %3, %while.end.i ], [ %2, %is_power_of_2.exit.thread ]
  %4 = tail call i32 @llvm.umax.i32(i32 %align.addr.0.i, i32 8) #18
  %add.i = add i32 %4, 3
  %and6.i = and i32 %add.i, -4
  %align4 = getelementptr inbounds %struct.kmem_cache, ptr %s, i32 0, i32 16
  store i32 %and6.i, ptr %align4, align 4
  %useroffset5 = getelementptr inbounds %struct.kmem_cache, ptr %s, i32 0, i32 24
  store i32 %useroffset, ptr %useroffset5, align 4
  %usersize6 = getelementptr inbounds %struct.kmem_cache, ptr %s, i32 0, i32 25
  store i32 %usersize, ptr %usersize6, align 4
  %call7 = tail call i32 @__kmem_cache_create(ptr noundef %s, i32 noundef %flags) #19
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %calculate_alignment.exit
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.67, ptr noundef %name, i32 noundef %size, i32 noundef %call7) #21
  unreachable

if.end9:                                          ; preds = %calculate_alignment.exit
  %refcount = getelementptr inbounds %struct.kmem_cache, ptr %s, i32 0, i32 13
  store i32 -1, ptr %refcount, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kmem_cache_create(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local ptr @create_kmalloc_cache(ptr noundef %name, i32 noundef %size, i32 noundef %flags, i32 noundef %useroffset, i32 noundef %usersize) local_unnamed_addr #10 section ".init.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @kmem_cache, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 2304) #19
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.68, ptr noundef %name) #21
  unreachable

if.end:                                           ; preds = %entry
  tail call void @create_boot_cache(ptr noundef nonnull %call.i, ptr noundef %name, i32 noundef %size, i32 noundef %flags, i32 noundef %useroffset, i32 noundef %usersize) #23
  tail call void @__kasan_cache_create_kmalloc(ptr noundef nonnull %call.i) #19
  %list = getelementptr inbounds %struct.kmem_cache, ptr %call.i, i32 0, i32 19
  %1 = load ptr, ptr @slab_caches, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef nonnull @slab_caches, ptr noundef %1) #19
  br i1 %call.i.i, label %if.end.i.i, label %list_add.exit

if.end.i.i:                                       ; preds = %if.end
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  store ptr %list, ptr %prev1.i.i, align 4
  store ptr %1, ptr %list, align 8
  %prev3.i.i = getelementptr inbounds %struct.kmem_cache, ptr %call.i, i32 0, i32 19, i32 1
  store ptr @slab_caches, ptr %prev3.i.i, align 4
  store volatile ptr %list, ptr @slab_caches, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end
  %refcount = getelementptr inbounds %struct.kmem_cache, ptr %call.i, i32 0, i32 13
  store i32 1, ptr %refcount, align 8
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @kmalloc_slab(i32 noundef %size, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp ult i32 %size, 193
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %tobool.not = icmp eq i32 %size, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  %sub.i57 = add nsw i32 %size, -1
  %div1.i = lshr i32 %sub.i57, 3
  %arrayidx = getelementptr [24 x i8], ptr @size_index, i32 0, i32 %div1.i
  %0 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %0 to i32
  br label %if.end46

if.else:                                          ; preds = %entry
  %cmp2 = icmp ugt i32 %size, 8192
  %.b56 = load i1, ptr @kmalloc_slab.__already_done, align 1
  %lnot8 = xor i1 %.b56, true
  %1 = select i1 %cmp2, i1 %lnot8, i1 false
  br i1 %1, label %if.then12, label %if.end34, !prof !12

if.then12:                                        ; preds = %if.else
  store i1 true, ptr @kmalloc_slab.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 731, i32 noundef 9, ptr noundef null) #19
  br label %if.end34

if.end34:                                         ; preds = %if.then12, %if.else
  br i1 %cmp2, label %cleanup, label %if.end44

if.end44:                                         ; preds = %if.end34
  %sub = add nsw i32 %size, -1
  %2 = tail call i32 @llvm.ctlz.i32(i32 %sub, i1 false) #18, !range !14
  %sub.i = sub nuw nsw i32 32, %2
  br label %if.end46

if.end46:                                         ; preds = %if.end44, %if.end
  %index.0 = phi i32 [ %conv, %if.end ], [ %sub.i, %if.end44 ]
  %and.i = and i32 %flags, 4194321
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %kmalloc_type.exit, label %if.end.i, !prof !11

if.end.i:                                         ; preds = %if.end46
  %and2.i = and i32 %flags, 1
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %kmalloc_type.exit

if.end5.i:                                        ; preds = %if.end.i
  %and6.i = and i32 %flags, 16
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  %..i = select i1 %tobool7.not.i, i32 1, i32 2
  br label %kmalloc_type.exit

kmalloc_type.exit:                                ; preds = %if.end5.i, %if.end.i, %if.end46
  %retval.0.i = phi i32 [ 0, %if.end46 ], [ 3, %if.end.i ], [ %..i, %if.end5.i ]
  %arrayidx49 = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i, i32 %index.0
  %3 = load ptr, ptr %arrayidx49, align 4
  br label %cleanup

cleanup:                                          ; preds = %kmalloc_type.exit, %if.end34, %if.then
  %retval.0 = phi ptr [ %3, %kmalloc_type.exit ], [ inttoptr (i32 16 to ptr), %if.then ], [ null, %if.end34 ]
  ret ptr %retval.0
}

; Function Attrs: cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong writeonly uwtable(sync)
define dso_local void @setup_kmalloc_cache_index_table() local_unnamed_addr #11 section ".init.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.inc

for.inc:                                          ; preds = %for.inc, %entry
  %i.033 = phi i32 [ 8, %entry ], [ %add, %for.inc ]
  %sub.i = add nsw i32 %i.033, -1
  %div1.i = lshr i32 %sub.i, 3
  %arrayidx = getelementptr [24 x i8], ptr @size_index, i32 0, i32 %div1.i
  store i8 7, ptr %arrayidx, align 1
  %add = add nuw nsw i32 %i.033, 8
  %cmp = icmp ult i32 %i.033, 120
  br i1 %cmp, label %for.inc, label %for.body4

for.body4:                                        ; preds = %for.body4, %for.inc
  %i.134 = phi i32 [ %add8, %for.body4 ], [ 72, %for.inc ]
  %sub.i27 = add nsw i32 %i.134, -1
  %div1.i28 = lshr i32 %sub.i27, 3
  %arrayidx6 = getelementptr [24 x i8], ptr @size_index, i32 0, i32 %div1.i28
  store i8 7, ptr %arrayidx6, align 1
  %add8 = add nuw nsw i32 %i.134, 8
  %cmp3 = icmp ult i32 %i.134, 89
  br i1 %cmp3, label %for.body4, label %for.body12

for.body12:                                       ; preds = %for.body12, %for.body4
  %i.235 = phi i32 [ %add16, %for.body12 ], [ 136, %for.body4 ]
  %sub.i29 = add nsw i32 %i.235, -1
  %div1.i30 = lshr i32 %sub.i29, 3
  %arrayidx14 = getelementptr [24 x i8], ptr @size_index, i32 0, i32 %div1.i30
  store i8 8, ptr %arrayidx14, align 1
  %add16 = add nuw nsw i32 %i.235, 8
  %cmp11 = icmp ult i32 %i.235, 185
  br i1 %cmp11, label %for.body12, label %for.end17

for.end17:                                        ; preds = %for.body12
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @create_kmalloc_caches(i32 noundef %flags) local_unnamed_addr #10 section ".init.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc5, %entry
  %type.039 = phi i32 [ 0, %entry ], [ %inc6, %for.inc5 ]
  br label %for.body3

for.body3:                                        ; preds = %for.inc, %for.cond1.preheader
  %i.038 = phi i32 [ 7, %for.cond1.preheader ], [ %inc, %for.inc ]
  %arrayidx4 = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %type.039, i32 %i.038
  %0 = load ptr, ptr %arrayidx4, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body3
  tail call fastcc void @new_kmalloc_cache(i32 noundef %i.038, i32 noundef %type.039, i32 noundef %flags) #23
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body3
  %inc = add nuw nsw i32 %i.038, 1
  %exitcond.not = icmp eq i32 %inc, 14
  br i1 %exitcond.not, label %for.inc5, label %for.body3

for.inc5:                                         ; preds = %for.inc
  %inc6 = add nuw nsw i32 %type.039, 1
  %exitcond42.not = icmp eq i32 %inc6, 3
  br i1 %exitcond42.not, label %for.end7, label %for.cond1.preheader

for.end7:                                         ; preds = %for.inc5
  store i32 3, ptr @slab_state, align 4
  %or = or i32 %flags, 16384
  br label %for.body10

for.body10:                                       ; preds = %if.end20, %for.end7
  %i.140 = phi i32 [ 0, %for.end7 ], [ %inc22, %if.end20 ]
  %arrayidx11 = getelementptr [14 x ptr], ptr @kmalloc_caches, i32 0, i32 %i.140
  %1 = load ptr, ptr %arrayidx11, align 4
  %tobool12.not = icmp eq ptr %1, null
  br i1 %tobool12.not, label %if.end20, label %if.then13

if.then13:                                        ; preds = %for.body10
  %arrayidx15 = getelementptr [26 x %struct.kmalloc_info_struct], ptr @kmalloc_info, i32 0, i32 %i.140, i32 0, i32 3
  %2 = load ptr, ptr %arrayidx15, align 4
  %size = getelementptr [26 x %struct.kmalloc_info_struct], ptr @kmalloc_info, i32 0, i32 %i.140, i32 1
  %3 = load i32, ptr %size, align 4
  %call = tail call ptr @create_kmalloc_cache(ptr noundef %2, i32 noundef %3, i32 noundef %or, i32 noundef 0, i32 noundef %3) #23
  %arrayidx19 = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 3, i32 %i.140
  store ptr %call, ptr %arrayidx19, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then13, %for.body10
  %inc22 = add nuw nsw i32 %i.140, 1
  %exitcond43.not = icmp eq i32 %inc22, 14
  br i1 %exitcond43.not, label %for.end23, label %for.body10

for.end23:                                        ; preds = %if.end20
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @new_kmalloc_cache(i32 noundef %idx, i32 noundef %type, i32 noundef %flags) unnamed_addr #10 section ".init.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  switch i32 %type, label %if.end8 [
    i32 2, label %if.then
    i32 1, label %if.then2
  ]

if.then:                                          ; preds = %entry
  %or = or i32 %flags, 131072
  br label %if.end8

if.then2:                                         ; preds = %entry
  %call = tail call zeroext i1 @mem_cgroup_kmem_disabled() #19
  br i1 %call, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then2
  %arrayidx = getelementptr [14 x ptr], ptr @kmalloc_caches, i32 0, i32 %idx
  %0 = load ptr, ptr %arrayidx, align 4
  %arrayidx5 = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 1, i32 %idx
  store ptr %0, ptr %arrayidx5, align 4
  br label %if.end21

if.end:                                           ; preds = %if.then2
  %or6 = or i32 %flags, 67108864
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then, %entry
  %flags.addr.0 = phi i32 [ %or, %if.then ], [ %or6, %if.end ], [ %flags, %entry ]
  %arrayidx9 = getelementptr [26 x %struct.kmalloc_info_struct], ptr @kmalloc_info, i32 0, i32 %idx
  %arrayidx10 = getelementptr [4 x ptr], ptr %arrayidx9, i32 0, i32 %type
  %1 = load ptr, ptr %arrayidx10, align 4
  %size = getelementptr [26 x %struct.kmalloc_info_struct], ptr @kmalloc_info, i32 0, i32 %idx, i32 1
  %2 = load i32, ptr %size, align 4
  %call14 = tail call ptr @create_kmalloc_cache(ptr noundef %1, i32 noundef %2, i32 noundef %flags.addr.0, i32 noundef 0, i32 noundef %2) #23
  %arrayidx16 = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %type, i32 %idx
  store ptr %call14, ptr %arrayidx16, align 4
  %cmp17 = icmp eq i32 %type, 0
  br i1 %cmp17, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end8
  %refcount = getelementptr inbounds %struct.kmem_cache, ptr %call14, i32 0, i32 13
  store i32 -1, ptr %refcount, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end8, %if.then3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kmalloc_fix_flags(i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.addr = alloca i32, align 4
  %invalid_mask = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %invalid_mask) #18
  %and = and i32 %flags, -67108858
  store i32 %and, ptr %invalid_mask, align 4
  %and1 = and i32 %flags, 67108857
  store i32 %and1, ptr %flags.addr, align 4
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.173, i32 noundef %and, ptr noundef nonnull %invalid_mask, i32 noundef %and1, ptr noundef nonnull %flags.addr) #20
  call void @dump_stack() #20
  %0 = load i32, ptr %flags.addr, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %invalid_mask) #18
  ret i32 %0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong allocsize(0) uwtable(sync)
define dso_local noalias ptr @kmalloc_order(i32 noundef %size, i32 noundef %flags, i32 noundef %order) #12 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, -67108858
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !11

if.then:                                          ; preds = %entry
  %call = tail call i32 @kmalloc_fix_flags(i32 noundef %flags) #22
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %flags.addr.0 = phi i32 [ %call, %if.then ], [ %flags, %entry ]
  %or = or i32 %flags.addr.0, 262144
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef %or, i32 noundef %order, i32 noundef 0, ptr noundef null) #19
  %tobool4.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool4.not, label %if.end13, label %if.then11, !prof !12

if.then11:                                        ; preds = %if.end
  %call12 = tail call ptr @page_address(ptr noundef nonnull %call38.i.i.i) #19
  %shl = shl i32 4096, %order
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !15
  %and.i.i = and i32 %0, 128
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then21.i, label %do.end11.i

do.end11.i:                                       ; preds = %if.then11
  tail call void @__mod_lruvec_page_state(ptr noundef nonnull %call38.i.i.i, i32 noundef 6, i32 noundef %shl) #19
  br label %do.body23.i

if.then21.i:                                      ; preds = %if.then11
  tail call void @trace_hardirqs_off() #19
  tail call void @__mod_lruvec_page_state(ptr noundef nonnull %call38.i.i.i, i32 noundef 6, i32 noundef %shl) #19
  tail call void @trace_hardirqs_on() #19
  br label %do.body23.i

do.body23.i:                                      ; preds = %if.then21.i, %do.end11.i
  %1 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #18, !srcloc !16
  %and.i.i.i = and i32 %1, 128
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %mod_lruvec_page_state.exit, !prof !12

if.then36.i:                                      ; preds = %do.body23.i
  tail call void @warn_bogus_irq_restore() #19
  br label %mod_lruvec_page_state.exit

mod_lruvec_page_state.exit:                       ; preds = %if.then36.i, %do.body23.i
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #18, !srcloc !17
  br label %if.end13

if.end13:                                         ; preds = %mod_lruvec_page_state.exit, %if.end
  %ret.0 = phi ptr [ %call12, %mod_lruvec_page_state.exit ], [ null, %if.end ]
  %call1.i = tail call ptr @__kasan_kmalloc_large(ptr noundef %ret.0, i32 noundef %size, i32 noundef %or) #19
  tail call void @kmemleak_alloc(ptr noundef %call1.i, i32 noundef %size, i32 noundef 1, i32 noundef %or) #19
  ret ptr %call1.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmemleak_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2 section ".ref.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong allocsize(0) uwtable(sync)
define dso_local noalias ptr @kmalloc_order_trace(i32 noundef %size, i32 noundef %flags, i32 noundef %order) #12 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias align 4096 ptr @kmalloc_order(i32 noundef %size, i32 noundef %flags, i32 noundef %order) #24
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  %shl = shl i32 4096, %order
  tail call fastcc void @trace_kmalloc(i32 noundef %1, ptr noundef %call, i32 noundef %size, i32 noundef %shl, i32 noundef %flags) #22
  ret ptr %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @trace_kmalloc(i32 noundef %call_site, ptr noundef %ptr, i32 noundef %bytes_req, i32 noundef %bytes_alloc, i32 noundef %gfp_flags) unnamed_addr #13 align 64 {
entry:
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_kmalloc, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_kmalloc, %do.body)) #18
          to label %if.end48 [label %do.body], !srcloc !18

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = load i32, ptr %cpu, align 4
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i.i.i.i = icmp ule i32 %3, %2
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  %lnot3.i.i.i.i = xor i1 %.b37.i.i.i.i, true
  %4 = select i1 %cmp.i.i.i.i, i1 %lnot3.i.i.i.i, i1 false
  br i1 %4, label %if.then.i.i.i.i, label %cpu_online.exit, !prof !12

if.then.i.i.i.i:                                  ; preds = %do.body
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.272, i32 noundef 108, i32 noundef 9, ptr noundef null) #19
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %do.body
  %div3.i.i.i = lshr i32 %2, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %2, 31
  %6 = shl nuw i32 1, %and.i.i.i75
  %7 = and i32 %5, %6
  %tobool.i.not = icmp eq i32 %7, 0
  br i1 %tobool.i.not, label %if.end69, label %if.end31

if.end31:                                         ; preds = %cpu_online.exit
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %and.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %10, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !19
  %11 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_kmalloc, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i, %if.end31
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i ], [ %11, %if.end31 ]
  %12 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %13 = load ptr, ptr %data.i, align 4
  tail call void %12(ptr noundef %13, i32 noundef %call_site, ptr noundef %ptr, i32 noundef %bytes_req, i32 noundef %bytes_alloc, i32 noundef %gfp_flags) #19
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %14 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %14, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !20
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !20
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %15 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %and.i.i.i73.c = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i73.c to ptr
  %preempt_count.i.i74.c = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = load volatile i32, ptr %preempt_count.i.i74.c, align 4
  %sub.i = add i32 %17, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %18 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %and.i76 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 3
  %20 = load i32, ptr %cpu50, align 4
  %21 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i.i.i.i77 = icmp ule i32 %21, %20
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  %lnot3.i.i.i.i79 = xor i1 %.b37.i.i.i.i78, true
  %22 = select i1 %cmp.i.i.i.i77, i1 %lnot3.i.i.i.i79, i1 false
  br i1 %22, label %if.then.i.i.i.i80, label %cpu_online.exit85, !prof !12

if.then.i.i.i.i80:                                ; preds = %if.end48
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.272, i32 noundef 108, i32 noundef 9, ptr noundef null) #19
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %if.end48
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %if.end69, label %if.then52

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %28, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !21
  %29 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_kmalloc, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #19
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #19
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %do.end67, label %land.lhs.true62

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_kmalloc.__warned, align 1
  br i1 %.b72, label %do.end67, label %if.then64

if.then64:                                        ; preds = %land.lhs.true62
  store i1 true, ptr @trace_kmalloc.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.270, i32 noundef 52, ptr noundef nonnull @.str.271) #19
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62, %land.lhs.true, %if.then52
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !22
  %30 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %and.i.i.i.i86 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %32, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85, %cpu_online.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cache_random_seq_create(ptr nocapture noundef %cachep, i32 noundef %count, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %state = alloca %struct.rnd_state, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %state) #18
  %0 = getelementptr inbounds %struct.rnd_state, ptr %state, i32 0, i32 1
  %1 = getelementptr inbounds %struct.rnd_state, ptr %state, i32 0, i32 2
  %2 = getelementptr inbounds %struct.rnd_state, ptr %state, i32 0, i32 3
  %cmp = icmp ult i32 %count, 2
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %random_seq = getelementptr inbounds %struct.kmem_cache, ptr %cachep, i32 0, i32 22
  %3 = load ptr, ptr %random_seq, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %count, i32 4) #18
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !12

kcalloc.exit.thread:                              ; preds = %if.end
  store ptr null, ptr %random_seq, align 4
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end
  %6 = extractvalue { i32, i1 } %4, 0
  %or.i = or i32 %gfp, 256
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %6, i32 noundef %or.i) #25
  store ptr %call8.i.i, ptr %random_seq, align 4
  %tobool3.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool3.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end7.i.i
  %call.i = tail call i32 @get_random_u32() #19
  %shl.i = shl i32 %call.i, 10
  %xor1.i = xor i32 %shl.i, %call.i
  %cmp.i.i = icmp ult i32 %xor1.i, 2
  %add.i.i = select i1 %cmp.i.i, i32 2, i32 0
  %cond.i.i = add i32 %add.i.i, %xor1.i
  store i32 %cond.i.i, ptr %state, align 4
  %cmp.i15.i = icmp ult i32 %xor1.i, 8
  %add.i16.i = select i1 %cmp.i15.i, i32 8, i32 0
  %cond.i17.i = add i32 %add.i16.i, %xor1.i
  store i32 %cond.i17.i, ptr %0, align 4
  %cmp.i18.i = icmp ult i32 %xor1.i, 16
  %add.i19.i = select i1 %cmp.i18.i, i32 16, i32 0
  %cond.i20.i = add i32 %add.i19.i, %xor1.i
  store i32 %cond.i20.i, ptr %1, align 4
  %cmp.i21.i = icmp ult i32 %xor1.i, 128
  %add.i22.i = select i1 %cmp.i21.i, i32 128, i32 0
  %cond.i23.i = add i32 %add.i22.i, %xor1.i
  store i32 %cond.i23.i, ptr %2, align 4
  %7 = ptrtoint ptr %state to i32
  %8 = call i32 @llvm.read_register.i32(metadata !0) #18
  %and.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %10 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = load i32, ptr %arrayidx.i.i, align 4
  %add.i24.i = add i32 %11, ptrtoint (ptr @net_rand_noise to i32)
  %12 = inttoptr i32 %add.i24.i to ptr
  %13 = load i32, ptr %12, align 4
  %xor.i.i = xor i32 %13, %7
  %add8.i.i = add i32 %xor.i.i, %xor1.i
  %or.i1.i.i = call i32 @llvm.fshl.i32(i32 %add8.i.i, i32 %add8.i.i, i32 16) #18
  store i32 %or.i1.i.i, ptr %12, align 4
  %14 = load ptr, ptr %random_seq, align 4
  br label %for.body.i

for.cond1.preheader.i:                            ; preds = %for.body.i
  %i.127.i = add i32 %count, -1
  %cmp2.not28.i = icmp eq i32 %i.127.i, 0
  br i1 %cmp2.not28.i, label %cleanup, label %for.body3.i

for.body.i:                                       ; preds = %for.body.i, %if.end5
  %i.026.i = phi i32 [ %inc.i, %for.body.i ], [ 0, %if.end5 ]
  %arrayidx.i = getelementptr i32, ptr %14, i32 %i.026.i
  store i32 %i.026.i, ptr %arrayidx.i, align 4
  %inc.i = add nuw i32 %i.026.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %count
  br i1 %exitcond.not.i, label %for.cond1.preheader.i, label %for.body.i

for.body3.i:                                      ; preds = %for.body3.i, %for.cond1.preheader.i
  %i.130.i = phi i32 [ %i.1.i, %for.body3.i ], [ %i.127.i, %for.cond1.preheader.i ]
  %i.1.in29.i = phi i32 [ %i.130.i, %for.body3.i ], [ %count, %for.cond1.preheader.i ]
  %call.i13 = call i32 @prandom_u32_state(ptr noundef nonnull %state) #19
  %rem.i = urem i32 %call.i13, %i.1.in29.i
  %arrayidx4.i = getelementptr i32, ptr %14, i32 %i.130.i
  %15 = load i32, ptr %arrayidx4.i, align 4
  %arrayidx5.i = getelementptr i32, ptr %14, i32 %rem.i
  %16 = load i32, ptr %arrayidx5.i, align 4
  store i32 %16, ptr %arrayidx4.i, align 4
  store i32 %15, ptr %arrayidx5.i, align 4
  %i.1.i = add i32 %i.130.i, -1
  %cmp2.not.i = icmp eq i32 %i.1.i, 0
  br i1 %cmp2.not.i, label %cleanup, label %for.body3.i

cleanup:                                          ; preds = %for.body3.i, %for.cond1.preheader.i, %if.end7.i.i, %kcalloc.exit.thread, %lor.lhs.false, %entry
  %retval.0 = phi i32 [ 0, %lor.lhs.false ], [ 0, %entry ], [ -12, %if.end7.i.i ], [ -12, %kcalloc.exit.thread ], [ 0, %for.cond1.preheader.i ], [ 0, %for.body3.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %state) #18
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cache_random_seq_destroy(ptr nocapture noundef %cachep) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %random_seq = getelementptr inbounds %struct.kmem_cache, ptr %cachep, i32 0, i32 22
  %0 = load ptr, ptr %random_seq, align 4
  tail call void @kfree(ptr noundef %0) #19
  store ptr null, ptr %random_seq, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dump_unreclaimable_slab() local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %sinfo = alloca %struct.slabinfo, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %sinfo) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %sinfo, i8 -1, i32 40, i1 false), !annotation !10
  %call = tail call i32 @mutex_trylock(ptr noundef nonnull @slab_mutex) #19
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %do.end4

do.end:                                           ; preds = %entry
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.175) #20
  br label %cleanup

do.end4:                                          ; preds = %entry
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.178) #20
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.181) #20
  %.pn41 = load ptr, ptr @slab_caches, align 4
  %cmp.not43 = icmp eq ptr %.pn41, @slab_caches
  br i1 %cmp.not43, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %do.end4
  %num_objs = getelementptr inbounds %struct.slabinfo, ptr %sinfo, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %.pn44 = phi ptr [ %.pn41, %for.body.lr.ph ], [ %.pn, %for.inc ]
  %flags = getelementptr i8, ptr %.pn44, i32 -76
  %0 = load i32, ptr %flags, align 4
  %and = and i32 %0, 131072
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.end15, label %for.inc

if.end15:                                         ; preds = %for.body
  %s.045 = getelementptr i8, ptr %.pn44, i32 -80
  call void @get_slabinfo(ptr noundef %s.045, ptr noundef nonnull %sinfo) #19
  %1 = load i32, ptr %num_objs, align 4
  %cmp16.not = icmp eq i32 %1, 0
  br i1 %cmp16.not, label %for.inc, label %do.end20

do.end20:                                         ; preds = %if.end15
  %name = getelementptr i8, ptr %.pn44, i32 -4
  %2 = load ptr, ptr %name, align 4
  %3 = load i32, ptr %sinfo, align 4
  %size = getelementptr i8, ptr %.pn44, i32 -68
  %4 = load i32, ptr %size, align 4
  %mul = mul i32 %4, %3
  %div39 = lshr i32 %mul, 10
  %mul24 = mul i32 %4, %1
  %div2540 = lshr i32 %mul24, 10
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.184, ptr noundef %2, i32 noundef %div39, i32 noundef %div2540) #20
  br label %for.inc

for.inc:                                          ; preds = %do.end20, %if.end15, %for.body
  %.pn = load ptr, ptr %.pn44, align 4
  %cmp.not = icmp eq ptr %.pn, @slab_caches
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %do.end4
  call void @mutex_unlock(ptr noundef nonnull @slab_mutex) #19
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %sinfo) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_slabinfo(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @slab_proc_init() #10 section ".init.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @proc_create(ptr noundef nonnull @.str.273, i16 noundef zeroext 256, ptr noundef null, ptr noundef nonnull @slabinfo_proc_ops) #19
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong allocsize(1) uwtable(sync)
define dso_local noalias ptr @krealloc(ptr noundef %p, i32 noundef %new_size, i32 noundef %flags) #14 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq i32 %new_size, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %if.end, !prof !12

if.end:                                           ; preds = %entry
  %cmp.not.i = icmp ult ptr %p, inttoptr (i32 17 to ptr)
  br i1 %cmp.not.i, label %if.end7.i, label %if.then.i, !prof !12

if.then.i:                                        ; preds = %if.end
  %0 = tail call ptr @llvm.returnaddress(i32 0) #18
  %1 = ptrtoint ptr %0 to i32
  %call1.i.i = tail call zeroext i1 @__kasan_check_byte(ptr noundef %p, i32 noundef %1) #19
  br i1 %call1.i.i, label %if.end.i, label %cleanup

if.end.i:                                         ; preds = %if.then.i
  %call4.i = tail call i32 @kfence_ksize(ptr noundef %p) #19
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %cond.false.i, label %if.end7.i

cond.false.i:                                     ; preds = %if.end.i
  %call6.i = tail call i32 @__ksize(ptr noundef %p) #19
  br label %if.end7.i

if.end7.i:                                        ; preds = %cond.false.i, %if.end.i, %if.end
  %ks.0.i = phi i32 [ %call6.i, %cond.false.i ], [ %call4.i, %if.end.i ], [ 0, %if.end ]
  %cmp8.not.i = icmp ult i32 %ks.0.i, %new_size
  br i1 %cmp8.not.i, label %if.end11.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.end7.i
  %call1.i33.i = tail call ptr @__kasan_krealloc(ptr noundef %p, i32 noundef %new_size, i32 noundef %flags) #19
  br label %__do_krealloc.exit

if.end11.i:                                       ; preds = %if.end7.i
  %2 = tail call ptr @llvm.returnaddress(i32 0) #18
  %3 = ptrtoint ptr %2 to i32
  %call12.i = tail call ptr @__kmalloc_track_caller(i32 noundef %new_size, i32 noundef %flags, i32 noundef %3) #19
  %tobool13.i = icmp ne ptr %call12.i, null
  %tobool14.i = icmp ne ptr %p, null
  %or.cond.i = and i1 %tobool14.i, %tobool13.i
  br i1 %or.cond.i, label %__do_krealloc.exit.thread17, label %__do_krealloc.exit

__do_krealloc.exit.thread17:                      ; preds = %if.end11.i
  tail call void @kasan_disable_current() #19
  %call17.i = tail call ptr @__memcpy(ptr noundef nonnull %call12.i, ptr noundef nonnull %p, i32 noundef %ks.0.i) #19
  tail call void @kasan_enable_current() #19
  br label %land.lhs.true

__do_krealloc.exit:                               ; preds = %if.end11.i, %if.then9.i
  %retval.0.i = phi ptr [ %call1.i33.i, %if.then9.i ], [ %call12.i, %if.end11.i ]
  %tobool4.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool4.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %__do_krealloc.exit, %__do_krealloc.exit.thread17
  %retval.0.i20 = phi ptr [ %call12.i, %__do_krealloc.exit.thread17 ], [ %retval.0.i, %__do_krealloc.exit ]
  %cmp.not = icmp eq ptr %retval.0.i20, %p
  br i1 %cmp.not, label %cleanup, label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %land.lhs.true, %entry
  %retval.0.ph = phi ptr [ inttoptr (i32 16 to ptr), %entry ], [ %retval.0.i20, %land.lhs.true ]
  tail call void @kfree(ptr noundef %p) #19
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true, %__do_krealloc.exit, %if.then.i
  %retval.0 = phi ptr [ %p, %land.lhs.true ], [ null, %__do_krealloc.exit ], [ null, %if.then.i ], [ %retval.0.ph, %cleanup.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kfree_sensitive(ptr noundef %p) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i = icmp ult ptr %p, inttoptr (i32 17 to ptr)
  br i1 %cmp.i, label %if.end, label %lor.lhs.false.i, !prof !12

lor.lhs.false.i:                                  ; preds = %entry
  %0 = tail call ptr @llvm.returnaddress(i32 0) #18
  %1 = ptrtoint ptr %0 to i32
  %call1.i.i = tail call zeroext i1 @__kasan_check_byte(ptr noundef %p, i32 noundef %1) #19
  br i1 %call1.i.i, label %if.end.i, label %if.end

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call2.i = tail call i32 @kfence_ksize(ptr noundef %p) #19
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %ksize.exit, label %ksize.exit.thread6

ksize.exit.thread6:                               ; preds = %if.end.i
  tail call void @__kasan_unpoison_range(ptr noundef %p, i32 noundef %call2.i) #19
  br label %if.then

ksize.exit:                                       ; preds = %if.end.i
  %call4.i = tail call i32 @__ksize(ptr noundef %p) #19
  tail call void @__kasan_unpoison_range(ptr noundef %p, i32 noundef %call4.i) #19
  %tobool.not = icmp eq i32 %call4.i, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %ksize.exit, %ksize.exit.thread6
  %cond.i9 = phi i32 [ %call2.i, %ksize.exit.thread6 ], [ %call4.i, %ksize.exit ]
  %call.i = tail call ptr @__memset(ptr noundef %p, i32 noundef 0, i32 noundef %cond.i9) #19
  tail call void asm sideeffect "", "r,~{memory}"(ptr %p) #18, !srcloc !23
  br label %if.end

if.end:                                           ; preds = %if.then, %ksize.exit, %lor.lhs.false.i, %entry
  tail call void @kfree(ptr noundef %p) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ksize(ptr noundef %objp) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp ult ptr %objp, inttoptr (i32 17 to ptr)
  br i1 %cmp, label %cleanup, label %lor.lhs.false, !prof !12

lor.lhs.false:                                    ; preds = %entry
  %0 = tail call ptr @llvm.returnaddress(i32 0) #18
  %1 = ptrtoint ptr %0 to i32
  %call1.i = tail call zeroext i1 @__kasan_check_byte(ptr noundef %objp, i32 noundef %1) #19
  br i1 %call1.i, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call2 = tail call i32 @kfence_ksize(ptr noundef %objp) #19
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %cond.false, label %cond.end

cond.false:                                       ; preds = %if.end
  %call4 = tail call i32 @__ksize(ptr noundef %objp) #19
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end
  %cond = phi i32 [ %call4, %cond.false ], [ %call2, %if.end ]
  tail call void @__kasan_unpoison_range(ptr noundef %objp, i32 noundef %cond) #19
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %lor.lhs.false, %entry
  %retval.0 = phi i32 [ %cond, %cond.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kfence_ksize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ksize(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @should_failslab(ptr noundef %s, i32 noundef %gfpflags) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @__should_failslab(ptr noundef %s, i32 noundef %gfpflags) #19
  %. = select i1 %call, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__should_failslab(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_kmem_alloc(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #19
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call_site = getelementptr inbounds %struct.trace_event_raw_kmem_alloc, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %call_site, align 4
  %2 = inttoptr i32 %1 to ptr
  %ptr = getelementptr inbounds %struct.trace_event_raw_kmem_alloc, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %ptr, align 4
  %bytes_req = getelementptr inbounds %struct.trace_event_raw_kmem_alloc, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %bytes_req, align 4
  %bytes_alloc = getelementptr inbounds %struct.trace_event_raw_kmem_alloc, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %bytes_alloc, align 4
  %gfp_flags = getelementptr inbounds %struct.trace_event_raw_kmem_alloc, ptr %0, i32 0, i32 5
  %6 = load i32, ptr %gfp_flags, align 4
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.end
  %call2 = tail call ptr @trace_print_flags_seq(ptr noundef %tmp_seq, ptr noundef nonnull @.str.233, i32 noundef %6, ptr noundef nonnull @trace_raw_output_kmem_alloc.__flags) #19
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end
  %cond = phi ptr [ %call2, %cond.true ], [ @.str.234, %if.end ]
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.195, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %cond) #19
  %call3 = tail call i32 @trace_handle_return(ptr noundef %seq) #19
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %entry
  %retval.0 = phi i32 [ %call3, %cond.end ], [ %call, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_flags_seq(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_kmem_alloc_node(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #19
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call_site = getelementptr inbounds %struct.trace_event_raw_kmem_alloc_node, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %call_site, align 4
  %2 = inttoptr i32 %1 to ptr
  %ptr = getelementptr inbounds %struct.trace_event_raw_kmem_alloc_node, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %ptr, align 4
  %bytes_req = getelementptr inbounds %struct.trace_event_raw_kmem_alloc_node, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %bytes_req, align 4
  %bytes_alloc = getelementptr inbounds %struct.trace_event_raw_kmem_alloc_node, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %bytes_alloc, align 4
  %gfp_flags = getelementptr inbounds %struct.trace_event_raw_kmem_alloc_node, ptr %0, i32 0, i32 5
  %6 = load i32, ptr %gfp_flags, align 4
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.end
  %call2 = tail call ptr @trace_print_flags_seq(ptr noundef %tmp_seq, ptr noundef nonnull @.str.233, i32 noundef %6, ptr noundef nonnull @trace_raw_output_kmem_alloc_node.__flags) #19
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end
  %cond = phi ptr [ %call2, %cond.true ], [ @.str.234, %if.end ]
  %node = getelementptr inbounds %struct.trace_event_raw_kmem_alloc_node, ptr %0, i32 0, i32 6
  %7 = load i32, ptr %node, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.237, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %cond, i32 noundef %7) #19
  %call3 = tail call i32 @trace_handle_return(ptr noundef %seq) #19
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %entry
  %retval.0 = phi i32 [ %call3, %cond.end ], [ %call, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_kfree(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #19
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %call_site = getelementptr inbounds %struct.trace_event_raw_kfree, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %call_site, align 4
  %2 = inttoptr i32 %1 to ptr
  %ptr = getelementptr inbounds %struct.trace_event_raw_kfree, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %ptr, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.238, ptr noundef %2, ptr noundef %3) #19
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strcpy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strlen(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_kmem_cache_free(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #19
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %call_site = getelementptr inbounds %struct.trace_event_raw_kmem_cache_free, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %call_site, align 4
  %2 = inttoptr i32 %1 to ptr
  %ptr = getelementptr inbounds %struct.trace_event_raw_kmem_cache_free, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %ptr, align 4
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_kmem_cache_free, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %__data_loc_name, align 4
  %and = and i32 %4, 65535
  %add.ptr = getelementptr i8, ptr %0, i32 %and
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.242, ptr noundef %2, ptr noundef %3, ptr noundef %add.ptr) #19
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mm_page_free(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #19
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %1 = load ptr, ptr @mem_map, align 4
  %pfn = getelementptr inbounds %struct.trace_event_raw_mm_page_free, ptr %0, i32 0, i32 1
  %2 = load i32, ptr %pfn, align 4
  %3 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub = sub i32 %2, %3
  %add.ptr = getelementptr %struct.page, ptr %1, i32 %sub
  %order = getelementptr inbounds %struct.trace_event_raw_mm_page_free, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %order, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.246, ptr noundef %add.ptr, i32 noundef %2, i32 noundef %4) #19
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mm_page_free_batched(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #19
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %1 = load ptr, ptr @mem_map, align 4
  %pfn = getelementptr inbounds %struct.trace_event_raw_mm_page_free_batched, ptr %0, i32 0, i32 1
  %2 = load i32, ptr %pfn, align 4
  %3 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub = sub i32 %2, %3
  %add.ptr = getelementptr %struct.page, ptr %1, i32 %sub
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.247, ptr noundef %add.ptr, i32 noundef %2) #19
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mm_page_alloc(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #19
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %pfn = getelementptr inbounds %struct.trace_event_raw_mm_page_alloc, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %pfn, align 4
  %cmp1.not = icmp eq i32 %1, -1
  %2 = load ptr, ptr @mem_map, align 4
  %3 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub = sub i32 %1, %3
  %add.ptr = getelementptr %struct.page, ptr %2, i32 %sub
  %cond = select i1 %cmp1.not, ptr null, ptr %add.ptr
  %cond9 = select i1 %cmp1.not, i32 0, i32 %1
  %order = getelementptr inbounds %struct.trace_event_raw_mm_page_alloc, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %order, align 4
  %migratetype = getelementptr inbounds %struct.trace_event_raw_mm_page_alloc, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %migratetype, align 4
  %gfp_flags = getelementptr inbounds %struct.trace_event_raw_mm_page_alloc, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %gfp_flags, align 4
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %cond.end14, label %cond.true10

cond.true10:                                      ; preds = %if.end
  %call12 = tail call ptr @trace_print_flags_seq(ptr noundef %tmp_seq, ptr noundef nonnull @.str.233, i32 noundef %6, ptr noundef nonnull @trace_raw_output_mm_page_alloc.__flags) #19
  br label %cond.end14

cond.end14:                                       ; preds = %cond.true10, %if.end
  %cond15 = phi ptr [ %call12, %cond.true10 ], [ @.str.234, %if.end ]
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.249, ptr noundef %cond, i32 noundef %cond9, i32 noundef %4, i32 noundef %5, ptr noundef %cond15) #19
  %call16 = tail call i32 @trace_handle_return(ptr noundef %seq) #19
  br label %cleanup

cleanup:                                          ; preds = %cond.end14, %entry
  %retval.0 = phi i32 [ %call16, %cond.end14 ], [ %call, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mm_page(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #19
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %pfn = getelementptr inbounds %struct.trace_event_raw_mm_page, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %pfn, align 4
  %cmp1.not = icmp eq i32 %1, -1
  %2 = load ptr, ptr @mem_map, align 4
  %3 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub = sub i32 %1, %3
  %add.ptr = getelementptr %struct.page, ptr %2, i32 %sub
  %cond = select i1 %cmp1.not, ptr null, ptr %add.ptr
  %cond9 = select i1 %cmp1.not, i32 0, i32 %1
  %order = getelementptr inbounds %struct.trace_event_raw_mm_page, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %order, align 4
  %migratetype = getelementptr inbounds %struct.trace_event_raw_mm_page, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %migratetype, align 4
  %cmp11 = icmp eq i32 %4, 0
  %conv = zext i1 %cmp11 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.250, ptr noundef %cond, i32 noundef %cond9, i32 noundef %4, i32 noundef %5, i32 noundef %conv) #19
  %call12 = tail call i32 @trace_handle_return(ptr noundef %seq) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i32 [ %call12, %if.end ], [ %call, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mm_page_pcpu_drain(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #19
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %1 = load ptr, ptr @mem_map, align 4
  %pfn = getelementptr inbounds %struct.trace_event_raw_mm_page_pcpu_drain, ptr %0, i32 0, i32 1
  %2 = load i32, ptr %pfn, align 4
  %3 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub = sub i32 %2, %3
  %add.ptr = getelementptr %struct.page, ptr %1, i32 %sub
  %order = getelementptr inbounds %struct.trace_event_raw_mm_page_pcpu_drain, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %order, align 4
  %migratetype = getelementptr inbounds %struct.trace_event_raw_mm_page_pcpu_drain, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %migratetype, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.251, ptr noundef %add.ptr, i32 noundef %2, i32 noundef %4, i32 noundef %5) #19
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_pfnblock_flags_mask(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mm_page_alloc_extfrag(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #19
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %1 = load ptr, ptr @mem_map, align 4
  %pfn = getelementptr inbounds %struct.trace_event_raw_mm_page_alloc_extfrag, ptr %0, i32 0, i32 1
  %2 = load i32, ptr %pfn, align 4
  %3 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub = sub i32 %2, %3
  %add.ptr = getelementptr %struct.page, ptr %1, i32 %sub
  %alloc_order = getelementptr inbounds %struct.trace_event_raw_mm_page_alloc_extfrag, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %alloc_order, align 4
  %fallback_order = getelementptr inbounds %struct.trace_event_raw_mm_page_alloc_extfrag, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %fallback_order, align 4
  %alloc_migratetype = getelementptr inbounds %struct.trace_event_raw_mm_page_alloc_extfrag, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %alloc_migratetype, align 4
  %fallback_migratetype = getelementptr inbounds %struct.trace_event_raw_mm_page_alloc_extfrag, ptr %0, i32 0, i32 5
  %7 = load i32, ptr %fallback_migratetype, align 4
  %cmp3 = icmp slt i32 %5, 11
  %conv = zext i1 %cmp3 to i32
  %change_ownership = getelementptr inbounds %struct.trace_event_raw_mm_page_alloc_extfrag, ptr %0, i32 0, i32 6
  %8 = load i32, ptr %change_ownership, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.257, ptr noundef %add.ptr, i32 noundef %2, i32 noundef %4, i32 noundef %5, i32 noundef 11, i32 noundef %6, i32 noundef %7, i32 noundef %conv, i32 noundef %8) #19
  %call4 = tail call i32 @trace_handle_return(ptr noundef %seq) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptr_to_hashval(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #15

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rss_stat(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #19
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %mm_id = getelementptr inbounds %struct.trace_event_raw_rss_stat, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %mm_id, align 4
  %curr = getelementptr inbounds %struct.trace_event_raw_rss_stat, ptr %0, i32 0, i32 2
  %2 = load i32, ptr %curr, align 4
  %member = getelementptr inbounds %struct.trace_event_raw_rss_stat, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %member, align 4
  %call1 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %3, ptr noundef nonnull @trace_raw_output_rss_stat.symbols) #19
  %size = getelementptr inbounds %struct.trace_event_raw_rss_stat, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %size, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.263, i32 noundef %1, i32 noundef %2, ptr noundef %call1, i32 noundef %4) #19
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_symbols_seq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run5(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run6(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run3(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run1(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run4(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kasan_never_merge() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_byte(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kasan_cache_shutdown(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kmem_cache_shutdown(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_slab_unlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfence_shutdown_cache(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_slab_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_slab_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @slab_caches_to_rcu_destroy_workfn(ptr nocapture noundef readnone %work) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %to_destroy = alloca %struct.list_head, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %to_destroy) #18
  %0 = getelementptr inbounds %struct.list_head, ptr %to_destroy, i32 0, i32 1
  store ptr %to_destroy, ptr %to_destroy, align 4
  store ptr %to_destroy, ptr %0, align 4
  call void @mutex_lock_nested(ptr noundef nonnull @slab_mutex, i32 noundef 0) #19
  %1 = load volatile ptr, ptr @slab_caches_to_rcu_destroy, align 4
  %cmp.i.not.i = icmp eq ptr %1, @slab_caches_to_rcu_destroy
  br i1 %cmp.i.not.i, label %list_splice_init.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %2 = load ptr, ptr %to_destroy, align 4
  %3 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @slab_caches_to_rcu_destroy, i32 0, i32 1), align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  store ptr %to_destroy, ptr %prev3.i.i, align 4
  store ptr %1, ptr %to_destroy, align 4
  store ptr %2, ptr %3, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %3, ptr %prev6.i.i, align 4
  store volatile ptr @slab_caches_to_rcu_destroy, ptr @slab_caches_to_rcu_destroy, align 4
  store ptr @slab_caches_to_rcu_destroy, ptr getelementptr inbounds (%struct.list_head, ptr @slab_caches_to_rcu_destroy, i32 0, i32 1), align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %entry
  call void @mutex_unlock(ptr noundef nonnull @slab_mutex) #19
  %4 = load volatile ptr, ptr %to_destroy, align 4
  %cmp.i.not = icmp eq ptr %4, %to_destroy
  br i1 %cmp.i.not, label %cleanup, label %if.end

if.end:                                           ; preds = %list_splice_init.exit
  call void @rcu_barrier() #19
  %5 = load ptr, ptr %to_destroy, align 4
  %cmp.not20 = icmp eq ptr %5, %to_destroy
  br i1 %cmp.not20, label %cleanup, label %for.body

for.body:                                         ; preds = %for.body, %if.end
  %.pn.in21 = phi ptr [ %.pn, %for.body ], [ %5, %if.end ]
  %s.0 = getelementptr i8, ptr %.pn.in21, i32 -80
  %.pn = load ptr, ptr %.pn.in21, align 4
  call void @debugfs_slab_release(ptr noundef %s.0) #19
  call void @kfence_shutdown_cache(ptr noundef %s.0) #19
  call void @sysfs_slab_release(ptr noundef %s.0) #19
  %cmp.not = icmp eq ptr %.pn, %to_destroy
  br i1 %cmp.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.body, %if.end, %list_splice_init.exit
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %to_destroy) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kasan_cache_create_kmalloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #16

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mem_cgroup_kmem_disabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mod_lruvec_page_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kasan_kmalloc_large(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #16

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_random_u32() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @slabinfo_open(ptr nocapture noundef readnone %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @seq_open(ptr noundef %file, ptr noundef nonnull @slabinfo_op) #19
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @slabinfo_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @slab_start(ptr nocapture noundef readnone %m, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @slab_mutex, i32 noundef 0) #19
  %0 = load i64, ptr %pos, align 8
  %call = tail call ptr @seq_list_start(ptr noundef nonnull @slab_caches, i64 noundef %0) #19
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @slab_stop(ptr nocapture noundef readnone %m, ptr nocapture noundef readnone %p) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_unlock(ptr noundef nonnull @slab_mutex) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @slab_next(ptr nocapture noundef readnone %m, ptr noundef %p, ptr noundef %pos) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @seq_list_next(ptr noundef %p, ptr noundef nonnull @slab_caches, ptr noundef %pos) #19
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @slab_show(ptr noundef %m, ptr noundef %p) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %sinfo.i = alloca %struct.slabinfo, align 4
  %0 = load ptr, ptr @slab_caches, align 4
  %cmp = icmp eq ptr %0, %p
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.274) #19
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.275) #19
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.276) #19
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.277) #19
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %add.ptr = getelementptr i8, ptr %p, i32 -80
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %sinfo.i) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %sinfo.i, i8 -1, i32 40, i1 false) #18, !annotation !10
  %call.i = call ptr @__memset(ptr noundef nonnull %sinfo.i, i32 noundef 0, i32 noundef 40) #19
  call void @get_slabinfo(ptr noundef %add.ptr, ptr noundef nonnull %sinfo.i) #19
  %name.i = getelementptr i8, ptr %p, i32 -4
  %1 = load ptr, ptr %name.i, align 4
  %2 = load i32, ptr %sinfo.i, align 4
  %num_objs.i = getelementptr inbounds %struct.slabinfo, ptr %sinfo.i, i32 0, i32 1
  %3 = load i32, ptr %num_objs.i, align 4
  %size.i = getelementptr i8, ptr %p, i32 -68
  %4 = load i32, ptr %size.i, align 4
  %objects_per_slab.i = getelementptr inbounds %struct.slabinfo, ptr %sinfo.i, i32 0, i32 8
  %5 = load i32, ptr %objects_per_slab.i, align 4
  %cache_order.i = getelementptr inbounds %struct.slabinfo, ptr %sinfo.i, i32 0, i32 9
  %6 = load i32, ptr %cache_order.i, align 4
  %shl.i = shl nuw i32 1, %6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.278, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %shl.i) #19
  %limit.i = getelementptr inbounds %struct.slabinfo, ptr %sinfo.i, i32 0, i32 5
  %7 = load i32, ptr %limit.i, align 4
  %batchcount.i = getelementptr inbounds %struct.slabinfo, ptr %sinfo.i, i32 0, i32 6
  %8 = load i32, ptr %batchcount.i, align 4
  %shared.i = getelementptr inbounds %struct.slabinfo, ptr %sinfo.i, i32 0, i32 7
  %9 = load i32, ptr %shared.i, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.279, i32 noundef %7, i32 noundef %8, i32 noundef %9) #19
  %active_slabs.i = getelementptr inbounds %struct.slabinfo, ptr %sinfo.i, i32 0, i32 2
  %10 = load i32, ptr %active_slabs.i, align 4
  %num_slabs.i = getelementptr inbounds %struct.slabinfo, ptr %sinfo.i, i32 0, i32 3
  %11 = load i32, ptr %num_slabs.i, align 4
  %shared_avail.i = getelementptr inbounds %struct.slabinfo, ptr %sinfo.i, i32 0, i32 4
  %12 = load i32, ptr %shared_avail.i, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.280, i32 noundef %10, i32 noundef %11, i32 noundef %12) #19
  call void @slabinfo_show_stats(ptr noundef %m, ptr noundef %add.ptr) #19
  call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #19
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %sinfo.i) #18
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_start(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__memset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @slabinfo_show_stats(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmalloc_track_caller(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kasan_disable_current() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kasan_enable_current() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kasan_krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kasan_unpoison_range(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #16

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #18

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind null_pointer_is_valid sspstrong allocsize(0) uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nounwind null_pointer_is_valid sspstrong allocsize(1) uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nounwind readonly }
attributes #16 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #17 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { nounwind }
attributes #19 = { nobuiltin nounwind "no-builtins" }
attributes #20 = { cold nobuiltin nounwind "no-builtins" }
attributes #21 = { cold nobuiltin noreturn nounwind "no-builtins" }
attributes #22 = { nobuiltin "no-builtins" }
attributes #23 = { cold nobuiltin "no-builtins" }
attributes #24 = { nobuiltin allocsize(0) "no-builtins" }
attributes #25 = { nobuiltin nounwind allocsize(0) "no-builtins" }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!10 = !{!"auto-init"}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i64 2150169350, i64 2150169841, i64 2150169387, i64 2150169443, i64 2150169477, i64 2150169501, i64 2150169542, i64 2150169563, i64 2150169591, i64 2150169625}
!14 = !{i32 0, i32 33}
!15 = !{i64 1017381, i64 1017442}
!16 = !{i64 1020113}
!17 = !{i64 1020398}
!18 = !{i64 2148233427, i64 2148233432, i64 2148233445, i64 2148233489, i64 2148233523, i64 2148233544}
!19 = !{i64 2154847469}
!20 = !{i64 2154847744}
!21 = !{i64 2149958244}
!22 = !{i64 2149959280}
!23 = !{i64 2149192889}
