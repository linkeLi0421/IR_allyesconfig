; ModuleID = '/llk/IR_all_yes/mm/util.c_pt.bc'
source_filename = "../mm/util.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+kfree_const\22, \22a\22\09"
module asm "\09.weak\09__crc_kfree_const\09\09\09\09"
module asm "\09.long\09__crc_kfree_const\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kfree_const:\09\09\09\09\09"
module asm "\09.asciz \09\22kfree_const\22\09\09\09\09\09"
module asm "__kstrtabns_kfree_const:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+kstrdup\22, \22a\22\09"
module asm "\09.weak\09__crc_kstrdup\09\09\09\09"
module asm "\09.long\09__crc_kstrdup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kstrdup:\09\09\09\09\09"
module asm "\09.asciz \09\22kstrdup\22\09\09\09\09\09"
module asm "__kstrtabns_kstrdup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+kstrdup_const\22, \22a\22\09"
module asm "\09.weak\09__crc_kstrdup_const\09\09\09\09"
module asm "\09.long\09__crc_kstrdup_const\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kstrdup_const:\09\09\09\09\09"
module asm "\09.asciz \09\22kstrdup_const\22\09\09\09\09\09"
module asm "__kstrtabns_kstrdup_const:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+kstrndup\22, \22a\22\09"
module asm "\09.weak\09__crc_kstrndup\09\09\09\09"
module asm "\09.long\09__crc_kstrndup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kstrndup:\09\09\09\09\09"
module asm "\09.asciz \09\22kstrndup\22\09\09\09\09\09"
module asm "__kstrtabns_kstrndup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+kmemdup\22, \22a\22\09"
module asm "\09.weak\09__crc_kmemdup\09\09\09\09"
module asm "\09.long\09__crc_kmemdup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kmemdup:\09\09\09\09\09"
module asm "\09.asciz \09\22kmemdup\22\09\09\09\09\09"
module asm "__kstrtabns_kmemdup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+kmemdup_nul\22, \22a\22\09"
module asm "\09.weak\09__crc_kmemdup_nul\09\09\09\09"
module asm "\09.long\09__crc_kmemdup_nul\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kmemdup_nul:\09\09\09\09\09"
module asm "\09.asciz \09\22kmemdup_nul\22\09\09\09\09\09"
module asm "__kstrtabns_kmemdup_nul:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+memdup_user\22, \22a\22\09"
module asm "\09.weak\09__crc_memdup_user\09\09\09\09"
module asm "\09.long\09__crc_memdup_user\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_memdup_user:\09\09\09\09\09"
module asm "\09.asciz \09\22memdup_user\22\09\09\09\09\09"
module asm "__kstrtabns_memdup_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vmemdup_user\22, \22a\22\09"
module asm "\09.weak\09__crc_vmemdup_user\09\09\09\09"
module asm "\09.long\09__crc_vmemdup_user\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vmemdup_user:\09\09\09\09\09"
module asm "\09.asciz \09\22vmemdup_user\22\09\09\09\09\09"
module asm "__kstrtabns_vmemdup_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+strndup_user\22, \22a\22\09"
module asm "\09.weak\09__crc_strndup_user\09\09\09\09"
module asm "\09.long\09__crc_strndup_user\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_strndup_user:\09\09\09\09\09"
module asm "\09.asciz \09\22strndup_user\22\09\09\09\09\09"
module asm "__kstrtabns_strndup_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+memdup_user_nul\22, \22a\22\09"
module asm "\09.weak\09__crc_memdup_user_nul\09\09\09\09"
module asm "\09.long\09__crc_memdup_user_nul\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_memdup_user_nul:\09\09\09\09\09"
module asm "\09.asciz \09\22memdup_user_nul\22\09\09\09\09\09"
module asm "__kstrtabns_memdup_user_nul:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vma_set_file\22, \22a\22\09"
module asm "\09.weak\09__crc_vma_set_file\09\09\09\09"
module asm "\09.long\09__crc_vma_set_file\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vma_set_file:\09\09\09\09\09"
module asm "\09.asciz \09\22vma_set_file\22\09\09\09\09\09"
module asm "__kstrtabns_vma_set_file:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__account_locked_vm\22, \22a\22\09"
module asm "\09.weak\09__crc___account_locked_vm\09\09\09\09"
module asm "\09.long\09__crc___account_locked_vm\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___account_locked_vm:\09\09\09\09\09"
module asm "\09.asciz \09\22__account_locked_vm\22\09\09\09\09\09"
module asm "__kstrtabns___account_locked_vm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+account_locked_vm\22, \22a\22\09"
module asm "\09.weak\09__crc_account_locked_vm\09\09\09\09"
module asm "\09.long\09__crc_account_locked_vm\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_account_locked_vm:\09\09\09\09\09"
module asm "\09.asciz \09\22account_locked_vm\22\09\09\09\09\09"
module asm "__kstrtabns_account_locked_vm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vm_mmap\22, \22a\22\09"
module asm "\09.weak\09__crc_vm_mmap\09\09\09\09"
module asm "\09.long\09__crc_vm_mmap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vm_mmap:\09\09\09\09\09"
module asm "\09.asciz \09\22vm_mmap\22\09\09\09\09\09"
module asm "__kstrtabns_vm_mmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+kvmalloc_node\22, \22a\22\09"
module asm "\09.weak\09__crc_kvmalloc_node\09\09\09\09"
module asm "\09.long\09__crc_kvmalloc_node\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kvmalloc_node:\09\09\09\09\09"
module asm "\09.asciz \09\22kvmalloc_node\22\09\09\09\09\09"
module asm "__kstrtabns_kvmalloc_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+kvfree\22, \22a\22\09"
module asm "\09.weak\09__crc_kvfree\09\09\09\09"
module asm "\09.long\09__crc_kvfree\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kvfree:\09\09\09\09\09"
module asm "\09.asciz \09\22kvfree\22\09\09\09\09\09"
module asm "__kstrtabns_kvfree:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+kvfree_sensitive\22, \22a\22\09"
module asm "\09.weak\09__crc_kvfree_sensitive\09\09\09\09"
module asm "\09.long\09__crc_kvfree_sensitive\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kvfree_sensitive:\09\09\09\09\09"
module asm "\09.asciz \09\22kvfree_sensitive\22\09\09\09\09\09"
module asm "__kstrtabns_kvfree_sensitive:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+kvrealloc\22, \22a\22\09"
module asm "\09.weak\09__crc_kvrealloc\09\09\09\09"
module asm "\09.long\09__crc_kvrealloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kvrealloc:\09\09\09\09\09"
module asm "\09.asciz \09\22kvrealloc\22\09\09\09\09\09"
module asm "__kstrtabns_kvrealloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+folio_mapped\22, \22a\22\09"
module asm "\09.weak\09__crc_folio_mapped\09\09\09\09"
module asm "\09.long\09__crc_folio_mapped\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_folio_mapped:\09\09\09\09\09"
module asm "\09.asciz \09\22folio_mapped\22\09\09\09\09\09"
module asm "__kstrtabns_folio_mapped:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+folio_mapping\22, \22a\22\09"
module asm "\09.weak\09__crc_folio_mapping\09\09\09\09"
module asm "\09.long\09__crc_folio_mapping\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_folio_mapping:\09\09\09\09\09"
module asm "\09.asciz \09\22folio_mapping\22\09\09\09\09\09"
module asm "__kstrtabns_folio_mapping:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__page_mapcount\22, \22a\22\09"
module asm "\09.weak\09__crc___page_mapcount\09\09\09\09"
module asm "\09.long\09__crc___page_mapcount\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___page_mapcount:\09\09\09\09\09"
module asm "\09.asciz \09\22__page_mapcount\22\09\09\09\09\09"
module asm "__kstrtabns___page_mapcount:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+vm_memory_committed\22, \22a\22\09"
module asm "\09.weak\09__crc_vm_memory_committed\09\09\09\09"
module asm "\09.long\09__crc_vm_memory_committed\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vm_memory_committed:\09\09\09\09\09"
module asm "\09.asciz \09\22vm_memory_committed\22\09\09\09\09\09"
module asm "__kstrtabns_vm_memory_committed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mem_dump_obj\22, \22a\22\09"
module asm "\09.weak\09__crc_mem_dump_obj\09\09\09\09"
module asm "\09.long\09__crc_mem_dump_obj\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mem_dump_obj:\09\09\09\09\09"
module asm "\09.asciz \09\22mem_dump_obj\22\09\09\09\09\09"
module asm "__kstrtabns_mem_dump_obj:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+page_offline_begin\22, \22a\22\09"
module asm "\09.weak\09__crc_page_offline_begin\09\09\09\09"
module asm "\09.long\09__crc_page_offline_begin\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_page_offline_begin:\09\09\09\09\09"
module asm "\09.asciz \09\22page_offline_begin\22\09\09\09\09\09"
module asm "__kstrtabns_page_offline_begin:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+page_offline_end\22, \22a\22\09"
module asm "\09.weak\09__crc_page_offline_end\09\09\09\09"
module asm "\09.long\09__crc_page_offline_end\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_page_offline_end:\09\09\09\09\09"
module asm "\09.asciz \09\22page_offline_end\22\09\09\09\09\09"
module asm "__kstrtabns_page_offline_end:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+flush_dcache_folio\22, \22a\22\09"
module asm "\09.weak\09__crc_flush_dcache_folio\09\09\09\09"
module asm "\09.long\09__crc_flush_dcache_folio\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flush_dcache_folio:\09\09\09\09\09"
module asm "\09.asciz \09\22flush_dcache_folio\22\09\09\09\09\09"
module asm "__kstrtabns_flush_dcache_folio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.16 }
%union.anon.16 = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.55, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.26 }
%struct.llist_node = type { ptr }
%union.anon.26 = type { i32 }
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
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.28 }
%union.anon.28 = type { %struct.anon.29 }
%struct.anon.29 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.55 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.file = type { %union.anon.9, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.9 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.anon = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.atomic64_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hlist_head = type { ptr }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i32, i32 }
%struct.pacct_struct = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.page = type { i32, %union.anon.3, %union.anon.75, %struct.atomic_t, i32 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.75 = type { %struct.atomic_t }
%struct.anon.81 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t, i32 }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }

@__kstrtab_kfree_const = external dso_local constant [0 x i8], align 1
@__kstrtabns_kfree_const = external dso_local constant [0 x i8], align 1
@__ksymtab_kfree_const = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kfree_const to i32), ptr @__kstrtab_kfree_const, ptr @__kstrtabns_kfree_const }, section "___ksymtab+kfree_const", align 4
@__kstrtab_kstrdup = external dso_local constant [0 x i8], align 1
@__kstrtabns_kstrdup = external dso_local constant [0 x i8], align 1
@__ksymtab_kstrdup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kstrdup to i32), ptr @__kstrtab_kstrdup, ptr @__kstrtabns_kstrdup }, section "___ksymtab+kstrdup", align 4
@__kstrtab_kstrdup_const = external dso_local constant [0 x i8], align 1
@__kstrtabns_kstrdup_const = external dso_local constant [0 x i8], align 1
@__ksymtab_kstrdup_const = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kstrdup_const to i32), ptr @__kstrtab_kstrdup_const, ptr @__kstrtabns_kstrdup_const }, section "___ksymtab+kstrdup_const", align 4
@__kstrtab_kstrndup = external dso_local constant [0 x i8], align 1
@__kstrtabns_kstrndup = external dso_local constant [0 x i8], align 1
@__ksymtab_kstrndup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kstrndup to i32), ptr @__kstrtab_kstrndup, ptr @__kstrtabns_kstrndup }, section "___ksymtab+kstrndup", align 4
@__kstrtab_kmemdup = external dso_local constant [0 x i8], align 1
@__kstrtabns_kmemdup = external dso_local constant [0 x i8], align 1
@__ksymtab_kmemdup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kmemdup to i32), ptr @__kstrtab_kmemdup, ptr @__kstrtabns_kmemdup }, section "___ksymtab+kmemdup", align 4
@__kstrtab_kmemdup_nul = external dso_local constant [0 x i8], align 1
@__kstrtabns_kmemdup_nul = external dso_local constant [0 x i8], align 1
@__ksymtab_kmemdup_nul = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kmemdup_nul to i32), ptr @__kstrtab_kmemdup_nul, ptr @__kstrtabns_kmemdup_nul }, section "___ksymtab+kmemdup_nul", align 4
@__kstrtab_memdup_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_memdup_user = external dso_local constant [0 x i8], align 1
@__ksymtab_memdup_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @memdup_user to i32), ptr @__kstrtab_memdup_user, ptr @__kstrtabns_memdup_user }, section "___ksymtab+memdup_user", align 4
@__kstrtab_vmemdup_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_vmemdup_user = external dso_local constant [0 x i8], align 1
@__ksymtab_vmemdup_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vmemdup_user to i32), ptr @__kstrtab_vmemdup_user, ptr @__kstrtabns_vmemdup_user }, section "___ksymtab+vmemdup_user", align 4
@__kstrtab_strndup_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_strndup_user = external dso_local constant [0 x i8], align 1
@__ksymtab_strndup_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @strndup_user to i32), ptr @__kstrtab_strndup_user, ptr @__kstrtabns_strndup_user }, section "___ksymtab+strndup_user", align 4
@__kstrtab_memdup_user_nul = external dso_local constant [0 x i8], align 1
@__kstrtabns_memdup_user_nul = external dso_local constant [0 x i8], align 1
@__ksymtab_memdup_user_nul = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @memdup_user_nul to i32), ptr @__kstrtab_memdup_user_nul, ptr @__kstrtabns_memdup_user_nul }, section "___ksymtab+memdup_user_nul", align 4
@__kstrtab_vma_set_file = external dso_local constant [0 x i8], align 1
@__kstrtabns_vma_set_file = external dso_local constant [0 x i8], align 1
@__ksymtab_vma_set_file = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vma_set_file to i32), ptr @__kstrtab_vma_set_file, ptr @__kstrtabns_vma_set_file }, section "___ksymtab+vma_set_file", align 4
@mmap_rnd_bits = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@__account_locked_vm.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mm/util.c\00", [22 x i8] zeroinitializer }, align 32
@__account_locked_vm.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.3, i8 0, i8 118, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"util\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__account_locked_vm\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: [%d] caller %ps %c%lu %lu/%lu%s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" - exceeded\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@__kstrtab___account_locked_vm = external dso_local constant [0 x i8], align 1
@__kstrtabns___account_locked_vm = external dso_local constant [0 x i8], align 1
@__ksymtab___account_locked_vm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__account_locked_vm to i32), ptr @__kstrtab___account_locked_vm, ptr @__kstrtabns___account_locked_vm }, section "___ksymtab_gpl+__account_locked_vm", align 4
@__kstrtab_account_locked_vm = external dso_local constant [0 x i8], align 1
@__kstrtabns_account_locked_vm = external dso_local constant [0 x i8], align 1
@__ksymtab_account_locked_vm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @account_locked_vm to i32), ptr @__kstrtab_account_locked_vm, ptr @__kstrtabns_account_locked_vm }, section "___ksymtab_gpl+account_locked_vm", align 4
@__kstrtab_vm_mmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_vm_mmap = external dso_local constant [0 x i8], align 1
@__ksymtab_vm_mmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vm_mmap to i32), ptr @__kstrtab_vm_mmap, ptr @__kstrtabns_vm_mmap }, section "___ksymtab+vm_mmap", align 4
@kvmalloc_node.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_kvmalloc_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_kvmalloc_node = external dso_local constant [0 x i8], align 1
@__ksymtab_kvmalloc_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kvmalloc_node to i32), ptr @__kstrtab_kvmalloc_node, ptr @__kstrtabns_kvmalloc_node }, section "___ksymtab+kvmalloc_node", align 4
@__kstrtab_kvfree = external dso_local constant [0 x i8], align 1
@__kstrtabns_kvfree = external dso_local constant [0 x i8], align 1
@__ksymtab_kvfree = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kvfree to i32), ptr @__kstrtab_kvfree, ptr @__kstrtabns_kvfree }, section "___ksymtab+kvfree", align 4
@__kstrtab_kvfree_sensitive = external dso_local constant [0 x i8], align 1
@__kstrtabns_kvfree_sensitive = external dso_local constant [0 x i8], align 1
@__ksymtab_kvfree_sensitive = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kvfree_sensitive to i32), ptr @__kstrtab_kvfree_sensitive, ptr @__kstrtabns_kvfree_sensitive }, section "___ksymtab+kvfree_sensitive", align 4
@__kstrtab_kvrealloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_kvrealloc = external dso_local constant [0 x i8], align 1
@__ksymtab_kvrealloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kvrealloc to i32), ptr @__kstrtab_kvrealloc, ptr @__kstrtabns_kvrealloc }, section "___ksymtab+kvrealloc", align 4
@__kstrtab_folio_mapped = external dso_local constant [0 x i8], align 1
@__kstrtabns_folio_mapped = external dso_local constant [0 x i8], align 1
@__ksymtab_folio_mapped = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @folio_mapped to i32), ptr @__kstrtab_folio_mapped, ptr @__kstrtabns_folio_mapped }, section "___ksymtab+folio_mapped", align 4
@swapper_spaces = external dso_local local_unnamed_addr global [0 x ptr], align 4
@__kstrtab_folio_mapping = external dso_local constant [0 x i8], align 1
@__kstrtabns_folio_mapping = external dso_local constant [0 x i8], align 1
@__ksymtab_folio_mapping = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @folio_mapping to i32), ptr @__kstrtab_folio_mapping, ptr @__kstrtabns_folio_mapping }, section "___ksymtab+folio_mapping", align 4
@__kstrtab___page_mapcount = external dso_local constant [0 x i8], align 1
@__kstrtabns___page_mapcount = external dso_local constant [0 x i8], align 1
@__ksymtab___page_mapcount = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__page_mapcount to i32), ptr @__kstrtab___page_mapcount, ptr @__kstrtabns___page_mapcount }, section "___ksymtab_gpl+__page_mapcount", align 4
@sysctl_overcommit_memory = dso_local local_unnamed_addr global i32 0, section ".data..read_mostly", align 4
@sysctl_overcommit_ratio = dso_local local_unnamed_addr global i32 50, section ".data..read_mostly", align 4
@sysctl_max_map_count = dso_local local_unnamed_addr global i32 65530, section ".data..read_mostly", align 4
@sysctl_user_reserve_kbytes = dso_local local_unnamed_addr global i32 131072, section ".data..read_mostly", align 4
@sysctl_admin_reserve_kbytes = dso_local local_unnamed_addr global i32 8192, section ".data..read_mostly", align 4
@sysctl_overcommit_kbytes = dso_local local_unnamed_addr global i32 0, section ".data..read_mostly", align 4
@total_swap_pages = external dso_local local_unnamed_addr global i32, align 4
@vm_committed_as = dso_local global %struct.percpu_counter zeroinitializer, align 128
@__kstrtab_vm_memory_committed = external dso_local constant [0 x i8], align 1
@__kstrtabns_vm_memory_committed = external dso_local constant [0 x i8], align 1
@__ksymtab_vm_memory_committed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vm_memory_committed to i32), ptr @__kstrtab_vm_memory_committed, ptr @__kstrtabns_vm_memory_committed }, section "___ksymtab_gpl+vm_memory_committed", align 4
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"non-slab/vmalloc memory\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"NULL pointer\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"zero-size pointer\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"non-paged memory\00", [47 x i8] zeroinitializer }, align 32
@mem_dump_obj._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str, i32 1043, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\01c %s\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mem_dump_obj\00", [19 x i8] zeroinitializer }, align 32
@mem_dump_obj._entry_ptr = internal global ptr @mem_dump_obj._entry, section ".printk_index", align 4
@__kstrtab_mem_dump_obj = external dso_local constant [0 x i8], align 1
@__kstrtabns_mem_dump_obj = external dso_local constant [0 x i8], align 1
@__ksymtab_mem_dump_obj = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mem_dump_obj to i32), ptr @__kstrtab_mem_dump_obj, ptr @__kstrtabns_mem_dump_obj }, section "___ksymtab_gpl+mem_dump_obj", align 4
@page_offline_rwsem = internal global { %struct.rw_semaphore, [32 x i8] } { %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.19, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @page_offline_rwsem, i64 56), ptr getelementptr (i8, ptr @page_offline_rwsem, i64 56) }, ptr @page_offline_rwsem, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.20, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [32 x i8] zeroinitializer }, align 32
@__kstrtab_page_offline_begin = external dso_local constant [0 x i8], align 1
@__kstrtabns_page_offline_begin = external dso_local constant [0 x i8], align 1
@__ksymtab_page_offline_begin = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @page_offline_begin to i32), ptr @__kstrtab_page_offline_begin, ptr @__kstrtabns_page_offline_begin }, section "___ksymtab+page_offline_begin", align 4
@__kstrtab_page_offline_end = external dso_local constant [0 x i8], align 1
@__kstrtabns_page_offline_end = external dso_local constant [0 x i8], align 1
@__ksymtab_page_offline_end = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @page_offline_end to i32), ptr @__kstrtab_page_offline_end, ptr @__kstrtabns_page_offline_end }, section "___ksymtab+page_offline_end", align 4
@__kstrtab_flush_dcache_folio = external dso_local constant [0 x i8], align 1
@__kstrtabns_flush_dcache_folio = external dso_local constant [0 x i8], align 1
@__ksymtab_flush_dcache_folio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flush_dcache_folio to i32), ptr @__kstrtab_flush_dcache_folio, ptr @__kstrtabns_flush_dcache_folio }, section "___ksymtab+flush_dcache_folio", align 4
@__start_rodata = external dso_local global [0 x i8], align 1
@__end_rodata = external dso_local global [0 x i8], align 1
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@sysctl_legacy_va_layout = external dso_local local_unnamed_addr global i32, align 4
@stack_guard_gap = external dso_local local_unnamed_addr global i32, align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/mmap_lock.h\00", [38 x i8] zeroinitializer }, align 32
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@_totalram_pages = external dso_local global %struct.atomic_t, align 4
@vm_committed_as_batch = external dso_local local_unnamed_addr global i32, align 4
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"page_offline_rwsem.wait_lock\00", [35 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"page_offline_rwsem\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 465, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 469, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 1035, i32 10 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 1037, i32 10 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 1039, i32 10 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 1041, i32 10 }
@___asan_gen_.51 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 1043, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant [19 x i8] c"page_offline_rwsem\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 230, i32 6 }
@___asan_gen_.67 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 214, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 156, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [29 x i8] c"../include/linux/mmap_lock.h\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 161, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 260, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 698, i32 1 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private constant [13 x i8] c"../mm/util.c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 1064, i32 8 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__ksymtab___account_locked_vm, ptr @__ksymtab___page_mapcount, ptr @__ksymtab_account_locked_vm, ptr @__ksymtab_flush_dcache_folio, ptr @__ksymtab_folio_mapped, ptr @__ksymtab_folio_mapping, ptr @__ksymtab_kfree_const, ptr @__ksymtab_kmemdup, ptr @__ksymtab_kmemdup_nul, ptr @__ksymtab_kstrdup, ptr @__ksymtab_kstrdup_const, ptr @__ksymtab_kstrndup, ptr @__ksymtab_kvfree, ptr @__ksymtab_kvfree_sensitive, ptr @__ksymtab_kvmalloc_node, ptr @__ksymtab_kvrealloc, ptr @__ksymtab_mem_dump_obj, ptr @__ksymtab_memdup_user, ptr @__ksymtab_memdup_user_nul, ptr @__ksymtab_page_offline_begin, ptr @__ksymtab_page_offline_end, ptr @__ksymtab_strndup_user, ptr @__ksymtab_vm_memory_committed, ptr @__ksymtab_vm_mmap, ptr @__ksymtab_vma_set_file, ptr @__ksymtab_vmemdup_user, ptr @mem_dump_obj._entry, ptr @mem_dump_obj._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @page_offline_rwsem, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mem_dump_obj._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @page_offline_rwsem to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kfree_const(ptr noundef %x) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not.i = icmp uge ptr %x, @__start_rodata
  %cmp1.i = icmp ult ptr %x, @__end_rodata
  %spec.select.i = and i1 %cmp.not.i, %cmp1.i
  br i1 %spec.select.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef %x) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @kstrdup(ptr noundef readonly %s, i32 noundef %gfp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %s, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @strlen(ptr noundef nonnull %s) #18
  %add = add i32 %call, 1
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  %call1 = tail call ptr @__kmalloc_track_caller(i32 noundef %add, i32 noundef %gfp, i32 noundef %1) #15
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %2 = call ptr @memcpy(ptr %call1, ptr %s, i32 %add)
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmalloc_track_caller(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @kstrdup_const(ptr noundef %s, i32 noundef %gfp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not.i = icmp uge ptr %s, @__start_rodata
  %cmp1.i = icmp ult ptr %s, @__end_rodata
  %spec.select.i = and i1 %cmp.not.i, %cmp1.i
  br i1 %spec.select.i, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  %tobool.not.i = icmp eq ptr %s, null
  br i1 %tobool.not.i, label %if.end.return_crit_edge, label %if.end.i

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end.i:                                         ; preds = %if.end
  %call.i = tail call i32 @strlen(ptr noundef nonnull %s) #19
  %add.i = add i32 %call.i, 1
  %0 = tail call ptr @llvm.returnaddress(i32 0) #15
  %1 = ptrtoint ptr %0 to i32
  %call1.i = tail call ptr @__kmalloc_track_caller(i32 noundef %add.i, i32 noundef %gfp, i32 noundef %1) #15
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.end.i.return_crit_edge, label %if.then3.i

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %2 = call ptr @memcpy(ptr %call1.i, ptr %s, i32 %add.i)
  br label %return

return:                                           ; preds = %if.then3.i, %if.end.i.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi ptr [ %s, %entry.return_crit_edge ], [ null, %if.end.return_crit_edge ], [ %call1.i, %if.then3.i ], [ null, %if.end.i.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @kstrndup(ptr noundef readonly %s, i32 noundef %max, i32 noundef %gfp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %s, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @strnlen(ptr noundef nonnull %s, i32 noundef %max) #18
  %add = add i32 %call, 1
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  %call1 = tail call ptr @__kmalloc_track_caller(i32 noundef %add, i32 noundef %gfp, i32 noundef %1) #15
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %2 = call ptr @memcpy(ptr %call1, ptr %s, i32 %call)
  %arrayidx = getelementptr i8, ptr %call1, i32 %call
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %arrayidx, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @kmemdup(ptr nocapture noundef readonly %src, i32 noundef %len, i32 noundef %gfp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  %call = tail call ptr @__kmalloc_track_caller(i32 noundef %len, i32 noundef %gfp, i32 noundef %1) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %2 = call ptr @memcpy(ptr %call, ptr %src, i32 %len)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @kmemdup_nul(ptr noundef readonly %s, i32 noundef %len, i32 noundef %gfp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %s, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add i32 %len, 1
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  %call = tail call ptr @__kmalloc_track_caller(i32 noundef %add, i32 noundef %gfp, i32 noundef %1) #15
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %2 = call ptr @memcpy(ptr %call, ptr %s, i32 %len)
  %arrayidx = getelementptr i8, ptr %call, i32 %len
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %arrayidx, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %call, %if.then2 ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @memdup_user(ptr noundef %src, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  %call = tail call ptr @__kmalloc_track_caller(i32 noundef %len, i32 noundef 1060032, i32 noundef %1) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end8.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end8.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp9.i.i = icmp slt i32 %len, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end8.i.i
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.if.then4_crit_edge, label %if.then27.i.i, !prof !120

land.rhs16.i.i.if.then4_crit_edge:                ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then4

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 230, i32 noundef 9, ptr noundef null) #15
  br label %if.then4

if.then.i.i.i:                                    ; preds = %if.end8.i.i
  tail call void @__check_object_size(ptr noundef nonnull %call, i32 noundef %len, i1 noundef zeroext false) #15
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 156) #15
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %src, i32 %len, i32 -1226833920) #20, !srcloc !121
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !120

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef %len) #15
  %3 = tail call i32 @llvm.read_register.i32(metadata !110) #15
  %and.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #12, !srcloc !122
  %and.i.i.i.i = and i32 %5, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !124
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call, ptr noundef %src, i32 noundef %len) #15
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !124
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %len, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %len, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.then11.i.i, !prof !120

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i = sub i32 %len, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %call, i32 %sub.i.i
  %6 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %if.then4

if.then4:                                         ; preds = %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.if.then4_crit_edge
  tail call void @kfree(ptr noundef nonnull %call) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -14 to ptr), %if.then4 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ %call, %if.end.i.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vmemdup_user(ptr noundef %src, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %len)
  %cmp.i.i11 = icmp ugt i32 %len, 4096
  %spec.select = select i1 %cmp.i.i11, i32 1125568, i32 1051840
  %call.i4.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %len, i32 noundef %spec.select) #21
  %tobool5.not.i.i = icmp ne ptr %call.i4.i.i.i, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %len)
  %cmp6.i.i = icmp ult i32 %len, 4097
  %or.cond.i.i = or i1 %cmp6.i.i, %tobool5.not.i.i
  br i1 %or.cond.i.i, label %entry.kvmalloc.exit_crit_edge, label %if.end8.i.i16

entry.kvmalloc.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %kvmalloc.exit

if.end8.i.i16:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp9.i.i15 = icmp slt i32 %len, 0
  br i1 %cmp9.i.i15, label %if.then12.i.i, label %if.end61.i.i, !prof !125

if.then12.i.i:                                    ; preds = %if.end8.i.i16
  %.b78.i.i = load i1, ptr @kvmalloc_node.__already_done, align 1
  br i1 %.b78.i.i, label %if.then12.i.i.cleanup_crit_edge, label %if.then31.i.i, !prof !120

if.then12.i.i.cleanup_crit_edge:                  ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then31.i.i:                                    ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @kvmalloc_node.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 591, i32 noundef 9, ptr noundef null) #15
  br label %cleanup

if.end61.i.i:                                     ; preds = %if.end8.i.i16
  call void @__sanitizer_cov_trace_pc() #17
  %0 = tail call ptr @llvm.returnaddress(i32 0) #15
  %call62.i.i = tail call noalias ptr @__vmalloc_node(i32 noundef %len, i32 noundef 1, i32 noundef 1051840, i32 noundef -1, ptr noundef %0) #21
  br label %kvmalloc.exit

kvmalloc.exit:                                    ; preds = %if.end61.i.i, %entry.kvmalloc.exit_crit_edge
  %retval.0.i.i = phi ptr [ %call62.i.i, %if.end61.i.i ], [ %call.i4.i.i.i, %entry.kvmalloc.exit_crit_edge ]
  %tobool.not = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool.not, label %kvmalloc.exit.cleanup_crit_edge, label %if.end8.i.i

kvmalloc.exit.cleanup_crit_edge:                  ; preds = %kvmalloc.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end8.i.i:                                      ; preds = %kvmalloc.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp9.i.i = icmp slt i32 %len, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end8.i.i
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.if.then4_crit_edge, label %if.then27.i.i, !prof !120

land.rhs16.i.i.if.then4_crit_edge:                ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then4

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 230, i32 noundef 9, ptr noundef null) #15
  br label %if.then4

if.then.i.i.i:                                    ; preds = %if.end8.i.i
  tail call void @__check_object_size(ptr noundef nonnull %retval.0.i.i, i32 noundef %len, i1 noundef zeroext false) #15
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 156) #15
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %src, i32 %len, i32 -1226833920) #20, !srcloc !121
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !120

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %retval.0.i.i, i32 noundef %len) #15
  %2 = tail call i32 @llvm.read_register.i32(metadata !110) #15
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #12, !srcloc !122
  %and.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !124
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %retval.0.i.i, ptr noundef %src, i32 noundef %len) #15
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !124
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %len, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %len, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.then11.i.i, !prof !120

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i = sub i32 %len, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %retval.0.i.i, i32 %sub.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %if.then4

if.then4:                                         ; preds = %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.if.then4_crit_edge
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %retval.0.i.i) #15
  br i1 %call.i, label %if.then.i17, label %if.else.i

if.then.i17:                                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @vfree(ptr noundef nonnull %retval.0.i.i) #15
  br label %cleanup

if.else.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %retval.0.i.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then.i17, %if.end.i.i.cleanup_crit_edge, %kvmalloc.exit.cleanup_crit_edge, %if.then31.i.i, %if.then12.i.i.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %kvmalloc.exit.cleanup_crit_edge ], [ inttoptr (i32 -14 to ptr), %if.then.i17 ], [ inttoptr (i32 -14 to ptr), %if.else.i ], [ inttoptr (i32 -12 to ptr), %if.then31.i.i ], [ inttoptr (i32 -12 to ptr), %if.then12.i.i.cleanup_crit_edge ], [ %retval.0.i.i, %if.end.i.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kvfree(ptr noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %addr) #15
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @vfree(ptr noundef %addr) #15
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef %addr) #15
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @strndup_user(ptr noundef %s, i32 noundef %n) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strnlen_user(ptr noundef %s, i32 noundef %n) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %n)
  %cmp = icmp sgt i32 %call, %n
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @memdup_user(ptr noundef %s, i32 noundef %call)
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  %sub = add i32 %call, -1
  %arrayidx = getelementptr i8, ptr %call5, i32 %sub
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %arrayidx, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call5, %if.end8 ], [ %call5, %if.end4.cleanup_crit_edge ], [ inttoptr (i32 -14 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strnlen_user(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @memdup_user_nul(ptr noundef %src, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %len, 1
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  %call = tail call ptr @__kmalloc_track_caller(i32 noundef %add, i32 noundef 3264, i32 noundef %1) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end8.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end8.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp9.i.i = icmp slt i32 %len, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end8.i.i
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.if.then4_crit_edge, label %if.then27.i.i, !prof !120

land.rhs16.i.i.if.then4_crit_edge:                ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then4

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 230, i32 noundef 9, ptr noundef null) #15
  br label %if.then4

if.then.i.i.i:                                    ; preds = %if.end8.i.i
  tail call void @__check_object_size(ptr noundef nonnull %call, i32 noundef %len, i1 noundef zeroext false) #15
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 156) #15
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %src, i32 %len, i32 -1226833920) #20, !srcloc !121
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !120

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef %len) #15
  %3 = tail call i32 @llvm.read_register.i32(metadata !110) #15
  %and.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #12, !srcloc !122
  %and.i.i.i.i = and i32 %5, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !124
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call, ptr noundef %src, i32 noundef %len) #15
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #15, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !124
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %len, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %len, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end6, label %if.then11.i.i, !prof !120

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i = sub i32 %len, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %call, i32 %sub.i.i
  %6 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %if.then4

if.then4:                                         ; preds = %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.if.then4_crit_edge
  tail call void @kfree(ptr noundef nonnull %call) #15
  br label %cleanup

if.end6:                                          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx = getelementptr i8, ptr %call, i32 %len
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %arrayidx, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -14 to ptr), %if.then4 ], [ %call, %if.end6 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @__vma_link_list(ptr nocapture noundef %mm, ptr noundef %vma, ptr noundef %prev) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_prev = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 3
  %0 = ptrtoint ptr %vm_prev to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %prev, ptr %vm_prev, align 4
  %tobool.not = icmp eq ptr %prev, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %vm_next = getelementptr inbounds %struct.vm_area_struct, ptr %prev, i32 0, i32 2
  %1 = ptrtoint ptr %vm_next to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vm_next, align 4
  store ptr %vma, ptr %vm_next, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %3 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mm, align 8
  store ptr %vma, ptr %mm, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %next.0 = phi ptr [ %2, %if.then ], [ %4, %if.else ]
  %vm_next3 = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 2
  %5 = ptrtoint ptr %vm_next3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %next.0, ptr %vm_next3, align 4
  %tobool4.not = icmp eq ptr %next.0, null
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %vm_prev6 = getelementptr inbounds %struct.vm_area_struct, ptr %next.0, i32 0, i32 3
  %6 = ptrtoint ptr %vm_prev6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %vma, ptr %vm_prev6, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @__vma_unlink_list(ptr nocapture noundef writeonly %mm, ptr nocapture noundef readonly %vma) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_next = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 2
  %0 = ptrtoint ptr %vm_next to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_next, align 4
  %vm_prev = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 3
  %2 = ptrtoint ptr %vm_prev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vm_prev, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %vm_next1 = getelementptr inbounds %struct.vm_area_struct, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %vm_next1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %vm_next1, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %5 = ptrtoint ptr %mm to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %1, ptr %mm, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %vm_prev4 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %vm_prev4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %vm_prev4, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @vma_is_stack_for_current(ptr nocapture noundef readonly %vma) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !110) #15
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %4 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vma, align 4
  %stack = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %stack to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stack, align 4
  %arrayidx = getelementptr i8, ptr %7, i32 16356
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %9)
  %cmp.not = icmp ugt i32 %5, %9
  br i1 %cmp.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %10 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vm_end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %9)
  %cmp7 = icmp uge i32 %11, %9
  %phi.cast = zext i1 %cmp7 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %12 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vma_set_file(ptr nocapture noundef %vma, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %f_count.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %f_count.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %f_count.i, i32 1, i32 3, i32 1) #15
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %f_count.i, ptr %f_count.i, i32 1, ptr elementtype(i32) %f_count.i) #15, !srcloc !126
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 14
  %1 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vm_file, align 4
  store ptr %file, ptr %vm_file, align 4
  tail call void @fput(ptr noundef %2) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @randomize_stack_top(i32 noundef %stack_top) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !110) #15
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %flags = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = tail call i32 @get_random_u32() #15
  %and2 = and i32 %call.i, 2047
  %shl.neg = mul nsw i32 %and2, -4096
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %random_variable.0.neg = phi i32 [ %shl.neg, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %add = add i32 %stack_top, 4095
  %and3 = and i32 %add, -4096
  %sub = add i32 %random_variable.0.neg, %and3
  ret i32 %sub
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @arch_randomize_brk(ptr nocapture noundef readonly %mm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %brk = getelementptr inbounds %struct.anon, ptr %mm, i32 0, i32 33
  %0 = ptrtoint ptr %brk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %brk, align 8
  %call = tail call i32 @randomize_page(i32 noundef %1, i32 noundef 33554432) #15
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @randomize_page(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @arch_mmap_rnd() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @get_random_u32() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmap_rnd_bits to i32))
  %0 = load i32, ptr @mmap_rnd_bits, align 4
  %notmask = shl nsw i32 -1, %0
  %sub = xor i32 %notmask, -1
  %and = and i32 %call.i, %sub
  %shl1 = shl i32 %and, 12
  ret i32 %shl1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @arch_pick_mmap_layout(ptr nocapture noundef writeonly %mm, ptr nocapture noundef readonly %rlim_stack) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !110) #15
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %flags = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i = tail call i32 @get_random_u32() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmap_rnd_bits to i32))
  %6 = load i32, ptr @mmap_rnd_bits, align 4
  %notmask.i = shl nsw i32 -1, %6
  %sub.i = xor i32 %notmask.i, -1
  %and.i14 = and i32 %call.i.i, %sub.i
  %shl1.i = shl i32 %and.i14, 12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %random_factor.0 = phi i32 [ %shl1.i, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %7 = tail call i32 @llvm.read_register.i32(metadata !110) #15
  %and.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task.i, align 8
  %personality.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 62
  %11 = ptrtoint ptr %personality.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %personality.i, align 32
  %and.i15 = and i32 %12, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i15)
  %tobool.not.i = icmp eq i32 %and.i15, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.if.then4_crit_edge

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then4

if.end.i:                                         ; preds = %if.end
  %13 = ptrtoint ptr %rlim_stack to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rlim_stack, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp.i = icmp eq i32 %14, -1
  br i1 %cmp.i, label %if.end.i.if.then4_crit_edge, label %mmap_is_legacy.exit

if.end.i.if.then4_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then4

mmap_is_legacy.exit:                              ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_legacy_va_layout to i32))
  %15 = load i32, ptr @sysctl_legacy_va_layout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool3.not = icmp eq i32 %15, 0
  br i1 %tobool3.not, label %if.else, label %mmap_is_legacy.exit.if.then4_crit_edge

mmap_is_legacy.exit.if.then4_crit_edge:           ; preds = %mmap_is_legacy.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then4

if.then4:                                         ; preds = %mmap_is_legacy.exit.if.then4_crit_edge, %if.end.i.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %add = add i32 %random_factor.0, 1023410176
  br label %if.end8

if.else:                                          ; preds = %mmap_is_legacy.exit
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %rlim_stack to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rlim_stack, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @stack_guard_gap to i32))
  %18 = load i32, ptr @stack_guard_gap, align 4
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 3
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.i, align 4
  %and.i18 = and i32 %20, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i18)
  %tobool.not.i19 = icmp eq i32 %and.i18, 0
  %add.i = add i32 %18, 8384512
  %spec.select.i = select i1 %tobool.not.i19, i32 %18, i32 %add.i
  %add1.i = add i32 %spec.select.i, %17
  %21 = tail call i32 @llvm.umax.i32(i32 %add1.i, i32 %17) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %21)
  %cmp5.i = icmp ult i32 %21, 134217728
  %.pre = and i32 %12, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %tobool10.not.i = icmp eq i32 %.pre, 0
  %mul.i = select i1 %tobool10.not.i, i32 55924050, i32 -1738189486
  %22 = tail call i32 @llvm.umin.i32(i32 %21, i32 %mul.i) #15
  %gap.1.i = select i1 %cmp5.i, i32 134217728, i32 %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %tobool27.not.i = icmp eq i32 %.pre, 0
  %23 = select i1 %tobool27.not.i, i32 67112959, i32 -1226829825
  %24 = add i32 %random_factor.0, %gap.1.i
  %add30.i = sub i32 %23, %24
  %and31.i = and i32 %add30.i, -4096
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then4
  %and31.i.sink = phi i32 [ %and31.i, %if.else ], [ %add, %if.then4 ]
  %arch_get_unmapped_area_topdown.sink = phi ptr [ @arch_get_unmapped_area_topdown, %if.else ], [ @arch_get_unmapped_area, %if.then4 ]
  %mmap_base6 = getelementptr inbounds %struct.anon, ptr %mm, i32 0, i32 4
  %25 = ptrtoint ptr %mmap_base6 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and31.i.sink, ptr %mmap_base6, align 4
  %get_unmapped_area7 = getelementptr inbounds %struct.anon, ptr %mm, i32 0, i32 3
  %26 = ptrtoint ptr %get_unmapped_area7 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %arch_get_unmapped_area_topdown.sink, ptr %get_unmapped_area7, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arch_get_unmapped_area(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arch_get_unmapped_area_topdown(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__account_locked_vm(ptr noundef %mm, i32 noundef %pages, i1 noundef zeroext %inc, ptr nocapture noundef readonly %task, i1 noundef zeroext %bypass_rlim) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.rhs.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.anon, ptr %mm, i32 0, i32 15, i32 6
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !125

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 161, i32 noundef 9, ptr noundef null) #15
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %mmap_lock26.i = getelementptr inbounds %struct.anon, ptr %mm, i32 0, i32 15
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %mmap_lock26.i, i32 noundef 4) #15
  %1 = ptrtoint ptr %mmap_lock26.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %mmap_lock26.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i.not.i = icmp eq i32 %2, 0
  br i1 %cmp.i.not.i, label %if.then37.i, label %mmap_assert_write_locked.exit, !prof !125

if.then37.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_mm(ptr noundef %mm) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mmap_lock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 162, 0\0A.popsection", ""() #15, !srcloc !127
  unreachable

mmap_assert_write_locked.exit:                    ; preds = %if.end.i
  %locked_vm2 = getelementptr inbounds %struct.anon, ptr %mm, i32 0, i32 20
  %3 = ptrtoint ptr %locked_vm2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %locked_vm2, align 4
  br i1 %inc, label %if.then, label %if.else

if.then:                                          ; preds = %mmap_assert_write_locked.exit
  br i1 %bypass_rlim, label %if.then.if.then8_crit_edge, label %if.end6

if.then.if.then8_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %.pre = add i32 %4, %pages
  br label %do.body53.sink.split

if.end6:                                          ; preds = %if.then
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 111
  %5 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %signal.i, align 16
  %arrayidx.i = getelementptr %struct.signal_struct, ptr %6, i32 0, i32 51, i32 8
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %arrayidx.i, align 8
  %shr = lshr i32 %8, 12
  %add = add i32 %4, %pages
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %shr)
  %cmp = icmp ugt i32 %add, %shr
  br i1 %cmp, label %if.end6.do.body53_crit_edge, label %if.end6.do.body53.sink.split_crit_edge

if.end6.do.body53.sink.split_crit_edge:           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body53.sink.split

if.end6.do.body53_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body53

if.else:                                          ; preds = %mmap_assert_write_locked.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %pages)
  %cmp12 = icmp ult i32 %4, %pages
  br i1 %cmp12, label %land.rhs, label %if.else.if.end43_crit_edge

if.else.if.end43_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end43

land.rhs:                                         ; preds = %if.else
  %.b91 = load i1, ptr @__account_locked_vm.__already_done, align 1
  br i1 %.b91, label %land.rhs.if.end43_crit_edge, label %if.then21, !prof !120

land.rhs.if.end43_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end43

if.then21:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @__account_locked_vm.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 465, i32 noundef 9, ptr noundef null) #15
  br label %if.end43

if.end43:                                         ; preds = %if.then21, %land.rhs.if.end43_crit_edge, %if.else.if.end43_crit_edge
  %sub = sub i32 %4, %pages
  br label %do.body53.sink.split

do.body53.sink.split:                             ; preds = %if.end43, %if.end6.do.body53.sink.split_crit_edge, %if.then.if.then8_crit_edge
  %sub.sink = phi i32 [ %sub, %if.end43 ], [ %.pre, %if.then.if.then8_crit_edge ], [ %add, %if.end6.do.body53.sink.split_crit_edge ]
  %9 = ptrtoint ptr %locked_vm2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sub.sink, ptr %locked_vm2, align 4
  br label %do.body53

do.body53:                                        ; preds = %do.body53.sink.split, %if.end6.do.body53_crit_edge
  %tobool68.not = phi ptr [ @.str.5, %do.body53.sink.split ], [ @.str.4, %if.end6.do.body53_crit_edge ]
  %ret.1 = phi i32 [ 0, %do.body53.sink.split ], [ -12, %if.end6.do.body53_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__account_locked_vm.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__account_locked_vm, %if.then64)) #15
          to label %do.end72 [label %if.then64], !srcloc !128

if.then64:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #17
  %pid = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 68
  %10 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid, align 8
  %12 = tail call ptr @llvm.returnaddress(i32 0)
  %cond = select i1 %inc, i32 43, i32 45
  %shl = shl i32 %pages, 12
  %shl66 = shl i32 %4, 12
  %signal.i93 = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 111
  %13 = ptrtoint ptr %signal.i93 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %signal.i93, align 16
  %arrayidx.i94 = getelementptr %struct.signal_struct, ptr %14, i32 0, i32 51, i32 8
  %15 = ptrtoint ptr %arrayidx.i94 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %arrayidx.i94, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__account_locked_vm.__UNIQUE_ID_ddebug298, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef %11, ptr noundef %12, i32 noundef %cond, i32 noundef %shl, i32 noundef %shl66, i32 noundef %16, ptr noundef nonnull %tobool68.not) #15
  br label %do.end72

do.end72:                                         ; preds = %if.then64, %do.body53
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @account_locked_vm(ptr noundef %mm, i32 noundef %pages, i1 noundef zeroext %inc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pages)
  %cmp = icmp eq i32 %pages, 0
  %tobool.not = icmp eq ptr %mm, null
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@account_locked_vm, %if.then.i.i)) #15
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !128

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef nonnull %mm, i1 noundef zeroext true) #15
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %if.end
  %mmap_lock.i = getelementptr inbounds %struct.anon, ptr %mm, i32 0, i32 15
  tail call void @down_write(ptr noundef %mmap_lock.i) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@account_locked_vm, %if.then.i3.i)) #15
          to label %mmap_write_lock.exit [label %if.then.i3.i], !srcloc !128

if.then.i3.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef nonnull %mm, i1 noundef zeroext true, i1 noundef zeroext true) #15
  br label %mmap_write_lock.exit

mmap_write_lock.exit:                             ; preds = %if.then.i3.i, %__mmap_lock_trace_start_locking.exit.i
  %0 = tail call i32 @llvm.read_register.i32(metadata !110) #15
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %call2 = tail call zeroext i1 @capable(i32 noundef 14) #15
  %call3 = tail call i32 @__account_locked_vm(ptr noundef nonnull %mm, i32 noundef %pages, i1 noundef zeroext %inc, ptr noundef %3, i1 noundef zeroext %call2)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@account_locked_vm, %if.then.i.i8)) #15
          to label %mmap_write_unlock.exit [label %if.then.i.i8], !srcloc !128

if.then.i.i8:                                     ; preds = %mmap_write_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__mmap_lock_do_trace_released(ptr noundef nonnull %mm, i1 noundef zeroext true) #15
  br label %mmap_write_unlock.exit

mmap_write_unlock.exit:                           ; preds = %if.then.i.i8, %mmap_write_lock.exit
  tail call void @up_write(ptr noundef %mmap_lock.i) #15
  br label %cleanup

cleanup:                                          ; preds = %mmap_write_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %mmap_write_unlock.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vm_mmap_pgoff(ptr noundef %file, i32 noundef %addr, i32 noundef %len, i32 noundef %prot, i32 noundef %flag, i32 noundef %pgoff) local_unnamed_addr #0 align 64 {
entry:
  %populate = alloca i32, align 4
  %uf = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !110) #15
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %mm1 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %mm1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mm1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %populate) #15
  %6 = ptrtoint ptr %populate to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %populate, align 4, !annotation !129
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %uf) #15
  %7 = getelementptr inbounds %struct.list_head, ptr %uf, i32 0, i32 1
  %8 = ptrtoint ptr %uf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %uf, ptr %uf, align 4
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %uf, ptr %7, align 4
  %call2 = call i32 @security_mmap_file(ptr noundef %file, i32 noundef %prot, i32 noundef %flag) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@vm_mmap_pgoff, %if.then.i.i)) #15
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !128

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  call void @__mmap_lock_do_trace_start_locking(ptr noundef %5, i1 noundef zeroext true) #15
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %if.then
  %mmap_lock.i = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 15
  %call.i = call i32 @down_write_killable(ptr noundef %mmap_lock.i) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@vm_mmap_pgoff, %if.then.i4.i)) #15
          to label %mmap_write_lock_killable.exit [label %if.then.i4.i], !srcloc !128

if.then.i4.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %5, i1 noundef zeroext true, i1 noundef zeroext %cmp.i) #15
  br label %mmap_write_lock_killable.exit

mmap_write_lock_killable.exit:                    ; preds = %if.then.i4.i, %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %if.end, label %mmap_write_lock_killable.exit.cleanup_crit_edge

mmap_write_lock_killable.exit.cleanup_crit_edge:  ; preds = %mmap_write_lock_killable.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %mmap_write_lock_killable.exit
  %call6 = call i32 @do_mmap(ptr noundef %file, i32 noundef %addr, i32 noundef %len, i32 noundef %prot, i32 noundef %flag, i32 noundef %pgoff, ptr noundef nonnull %populate, ptr noundef nonnull %uf) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@vm_mmap_pgoff, %if.then.i.i21)) #15
          to label %mmap_write_unlock.exit [label %if.then.i.i21], !srcloc !128

if.then.i.i21:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  call void @__mmap_lock_do_trace_released(ptr noundef %5, i1 noundef zeroext true) #15
  br label %mmap_write_unlock.exit

mmap_write_unlock.exit:                           ; preds = %if.then.i.i21, %if.end
  call void @up_write(ptr noundef %mmap_lock.i) #15
  call void @userfaultfd_unmap_complete(ptr noundef %5, ptr noundef nonnull %uf) #15
  %10 = ptrtoint ptr %populate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %populate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool7.not = icmp eq i32 %11, 0
  br i1 %tobool7.not, label %mmap_write_unlock.exit.cleanup_crit_edge, label %if.then8

mmap_write_unlock.exit.cleanup_crit_edge:         ; preds = %mmap_write_unlock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then8:                                         ; preds = %mmap_write_unlock.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call.i23 = call i32 @__mm_populate(i32 noundef %call6, i32 noundef %11, i32 noundef 1) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %mmap_write_unlock.exit.cleanup_crit_edge, %mmap_write_lock_killable.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -4, %mmap_write_lock_killable.exit.cleanup_crit_edge ], [ %call2, %entry.cleanup_crit_edge ], [ %call6, %if.then8 ], [ %call6, %mmap_write_unlock.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %uf) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %populate) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_mmap_file(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_mmap(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @userfaultfd_unmap_complete(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vm_mmap(ptr noundef %file, i32 noundef %addr, i32 noundef %len, i32 noundef %prot, i32 noundef %flag, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %len, 4095
  %and = and i32 %add, -4096
  %0 = xor i32 %offset, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %0)
  %cmp = icmp ule i32 %and, %0
  %and3 = and i32 %offset, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %or.cond = and i1 %cmp, %tobool4.not
  br i1 %or.cond, label %if.end12, label %entry.return_crit_edge, !prof !130

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end12:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %shr = lshr i32 %offset, 12
  %call = tail call i32 @vm_mmap_pgoff(ptr noundef %file, i32 noundef %addr, i32 noundef %len, i32 noundef %prot, i32 noundef %flag, i32 noundef %shr)
  br label %return

return:                                           ; preds = %if.end12, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end12 ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong allocsize(0) uwtable(sync)
define dso_local noalias ptr @kvmalloc_node(i32 noundef %size, i32 noundef %flags, i32 noundef %node) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %size)
  %cmp = icmp ugt i32 %size, 4096
  br i1 %cmp, label %if.then, label %entry.if.end5.i_crit_edge

entry.if.end5.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5.i

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %and = and i32 %flags, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select.v = select i1 %tobool.not, i32 73728, i32 8192
  %flags.masked = and i32 %flags, -32769
  %and3 = or i32 %spec.select.v, %flags.masked
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then, %entry.if.end5.i_crit_edge
  %kmalloc_flags.1 = phi i32 [ %and3, %if.then ], [ %flags, %entry.if.end5.i_crit_edge ]
  %call.i4.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %size, i32 noundef %kmalloc_flags.1) #21
  %tobool5.not = icmp ne ptr %call.i4.i, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %size)
  %cmp6 = icmp ult i32 %size, 4097
  %or.cond = or i1 %cmp6, %tobool5.not
  br i1 %or.cond, label %if.end5.i.cleanup_crit_edge, label %if.end8

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end8:                                          ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp9 = icmp slt i32 %size, 0
  br i1 %cmp9, label %if.then12, label %if.end61, !prof !125

if.then12:                                        ; preds = %if.end8
  %and13 = and i32 %flags, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %land.rhs, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.rhs:                                         ; preds = %if.then12
  %.b78 = load i1, ptr @kvmalloc_node.__already_done, align 1
  br i1 %.b78, label %land.rhs.cleanup_crit_edge, label %if.then31, !prof !120

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then31:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @kvmalloc_node.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 591, i32 noundef 9, ptr noundef null) #15
  br label %cleanup

if.end61:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %call62 = tail call noalias ptr @__vmalloc_node(i32 noundef %size, i32 noundef 1, i32 noundef %flags, i32 noundef %node, ptr noundef %0) #21
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.then31, %land.rhs.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %if.end5.i.cleanup_crit_edge
  %retval.0 = phi ptr [ %call62, %if.end61 ], [ %call.i4.i, %if.end5.i.cleanup_crit_edge ], [ null, %if.then12.cleanup_crit_edge ], [ null, %if.then31 ], [ null, %land.rhs.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__vmalloc_node(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kvfree_sensitive(ptr noundef %addr, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not = icmp ult ptr %addr, inttoptr (i32 17 to ptr)
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then, !prof !125

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  %0 = call ptr @memset(ptr %addr, i32 0, i32 %len)
  tail call void asm sideeffect "", "r,~{memory}"(ptr %addr) #15, !srcloc !131
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %addr) #15
  br i1 %call.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @vfree(ptr noundef %addr) #15
  br label %if.end

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef %addr) #15
  br label %if.end

if.end:                                           ; preds = %if.else.i, %if.then.i, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong allocsize(2) uwtable(sync)
define dso_local noalias ptr @kvrealloc(ptr noundef %p, i32 noundef %oldsize, i32 noundef %newsize, i32 noundef %flags) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp4(i32 %oldsize, i32 %newsize)
  %cmp.not = icmp ult i32 %oldsize, %newsize
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %newsize)
  %cmp.i.i = icmp ugt i32 %newsize, 4096
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.if.end5.i.i.i_crit_edge

if.end.if.end5.i.i.i_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5.i.i.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %and.i.i = and i32 %flags, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %spec.select.v.i.i = select i1 %tobool.not.i.i, i32 73728, i32 8192
  %flags.masked.i.i = and i32 %flags, -32769
  %and3.i.i = or i32 %spec.select.v.i.i, %flags.masked.i.i
  br label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.then.i.i, %if.end.if.end5.i.i.i_crit_edge
  %kmalloc_flags.1.i.i = phi i32 [ %and3.i.i, %if.then.i.i ], [ %flags, %if.end.if.end5.i.i.i_crit_edge ]
  %call.i4.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %newsize, i32 noundef %kmalloc_flags.1.i.i) #21
  %tobool5.not.i.i = icmp ne ptr %call.i4.i.i.i, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %newsize)
  %cmp6.i.i = icmp ult i32 %newsize, 4097
  %or.cond.i.i = or i1 %cmp6.i.i, %tobool5.not.i.i
  br i1 %or.cond.i.i, label %if.end5.i.i.i.kvmalloc.exit_crit_edge, label %if.end8.i.i

if.end5.i.i.i.kvmalloc.exit_crit_edge:            ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %kvmalloc.exit

if.end8.i.i:                                      ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %newsize)
  %cmp9.i.i = icmp slt i32 %newsize, 0
  br i1 %cmp9.i.i, label %if.then12.i.i, label %if.end61.i.i, !prof !125

if.then12.i.i:                                    ; preds = %if.end8.i.i
  %and13.i.i = and i32 %flags, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i.i)
  %tobool14.not.i.i = icmp eq i32 %and13.i.i, 0
  br i1 %tobool14.not.i.i, label %land.rhs.i.i, label %if.then12.i.i.cleanup_crit_edge

if.then12.i.i.cleanup_crit_edge:                  ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.rhs.i.i:                                     ; preds = %if.then12.i.i
  %.b78.i.i = load i1, ptr @kvmalloc_node.__already_done, align 1
  br i1 %.b78.i.i, label %land.rhs.i.i.cleanup_crit_edge, label %if.then31.i.i, !prof !120

land.rhs.i.i.cleanup_crit_edge:                   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then31.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @kvmalloc_node.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 591, i32 noundef 9, ptr noundef null) #15
  br label %cleanup

if.end61.i.i:                                     ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %0 = tail call ptr @llvm.returnaddress(i32 0) #15
  %call62.i.i = tail call noalias ptr @__vmalloc_node(i32 noundef %newsize, i32 noundef 1, i32 noundef %flags, i32 noundef -1, ptr noundef %0) #21
  br label %kvmalloc.exit

kvmalloc.exit:                                    ; preds = %if.end61.i.i, %if.end5.i.i.i.kvmalloc.exit_crit_edge
  %retval.0.i.i = phi ptr [ %call62.i.i, %if.end61.i.i ], [ %call.i4.i.i.i, %if.end5.i.i.i.kvmalloc.exit_crit_edge ]
  %tobool.not = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool.not, label %kvmalloc.exit.cleanup_crit_edge, label %if.end2

kvmalloc.exit.cleanup_crit_edge:                  ; preds = %kvmalloc.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end2:                                          ; preds = %kvmalloc.exit
  %1 = call ptr @memcpy(ptr %retval.0.i.i, ptr %p, i32 %oldsize)
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %p) #15
  br i1 %call.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @vfree(ptr noundef %p) #15
  br label %cleanup

if.else.i:                                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef %p) #15
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then.i, %kvmalloc.exit.cleanup_crit_edge, %if.then31.i.i, %land.rhs.i.i.cleanup_crit_edge, %if.then12.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %p, %entry.cleanup_crit_edge ], [ null, %kvmalloc.exit.cleanup_crit_edge ], [ %retval.0.i.i, %if.then.i ], [ %retval.0.i.i, %if.else.i ], [ null, %if.then12.i.i.cleanup_crit_edge ], [ null, %if.then31.i.i ], [ null, %land.rhs.i.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @page_rmapping(ptr noundef %page) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !120

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %mapping1.i = getelementptr inbounds %struct.anon.81, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %mapping1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mapping1.i, align 4
  %7 = ptrtoint ptr %6 to i32
  %and.i2 = and i32 %7, -4
  %8 = inttoptr i32 %and.i2 to ptr
  ret ptr %8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @folio_mapped(ptr noundef %folio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_test_large.exit, label %if.then.i.i.i, !prof !120

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.16) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #15, !srcloc !132
  unreachable

folio_test_large.exit:                            ; preds = %entry
  %3 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %folio, align 4
  %5 = and i32 %4, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.i.not = icmp eq i32 %5, 0
  br i1 %tobool.i.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %folio_test_large.exit
  call void @__sanitizer_cov_trace_pc() #17
  %_mapcount = getelementptr inbounds %struct.anon.81, ptr %folio, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_mapcount, i32 noundef 4) #15
  %6 = ptrtoint ptr %_mapcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %_mapcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp = icmp sgt i32 %7, -1
  br label %cleanup

if.end:                                           ; preds = %folio_test_large.exit
  %compound_mapcount.i = getelementptr %struct.page, ptr %folio, i32 1, i32 1, i32 0, i32 1
  %call.i.i24 = tail call zeroext i1 @__kasan_check_read(ptr noundef %compound_mapcount.i, i32 noundef 4) #15
  %8 = ptrtoint ptr %compound_mapcount.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %compound_mapcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp4 = icmp sgt i32 %9, -1
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %10 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %folio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp.i.not.i.i.i = icmp eq i32 %11, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i26, label %PageHead.exit.i.i, !prof !125

if.then.i.i.i26:                                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.18) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #15, !srcloc !133
  unreachable

PageHead.exit.i.i:                                ; preds = %if.end6
  %12 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %folio, align 4
  %14 = and i32 %13, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i.i, label %PageHead.exit.i.i.for.body.preheader_crit_edge, label %folio_nr_pages.exit

PageHead.exit.i.i.for.body.preheader_crit_edge:   ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.preheader

folio_nr_pages.exit:                              ; preds = %PageHead.exit.i.i
  %compound_nr.i.i = getelementptr %struct.page, ptr %folio, i32 1, i32 1, i32 0, i32 2
  %15 = ptrtoint ptr %compound_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %compound_nr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp1127 = icmp sgt i32 %16, 0
  br i1 %cmp1127, label %folio_nr_pages.exit.for.body.preheader_crit_edge, label %folio_nr_pages.exit.cleanup_crit_edge

folio_nr_pages.exit.cleanup_crit_edge:            ; preds = %folio_nr_pages.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

folio_nr_pages.exit.for.body.preheader_crit_edge: ; preds = %folio_nr_pages.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.preheader

for.body.preheader:                               ; preds = %folio_nr_pages.exit.for.body.preheader_crit_edge, %PageHead.exit.i.i.for.body.preheader_crit_edge
  %retval.0.i.i32 = phi i32 [ %16, %folio_nr_pages.exit.for.body.preheader_crit_edge ], [ 1, %PageHead.exit.i.i.for.body.preheader_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.028 = phi i32 [ 0, %for.body.preheader ], [ %inc, %for.body.for.body_crit_edge ]
  %17 = getelementptr %struct.page, ptr %folio, i32 %i.028, i32 2
  %call.i.i25 = tail call zeroext i1 @__kasan_check_read(ptr noundef %17, i32 noundef 4) #15
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %cmp13 = icmp sgt i32 %19, -1
  %inc = add nuw nsw i32 %i.028, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %retval.0.i.i32)
  %exitcond.not = icmp eq i32 %inc, %retval.0.i.i32
  %or.cond = select i1 %cmp13, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %folio_nr_pages.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i1 [ %cmp, %if.then ], [ true, %if.end.cleanup_crit_edge ], [ false, %folio_nr_pages.exit.cleanup_crit_edge ], [ %cmp13, %for.body.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @page_anon_vma(ptr noundef %page) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !120

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %mapping1 = getelementptr inbounds %struct.anon.81, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %mapping1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mapping1, align 4
  %7 = ptrtoint ptr %6 to i32
  %and = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp.not = icmp eq i32 %and, 1
  %sub = add i32 %7, -1
  %8 = inttoptr i32 %sub to ptr
  %retval.0 = select i1 %cmp.not, ptr %8, ptr null
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @folio_mapping(ptr noundef %folio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_test_slab.exit, label %if.then.i.i, !prof !120

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.16) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #15, !srcloc !132
  unreachable

folio_test_slab.exit:                             ; preds = %entry
  %3 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %folio, align 4
  %5 = and i32 %4, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not = icmp eq i32 %5, 0
  br i1 %tobool.i.not, label %if.end, label %folio_test_slab.exit.cleanup_crit_edge, !prof !120

folio_test_slab.exit.cleanup_crit_edge:           ; preds = %folio_test_slab.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %folio_test_slab.exit
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %0, align 4
  %and.i.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_test_swapbacked.exit.i, label %if.then.i.i.i, !prof !120

if.then.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.16) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #15, !srcloc !132
  unreachable

folio_test_swapbacked.exit.i:                     ; preds = %if.end
  %8 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %folio, align 4
  %10 = and i32 %9, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not.i = icmp eq i32 %10, 0
  br i1 %tobool.i.not.i, label %folio_test_swapbacked.exit.i.if.end19_crit_edge, label %land.rhs.i

folio_test_swapbacked.exit.i.if.end19_crit_edge:  ; preds = %folio_test_swapbacked.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

land.rhs.i:                                       ; preds = %folio_test_swapbacked.exit.i
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %0, align 4
  %and.i.i.i31 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i31)
  %tobool.not.i.i32 = icmp eq i32 %and.i.i.i31, 0
  br i1 %tobool.not.i.i32, label %folio_test_swapcache.exit, label %if.then.i.i33, !prof !120

if.then.i.i33:                                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.16) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #15, !srcloc !132
  unreachable

folio_test_swapcache.exit:                        ; preds = %land.rhs.i
  %13 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %folio, align 4
  %15 = and i32 %14, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i34.not = icmp eq i32 %15, 0
  br i1 %tobool.i34.not, label %folio_test_swapcache.exit.if.end19_crit_edge, label %if.then9, !prof !120

folio_test_swapcache.exit.if.end19_crit_edge:     ; preds = %folio_test_swapcache.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

if.then9:                                         ; preds = %folio_test_swapcache.exit
  call void @__sanitizer_cov_trace_pc() #17
  %private.i = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1, i32 0, i32 3
  %16 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %private.i, align 4
  %shr.i = lshr i32 %17, 26
  %arrayidx = getelementptr [0 x ptr], ptr @swapper_spaces, i32 0, i32 %shr.i
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %and.i = lshr i32 %17, 14
  %shr = and i32 %and.i, 4095
  %arrayidx18 = getelementptr %struct.address_space, ptr %19, i32 %shr
  br label %cleanup

if.end19:                                         ; preds = %folio_test_swapcache.exit.if.end19_crit_edge, %folio_test_swapbacked.exit.i.if.end19_crit_edge
  %mapping20 = getelementptr inbounds %struct.anon.81, ptr %folio, i32 0, i32 2
  %20 = ptrtoint ptr %mapping20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mapping20, align 4
  %22 = ptrtoint ptr %21 to i32
  %and = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  %and24 = and i32 %22, -4
  %23 = inttoptr i32 %and24 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end19.cleanup_crit_edge, %if.then9, %folio_test_slab.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %arrayidx18, %if.then9 ], [ %23, %if.end23 ], [ null, %folio_test_slab.exit.cleanup_crit_edge ], [ null, %if.end19.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__page_mapcount(ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %0, i32 noundef 4) #15
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %add = add i32 %2, 1
  %3 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %3, align 4
  %and.i2.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i)
  %tobool.not.i.i = icmp eq i32 %and.i2.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !120

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i = add i32 %5, -1
  br label %PageAnon.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %6 = ptrtoint ptr %page to i32
  br label %PageAnon.exit

PageAnon.exit:                                    ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %6, %if.end.i.i ]
  %7 = inttoptr i32 %retval.0.i.i to ptr
  %mapping.i.i = getelementptr inbounds %struct.anon.81, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mapping.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  %and.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.i.not = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.i.not, label %PageAnon.exit.cleanup_crit_edge, label %if.end

PageAnon.exit.cleanup_crit_edge:                  ; preds = %PageAnon.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %PageAnon.exit
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %3, align 4
  %and.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !120

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i = add i32 %12, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %13 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %13, %if.end.i ]
  %14 = inttoptr i32 %retval.0.i to ptr
  %compound_mapcount.i = getelementptr %struct.page, ptr %14, i32 1, i32 1, i32 0, i32 1
  %call.i.i20 = tail call zeroext i1 @__kasan_check_read(ptr noundef %compound_mapcount.i, i32 noundef 4) #15
  %15 = ptrtoint ptr %compound_mapcount.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %compound_mapcount.i, align 4
  %add6 = add i32 %2, 2
  %add7 = add i32 %add6, %16
  br label %cleanup

cleanup:                                          ; preds = %_compound_head.exit, %PageAnon.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %add7, %_compound_head.exit ], [ %add, %PageAnon.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @folio_copy(ptr noundef %dst, ptr noundef %src) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.i.not.i.i.i = icmp eq i32 %1, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i, label %PageHead.exit.i.i, !prof !125

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %src, ptr noundef nonnull @.str.18) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #15, !srcloc !133
  unreachable

PageHead.exit.i.i:                                ; preds = %entry
  %2 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %src, align 4
  %4 = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i, label %PageHead.exit.i.i.folio_nr_pages.exit_crit_edge, label %if.end.i.i

PageHead.exit.i.i.folio_nr_pages.exit_crit_edge:  ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %folio_nr_pages.exit

if.end.i.i:                                       ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %compound_nr.i.i = getelementptr %struct.page, ptr %src, i32 1, i32 1, i32 0, i32 2
  %5 = ptrtoint ptr %compound_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %compound_nr.i.i, align 4
  br label %folio_nr_pages.exit

folio_nr_pages.exit:                              ; preds = %if.end.i.i, %PageHead.exit.i.i.folio_nr_pages.exit_crit_edge
  %retval.0.i.i = phi i32 [ %6, %if.end.i.i ], [ 1, %PageHead.exit.i.i.folio_nr_pages.exit_crit_edge ]
  br label %for.cond

for.cond:                                         ; preds = %if.end, %folio_nr_pages.exit
  %i.0 = phi i32 [ 0, %folio_nr_pages.exit ], [ %inc, %if.end ]
  %add.ptr = getelementptr %struct.page, ptr %dst, i32 %i.0
  %add.ptr1 = getelementptr %struct.page, ptr %src, i32 %i.0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %7 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %7, 512
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr1, i32 noundef %or.i.i) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %8 = load i32, ptr @pgprot_kernel, align 4
  %or.i13.i = or i32 %8, 512
  %call.i14.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr, i32 noundef %or.i13.i) #15
  tail call void @copy_page(ptr noundef %call.i14.i, ptr noundef %call.i.i) #15
  tail call void @kunmap_local_indexed(ptr noundef %call.i14.i) #15
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #15
  %inc = add i32 %i.0, 1
  %cmp = icmp eq i32 %inc, %retval.0.i.i
  br i1 %cmp, label %for.end, label %if.end

if.end:                                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 764, i32 noundef 0) #15
  %call.i = tail call i32 @__cond_resched() #15
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @overcommit_ratio_handler(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @proc_dointvec(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp ne i32 %call, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool.not = icmp eq i32 %write, 0
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  store i32 0, ptr @sysctl_overcommit_kbytes, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @overcommit_policy_handler(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) local_unnamed_addr #0 align 64 {
entry:
  %t = alloca %struct.ctl_table, align 4
  %new_policy = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %t) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_policy) #15
  %0 = ptrtoint ptr %new_policy to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %new_policy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool.not = icmp eq i32 %write, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = call ptr @memcpy(ptr %t, ptr %table, i32 36)
  %data = getelementptr inbounds %struct.ctl_table, ptr %t, i32 0, i32 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %new_policy, ptr %data, align 4
  %call = call i32 @proc_dointvec_minmax(ptr noundef nonnull %t, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %lor.lhs.false, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then
  %3 = ptrtoint ptr %new_policy to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %new_policy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp = icmp eq i32 %4, -1
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @mm_compute_batch(i32 noundef %4) #15
  %5 = ptrtoint ptr %new_policy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %new_policy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp3 = icmp eq i32 %6, 2
  br i1 %cmp3, label %if.then4, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call5 = call i32 @schedule_on_each_cpu(ptr noundef nonnull @sync_overcommit_as) #15
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %7 = ptrtoint ptr %new_policy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %new_policy, align 4
  store i32 %8, ptr @sysctl_overcommit_memory, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call7 = tail call i32 @proc_dointvec_minmax(ptr noundef %table, i32 noundef 0, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #15
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end6, %lor.lhs.false.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ %call, %if.then.cleanup_crit_edge ], [ 0, %if.end6 ], [ %call7, %if.else ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_policy) #15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %t) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mm_compute_batch(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_on_each_cpu(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sync_overcommit_as(ptr nocapture noundef readnone %dummy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @percpu_counter_sync(ptr noundef nonnull @vm_committed_as) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @overcommit_kbytes_handler(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @proc_doulongvec_minmax(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp ne i32 %call, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool.not = icmp eq i32 %write, 0
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  store i32 0, ptr @sysctl_overcommit_ratio, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_doulongvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vm_commit_limit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @sysctl_overcommit_kbytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %shr = lshr i32 %0, 2
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @_totalram_pages, i32 noundef 4) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @_totalram_pages to i32))
  %1 = load volatile i32, ptr @_totalram_pages, align 4
  %2 = load i32, ptr @sysctl_overcommit_ratio, align 4
  %mul = mul i32 %2, %1
  %div = udiv i32 %mul, 100
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %allowed.0 = phi i32 [ %shr, %if.then ], [ %div, %if.else ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @total_swap_pages to i32))
  %3 = load i32, ptr @total_swap_pages, align 4
  %add = add i32 %3, %allowed.0
  ret i32 %add
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vm_memory_committed() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i64 @__percpu_counter_sum(ptr noundef nonnull @vm_committed_as) #15
  %0 = tail call i64 @llvm.smax.i64(i64 %call.i, i64 0) #15
  %conv = trunc i64 %0 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__vm_enough_memory(ptr noundef readonly %mm, i32 noundef %pages, i32 noundef %cap_sys_admin) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %conv.i = sext i32 %pages to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vm_committed_as_batch to i32))
  %0 = load i32, ptr @vm_committed_as_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef nonnull @vm_committed_as, i64 noundef %conv.i, i32 noundef %0) #15
  %1 = load i32, ptr @sysctl_overcommit_memory, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %if.end6 [
    i32 1, label %entry.cleanup_crit_edge
    i32 0, label %if.then2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then2:                                         ; preds = %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @_totalram_pages, i32 noundef 4) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @_totalram_pages to i32))
  %3 = load volatile i32, ptr @_totalram_pages, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @total_swap_pages to i32))
  %4 = load i32, ptr @total_swap_pages, align 4
  %add = add i32 %4, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %pages)
  %cmp3 = icmp ult i32 %add, %pages
  br i1 %cmp3, label %if.then2.error_crit_edge, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then2.error_crit_edge:                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  br label %error

if.end6:                                          ; preds = %entry
  %5 = load i32, ptr @sysctl_overcommit_kbytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  %shr.i = lshr i32 %5, 2
  br label %vm_commit_limit.exit

if.else.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @_totalram_pages, i32 noundef 4) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @_totalram_pages to i32))
  %6 = load volatile i32, ptr @_totalram_pages, align 4
  %7 = load i32, ptr @sysctl_overcommit_ratio, align 4
  %mul.i = mul i32 %7, %6
  %div.i = udiv i32 %mul.i, 100
  br label %vm_commit_limit.exit

vm_commit_limit.exit:                             ; preds = %if.else.i, %if.then.i
  %allowed.0.i = phi i32 [ %shr.i, %if.then.i ], [ %div.i, %if.else.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @total_swap_pages to i32))
  %8 = load i32, ptr @total_swap_pages, align 4
  %add.i = add i32 %8, %allowed.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cap_sys_admin)
  %tobool.not = icmp eq i32 %cap_sys_admin, 0
  br i1 %tobool.not, label %if.then8, label %vm_commit_limit.exit.if.end9_crit_edge

vm_commit_limit.exit.if.end9_crit_edge:           ; preds = %vm_commit_limit.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

if.then8:                                         ; preds = %vm_commit_limit.exit
  call void @__sanitizer_cov_trace_pc() #17
  %9 = load i32, ptr @sysctl_admin_reserve_kbytes, align 4
  %shr = lshr i32 %9, 2
  %sub = sub i32 %add.i, %shr
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %vm_commit_limit.exit.if.end9_crit_edge
  %allowed.0 = phi i32 [ %add.i, %vm_commit_limit.exit.if.end9_crit_edge ], [ %sub, %if.then8 ]
  %tobool10.not = icmp eq ptr %mm, null
  br i1 %tobool10.not, label %if.end9.if.end15_crit_edge, label %if.then11

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  %10 = load i32, ptr @sysctl_user_reserve_kbytes, align 4
  %shr12 = lshr i32 %10, 2
  %total_vm = getelementptr inbounds %struct.anon, ptr %mm, i32 0, i32 19
  %11 = ptrtoint ptr %total_vm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %total_vm, align 8
  %div28 = lshr i32 %12, 5
  %13 = tail call i32 @llvm.umin.i32(i32 %div28, i32 %shr12)
  %sub14 = sub i32 %allowed.0, %13
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end9.if.end15_crit_edge
  %allowed.1 = phi i32 [ %sub14, %if.then11 ], [ %allowed.0, %if.end9.if.end15_crit_edge ]
  %14 = load volatile i64, ptr getelementptr inbounds (%struct.percpu_counter, ptr @vm_committed_as, i32 0, i32 1), align 16
  %15 = tail call i64 @llvm.smax.i64(i64 %14, i64 0) #15
  %conv = sext i32 %allowed.1 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %conv)
  %cmp17 = icmp slt i64 %15, %conv
  br i1 %cmp17, label %if.end15.cleanup_crit_edge, label %if.end15.error_crit_edge

if.end15.error_crit_edge:                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %error

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

error:                                            ; preds = %if.end15.error_crit_edge, %if.then2.error_crit_edge
  %sub.i = sub i32 0, %pages
  %conv.i.i = sext i32 %sub.i to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vm_committed_as_batch to i32))
  %16 = load i32, ptr @vm_committed_as_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef nonnull @vm_committed_as, i64 noundef %conv.i.i, i32 noundef %16) #15
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end15.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %error ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then2.cleanup_crit_edge ], [ 0, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @get_cmdline(ptr noundef %task, ptr noundef %buffer, i32 noundef %buflen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @get_task_mm(ptr noundef %task) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %entry
  %arg_end1 = getelementptr inbounds %struct.anon, ptr %call, i32 0, i32 36
  %0 = ptrtoint ptr %arg_end1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arg_end1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool2.not = icmp eq i32 %1, 0
  br i1 %tobool2.not, label %if.end.out_mm_crit_edge, label %if.end4

if.end.out_mm_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_mm

if.end4:                                          ; preds = %if.end
  %arg_lock = getelementptr inbounds %struct.anon, ptr %call, i32 0, i32 27
  tail call void @_raw_spin_lock(ptr noundef %arg_lock) #15
  %arg_start5 = getelementptr inbounds %struct.anon, ptr %call, i32 0, i32 35
  %2 = ptrtoint ptr %arg_start5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arg_start5, align 8
  %4 = ptrtoint ptr %arg_end1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arg_end1, align 4
  %env_start7 = getelementptr inbounds %struct.anon, ptr %call, i32 0, i32 37
  %6 = ptrtoint ptr %env_start7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %env_start7, align 8
  %env_end8 = getelementptr inbounds %struct.anon, ptr %call, i32 0, i32 38
  %8 = ptrtoint ptr %env_end8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %env_end8, align 4
  tail call void @_raw_spin_unlock(ptr noundef %arg_lock) #15
  %sub = sub i32 %5, %3
  %10 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %buflen)
  %call12 = tail call i32 @access_process_vm(ptr noundef %task, i32 noundef %3, ptr noundef %buffer, i32 noundef %10, i32 noundef 16) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp sgt i32 %call12, 0
  br i1 %cmp13, label %land.lhs.true, label %if.end4.out_mm_crit_edge

if.end4.out_mm_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_mm

land.lhs.true:                                    ; preds = %if.end4
  %sub14 = add nsw i32 %call12, -1
  %arrayidx = getelementptr i8, ptr %buffer, i32 %sub14
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp15.not = icmp ne i8 %12, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %buflen)
  %cmp18 = icmp ult i32 %sub, %buflen
  %or.cond = and i1 %cmp18, %cmp15.not
  br i1 %or.cond, label %if.then20, label %land.lhs.true.out_mm_crit_edge

land.lhs.true.out_mm_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_mm

if.then20:                                        ; preds = %land.lhs.true
  %call21 = tail call i32 @strnlen(ptr noundef %buffer, i32 noundef %call12) #18
  call void @__sanitizer_cov_trace_cmp4(i32 %call21, i32 %call12)
  %cmp22 = icmp ult i32 %call21, %call12
  br i1 %cmp22, label %if.then20.out_mm_crit_edge, label %if.else

if.then20.out_mm_crit_edge:                       ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_mm

if.else:                                          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #17
  %sub25 = sub i32 %9, %7
  %sub26 = sub i32 %buflen, %call12
  %13 = tail call i32 @llvm.umin.i32(i32 %sub25, i32 %sub26)
  %add.ptr = getelementptr i8, ptr %buffer, i32 %call12
  %call32 = tail call i32 @access_process_vm(ptr noundef %task, i32 noundef %7, ptr noundef %add.ptr, i32 noundef %13, i32 noundef 16) #15
  %add = add i32 %call32, %call12
  %call33 = tail call i32 @strnlen(ptr noundef %buffer, i32 noundef %add) #18
  br label %out_mm

out_mm:                                           ; preds = %if.else, %if.then20.out_mm_crit_edge, %land.lhs.true.out_mm_crit_edge, %if.end4.out_mm_crit_edge, %if.end.out_mm_crit_edge
  %res.0 = phi i32 [ %call33, %if.else ], [ %call12, %land.lhs.true.out_mm_crit_edge ], [ %call12, %if.end4.out_mm_crit_edge ], [ 0, %if.end.out_mm_crit_edge ], [ %call21, %if.then20.out_mm_crit_edge ]
  tail call void @mmput(ptr noundef nonnull %call) #15
  br label %out

out:                                              ; preds = %out_mm, %entry.out_crit_edge
  %res.1 = phi i32 [ %res.0, %out_mm ], [ 0, %entry.out_crit_edge ]
  ret i32 %res.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_task_mm(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @access_process_vm(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmput(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local i32 @memcmp_pages(ptr noundef %page1, ptr noundef %page2) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %0 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %0, 512
  %1 = tail call i32 @llvm.read_register.i32(metadata !110) #15
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !134
  %5 = tail call i32 @llvm.read_register.i32(metadata !110) #15
  %and.i.i.i1.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 213
  %9 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %10, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !135
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %page1, i32 noundef %or.i) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %11 = load i32, ptr @pgprot_kernel, align 4
  %or.i14 = or i32 %11, 512
  %12 = tail call i32 @llvm.read_register.i32(metadata !110) #15
  %and.i.i.i.i.i15 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i15 to ptr
  %preempt_count.i.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i16, align 4
  %add.i.i.i17 = add i32 %15, 1
  store volatile i32 %add.i.i.i17, ptr %preempt_count.i.i.i.i16, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !134
  %16 = tail call i32 @llvm.read_register.i32(metadata !110) #15
  %and.i.i.i1.i.i18 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i1.i.i18 to ptr
  %task.i.i.i.i19 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task.i.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task.i.i.i.i19, align 8
  %pagefault_disabled.i.i.i.i20 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 213
  %20 = ptrtoint ptr %pagefault_disabled.i.i.i.i20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pagefault_disabled.i.i.i.i20, align 8
  %inc.i.i.i.i21 = add i32 %21, 1
  store i32 %inc.i.i.i.i21, ptr %pagefault_disabled.i.i.i.i20, align 8
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !135
  %call.i.i22 = tail call ptr @__kmap_local_page_prot(ptr noundef %page2, i32 noundef %or.i14) #15
  %call2 = tail call i32 @memcmp(ptr noundef dereferenceable(4096) %call.i.i, ptr noundef dereferenceable(4096) %call.i.i22, i32 noundef 4096) #18
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i22) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !136
  %22 = tail call i32 @llvm.read_register.i32(metadata !110) #15
  %and.i.i.i1.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 213
  %26 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %27, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !137
  %28 = tail call i32 @llvm.read_register.i32(metadata !110) #15
  %and.i.i.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %31, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !136
  %32 = tail call i32 @llvm.read_register.i32(metadata !110) #15
  %and.i.i.i1.i23 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i1.i23 to ptr
  %task.i.i.i24 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %task.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task.i.i.i24, align 8
  %pagefault_disabled.i.i.i25 = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 213
  %36 = ptrtoint ptr %pagefault_disabled.i.i.i25 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pagefault_disabled.i.i.i25, align 8
  %dec.i.i.i26 = add i32 %37, -1
  store i32 %dec.i.i.i26, ptr %pagefault_disabled.i.i.i25, align 8
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !137
  %38 = tail call i32 @llvm.read_register.i32(metadata !110) #15
  %and.i.i.i.i27 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i27 to ptr
  %preempt_count.i.i.i28 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i28 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i28, align 4
  %sub.i.i29 = add i32 %41, -1
  store volatile i32 %sub.i.i29, ptr %preempt_count.i.i.i28, align 4
  ret i32 %call2
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mem_dump_obj(ptr noundef %object) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @kmem_valid_obj(ptr noundef %object) #15
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kmem_dump_obj(ptr noundef %object) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call zeroext i1 @vmalloc_dump_obj(ptr noundef %object) #15
  br i1 %call1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %0 = ptrtoint ptr %object to i32
  %cmp = icmp ugt ptr %object, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp, label %land.lhs.true, label %if.end3.if.else_crit_edge

if.end3.if.else_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

land.lhs.true:                                    ; preds = %if.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %1 = load ptr, ptr @high_memory, align 4
  %cmp4 = icmp ugt ptr %1, %object
  br i1 %cmp4, label %land.lhs.true5, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

land.lhs.true5:                                   ; preds = %land.lhs.true
  %sub = add i32 %0, 1073741824
  %shr = lshr i32 %sub, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %2 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %2, %shr
  %call6 = tail call i32 @pfn_valid(i32 noundef %add) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %land.lhs.true5.if.else_crit_edge, label %land.lhs.true5.do.end_crit_edge

land.lhs.true5.do.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true5.if.else_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

if.else:                                          ; preds = %land.lhs.true5.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %if.end3.if.else_crit_edge
  %switch.selectcmp = icmp eq ptr %object, inttoptr (i32 16 to ptr)
  %switch.select = select i1 %switch.selectcmp, ptr @.str.8, ptr @.str.9
  %switch.selectcmp25 = icmp eq ptr %object, null
  %switch.select26 = select i1 %switch.selectcmp25, ptr @.str.7, ptr %switch.select
  br label %do.end

do.end:                                           ; preds = %if.else, %land.lhs.true5.do.end_crit_edge
  %type.0 = phi ptr [ @.str.6, %land.lhs.true5.do.end_crit_edge ], [ %switch.select26, %if.else ]
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull %type.0) #22
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kmem_valid_obj(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_dump_obj(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @vmalloc_dump_obj(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @page_offline_freeze() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_read(ptr noundef nonnull @page_offline_rwsem) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @page_offline_thaw() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @up_read(ptr noundef nonnull @page_offline_rwsem) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @page_offline_begin() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_write(ptr noundef nonnull @page_offline_rwsem) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @page_offline_end() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @up_write(ptr noundef nonnull @page_offline_rwsem) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @flush_dcache_folio(ptr noundef %folio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %folio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.i.not.i.i.i = icmp eq i32 %1, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i, label %PageHead.exit.i.i, !prof !125

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.18) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #15, !srcloc !133
  unreachable

PageHead.exit.i.i:                                ; preds = %entry
  %2 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %folio, align 4
  %4 = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i, label %PageHead.exit.i.i.for.body.preheader_crit_edge, label %folio_nr_pages.exit

PageHead.exit.i.i.for.body.preheader_crit_edge:   ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.preheader

folio_nr_pages.exit:                              ; preds = %PageHead.exit.i.i
  %compound_nr.i.i = getelementptr %struct.page, ptr %folio, i32 1, i32 1, i32 0, i32 2
  %5 = ptrtoint ptr %compound_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %compound_nr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp4 = icmp sgt i32 %6, 0
  br i1 %cmp4, label %folio_nr_pages.exit.for.body.preheader_crit_edge, label %folio_nr_pages.exit.for.end_crit_edge

folio_nr_pages.exit.for.end_crit_edge:            ; preds = %folio_nr_pages.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

folio_nr_pages.exit.for.body.preheader_crit_edge: ; preds = %folio_nr_pages.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.preheader

for.body.preheader:                               ; preds = %folio_nr_pages.exit.for.body.preheader_crit_edge, %PageHead.exit.i.i.for.body.preheader_crit_edge
  %retval.0.i.i8 = phi i32 [ %6, %folio_nr_pages.exit.for.body.preheader_crit_edge ], [ 1, %PageHead.exit.i.i.for.body.preheader_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.05 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %add.ptr = getelementptr %struct.page, ptr %folio, i32 %i.05
  tail call void @flush_dcache_page(ptr noundef %add.ptr) #15
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, %retval.0.i.i8
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %folio_nr_pages.exit.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #1

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
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_random_u32() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_mm(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_killable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mm_populate(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @copy_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__percpu_counter_sum(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #14

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind null_pointer_is_valid sanitize_address sspstrong allocsize(0) uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind null_pointer_is_valid sanitize_address sspstrong allocsize(2) uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind readonly }
attributes #13 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { nobuiltin }
attributes #19 = { nobuiltin nounwind }
attributes #20 = { nounwind readnone }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !27, !28, !29, !30, !31, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !77, !78, !79, !81, !83, !85, !87, !89, !91, !93, !94, !96, !98, !100, !102, !104, !106, !108, !109}
!llvm.named.register.sp = !{!110}
!llvm.module.flags = !{!111, !112, !113, !114, !115, !116, !117, !118}
!llvm.ident = !{!119}

!0 = !{ptr @__ksymtab_kfree_const, !1, !"__ksymtab_kfree_const", i1 false, i1 false}
!1 = !{!"../mm/util.c", i32 42, i32 1}
!2 = !{ptr @__ksymtab_kstrdup, !3, !"__ksymtab_kstrdup", i1 false, i1 false}
!3 = !{!"../mm/util.c", i32 65, i32 1}
!4 = !{ptr @__ksymtab_kstrdup_const, !5, !"__ksymtab_kstrdup_const", i1 false, i1 false}
!5 = !{!"../mm/util.c", i32 85, i32 1}
!6 = !{ptr @__ksymtab_kstrndup, !7, !"__ksymtab_kstrndup", i1 false, i1 false}
!7 = !{!"../mm/util.c", i32 113, i32 1}
!8 = !{ptr @__ksymtab_kmemdup, !9, !"__ksymtab_kmemdup", i1 false, i1 false}
!9 = !{!"../mm/util.c", i32 133, i32 1}
!10 = !{ptr @__ksymtab_kmemdup_nul, !11, !"__ksymtab_kmemdup_nul", i1 false, i1 false}
!11 = !{!"../mm/util.c", i32 158, i32 1}
!12 = !{ptr @__ksymtab_memdup_user, !13, !"__ksymtab_memdup_user", i1 false, i1 false}
!13 = !{!"../mm/util.c", i32 184, i32 1}
!14 = !{ptr @__ksymtab_vmemdup_user, !15, !"__ksymtab_vmemdup_user", i1 false, i1 false}
!15 = !{!"../mm/util.c", i32 210, i32 1}
!16 = !{ptr @__ksymtab_strndup_user, !17, !"__ksymtab_strndup_user", i1 false, i1 false}
!17 = !{!"../mm/util.c", i32 241, i32 1}
!18 = !{ptr @__ksymtab_memdup_user_nul, !19, !"__ksymtab_memdup_user_nul", i1 false, i1 false}
!19 = !{!"../mm/util.c", i32 272, i32 1}
!20 = !{ptr @__ksymtab_vma_set_file, !21, !"__ksymtab_vma_set_file", i1 false, i1 false}
!21 = !{!"../mm/util.c", i32 324, i32 1}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../mm/util.c", i32 465, i32 3}
!24 = !{ptr @.str, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.1, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../mm/util.c", i32 469, i32 2}
!27 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @__account_locked_vm.__UNIQUE_ID_ddebug298, !26, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!30 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @__ksymtab___account_locked_vm, !33, !"__ksymtab___account_locked_vm", i1 false, i1 false}
!33 = !{!"../mm/util.c", i32 476, i32 1}
!34 = !{ptr @__ksymtab_account_locked_vm, !35, !"__ksymtab_account_locked_vm", i1 false, i1 false}
!35 = !{!"../mm/util.c", i32 504, i32 1}
!36 = !{ptr @__ksymtab_vm_mmap, !37, !"__ksymtab_vm_mmap", i1 false, i1 false}
!37 = !{!"../mm/util.c", i32 540, i32 1}
!38 = distinct !{null, !39, !"__already_done", i1 false, i1 false}
!39 = !{!"../mm/util.c", i32 591, i32 3}
!40 = !{ptr @__ksymtab_kvmalloc_node, !41, !"__ksymtab_kvmalloc_node", i1 false, i1 false}
!41 = !{!"../mm/util.c", i32 598, i32 1}
!42 = !{ptr @__ksymtab_kvfree, !43, !"__ksymtab_kvfree", i1 false, i1 false}
!43 = !{!"../mm/util.c", i32 617, i32 1}
!44 = !{ptr @__ksymtab_kvfree_sensitive, !45, !"__ksymtab_kvfree_sensitive", i1 false, i1 false}
!45 = !{!"../mm/util.c", i32 635, i32 1}
!46 = !{ptr @__ksymtab_kvrealloc, !47, !"__ksymtab_kvrealloc", i1 false, i1 false}
!47 = !{!"../mm/util.c", i32 650, i32 1}
!48 = !{ptr @__ksymtab_folio_mapped, !49, !"__ksymtab_folio_mapped", i1 false, i1 false}
!49 = !{!"../mm/util.c", i32 682, i32 1}
!50 = !{ptr @__ksymtab_folio_mapping, !51, !"__ksymtab_folio_mapping", i1 false, i1 false}
!51 = !{!"../mm/util.c", i32 723, i32 1}
!52 = !{ptr @__ksymtab___page_mapcount, !53, !"__ksymtab___page_mapcount", i1 false, i1 false}
!53 = !{!"../mm/util.c", i32 743, i32 1}
!54 = !{ptr @sysctl_overcommit_memory, !55, !"sysctl_overcommit_memory", i1 false, i1 false}
!55 = !{!"../mm/util.c", i32 768, i32 5}
!56 = !{ptr @sysctl_overcommit_ratio, !57, !"sysctl_overcommit_ratio", i1 false, i1 false}
!57 = !{!"../mm/util.c", i32 769, i32 5}
!58 = !{ptr @sysctl_max_map_count, !59, !"sysctl_max_map_count", i1 false, i1 false}
!59 = !{!"../mm/util.c", i32 771, i32 5}
!60 = !{ptr @sysctl_user_reserve_kbytes, !61, !"sysctl_user_reserve_kbytes", i1 false, i1 false}
!61 = !{!"../mm/util.c", i32 772, i32 15}
!62 = !{ptr @sysctl_admin_reserve_kbytes, !63, !"sysctl_admin_reserve_kbytes", i1 false, i1 false}
!63 = !{!"../mm/util.c", i32 773, i32 15}
!64 = !{ptr @__ksymtab_vm_memory_committed, !65, !"__ksymtab_vm_memory_committed", i1 false, i1 false}
!65 = !{!"../mm/util.c", i32 878, i32 1}
!66 = !{ptr @.str.6, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../mm/util.c", i32 1035, i32 10}
!68 = !{ptr @.str.7, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../mm/util.c", i32 1037, i32 10}
!70 = !{ptr @.str.8, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../mm/util.c", i32 1039, i32 10}
!72 = !{ptr @.str.9, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../mm/util.c", i32 1041, i32 10}
!74 = !{ptr @.str.10, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../mm/util.c", i32 1043, i32 2}
!76 = !{ptr @.str.11, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @mem_dump_obj._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @mem_dump_obj._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @__ksymtab_mem_dump_obj, !80, !"__ksymtab_mem_dump_obj", i1 false, i1 false}
!80 = !{!"../mm/util.c", i32 1045, i32 1}
!81 = !{ptr @__ksymtab_page_offline_begin, !82, !"__ksymtab_page_offline_begin", i1 false, i1 false}
!82 = !{!"../mm/util.c", i32 1080, i32 1}
!83 = !{ptr @__ksymtab_page_offline_end, !84, !"__ksymtab_page_offline_end", i1 false, i1 false}
!84 = !{!"../mm/util.c", i32 1086, i32 1}
!85 = !{ptr @__ksymtab_flush_dcache_folio, !86, !"__ksymtab_flush_dcache_folio", i1 false, i1 false}
!86 = !{!"../mm/util.c", i32 1096, i32 1}
!87 = !{ptr @sysctl_overcommit_kbytes, !88, !"sysctl_overcommit_kbytes", i1 false, i1 false}
!88 = !{!"../mm/util.c", i32 770, i32 15}
!89 = !{ptr @vm_committed_as, !90, !"vm_committed_as", i1 false, i1 false}
!90 = !{!"../mm/util.c", i32 859, i32 23}
!91 = distinct !{null, !92, !"__already_done", i1 false, i1 false}
!92 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!93 = !{ptr @.str.12, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.13, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!96 = !{ptr @.str.14, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!98 = !{ptr @.str.15, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../include/linux/mmap_lock.h", i32 161, i32 2}
!100 = !{ptr @.str.16, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!102 = distinct !{null, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!104 = !{ptr @.str.18, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../include/linux/page-flags.h", i32 698, i32 1}
!106 = !{ptr @.str.19, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../mm/util.c", i32 1064, i32 8}
!108 = !{ptr @.str.20, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @page_offline_rwsem, !107, !"page_offline_rwsem", i1 false, i1 false}
!110 = !{!"sp"}
!111 = !{i32 1, !"wchar_size", i32 2}
!112 = !{i32 1, !"min_enum_size", i32 4}
!113 = !{i32 8, !"branch-target-enforcement", i32 0}
!114 = !{i32 8, !"sign-return-address", i32 0}
!115 = !{i32 8, !"sign-return-address-all", i32 0}
!116 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!117 = !{i32 7, !"uwtable", i32 1}
!118 = !{i32 7, !"frame-pointer", i32 2}
!119 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!120 = !{!"branch_weights", i32 2000, i32 1}
!121 = !{i64 2152751441, i64 2152751466}
!122 = !{i64 5246996}
!123 = !{i64 5247193}
!124 = !{i64 2152732426}
!125 = !{!"branch_weights", i32 1, i32 2000}
!126 = !{i64 2148691211, i64 2148691237, i64 2148691266, i64 2148691300, i64 2148691331, i64 2148691354}
!127 = !{i64 2151250894, i64 2151251384, i64 2151250931, i64 2151250987, i64 2151251021, i64 2151251045, i64 2151251086, i64 2151251107, i64 2151251135, i64 2151251169}
!128 = !{i64 2148291888, i64 2148291893, i64 2148291906, i64 2148291950, i64 2148291984, i64 2148292005}
!129 = !{!"auto-init"}
!130 = !{!"branch_weights", i32 4000000, i32 4001}
!131 = !{i64 2149269954}
!132 = !{i64 2150246209, i64 2150246700, i64 2150246246, i64 2150246302, i64 2150246336, i64 2150246360, i64 2150246401, i64 2150246422, i64 2150246450, i64 2150246484}
!133 = !{i64 2151012995, i64 2151013486, i64 2151013032, i64 2151013088, i64 2151013122, i64 2151013146, i64 2151013187, i64 2151013208, i64 2151013236, i64 2151013270}
!134 = !{i64 2154344382}
!135 = !{i64 2152754258}
!136 = !{i64 2152754465}
!137 = !{i64 2154347153}
