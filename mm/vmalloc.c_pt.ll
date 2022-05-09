; ModuleID = '/llk/IR_all_yes/mm/vmalloc.c_pt.bc'
source_filename = "../mm/vmalloc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+is_vmalloc_addr\22, \22a\22\09"
module asm "\09.weak\09__crc_is_vmalloc_addr\09\09\09\09"
module asm "\09.long\09__crc_is_vmalloc_addr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_is_vmalloc_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22is_vmalloc_addr\22\09\09\09\09\09"
module asm "__kstrtabns_is_vmalloc_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vmalloc_to_page\22, \22a\22\09"
module asm "\09.weak\09__crc_vmalloc_to_page\09\09\09\09"
module asm "\09.long\09__crc_vmalloc_to_page\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vmalloc_to_page:\09\09\09\09\09"
module asm "\09.asciz \09\22vmalloc_to_page\22\09\09\09\09\09"
module asm "__kstrtabns_vmalloc_to_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vmalloc_to_pfn\22, \22a\22\09"
module asm "\09.weak\09__crc_vmalloc_to_pfn\09\09\09\09"
module asm "\09.long\09__crc_vmalloc_to_pfn\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vmalloc_to_pfn:\09\09\09\09\09"
module asm "\09.asciz \09\22vmalloc_to_pfn\22\09\09\09\09\09"
module asm "__kstrtabns_vmalloc_to_pfn:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+register_vmap_purge_notifier\22, \22a\22\09"
module asm "\09.weak\09__crc_register_vmap_purge_notifier\09\09\09\09"
module asm "\09.long\09__crc_register_vmap_purge_notifier\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_vmap_purge_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22register_vmap_purge_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_register_vmap_purge_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+unregister_vmap_purge_notifier\22, \22a\22\09"
module asm "\09.weak\09__crc_unregister_vmap_purge_notifier\09\09\09\09"
module asm "\09.long\09__crc_unregister_vmap_purge_notifier\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_vmap_purge_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_vmap_purge_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_vmap_purge_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+vm_unmap_aliases\22, \22a\22\09"
module asm "\09.weak\09__crc_vm_unmap_aliases\09\09\09\09"
module asm "\09.long\09__crc_vm_unmap_aliases\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vm_unmap_aliases:\09\09\09\09\09"
module asm "\09.asciz \09\22vm_unmap_aliases\22\09\09\09\09\09"
module asm "__kstrtabns_vm_unmap_aliases:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vm_unmap_ram\22, \22a\22\09"
module asm "\09.weak\09__crc_vm_unmap_ram\09\09\09\09"
module asm "\09.long\09__crc_vm_unmap_ram\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vm_unmap_ram:\09\09\09\09\09"
module asm "\09.asciz \09\22vm_unmap_ram\22\09\09\09\09\09"
module asm "__kstrtabns_vm_unmap_ram:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vm_map_ram\22, \22a\22\09"
module asm "\09.weak\09__crc_vm_map_ram\09\09\09\09"
module asm "\09.long\09__crc_vm_map_ram\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vm_map_ram:\09\09\09\09\09"
module asm "\09.asciz \09\22vm_map_ram\22\09\09\09\09\09"
module asm "__kstrtabns_vm_map_ram:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vfree\22, \22a\22\09"
module asm "\09.weak\09__crc_vfree\09\09\09\09"
module asm "\09.long\09__crc_vfree\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfree:\09\09\09\09\09"
module asm "\09.asciz \09\22vfree\22\09\09\09\09\09"
module asm "__kstrtabns_vfree:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vunmap\22, \22a\22\09"
module asm "\09.weak\09__crc_vunmap\09\09\09\09"
module asm "\09.long\09__crc_vunmap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vunmap:\09\09\09\09\09"
module asm "\09.asciz \09\22vunmap\22\09\09\09\09\09"
module asm "__kstrtabns_vunmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vmap\22, \22a\22\09"
module asm "\09.weak\09__crc_vmap\09\09\09\09"
module asm "\09.long\09__crc_vmap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vmap:\09\09\09\09\09"
module asm "\09.asciz \09\22vmap\22\09\09\09\09\09"
module asm "__kstrtabns_vmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__vmalloc_node\22, \22a\22\09"
module asm "\09.weak\09__crc___vmalloc_node\09\09\09\09"
module asm "\09.long\09__crc___vmalloc_node\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___vmalloc_node:\09\09\09\09\09"
module asm "\09.asciz \09\22__vmalloc_node\22\09\09\09\09\09"
module asm "__kstrtabns___vmalloc_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__vmalloc\22, \22a\22\09"
module asm "\09.weak\09__crc___vmalloc\09\09\09\09"
module asm "\09.long\09__crc___vmalloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___vmalloc:\09\09\09\09\09"
module asm "\09.asciz \09\22__vmalloc\22\09\09\09\09\09"
module asm "__kstrtabns___vmalloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vmalloc\22, \22a\22\09"
module asm "\09.weak\09__crc_vmalloc\09\09\09\09"
module asm "\09.long\09__crc_vmalloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vmalloc:\09\09\09\09\09"
module asm "\09.asciz \09\22vmalloc\22\09\09\09\09\09"
module asm "__kstrtabns_vmalloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vmalloc_no_huge\22, \22a\22\09"
module asm "\09.weak\09__crc_vmalloc_no_huge\09\09\09\09"
module asm "\09.long\09__crc_vmalloc_no_huge\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vmalloc_no_huge:\09\09\09\09\09"
module asm "\09.asciz \09\22vmalloc_no_huge\22\09\09\09\09\09"
module asm "__kstrtabns_vmalloc_no_huge:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vzalloc\22, \22a\22\09"
module asm "\09.weak\09__crc_vzalloc\09\09\09\09"
module asm "\09.long\09__crc_vzalloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vzalloc:\09\09\09\09\09"
module asm "\09.asciz \09\22vzalloc\22\09\09\09\09\09"
module asm "__kstrtabns_vzalloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vmalloc_user\22, \22a\22\09"
module asm "\09.weak\09__crc_vmalloc_user\09\09\09\09"
module asm "\09.long\09__crc_vmalloc_user\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vmalloc_user:\09\09\09\09\09"
module asm "\09.asciz \09\22vmalloc_user\22\09\09\09\09\09"
module asm "__kstrtabns_vmalloc_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vmalloc_node\22, \22a\22\09"
module asm "\09.weak\09__crc_vmalloc_node\09\09\09\09"
module asm "\09.long\09__crc_vmalloc_node\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vmalloc_node:\09\09\09\09\09"
module asm "\09.asciz \09\22vmalloc_node\22\09\09\09\09\09"
module asm "__kstrtabns_vmalloc_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vzalloc_node\22, \22a\22\09"
module asm "\09.weak\09__crc_vzalloc_node\09\09\09\09"
module asm "\09.long\09__crc_vzalloc_node\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vzalloc_node:\09\09\09\09\09"
module asm "\09.asciz \09\22vzalloc_node\22\09\09\09\09\09"
module asm "__kstrtabns_vzalloc_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vmalloc_32\22, \22a\22\09"
module asm "\09.weak\09__crc_vmalloc_32\09\09\09\09"
module asm "\09.long\09__crc_vmalloc_32\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vmalloc_32:\09\09\09\09\09"
module asm "\09.asciz \09\22vmalloc_32\22\09\09\09\09\09"
module asm "__kstrtabns_vmalloc_32:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vmalloc_32_user\22, \22a\22\09"
module asm "\09.weak\09__crc_vmalloc_32_user\09\09\09\09"
module asm "\09.long\09__crc_vmalloc_32_user\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vmalloc_32_user:\09\09\09\09\09"
module asm "\09.asciz \09\22vmalloc_32_user\22\09\09\09\09\09"
module asm "__kstrtabns_vmalloc_32_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+remap_vmalloc_range\22, \22a\22\09"
module asm "\09.weak\09__crc_remap_vmalloc_range\09\09\09\09"
module asm "\09.long\09__crc_remap_vmalloc_range\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_remap_vmalloc_range:\09\09\09\09\09"
module asm "\09.asciz \09\22remap_vmalloc_range\22\09\09\09\09\09"
module asm "__kstrtabns_remap_vmalloc_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+free_vm_area\22, \22a\22\09"
module asm "\09.weak\09__crc_free_vm_area\09\09\09\09"
module asm "\09.long\09__crc_free_vm_area\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_free_vm_area:\09\09\09\09\09"
module asm "\09.asciz \09\22free_vm_area\22\09\09\09\09\09"
module asm "__kstrtabns_free_vm_area:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mm_struct = type { %struct.anon, [0 x i32] }
%struct.anon = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.vmap_block_queue = type { %struct.spinlock, %struct.list_head }
%struct.lock_class_key = type { %union.anon.7 }
%union.anon.7 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.vfree_deferred = type { %struct.llist_head, %struct.work_struct }
%struct.llist_head = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.static_key_true = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.16 }
%union.anon.16 = type { i32 }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.page = type { i32, %union.anon.3, %union.anon.75, %struct.atomic_t, i32 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.75 = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.28 }
%union.anon.28 = type { %struct.anon.29 }
%struct.anon.29 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.55 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.vmap_block = type { %struct.spinlock, ptr, i32, i32, i32, i32, %struct.list_head, %struct.callback_head, %struct.list_head }
%struct.vmap_area = type { i32, i32, %struct.rb_node, %struct.list_head, %union.anon.84 }
%union.anon.84 = type { i32 }
%struct.vm_struct = type { ptr, ptr, i32, i32, ptr, i32, i32, ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.anon.81 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t, i32 }
%struct.obj_cgroup = type { %struct.percpu_ref, ptr, %struct.atomic_t, %union.anon.83 }
%struct.percpu_ref = type { i32, ptr }
%union.anon.83 = type { %struct.list_head }

@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_is_vmalloc_addr = external dso_local constant [0 x i8], align 1
@__kstrtabns_is_vmalloc_addr = external dso_local constant [0 x i8], align 1
@__ksymtab_is_vmalloc_addr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @is_vmalloc_addr to i32), ptr @__kstrtab_is_vmalloc_addr, ptr @__kstrtabns_is_vmalloc_addr }, section "___ksymtab+is_vmalloc_addr", align 4
@init_mm = external dso_local global %struct.mm_struct, align 8
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mm/vmalloc.c\00", [19 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_vmalloc_to_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_vmalloc_to_page = external dso_local constant [0 x i8], align 1
@__ksymtab_vmalloc_to_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vmalloc_to_page to i32), ptr @__kstrtab_vmalloc_to_page, ptr @__kstrtabns_vmalloc_to_page }, section "___ksymtab+vmalloc_to_page", align 4
@__kstrtab_vmalloc_to_pfn = external dso_local constant [0 x i8], align 1
@__kstrtabns_vmalloc_to_pfn = external dso_local constant [0 x i8], align 1
@__ksymtab_vmalloc_to_pfn = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vmalloc_to_pfn to i32), ptr @__kstrtab_vmalloc_to_pfn, ptr @__kstrtabns_vmalloc_to_pfn }, section "___ksymtab+vmalloc_to_pfn", align 4
@vmap_area_list = dso_local global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @vmap_area_list, ptr @vmap_area_list }, [24 x i8] zeroinitializer }, align 32
@nr_vmalloc_pages = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@vmap_notify_list = internal global { %struct.blocking_notifier_head, [60 x i8] } { %struct.blocking_notifier_head { %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @vmap_notify_list, i64 56), ptr getelementptr (i8, ptr @vmap_notify_list, i64 56) }, ptr @vmap_notify_list, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 4, i8 0, i32 0, i32 0 } }, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_register_vmap_purge_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_vmap_purge_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_register_vmap_purge_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_vmap_purge_notifier to i32), ptr @__kstrtab_register_vmap_purge_notifier, ptr @__kstrtabns_register_vmap_purge_notifier }, section "___ksymtab_gpl+register_vmap_purge_notifier", align 4
@__kstrtab_unregister_vmap_purge_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_vmap_purge_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_vmap_purge_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_vmap_purge_notifier to i32), ptr @__kstrtab_unregister_vmap_purge_notifier, ptr @__kstrtabns_unregister_vmap_purge_notifier }, section "___ksymtab_gpl+unregister_vmap_purge_notifier", align 4
@__kstrtab_vm_unmap_aliases = external dso_local constant [0 x i8], align 1
@__kstrtabns_vm_unmap_aliases = external dso_local constant [0 x i8], align 1
@__ksymtab_vm_unmap_aliases = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vm_unmap_aliases to i32), ptr @__kstrtab_vm_unmap_aliases, ptr @__kstrtabns_vm_unmap_aliases }, section "___ksymtab_gpl+vm_unmap_aliases", align 4
@__kstrtab_vm_unmap_ram = external dso_local constant [0 x i8], align 1
@__kstrtabns_vm_unmap_ram = external dso_local constant [0 x i8], align 1
@__ksymtab_vm_unmap_ram = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vm_unmap_ram to i32), ptr @__kstrtab_vm_unmap_ram, ptr @__kstrtabns_vm_unmap_ram }, section "___ksymtab+vm_unmap_ram", align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_vm_map_ram = external dso_local constant [0 x i8], align 1
@__kstrtabns_vm_map_ram = external dso_local constant [0 x i8], align 1
@__ksymtab_vm_map_ram = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vm_map_ram to i32), ptr @__kstrtab_vm_map_ram, ptr @__kstrtabns_vm_map_ram }, section "___ksymtab+vm_map_ram", align 4
@vmap_initialized = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@vmlist = internal unnamed_addr global ptr null, section ".init.data", align 4
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vmap_area\00", [22 x i8] zeroinitializer }, align 32
@vmap_area_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@vmap_block_queue = weak dso_local global %struct.vmap_block_queue zeroinitializer, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@vmalloc_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&vbq->lock\00", [21 x i8] zeroinitializer }, align 32
@vfree_deferred = weak dso_local global %struct.vfree_deferred zeroinitializer, section ".data..percpu", align 4
@vmalloc_init.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"(work_completion)(&p->wq)\00", [38 x i8] zeroinitializer }, align 32
@vmalloc_init.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@vmap_area_root = internal global { %struct.rb_root, [28 x i8] } zeroinitializer, align 32
@vmap_area_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.5 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.31, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_vfree = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfree = external dso_local constant [0 x i8], align 1
@__ksymtab_vfree = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfree to i32), ptr @__kstrtab_vfree, ptr @__kstrtabns_vfree }, section "___ksymtab+vfree", align 4
@__kstrtab_vunmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_vunmap = external dso_local constant [0 x i8], align 1
@__ksymtab_vunmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vunmap to i32), ptr @__kstrtab_vunmap, ptr @__kstrtabns_vunmap }, section "___ksymtab+vunmap", align 4
@vmap.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_vmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_vmap = external dso_local constant [0 x i8], align 1
@__ksymtab_vmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vmap to i32), ptr @__kstrtab_vmap, ptr @__kstrtabns_vmap }, section "___ksymtab+vmap", align 4
@__vmalloc_node_range.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"vmalloc error: size %lu, exceeds total pages\00", [51 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"vmalloc error: size %lu, vm_struct allocation failed%s\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c". Retrying.\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@__kstrtab___vmalloc_node = external dso_local constant [0 x i8], align 1
@__kstrtabns___vmalloc_node = external dso_local constant [0 x i8], align 1
@__ksymtab___vmalloc_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__vmalloc_node to i32), ptr @__kstrtab___vmalloc_node, ptr @__kstrtabns___vmalloc_node }, section "___ksymtab_gpl+__vmalloc_node", align 4
@__kstrtab___vmalloc = external dso_local constant [0 x i8], align 1
@__kstrtabns___vmalloc = external dso_local constant [0 x i8], align 1
@__ksymtab___vmalloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__vmalloc to i32), ptr @__kstrtab___vmalloc, ptr @__kstrtabns___vmalloc }, section "___ksymtab+__vmalloc", align 4
@__kstrtab_vmalloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_vmalloc = external dso_local constant [0 x i8], align 1
@__ksymtab_vmalloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vmalloc to i32), ptr @__kstrtab_vmalloc, ptr @__kstrtabns_vmalloc }, section "___ksymtab+vmalloc", align 4
@__kstrtab_vmalloc_no_huge = external dso_local constant [0 x i8], align 1
@__kstrtabns_vmalloc_no_huge = external dso_local constant [0 x i8], align 1
@__ksymtab_vmalloc_no_huge = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vmalloc_no_huge to i32), ptr @__kstrtab_vmalloc_no_huge, ptr @__kstrtabns_vmalloc_no_huge }, section "___ksymtab+vmalloc_no_huge", align 4
@__kstrtab_vzalloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_vzalloc = external dso_local constant [0 x i8], align 1
@__ksymtab_vzalloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vzalloc to i32), ptr @__kstrtab_vzalloc, ptr @__kstrtabns_vzalloc }, section "___ksymtab+vzalloc", align 4
@__kstrtab_vmalloc_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_vmalloc_user = external dso_local constant [0 x i8], align 1
@__ksymtab_vmalloc_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vmalloc_user to i32), ptr @__kstrtab_vmalloc_user, ptr @__kstrtabns_vmalloc_user }, section "___ksymtab+vmalloc_user", align 4
@__kstrtab_vmalloc_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_vmalloc_node = external dso_local constant [0 x i8], align 1
@__ksymtab_vmalloc_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vmalloc_node to i32), ptr @__kstrtab_vmalloc_node, ptr @__kstrtabns_vmalloc_node }, section "___ksymtab+vmalloc_node", align 4
@__kstrtab_vzalloc_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_vzalloc_node = external dso_local constant [0 x i8], align 1
@__ksymtab_vzalloc_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vzalloc_node to i32), ptr @__kstrtab_vzalloc_node, ptr @__kstrtabns_vzalloc_node }, section "___ksymtab+vzalloc_node", align 4
@__kstrtab_vmalloc_32 = external dso_local constant [0 x i8], align 1
@__kstrtabns_vmalloc_32 = external dso_local constant [0 x i8], align 1
@__ksymtab_vmalloc_32 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vmalloc_32 to i32), ptr @__kstrtab_vmalloc_32, ptr @__kstrtabns_vmalloc_32 }, section "___ksymtab+vmalloc_32", align 4
@__kstrtab_vmalloc_32_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_vmalloc_32_user = external dso_local constant [0 x i8], align 1
@__ksymtab_vmalloc_32_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vmalloc_32_user to i32), ptr @__kstrtab_vmalloc_32_user, ptr @__kstrtabns_vmalloc_32_user }, section "___ksymtab+vmalloc_32_user", align 4
@__kstrtab_remap_vmalloc_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_remap_vmalloc_range = external dso_local constant [0 x i8], align 1
@__ksymtab_remap_vmalloc_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @remap_vmalloc_range to i32), ptr @__kstrtab_remap_vmalloc_range, ptr @__kstrtabns_remap_vmalloc_range }, section "___ksymtab+remap_vmalloc_range", align 4
@__kstrtab_free_vm_area = external dso_local constant [0 x i8], align 1
@__kstrtabns_free_vm_area = external dso_local constant [0 x i8], align 1
@__ksymtab_free_vm_area = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @free_vm_area to i32), ptr @__kstrtab_free_vm_area, ptr @__kstrtabns_free_vm_area }, section "___ksymtab_gpl+free_vm_area", align 4
@free_vmap_area_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.5 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.46, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@pcpu_get_vm_areas.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@pcpu_get_vm_areas.__already_done.13 = internal unnamed_addr global i1 false, section ".data.once", align 1
@free_vmap_area_root = internal global { %struct.rb_root, [28 x i8] } zeroinitializer, align 32
@free_vmap_area_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @free_vmap_area_list, ptr @free_vmap_area_list }, [24 x i8] zeroinitializer }, align 32
@vmalloc_dump_obj._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str, i32 3911, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\01c %u-page vmalloc region starting at %#lx allocated at %pS\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vmalloc_dump_obj\00", [47 x i8] zeroinitializer }, align 32
@vmalloc_dump_obj._entry_ptr = internal global ptr @vmalloc_dump_obj._entry, section ".printk_index", align 4
@__initcall__kmod_vmalloc__354_4058_proc_vmalloc_init6 = internal global ptr @proc_vmalloc_init, section ".initcall6.init", align 4
@__pcpu_unique_vfree_deferred = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_unique_ne_fit_preload_node = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@ne_fit_preload_node = weak dso_local global ptr null, section ".data..percpu", align 4
@__pcpu_unique_vmap_block_queue = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@cacheid = external dso_local local_unnamed_addr global i32, align 4
@cpu_vtable = external dso_local local_unnamed_addr global [0 x ptr], align 4
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(vmap_notify_list).rwsem.wait_lock\00", [61 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"(vmap_notify_list).rwsem\00", [39 x i8] zeroinitializer }, align 32
@_vm_unmap_aliases.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@vmap_purge_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.22, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @vmap_purge_lock, i64 52), ptr getelementptr (i8, ptr @vmap_purge_lock, i64 52) }, ptr @vmap_purge_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"vmap_purge_lock.wait_lock\00", [38 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vmap_purge_lock\00", [16 x i8] zeroinitializer }, align 32
@purge_fragmented_blocks.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@vmap_blocks = internal global { %struct.xarray, [44 x i8] } { %struct.xarray { %struct.spinlock { %union.anon.5 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.24, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vmap_blocks.xa_lock\00", [44 x i8] zeroinitializer }, align 32
@vmap_lazy_nr = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@purge_vmap_area_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.5 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.25, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@purge_vmap_area_root = internal global { %struct.rb_root, [28 x i8] } zeroinitializer, align 32
@purge_vmap_area_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @purge_vmap_area_list, ptr @purge_vmap_area_list }, [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"purge_vmap_area_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"vmalloc bug: 0x%lx-0x%lx overlaps with 0x%lx-0x%lx\0A\00", [44 x i8] zeroinitializer }, align 32
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@vb_alloc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@new_vmap_block.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&vb->lock\00", [22 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__func__.alloc_vmap_area = private unnamed_addr constant [16 x i8] c"alloc_vmap_area\00", align 1
@alloc_vmap_area._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @__func__.alloc_vmap_area, ptr @.str, i32 1596, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\014vmap allocation for size %lu failed: use vmalloc=<size> to increase size\0A\00", [52 x i8] zeroinitializer }, align 32
@alloc_vmap_area._entry_ptr = internal global ptr @alloc_vmap_area._entry, section ".printk_index", align 4
@__alloc_vmap_area.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@vmap_init_free_space.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@vmap_init_free_space.__already_done.30 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vmap_area_lock\00", [17 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.32 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Trying to vfree() bad address (%p)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013Trying to vfree() nonexistent vm area (%p)\0A\00", [50 x i8] zeroinitializer }, align 32
@memory_cgrp_subsys_enabled_key = external dso_local global %struct.static_key_true, align 4
@.str.34 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"VM_BUG_ON_PAGE(PageTail(&folio->page))\00", [57 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"VM_BUG_ON_FOLIO(folio->memcg_data & MEMCG_DATA_OBJCGS)\00", [41 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"VM_BUG_ON_FOLIO(folio_test_slab(folio))\00", [56 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@_totalram_pages = external dso_local global %struct.atomic_t, align 4
@.str.42 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"vmalloc error: size %lu, failed to allocated page array size %lu\00", [63 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"vmalloc error: size %lu, page order %u, failed to allocate pages\00", [63 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"vmalloc error: size %lu, failed to map pages\00", [51 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"free_vmap_area_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vmallocinfo\00", [20 x i8] zeroinitializer }, align 32
@vmalloc_op = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @s_start, ptr @s_stop, ptr @s_next, ptr @s_show }, [16 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"0x%pK-0x%pK %7ld vm_map_ram\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"0x%pK-0x%pK %7ld\00", [47 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" %pS\00", [27 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" pages=%d\00", [22 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" phys=%pa\00", [22 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" ioremap\00", [23 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" vmalloc\00", [23 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" vmap\00", [26 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" user\00", [26 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c" dma-coherent\00", [18 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" vpages\00", [24 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"0x%pK-0x%pK %7ld unpurged vm_area\0A\00", [61 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 512]
@__sancov_gen_cov_switch_values.61 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.63 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 584, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant [15 x i8] c"vmap_area_list\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 723, i32 1 }
@___asan_gen_.70 = private unnamed_addr constant [17 x i8] c"nr_vmalloc_pages\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 797, i32 22 }
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"vmap_notify_list\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 2349, i32 21 }
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"vmap_area_cachep\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 737, i32 27 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 2356, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 2360, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant [15 x i8] c"vmap_area_root\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 724, i32 23 }
@___asan_gen_.97 = private unnamed_addr constant [15 x i8] c"vmap_area_lock\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 3064, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 3098, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 3099, i32 26 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 3099, i32 42 }
@___asan_gen_.112 = private unnamed_addr constant [20 x i8] c"free_vmap_area_lock\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [20 x i8] c"free_vmap_area_root\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 755, i32 23 }
@___asan_gen_.118 = private unnamed_addr constant [20 x i8] c"free_vmap_area_list\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 743, i32 8 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 3910, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 794, i32 8 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 2092, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant [16 x i8] c"vmap_purge_lock\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 695, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 723, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1646, i32 8 }
@___asan_gen_.157 = private unnamed_addr constant [12 x i8] c"vmap_blocks\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1851, i32 8 }
@___asan_gen_.163 = private unnamed_addr constant [13 x i8] c"vmap_lazy_nr\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1639, i32 22 }
@___asan_gen_.166 = private unnamed_addr constant [21 x i8] c"purge_vmap_area_lock\00", align 1
@___asan_gen_.169 = private unnamed_addr constant [21 x i8] c"purge_vmap_area_root\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 727, i32 23 }
@___asan_gen_.172 = private unnamed_addr constant [21 x i8] c"purge_vmap_area_list\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 728, i32 8 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 729, i32 8 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 891, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1909, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1595, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 720, i32 8 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 2608, i32 6 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 2614, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 537, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 538, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant [30 x i8] c"../include/linux/memcontrol.h\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 417, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 260, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 2953, i32 4 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 2980, i32 4 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 3008, i32 4 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 721, i32 8 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 4055, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant [11 x i8] c"vmalloc_op\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 4041, i32 36 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 3989, i32 17 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 3998, i32 16 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 4002, i32 17 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 4005, i32 17 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 4008, i32 17 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 4011, i32 15 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 4014, i32 15 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 4017, i32 15 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 4020, i32 15 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 4023, i32 15 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 4026, i32 15 }
@___asan_gen_.265 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.266 = private constant [16 x i8] c"../mm/vmalloc.c\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 3970, i32 17 }
@llvm.compiler.used = appending global [94 x ptr] [ptr @__initcall__kmod_vmalloc__354_4058_proc_vmalloc_init6, ptr @__ksymtab___vmalloc, ptr @__ksymtab___vmalloc_node, ptr @__ksymtab_free_vm_area, ptr @__ksymtab_is_vmalloc_addr, ptr @__ksymtab_register_vmap_purge_notifier, ptr @__ksymtab_remap_vmalloc_range, ptr @__ksymtab_unregister_vmap_purge_notifier, ptr @__ksymtab_vfree, ptr @__ksymtab_vm_map_ram, ptr @__ksymtab_vm_unmap_aliases, ptr @__ksymtab_vm_unmap_ram, ptr @__ksymtab_vmalloc, ptr @__ksymtab_vmalloc_32, ptr @__ksymtab_vmalloc_32_user, ptr @__ksymtab_vmalloc_no_huge, ptr @__ksymtab_vmalloc_node, ptr @__ksymtab_vmalloc_to_page, ptr @__ksymtab_vmalloc_to_pfn, ptr @__ksymtab_vmalloc_user, ptr @__ksymtab_vmap, ptr @__ksymtab_vunmap, ptr @__ksymtab_vzalloc, ptr @__ksymtab_vzalloc_node, ptr @alloc_vmap_area._entry, ptr @alloc_vmap_area._entry_ptr, ptr @vmalloc_dump_obj._entry, ptr @vmalloc_dump_obj._entry_ptr, ptr @.str, ptr @vmap_area_list, ptr @nr_vmalloc_pages, ptr @vmap_notify_list, ptr @.str.5, ptr @vmap_area_cachep, ptr @vmalloc_init.__key, ptr @.str.6, ptr @vmalloc_init.__key.7, ptr @.str.8, ptr @vmap_area_root, ptr @vmap_area_lock, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @free_vmap_area_lock, ptr @free_vmap_area_root, ptr @free_vmap_area_list, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @vmap_purge_lock, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @vmap_blocks, ptr @.str.24, ptr @vmap_lazy_nr, ptr @purge_vmap_area_lock, ptr @purge_vmap_area_root, ptr @purge_vmap_area_list, ptr @.str.25, ptr @.str.26, ptr @new_vmap_block.__key, ptr @.str.27, ptr @.str.28, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @vmalloc_op, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60], section "llvm.metadata"
@0 = internal global [68 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmap_area_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nr_vmalloc_pages to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmap_notify_list to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmap_area_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmalloc_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmalloc_init.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmap_area_root to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmap_area_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @free_vmap_area_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @free_vmap_area_root to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @free_vmap_area_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmalloc_dump_obj._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmap_purge_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmap_blocks to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmap_lazy_nr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @purge_vmap_area_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @purge_vmap_area_root to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @purge_vmap_area_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @new_vmap_block.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_vmap_area._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmalloc_op to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @is_vmalloc_addr(ptr noundef %x) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %1 = load ptr, ptr @high_memory, align 4
  %2 = ptrtoint ptr %1 to i32
  %add = add i32 %2, 8388608
  %and = and i32 %add, -8388608
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %0)
  %cmp.not = icmp ule i32 %and, %0
  %cmp1 = icmp ult ptr %x, inttoptr (i32 -8388608 to ptr)
  %spec.select = and i1 %cmp1, %cmp.not
  ret i1 %spec.select
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ioremap_page_range(i32 noundef %addr, i32 noundef %end, i32 noundef %phys_addr, i32 noundef %prot) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 297) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %addr, i32 %end)
  %cmp.not.i = icmp ult i32 %addr, %end
  br i1 %cmp.not.i, label %do.end13.i, label %do.body6.i, !prof !245

do.body6.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 298, 0\0A.popsection", ""() #16, !srcloc !246
  unreachable

do.end13.i:                                       ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %shr.i.i = lshr i32 %addr, 21
  %add.ptr.i.i = getelementptr [2 x i32], ptr %0, i32 %shr.i.i
  %sub15.i = add i32 %end, -1
  br label %do.body14.i

do.body14.i:                                      ; preds = %do.cond21.i.do.body14.i_crit_edge, %do.end13.i
  %phys_addr.addr.0.i = phi i32 [ %phys_addr, %do.end13.i ], [ %add23.i, %do.cond21.i.do.body14.i_crit_edge ]
  %pgd.0.i = phi ptr [ %add.ptr.i.i, %do.end13.i ], [ %incdec.ptr.i, %do.cond21.i.do.body14.i_crit_edge ]
  %addr.addr.0.i = phi i32 [ %addr, %do.end13.i ], [ %and.end.i, %do.cond21.i.do.body14.i_crit_edge ]
  %add.i = add i32 %addr.addr.0.i, 2097152
  %and.i = and i32 %add.i, -2097152
  %sub.i = add i32 %and.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub15.i)
  %cmp16.i = icmp ult i32 %sub.i, %sub15.i
  %and.end.i = select i1 %cmp16.i, i32 %and.i, i32 %end
  %tobool.not.i.i = icmp eq ptr %pgd.0.i, null
  br i1 %tobool.not.i.i, label %do.body14.i.vmap_range_noflush.exit_crit_edge, label %do.body.i.i.i.i

do.body14.i.vmap_range_noflush.exit_crit_edge:    ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vmap_range_noflush.exit

do.body.i.i.i.i:                                  ; preds = %do.body14.i
  %shr.i.i.i.i.i = lshr i32 %phys_addr.addr.0.i, 12
  %conv.i.i.i.i.i = zext i32 %shr.i.i.i.i.i to i64
  %1 = ptrtoint ptr %pgd.0.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pgd.0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i.i.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i, label %do.body.i.i.i.i.cond.end.i.i.i.i.i_crit_edge, !prof !247

do.body.i.i.i.i.cond.end.i.i.i.i.i_crit_edge:     ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end.i.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i
  %call.i.i.i.i.i = tail call i32 @__pte_alloc_kernel(ptr noundef nonnull %pgd.0.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %tobool4.not.i.i.i.i.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.cond.end.i.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i.vmap_range_noflush.exit_crit_edge

land.lhs.true.i.i.i.i.i.vmap_range_noflush.exit_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vmap_range_noflush.exit

land.lhs.true.i.i.i.i.i.cond.end.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end.i.i.i.i.i

cond.end.i.i.i.i.i:                               ; preds = %land.lhs.true.i.i.i.i.i.cond.end.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.cond.end.i.i.i.i.i_crit_edge
  %3 = ptrtoint ptr %pgd.0.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pgd.0.i, align 4
  %and1.i.i.i.i.i.i.i = and i32 %4, -4096
  %5 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %and1.i.i.i.i.i.i.i, i32 -2130706432, i32 8454144) #19, !srcloc !248
  %6 = inttoptr i32 %5 to ptr
  %shr.i.i.i.i.i.i.i = lshr i32 %addr.addr.0.i, 12
  %and.i.i.i.i.i.i.i = and i32 %shr.i.i.i.i.i.i.i, 511
  %add.ptr.i.i.i.i.i.i = getelementptr i32, ptr %6, i32 %and.i.i.i.i.i.i.i
  %tobool7.not.i.i.i.i.i = icmp eq ptr %add.ptr.i.i.i.i.i.i, null
  br i1 %tobool7.not.i.i.i.i.i, label %cond.end.i.i.i.i.i.vmap_range_noflush.exit_crit_edge, label %cond.end.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

cond.end.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:   ; preds = %cond.end.i.i.i.i.i
  br label %do.body.i.i.i.i.i

cond.end.i.i.i.i.i.vmap_range_noflush.exit_crit_edge: ; preds = %cond.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vmap_range_noflush.exit

do.body.i.i.i.i.i:                                ; preds = %do.end27.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %cond.end.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge
  %addr.addr.0.i.i.i.i.i = phi i32 [ %add.i.i.i.i.i, %do.end27.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ], [ %addr.addr.0.i, %cond.end.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %pte.0.i.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i.i, %do.end27.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ], [ %add.ptr.i.i.i.i.i.i, %cond.end.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %pfn.0.i.i.i.i.i = phi i64 [ %inc.i.i.i.i.i, %do.end27.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ], [ %conv.i.i.i.i.i, %cond.end.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %7 = ptrtoint ptr %pte.0.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pte.0.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool9.not.i.i.i.i.i = icmp eq i32 %8, 0
  br i1 %tobool9.not.i.i.i.i.i, label %do.end27.i.i.i.i.i, label %do.body21.i.i.i.i.i, !prof !245

do.body21.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #16, !srcloc !249
  unreachable

do.end27.i.i.i.i.i:                               ; preds = %do.body.i.i.i.i.i
  %conv28.i.i.i.i.i = trunc i64 %pfn.0.i.i.i.i.i to i32
  %shl.i.i.i.i.i = shl i32 %conv28.i.i.i.i.i, 12
  %or29.i.i.i.i.i = or i32 %shl.i.i.i.i.i, %prot
  tail call void @set_pte_at(ptr noundef nonnull @init_mm, i32 noundef %addr.addr.0.i.i.i.i.i, ptr noundef %pte.0.i.i.i.i.i, i32 noundef %or29.i.i.i.i.i) #16
  %inc.i.i.i.i.i = add i64 %pfn.0.i.i.i.i.i, 1
  %add.ptr.i.i.i.i.i = getelementptr i32, ptr %pte.0.i.i.i.i.i, i32 1
  %add.i.i.i.i.i = add i32 %addr.addr.0.i.i.i.i.i, 4096
  %cmp.not.i.i.i.i.i = icmp eq i32 %add.i.i.i.i.i, %and.end.i
  br i1 %cmp.not.i.i.i.i.i, label %do.cond21.i, label %do.end27.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

do.end27.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:   ; preds = %do.end27.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i.i.i.i

do.cond21.i:                                      ; preds = %do.end27.i.i.i.i.i
  %incdec.ptr.i = getelementptr [2 x i32], ptr %pgd.0.i, i32 1
  %sub22.i = sub i32 %phys_addr.addr.0.i, %addr.addr.0.i
  %add23.i = add i32 %sub22.i, %and.end.i
  %cmp24.not.i = icmp eq i32 %and.end.i, %end
  br i1 %cmp24.not.i, label %do.cond21.i.vmap_range_noflush.exit_crit_edge, label %do.cond21.i.do.body14.i_crit_edge

do.cond21.i.do.body14.i_crit_edge:                ; preds = %do.cond21.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body14.i

do.cond21.i.vmap_range_noflush.exit_crit_edge:    ; preds = %do.cond21.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vmap_range_noflush.exit

vmap_range_noflush.exit:                          ; preds = %do.cond21.i.vmap_range_noflush.exit_crit_edge, %cond.end.i.i.i.i.i.vmap_range_noflush.exit_crit_edge, %land.lhs.true.i.i.i.i.i.vmap_range_noflush.exit_crit_edge, %do.body14.i.vmap_range_noflush.exit_crit_edge
  %retval.0.i5.i = phi i32 [ 0, %do.cond21.i.vmap_range_noflush.exit_crit_edge ], [ -12, %do.body14.i.vmap_range_noflush.exit_crit_edge ], [ -12, %cond.end.i.i.i.i.i.vmap_range_noflush.exit_crit_edge ], [ -12, %land.lhs.true.i.i.i.i.i.vmap_range_noflush.exit_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cacheid to i32))
  %9 = load i32, ptr @cacheid, align 4
  %and2.i.i = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %vmap_range_noflush.exit
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %10() #16
  br label %flush_cache_vmap.exit

if.else.i:                                        ; preds = %vmap_range_noflush.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !250
  br label %flush_cache_vmap.exit

flush_cache_vmap.exit:                            ; preds = %if.else.i, %if.then.i
  ret i32 %retval.0.i5.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vunmap_range_noflush(i32 noundef %start, i32 noundef %end) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp4(i32 %start, i32 %end)
  %cmp.not = icmp ult i32 %start, %end
  br i1 %cmp.not, label %do.end7, label %do.body2, !prof !245

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #16, !srcloc !251
  unreachable

do.end7:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %shr.i = lshr i32 %start, 21
  %add.ptr.i = getelementptr [2 x i32], ptr %0, i32 %shr.i
  %sub9 = add i32 %end, -1
  br label %do.body8

do.body8:                                         ; preds = %vunmap_p4d_range.exit.do.body8_crit_edge, %do.end7
  %pgd.0 = phi ptr [ %add.ptr.i, %do.end7 ], [ %incdec.ptr, %vunmap_p4d_range.exit.do.body8_crit_edge ]
  %addr.0 = phi i32 [ %start, %do.end7 ], [ %and.end, %vunmap_p4d_range.exit.do.body8_crit_edge ]
  %add = add i32 %addr.0, 2097152
  %and = and i32 %add, -2097152
  %sub = add i32 %and, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %sub9)
  %cmp10 = icmp ult i32 %sub, %sub9
  %and.end = select i1 %cmp10, i32 %and, i32 %end
  %1 = ptrtoint ptr %pgd.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pgd.0, align 4
  %and.i.i.i = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %if.end5.i.i.i, label %if.then4.i.i.i.i

if.end5.i.i.i:                                    ; preds = %do.body8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i.i.i, label %if.end5.i.i.i.vunmap_p4d_range.exit_crit_edge, label %if.end9.i.i.i

if.end5.i.i.i.vunmap_p4d_range.exit_crit_edge:    ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vunmap_p4d_range.exit

if.then4.i.i.i.i:                                 ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @pmd_clear_bad(ptr noundef %pgd.0) #16
  br label %vunmap_p4d_range.exit

if.end9.i.i.i:                                    ; preds = %if.end5.i.i.i
  %and1.i.i.i.i.i.i = and i32 %2, -4096
  %3 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %and1.i.i.i.i.i.i, i32 -2130706432, i32 8454144) #19, !srcloc !248
  %4 = inttoptr i32 %3 to ptr
  %shr.i.i.i.i.i.i = lshr i32 %addr.0, 12
  %and.i.i.i.i.i.i = and i32 %shr.i.i.i.i.i.i, 511
  %add.ptr.i.i.i.i.i = getelementptr i32, ptr %4, i32 %and.i.i.i.i.i.i
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %if.end.i23.i.i.i.do.body.i.i.i.i_crit_edge, %if.end9.i.i.i
  %pte.0.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i.i, %if.end9.i.i.i ], [ %incdec.ptr.i.i.i.i, %if.end.i23.i.i.i.do.body.i.i.i.i_crit_edge ]
  %addr.addr.0.i.i.i.i = phi i32 [ %addr.0, %if.end9.i.i.i ], [ %add.i.i.i.i, %if.end.i23.i.i.i.do.body.i.i.i.i_crit_edge ]
  %5 = ptrtoint ptr %pte.0.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pte.0.i.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpu_vtable to i32))
  %7 = load ptr, ptr @cpu_vtable, align 4
  %set_pte_ext.i.i.i.i.i = getelementptr inbounds %struct.processor, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %set_pte_ext.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_pte_ext.i.i.i.i.i, align 4
  tail call void %9(ptr noundef %pte.0.i.i.i.i, i32 noundef 0, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i21.i.i.i = icmp ne i32 %6, 0
  %and.i22.i.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i22.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %and.i22.i.i.i, 0
  %10 = and i1 %tobool.not.i21.i.i.i, %tobool2.not.i.i.i.i
  br i1 %10, label %do.end.i.i.i.i, label %do.body.i.i.i.i.if.end.i23.i.i.i_crit_edge, !prof !247

do.body.i.i.i.i.if.end.i23.i.i.i_crit_edge:       ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i23.i.i.i

do.end.i.i.i.i:                                   ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 335, i32 noundef 9, ptr noundef null) #16
  br label %if.end.i23.i.i.i

if.end.i23.i.i.i:                                 ; preds = %do.end.i.i.i.i, %do.body.i.i.i.i.if.end.i23.i.i.i_crit_edge
  %incdec.ptr.i.i.i.i = getelementptr i32, ptr %pte.0.i.i.i.i, i32 1
  %add.i.i.i.i = add i32 %addr.addr.0.i.i.i.i, 4096
  %cmp.not.i.i.i.i = icmp eq i32 %add.i.i.i.i, %and.end
  br i1 %cmp.not.i.i.i.i, label %vunmap_pte_range.exit.i.i.i, label %if.end.i23.i.i.i.do.body.i.i.i.i_crit_edge

if.end.i23.i.i.i.do.body.i.i.i.i_crit_edge:       ; preds = %if.end.i23.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i.i.i

vunmap_pte_range.exit.i.i.i:                      ; preds = %if.end.i23.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 361, i32 noundef 0) #16
  %call.i.i.i.i = tail call i32 @__cond_resched() #16
  br label %vunmap_p4d_range.exit

vunmap_p4d_range.exit:                            ; preds = %vunmap_pte_range.exit.i.i.i, %if.then4.i.i.i.i, %if.end5.i.i.i.vunmap_p4d_range.exit_crit_edge
  %incdec.ptr = getelementptr [2 x i32], ptr %pgd.0, i32 1
  %cmp20.not = icmp eq i32 %and.end, %end
  br i1 %cmp20.not, label %if.end25, label %vunmap_p4d_range.exit.do.body8_crit_edge

vunmap_p4d_range.exit.do.body8_crit_edge:         ; preds = %vunmap_p4d_range.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body8

if.end25:                                         ; preds = %vunmap_p4d_range.exit
  call void @__sanitizer_cov_trace_pc() #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vunmap_range(i32 noundef %addr, i32 noundef %end) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cacheid to i32))
  %0 = load i32, ptr @cacheid, align 4
  %and2.i.i = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.flush_cache_vunmap.exit_crit_edge

entry.flush_cache_vunmap.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %flush_cache_vunmap.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %1() #16
  br label %flush_cache_vunmap.exit

flush_cache_vunmap.exit:                          ; preds = %if.then.i, %entry.flush_cache_vunmap.exit_crit_edge
  tail call void @vunmap_range_noflush(i32 noundef %addr, i32 noundef %end)
  tail call void @flush_tlb_kernel_range(i32 noundef %addr, i32 noundef %end) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_tlb_kernel_range(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vmap_pages_range_noflush(i32 noundef %addr, i32 noundef %end, i32 noundef %prot, ptr nocapture noundef readonly %pages, i32 noundef %page_shift) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %page_shift)
  %cmp = icmp ult i32 %page_shift, 12
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !247

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 584, i32 noundef 9, ptr noundef null) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %addr, i32 %end)
  %cmp.not.i = icmp ult i32 %addr, %end
  br i1 %cmp.not.i, label %do.end7.i, label %do.body2.i, !prof !245

do.body2.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 553, 0\0A.popsection", ""() #16, !srcloc !252
  unreachable

do.end7.i:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %shr.i.i = lshr i32 %addr, 21
  %add.ptr.i.i = getelementptr [2 x i32], ptr %0, i32 %shr.i.i
  %sub9.i = add i32 %end, -1
  br label %do.body8.i

do.body8.i:                                       ; preds = %do.cond19.i.do.body8.i_crit_edge, %do.end7.i
  %nr.0.i = phi i32 [ 0, %do.end7.i ], [ %inc.i.i.i.i.i, %do.cond19.i.do.body8.i_crit_edge ]
  %addr.addr.0.i = phi i32 [ %addr, %do.end7.i ], [ %and.end.i, %do.cond19.i.do.body8.i_crit_edge ]
  %pgd.0.i = phi ptr [ %add.ptr.i.i, %do.end7.i ], [ %incdec.ptr.i, %do.cond19.i.do.body8.i_crit_edge ]
  %add.i = add i32 %addr.addr.0.i, 2097152
  %and.i = and i32 %add.i, -2097152
  %sub.i = add i32 %and.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub9.i)
  %cmp10.i = icmp ult i32 %sub.i, %sub9.i
  %and.end.i = select i1 %cmp10.i, i32 %and.i, i32 %end
  %tobool.not.i.i = icmp eq ptr %pgd.0.i, null
  br i1 %tobool.not.i.i, label %do.body8.i.vmap_small_pages_range_noflush.exit_crit_edge, label %do.body.i.i.i.i

do.body8.i.vmap_small_pages_range_noflush.exit_crit_edge: ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vmap_small_pages_range_noflush.exit

do.body.i.i.i.i:                                  ; preds = %do.body8.i
  %1 = ptrtoint ptr %pgd.0.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pgd.0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i.i.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i, label %do.body.i.i.i.i.cond.end.i.i.i.i.i_crit_edge, !prof !247

do.body.i.i.i.i.cond.end.i.i.i.i.i_crit_edge:     ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end.i.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i
  %call.i.i.i.i.i = tail call i32 @__pte_alloc_kernel(ptr noundef nonnull %pgd.0.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %tobool4.not.i.i.i.i.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.cond.end.i.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i.vmap_small_pages_range_noflush.exit_crit_edge

land.lhs.true.i.i.i.i.i.vmap_small_pages_range_noflush.exit_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vmap_small_pages_range_noflush.exit

land.lhs.true.i.i.i.i.i.cond.end.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end.i.i.i.i.i

cond.end.i.i.i.i.i:                               ; preds = %land.lhs.true.i.i.i.i.i.cond.end.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.cond.end.i.i.i.i.i_crit_edge
  %3 = ptrtoint ptr %pgd.0.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pgd.0.i, align 4
  %and1.i.i.i.i.i.i.i = and i32 %4, -4096
  %5 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %and1.i.i.i.i.i.i.i, i32 -2130706432, i32 8454144) #19, !srcloc !248
  %6 = inttoptr i32 %5 to ptr
  %shr.i.i.i.i.i.i.i = lshr i32 %addr.addr.0.i, 12
  %and.i.i.i.i.i.i.i = and i32 %shr.i.i.i.i.i.i.i, 511
  %add.ptr.i.i.i.i.i.i = getelementptr i32, ptr %6, i32 %and.i.i.i.i.i.i.i
  %tobool7.not.i.i.i.i.i = icmp eq ptr %add.ptr.i.i.i.i.i.i, null
  br i1 %tobool7.not.i.i.i.i.i, label %cond.end.i.i.i.i.i.vmap_small_pages_range_noflush.exit_crit_edge, label %cond.end.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

cond.end.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:   ; preds = %cond.end.i.i.i.i.i
  br label %do.body.i.i.i.i.i

cond.end.i.i.i.i.i.vmap_small_pages_range_noflush.exit_crit_edge: ; preds = %cond.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vmap_small_pages_range_noflush.exit

do.body.i.i.i.i.i:                                ; preds = %do.cond80.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %cond.end.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge
  %nr.1.i = phi i32 [ %inc.i.i.i.i.i, %do.cond80.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ], [ %nr.0.i, %cond.end.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %pte.0.i.i.i.i.i = phi ptr [ %incdec.ptr.i.i.i.i.i, %do.cond80.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ], [ %add.ptr.i.i.i.i.i.i, %cond.end.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %addr.addr.0.i.i.i.i.i = phi i32 [ %add81.i.i.i.i.i, %do.cond80.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ], [ %addr.addr.0.i, %cond.end.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %arrayidx.i.i.i.i.i = getelementptr ptr, ptr %pages, i32 %nr.1.i
  %7 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i.i.i.i.i, align 4
  %9 = ptrtoint ptr %pte.0.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pte.0.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool8.not.i.i.i.i.i = icmp eq i32 %10, 0
  br i1 %tobool8.not.i.i.i.i.i, label %if.end42.i.i.i.i.i, label %do.body.i.i.i.i.i.cleanup.sink.split.i_crit_edge, !prof !245

do.body.i.i.i.i.i.cleanup.sink.split.i_crit_edge: ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split.i

if.end42.i.i.i.i.i:                               ; preds = %do.body.i.i.i.i.i
  %tobool44.not.i.i.i.i.i = icmp eq ptr %8, null
  br i1 %tobool44.not.i.i.i.i.i, label %if.end42.i.i.i.i.i.cleanup.sink.split.i_crit_edge, label %do.cond80.i.i.i.i.i, !prof !247

if.end42.i.i.i.i.i.cleanup.sink.split.i_crit_edge: ; preds = %if.end42.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split.i

do.cond80.i.i.i.i.i:                              ; preds = %if.end42.i.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %11 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast.i.i.i.i.i = ptrtoint ptr %8 to i32
  %sub.ptr.rhs.cast.i.i.i.i.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i.i
  %sub.ptr.div.i.i.i.i.i = sdiv exact i32 %sub.ptr.sub.i.i.i.i.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %12 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i.i.i.i = add i32 %sub.ptr.div.i.i.i.i.i, %12
  %shl.i.i.i.i.i = shl i32 %add.i.i.i.i.i, 12
  %or79.i.i.i.i.i = or i32 %shl.i.i.i.i.i, %prot
  tail call void @set_pte_at(ptr noundef nonnull @init_mm, i32 noundef %addr.addr.0.i.i.i.i.i, ptr noundef %pte.0.i.i.i.i.i, i32 noundef %or79.i.i.i.i.i) #16
  %inc.i.i.i.i.i = add i32 %nr.1.i, 1
  %incdec.ptr.i.i.i.i.i = getelementptr i32, ptr %pte.0.i.i.i.i.i, i32 1
  %add81.i.i.i.i.i = add i32 %addr.addr.0.i.i.i.i.i, 4096
  %cmp.not.i.i.i.i.i = icmp eq i32 %add81.i.i.i.i.i, %and.end.i
  br i1 %cmp.not.i.i.i.i.i, label %do.cond19.i, label %do.cond80.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

do.cond80.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:  ; preds = %do.cond80.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i.i.i.i

do.cond19.i:                                      ; preds = %do.cond80.i.i.i.i.i
  %incdec.ptr.i = getelementptr [2 x i32], ptr %pgd.0.i, i32 1
  %cmp20.not.i = icmp eq i32 %and.end.i, %end
  br i1 %cmp20.not.i, label %do.cond19.i.vmap_small_pages_range_noflush.exit_crit_edge, label %do.cond19.i.do.body8.i_crit_edge

do.cond19.i.do.body8.i_crit_edge:                 ; preds = %do.cond19.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body8.i

do.cond19.i.vmap_small_pages_range_noflush.exit_crit_edge: ; preds = %do.cond19.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vmap_small_pages_range_noflush.exit

cleanup.sink.split.i:                             ; preds = %if.end42.i.i.i.i.i.cleanup.sink.split.i_crit_edge, %do.body.i.i.i.i.i.cleanup.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 478, %do.body.i.i.i.i.i.cleanup.sink.split.i_crit_edge ], [ 480, %if.end42.i.i.i.i.i.cleanup.sink.split.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %.sink.i, i32 noundef 9, ptr noundef null) #16
  br label %vmap_small_pages_range_noflush.exit

vmap_small_pages_range_noflush.exit:              ; preds = %cleanup.sink.split.i, %do.cond19.i.vmap_small_pages_range_noflush.exit_crit_edge, %cond.end.i.i.i.i.i.vmap_small_pages_range_noflush.exit_crit_edge, %land.lhs.true.i.i.i.i.i.vmap_small_pages_range_noflush.exit_crit_edge, %do.body8.i.vmap_small_pages_range_noflush.exit_crit_edge
  %retval.0.i = phi i32 [ -12, %cleanup.sink.split.i ], [ 0, %do.cond19.i.vmap_small_pages_range_noflush.exit_crit_edge ], [ -12, %do.body8.i.vmap_small_pages_range_noflush.exit_crit_edge ], [ -12, %cond.end.i.i.i.i.i.vmap_small_pages_range_noflush.exit_crit_edge ], [ -12, %land.lhs.true.i.i.i.i.i.vmap_small_pages_range_noflush.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @is_vmalloc_or_module_addr(ptr noundef %x) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp ugt ptr %x, inttoptr (i32 -1090519041 to ptr)
  %cmp1 = icmp ult ptr %x, inttoptr (i32 -1075838976 to ptr)
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %0 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %1 = load ptr, ptr @high_memory, align 4
  %2 = ptrtoint ptr %1 to i32
  %add.i = add i32 %2, 8388608
  %and.i = and i32 %add.i, -8388608
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %0)
  %cmp.not.i = icmp ule i32 %and.i, %0
  %cmp1.i = icmp ult ptr %x, inttoptr (i32 -8388608 to ptr)
  %spec.select.i = and i1 %cmp1.i, %cmp.not.i
  %conv = zext i1 %spec.select.i to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %if.end ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vmalloc_to_page(ptr noundef %vmalloc_addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vmalloc_addr to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %shr.i = lshr i32 %0, 21
  %add.ptr.i = getelementptr [2 x i32], ptr %1, i32 %shr.i
  %cmp.i = icmp ugt ptr %vmalloc_addr, inttoptr (i32 -1090519041 to ptr)
  %cmp1.i = icmp ult ptr %vmalloc_addr, inttoptr (i32 -1075838976 to ptr)
  %or.cond.i = and i1 %cmp.i, %cmp1.i
  br i1 %or.cond.i, label %entry.do.end10_crit_edge, label %is_vmalloc_or_module_addr.exit

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end10

is_vmalloc_or_module_addr.exit:                   ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %2 = load ptr, ptr @high_memory, align 4
  %3 = ptrtoint ptr %2 to i32
  %add.i.i = add i32 %3, 8388608
  %and.i.i = and i32 %add.i.i, -8388608
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %0)
  %cmp.not.i.i = icmp ugt i32 %and.i.i, %0
  %cmp1.i.i = icmp uge ptr %vmalloc_addr, inttoptr (i32 -8388608 to ptr)
  %tobool.not = or i1 %cmp1.i.i, %cmp.not.i.i
  br i1 %tobool.not, label %do.body5, label %is_vmalloc_or_module_addr.exit.do.end10_crit_edge, !prof !247

is_vmalloc_or_module_addr.exit.do.end10_crit_edge: ; preds = %is_vmalloc_or_module_addr.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end10

do.body5:                                         ; preds = %is_vmalloc_or_module_addr.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 661, 0\0A.popsection", ""() #16, !srcloc !253
  unreachable

do.end10:                                         ; preds = %is_vmalloc_or_module_addr.exit.do.end10_crit_edge, %entry.do.end10_crit_edge
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool251.not = icmp eq i32 %5, 0
  br i1 %tobool251.not, label %do.end10.cleanup_crit_edge, label %if.end253

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end253:                                        ; preds = %do.end10
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool254.not = icmp eq i32 %and, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %6 = load ptr, ptr @mem_map, align 4
  %shr320 = lshr i32 %5, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %7 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub321 = sub i32 %shr320, %7
  %add.ptr322 = getelementptr %struct.page, ptr %6, i32 %sub321
  br i1 %tobool254.not, label %if.end318, label %if.then255

if.then255:                                       ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #18
  %and257 = lshr i32 %0, 12
  %shr258 = and i32 %and257, 511
  %add.ptr259 = getelementptr %struct.page, ptr %add.ptr322, i32 %shr258
  br label %cleanup

if.end318:                                        ; preds = %if.end253
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %8 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %8, 512
  %9 = tail call i32 @llvm.read_register.i32(metadata !235) #16
  %and.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !254
  %13 = tail call i32 @llvm.read_register.i32(metadata !235) #16
  %and.i.i.i1.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 213
  %17 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %18, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !255
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr322, i32 noundef %or.i) #16
  %shr.i381 = lshr i32 %0, 12
  %and.i = and i32 %shr.i381, 511
  %add.ptr325 = getelementptr i32, ptr %call.i.i, i32 %and.i
  %19 = ptrtoint ptr %add.ptr325 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr325, align 4
  %and326 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and326)
  %tobool327.not = icmp eq i32 %and326, 0
  br i1 %tobool327.not, label %if.end318.do.end343_crit_edge, label %if.then334

if.end318.do.end343_crit_edge:                    ; preds = %if.end318
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end343

if.then334:                                       ; preds = %if.end318
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %21 = load ptr, ptr @mem_map, align 4
  %shr336 = lshr i32 %20, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %22 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub337 = sub i32 %shr336, %22
  %add.ptr338 = getelementptr %struct.page, ptr %21, i32 %sub337
  br label %do.end343

do.end343:                                        ; preds = %if.then334, %if.end318.do.end343_crit_edge
  %page.0 = phi ptr [ %add.ptr338, %if.then334 ], [ null, %if.end318.do.end343_crit_edge ]
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr325) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !256
  %23 = tail call i32 @llvm.read_register.i32(metadata !235) #16
  %and.i.i.i1.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 213
  %27 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %28, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !257
  %29 = tail call i32 @llvm.read_register.i32(metadata !235) #16
  %and.i.i.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %32, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end343, %if.then255, %do.end10.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr259, %if.then255 ], [ %page.0, %do.end343 ], [ null, %do.end10.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vmalloc_to_pfn(ptr noundef %vmalloc_addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @vmalloc_to_page(ptr noundef %vmalloc_addr)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %0 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %call to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %0 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %1 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %sub.ptr.div, %1
  ret i32 %add
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vmalloc_nr_pages() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @nr_vmalloc_pages, i32 noundef 4) #16
  %0 = load volatile i32, ptr @nr_vmalloc_pages, align 4
  ret i32 %0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @register_vmap_purge_notifier(ptr noundef %nb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @blocking_notifier_chain_register(ptr noundef nonnull @vmap_notify_list, ptr noundef %nb) #16
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @unregister_vmap_purge_notifier(ptr noundef %nb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @blocking_notifier_chain_unregister(ptr noundef nonnull @vmap_notify_list, ptr noundef %nb) #16
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vm_unmap_aliases() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @_vm_unmap_aliases(i32 noundef -1, i32 noundef 0, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_vm_unmap_aliases(i32 noundef %start, i32 noundef %end, i32 noundef %flush) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %.b86 = load i1, ptr @vmap_initialized, align 1
  br i1 %.b86, label %do.body, label %entry.cleanup_crit_edge, !prof !245

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 2085) #16
  %call107 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call107, i32 %0)
  %cmp108 = icmp ult i32 %call107, %0
  br i1 %cmp108, label %do.body.for.body_crit_edge, label %do.body.for.end59_crit_edge

do.body.for.end59_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end59

do.body.for.body_crit_edge:                       ; preds = %do.body
  br label %for.body

for.body:                                         ; preds = %rcu_read_unlock.exit.for.body_crit_edge, %do.body.for.body_crit_edge
  %call112 = phi i32 [ %call, %rcu_read_unlock.exit.for.body_crit_edge ], [ %call107, %do.body.for.body_crit_edge ]
  %start.addr.0111 = phi i32 [ %start.addr.1.lcssa, %rcu_read_unlock.exit.for.body_crit_edge ], [ %start, %do.body.for.body_crit_edge ]
  %end.addr.0110 = phi i32 [ %end.addr.1.lcssa, %rcu_read_unlock.exit.for.body_crit_edge ], [ %end, %do.body.for.body_crit_edge ]
  %flush.addr.0109 = phi i32 [ %flush.addr.1.lcssa, %rcu_read_unlock.exit.for.body_crit_edge ], [ %flush, %do.body.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call112
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %add = add i32 %2, ptrtoint (ptr @vmap_block_queue to i32)
  %3 = inttoptr i32 %add to ptr
  %4 = tail call i32 @llvm.read_register.i32(metadata !235) #16
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !258
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %for.body.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

for.body.rcu_read_lock.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %for.body
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 696, ptr noundef nonnull @.str.20) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %for.body.rcu_read_lock.exit_crit_edge
  %call12 = tail call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end21_crit_edge

rcu_read_lock.exit.do.end21_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end21

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call14 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true.do.end21_crit_edge, label %land.lhs.true16

land.lhs.true.do.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end21

land.lhs.true16:                                  ; preds = %land.lhs.true
  %.b8587 = load i1, ptr @_vm_unmap_aliases.__warned, align 1
  br i1 %.b8587, label %land.lhs.true16.do.end21_crit_edge, label %if.then18

land.lhs.true16.do.end21_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end21

if.then18:                                        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @_vm_unmap_aliases.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2092, ptr noundef nonnull @.str.18) #16
  br label %do.end21

do.end21:                                         ; preds = %if.then18, %land.lhs.true16.do.end21_crit_edge, %land.lhs.true.do.end21_crit_edge, %rcu_read_lock.exit.do.end21_crit_edge
  %free = getelementptr inbounds %struct.vmap_block_queue, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn97 = load volatile ptr, ptr %free, align 4
  %cmp29.not99 = icmp eq ptr %.pn97, %free
  br i1 %cmp29.not99, label %do.end21.for.end_crit_edge, label %do.end21.for.body30_crit_edge

do.end21.for.body30_crit_edge:                    ; preds = %do.end21
  br label %for.body30

do.end21.for.end_crit_edge:                       ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body30:                                       ; preds = %if.end48.for.body30_crit_edge, %do.end21.for.body30_crit_edge
  %.pn103 = phi ptr [ %.pn, %if.end48.for.body30_crit_edge ], [ %.pn97, %do.end21.for.body30_crit_edge ]
  %start.addr.1102 = phi i32 [ %start.addr.2, %if.end48.for.body30_crit_edge ], [ %start.addr.0111, %do.end21.for.body30_crit_edge ]
  %end.addr.1101 = phi i32 [ %end.addr.2, %if.end48.for.body30_crit_edge ], [ %end.addr.0110, %do.end21.for.body30_crit_edge ]
  %flush.addr.1100 = phi i32 [ %flush.addr.2, %if.end48.for.body30_crit_edge ], [ %flush.addr.0109, %do.end21.for.body30_crit_edge ]
  %vb.0104 = getelementptr i8, ptr %.pn103, i32 -64
  tail call void @_raw_spin_lock(ptr noundef %vb.0104) #16
  %dirty = getelementptr i8, ptr %.pn103, i32 -12
  %9 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dirty, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %if.then35 [
    i32 0, label %for.body30.if.end48_crit_edge
    i32 512, label %for.body30.if.end48_crit_edge116
  ]

for.body30.if.end48_crit_edge116:                 ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end48

for.body30.if.end48_crit_edge:                    ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end48

if.then35:                                        ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #18
  %va = getelementptr i8, ptr %.pn103, i32 -20
  %12 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %va, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %dirty_min = getelementptr i8, ptr %.pn103, i32 -8
  %16 = ptrtoint ptr %dirty_min to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dirty_min, align 4
  %shl = shl i32 %17, 12
  %add37 = add i32 %shl, %15
  %dirty_max = getelementptr i8, ptr %.pn103, i32 -4
  %18 = ptrtoint ptr %dirty_max to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dirty_max, align 4
  %shl38 = shl i32 %19, 12
  %add39 = add i32 %shl38, %15
  %20 = tail call i32 @llvm.umin.i32(i32 %add37, i32 %start.addr.1102)
  %21 = tail call i32 @llvm.umax.i32(i32 %add39, i32 %end.addr.1101)
  br label %if.end48

if.end48:                                         ; preds = %if.then35, %for.body30.if.end48_crit_edge, %for.body30.if.end48_crit_edge116
  %flush.addr.2 = phi i32 [ 1, %if.then35 ], [ %flush.addr.1100, %for.body30.if.end48_crit_edge ], [ %flush.addr.1100, %for.body30.if.end48_crit_edge116 ]
  %end.addr.2 = phi i32 [ %21, %if.then35 ], [ %end.addr.1101, %for.body30.if.end48_crit_edge ], [ %end.addr.1101, %for.body30.if.end48_crit_edge116 ]
  %start.addr.2 = phi i32 [ %20, %if.then35 ], [ %start.addr.1102, %for.body30.if.end48_crit_edge ], [ %start.addr.1102, %for.body30.if.end48_crit_edge116 ]
  tail call void @_raw_spin_unlock(ptr noundef %vb.0104) #16
  %22 = ptrtoint ptr %.pn103 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn = load volatile ptr, ptr %.pn103, align 4
  %cmp29.not = icmp eq ptr %.pn, %free
  br i1 %cmp29.not, label %if.end48.for.end_crit_edge, label %if.end48.for.body30_crit_edge

if.end48.for.body30_crit_edge:                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body30

if.end48.for.end_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %if.end48.for.end_crit_edge, %do.end21.for.end_crit_edge
  %flush.addr.1.lcssa = phi i32 [ %flush.addr.0109, %do.end21.for.end_crit_edge ], [ %flush.addr.2, %if.end48.for.end_crit_edge ]
  %end.addr.1.lcssa = phi i32 [ %end.addr.0110, %do.end21.for.end_crit_edge ], [ %end.addr.2, %if.end48.for.end_crit_edge ]
  %start.addr.1.lcssa = phi i32 [ %start.addr.0111, %do.end21.for.end_crit_edge ], [ %start.addr.2, %if.end48.for.end_crit_edge ]
  %call.i88 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i88, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i91

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i91:                                ; preds = %for.end
  %call1.i89 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i89)
  %tobool.not.i90 = icmp eq i32 %call1.i89, 0
  br i1 %tobool.not.i90, label %land.lhs.true.i91.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i93

land.lhs.true.i91.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i91
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i93:                               ; preds = %land.lhs.true.i91
  %.b4.i92 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i92, label %land.lhs.true2.i93.rcu_read_unlock.exit_crit_edge, label %if.then.i94

land.lhs.true2.i93.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i93
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i94:                                      ; preds = %land.lhs.true2.i93
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 724, ptr noundef nonnull @.str.21) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i94, %land.lhs.true2.i93.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i91.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !259
  %23 = tail call i32 @llvm.read_register.i32(metadata !235) #16
  %and.i.i.i.i.i95 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i95 to ptr
  %preempt_count.i.i.i.i96 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i.i96 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i.i96, align 4
  %sub.i.i.i = add i32 %26, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i96, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  %call = tail call i32 @cpumask_next(i32 noundef %call112, ptr noundef nonnull @__cpu_possible_mask) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %27 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %27
  br i1 %cmp, label %rcu_read_unlock.exit.for.body_crit_edge, label %rcu_read_unlock.exit.for.end59_crit_edge

rcu_read_unlock.exit.for.end59_crit_edge:         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end59

rcu_read_unlock.exit.for.body_crit_edge:          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end59:                                        ; preds = %rcu_read_unlock.exit.for.end59_crit_edge, %do.body.for.end59_crit_edge
  %flush.addr.0.lcssa = phi i32 [ %flush, %do.body.for.end59_crit_edge ], [ %flush.addr.1.lcssa, %rcu_read_unlock.exit.for.end59_crit_edge ]
  %end.addr.0.lcssa = phi i32 [ %end, %do.body.for.end59_crit_edge ], [ %end.addr.1.lcssa, %rcu_read_unlock.exit.for.end59_crit_edge ]
  %start.addr.0.lcssa = phi i32 [ %start, %do.body.for.end59_crit_edge ], [ %start.addr.1.lcssa, %rcu_read_unlock.exit.for.end59_crit_edge ]
  tail call void @mutex_lock_nested(ptr noundef nonnull @vmap_purge_lock, i32 noundef 0) #16
  tail call fastcc void @purge_fragmented_blocks_allcpus()
  %call60 = tail call fastcc zeroext i1 @__purge_vmap_area_lazy(i32 noundef %start.addr.0.lcssa, i32 noundef %end.addr.0.lcssa)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flush.addr.0.lcssa)
  %tobool62.not = icmp eq i32 %flush.addr.0.lcssa, 0
  %or.cond = select i1 %call60, i1 true, i1 %tobool62.not
  br i1 %or.cond, label %for.end59.if.end64_crit_edge, label %if.then63

for.end59.if.end64_crit_edge:                     ; preds = %for.end59
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end64

if.then63:                                        ; preds = %for.end59
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @flush_tlb_kernel_range(i32 noundef %start.addr.0.lcssa, i32 noundef %end.addr.0.lcssa) #16
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %for.end59.if.end64_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @vmap_purge_lock) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vm_unmap_ram(ptr noundef %mem, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %count, 12
  %0 = ptrtoint ptr %mem to i32
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 2151) #16
  %tobool.not = icmp eq ptr %mem, null
  br i1 %tobool.not, label %do.body8, label %do.body16, !prof !247

do.body8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2152, 0\0A.popsection", ""() #16, !srcloc !260
  unreachable

do.body16:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %1 = load ptr, ptr @high_memory, align 4
  %2 = ptrtoint ptr %1 to i32
  %add = add i32 %2, 8388608
  %and = and i32 %add, -8388608
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %0)
  %cmp = icmp ugt i32 %and, %0
  br i1 %cmp, label %do.body24, label %do.body33, !prof !247

do.body24:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2153, 0\0A.popsection", ""() #16, !srcloc !261
  unreachable

do.body33:                                        ; preds = %do.body16
  %cmp34 = icmp ugt ptr %mem, inttoptr (i32 -8388608 to ptr)
  br i1 %cmp34, label %do.body42, label %do.body51, !prof !247

do.body42:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2154, 0\0A.popsection", ""() #16, !srcloc !262
  unreachable

do.body51:                                        ; preds = %do.body33
  %and52 = and i32 %0, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %cmp53.not = icmp eq i32 %and52, 0
  br i1 %cmp53.not, label %do.end71, label %do.body63, !prof !245

do.body63:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2155, 0\0A.popsection", ""() #16, !srcloc !263
  unreachable

do.end71:                                         ; preds = %do.body51
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %count)
  %cmp72 = icmp ult i32 %count, 33
  br i1 %cmp72, label %if.then79, label %if.end80, !prof !245

if.then79:                                        ; preds = %do.end71
  tail call void @debug_check_no_locks_freed(ptr noundef nonnull %mem, i32 noundef %shl) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %shl)
  %cmp.i = icmp ugt i32 %shl, 131072
  br i1 %cmp.i, label %do.body17.i, label %do.end25.i, !prof !247

do.body17.i:                                      ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2050, 0\0A.popsection", ""() #16, !srcloc !264
  unreachable

do.end25.i:                                       ; preds = %if.then79
  %add.i = add i32 %shl, %0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cacheid to i32))
  %3 = load i32, ptr @cacheid, align 4
  %and2.i.i.i = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i99.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i99.i, label %if.then.i100.i, label %do.end25.i.get_order.exit.i_crit_edge

do.end25.i.get_order.exit.i_crit_edge:            ; preds = %do.end25.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_order.exit.i

if.then.i100.i:                                   ; preds = %do.end25.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %4() #16
  br label %get_order.exit.i

get_order.exit.i:                                 ; preds = %if.then.i100.i, %do.end25.i.get_order.exit.i_crit_edge
  %dec.i.i = add nsw i32 %shl, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %dec.i.i)
  %tobool.not.i.i.i = icmp eq i32 %dec.i.i, 4095
  %shr.i.i = lshr i32 %dec.i.i, 12
  %5 = tail call i32 @llvm.ctlz.i32(i32 %shr.i.i, i1 true) #16, !range !265
  %sub.i.i.i = sub nuw nsw i32 32, %5
  %and26.i = lshr i32 %0, 12
  %shr.i = and i32 %and26.i, 511
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %6 = load ptr, ptr @high_memory, align 4
  %7 = ptrtoint ptr %6 to i32
  %add.i102.i = add i32 %7, 8388608
  %and.i.i = and i32 %add.i102.i, -8388608
  %sub.i103.i = sub i32 %0, %and.i.i
  %div4.i.i = lshr i32 %sub.i103.i, 21
  %call28.i = tail call ptr @xa_load(ptr noundef nonnull @vmap_blocks, i32 noundef %div4.i.i) #16
  tail call void @vunmap_range_noflush(i32 noundef %0, i32 noundef %add.i) #16
  tail call void @_raw_spin_lock(ptr noundef %call28.i) #16
  %dirty_min.i = getelementptr inbounds %struct.vmap_block, ptr %call28.i, i32 0, i32 4
  %8 = ptrtoint ptr %dirty_min.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dirty_min.i, align 4
  %10 = tail call i32 @llvm.umin.i32(i32 %9, i32 %shr.i) #16
  %11 = ptrtoint ptr %dirty_min.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %dirty_min.i, align 4
  %dirty_max.i = getelementptr inbounds %struct.vmap_block, ptr %call28.i, i32 0, i32 5
  %12 = ptrtoint ptr %dirty_max.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dirty_max.i, align 4
  %sub.i.i.i.op = shl nuw i32 1, %sub.i.i.i
  %shl.i = select i1 %tobool.not.i.i.i, i32 1, i32 %sub.i.i.i.op
  %add36.i = add nuw i32 %shl.i, %shr.i
  %14 = tail call i32 @llvm.umax.i32(i32 %13, i32 %add36.i) #16
  %15 = ptrtoint ptr %dirty_max.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %dirty_max.i, align 4
  %dirty.i = getelementptr inbounds %struct.vmap_block, ptr %call28.i, i32 0, i32 3
  %16 = ptrtoint ptr %dirty.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dirty.i, align 4
  %add45.i = add i32 %17, %shl.i
  store i32 %add45.i, ptr %dirty.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %add45.i)
  %cmp47.i = icmp eq i32 %add45.i, 512
  br i1 %cmp47.i, label %do.body49.i, label %if.else.i

do.body49.i:                                      ; preds = %get_order.exit.i
  %free.i = getelementptr inbounds %struct.vmap_block, ptr %call28.i, i32 0, i32 2
  %18 = ptrtoint ptr %free.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %free.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool50.not.i = icmp eq i32 %19, 0
  br i1 %tobool50.not.i, label %do.end66.i, label %do.body58.i, !prof !245

do.body58.i:                                      ; preds = %do.body49.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2071, 0\0A.popsection", ""() #16, !srcloc !266
  unreachable

do.end66.i:                                       ; preds = %do.body49.i
  tail call void @_raw_spin_unlock(ptr noundef %call28.i) #16
  %va.i.i = getelementptr inbounds %struct.vmap_block, ptr %call28.i, i32 0, i32 1
  %20 = ptrtoint ptr %va.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %va.i.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %24 = load ptr, ptr @high_memory, align 4
  %25 = ptrtoint ptr %24 to i32
  %add.i.i.i = add i32 %25, 8388608
  %and.i.i.i = and i32 %add.i.i.i, -8388608
  %sub.i.i104.i = sub i32 %23, %and.i.i.i
  %div4.i.i.i = lshr i32 %sub.i.i104.i, 21
  %call1.i.i = tail call ptr @xa_erase(ptr noundef nonnull @vmap_blocks, i32 noundef %div4.i.i.i) #16
  %cmp.not.i.i = icmp eq ptr %call1.i.i, %call28.i
  br i1 %cmp.not.i.i, label %do.end8.i.i, label %do.body3.i.i, !prof !245

do.body3.i.i:                                     ; preds = %do.end66.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1941, 0\0A.popsection", ""() #16, !srcloc !267
  unreachable

do.end8.i.i:                                      ; preds = %do.end66.i
  %26 = ptrtoint ptr %va.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %va.i.i, align 4
  tail call fastcc void @free_vmap_area_noflush(ptr noundef %27) #16
  %tobool11.not.i.i = icmp eq ptr %call28.i, null
  br i1 %tobool11.not.i.i, label %do.end8.i.i.cleanup_crit_edge, label %do.end15.i.i

do.end8.i.i.cleanup_crit_edge:                    ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end15.i.i:                                     ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %callback_head.i.i = getelementptr inbounds %struct.vmap_block, ptr %call28.i, i32 0, i32 7
  tail call void @kvfree_call_rcu(ptr noundef %callback_head.i.i, ptr noundef nonnull inttoptr (i32 72 to ptr)) #16
  br label %cleanup

if.else.i:                                        ; preds = %get_order.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_unlock(ptr noundef %call28.i) #16
  br label %cleanup

if.end80:                                         ; preds = %do.end71
  %call = tail call fastcc ptr @find_vmap_area(i32 noundef %0)
  %tobool82.not = icmp eq ptr %call, null
  br i1 %tobool82.not, label %do.body92, label %do.end100, !prof !247

do.body92:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2166, 0\0A.popsection", ""() #16, !srcloc !268
  unreachable

do.end100:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #18
  %28 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %call, align 4
  %30 = inttoptr i32 %29 to ptr
  %va_end = getelementptr inbounds %struct.vmap_area, ptr %call, i32 0, i32 1
  %31 = ptrtoint ptr %va_end to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %va_end, align 4
  %sub = sub i32 %32, %29
  tail call void @debug_check_no_locks_freed(ptr noundef %30, i32 noundef %sub) #16
  tail call fastcc void @free_unmap_vmap_area(ptr noundef nonnull %call)
  br label %cleanup

cleanup:                                          ; preds = %do.end100, %if.else.i, %do.end15.i.i, %do.end8.i.i.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_check_no_locks_freed(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @find_vmap_area(i32 noundef %addr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @vmap_area_lock) #16
  %n.017.i = load ptr, ptr @vmap_area_root, align 4
  %tobool.not18.i = icmp eq ptr %n.017.i, null
  br i1 %tobool.not18.i, label %entry.__find_vmap_area.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.__find_vmap_area.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %__find_vmap_area.exit

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %n.019.i = phi ptr [ %n.0.i, %cleanup.i.while.body.i_crit_edge ], [ %n.017.i, %entry.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %n.019.i, i32 -8
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %addr)
  %cmp.i = icmp ugt i32 %1, %addr
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %n.019.i, i32 0, i32 2
  br label %cleanup.i

if.else.i:                                        ; preds = %while.body.i
  %va_end.i = getelementptr i8, ptr %n.019.i, i32 -4
  %2 = ptrtoint ptr %va_end.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %va_end.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %addr)
  %cmp1.not.i = icmp ugt i32 %3, %addr
  br i1 %cmp1.not.i, label %__find_vmap_area.exit.loopexit.split.loop.exit, label %if.then2.i

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %n.019.i, i32 0, i32 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then2.i, %if.then.i
  %n.1.in.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then2.i ]
  %4 = ptrtoint ptr %n.1.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %n.0.i = load ptr, ptr %n.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %n.0.i, null
  br i1 %tobool.not.i, label %cleanup.i.__find_vmap_area.exit_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

cleanup.i.__find_vmap_area.exit_crit_edge:        ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__find_vmap_area.exit

__find_vmap_area.exit.loopexit.split.loop.exit:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.le = getelementptr i8, ptr %n.019.i, i32 -8
  br label %__find_vmap_area.exit

__find_vmap_area.exit:                            ; preds = %__find_vmap_area.exit.loopexit.split.loop.exit, %cleanup.i.__find_vmap_area.exit_crit_edge, %entry.__find_vmap_area.exit_crit_edge
  %retval.2.i = phi ptr [ null, %entry.__find_vmap_area.exit_crit_edge ], [ %add.ptr.i.le, %__find_vmap_area.exit.loopexit.split.loop.exit ], [ null, %cleanup.i.__find_vmap_area.exit_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @vmap_area_lock) #16
  ret ptr %retval.2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_unmap_vmap_area(ptr noundef %va) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cacheid to i32))
  %0 = load i32, ptr @cacheid, align 4
  %and2.i.i = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.flush_cache_vunmap.exit_crit_edge

entry.flush_cache_vunmap.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %flush_cache_vunmap.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %1() #16
  br label %flush_cache_vunmap.exit

flush_cache_vunmap.exit:                          ; preds = %if.then.i, %entry.flush_cache_vunmap.exit_crit_edge
  %va_end = getelementptr inbounds %struct.vmap_area, ptr %va, i32 0, i32 1
  %2 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %va, align 4
  %4 = ptrtoint ptr %va_end to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %va_end, align 4
  tail call void @vunmap_range_noflush(i32 noundef %3, i32 noundef %5)
  tail call fastcc void @free_vmap_area_noflush(ptr noundef %va)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vm_map_ram(ptr nocapture noundef readonly %pages, i32 noundef %count, i32 %node) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %count, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %count)
  %cmp = icmp ult i32 %count, 33
  br i1 %cmp, label %do.body9.i, label %if.else, !prof !245

do.body9.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %shl)
  %cmp.i = icmp ugt i32 %shl, 131072
  br i1 %cmp.i, label %do.body17.i, label %do.end25.i, !prof !247

do.body17.i:                                      ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1998, 0\0A.popsection", ""() #16, !srcloc !269
  unreachable

do.end25.i:                                       ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl)
  %cmp26.i = icmp eq i32 %shl, 0
  br i1 %cmp26.i, label %vb_alloc.exit.thread33, label %if.end14.i.i, !prof !247

vb_alloc.exit.thread33:                           ; preds = %do.end25.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1999, i32 noundef 9, ptr noundef null) #16
  br label %if.end

if.end14.i.i:                                     ; preds = %do.end25.i
  %sub.i.i = add nsw i32 %shl, -1
  %shr.i.i = lshr i32 %sub.i.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %sub.i.i)
  %tobool.not.i.i.i = icmp eq i32 %sub.i.i, 4095
  %0 = tail call i32 @llvm.ctlz.i32(i32 %shr.i.i, i1 true) #16, !range !265
  %sub.i.i.i = sub nuw nsw i32 32, %0
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 0, i32 %sub.i.i.i
  %1 = tail call i32 @llvm.read_register.i32(metadata !235) #16
  %and.i.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !258
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i.i, label %if.end14.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end14.i.i.rcu_read_lock.exit.i_crit_edge:      ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end14.i.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i2.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i2.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i3.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

if.then.i3.i:                                     ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 696, ptr noundef nonnull @.str.20) #16
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i3.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end14.i.i.rcu_read_lock.exit.i_crit_edge
  %5 = tail call i32 @llvm.read_register.i32(metadata !235) #16
  %and.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i4.i = add i32 %8, 1
  store volatile i32 %add.i4.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !270
  %9 = tail call i32 @llvm.read_register.i32(metadata !235) #16
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %14, ptrtoint (ptr @vmap_block_queue to i32)
  %15 = inttoptr i32 %add.i to ptr
  %call69.i = tail call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.i)
  %tobool70.not.i = icmp eq i32 %call69.i, 0
  br i1 %tobool70.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end78.i_crit_edge

rcu_read_lock.exit.i.do.end78.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end78.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call71.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.i)
  %tobool72.not.i = icmp eq i32 %call71.i, 0
  br i1 %tobool72.not.i, label %land.lhs.true.i.do.end78.i_crit_edge, label %land.lhs.true73.i

land.lhs.true.i.do.end78.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end78.i

land.lhs.true73.i:                                ; preds = %land.lhs.true.i
  %.b1.i = load i1, ptr @vb_alloc.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true73.i.do.end78.i_crit_edge, label %if.then75.i

land.lhs.true73.i.do.end78.i_crit_edge:           ; preds = %land.lhs.true73.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end78.i

if.then75.i:                                      ; preds = %land.lhs.true73.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @vb_alloc.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2011, ptr noundef nonnull @.str.18) #16
  br label %do.end78.i

do.end78.i:                                       ; preds = %if.then75.i, %land.lhs.true73.i.do.end78.i_crit_edge, %land.lhs.true.i.do.end78.i_crit_edge, %rcu_read_lock.exit.i.do.end78.i_crit_edge
  %free.i = getelementptr inbounds %struct.vmap_block_queue, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %free.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn44.i = load volatile ptr, ptr %free.i, align 4
  %cmp85.not46.i = icmp eq ptr %.pn44.i, %free.i
  br i1 %cmp85.not46.i, label %do.end78.i.do.body114.i_crit_edge, label %for.body.lr.ph.i

do.end78.i.do.body114.i_crit_edge:                ; preds = %do.end78.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body114.i

for.body.lr.ph.i:                                 ; preds = %do.end78.i
  %shl.i = shl nuw i32 1, %cond.i.i.i
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn47.i = phi ptr [ %.pn44.i, %for.body.lr.ph.i ], [ %.pn.i, %cleanup.i.for.body.i_crit_edge ]
  %vb.048.i = getelementptr i8, ptr %.pn47.i, i32 -64
  tail call void @_raw_spin_lock(ptr noundef %vb.048.i) #16
  %free86.i = getelementptr i8, ptr %.pn47.i, i32 -16
  %17 = ptrtoint ptr %free86.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %free86.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %shl.i)
  %cmp87.i = icmp ult i32 %18, %shl.i
  br i1 %cmp87.i, label %cleanup.i, label %if.end90.i

if.end90.i:                                       ; preds = %for.body.i
  %va.i = getelementptr i8, ptr %.pn47.i, i32 -20
  %19 = ptrtoint ptr %va.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %va.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %.neg.i = mul i32 %18, -4096
  %shl.i.i = add i32 %.neg.i, 2097152
  %add.i8.i = add i32 %shl.i.i, %22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %23 = load ptr, ptr @high_memory, align 4
  %24 = ptrtoint ptr %23 to i32
  %add.i.i.i = add i32 %24, 8388608
  %and.i.i.i = and i32 %add.i.i.i, -8388608
  %sub.i.i9.i = sub i32 %add.i8.i, %and.i.i.i
  %sub.i13.i.i = sub i32 %22, %and.i.i.i
  %cmp.not.unshifted.i.i = xor i32 %sub.i.i9.i, %sub.i13.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %cmp.not.unshifted.i.i)
  %cmp.not.i.i = icmp ult i32 %cmp.not.unshifted.i.i, 2097152
  br i1 %cmp.not.i.i, label %vmap_block_vaddr.exit.i, label %do.body3.i.i, !prof !245

do.body3.i.i:                                     ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1872, 0\0A.popsection", ""() #16, !srcloc !271
  unreachable

vmap_block_vaddr.exit.i:                          ; preds = %if.end90.i
  %free86.i.le = getelementptr i8, ptr %.pn47.i, i32 -16
  %25 = inttoptr i32 %add.i8.i to ptr
  %sub95.i = sub i32 %18, %shl.i
  %26 = ptrtoint ptr %free86.i.le to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub95.i, ptr %free86.i.le, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %shl.i)
  %cmp97.i = icmp eq i32 %18, %shl.i
  br i1 %cmp97.i, label %if.then98.i, label %vmap_block_vaddr.exit.i.cleanup.thread.i_crit_edge

vmap_block_vaddr.exit.i.cleanup.thread.i_crit_edge: ; preds = %vmap_block_vaddr.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.thread.i

if.then98.i:                                      ; preds = %vmap_block_vaddr.exit.i
  tail call void @_raw_spin_lock(ptr noundef %15) #16
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn47.i) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then98.i.list_del_rcu.exit.i_crit_edge

if.then98.i.list_del_rcu.exit.i_crit_edge:        ; preds = %if.then98.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del_rcu.exit.i

if.end.i.i.i:                                     ; preds = %if.then98.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn47.i, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i.i, align 4
  %29 = ptrtoint ptr %.pn47.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %.pn47.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %list_del_rcu.exit.i

list_del_rcu.exit.i:                              ; preds = %if.end.i.i.i, %if.then98.i.list_del_rcu.exit.i_crit_edge
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn47.i, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %15) #16
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %list_del_rcu.exit.i, %vmap_block_vaddr.exit.i.cleanup.thread.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %vb.048.i) #16
  br label %do.body114.i

cleanup.i:                                        ; preds = %for.body.i
  tail call void @_raw_spin_unlock(ptr noundef %vb.048.i) #16
  %34 = ptrtoint ptr %.pn47.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pn.i = load volatile ptr, ptr %.pn47.i, align 4
  %cmp85.not.i = icmp eq ptr %.pn.i, %free.i
  br i1 %cmp85.not.i, label %cleanup.i.do.body114.i_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

cleanup.i.do.body114.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body114.i

do.body114.i:                                     ; preds = %cleanup.i.do.body114.i_crit_edge, %cleanup.thread.i, %do.end78.i.do.body114.i_crit_edge
  %vaddr.2.i = phi ptr [ %25, %cleanup.thread.i ], [ null, %do.end78.i.do.body114.i_crit_edge ], [ null, %cleanup.i.do.body114.i_crit_edge ]
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !272
  %35 = tail call i32 @llvm.read_register.i32(metadata !235) #16
  %and.i.i.i5.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i5.i to ptr
  %preempt_count.i.i6.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i6.i, align 4
  %sub.i7.i = add i32 %38, -1
  store volatile i32 %sub.i7.i, ptr %preempt_count.i.i6.i, align 4
  %call.i10.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i10.i, label %do.body114.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i13.i

do.body114.i.rcu_read_unlock.exit.i_crit_edge:    ; preds = %do.body114.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit.i

land.lhs.true.i13.i:                              ; preds = %do.body114.i
  %call1.i11.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i)
  %tobool.not.i12.i = icmp eq i32 %call1.i11.i, 0
  br i1 %tobool.not.i12.i, label %land.lhs.true.i13.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i15.i

land.lhs.true.i13.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i15.i:                             ; preds = %land.lhs.true.i13.i
  %.b4.i14.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i, label %land.lhs.true2.i15.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i16.i

land.lhs.true2.i15.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit.i

if.then.i16.i:                                    ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 724, ptr noundef nonnull @.str.21) #16
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i16.i, %land.lhs.true2.i15.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i13.i.rcu_read_unlock.exit.i_crit_edge, %do.body114.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !259
  %39 = tail call i32 @llvm.read_register.i32(metadata !235) #16
  %and.i.i.i.i.i17.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i.i.i17.i to ptr
  %preempt_count.i.i.i.i18.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i.i.i18.i, align 4
  %sub.i.i.i.i = add i32 %42, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i18.i, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  %tobool119.not.i = icmp eq ptr %vaddr.2.i, null
  br i1 %tobool119.not.i, label %if.then120.i, label %rcu_read_unlock.exit.i.vb_alloc.exit_crit_edge

rcu_read_unlock.exit.i.vb_alloc.exit_crit_edge:   ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vb_alloc.exit

if.then120.i:                                     ; preds = %rcu_read_unlock.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %43 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %43, i32 noundef 3264, i32 noundef 88) #21
  %tobool.not.i19.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i19.i, label %if.then120.i.cleanup14_crit_edge, label %if.end.i21.i, !prof !247

if.then120.i.cleanup14_crit_edge:                 ; preds = %if.then120.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup14

if.end.i21.i:                                     ; preds = %if.then120.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %44 = load ptr, ptr @high_memory, align 4
  %45 = ptrtoint ptr %44 to i32
  %add.i20.i = add i32 %45, 8388608
  %and6.i.i = and i32 %add.i20.i, -8388608
  %call7.i.i = tail call fastcc ptr @alloc_vmap_area(i32 noundef 2097152, i32 noundef 2097152, i32 noundef %and6.i.i, i32 noundef -8388608, i32 noundef 3264) #16
  %cmp.i.i.i = icmp ugt ptr %call7.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then9.i.i, label %vmap_block_vaddr.exit.i.i

if.then9.i.i:                                     ; preds = %if.end.i21.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree(ptr noundef nonnull %call.i.i.i.i) #16
  br label %vb_alloc.exit

vmap_block_vaddr.exit.i.i:                        ; preds = %if.end.i21.i
  %46 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %call7.i.i, align 4
  %48 = inttoptr i32 %47 to ptr
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call.i.i.i.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @new_vmap_block.__key, i16 noundef signext 3) #16
  %va14.i.i = getelementptr inbounds %struct.vmap_block, ptr %call.i.i.i.i, i32 0, i32 1
  %49 = ptrtoint ptr %va14.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call7.i.i, ptr %va14.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %cond.i.i.i)
  %cmp.i22.i = icmp ugt i32 %cond.i.i.i, 8
  br i1 %cmp.i22.i, label %do.body23.i.i, label %do.end31.i.i, !prof !247

do.body23.i.i:                                    ; preds = %vmap_block_vaddr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1912, 0\0A.popsection", ""() #16, !srcloc !273
  unreachable

do.end31.i.i:                                     ; preds = %vmap_block_vaddr.exit.i.i
  %shl.neg.i.i = shl nsw i32 -1, %cond.i.i.i
  %sub.i23.i = add nsw i32 %shl.neg.i.i, 512
  %free.i.i = getelementptr inbounds %struct.vmap_block, ptr %call.i.i.i.i, i32 0, i32 2
  %50 = ptrtoint ptr %free.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %sub.i23.i, ptr %free.i.i, align 8
  %dirty.i.i = getelementptr inbounds %struct.vmap_block, ptr %call.i.i.i.i, i32 0, i32 3
  %51 = ptrtoint ptr %dirty.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %dirty.i.i, align 4
  %dirty_min.i.i = getelementptr inbounds %struct.vmap_block, ptr %call.i.i.i.i, i32 0, i32 4
  %52 = ptrtoint ptr %dirty_min.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 512, ptr %dirty_min.i.i, align 8
  %dirty_max.i.i = getelementptr inbounds %struct.vmap_block, ptr %call.i.i.i.i, i32 0, i32 5
  %53 = ptrtoint ptr %dirty_max.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %dirty_max.i.i, align 4
  %free_list.i.i = getelementptr inbounds %struct.vmap_block, ptr %call.i.i.i.i, i32 0, i32 6
  %54 = ptrtoint ptr %free_list.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %free_list.i.i, ptr %free_list.i.i, align 8
  %prev.i.i24.i = getelementptr inbounds %struct.vmap_block, ptr %call.i.i.i.i, i32 0, i32 6, i32 1
  %55 = ptrtoint ptr %prev.i.i24.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %free_list.i.i, ptr %prev.i.i24.i, align 4
  %56 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %call7.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %58 = load ptr, ptr @high_memory, align 4
  %59 = ptrtoint ptr %58 to i32
  %add.i3.i.i = add i32 %59, 8388608
  %and.i.i25.i = and i32 %add.i3.i.i, -8388608
  %sub.i4.i.i = sub i32 %57, %and.i.i25.i
  %div4.i.i.i = lshr i32 %sub.i4.i.i, 21
  tail call void @_raw_spin_lock(ptr noundef nonnull @vmap_blocks) #16
  %call.i.i26.i = tail call i32 @__xa_insert(ptr noundef nonnull @vmap_blocks, i32 noundef %div4.i.i.i, ptr noundef nonnull %call.i.i.i.i, i32 noundef 3264) #16
  tail call void @_raw_spin_unlock(ptr noundef nonnull @vmap_blocks) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i26.i)
  %tobool36.not.i.i = icmp eq i32 %call.i.i26.i, 0
  br i1 %tobool36.not.i.i, label %do.body40.i.i, label %if.then37.i.i

if.then37.i.i:                                    ; preds = %do.end31.i.i
  tail call void @kfree(ptr noundef nonnull %call.i.i.i.i) #16
  tail call void @_raw_spin_lock(ptr noundef nonnull @vmap_area_lock) #16
  %rb_node.i.i.i.i = getelementptr inbounds %struct.vmap_area, ptr %call7.i.i, i32 0, i32 2
  %60 = ptrtoint ptr %rb_node.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rb_node.i.i.i.i, align 4
  %62 = ptrtoint ptr %rb_node.i.i.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %62)
  %cmp.i.i.i.i = icmp eq i32 %61, %62
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.end22.critedge.i.i.i.i, !prof !247

do.end.i.i.i.i:                                   ; preds = %if.then37.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 962, i32 noundef 9, ptr noundef null) #16
  br label %unlink_va.exit.i.i.i

if.end22.critedge.i.i.i.i:                        ; preds = %if.then37.i.i
  tail call void @rb_erase(ptr noundef %rb_node.i.i.i.i, ptr noundef nonnull @vmap_area_root) #16
  %list.i.i.i.i = getelementptr inbounds %struct.vmap_area, ptr %call7.i.i, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i.i.i.i) #16
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.end22.critedge.i.i.i.i.list_del.exit.i.i.i.i_crit_edge

if.end22.critedge.i.i.i.i.list_del.exit.i.i.i.i_crit_edge: ; preds = %if.end22.critedge.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit.i.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %if.end22.critedge.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.vmap_area, ptr %call7.i.i, i32 0, i32 3, i32 1
  %63 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %prev.i.i.i.i.i.i, align 4
  %65 = ptrtoint ptr %list.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %list.i.i.i.i, align 4
  %prev1.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %prev1.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %64, ptr %prev1.i.i.i.i.i.i.i, align 4
  %68 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %66, ptr %64, align 4
  br label %list_del.exit.i.i.i.i

list_del.exit.i.i.i.i:                            ; preds = %if.end.i.i.i.i.i.i, %if.end22.critedge.i.i.i.i.list_del.exit.i.i.i.i_crit_edge
  %69 = ptrtoint ptr %list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i.i.i.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.vmap_area, ptr %call7.i.i, i32 0, i32 3, i32 1
  %70 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i.i.i, align 4
  %71 = ptrtoint ptr %rb_node.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %62, ptr %rb_node.i.i.i.i, align 4
  br label %unlink_va.exit.i.i.i

unlink_va.exit.i.i.i:                             ; preds = %list_del.exit.i.i.i.i, %do.end.i.i.i.i
  tail call void @_raw_spin_unlock(ptr noundef nonnull @vmap_area_lock) #16
  tail call void @_raw_spin_lock(ptr noundef nonnull @free_vmap_area_lock) #16
  %72 = load ptr, ptr @free_vmap_area_root, align 4
  %tobool1.not.i.i.i.i.i.i = icmp eq ptr %72, null
  br i1 %tobool1.not.i.i.i.i.i.i, label %unlink_va.exit.i.i.i.if.end4.i.i.i.i.i.i_crit_edge, label %if.end6.i.i.i.i.i.i, !prof !247

unlink_va.exit.i.i.i.if.end4.i.i.i.i.i.i_crit_edge: ; preds = %unlink_va.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i.i.i.i.i.i

if.end6.i.i.i.i.i.i:                              ; preds = %unlink_va.exit.i.i.i
  %73 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %call7.i.i, align 4
  %va_end1275.i.i.i.i.i.i = getelementptr inbounds %struct.vmap_area, ptr %call7.i.i, i32 0, i32 1
  %75 = ptrtoint ptr %va_end1275.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %va_end1275.i.i.i.i.i.i, align 4
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.cond50.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %if.end6.i.i.i.i.i.i
  %77 = phi ptr [ %83, %do.cond50.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge ], [ %72, %if.end6.i.i.i.i.i.i ]
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %77, i32 -8
  %va_end.i.i.i.i.i.i = getelementptr i8, ptr %77, i32 -4
  %78 = ptrtoint ptr %va_end.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %va_end.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %79)
  %cmp.i.i.i.i.i.i = icmp ult i32 %74, %79
  %80 = ptrtoint ptr %add.ptr.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %add.ptr.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %81)
  %cmp9.not.i.i.i.i.i.i = icmp ugt i32 %76, %81
  br i1 %cmp.i.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.i, label %if.else11.thread.i.i.i.i.i.i

land.lhs.true.i.i.i.i.i.i:                        ; preds = %do.body.i.i.i.i.i.i
  br i1 %cmp9.not.i.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.i.find_va_links.exit.thread.i.i.i.i.i_crit_edge, label %if.then10.i.i.i.i.i.i

land.lhs.true.i.i.i.i.i.i.find_va_links.exit.thread.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %find_va_links.exit.thread.i.i.i.i.i

if.then10.i.i.i.i.i.i:                            ; preds = %land.lhs.true.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %rb_left.i.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %77, i32 0, i32 2
  br label %do.cond50.i.i.i.i.i.i

if.else11.thread.i.i.i.i.i.i:                     ; preds = %do.body.i.i.i.i.i.i
  br i1 %cmp9.not.i.i.i.i.i.i, label %if.then19.i.i.i.i.i.i, label %if.else11.thread.i.i.i.i.i.i.find_va_links.exit.thread.i.i.i.i.i_crit_edge

if.else11.thread.i.i.i.i.i.i.find_va_links.exit.thread.i.i.i.i.i_crit_edge: ; preds = %if.else11.thread.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %find_va_links.exit.thread.i.i.i.i.i

if.then19.i.i.i.i.i.i:                            ; preds = %if.else11.thread.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %rb_right.i.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %77, i32 0, i32 1
  br label %do.cond50.i.i.i.i.i.i

find_va_links.exit.thread.i.i.i.i.i:              ; preds = %if.else11.thread.i.i.i.i.i.i.find_va_links.exit.thread.i.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.i.find_va_links.exit.thread.i.i.i.i.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 892, i32 noundef 9, ptr noundef nonnull @.str.26, i32 noundef %74, i32 noundef %76, i32 noundef %81, i32 noundef %79) #16
  br label %free_vmap_area.exit.i.i

do.cond50.i.i.i.i.i.i:                            ; preds = %if.then19.i.i.i.i.i.i, %if.then10.i.i.i.i.i.i
  %link.2.i.i.i.i.i.i = phi ptr [ %rb_left.i.i.i.i.i.i, %if.then10.i.i.i.i.i.i ], [ %rb_right.i.i.i.i.i.i, %if.then19.i.i.i.i.i.i ]
  %82 = ptrtoint ptr %link.2.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %link.2.i.i.i.i.i.i, align 4
  %tobool51.not.i.i.i.i.i.i = icmp eq ptr %83, null
  br i1 %tobool51.not.i.i.i.i.i.i, label %find_va_links.exit.i.i.i.i.i, label %do.cond50.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.cond50.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.cond50.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i.i.i.i.i

find_va_links.exit.i.i.i.i.i:                     ; preds = %do.cond50.i.i.i.i.i.i
  %tobool.not.i.i.i.i.i = icmp eq ptr %link.2.i.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i.i, label %find_va_links.exit.i.i.i.i.i.free_vmap_area.exit.i.i_crit_edge, label %if.end.i.i.i2.i.i.i

find_va_links.exit.i.i.i.i.i.free_vmap_area.exit.i.i_crit_edge: ; preds = %find_va_links.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %free_vmap_area.exit.i.i

if.end.i.i.i2.i.i.i:                              ; preds = %find_va_links.exit.i.i.i.i.i
  %list4.i.i.i.i.i.i = getelementptr i8, ptr %77, i32 12
  %rb_right.i65.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %77, i32 0, i32 1
  %cmp.i66.i.i.i.i.i = icmp eq ptr %rb_right.i65.i.i.i.i.i, %link.2.i.i.i.i.i.i
  br i1 %cmp.i66.i.i.i.i.i, label %cond.true.i.i.i.i.i.i, label %if.end.i.i.i2.i.i.i.get_va_next_sibling.exit.i.i.i.i.i_crit_edge

if.end.i.i.i2.i.i.i.get_va_next_sibling.exit.i.i.i.i.i_crit_edge: ; preds = %if.end.i.i.i2.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_va_next_sibling.exit.i.i.i.i.i

cond.true.i.i.i.i.i.i:                            ; preds = %if.end.i.i.i2.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %84 = ptrtoint ptr %list4.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %list4.i.i.i.i.i.i, align 4
  br label %get_va_next_sibling.exit.i.i.i.i.i

get_va_next_sibling.exit.i.i.i.i.i:               ; preds = %cond.true.i.i.i.i.i.i, %if.end.i.i.i2.i.i.i.get_va_next_sibling.exit.i.i.i.i.i_crit_edge
  %retval.0.i67.i.i.i.i.i = phi ptr [ %85, %cond.true.i.i.i.i.i.i ], [ %list4.i.i.i.i.i.i, %if.end.i.i.i2.i.i.i.get_va_next_sibling.exit.i.i.i.i.i_crit_edge ]
  %cmp.i.i.i.i.i = icmp eq ptr %retval.0.i67.i.i.i.i.i, null
  br i1 %cmp.i.i.i.i.i, label %get_va_next_sibling.exit.i.i.i.i.i.if.then.i73.i.i.i.i.i_crit_edge, label %if.end5.i.i.i.i.i, !prof !247

get_va_next_sibling.exit.i.i.i.i.i.if.then.i73.i.i.i.i.i_crit_edge: ; preds = %get_va_next_sibling.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i73.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %get_va_next_sibling.exit.i.i.i.i.i
  %cmp6.not.i.i.i.i.i = icmp eq ptr %retval.0.i67.i.i.i.i.i, @free_vmap_area_list
  br i1 %cmp6.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end13.i.i.i.i.i_crit_edge, label %if.then7.i.i.i.i.i

if.end5.i.i.i.i.i.if.end13.i.i.i.i.i_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13.i.i.i.i.i

if.then7.i.i.i.i.i:                               ; preds = %if.end5.i.i.i.i.i
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %retval.0.i67.i.i.i.i.i, i32 -20
  %86 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %add.ptr.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %76)
  %cmp8.i.i.i.i.i = icmp eq i32 %87, %76
  br i1 %cmp8.i.i.i.i.i, label %if.then9.i.i.i.i.i, label %if.then7.i.i.i.i.i.if.end13.i.i.i.i.i_crit_edge

if.then7.i.i.i.i.i.if.end13.i.i.i.i.i_crit_edge:  ; preds = %if.then7.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13.i.i.i.i.i

if.then9.i.i.i.i.i:                               ; preds = %if.then7.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %88 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %74, ptr %add.ptr.i.i.i.i.i, align 4
  %89 = load ptr, ptr @vmap_area_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %89, ptr noundef %call7.i.i) #16
  br label %if.end13.i.i.i.i.i

if.end13.i.i.i.i.i:                               ; preds = %if.then9.i.i.i.i.i, %if.then7.i.i.i.i.i.if.end13.i.i.i.i.i_crit_edge, %if.end5.i.i.i.i.i.if.end13.i.i.i.i.i_crit_edge
  %merged.0.off0.i.i.i.i.i = phi i1 [ true, %if.then9.i.i.i.i.i ], [ false, %if.then7.i.i.i.i.i.if.end13.i.i.i.i.i_crit_edge ], [ false, %if.end5.i.i.i.i.i.if.end13.i.i.i.i.i_crit_edge ]
  %va.addr.0.i.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i.i, %if.then9.i.i.i.i.i ], [ %call7.i.i, %if.then7.i.i.i.i.i.if.end13.i.i.i.i.i_crit_edge ], [ %call7.i.i, %if.end5.i.i.i.i.i.if.end13.i.i.i.i.i_crit_edge ]
  %prev.i.i3.i.i.i = getelementptr inbounds %struct.list_head, ptr %retval.0.i67.i.i.i.i.i, i32 0, i32 1
  %90 = ptrtoint ptr %prev.i.i3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %prev.i.i3.i.i.i, align 4
  %cmp14.not.i.i.i.i.i = icmp eq ptr %91, @free_vmap_area_list
  br i1 %cmp14.not.i.i.i.i.i, label %if.end13.i.i.i.i.i.insert.i.i.i.i.i_crit_edge, label %if.then15.i.i.i.i.i

if.end13.i.i.i.i.i.insert.i.i.i.i.i_crit_edge:    ; preds = %if.end13.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %insert.i.i.i.i.i

if.then15.i.i.i.i.i:                              ; preds = %if.end13.i.i.i.i.i
  %add.ptr19.i.i.i.i.i = getelementptr i8, ptr %91, i32 -20
  %va_end20.i.i.i.i.i = getelementptr i8, ptr %91, i32 -16
  %92 = ptrtoint ptr %va_end20.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %va_end20.i.i.i.i.i, align 4
  %94 = ptrtoint ptr %va.addr.0.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %va.addr.0.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %95)
  %cmp22.i.i.i.i.i = icmp eq i32 %93, %95
  br i1 %cmp22.i.i.i.i.i, label %if.then23.i.i.i.i.i, label %if.then15.i.i.i.i.i.insert.i.i.i.i.i_crit_edge

if.then15.i.i.i.i.i.insert.i.i.i.i.i_crit_edge:   ; preds = %if.then15.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %insert.i.i.i.i.i

if.then23.i.i.i.i.i:                              ; preds = %if.then15.i.i.i.i.i
  br i1 %merged.0.off0.i.i.i.i.i, label %if.then25.i.i.i.i.i, label %if.then23.i.i.i.i.i.insert.thread115.i.i.i.i.i_crit_edge

if.then23.i.i.i.i.i.insert.thread115.i.i.i.i.i_crit_edge: ; preds = %if.then23.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %insert.thread115.i.i.i.i.i

if.then25.i.i.i.i.i:                              ; preds = %if.then23.i.i.i.i.i
  %rb_node.i.i.i.i.i.i = getelementptr inbounds %struct.vmap_area, ptr %va.addr.0.i.i.i.i.i, i32 0, i32 2
  %96 = ptrtoint ptr %rb_node.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %rb_node.i.i.i.i.i.i, align 4
  %98 = ptrtoint ptr %rb_node.i.i.i.i.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %97, i32 %98)
  %cmp.i68.i.i.i.i.i = icmp eq i32 %97, %98
  br i1 %cmp.i68.i.i.i.i.i, label %do.end.i69.i.i.i.i.i, label %if.end22.critedge.i.i.i.i.i.i, !prof !247

do.end.i69.i.i.i.i.i:                             ; preds = %if.then25.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 962, i32 noundef 9, ptr noundef null) #16
  br label %insert.thread115.i.i.i.i.i

if.end22.critedge.i.i.i.i.i.i:                    ; preds = %if.then25.i.i.i.i.i
  %rb_right.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.vmap_area, ptr %va.addr.0.i.i.i.i.i, i32 0, i32 2, i32 1
  %99 = ptrtoint ptr %rb_right.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %rb_right.i.i.i.i.i.i.i.i, align 4
  %rb_left.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.vmap_area, ptr %va.addr.0.i.i.i.i.i, i32 0, i32 2, i32 2
  %101 = ptrtoint ptr %rb_left.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %rb_left.i.i.i.i.i.i.i.i, align 4
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq ptr %102, null
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i.i.i, label %if.else6.i.i.i.i.i.i.i.i

if.then.i.i.i.i.i.i.i.i:                          ; preds = %if.end22.critedge.i.i.i.i.i.i
  %and.i.i.i.i.i.i.i.i = and i32 %97, -4
  %103 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i.i.i.__rb_change_child.exit.i.i.i.i.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i.i.i.i.i

if.then.i.i.i.i.i.i.i.i.__rb_change_child.exit.i.i.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__rb_change_child.exit.i.i.i.i.i.i.i.i

if.then.i.i.i.i.i.i.i.i.i:                        ; preds = %if.then.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %rb_left.i.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %103, i32 0, i32 2
  %104 = ptrtoint ptr %rb_left.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %rb_left.i.i.i.i.i.i.i.i.i, align 4
  %cmp.i.i.i.i.i.i.i.i.i = icmp eq ptr %105, %rb_node.i.i.i.i.i.i
  %rb_right.i.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %103, i32 0, i32 1
  %spec.select.i.i.i.i.i.i.i.i.i = select i1 %cmp.i.i.i.i.i.i.i.i.i, ptr %rb_left.i.i.i.i.i.i.i.i.i, ptr %rb_right.i.i.i.i.i.i.i.i.i
  br label %__rb_change_child.exit.i.i.i.i.i.i.i.i

__rb_change_child.exit.i.i.i.i.i.i.i.i:           ; preds = %if.then.i.i.i.i.i.i.i.i.i, %if.then.i.i.i.i.i.i.i.i.__rb_change_child.exit.i.i.i.i.i.i.i.i_crit_edge
  %rb_left.sink.i.i.i.i.i.i.i.i.i = phi ptr [ @free_vmap_area_root, %if.then.i.i.i.i.i.i.i.i.__rb_change_child.exit.i.i.i.i.i.i.i.i_crit_edge ], [ %spec.select.i.i.i.i.i.i.i.i.i, %if.then.i.i.i.i.i.i.i.i.i ]
  %106 = ptrtoint ptr %rb_left.sink.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store volatile ptr %100, ptr %rb_left.sink.i.i.i.i.i.i.i.i.i, align 4
  %tobool1.not.i.i.i.i.i.i.i.i = icmp eq ptr %100, null
  br i1 %tobool1.not.i.i.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.i.i, label %if.then2.i.i.i.i.i.i.i.i

if.then2.i.i.i.i.i.i.i.i:                         ; preds = %__rb_change_child.exit.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %107 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %97, ptr %100, align 4
  br label %if.end69.i.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i.i:                          ; preds = %__rb_change_child.exit.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %and4.i.i.i.i.i.i.i.i = and i32 %97, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i.i.i.i.i.i.i)
  %tobool5.not.i.i.i.i.i.i.i.i = icmp eq i32 %and4.i.i.i.i.i.i.i.i, 0
  %spec.select.i.i.i.i.i.i.i.i = select i1 %tobool5.not.i.i.i.i.i.i.i.i, ptr null, ptr %103
  br label %if.end69.i.i.i.i.i.i.i.i

if.else6.i.i.i.i.i.i.i.i:                         ; preds = %if.end22.critedge.i.i.i.i.i.i
  %tobool7.not.i.i.i.i.i.i.i.i = icmp eq ptr %100, null
  br i1 %tobool7.not.i.i.i.i.i.i.i.i, label %if.then8.i.i.i.i.i.i.i.i, label %if.else12.i.i.i.i.i.i.i.i

if.then8.i.i.i.i.i.i.i.i:                         ; preds = %if.else6.i.i.i.i.i.i.i.i
  %108 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %97, ptr %102, align 4
  %and11.i.i.i.i.i.i.i.i = and i32 %97, -4
  %109 = inttoptr i32 %and11.i.i.i.i.i.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i.i.i.i.i.i.i)
  %tobool.not.i2.i.i.i.i.i.i.i.i = icmp eq i32 %and11.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i2.i.i.i.i.i.i.i.i, label %if.then8.i.i.i.i.i.i.i.i.__rb_change_child.exit9.i.i.i.i.i.i.i.i_crit_edge, label %if.then.i7.i.i.i.i.i.i.i.i

if.then8.i.i.i.i.i.i.i.i.__rb_change_child.exit9.i.i.i.i.i.i.i.i_crit_edge: ; preds = %if.then8.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__rb_change_child.exit9.i.i.i.i.i.i.i.i

if.then.i7.i.i.i.i.i.i.i.i:                       ; preds = %if.then8.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %rb_left.i3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %109, i32 0, i32 2
  %110 = ptrtoint ptr %rb_left.i3.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %rb_left.i3.i.i.i.i.i.i.i.i, align 4
  %cmp.i4.i.i.i.i.i.i.i.i = icmp eq ptr %111, %rb_node.i.i.i.i.i.i
  %rb_right.i5.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %109, i32 0, i32 1
  %spec.select.i6.i.i.i.i.i.i.i.i = select i1 %cmp.i4.i.i.i.i.i.i.i.i, ptr %rb_left.i3.i.i.i.i.i.i.i.i, ptr %rb_right.i5.i.i.i.i.i.i.i.i
  br label %__rb_change_child.exit9.i.i.i.i.i.i.i.i

__rb_change_child.exit9.i.i.i.i.i.i.i.i:          ; preds = %if.then.i7.i.i.i.i.i.i.i.i, %if.then8.i.i.i.i.i.i.i.i.__rb_change_child.exit9.i.i.i.i.i.i.i.i_crit_edge
  %rb_left.sink.i8.i.i.i.i.i.i.i.i = phi ptr [ @free_vmap_area_root, %if.then8.i.i.i.i.i.i.i.i.__rb_change_child.exit9.i.i.i.i.i.i.i.i_crit_edge ], [ %spec.select.i6.i.i.i.i.i.i.i.i, %if.then.i7.i.i.i.i.i.i.i.i ]
  %112 = ptrtoint ptr %rb_left.sink.i8.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store volatile ptr %102, ptr %rb_left.sink.i8.i.i.i.i.i.i.i.i, align 4
  br label %if.end69.i.i.i.i.i.i.i.i

if.else12.i.i.i.i.i.i.i.i:                        ; preds = %if.else6.i.i.i.i.i.i.i.i
  %rb_left13.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %100, i32 0, i32 2
  %113 = ptrtoint ptr %rb_left13.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %rb_left13.i.i.i.i.i.i.i.i, align 4
  %tobool14.not.i.i.i.i.i.i.i.i = icmp eq ptr %114, null
  br i1 %tobool14.not.i.i.i.i.i.i.i.i, label %if.then15.i.i.i.i.i.i.i.i, label %if.else12.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

if.else12.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %if.else12.i.i.i.i.i.i.i.i
  br label %do.body.i.i.i.i.i.i.i.i

if.then15.i.i.i.i.i.i.i.i:                        ; preds = %if.else12.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %rb_right16.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %100, i32 0, i32 1
  %115 = ptrtoint ptr %rb_right16.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %rb_right16.i.i.i.i.i.i.i.i, align 4
  %117 = getelementptr %struct.vmap_area, ptr %va.addr.0.i.i.i.i.i, i32 0, i32 4
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %117, align 4
  %120 = getelementptr i8, ptr %100, i32 20
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %119, ptr %120, align 4
  %.pre.i.i.i.i.i.i.i.i = ptrtoint ptr %100 to i32
  br label %if.end42.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %if.else12.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge
  %tmp.0.i.i.i.i.i.i.i.i = phi ptr [ %123, %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge ], [ %114, %if.else12.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge ]
  %successor.0.i.i.i.i.i.i.i.i = phi ptr [ %tmp.0.i.i.i.i.i.i.i.i, %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge ], [ %100, %if.else12.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge ]
  %rb_left18.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %tmp.0.i.i.i.i.i.i.i.i, i32 0, i32 2
  %122 = ptrtoint ptr %rb_left18.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %rb_left18.i.i.i.i.i.i.i.i, align 4
  %tobool19.not.i.i.i.i.i.i.i.i = icmp eq ptr %123, null
  br i1 %tobool19.not.i.i.i.i.i.i.i.i, label %do.end.i.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i.i.i.i.i.i.i

do.end.i.i.i.i.i.i.i.i:                           ; preds = %do.body.i.i.i.i.i.i.i.i
  %rb_right20.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %tmp.0.i.i.i.i.i.i.i.i, i32 0, i32 1
  %124 = ptrtoint ptr %rb_right20.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %rb_right20.i.i.i.i.i.i.i.i, align 4
  %rb_left26.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %successor.0.i.i.i.i.i.i.i.i, i32 0, i32 2
  %126 = ptrtoint ptr %rb_left26.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store volatile ptr %125, ptr %rb_left26.i.i.i.i.i.i.i.i, align 4
  store volatile ptr %100, ptr %rb_right20.i.i.i.i.i.i.i.i, align 4
  %127 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %100, align 4
  %and.i.i.i.i.i.i.i.i.i = and i32 %128, 1
  %129 = ptrtoint ptr %tmp.0.i.i.i.i.i.i.i.i to i32
  %or.i.i.i.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i.i.i.i, %129
  store i32 %or.i.i.i.i.i.i.i.i.i, ptr %100, align 4
  %130 = getelementptr %struct.vmap_area, ptr %va.addr.0.i.i.i.i.i, i32 0, i32 4
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %130, align 4
  %133 = getelementptr i8, ptr %tmp.0.i.i.i.i.i.i.i.i, i32 20
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %132, ptr %133, align 4
  %cmp.not7.i.i.i.i.i.i.i.i.i = icmp eq ptr %successor.0.i.i.i.i.i.i.i.i, %tmp.0.i.i.i.i.i.i.i.i
  br i1 %cmp.not7.i.i.i.i.i.i.i.i.i, label %do.end.i.i.i.i.i.i.i.i.if.end42.i.i.i.i.i.i.i.i_crit_edge, label %do.end.i.i.i.i.i.i.i.i.while.body.i.i.i.i.i.i.i.i.i_crit_edge

do.end.i.i.i.i.i.i.i.i.while.body.i.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.end.i.i.i.i.i.i.i.i
  br label %while.body.i.i.i.i.i.i.i.i.i

do.end.i.i.i.i.i.i.i.i.if.end42.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.end.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end42.i.i.i.i.i.i.i.i

while.body.i.i.i.i.i.i.i.i.i:                     ; preds = %cleanup.i.i.i.i.i.i.i.i.i.while.body.i.i.i.i.i.i.i.i.i_crit_edge, %do.end.i.i.i.i.i.i.i.i.while.body.i.i.i.i.i.i.i.i.i_crit_edge
  %rb.addr.08.i.i.i.i.i.i.i.i.i = phi ptr [ %157, %cleanup.i.i.i.i.i.i.i.i.i.while.body.i.i.i.i.i.i.i.i.i_crit_edge ], [ %successor.0.i.i.i.i.i.i.i.i, %do.end.i.i.i.i.i.i.i.i.while.body.i.i.i.i.i.i.i.i.i_crit_edge ]
  %add.ptr.i.i.i.i.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i.i.i.i.i.i.i.i, i32 -8
  %va_end.i.i.i.i.i.i.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i.i.i.i.i.i.i.i, i32 -4
  %135 = ptrtoint ptr %va_end.i.i.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %va_end.i.i.i.i.i.i.i.i.i.i.i, align 4
  %137 = ptrtoint ptr %add.ptr.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %add.ptr.i.i.i.i.i.i.i.i.i, align 4
  %sub.i.i.i.i.i.i.i.i.i.i.i = sub i32 %136, %138
  %rb_left.i.i.i.i.i.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i.i.i.i.i.i.i.i, i32 8
  %139 = ptrtoint ptr %rb_left.i.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %rb_left.i.i.i.i.i.i.i.i.i.i, align 4
  %tobool.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %140, null
  br i1 %tobool.not.i.i.i.i.i.i.i.i.i.i, label %while.body.i.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i.i.i.i.i.i

while.body.i.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i.i.i.i_crit_edge: ; preds = %while.body.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i.i.i.i.i.i.i.i.i.i

if.then.i.i.i.i.i.i.i.i.i.i:                      ; preds = %while.body.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %141 = getelementptr i8, ptr %140, i32 20
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %141, align 4
  %144 = tail call i32 @llvm.umax.i32(i32 %143, i32 %sub.i.i.i.i.i.i.i.i.i.i.i) #16
  br label %if.end4.i.i.i.i.i.i.i.i.i.i

if.end4.i.i.i.i.i.i.i.i.i.i:                      ; preds = %if.then.i.i.i.i.i.i.i.i.i.i, %while.body.i.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i.i.i.i_crit_edge
  %max.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %sub.i.i.i.i.i.i.i.i.i.i.i, %while.body.i.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i.i.i.i_crit_edge ], [ %144, %if.then.i.i.i.i.i.i.i.i.i.i ]
  %rb_right.i.i.i.i.i.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i.i.i.i.i.i.i.i, i32 4
  %145 = ptrtoint ptr %rb_right.i.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %rb_right.i.i.i.i.i.i.i.i.i.i, align 4
  %tobool6.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %146, null
  br i1 %tobool6.not.i.i.i.i.i.i.i.i.i.i, label %if.end4.i.i.i.i.i.i.i.i.i.i.if.end16.i.i.i.i.i.i.i.i.i.i_crit_edge, label %if.then7.i.i.i.i.i.i.i.i.i.i

if.end4.i.i.i.i.i.i.i.i.i.i.if.end16.i.i.i.i.i.i.i.i.i.i_crit_edge: ; preds = %if.end4.i.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16.i.i.i.i.i.i.i.i.i.i

if.then7.i.i.i.i.i.i.i.i.i.i:                     ; preds = %if.end4.i.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %147 = getelementptr i8, ptr %146, i32 20
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %147, align 4
  %150 = tail call i32 @llvm.umax.i32(i32 %149, i32 %max.0.i.i.i.i.i.i.i.i.i.i) #16
  br label %if.end16.i.i.i.i.i.i.i.i.i.i

if.end16.i.i.i.i.i.i.i.i.i.i:                     ; preds = %if.then7.i.i.i.i.i.i.i.i.i.i, %if.end4.i.i.i.i.i.i.i.i.i.i.if.end16.i.i.i.i.i.i.i.i.i.i_crit_edge
  %max.1.i.i.i.i.i.i.i.i.i.i = phi i32 [ %max.0.i.i.i.i.i.i.i.i.i.i, %if.end4.i.i.i.i.i.i.i.i.i.i.if.end16.i.i.i.i.i.i.i.i.i.i_crit_edge ], [ %150, %if.then7.i.i.i.i.i.i.i.i.i.i ]
  %151 = getelementptr i8, ptr %rb.addr.08.i.i.i.i.i.i.i.i.i, i32 20
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %151, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %153, i32 %max.1.i.i.i.i.i.i.i.i.i.i)
  %cmp18.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %153, %max.1.i.i.i.i.i.i.i.i.i.i
  br i1 %cmp18.i.i.i.i.i.i.i.i.i.i, label %if.end16.i.i.i.i.i.i.i.i.i.i.if.end42.i.i.i.i.i.i.i.i_crit_edge, label %cleanup.i.i.i.i.i.i.i.i.i

if.end16.i.i.i.i.i.i.i.i.i.i.if.end42.i.i.i.i.i.i.i.i_crit_edge: ; preds = %if.end16.i.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end42.i.i.i.i.i.i.i.i

cleanup.i.i.i.i.i.i.i.i.i:                        ; preds = %if.end16.i.i.i.i.i.i.i.i.i.i
  %154 = ptrtoint ptr %151 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %max.1.i.i.i.i.i.i.i.i.i.i, ptr %151, align 4
  %155 = ptrtoint ptr %rb.addr.08.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %rb.addr.08.i.i.i.i.i.i.i.i.i, align 4
  %and.i10.i.i.i.i.i.i.i.i = and i32 %156, -4
  %157 = inttoptr i32 %and.i10.i.i.i.i.i.i.i.i to ptr
  %cmp.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %tmp.0.i.i.i.i.i.i.i.i, %157
  br i1 %cmp.not.i.i.i.i.i.i.i.i.i, label %cleanup.i.i.i.i.i.i.i.i.i.if.end42.i.i.i.i.i.i.i.i_crit_edge, label %cleanup.i.i.i.i.i.i.i.i.i.while.body.i.i.i.i.i.i.i.i.i_crit_edge

cleanup.i.i.i.i.i.i.i.i.i.while.body.i.i.i.i.i.i.i.i.i_crit_edge: ; preds = %cleanup.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i.i.i.i.i.i.i.i.i

cleanup.i.i.i.i.i.i.i.i.i.if.end42.i.i.i.i.i.i.i.i_crit_edge: ; preds = %cleanup.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end42.i.i.i.i.i.i.i.i

if.end42.i.i.i.i.i.i.i.i:                         ; preds = %cleanup.i.i.i.i.i.i.i.i.i.if.end42.i.i.i.i.i.i.i.i_crit_edge, %if.end16.i.i.i.i.i.i.i.i.i.i.if.end42.i.i.i.i.i.i.i.i_crit_edge, %do.end.i.i.i.i.i.i.i.i.if.end42.i.i.i.i.i.i.i.i_crit_edge, %if.then15.i.i.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i.i = phi i32 [ %129, %do.end.i.i.i.i.i.i.i.i.if.end42.i.i.i.i.i.i.i.i_crit_edge ], [ %.pre.i.i.i.i.i.i.i.i, %if.then15.i.i.i.i.i.i.i.i ], [ %129, %if.end16.i.i.i.i.i.i.i.i.i.i.if.end42.i.i.i.i.i.i.i.i_crit_edge ], [ %129, %cleanup.i.i.i.i.i.i.i.i.i.if.end42.i.i.i.i.i.i.i.i_crit_edge ]
  %parent.0.i.i.i.i.i.i.i.i = phi ptr [ %tmp.0.i.i.i.i.i.i.i.i, %do.end.i.i.i.i.i.i.i.i.if.end42.i.i.i.i.i.i.i.i_crit_edge ], [ %100, %if.then15.i.i.i.i.i.i.i.i ], [ %successor.0.i.i.i.i.i.i.i.i, %if.end16.i.i.i.i.i.i.i.i.i.i.if.end42.i.i.i.i.i.i.i.i_crit_edge ], [ %successor.0.i.i.i.i.i.i.i.i, %cleanup.i.i.i.i.i.i.i.i.i.if.end42.i.i.i.i.i.i.i.i_crit_edge ]
  %successor.1.i.i.i.i.i.i.i.i = phi ptr [ %tmp.0.i.i.i.i.i.i.i.i, %do.end.i.i.i.i.i.i.i.i.if.end42.i.i.i.i.i.i.i.i_crit_edge ], [ %100, %if.then15.i.i.i.i.i.i.i.i ], [ %tmp.0.i.i.i.i.i.i.i.i, %if.end16.i.i.i.i.i.i.i.i.i.i.if.end42.i.i.i.i.i.i.i.i_crit_edge ], [ %tmp.0.i.i.i.i.i.i.i.i, %cleanup.i.i.i.i.i.i.i.i.i.if.end42.i.i.i.i.i.i.i.i_crit_edge ]
  %child2.0.i.i.i.i.i.i.i.i = phi ptr [ %125, %do.end.i.i.i.i.i.i.i.i.if.end42.i.i.i.i.i.i.i.i_crit_edge ], [ %116, %if.then15.i.i.i.i.i.i.i.i ], [ %125, %if.end16.i.i.i.i.i.i.i.i.i.i.if.end42.i.i.i.i.i.i.i.i_crit_edge ], [ %125, %cleanup.i.i.i.i.i.i.i.i.i.if.end42.i.i.i.i.i.i.i.i_crit_edge ]
  %158 = ptrtoint ptr %rb_left.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %rb_left.i.i.i.i.i.i.i.i, align 4
  %rb_left49.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %successor.1.i.i.i.i.i.i.i.i, i32 0, i32 2
  %160 = ptrtoint ptr %rb_left49.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store volatile ptr %159, ptr %rb_left49.i.i.i.i.i.i.i.i, align 4
  %161 = ptrtoint ptr %159 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %159, align 4
  %and.i11.i.i.i.i.i.i.i.i = and i32 %162, 1
  %or.i12.i.i.i.i.i.i.i.i = or i32 %and.i11.i.i.i.i.i.i.i.i, %.pre-phi.i.i.i.i.i.i.i.i
  store i32 %or.i12.i.i.i.i.i.i.i.i, ptr %159, align 4
  %163 = ptrtoint ptr %rb_node.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %rb_node.i.i.i.i.i.i, align 4
  %and55.i.i.i.i.i.i.i.i = and i32 %164, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i.i.i.i.i.i.i.i)
  %tobool.not.i13.i.i.i.i.i.i.i.i = icmp eq i32 %and55.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i13.i.i.i.i.i.i.i.i, label %if.end42.i.i.i.i.i.i.i.i.__rb_change_child.exit20.i.i.i.i.i.i.i.i_crit_edge, label %if.then.i18.i.i.i.i.i.i.i.i

if.end42.i.i.i.i.i.i.i.i.__rb_change_child.exit20.i.i.i.i.i.i.i.i_crit_edge: ; preds = %if.end42.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__rb_change_child.exit20.i.i.i.i.i.i.i.i

if.then.i18.i.i.i.i.i.i.i.i:                      ; preds = %if.end42.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %165 = inttoptr i32 %and55.i.i.i.i.i.i.i.i to ptr
  %rb_left.i14.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %165, i32 0, i32 2
  %166 = ptrtoint ptr %rb_left.i14.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %rb_left.i14.i.i.i.i.i.i.i.i, align 4
  %cmp.i15.i.i.i.i.i.i.i.i = icmp eq ptr %167, %rb_node.i.i.i.i.i.i
  %rb_right.i16.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %165, i32 0, i32 1
  %spec.select.i17.i.i.i.i.i.i.i.i = select i1 %cmp.i15.i.i.i.i.i.i.i.i, ptr %rb_left.i14.i.i.i.i.i.i.i.i, ptr %rb_right.i16.i.i.i.i.i.i.i.i
  br label %__rb_change_child.exit20.i.i.i.i.i.i.i.i

__rb_change_child.exit20.i.i.i.i.i.i.i.i:         ; preds = %if.then.i18.i.i.i.i.i.i.i.i, %if.end42.i.i.i.i.i.i.i.i.__rb_change_child.exit20.i.i.i.i.i.i.i.i_crit_edge
  %rb_left.sink.i19.i.i.i.i.i.i.i.i = phi ptr [ @free_vmap_area_root, %if.end42.i.i.i.i.i.i.i.i.__rb_change_child.exit20.i.i.i.i.i.i.i.i_crit_edge ], [ %spec.select.i17.i.i.i.i.i.i.i.i, %if.then.i18.i.i.i.i.i.i.i.i ]
  %168 = ptrtoint ptr %rb_left.sink.i19.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store volatile ptr %successor.1.i.i.i.i.i.i.i.i, ptr %rb_left.sink.i19.i.i.i.i.i.i.i.i, align 4
  %tobool56.not.i.i.i.i.i.i.i.i = icmp eq ptr %child2.0.i.i.i.i.i.i.i.i, null
  br i1 %tobool56.not.i.i.i.i.i.i.i.i, label %if.else58.i.i.i.i.i.i.i.i, label %if.then57.i.i.i.i.i.i.i.i

if.then57.i.i.i.i.i.i.i.i:                        ; preds = %__rb_change_child.exit20.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %169 = ptrtoint ptr %parent.0.i.i.i.i.i.i.i.i to i32
  %or.i21.i.i.i.i.i.i.i.i = or i32 %169, 1
  %170 = ptrtoint ptr %child2.0.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %or.i21.i.i.i.i.i.i.i.i, ptr %child2.0.i.i.i.i.i.i.i.i, align 4
  br label %if.end66.i.i.i.i.i.i.i.i

if.else58.i.i.i.i.i.i.i.i:                        ; preds = %__rb_change_child.exit20.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %171 = ptrtoint ptr %successor.1.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %successor.1.i.i.i.i.i.i.i.i, align 4
  %and60.i.i.i.i.i.i.i.i = and i32 %172, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.i.i.i.i.i.i.i.i)
  %tobool61.not.i.i.i.i.i.i.i.i = icmp eq i32 %and60.i.i.i.i.i.i.i.i, 0
  %spec.select1.i.i.i.i.i.i.i.i = select i1 %tobool61.not.i.i.i.i.i.i.i.i, ptr null, ptr %parent.0.i.i.i.i.i.i.i.i
  br label %if.end66.i.i.i.i.i.i.i.i

if.end66.i.i.i.i.i.i.i.i:                         ; preds = %if.else58.i.i.i.i.i.i.i.i, %if.then57.i.i.i.i.i.i.i.i
  %rebalance.1.i.i.i.i.i.i.i.i = phi ptr [ null, %if.then57.i.i.i.i.i.i.i.i ], [ %spec.select1.i.i.i.i.i.i.i.i, %if.else58.i.i.i.i.i.i.i.i ]
  %173 = ptrtoint ptr %successor.1.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %164, ptr %successor.1.i.i.i.i.i.i.i.i, align 4
  br label %if.end69.i.i.i.i.i.i.i.i

if.end69.i.i.i.i.i.i.i.i:                         ; preds = %if.end66.i.i.i.i.i.i.i.i, %__rb_change_child.exit9.i.i.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.i.i, %if.then2.i.i.i.i.i.i.i.i
  %tmp.1.i.i.i.i.i.i.i.i = phi ptr [ %successor.1.i.i.i.i.i.i.i.i, %if.end66.i.i.i.i.i.i.i.i ], [ %109, %__rb_change_child.exit9.i.i.i.i.i.i.i.i ], [ %103, %if.else.i.i.i.i.i.i.i.i ], [ %103, %if.then2.i.i.i.i.i.i.i.i ]
  %rebalance.2.i.i.i.i.i.i.i.i = phi ptr [ %rebalance.1.i.i.i.i.i.i.i.i, %if.end66.i.i.i.i.i.i.i.i ], [ null, %__rb_change_child.exit9.i.i.i.i.i.i.i.i ], [ %spec.select.i.i.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.i.i ], [ null, %if.then2.i.i.i.i.i.i.i.i ]
  %cmp.not7.i22.i.i.i.i.i.i.i.i = icmp eq ptr %tmp.1.i.i.i.i.i.i.i.i, null
  br i1 %cmp.not7.i22.i.i.i.i.i.i.i.i, label %if.end69.i.i.i.i.i.i.i.i.__rb_erase_augmented.exit.i.i.i.i.i.i.i_crit_edge, label %if.end69.i.i.i.i.i.i.i.i.while.body.i29.i.i.i.i.i.i.i.i_crit_edge

if.end69.i.i.i.i.i.i.i.i.while.body.i29.i.i.i.i.i.i.i.i_crit_edge: ; preds = %if.end69.i.i.i.i.i.i.i.i
  br label %while.body.i29.i.i.i.i.i.i.i.i

if.end69.i.i.i.i.i.i.i.i.__rb_erase_augmented.exit.i.i.i.i.i.i.i_crit_edge: ; preds = %if.end69.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__rb_erase_augmented.exit.i.i.i.i.i.i.i

while.body.i29.i.i.i.i.i.i.i.i:                   ; preds = %cleanup.i41.i.i.i.i.i.i.i.i.while.body.i29.i.i.i.i.i.i.i.i_crit_edge, %if.end69.i.i.i.i.i.i.i.i.while.body.i29.i.i.i.i.i.i.i.i_crit_edge
  %rb.addr.08.i23.i.i.i.i.i.i.i.i = phi ptr [ %196, %cleanup.i41.i.i.i.i.i.i.i.i.while.body.i29.i.i.i.i.i.i.i.i_crit_edge ], [ %tmp.1.i.i.i.i.i.i.i.i, %if.end69.i.i.i.i.i.i.i.i.while.body.i29.i.i.i.i.i.i.i.i_crit_edge ]
  %add.ptr.i24.i.i.i.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i23.i.i.i.i.i.i.i.i, i32 -8
  %va_end.i.i.i25.i.i.i.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i23.i.i.i.i.i.i.i.i, i32 -4
  %174 = ptrtoint ptr %va_end.i.i.i25.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %va_end.i.i.i25.i.i.i.i.i.i.i.i, align 4
  %176 = ptrtoint ptr %add.ptr.i24.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %add.ptr.i24.i.i.i.i.i.i.i.i, align 4
  %sub.i.i.i26.i.i.i.i.i.i.i.i = sub i32 %175, %177
  %rb_left.i.i27.i.i.i.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i23.i.i.i.i.i.i.i.i, i32 8
  %178 = ptrtoint ptr %rb_left.i.i27.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %rb_left.i.i27.i.i.i.i.i.i.i.i, align 4
  %tobool.not.i.i28.i.i.i.i.i.i.i.i = icmp eq ptr %179, null
  br i1 %tobool.not.i.i28.i.i.i.i.i.i.i.i, label %while.body.i29.i.i.i.i.i.i.i.i.if.end4.i.i34.i.i.i.i.i.i.i.i_crit_edge, label %if.then.i.i30.i.i.i.i.i.i.i.i

while.body.i29.i.i.i.i.i.i.i.i.if.end4.i.i34.i.i.i.i.i.i.i.i_crit_edge: ; preds = %while.body.i29.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i.i34.i.i.i.i.i.i.i.i

if.then.i.i30.i.i.i.i.i.i.i.i:                    ; preds = %while.body.i29.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %180 = getelementptr i8, ptr %179, i32 20
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %180, align 4
  %183 = tail call i32 @llvm.umax.i32(i32 %182, i32 %sub.i.i.i26.i.i.i.i.i.i.i.i) #16
  br label %if.end4.i.i34.i.i.i.i.i.i.i.i

if.end4.i.i34.i.i.i.i.i.i.i.i:                    ; preds = %if.then.i.i30.i.i.i.i.i.i.i.i, %while.body.i29.i.i.i.i.i.i.i.i.if.end4.i.i34.i.i.i.i.i.i.i.i_crit_edge
  %max.0.i.i31.i.i.i.i.i.i.i.i = phi i32 [ %sub.i.i.i26.i.i.i.i.i.i.i.i, %while.body.i29.i.i.i.i.i.i.i.i.if.end4.i.i34.i.i.i.i.i.i.i.i_crit_edge ], [ %183, %if.then.i.i30.i.i.i.i.i.i.i.i ]
  %rb_right.i.i32.i.i.i.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i23.i.i.i.i.i.i.i.i, i32 4
  %184 = ptrtoint ptr %rb_right.i.i32.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %rb_right.i.i32.i.i.i.i.i.i.i.i, align 4
  %tobool6.not.i.i33.i.i.i.i.i.i.i.i = icmp eq ptr %185, null
  br i1 %tobool6.not.i.i33.i.i.i.i.i.i.i.i, label %if.end4.i.i34.i.i.i.i.i.i.i.i.if.end16.i.i38.i.i.i.i.i.i.i.i_crit_edge, label %if.then7.i.i35.i.i.i.i.i.i.i.i

if.end4.i.i34.i.i.i.i.i.i.i.i.if.end16.i.i38.i.i.i.i.i.i.i.i_crit_edge: ; preds = %if.end4.i.i34.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16.i.i38.i.i.i.i.i.i.i.i

if.then7.i.i35.i.i.i.i.i.i.i.i:                   ; preds = %if.end4.i.i34.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %186 = getelementptr i8, ptr %185, i32 20
  %187 = ptrtoint ptr %186 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %186, align 4
  %189 = tail call i32 @llvm.umax.i32(i32 %188, i32 %max.0.i.i31.i.i.i.i.i.i.i.i) #16
  br label %if.end16.i.i38.i.i.i.i.i.i.i.i

if.end16.i.i38.i.i.i.i.i.i.i.i:                   ; preds = %if.then7.i.i35.i.i.i.i.i.i.i.i, %if.end4.i.i34.i.i.i.i.i.i.i.i.if.end16.i.i38.i.i.i.i.i.i.i.i_crit_edge
  %max.1.i.i36.i.i.i.i.i.i.i.i = phi i32 [ %max.0.i.i31.i.i.i.i.i.i.i.i, %if.end4.i.i34.i.i.i.i.i.i.i.i.if.end16.i.i38.i.i.i.i.i.i.i.i_crit_edge ], [ %189, %if.then7.i.i35.i.i.i.i.i.i.i.i ]
  %190 = getelementptr i8, ptr %rb.addr.08.i23.i.i.i.i.i.i.i.i, i32 20
  %191 = ptrtoint ptr %190 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %190, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %192, i32 %max.1.i.i36.i.i.i.i.i.i.i.i)
  %cmp18.i.i37.i.i.i.i.i.i.i.i = icmp eq i32 %192, %max.1.i.i36.i.i.i.i.i.i.i.i
  br i1 %cmp18.i.i37.i.i.i.i.i.i.i.i, label %if.end16.i.i38.i.i.i.i.i.i.i.i.__rb_erase_augmented.exit.i.i.i.i.i.i.i_crit_edge, label %cleanup.i41.i.i.i.i.i.i.i.i

if.end16.i.i38.i.i.i.i.i.i.i.i.__rb_erase_augmented.exit.i.i.i.i.i.i.i_crit_edge: ; preds = %if.end16.i.i38.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__rb_erase_augmented.exit.i.i.i.i.i.i.i

cleanup.i41.i.i.i.i.i.i.i.i:                      ; preds = %if.end16.i.i38.i.i.i.i.i.i.i.i
  %193 = ptrtoint ptr %190 to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %max.1.i.i36.i.i.i.i.i.i.i.i, ptr %190, align 4
  %194 = ptrtoint ptr %rb.addr.08.i23.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %rb.addr.08.i23.i.i.i.i.i.i.i.i, align 4
  %and.i39.i.i.i.i.i.i.i.i = and i32 %195, -4
  %196 = inttoptr i32 %and.i39.i.i.i.i.i.i.i.i to ptr
  %cmp.not.i40.i.i.i.i.i.i.i.i = icmp eq i32 %and.i39.i.i.i.i.i.i.i.i, 0
  br i1 %cmp.not.i40.i.i.i.i.i.i.i.i, label %cleanup.i41.i.i.i.i.i.i.i.i.__rb_erase_augmented.exit.i.i.i.i.i.i.i_crit_edge, label %cleanup.i41.i.i.i.i.i.i.i.i.while.body.i29.i.i.i.i.i.i.i.i_crit_edge

cleanup.i41.i.i.i.i.i.i.i.i.while.body.i29.i.i.i.i.i.i.i.i_crit_edge: ; preds = %cleanup.i41.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i29.i.i.i.i.i.i.i.i

cleanup.i41.i.i.i.i.i.i.i.i.__rb_erase_augmented.exit.i.i.i.i.i.i.i_crit_edge: ; preds = %cleanup.i41.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__rb_erase_augmented.exit.i.i.i.i.i.i.i

__rb_erase_augmented.exit.i.i.i.i.i.i.i:          ; preds = %cleanup.i41.i.i.i.i.i.i.i.i.__rb_erase_augmented.exit.i.i.i.i.i.i.i_crit_edge, %if.end16.i.i38.i.i.i.i.i.i.i.i.__rb_erase_augmented.exit.i.i.i.i.i.i.i_crit_edge, %if.end69.i.i.i.i.i.i.i.i.__rb_erase_augmented.exit.i.i.i.i.i.i.i_crit_edge
  %tobool.not.i.i.i.i.i.i.i = icmp eq ptr %rebalance.2.i.i.i.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i.i.i.i, label %__rb_erase_augmented.exit.i.i.i.i.i.i.i.if.end27.i.i.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i.i.i

__rb_erase_augmented.exit.i.i.i.i.i.i.i.if.end27.i.i.i.i.i.i_crit_edge: ; preds = %__rb_erase_augmented.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27.i.i.i.i.i.i

if.then.i.i.i.i.i.i.i:                            ; preds = %__rb_erase_augmented.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__rb_erase_color(ptr noundef nonnull %rebalance.2.i.i.i.i.i.i.i.i, ptr noundef nonnull @free_vmap_area_root, ptr noundef nonnull @free_vmap_area_rb_augment_cb_rotate) #16
  br label %if.end27.i.i.i.i.i.i

if.end27.i.i.i.i.i.i:                             ; preds = %if.then.i.i.i.i.i.i.i, %__rb_erase_augmented.exit.i.i.i.i.i.i.i.if.end27.i.i.i.i.i.i_crit_edge
  %list.i.i.i.i.i.i = getelementptr inbounds %struct.vmap_area, ptr %va.addr.0.i.i.i.i.i, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i.i.i.i.i.i) #16
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %if.end27.i.i.i.i.i.i.list_del.exit.i.i.i.i.i.i_crit_edge

if.end27.i.i.i.i.i.i.list_del.exit.i.i.i.i.i.i_crit_edge: ; preds = %if.end27.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit.i.i.i.i.i.i

if.end.i.i.i.i.i.i.i.i:                           ; preds = %if.end27.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.vmap_area, ptr %va.addr.0.i.i.i.i.i, i32 0, i32 3, i32 1
  %197 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %199 = ptrtoint ptr %list.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %list.i.i.i.i.i.i, align 4
  %prev1.i.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %200, i32 0, i32 1
  %201 = ptrtoint ptr %prev1.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr %198, ptr %prev1.i.i.i.i.i.i.i.i.i, align 4
  %202 = ptrtoint ptr %198 to i32
  call void @__asan_store4_noabort(i32 %202)
  store volatile ptr %200, ptr %198, align 4
  br label %list_del.exit.i.i.i.i.i.i

list_del.exit.i.i.i.i.i.i:                        ; preds = %if.end.i.i.i.i.i.i.i.i, %if.end27.i.i.i.i.i.i.list_del.exit.i.i.i.i.i.i_crit_edge
  %203 = ptrtoint ptr %list.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i.i.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.vmap_area, ptr %va.addr.0.i.i.i.i.i, i32 0, i32 3, i32 1
  %204 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i.i.i.i.i, align 4
  %205 = ptrtoint ptr %rb_node.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %98, ptr %rb_node.i.i.i.i.i.i, align 4
  br label %insert.thread115.i.i.i.i.i

insert.thread115.i.i.i.i.i:                       ; preds = %list_del.exit.i.i.i.i.i.i, %do.end.i69.i.i.i.i.i, %if.then23.i.i.i.i.i.insert.thread115.i.i.i.i.i_crit_edge
  %va_end27.i.i.i.i.i = getelementptr inbounds %struct.vmap_area, ptr %va.addr.0.i.i.i.i.i, i32 0, i32 1
  %206 = ptrtoint ptr %va_end27.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %va_end27.i.i.i.i.i, align 4
  %208 = ptrtoint ptr %va_end20.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %207, ptr %va_end20.i.i.i.i.i, align 4
  %209 = load ptr, ptr @vmap_area_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %209, ptr noundef %va.addr.0.i.i.i.i.i) #16
  br label %merge_or_add_vmap_area.exit.i.i.i.i

insert.i.i.i.i.i:                                 ; preds = %if.then15.i.i.i.i.i.insert.i.i.i.i.i_crit_edge, %if.end13.i.i.i.i.i.insert.i.i.i.i.i_crit_edge
  br i1 %merged.0.off0.i.i.i.i.i, label %insert.i.i.i.i.i.merge_or_add_vmap_area.exit.i.i.i.i_crit_edge, label %insert.i.i.i.i.i.if.then.i73.i.i.i.i.i_crit_edge

insert.i.i.i.i.i.if.then.i73.i.i.i.i.i_crit_edge: ; preds = %insert.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i73.i.i.i.i.i

insert.i.i.i.i.i.merge_or_add_vmap_area.exit.i.i.i.i_crit_edge: ; preds = %insert.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %merge_or_add_vmap_area.exit.i.i.i.i

if.then.i73.i.i.i.i.i:                            ; preds = %insert.i.i.i.i.i.if.then.i73.i.i.i.i.i_crit_edge, %get_va_next_sibling.exit.i.i.i.i.i.if.then.i73.i.i.i.i.i_crit_edge
  %va.addr.1113125.i.i.i.i.i = phi ptr [ %call7.i.i, %get_va_next_sibling.exit.i.i.i.i.i.if.then.i73.i.i.i.i.i_crit_edge ], [ %va.addr.0.i.i.i.i.i, %insert.i.i.i.i.i.if.then.i73.i.i.i.i.i_crit_edge ]
  br i1 %cmp.i66.i.i.i.i.i, label %if.then.i73.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge, label %if.then3.i.i.i.i.i.i

if.then.i73.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i73.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i.i.i.i.i.i

if.then3.i.i.i.i.i.i:                             ; preds = %if.then.i73.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i4.i.i.i = getelementptr i8, ptr %77, i32 16
  %210 = ptrtoint ptr %prev.i.i.i4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %prev.i.i.i4.i.i.i, align 4
  br label %if.end4.i.i.i.i.i.i

if.end4.i.i.i.i.i.i:                              ; preds = %if.then3.i.i.i.i.i.i, %if.then.i73.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge, %unlink_va.exit.i.i.i.if.end4.i.i.i.i.i.i_crit_edge
  %va.addr.1113126.i.i.i.i.i = phi ptr [ %va.addr.1113125.i.i.i.i.i, %if.then3.i.i.i.i.i.i ], [ %va.addr.1113125.i.i.i.i.i, %if.then.i73.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge ], [ %call7.i.i, %unlink_va.exit.i.i.i.if.end4.i.i.i.i.i.i_crit_edge ]
  %retval.0.i85.i.i.i.i.i = phi ptr [ %link.2.i.i.i.i.i.i, %if.then3.i.i.i.i.i.i ], [ %rb_right.i65.i.i.i.i.i, %if.then.i73.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge ], [ @free_vmap_area_root, %unlink_va.exit.i.i.i.if.end4.i.i.i.i.i.i_crit_edge ]
  %parent.083.i.i.i.i.i = phi ptr [ %77, %if.then3.i.i.i.i.i.i ], [ %77, %if.then.i73.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge ], [ null, %unlink_va.exit.i.i.i.if.end4.i.i.i.i.i.i_crit_edge ]
  %head.addr.0.i.i.i.i.i.i = phi ptr [ %211, %if.then3.i.i.i.i.i.i ], [ %list4.i.i.i.i.i.i, %if.then.i73.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge ], [ @free_vmap_area_list, %unlink_va.exit.i.i.i.if.end4.i.i.i.i.i.i_crit_edge ]
  %rb_node.i74.i.i.i.i.i = getelementptr inbounds %struct.vmap_area, ptr %va.addr.1113126.i.i.i.i.i, i32 0, i32 2
  %212 = ptrtoint ptr %parent.083.i.i.i.i.i to i32
  %213 = ptrtoint ptr %rb_node.i74.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %212, ptr %rb_node.i74.i.i.i.i.i, align 4
  %rb_right.i.i.i.i.i.i.i = getelementptr inbounds %struct.vmap_area, ptr %va.addr.1113126.i.i.i.i.i, i32 0, i32 2, i32 1
  %214 = ptrtoint ptr %rb_right.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr null, ptr %rb_right.i.i.i.i.i.i.i, align 4
  %rb_left.i.i.i.i.i.i.i = getelementptr inbounds %struct.vmap_area, ptr %va.addr.1113126.i.i.i.i.i, i32 0, i32 2, i32 2
  %215 = ptrtoint ptr %rb_left.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr null, ptr %rb_left.i.i.i.i.i.i.i, align 4
  %216 = ptrtoint ptr %retval.0.i85.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr %rb_node.i74.i.i.i.i.i, ptr %retval.0.i85.i.i.i.i.i, align 4
  tail call void @__rb_insert_augmented(ptr noundef %rb_node.i74.i.i.i.i.i, ptr noundef nonnull @free_vmap_area_root, ptr noundef nonnull @free_vmap_area_rb_augment_cb_rotate) #16
  %217 = getelementptr inbounds %struct.vmap_area, ptr %va.addr.1113126.i.i.i.i.i, i32 0, i32 4
  %218 = ptrtoint ptr %217 to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 0, ptr %217, align 4
  %list10.i.i.i.i.i.i = getelementptr inbounds %struct.vmap_area, ptr %va.addr.1113126.i.i.i.i.i, i32 0, i32 3
  %219 = ptrtoint ptr %head.addr.0.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %head.addr.0.i.i.i.i.i.i, align 4
  %call.i.i.i76.i.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list10.i.i.i.i.i.i, ptr noundef %head.addr.0.i.i.i.i.i.i, ptr noundef %220) #16
  br i1 %call.i.i.i76.i.i.i.i.i, label %if.end.i.i.i77.i.i.i.i.i, label %if.end4.i.i.i.i.i.i.merge_or_add_vmap_area.exit.i.i.i.i_crit_edge

if.end4.i.i.i.i.i.i.merge_or_add_vmap_area.exit.i.i.i.i_crit_edge: ; preds = %if.end4.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %merge_or_add_vmap_area.exit.i.i.i.i

if.end.i.i.i77.i.i.i.i.i:                         ; preds = %if.end4.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev1.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %220, i32 0, i32 1
  %221 = ptrtoint ptr %prev1.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr %list10.i.i.i.i.i.i, ptr %prev1.i.i.i.i.i.i.i.i, align 4
  %222 = ptrtoint ptr %list10.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr %220, ptr %list10.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.vmap_area, ptr %va.addr.1113126.i.i.i.i.i, i32 0, i32 3, i32 1
  %223 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr %head.addr.0.i.i.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i, align 4
  %224 = ptrtoint ptr %head.addr.0.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store volatile ptr %list10.i.i.i.i.i.i, ptr %head.addr.0.i.i.i.i.i.i, align 4
  br label %merge_or_add_vmap_area.exit.i.i.i.i

merge_or_add_vmap_area.exit.i.i.i.i:              ; preds = %if.end.i.i.i77.i.i.i.i.i, %if.end4.i.i.i.i.i.i.merge_or_add_vmap_area.exit.i.i.i.i_crit_edge, %insert.i.i.i.i.i.merge_or_add_vmap_area.exit.i.i.i.i_crit_edge, %insert.thread115.i.i.i.i.i
  %retval.0.i.i.i.i.i = phi ptr [ %va.addr.0.i.i.i.i.i, %insert.i.i.i.i.i.merge_or_add_vmap_area.exit.i.i.i.i_crit_edge ], [ %add.ptr19.i.i.i.i.i, %insert.thread115.i.i.i.i.i ], [ %va.addr.1113126.i.i.i.i.i, %if.end4.i.i.i.i.i.i.merge_or_add_vmap_area.exit.i.i.i.i_crit_edge ], [ %va.addr.1113126.i.i.i.i.i, %if.end.i.i.i77.i.i.i.i.i ]
  %tobool.not.i.i.i.i = icmp eq ptr %retval.0.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %merge_or_add_vmap_area.exit.i.i.i.i.free_vmap_area.exit.i.i_crit_edge, label %if.then.i.i.i.i

merge_or_add_vmap_area.exit.i.i.i.i.free_vmap_area.exit.i.i_crit_edge: ; preds = %merge_or_add_vmap_area.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %free_vmap_area.exit.i.i

if.then.i.i.i.i:                                  ; preds = %merge_or_add_vmap_area.exit.i.i.i.i
  %rb_node.i.i.i.i.i = getelementptr inbounds %struct.vmap_area, ptr %retval.0.i.i.i.i.i, i32 0, i32 2
  br label %while.body.i.i.i.i.i.i

while.body.i.i.i.i.i.i:                           ; preds = %cleanup.i.i.i.i.i.i.while.body.i.i.i.i.i.i_crit_edge, %if.then.i.i.i.i
  %rb.addr.08.i.i.i.i.i.i = phi ptr [ %247, %cleanup.i.i.i.i.i.i.while.body.i.i.i.i.i.i_crit_edge ], [ %rb_node.i.i.i.i.i, %if.then.i.i.i.i ]
  %add.ptr.i.i1.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i.i.i.i.i, i32 -8
  %va_end.i.i.i.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i.i.i.i.i, i32 -4
  %225 = ptrtoint ptr %va_end.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %va_end.i.i.i.i.i.i.i.i, align 4
  %227 = ptrtoint ptr %add.ptr.i.i1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %add.ptr.i.i1.i.i.i.i, align 4
  %sub.i.i.i.i.i.i.i.i = sub i32 %226, %228
  %rb_left.i.i.i2.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i.i.i.i.i, i32 8
  %229 = ptrtoint ptr %rb_left.i.i.i2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %rb_left.i.i.i2.i.i.i.i, align 4
  %tobool.not.i.i.i3.i.i.i.i = icmp eq ptr %230, null
  br i1 %tobool.not.i.i.i3.i.i.i.i, label %while.body.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i_crit_edge, label %if.then.i.i.i4.i.i.i.i

while.body.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i_crit_edge: ; preds = %while.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i.i.i.i.i.i.i

if.then.i.i.i4.i.i.i.i:                           ; preds = %while.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %231 = getelementptr i8, ptr %230, i32 20
  %232 = ptrtoint ptr %231 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %231, align 4
  %234 = tail call i32 @llvm.umax.i32(i32 %233, i32 %sub.i.i.i.i.i.i.i.i) #16
  br label %if.end4.i.i.i.i.i.i.i

if.end4.i.i.i.i.i.i.i:                            ; preds = %if.then.i.i.i4.i.i.i.i, %while.body.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i_crit_edge
  %max.0.i.i.i.i.i.i.i = phi i32 [ %sub.i.i.i.i.i.i.i.i, %while.body.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i_crit_edge ], [ %234, %if.then.i.i.i4.i.i.i.i ]
  %rb_right.i.i.i5.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i.i.i.i.i, i32 4
  %235 = ptrtoint ptr %rb_right.i.i.i5.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %rb_right.i.i.i5.i.i.i.i, align 4
  %tobool6.not.i.i.i.i.i.i.i = icmp eq ptr %236, null
  br i1 %tobool6.not.i.i.i.i.i.i.i, label %if.end4.i.i.i.i.i.i.i.if.end16.i.i.i.i.i.i.i_crit_edge, label %if.then7.i.i.i.i.i.i.i

if.end4.i.i.i.i.i.i.i.if.end16.i.i.i.i.i.i.i_crit_edge: ; preds = %if.end4.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16.i.i.i.i.i.i.i

if.then7.i.i.i.i.i.i.i:                           ; preds = %if.end4.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %237 = getelementptr i8, ptr %236, i32 20
  %238 = ptrtoint ptr %237 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %237, align 4
  %240 = tail call i32 @llvm.umax.i32(i32 %239, i32 %max.0.i.i.i.i.i.i.i) #16
  br label %if.end16.i.i.i.i.i.i.i

if.end16.i.i.i.i.i.i.i:                           ; preds = %if.then7.i.i.i.i.i.i.i, %if.end4.i.i.i.i.i.i.i.if.end16.i.i.i.i.i.i.i_crit_edge
  %max.1.i.i.i.i.i.i.i = phi i32 [ %max.0.i.i.i.i.i.i.i, %if.end4.i.i.i.i.i.i.i.if.end16.i.i.i.i.i.i.i_crit_edge ], [ %240, %if.then7.i.i.i.i.i.i.i ]
  %241 = getelementptr i8, ptr %rb.addr.08.i.i.i.i.i.i, i32 20
  %242 = ptrtoint ptr %241 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %241, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %243, i32 %max.1.i.i.i.i.i.i.i)
  %cmp18.i.i.i.i.i.i.i = icmp eq i32 %243, %max.1.i.i.i.i.i.i.i
  br i1 %cmp18.i.i.i.i.i.i.i, label %if.end16.i.i.i.i.i.i.i.free_vmap_area.exit.i.i_crit_edge, label %cleanup.i.i.i.i.i.i

if.end16.i.i.i.i.i.i.i.free_vmap_area.exit.i.i_crit_edge: ; preds = %if.end16.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %free_vmap_area.exit.i.i

cleanup.i.i.i.i.i.i:                              ; preds = %if.end16.i.i.i.i.i.i.i
  %244 = ptrtoint ptr %241 to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 %max.1.i.i.i.i.i.i.i, ptr %241, align 4
  %245 = ptrtoint ptr %rb.addr.08.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %rb.addr.08.i.i.i.i.i.i, align 4
  %and.i.i.i.i.i27.i = and i32 %246, -4
  %247 = inttoptr i32 %and.i.i.i.i.i27.i to ptr
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i27.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %cleanup.i.i.i.i.i.i.free_vmap_area.exit.i.i_crit_edge, label %cleanup.i.i.i.i.i.i.while.body.i.i.i.i.i.i_crit_edge

cleanup.i.i.i.i.i.i.while.body.i.i.i.i.i.i_crit_edge: ; preds = %cleanup.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i.i.i.i.i.i

cleanup.i.i.i.i.i.i.free_vmap_area.exit.i.i_crit_edge: ; preds = %cleanup.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %free_vmap_area.exit.i.i

free_vmap_area.exit.i.i:                          ; preds = %cleanup.i.i.i.i.i.i.free_vmap_area.exit.i.i_crit_edge, %if.end16.i.i.i.i.i.i.i.free_vmap_area.exit.i.i_crit_edge, %merge_or_add_vmap_area.exit.i.i.i.i.free_vmap_area.exit.i.i_crit_edge, %find_va_links.exit.i.i.i.i.i.free_vmap_area.exit.i.i_crit_edge, %find_va_links.exit.thread.i.i.i.i.i
  tail call void @_raw_spin_unlock(ptr noundef nonnull @free_vmap_area_lock) #16
  %248 = inttoptr i32 %call.i.i26.i to ptr
  br label %vb_alloc.exit

do.body40.i.i:                                    ; preds = %do.end31.i.i
  %249 = tail call i32 @llvm.read_register.i32(metadata !235) #16
  %and.i.i.i.i.i = and i32 %249, -16384
  %250 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %250, i32 0, i32 1
  %251 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i28.i = add i32 %252, 1
  store volatile i32 %add.i.i28.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !274
  %253 = tail call i32 @llvm.read_register.i32(metadata !235) #16
  %and.i5.i.i = and i32 %253, -16384
  %254 = inttoptr i32 %and.i5.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %254, i32 0, i32 3
  %255 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %256
  %257 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %arrayidx.i.i, align 4
  %add49.i.i = add i32 %258, ptrtoint (ptr @vmap_block_queue to i32)
  %259 = inttoptr i32 %add49.i.i to ptr
  tail call void @_raw_spin_lock(ptr noundef %259) #16
  %free52.i.i = getelementptr inbounds %struct.vmap_block_queue, ptr %259, i32 0, i32 1
  %prev.i6.i.i = getelementptr inbounds %struct.vmap_block_queue, ptr %259, i32 0, i32 1, i32 1
  %260 = ptrtoint ptr %prev.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %prev.i6.i.i, align 4
  %call.i.i7.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %free_list.i.i, ptr noundef %261, ptr noundef %free52.i.i) #16
  br i1 %call.i.i7.i.i, label %if.end.i.i.i.i, label %do.body40.i.i.list_add_tail_rcu.exit.i.i_crit_edge

do.body40.i.i.list_add_tail_rcu.exit.i.i_crit_edge: ; preds = %do.body40.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_add_tail_rcu.exit.i.i

if.end.i.i.i.i:                                   ; preds = %do.body40.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %262 = ptrtoint ptr %free_list.i.i to i32
  call void @__asan_store4_noabort(i32 %262)
  store ptr %free52.i.i, ptr %free_list.i.i, align 8
  %263 = ptrtoint ptr %prev.i.i24.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store ptr %261, ptr %prev.i.i24.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !275
  %264 = ptrtoint ptr %261 to i32
  call void @__asan_store4_noabort(i32 %264)
  store volatile ptr %free_list.i.i, ptr %261, align 4
  %265 = ptrtoint ptr %prev.i6.i.i to i32
  call void @__asan_store4_noabort(i32 %265)
  store ptr %free_list.i.i, ptr %prev.i6.i.i, align 4
  br label %list_add_tail_rcu.exit.i.i

list_add_tail_rcu.exit.i.i:                       ; preds = %if.end.i.i.i.i, %do.body40.i.i.list_add_tail_rcu.exit.i.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %259) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !276
  %266 = tail call i32 @llvm.read_register.i32(metadata !235) #16
  %and.i.i.i1.i.i = and i32 %266, -16384
  %267 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %preempt_count.i.i2.i.i = getelementptr inbounds %struct.thread_info, ptr %267, i32 0, i32 1
  %268 = ptrtoint ptr %preempt_count.i.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load volatile i32, ptr %preempt_count.i.i2.i.i, align 4
  %sub.i.i29.i = add i32 %269, -1
  store volatile i32 %sub.i.i29.i, ptr %preempt_count.i.i2.i.i, align 4
  br label %vb_alloc.exit

vb_alloc.exit:                                    ; preds = %list_add_tail_rcu.exit.i.i, %free_vmap_area.exit.i.i, %if.then9.i.i, %rcu_read_unlock.exit.i.vb_alloc.exit_crit_edge
  %retval.0.i = phi ptr [ %vaddr.2.i, %rcu_read_unlock.exit.i.vb_alloc.exit_crit_edge ], [ %call7.i.i, %if.then9.i.i ], [ %248, %free_vmap_area.exit.i.i ], [ %48, %list_add_tail_rcu.exit.i.i ]
  %cmp.i29 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i29, label %vb_alloc.exit.cleanup14_crit_edge, label %vb_alloc.exit.if.end_crit_edge

vb_alloc.exit.if.end_crit_edge:                   ; preds = %vb_alloc.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

vb_alloc.exit.cleanup14_crit_edge:                ; preds = %vb_alloc.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup14

if.end:                                           ; preds = %vb_alloc.exit.if.end_crit_edge, %vb_alloc.exit.thread33
  %retval.0.i36 = phi ptr [ null, %vb_alloc.exit.thread33 ], [ %retval.0.i, %vb_alloc.exit.if.end_crit_edge ]
  %270 = ptrtoint ptr %retval.0.i36 to i32
  br label %if.end8

if.else:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %271 = load ptr, ptr @high_memory, align 4
  %272 = ptrtoint ptr %271 to i32
  %add = add i32 %272, 8388608
  %and = and i32 %add, -8388608
  %call4 = tail call fastcc ptr @alloc_vmap_area(i32 noundef %shl, i32 noundef 4096, i32 noundef %and, i32 noundef -8388608, i32 noundef 3264)
  %cmp.i30 = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i30, label %if.else.cleanup14_crit_edge, label %cleanup

if.else.cleanup14_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup14

cleanup:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %273 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %call4, align 4
  %275 = inttoptr i32 %274 to ptr
  br label %if.end8

if.end8:                                          ; preds = %cleanup, %if.end
  %addr.1 = phi i32 [ %270, %if.end ], [ %274, %cleanup ]
  %mem.1 = phi ptr [ %retval.0.i36, %if.end ], [ %275, %cleanup ]
  %add9 = add i32 %addr.1, %shl
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %276 = load i32, ptr @pgprot_kernel, align 4
  %or = or i32 %276, 512
  %call.i = tail call i32 @vmap_pages_range_noflush(i32 noundef %addr.1, i32 noundef %add9, i32 noundef %or, ptr noundef %pages, i32 noundef 12) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cacheid to i32))
  %277 = load i32, ptr @cacheid, align 4
  %and2.i.i.i = and i32 %277, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1) to i32))
  %278 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %278() #16
  br label %vmap_pages_range.exit

if.else.i.i:                                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !250
  br label %vmap_pages_range.exit

vmap_pages_range.exit:                            ; preds = %if.else.i.i, %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp11 = icmp slt i32 %call.i, 0
  br i1 %cmp11, label %if.then12, label %vmap_pages_range.exit.cleanup14_crit_edge

vmap_pages_range.exit.cleanup14_crit_edge:        ; preds = %vmap_pages_range.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup14

if.then12:                                        ; preds = %vmap_pages_range.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @vm_unmap_ram(ptr noundef %mem.1, i32 noundef %count)
  br label %cleanup14

cleanup14:                                        ; preds = %if.then12, %vmap_pages_range.exit.cleanup14_crit_edge, %if.else.cleanup14_crit_edge, %vb_alloc.exit.cleanup14_crit_edge, %if.then120.i.cleanup14_crit_edge
  %retval.1 = phi ptr [ null, %if.then12 ], [ null, %vb_alloc.exit.cleanup14_crit_edge ], [ %mem.1, %vmap_pages_range.exit.cleanup14_crit_edge ], [ null, %if.then120.i.cleanup14_crit_edge ], [ null, %if.else.cleanup14_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @alloc_vmap_area(i32 noundef %size, i32 noundef %align, i32 noundef %vstart, i32 noundef %vend, i32 noundef %gfp_mask) unnamed_addr #2 align 64 {
entry:
  %freed = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %freed) #16
  %0 = ptrtoint ptr %freed to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %freed, align 4, !annotation !277
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not = icmp eq i32 %size, 0
  br i1 %tobool.not, label %do.body4, label %do.body10, !prof !247

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1527, 0\0A.popsection", ""() #16, !srcloc !278
  unreachable

do.body10:                                        ; preds = %entry
  %and = and i32 %size, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %do.body28, label %do.body19, !prof !245

do.body19:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1528, 0\0A.popsection", ""() #16, !srcloc !279
  unreachable

do.body28:                                        ; preds = %do.body10
  %1 = tail call i32 @llvm.ctpop.i32(i32 %align) #16, !range !265
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %2 = icmp eq i32 %1, 1
  br i1 %2, label %do.end46, label %do.body38, !prof !280

do.body38:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1529, 0\0A.popsection", ""() #16, !srcloc !281
  unreachable

do.end46:                                         ; preds = %do.body28
  %.b1 = load i1, ptr @vmap_initialized, align 1
  br i1 %.b1, label %do.body59, label %do.end46.cleanup_crit_edge, !prof !245

do.end46.cleanup_crit_edge:                       ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body59:                                        ; preds = %do.end46
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 1534) #16
  %and65 = and i32 %gfp_mask, 34336480
  %3 = load ptr, ptr @vmap_area_cachep, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %3, i32 noundef %and65) #16
  %tobool67.not = icmp eq ptr %call.i, null
  br i1 %tobool67.not, label %do.body59.cleanup_crit_edge, label %if.end78, !prof !247

do.body59.cleanup_crit_edge:                      ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end78:                                         ; preds = %do.body59
  %rb_node = getelementptr inbounds %struct.vmap_area, ptr %call.i, i32 0, i32 2
  tail call void @kmemleak_scan_area(ptr noundef %rb_node, i32 noundef -1, i32 noundef %and65) #16
  %sub.i.i.i = add i32 %align, -1
  %neg6.i.i.i = sub i32 0, %align
  br label %retry

retry:                                            ; preds = %retry.backedge, %if.end78
  %tobool153.not = phi i1 [ true, %if.end78 ], [ %228, %retry.backedge ]
  %4 = call i32 @llvm.read_register.i32(metadata !235) #16
  %and.i.i.i.i3 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i3 to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i4 = add i32 %7, 1
  store volatile i32 %add.i.i4, ptr %preempt_count.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !282
  %8 = call i32 @llvm.read_register.i32(metadata !235) #16
  %and.i.i5 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i5 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %13, ptrtoint (ptr @ne_fit_preload_node to i32)
  %14 = inttoptr i32 %add.i to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %14, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !283
  %17 = call i32 @llvm.read_register.i32(metadata !235) #16
  %and.i.i.i1.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i1.i to ptr
  %preempt_count.i.i2.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i2.i, align 4
  %sub.i.i = add i32 %20, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i2.i, align 4
  %tobool.not.i6 = icmp eq ptr %16, null
  br i1 %tobool.not.i6, label %if.end.i7, label %if.end.thread.i

if.end.thread.i:                                  ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #18
  call void @_raw_spin_lock(ptr noundef nonnull @free_vmap_area_lock) #16
  br label %preload_this_cpu_lock.exit

if.end.i7:                                        ; preds = %retry
  %21 = load ptr, ptr @vmap_area_cachep, align 4
  %call.i.i = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %21, i32 noundef %and65) #16
  call void @_raw_spin_lock(ptr noundef nonnull @free_vmap_area_lock) #16
  %tobool20.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool20.not.i, label %if.end.i7.preload_this_cpu_lock.exit_crit_edge, label %land.lhs.true.i

if.end.i7.preload_this_cpu_lock.exit_crit_edge:   ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #18
  br label %preload_this_cpu_lock.exit

land.lhs.true.i:                                  ; preds = %if.end.i7
  %22 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cpu.i, align 4
  %arrayidx35.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx35.i, align 4
  %add36.i = add i32 %25, ptrtoint (ptr @ne_fit_preload_node to i32)
  %26 = inttoptr i32 %add36.i to ptr
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %cond.i = icmp eq ptr %28, null
  br i1 %cond.i, label %if.then38.i, label %if.then43.i

if.then38.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i.i, ptr %26, align 4
  br label %preload_this_cpu_lock.exit

if.then43.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  %30 = load ptr, ptr @vmap_area_cachep, align 4
  call void @kmem_cache_free(ptr noundef %30, ptr noundef nonnull %call.i.i) #16
  br label %preload_this_cpu_lock.exit

preload_this_cpu_lock.exit:                       ; preds = %if.then43.i, %if.then38.i, %if.end.i7.preload_this_cpu_lock.exit_crit_edge, %if.end.thread.i
  %31 = load ptr, ptr @free_vmap_area_root, align 4
  br label %while.cond.outer.i.i.outer

while.cond.outer.i.i.outer:                       ; preds = %if.then25.i.i, %preload_this_cpu_lock.exit
  %node.0.ph.i.i.ph = phi ptr [ %58, %if.then25.i.i ], [ %31, %preload_this_cpu_lock.exit ]
  %vstart.addr.0.ph.i.i.ph = phi i32 [ %add.i.i, %if.then25.i.i ], [ %vstart, %preload_this_cpu_lock.exit ]
  br label %while.cond.outer.i.i

while.cond.outer.i.i.backedge:                    ; preds = %while.cond10.i.i.while.cond.outer.i.i.backedge_crit_edge, %land.lhs.true.i.i.while.cond.outer.i.i.backedge_crit_edge
  %node.0.ph.i.i.be = phi ptr [ null, %while.cond10.i.i.while.cond.outer.i.i.backedge_crit_edge ], [ %33, %land.lhs.true.i.i.while.cond.outer.i.i.backedge_crit_edge ]
  br label %while.cond.outer.i.i

while.cond.outer.i.i:                             ; preds = %while.cond.outer.i.i.backedge, %while.cond.outer.i.i.outer
  %node.0.ph.i.i = phi ptr [ %node.0.ph.i.i.ph, %while.cond.outer.i.i.outer ], [ %node.0.ph.i.i.be, %while.cond.outer.i.i.backedge ]
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %get_subtree_max_size.exit62.i.i.while.cond.i.i_crit_edge, %while.cond.outer.i.i
  %node.0.i.i = phi ptr [ %45, %get_subtree_max_size.exit62.i.i.while.cond.i.i_crit_edge ], [ %node.0.ph.i.i, %while.cond.outer.i.i ]
  %tobool.not.i.i = icmp eq ptr %node.0.i.i, null
  br i1 %tobool.not.i.i, label %while.cond.i.i.__alloc_vmap_area.exit.thread_crit_edge, label %while.body.i.i

while.cond.i.i.__alloc_vmap_area.exit.thread_crit_edge: ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__alloc_vmap_area.exit.thread

while.body.i.i:                                   ; preds = %while.cond.i.i
  %add.ptr.i.i = getelementptr i8, ptr %node.0.i.i, i32 -8
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %node.0.i.i, i32 0, i32 2
  %32 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rb_left.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %33, null
  %add.ptr.i.i.i = getelementptr i8, ptr %33, i32 -8
  %tobool2.not9.i.i.i = icmp eq ptr %add.ptr.i.i.i, null
  %tobool2.not.i.i.i = or i1 %tobool.not.i.i.i, %tobool2.not9.i.i.i
  br i1 %tobool2.not.i.i.i, label %while.body.i.i.get_subtree_max_size.exit.i.i_crit_edge, label %cond.true3.i.i.i

while.body.i.i.get_subtree_max_size.exit.i.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_subtree_max_size.exit.i.i

cond.true3.i.i.i:                                 ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %34 = getelementptr i8, ptr %33, i32 20
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  br label %get_subtree_max_size.exit.i.i

get_subtree_max_size.exit.i.i:                    ; preds = %cond.true3.i.i.i, %while.body.i.i.get_subtree_max_size.exit.i.i_crit_edge
  %cond6.i.i.i = phi i32 [ %36, %cond.true3.i.i.i ], [ 0, %while.body.i.i.get_subtree_max_size.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond6.i.i.i, i32 %size)
  %cmp.not.i.i = icmp ult i32 %cond6.i.i.i, %size
  br i1 %cmp.not.i.i, label %get_subtree_max_size.exit.i.i.if.else.i.i_crit_edge, label %land.lhs.true.i.i

get_subtree_max_size.exit.i.i.if.else.i.i_crit_edge: ; preds = %get_subtree_max_size.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %get_subtree_max_size.exit.i.i
  %37 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %vstart.addr.0.ph.i.i.ph, i32 %38)
  %cmp1.i.i = icmp ult i32 %vstart.addr.0.ph.i.i.ph, %38
  br i1 %cmp1.i.i, label %land.lhs.true.i.i.while.cond.outer.i.i.backedge_crit_edge, label %land.lhs.true.i.i.if.else.i.i_crit_edge

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i.i

land.lhs.true.i.i.while.cond.outer.i.i.backedge_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.outer.i.i.backedge

if.else.i.i:                                      ; preds = %land.lhs.true.i.i.if.else.i.i_crit_edge, %get_subtree_max_size.exit.i.i.if.else.i.i_crit_edge
  %39 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr.i.i, align 4
  %41 = call i32 @llvm.umax.i32(i32 %40, i32 %vstart.addr.0.ph.i.i.ph) #16
  %add4.i.i.i = add i32 %41, %sub.i.i.i
  %and7.i.i.i = and i32 %add4.i.i.i, %neg6.i.i.i
  %add8.i.i.i = add i32 %and7.i.i.i, %size
  call void @__sanitizer_cov_trace_cmp4(i32 %add8.i.i.i, i32 %and7.i.i.i)
  %cmp9.i.i.i = icmp ult i32 %add8.i.i.i, %and7.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and7.i.i.i, i32 %vstart.addr.0.ph.i.i.ph)
  %cmp10.i.i.i = icmp ult i32 %and7.i.i.i, %vstart.addr.0.ph.i.i.ph
  %or.cond.i.i.i = or i1 %cmp10.i.i.i, %cmp9.i.i.i
  br i1 %or.cond.i.i.i, label %if.else.i.i.if.end.i.i_crit_edge, label %is_within_this_va.exit.i.i

if.else.i.i.if.end.i.i_crit_edge:                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

is_within_this_va.exit.i.i:                       ; preds = %if.else.i.i
  %va_end.i.i.i = getelementptr i8, ptr %node.0.i.i, i32 -4
  %42 = ptrtoint ptr %va_end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %va_end.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add8.i.i.i, i32 %43)
  %cmp14.i.not.i.i = icmp ugt i32 %add8.i.i.i, %43
  br i1 %cmp14.i.not.i.i, label %is_within_this_va.exit.i.i.if.end.i.i_crit_edge, label %is_within_this_va.exit.i.i.find_vmap_lowest_match.exit.i_crit_edge

is_within_this_va.exit.i.i.find_vmap_lowest_match.exit.i_crit_edge: ; preds = %is_within_this_va.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %find_vmap_lowest_match.exit.i

is_within_this_va.exit.i.i.if.end.i.i_crit_edge:  ; preds = %is_within_this_va.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %is_within_this_va.exit.i.i.if.end.i.i_crit_edge, %if.else.i.i.if.end.i.i_crit_edge
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %node.0.i.i, i32 0, i32 1
  %44 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rb_right.i.i, align 4
  %tobool.not.i56.i.i = icmp eq ptr %45, null
  %add.ptr.i57.i.i = getelementptr i8, ptr %45, i32 -8
  %tobool2.not9.i58.i.i = icmp eq ptr %add.ptr.i57.i.i, null
  %tobool2.not.i59.i.i = or i1 %tobool.not.i56.i.i, %tobool2.not9.i58.i.i
  br i1 %tobool2.not.i59.i.i, label %if.end.i.i.get_subtree_max_size.exit62.i.i_crit_edge, label %cond.true3.i60.i.i

if.end.i.i.get_subtree_max_size.exit62.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_subtree_max_size.exit62.i.i

cond.true3.i60.i.i:                               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %46 = getelementptr i8, ptr %45, i32 20
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 4
  br label %get_subtree_max_size.exit62.i.i

get_subtree_max_size.exit62.i.i:                  ; preds = %cond.true3.i60.i.i, %if.end.i.i.get_subtree_max_size.exit62.i.i_crit_edge
  %cond6.i61.i.i = phi i32 [ %48, %cond.true3.i60.i.i ], [ 0, %if.end.i.i.get_subtree_max_size.exit62.i.i_crit_edge ]
  %cmp6.not.i.i = icmp ult i32 %cond6.i61.i.i, %size
  br i1 %cmp6.not.i.i, label %get_subtree_max_size.exit62.i.i.while.cond10.i.i_crit_edge, label %get_subtree_max_size.exit62.i.i.while.cond.i.i_crit_edge

get_subtree_max_size.exit62.i.i.while.cond.i.i_crit_edge: ; preds = %get_subtree_max_size.exit62.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.i.i

get_subtree_max_size.exit62.i.i.while.cond10.i.i_crit_edge: ; preds = %get_subtree_max_size.exit62.i.i
  br label %while.cond10.i.i

while.cond10.i.i:                                 ; preds = %get_subtree_max_size.exit82.i.i.while.cond10.i.i_crit_edge, %get_subtree_max_size.exit62.i.i.while.cond10.i.i_crit_edge
  %node.1.i.i = phi ptr [ %51, %get_subtree_max_size.exit82.i.i.while.cond10.i.i_crit_edge ], [ %node.0.i.i, %get_subtree_max_size.exit62.i.i.while.cond10.i.i_crit_edge ]
  %49 = ptrtoint ptr %node.1.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %node.1.i.i, align 4
  %and.i.i = and i32 %50, -4
  %51 = inttoptr i32 %and.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool11.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool11.not.i.i, label %while.cond10.i.i.while.cond.outer.i.i.backedge_crit_edge, label %while.body12.i.i

while.cond10.i.i.while.cond.outer.i.i.backedge_crit_edge: ; preds = %while.cond10.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.outer.i.i.backedge

while.body12.i.i:                                 ; preds = %while.cond10.i.i
  %add.ptr15.i.i = getelementptr i8, ptr %51, i32 -8
  %52 = ptrtoint ptr %add.ptr15.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %add.ptr15.i.i, align 4
  %54 = call i32 @llvm.umax.i32(i32 %53, i32 %vstart.addr.0.ph.i.i.ph) #16
  %add4.i64.i.i = add i32 %54, %sub.i.i.i
  %and7.i66.i.i = and i32 %add4.i64.i.i, %neg6.i.i.i
  %add8.i67.i.i = add i32 %and7.i66.i.i, %size
  call void @__sanitizer_cov_trace_cmp4(i32 %add8.i67.i.i, i32 %and7.i66.i.i)
  %cmp9.i68.i.i = icmp ult i32 %add8.i67.i.i, %and7.i66.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and7.i66.i.i, i32 %vstart.addr.0.ph.i.i.ph)
  %cmp10.i69.i.i = icmp ult i32 %and7.i66.i.i, %vstart.addr.0.ph.i.i.ph
  %or.cond.i70.i.i = or i1 %cmp10.i69.i.i, %cmp9.i68.i.i
  br i1 %or.cond.i70.i.i, label %while.body12.i.i.if.end18.i.i_crit_edge, label %is_within_this_va.exit75.i.i

while.body12.i.i.if.end18.i.i_crit_edge:          ; preds = %while.body12.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18.i.i

is_within_this_va.exit75.i.i:                     ; preds = %while.body12.i.i
  %va_end.i71.i.i = getelementptr i8, ptr %51, i32 -4
  %55 = ptrtoint ptr %va_end.i71.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %va_end.i71.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add8.i67.i.i, i32 %56)
  %cmp14.i72.not.i.i = icmp ugt i32 %add8.i67.i.i, %56
  br i1 %cmp14.i72.not.i.i, label %is_within_this_va.exit75.i.i.if.end18.i.i_crit_edge, label %find_vmap_lowest_match.exit.i.loopexit

is_within_this_va.exit75.i.i.if.end18.i.i_crit_edge: ; preds = %is_within_this_va.exit75.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %is_within_this_va.exit75.i.i.if.end18.i.i_crit_edge, %while.body12.i.i.if.end18.i.i_crit_edge
  %rb_right19.i.i = getelementptr inbounds %struct.rb_node, ptr %51, i32 0, i32 1
  %57 = ptrtoint ptr %rb_right19.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rb_right19.i.i, align 4
  %tobool.not.i76.i.i = icmp eq ptr %58, null
  %add.ptr.i77.i.i = getelementptr i8, ptr %58, i32 -8
  %tobool2.not9.i78.i.i = icmp eq ptr %add.ptr.i77.i.i, null
  %tobool2.not.i79.i.i = or i1 %tobool.not.i76.i.i, %tobool2.not9.i78.i.i
  br i1 %tobool2.not.i79.i.i, label %if.end18.i.i.get_subtree_max_size.exit82.i.i_crit_edge, label %cond.true3.i80.i.i

if.end18.i.i.get_subtree_max_size.exit82.i.i_crit_edge: ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_subtree_max_size.exit82.i.i

cond.true3.i80.i.i:                               ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %59 = getelementptr i8, ptr %58, i32 20
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 4
  br label %get_subtree_max_size.exit82.i.i

get_subtree_max_size.exit82.i.i:                  ; preds = %cond.true3.i80.i.i, %if.end18.i.i.get_subtree_max_size.exit82.i.i_crit_edge
  %cond6.i81.i.i = phi i32 [ %61, %cond.true3.i80.i.i ], [ 0, %if.end18.i.i.get_subtree_max_size.exit82.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond6.i81.i.i, i32 %size)
  %cmp21.not.i.i = icmp ult i32 %cond6.i81.i.i, %size
  call void @__sanitizer_cov_trace_cmp4(i32 %vstart.addr.0.ph.i.i.ph, i32 %53)
  %cmp24.not.i.i = icmp ugt i32 %vstart.addr.0.ph.i.i.ph, %53
  %or.cond.i.i = select i1 %cmp21.not.i.i, i1 true, i1 %cmp24.not.i.i
  br i1 %or.cond.i.i, label %get_subtree_max_size.exit82.i.i.while.cond10.i.i_crit_edge, label %if.then25.i.i

get_subtree_max_size.exit82.i.i.while.cond10.i.i_crit_edge: ; preds = %get_subtree_max_size.exit82.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond10.i.i

if.then25.i.i:                                    ; preds = %get_subtree_max_size.exit82.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.i.i = add i32 %53, 1
  br label %while.cond.outer.i.i.outer

find_vmap_lowest_match.exit.i.loopexit:           ; preds = %is_within_this_va.exit75.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %62 = inttoptr i32 %and.i.i to ptr
  %add.ptr15.i.i.le = getelementptr i8, ptr %62, i32 -8
  br label %find_vmap_lowest_match.exit.i

find_vmap_lowest_match.exit.i:                    ; preds = %find_vmap_lowest_match.exit.i.loopexit, %is_within_this_va.exit.i.i.find_vmap_lowest_match.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr15.i.i.le, %find_vmap_lowest_match.exit.i.loopexit ], [ %add.ptr.i.i, %is_within_this_va.exit.i.i.find_vmap_lowest_match.exit.i_crit_edge ]
  %tobool.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool.not.i, label %find_vmap_lowest_match.exit.i.__alloc_vmap_area.exit.thread_crit_edge, label %if.end.i, !prof !247

find_vmap_lowest_match.exit.i.__alloc_vmap_area.exit.thread_crit_edge: ; preds = %find_vmap_lowest_match.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__alloc_vmap_area.exit.thread

if.end.i:                                         ; preds = %find_vmap_lowest_match.exit.i
  %63 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %retval.0.i.i, align 4
  %65 = call i32 @llvm.umax.i32(i32 %64, i32 %vstart) #16
  %nva_start_addr.0.v.i = add i32 %65, %sub.i.i.i
  %nva_start_addr.0.i = and i32 %nva_start_addr.0.v.i, %neg6.i.i.i
  %add13.i = add i32 %nva_start_addr.0.i, %size
  call void @__sanitizer_cov_trace_cmp4(i32 %add13.i, i32 %vend)
  %cmp14.i = icmp ugt i32 %add13.i, %vend
  br i1 %cmp14.i, label %if.end.i.__alloc_vmap_area.exit.thread_crit_edge, label %if.end16.i

if.end.i.__alloc_vmap_area.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__alloc_vmap_area.exit.thread

if.end16.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %nva_start_addr.0.i)
  %cmp.i.i = icmp ugt i32 %64, %nva_start_addr.0.i
  br i1 %cmp.i.i, label %if.end16.i.land.rhs.i_crit_edge, label %lor.lhs.false.i.i

if.end16.i.land.rhs.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.rhs.i

lor.lhs.false.i.i:                                ; preds = %if.end16.i
  %va_end.i.i = getelementptr inbounds %struct.vmap_area, ptr %retval.0.i.i, i32 0, i32 1
  %66 = ptrtoint ptr %va_end.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %va_end.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add13.i, i32 %67)
  %cmp1.i99.i = icmp ugt i32 %add13.i, %67
  br i1 %cmp1.i99.i, label %lor.lhs.false.i.i.land.rhs.i_crit_edge, label %classify_va_fit_type.exit.i

lor.lhs.false.i.i.land.rhs.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.rhs.i

classify_va_fit_type.exit.i:                      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %nva_start_addr.0.i)
  %cmp3.i.i = icmp eq i32 %64, %nva_start_addr.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %add13.i)
  %cmp7.i.i = icmp eq i32 %67, %add13.i
  %..i.i = select i1 %cmp7.i.i, i32 1, i32 2
  %.29.i.i = select i1 %cmp7.i.i, i32 3, i32 4
  %type.0.i.i = select i1 %cmp3.i.i, i32 %..i.i, i32 %.29.i.i
  %68 = zext i32 %type.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %type.0.i.i, label %if.then8.i.i [
    i32 1, label %if.then.i.i
    i32 2, label %if.then2.i.i
    i32 3, label %if.then5.i.i
  ]

land.rhs.i:                                       ; preds = %lor.lhs.false.i.i.land.rhs.i_crit_edge, %if.end16.i.land.rhs.i_crit_edge
  %.b96.i = load i1, ptr @__alloc_vmap_area.__already_done, align 1
  br i1 %.b96.i, label %land.rhs.i.__alloc_vmap_area.exit.thread_crit_edge, label %if.then33.i, !prof !245

land.rhs.i.__alloc_vmap_area.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__alloc_vmap_area.exit.thread

if.then33.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__alloc_vmap_area.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1454, i32 noundef 9, ptr noundef null) #16
  br label %__alloc_vmap_area.exit.thread

if.then.i.i:                                      ; preds = %classify_va_fit_type.exit.i
  %rb_node.i.i.i = getelementptr inbounds %struct.vmap_area, ptr %retval.0.i.i, i32 0, i32 2
  %69 = ptrtoint ptr %rb_node.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %rb_node.i.i.i, align 4
  %71 = ptrtoint ptr %rb_node.i.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %71)
  %cmp.i.i.i = icmp eq i32 %70, %71
  br i1 %cmp.i.i.i, label %if.end35.thread70.i.i, label %if.end22.critedge.i.i.i, !prof !247

if.end35.thread70.i.i:                            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 962, i32 noundef 9, ptr noundef null) #16
  %72 = load ptr, ptr @vmap_area_cachep, align 4
  call void @kmem_cache_free(ptr noundef %72, ptr noundef nonnull %retval.0.i.i) #16
  br label %__alloc_vmap_area.exit

if.end22.critedge.i.i.i:                          ; preds = %if.then.i.i
  %rb_right.i.i.i.i.i = getelementptr inbounds %struct.vmap_area, ptr %retval.0.i.i, i32 0, i32 2, i32 1
  %73 = ptrtoint ptr %rb_right.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %rb_right.i.i.i.i.i, align 4
  %rb_left.i.i.i.i.i = getelementptr inbounds %struct.vmap_area, ptr %retval.0.i.i, i32 0, i32 2, i32 2
  %75 = ptrtoint ptr %rb_left.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %rb_left.i.i.i.i.i, align 4
  %tobool.not.i.i.i.i.i = icmp eq ptr %76, null
  br i1 %tobool.not.i.i.i.i.i, label %if.then.i.i.i.i.i, label %if.else6.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %if.end22.critedge.i.i.i
  %and.i.i.i.i.i = and i32 %70, -4
  %77 = inttoptr i32 %and.i.i.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %if.then.i.i.i.i.i.__rb_change_child.exit.i.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i.i

if.then.i.i.i.i.i.__rb_change_child.exit.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__rb_change_child.exit.i.i.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %rb_left.i.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %rb_left.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %rb_left.i.i.i.i.i.i, align 4
  %cmp.i.i.i.i.i.i = icmp eq ptr %79, %rb_node.i.i.i
  %rb_right.i.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %77, i32 0, i32 1
  %spec.select.i.i.i.i.i.i = select i1 %cmp.i.i.i.i.i.i, ptr %rb_left.i.i.i.i.i.i, ptr %rb_right.i.i.i.i.i.i
  br label %__rb_change_child.exit.i.i.i.i.i

__rb_change_child.exit.i.i.i.i.i:                 ; preds = %if.then.i.i.i.i.i.i, %if.then.i.i.i.i.i.__rb_change_child.exit.i.i.i.i.i_crit_edge
  %rb_left.sink.i.i.i.i.i.i = phi ptr [ @free_vmap_area_root, %if.then.i.i.i.i.i.__rb_change_child.exit.i.i.i.i.i_crit_edge ], [ %spec.select.i.i.i.i.i.i, %if.then.i.i.i.i.i.i ]
  %80 = ptrtoint ptr %rb_left.sink.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %74, ptr %rb_left.sink.i.i.i.i.i.i, align 4
  %tobool1.not.i.i.i.i.i = icmp eq ptr %74, null
  br i1 %tobool1.not.i.i.i.i.i, label %if.else.i.i.i.i.i, label %if.then2.i.i.i.i.i

if.then2.i.i.i.i.i:                               ; preds = %__rb_change_child.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %81 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %70, ptr %74, align 4
  br label %if.end69.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %__rb_change_child.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %and4.i.i.i.i.i = and i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i.i.i.i)
  %tobool5.not.i.i.i.i.i = icmp eq i32 %and4.i.i.i.i.i, 0
  %spec.select.i.i.i.i.i = select i1 %tobool5.not.i.i.i.i.i, ptr null, ptr %77
  br label %if.end69.i.i.i.i.i

if.else6.i.i.i.i.i:                               ; preds = %if.end22.critedge.i.i.i
  %tobool7.not.i.i.i.i.i = icmp eq ptr %74, null
  br i1 %tobool7.not.i.i.i.i.i, label %if.then8.i.i.i.i.i, label %if.else12.i.i.i.i.i

if.then8.i.i.i.i.i:                               ; preds = %if.else6.i.i.i.i.i
  %82 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %70, ptr %76, align 4
  %and11.i.i.i.i.i = and i32 %70, -4
  %83 = inttoptr i32 %and11.i.i.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i.i.i.i)
  %tobool.not.i2.i.i.i.i.i = icmp eq i32 %and11.i.i.i.i.i, 0
  br i1 %tobool.not.i2.i.i.i.i.i, label %if.then8.i.i.i.i.i.__rb_change_child.exit9.i.i.i.i.i_crit_edge, label %if.then.i7.i.i.i.i.i

if.then8.i.i.i.i.i.__rb_change_child.exit9.i.i.i.i.i_crit_edge: ; preds = %if.then8.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__rb_change_child.exit9.i.i.i.i.i

if.then.i7.i.i.i.i.i:                             ; preds = %if.then8.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %rb_left.i3.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %rb_left.i3.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %rb_left.i3.i.i.i.i.i, align 4
  %cmp.i4.i.i.i.i.i = icmp eq ptr %85, %rb_node.i.i.i
  %rb_right.i5.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %83, i32 0, i32 1
  %spec.select.i6.i.i.i.i.i = select i1 %cmp.i4.i.i.i.i.i, ptr %rb_left.i3.i.i.i.i.i, ptr %rb_right.i5.i.i.i.i.i
  br label %__rb_change_child.exit9.i.i.i.i.i

__rb_change_child.exit9.i.i.i.i.i:                ; preds = %if.then.i7.i.i.i.i.i, %if.then8.i.i.i.i.i.__rb_change_child.exit9.i.i.i.i.i_crit_edge
  %rb_left.sink.i8.i.i.i.i.i = phi ptr [ @free_vmap_area_root, %if.then8.i.i.i.i.i.__rb_change_child.exit9.i.i.i.i.i_crit_edge ], [ %spec.select.i6.i.i.i.i.i, %if.then.i7.i.i.i.i.i ]
  %86 = ptrtoint ptr %rb_left.sink.i8.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %76, ptr %rb_left.sink.i8.i.i.i.i.i, align 4
  br label %if.end69.i.i.i.i.i

if.else12.i.i.i.i.i:                              ; preds = %if.else6.i.i.i.i.i
  %rb_left13.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %74, i32 0, i32 2
  %87 = ptrtoint ptr %rb_left13.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %rb_left13.i.i.i.i.i, align 4
  %tobool14.not.i.i.i.i.i = icmp eq ptr %88, null
  br i1 %tobool14.not.i.i.i.i.i, label %if.then15.i.i.i.i.i, label %if.else12.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

if.else12.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:  ; preds = %if.else12.i.i.i.i.i
  br label %do.body.i.i.i.i.i

if.then15.i.i.i.i.i:                              ; preds = %if.else12.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %rb_right16.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %74, i32 0, i32 1
  %89 = ptrtoint ptr %rb_right16.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %rb_right16.i.i.i.i.i, align 4
  %91 = getelementptr %struct.vmap_area, ptr %retval.0.i.i, i32 0, i32 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %91, align 4
  %94 = getelementptr i8, ptr %74, i32 20
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %93, ptr %94, align 4
  %.pre.i.i.i.i.i = ptrtoint ptr %74 to i32
  br label %if.end42.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %if.else12.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge
  %tmp.0.i.i.i.i.i = phi ptr [ %97, %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ], [ %88, %if.else12.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %successor.0.i.i.i.i.i = phi ptr [ %tmp.0.i.i.i.i.i, %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ], [ %74, %if.else12.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %rb_left18.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %tmp.0.i.i.i.i.i, i32 0, i32 2
  %96 = ptrtoint ptr %rb_left18.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %rb_left18.i.i.i.i.i, align 4
  %tobool19.not.i.i.i.i.i = icmp eq ptr %97, null
  br i1 %tobool19.not.i.i.i.i.i, label %do.end.i.i.i.i.i, label %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i.i.i.i

do.end.i.i.i.i.i:                                 ; preds = %do.body.i.i.i.i.i
  %rb_right20.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %tmp.0.i.i.i.i.i, i32 0, i32 1
  %98 = ptrtoint ptr %rb_right20.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %rb_right20.i.i.i.i.i, align 4
  %rb_left26.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %successor.0.i.i.i.i.i, i32 0, i32 2
  %100 = ptrtoint ptr %rb_left26.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile ptr %99, ptr %rb_left26.i.i.i.i.i, align 4
  store volatile ptr %74, ptr %rb_right20.i.i.i.i.i, align 4
  %101 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %74, align 4
  %and.i.i.i.i.i.i = and i32 %102, 1
  %103 = ptrtoint ptr %tmp.0.i.i.i.i.i to i32
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, %103
  store i32 %or.i.i.i.i.i.i, ptr %74, align 4
  %104 = getelementptr %struct.vmap_area, ptr %retval.0.i.i, i32 0, i32 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %104, align 4
  %107 = getelementptr i8, ptr %tmp.0.i.i.i.i.i, i32 20
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %106, ptr %107, align 4
  %cmp.not7.i.i.i.i.i.i = icmp eq ptr %successor.0.i.i.i.i.i, %tmp.0.i.i.i.i.i
  br i1 %cmp.not7.i.i.i.i.i.i, label %do.end.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge, label %do.end.i.i.i.i.i.while.body.i.i.i.i.i.i_crit_edge

do.end.i.i.i.i.i.while.body.i.i.i.i.i.i_crit_edge: ; preds = %do.end.i.i.i.i.i
  br label %while.body.i.i.i.i.i.i

do.end.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge:    ; preds = %do.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end42.i.i.i.i.i

while.body.i.i.i.i.i.i:                           ; preds = %cleanup.i.i.i.i.i.i.while.body.i.i.i.i.i.i_crit_edge, %do.end.i.i.i.i.i.while.body.i.i.i.i.i.i_crit_edge
  %rb.addr.08.i.i.i.i.i.i = phi ptr [ %131, %cleanup.i.i.i.i.i.i.while.body.i.i.i.i.i.i_crit_edge ], [ %successor.0.i.i.i.i.i, %do.end.i.i.i.i.i.while.body.i.i.i.i.i.i_crit_edge ]
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i.i.i.i.i, i32 -8
  %va_end.i.i.i.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i.i.i.i.i, i32 -4
  %109 = ptrtoint ptr %va_end.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %va_end.i.i.i.i.i.i.i.i, align 4
  %111 = ptrtoint ptr %add.ptr.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %add.ptr.i.i.i.i.i.i, align 4
  %sub.i.i.i.i.i.i.i.i = sub i32 %110, %112
  %rb_left.i.i.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i.i.i.i.i, i32 8
  %113 = ptrtoint ptr %rb_left.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %rb_left.i.i.i.i.i.i.i, align 4
  %tobool.not.i.i.i.i.i.i.i = icmp eq ptr %114, null
  br i1 %tobool.not.i.i.i.i.i.i.i, label %while.body.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i.i.i

while.body.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i_crit_edge: ; preds = %while.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i.i.i.i.i.i.i

if.then.i.i.i.i.i.i.i:                            ; preds = %while.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %115 = getelementptr i8, ptr %114, i32 20
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %115, align 4
  %118 = call i32 @llvm.umax.i32(i32 %117, i32 %sub.i.i.i.i.i.i.i.i) #16
  br label %if.end4.i.i.i.i.i.i.i

if.end4.i.i.i.i.i.i.i:                            ; preds = %if.then.i.i.i.i.i.i.i, %while.body.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i_crit_edge
  %max.0.i.i.i.i.i.i.i = phi i32 [ %sub.i.i.i.i.i.i.i.i, %while.body.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i_crit_edge ], [ %118, %if.then.i.i.i.i.i.i.i ]
  %rb_right.i.i.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i.i.i.i.i, i32 4
  %119 = ptrtoint ptr %rb_right.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %rb_right.i.i.i.i.i.i.i, align 4
  %tobool6.not.i.i.i.i.i.i.i = icmp eq ptr %120, null
  br i1 %tobool6.not.i.i.i.i.i.i.i, label %if.end4.i.i.i.i.i.i.i.if.end16.i.i.i.i.i.i.i_crit_edge, label %if.then7.i.i.i.i.i.i.i

if.end4.i.i.i.i.i.i.i.if.end16.i.i.i.i.i.i.i_crit_edge: ; preds = %if.end4.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16.i.i.i.i.i.i.i

if.then7.i.i.i.i.i.i.i:                           ; preds = %if.end4.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %121 = getelementptr i8, ptr %120, i32 20
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %121, align 4
  %124 = call i32 @llvm.umax.i32(i32 %123, i32 %max.0.i.i.i.i.i.i.i) #16
  br label %if.end16.i.i.i.i.i.i.i

if.end16.i.i.i.i.i.i.i:                           ; preds = %if.then7.i.i.i.i.i.i.i, %if.end4.i.i.i.i.i.i.i.if.end16.i.i.i.i.i.i.i_crit_edge
  %max.1.i.i.i.i.i.i.i = phi i32 [ %max.0.i.i.i.i.i.i.i, %if.end4.i.i.i.i.i.i.i.if.end16.i.i.i.i.i.i.i_crit_edge ], [ %124, %if.then7.i.i.i.i.i.i.i ]
  %125 = getelementptr i8, ptr %rb.addr.08.i.i.i.i.i.i, i32 20
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %125, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %127, i32 %max.1.i.i.i.i.i.i.i)
  %cmp18.i.i.i.i.i.i.i = icmp eq i32 %127, %max.1.i.i.i.i.i.i.i
  br i1 %cmp18.i.i.i.i.i.i.i, label %if.end16.i.i.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge, label %cleanup.i.i.i.i.i.i

if.end16.i.i.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge: ; preds = %if.end16.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end42.i.i.i.i.i

cleanup.i.i.i.i.i.i:                              ; preds = %if.end16.i.i.i.i.i.i.i
  %128 = ptrtoint ptr %125 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %max.1.i.i.i.i.i.i.i, ptr %125, align 4
  %129 = ptrtoint ptr %rb.addr.08.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %rb.addr.08.i.i.i.i.i.i, align 4
  %and.i10.i.i.i.i.i = and i32 %130, -4
  %131 = inttoptr i32 %and.i10.i.i.i.i.i to ptr
  %cmp.not.i.i.i.i.i.i = icmp eq ptr %tmp.0.i.i.i.i.i, %131
  br i1 %cmp.not.i.i.i.i.i.i, label %cleanup.i.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge, label %cleanup.i.i.i.i.i.i.while.body.i.i.i.i.i.i_crit_edge

cleanup.i.i.i.i.i.i.while.body.i.i.i.i.i.i_crit_edge: ; preds = %cleanup.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i.i.i.i.i.i

cleanup.i.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge: ; preds = %cleanup.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end42.i.i.i.i.i

if.end42.i.i.i.i.i:                               ; preds = %cleanup.i.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge, %if.end16.i.i.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge, %do.end.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge, %if.then15.i.i.i.i.i
  %.pre-phi.i.i.i.i.i = phi i32 [ %103, %do.end.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge ], [ %.pre.i.i.i.i.i, %if.then15.i.i.i.i.i ], [ %103, %if.end16.i.i.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge ], [ %103, %cleanup.i.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge ]
  %parent.0.i.i.i.i.i = phi ptr [ %tmp.0.i.i.i.i.i, %do.end.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge ], [ %74, %if.then15.i.i.i.i.i ], [ %successor.0.i.i.i.i.i, %if.end16.i.i.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge ], [ %successor.0.i.i.i.i.i, %cleanup.i.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge ]
  %successor.1.i.i.i.i.i = phi ptr [ %tmp.0.i.i.i.i.i, %do.end.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge ], [ %74, %if.then15.i.i.i.i.i ], [ %tmp.0.i.i.i.i.i, %if.end16.i.i.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge ], [ %tmp.0.i.i.i.i.i, %cleanup.i.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge ]
  %child2.0.i.i.i.i.i = phi ptr [ %99, %do.end.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge ], [ %90, %if.then15.i.i.i.i.i ], [ %99, %if.end16.i.i.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge ], [ %99, %cleanup.i.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge ]
  %132 = ptrtoint ptr %rb_left.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %rb_left.i.i.i.i.i, align 4
  %rb_left49.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %successor.1.i.i.i.i.i, i32 0, i32 2
  %134 = ptrtoint ptr %rb_left49.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store volatile ptr %133, ptr %rb_left49.i.i.i.i.i, align 4
  %135 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %133, align 4
  %and.i11.i.i.i.i.i = and i32 %136, 1
  %or.i12.i.i.i.i.i = or i32 %and.i11.i.i.i.i.i, %.pre-phi.i.i.i.i.i
  store i32 %or.i12.i.i.i.i.i, ptr %133, align 4
  %137 = ptrtoint ptr %rb_node.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %rb_node.i.i.i, align 4
  %and55.i.i.i.i.i = and i32 %138, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i.i.i.i.i)
  %tobool.not.i13.i.i.i.i.i = icmp eq i32 %and55.i.i.i.i.i, 0
  br i1 %tobool.not.i13.i.i.i.i.i, label %if.end42.i.i.i.i.i.__rb_change_child.exit20.i.i.i.i.i_crit_edge, label %if.then.i18.i.i.i.i.i

if.end42.i.i.i.i.i.__rb_change_child.exit20.i.i.i.i.i_crit_edge: ; preds = %if.end42.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__rb_change_child.exit20.i.i.i.i.i

if.then.i18.i.i.i.i.i:                            ; preds = %if.end42.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %139 = inttoptr i32 %and55.i.i.i.i.i to ptr
  %rb_left.i14.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %139, i32 0, i32 2
  %140 = ptrtoint ptr %rb_left.i14.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %rb_left.i14.i.i.i.i.i, align 4
  %cmp.i15.i.i.i.i.i = icmp eq ptr %141, %rb_node.i.i.i
  %rb_right.i16.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %139, i32 0, i32 1
  %spec.select.i17.i.i.i.i.i = select i1 %cmp.i15.i.i.i.i.i, ptr %rb_left.i14.i.i.i.i.i, ptr %rb_right.i16.i.i.i.i.i
  br label %__rb_change_child.exit20.i.i.i.i.i

__rb_change_child.exit20.i.i.i.i.i:               ; preds = %if.then.i18.i.i.i.i.i, %if.end42.i.i.i.i.i.__rb_change_child.exit20.i.i.i.i.i_crit_edge
  %rb_left.sink.i19.i.i.i.i.i = phi ptr [ @free_vmap_area_root, %if.end42.i.i.i.i.i.__rb_change_child.exit20.i.i.i.i.i_crit_edge ], [ %spec.select.i17.i.i.i.i.i, %if.then.i18.i.i.i.i.i ]
  %142 = ptrtoint ptr %rb_left.sink.i19.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store volatile ptr %successor.1.i.i.i.i.i, ptr %rb_left.sink.i19.i.i.i.i.i, align 4
  %tobool56.not.i.i.i.i.i = icmp eq ptr %child2.0.i.i.i.i.i, null
  br i1 %tobool56.not.i.i.i.i.i, label %if.else58.i.i.i.i.i, label %if.then57.i.i.i.i.i

if.then57.i.i.i.i.i:                              ; preds = %__rb_change_child.exit20.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %143 = ptrtoint ptr %parent.0.i.i.i.i.i to i32
  %or.i21.i.i.i.i.i = or i32 %143, 1
  %144 = ptrtoint ptr %child2.0.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %or.i21.i.i.i.i.i, ptr %child2.0.i.i.i.i.i, align 4
  br label %if.end66.i.i.i.i.i

if.else58.i.i.i.i.i:                              ; preds = %__rb_change_child.exit20.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %145 = ptrtoint ptr %successor.1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %successor.1.i.i.i.i.i, align 4
  %and60.i.i.i.i.i = and i32 %146, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.i.i.i.i.i)
  %tobool61.not.i.i.i.i.i = icmp eq i32 %and60.i.i.i.i.i, 0
  %spec.select1.i.i.i.i.i = select i1 %tobool61.not.i.i.i.i.i, ptr null, ptr %parent.0.i.i.i.i.i
  br label %if.end66.i.i.i.i.i

if.end66.i.i.i.i.i:                               ; preds = %if.else58.i.i.i.i.i, %if.then57.i.i.i.i.i
  %rebalance.1.i.i.i.i.i = phi ptr [ null, %if.then57.i.i.i.i.i ], [ %spec.select1.i.i.i.i.i, %if.else58.i.i.i.i.i ]
  %147 = ptrtoint ptr %successor.1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %138, ptr %successor.1.i.i.i.i.i, align 4
  br label %if.end69.i.i.i.i.i

if.end69.i.i.i.i.i:                               ; preds = %if.end66.i.i.i.i.i, %__rb_change_child.exit9.i.i.i.i.i, %if.else.i.i.i.i.i, %if.then2.i.i.i.i.i
  %tmp.1.i.i.i.i.i = phi ptr [ %successor.1.i.i.i.i.i, %if.end66.i.i.i.i.i ], [ %83, %__rb_change_child.exit9.i.i.i.i.i ], [ %77, %if.else.i.i.i.i.i ], [ %77, %if.then2.i.i.i.i.i ]
  %rebalance.2.i.i.i.i.i = phi ptr [ %rebalance.1.i.i.i.i.i, %if.end66.i.i.i.i.i ], [ null, %__rb_change_child.exit9.i.i.i.i.i ], [ %spec.select.i.i.i.i.i, %if.else.i.i.i.i.i ], [ null, %if.then2.i.i.i.i.i ]
  %cmp.not7.i22.i.i.i.i.i = icmp eq ptr %tmp.1.i.i.i.i.i, null
  br i1 %cmp.not7.i22.i.i.i.i.i, label %if.end69.i.i.i.i.i.__rb_erase_augmented.exit.i.i.i.i_crit_edge, label %if.end69.i.i.i.i.i.while.body.i29.i.i.i.i.i_crit_edge

if.end69.i.i.i.i.i.while.body.i29.i.i.i.i.i_crit_edge: ; preds = %if.end69.i.i.i.i.i
  br label %while.body.i29.i.i.i.i.i

if.end69.i.i.i.i.i.__rb_erase_augmented.exit.i.i.i.i_crit_edge: ; preds = %if.end69.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__rb_erase_augmented.exit.i.i.i.i

while.body.i29.i.i.i.i.i:                         ; preds = %cleanup.i41.i.i.i.i.i.while.body.i29.i.i.i.i.i_crit_edge, %if.end69.i.i.i.i.i.while.body.i29.i.i.i.i.i_crit_edge
  %rb.addr.08.i23.i.i.i.i.i = phi ptr [ %170, %cleanup.i41.i.i.i.i.i.while.body.i29.i.i.i.i.i_crit_edge ], [ %tmp.1.i.i.i.i.i, %if.end69.i.i.i.i.i.while.body.i29.i.i.i.i.i_crit_edge ]
  %add.ptr.i24.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i23.i.i.i.i.i, i32 -8
  %va_end.i.i.i25.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i23.i.i.i.i.i, i32 -4
  %148 = ptrtoint ptr %va_end.i.i.i25.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %va_end.i.i.i25.i.i.i.i.i, align 4
  %150 = ptrtoint ptr %add.ptr.i24.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %add.ptr.i24.i.i.i.i.i, align 4
  %sub.i.i.i26.i.i.i.i.i = sub i32 %149, %151
  %rb_left.i.i27.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i23.i.i.i.i.i, i32 8
  %152 = ptrtoint ptr %rb_left.i.i27.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %rb_left.i.i27.i.i.i.i.i, align 4
  %tobool.not.i.i28.i.i.i.i.i = icmp eq ptr %153, null
  br i1 %tobool.not.i.i28.i.i.i.i.i, label %while.body.i29.i.i.i.i.i.if.end4.i.i34.i.i.i.i.i_crit_edge, label %if.then.i.i30.i.i.i.i.i

while.body.i29.i.i.i.i.i.if.end4.i.i34.i.i.i.i.i_crit_edge: ; preds = %while.body.i29.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i.i34.i.i.i.i.i

if.then.i.i30.i.i.i.i.i:                          ; preds = %while.body.i29.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %154 = getelementptr i8, ptr %153, i32 20
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %154, align 4
  %157 = call i32 @llvm.umax.i32(i32 %156, i32 %sub.i.i.i26.i.i.i.i.i) #16
  br label %if.end4.i.i34.i.i.i.i.i

if.end4.i.i34.i.i.i.i.i:                          ; preds = %if.then.i.i30.i.i.i.i.i, %while.body.i29.i.i.i.i.i.if.end4.i.i34.i.i.i.i.i_crit_edge
  %max.0.i.i31.i.i.i.i.i = phi i32 [ %sub.i.i.i26.i.i.i.i.i, %while.body.i29.i.i.i.i.i.if.end4.i.i34.i.i.i.i.i_crit_edge ], [ %157, %if.then.i.i30.i.i.i.i.i ]
  %rb_right.i.i32.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i23.i.i.i.i.i, i32 4
  %158 = ptrtoint ptr %rb_right.i.i32.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %rb_right.i.i32.i.i.i.i.i, align 4
  %tobool6.not.i.i33.i.i.i.i.i = icmp eq ptr %159, null
  br i1 %tobool6.not.i.i33.i.i.i.i.i, label %if.end4.i.i34.i.i.i.i.i.if.end16.i.i38.i.i.i.i.i_crit_edge, label %if.then7.i.i35.i.i.i.i.i

if.end4.i.i34.i.i.i.i.i.if.end16.i.i38.i.i.i.i.i_crit_edge: ; preds = %if.end4.i.i34.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16.i.i38.i.i.i.i.i

if.then7.i.i35.i.i.i.i.i:                         ; preds = %if.end4.i.i34.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %160 = getelementptr i8, ptr %159, i32 20
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %160, align 4
  %163 = call i32 @llvm.umax.i32(i32 %162, i32 %max.0.i.i31.i.i.i.i.i) #16
  br label %if.end16.i.i38.i.i.i.i.i

if.end16.i.i38.i.i.i.i.i:                         ; preds = %if.then7.i.i35.i.i.i.i.i, %if.end4.i.i34.i.i.i.i.i.if.end16.i.i38.i.i.i.i.i_crit_edge
  %max.1.i.i36.i.i.i.i.i = phi i32 [ %max.0.i.i31.i.i.i.i.i, %if.end4.i.i34.i.i.i.i.i.if.end16.i.i38.i.i.i.i.i_crit_edge ], [ %163, %if.then7.i.i35.i.i.i.i.i ]
  %164 = getelementptr i8, ptr %rb.addr.08.i23.i.i.i.i.i, i32 20
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %164, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %166, i32 %max.1.i.i36.i.i.i.i.i)
  %cmp18.i.i37.i.i.i.i.i = icmp eq i32 %166, %max.1.i.i36.i.i.i.i.i
  br i1 %cmp18.i.i37.i.i.i.i.i, label %if.end16.i.i38.i.i.i.i.i.__rb_erase_augmented.exit.i.i.i.i_crit_edge, label %cleanup.i41.i.i.i.i.i

if.end16.i.i38.i.i.i.i.i.__rb_erase_augmented.exit.i.i.i.i_crit_edge: ; preds = %if.end16.i.i38.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__rb_erase_augmented.exit.i.i.i.i

cleanup.i41.i.i.i.i.i:                            ; preds = %if.end16.i.i38.i.i.i.i.i
  %167 = ptrtoint ptr %164 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %max.1.i.i36.i.i.i.i.i, ptr %164, align 4
  %168 = ptrtoint ptr %rb.addr.08.i23.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %rb.addr.08.i23.i.i.i.i.i, align 4
  %and.i39.i.i.i.i.i = and i32 %169, -4
  %170 = inttoptr i32 %and.i39.i.i.i.i.i to ptr
  %cmp.not.i40.i.i.i.i.i = icmp eq i32 %and.i39.i.i.i.i.i, 0
  br i1 %cmp.not.i40.i.i.i.i.i, label %cleanup.i41.i.i.i.i.i.__rb_erase_augmented.exit.i.i.i.i_crit_edge, label %cleanup.i41.i.i.i.i.i.while.body.i29.i.i.i.i.i_crit_edge

cleanup.i41.i.i.i.i.i.while.body.i29.i.i.i.i.i_crit_edge: ; preds = %cleanup.i41.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i29.i.i.i.i.i

cleanup.i41.i.i.i.i.i.__rb_erase_augmented.exit.i.i.i.i_crit_edge: ; preds = %cleanup.i41.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__rb_erase_augmented.exit.i.i.i.i

__rb_erase_augmented.exit.i.i.i.i:                ; preds = %cleanup.i41.i.i.i.i.i.__rb_erase_augmented.exit.i.i.i.i_crit_edge, %if.end16.i.i38.i.i.i.i.i.__rb_erase_augmented.exit.i.i.i.i_crit_edge, %if.end69.i.i.i.i.i.__rb_erase_augmented.exit.i.i.i.i_crit_edge
  %tobool.not.i.i.i.i = icmp eq ptr %rebalance.2.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %__rb_erase_augmented.exit.i.i.i.i.if.end27.i.i.i_crit_edge, label %if.then.i.i.i.i

__rb_erase_augmented.exit.i.i.i.i.if.end27.i.i.i_crit_edge: ; preds = %__rb_erase_augmented.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27.i.i.i

if.then.i.i.i.i:                                  ; preds = %__rb_erase_augmented.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__rb_erase_color(ptr noundef nonnull %rebalance.2.i.i.i.i.i, ptr noundef nonnull @free_vmap_area_root, ptr noundef nonnull @free_vmap_area_rb_augment_cb_rotate) #16
  br label %if.end27.i.i.i

if.end27.i.i.i:                                   ; preds = %if.then.i.i.i.i, %__rb_erase_augmented.exit.i.i.i.i.if.end27.i.i.i_crit_edge
  %list.i.i.i = getelementptr inbounds %struct.vmap_area, ptr %retval.0.i.i, i32 0, i32 3
  %call.i.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i.i.i) #16
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end27.i.i.i.if.end35.i.i_crit_edge

if.end27.i.i.i.if.end35.i.i_crit_edge:            ; preds = %if.end27.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end35.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.end27.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i.i.i = getelementptr inbounds %struct.vmap_area, ptr %retval.0.i.i, i32 0, i32 3, i32 1
  %171 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %173 = ptrtoint ptr %list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %list.i.i.i, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %174, i32 0, i32 1
  %175 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %172, ptr %prev1.i.i.i.i.i.i, align 4
  %176 = ptrtoint ptr %172 to i32
  call void @__asan_store4_noabort(i32 %176)
  store volatile ptr %174, ptr %172, align 4
  br label %if.end35.i.i

if.then2.i.i:                                     ; preds = %classify_va_fit_type.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.i102.i = add i32 %64, %size
  %177 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %add.i102.i, ptr %retval.0.i.i, align 4
  br label %if.then37.i.i

if.then5.i.i:                                     ; preds = %classify_va_fit_type.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %178 = ptrtoint ptr %va_end.i.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %nva_start_addr.0.i, ptr %va_end.i.i, align 4
  br label %if.then37.i.i

if.then8.i.i:                                     ; preds = %classify_va_fit_type.exit.i
  %179 = call i32 @llvm.read_register.i32(metadata !235) #16
  %and.i.i.i = and i32 %179, -16384
  %180 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %180, i32 0, i32 3
  %181 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %182
  %183 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %arrayidx.i.i, align 4
  %add15.i.i = add i32 %184, ptrtoint (ptr @ne_fit_preload_node to i32)
  %185 = inttoptr i32 %add15.i.i to ptr
  %186 = ptrtoint ptr %185 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %185, align 4
  store ptr null, ptr %185, align 4
  %tobool.not.i104.i = icmp eq ptr %187, null
  br i1 %tobool.not.i104.i, label %if.then21.i.i, label %if.then8.i.i.if.end25.i.i_crit_edge, !prof !247

if.then8.i.i.if.end25.i.i_crit_edge:              ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end25.i.i

if.then21.i.i:                                    ; preds = %if.then8.i.i
  %188 = load ptr, ptr @vmap_area_cachep, align 4
  %call22.i.i = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %188, i32 noundef 2048) #16
  %tobool23.not.i.i = icmp eq ptr %call22.i.i, null
  br i1 %tobool23.not.i.i, label %if.then21.i.i.__alloc_vmap_area.exit.thread_crit_edge, label %if.then21.i.i.if.end25.i.i_crit_edge

if.then21.i.i.if.end25.i.i_crit_edge:             ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end25.i.i

if.then21.i.i.__alloc_vmap_area.exit.thread_crit_edge: ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__alloc_vmap_area.exit.thread

if.end25.i.i:                                     ; preds = %if.then21.i.i.if.end25.i.i_crit_edge, %if.then8.i.i.if.end25.i.i_crit_edge
  %lva.0.i.i = phi ptr [ %call22.i.i, %if.then21.i.i.if.end25.i.i_crit_edge ], [ %187, %if.then8.i.i.if.end25.i.i_crit_edge ]
  %189 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %retval.0.i.i, align 4
  %191 = ptrtoint ptr %lva.0.i.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %190, ptr %lva.0.i.i, align 4
  %va_end28.i.i = getelementptr inbounds %struct.vmap_area, ptr %lva.0.i.i, i32 0, i32 1
  %192 = ptrtoint ptr %va_end28.i.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %nva_start_addr.0.i, ptr %va_end28.i.i, align 4
  store i32 %add13.i, ptr %retval.0.i.i, align 4
  br label %if.then37.i.i

if.end35.i.i:                                     ; preds = %if.end.i.i.i.i.i, %if.end27.i.i.i.if.end35.i.i_crit_edge
  %193 = ptrtoint ptr %list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i.i.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.vmap_area, ptr %retval.0.i.i, i32 0, i32 3, i32 1
  %194 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i.i, align 4
  %195 = ptrtoint ptr %rb_node.i.i.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %71, ptr %rb_node.i.i.i, align 4
  %196 = load ptr, ptr @vmap_area_cachep, align 4
  call void @kmem_cache_free(ptr noundef %196, ptr noundef nonnull %retval.0.i.i) #16
  br label %__alloc_vmap_area.exit

if.then37.i.i:                                    ; preds = %if.end25.i.i, %if.then5.i.i, %if.then2.i.i
  %lva.169.i.i = phi ptr [ %lva.0.i.i, %if.end25.i.i ], [ null, %if.then5.i.i ], [ null, %if.then2.i.i ]
  %rb_node.i62.i.i = getelementptr inbounds %struct.vmap_area, ptr %retval.0.i.i, i32 0, i32 2
  br label %while.body.i.i.i.i

while.body.i.i.i.i:                               ; preds = %cleanup.i.i.i.i.while.body.i.i.i.i_crit_edge, %if.then37.i.i
  %rb.addr.08.i.i.i.i = phi ptr [ %219, %cleanup.i.i.i.i.while.body.i.i.i.i_crit_edge ], [ %rb_node.i62.i.i, %if.then37.i.i ]
  %add.ptr.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i.i.i, i32 -8
  %va_end.i.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i.i.i, i32 -4
  %197 = ptrtoint ptr %va_end.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %va_end.i.i.i.i.i.i, align 4
  %199 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %add.ptr.i.i.i.i, align 4
  %sub.i.i.i.i.i.i = sub i32 %198, %200
  %rb_left.i.i.i63.i.i = getelementptr i8, ptr %rb.addr.08.i.i.i.i, i32 8
  %201 = ptrtoint ptr %rb_left.i.i.i63.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %rb_left.i.i.i63.i.i, align 4
  %tobool.not.i.i.i64.i.i = icmp eq ptr %202, null
  br i1 %tobool.not.i.i.i64.i.i, label %while.body.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %if.then.i.i.i65.i.i

while.body.i.i.i.i.if.end4.i.i.i.i.i_crit_edge:   ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i.i.i.i.i

if.then.i.i.i65.i.i:                              ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %203 = getelementptr i8, ptr %202, i32 20
  %204 = ptrtoint ptr %203 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %203, align 4
  %206 = call i32 @llvm.umax.i32(i32 %205, i32 %sub.i.i.i.i.i.i) #16
  br label %if.end4.i.i.i.i.i

if.end4.i.i.i.i.i:                                ; preds = %if.then.i.i.i65.i.i, %while.body.i.i.i.i.if.end4.i.i.i.i.i_crit_edge
  %max.0.i.i.i.i.i = phi i32 [ %sub.i.i.i.i.i.i, %while.body.i.i.i.i.if.end4.i.i.i.i.i_crit_edge ], [ %206, %if.then.i.i.i65.i.i ]
  %rb_right.i.i.i66.i.i = getelementptr i8, ptr %rb.addr.08.i.i.i.i, i32 4
  %207 = ptrtoint ptr %rb_right.i.i.i66.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %rb_right.i.i.i66.i.i, align 4
  %tobool6.not.i.i.i.i.i = icmp eq ptr %208, null
  br i1 %tobool6.not.i.i.i.i.i, label %if.end4.i.i.i.i.i.if.end16.i.i.i.i.i_crit_edge, label %if.then7.i.i.i.i.i

if.end4.i.i.i.i.i.if.end16.i.i.i.i.i_crit_edge:   ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16.i.i.i.i.i

if.then7.i.i.i.i.i:                               ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %209 = getelementptr i8, ptr %208, i32 20
  %210 = ptrtoint ptr %209 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %209, align 4
  %212 = call i32 @llvm.umax.i32(i32 %211, i32 %max.0.i.i.i.i.i) #16
  br label %if.end16.i.i.i.i.i

if.end16.i.i.i.i.i:                               ; preds = %if.then7.i.i.i.i.i, %if.end4.i.i.i.i.i.if.end16.i.i.i.i.i_crit_edge
  %max.1.i.i.i.i.i = phi i32 [ %max.0.i.i.i.i.i, %if.end4.i.i.i.i.i.if.end16.i.i.i.i.i_crit_edge ], [ %212, %if.then7.i.i.i.i.i ]
  %213 = getelementptr i8, ptr %rb.addr.08.i.i.i.i, i32 20
  %214 = ptrtoint ptr %213 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %213, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %215, i32 %max.1.i.i.i.i.i)
  %cmp18.i.i.i.i.i = icmp eq i32 %215, %max.1.i.i.i.i.i
  br i1 %cmp18.i.i.i.i.i, label %if.end16.i.i.i.i.i.augment_tree_propagate_from.exit.i.i_crit_edge, label %cleanup.i.i.i.i

if.end16.i.i.i.i.i.augment_tree_propagate_from.exit.i.i_crit_edge: ; preds = %if.end16.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %augment_tree_propagate_from.exit.i.i

cleanup.i.i.i.i:                                  ; preds = %if.end16.i.i.i.i.i
  %216 = ptrtoint ptr %213 to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %max.1.i.i.i.i.i, ptr %213, align 4
  %217 = ptrtoint ptr %rb.addr.08.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %rb.addr.08.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %218, -4
  %219 = inttoptr i32 %and.i.i.i.i to ptr
  %cmp.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %cleanup.i.i.i.i.augment_tree_propagate_from.exit.i.i_crit_edge, label %cleanup.i.i.i.i.while.body.i.i.i.i_crit_edge

cleanup.i.i.i.i.while.body.i.i.i.i_crit_edge:     ; preds = %cleanup.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i.i.i.i

cleanup.i.i.i.i.augment_tree_propagate_from.exit.i.i_crit_edge: ; preds = %cleanup.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %augment_tree_propagate_from.exit.i.i

augment_tree_propagate_from.exit.i.i:             ; preds = %cleanup.i.i.i.i.augment_tree_propagate_from.exit.i.i_crit_edge, %if.end16.i.i.i.i.i.augment_tree_propagate_from.exit.i.i_crit_edge
  %tobool38.not.i.i = icmp eq ptr %lva.169.i.i, null
  br i1 %tobool38.not.i.i, label %augment_tree_propagate_from.exit.i.i.__alloc_vmap_area.exit_crit_edge, label %if.then39.i.i

augment_tree_propagate_from.exit.i.i.__alloc_vmap_area.exit_crit_edge: ; preds = %augment_tree_propagate_from.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__alloc_vmap_area.exit

if.then39.i.i:                                    ; preds = %augment_tree_propagate_from.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @insert_vmap_area_augment(ptr noundef nonnull %lva.169.i.i, ptr noundef %rb_node.i62.i.i) #16
  br label %__alloc_vmap_area.exit

__alloc_vmap_area.exit.thread:                    ; preds = %if.then21.i.i.__alloc_vmap_area.exit.thread_crit_edge, %if.then33.i, %land.rhs.i.__alloc_vmap_area.exit.thread_crit_edge, %if.end.i.__alloc_vmap_area.exit.thread_crit_edge, %find_vmap_lowest_match.exit.i.__alloc_vmap_area.exit.thread_crit_edge, %while.cond.i.i.__alloc_vmap_area.exit.thread_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @free_vmap_area_lock) #16
  br label %overflow

__alloc_vmap_area.exit:                           ; preds = %if.then39.i.i, %augment_tree_propagate_from.exit.i.i.__alloc_vmap_area.exit_crit_edge, %if.end35.i.i, %if.end35.thread70.i.i
  call void @_raw_spin_unlock(ptr noundef nonnull @free_vmap_area_lock) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %nva_start_addr.0.i, i32 %vend)
  %cmp = icmp eq i32 %nva_start_addr.0.i, %vend
  br i1 %cmp, label %__alloc_vmap_area.exit.overflow_crit_edge, label %if.end87, !prof !247

__alloc_vmap_area.exit.overflow_crit_edge:        ; preds = %__alloc_vmap_area.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %overflow

if.end87:                                         ; preds = %__alloc_vmap_area.exit
  %220 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %nva_start_addr.0.i, ptr %call.i, align 8
  %va_end = getelementptr inbounds %struct.vmap_area, ptr %call.i, i32 0, i32 1
  %221 = ptrtoint ptr %va_end to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 %add13.i, ptr %va_end, align 4
  %222 = getelementptr inbounds %struct.vmap_area, ptr %call.i, i32 0, i32 4
  %223 = ptrtoint ptr %222 to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr null, ptr %222, align 4
  call void @_raw_spin_lock(ptr noundef nonnull @vmap_area_lock) #16
  call fastcc void @insert_vmap_area(ptr noundef nonnull %call.i)
  call void @_raw_spin_unlock(ptr noundef nonnull @vmap_area_lock) #16
  %224 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %call.i, align 8
  %and90 = and i32 %225, %sub.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %cmp91.not = icmp eq i32 %and90, 0
  br i1 %cmp91.not, label %do.body110, label %do.body101, !prof !245

do.body101:                                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1567, 0\0A.popsection", ""() #16, !srcloc !284
  unreachable

do.body110:                                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_cmp4(i32 %225, i32 %vstart)
  %cmp112 = icmp ult i32 %225, %vstart
  br i1 %cmp112, label %do.body120, label %do.body129, !prof !247

do.body120:                                       ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1568, 0\0A.popsection", ""() #16, !srcloc !285
  unreachable

do.body129:                                       ; preds = %do.body110
  %226 = ptrtoint ptr %va_end to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %va_end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %227, i32 %vend)
  %cmp131 = icmp ugt i32 %227, %vend
  br i1 %cmp131, label %do.body139, label %do.body129.cleanup_crit_edge, !prof !247

do.body129.cleanup_crit_edge:                     ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body139:                                       ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1569, 0\0A.popsection", ""() #16, !srcloc !286
  unreachable

overflow:                                         ; preds = %__alloc_vmap_area.exit.overflow_crit_edge, %__alloc_vmap_area.exit.thread
  br i1 %tobool153.not, label %if.then154, label %if.end155

if.then154:                                       ; preds = %overflow
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @purge_vmap_area_lazy()
  br label %retry.backedge

retry.backedge:                                   ; preds = %if.end155.retry.backedge_crit_edge, %if.then154
  %228 = xor i1 %tobool153.not, true
  br label %retry

if.end155:                                        ; preds = %overflow
  %229 = ptrtoint ptr %freed to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 0, ptr %freed, align 4
  %call156 = call i32 @blocking_notifier_call_chain(ptr noundef nonnull @vmap_notify_list, i32 noundef 0, ptr noundef nonnull %freed) #16
  %230 = ptrtoint ptr %freed to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %freed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %231)
  %cmp157.not = icmp eq i32 %231, 0
  br i1 %cmp157.not, label %if.end159, label %if.end155.retry.backedge_crit_edge

if.end155.retry.backedge_crit_edge:               ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #18
  br label %retry.backedge

if.end159:                                        ; preds = %if.end155
  %and160 = and i32 %gfp_mask, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and160)
  %tobool161.not = icmp eq i32 %and160, 0
  br i1 %tobool161.not, label %land.lhs.true, label %if.end159.if.end169_crit_edge

if.end159.if.end169_crit_edge:                    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end169

land.lhs.true:                                    ; preds = %if.end159
  %call162 = call i32 @__printk_ratelimit(ptr noundef nonnull @__func__.alloc_vmap_area) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call162)
  %tobool163.not = icmp eq i32 %call162, 0
  br i1 %tobool163.not, label %land.lhs.true.if.end169_crit_edge, label %do.end167

land.lhs.true.if.end169_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end169

do.end167:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %call168 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %size) #22
  br label %if.end169

if.end169:                                        ; preds = %do.end167, %land.lhs.true.if.end169_crit_edge, %if.end159.if.end169_crit_edge
  %232 = load ptr, ptr @vmap_area_cachep, align 4
  call void @kmem_cache_free(ptr noundef %232, ptr noundef nonnull %call.i) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end169, %do.body129.cleanup_crit_edge, %do.body59.cleanup_crit_edge, %do.end46.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -16 to ptr), %if.end169 ], [ inttoptr (i32 -16 to ptr), %do.end46.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %do.body59.cleanup_crit_edge ], [ %call.i, %do.body129.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freed) #16
  ret ptr %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @vm_area_add_early(ptr noundef %vm) local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %.b70 = load i1, ptr @vmap_initialized, align 1
  br i1 %.b70, label %do.body3, label %for.cond.preheader, !prof !247

for.cond.preheader:                               ; preds = %entry
  %addr9 = getelementptr inbounds %struct.vm_struct, ptr %vm, i32 0, i32 1
  br label %for.cond

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2255, 0\0A.popsection", ""() #16, !srcloc !287
  unreachable

for.cond:                                         ; preds = %do.body32.for.cond_crit_edge, %for.cond.preheader
  %p.0 = phi ptr [ %1, %do.body32.for.cond_crit_edge ], [ @vmlist, %for.cond.preheader ]
  %0 = ptrtoint ptr %p.0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p.0, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.cond
  %addr = getelementptr inbounds %struct.vm_struct, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %addr, align 4
  %4 = ptrtoint ptr %addr9 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %addr9, align 4
  %cmp10.not = icmp ult ptr %3, %5
  br i1 %cmp10.not, label %do.body32, label %do.body12

do.body12:                                        ; preds = %for.body
  %size = getelementptr inbounds %struct.vm_struct, ptr %vm, i32 0, i32 2
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %7
  %cmp15 = icmp ult ptr %3, %add.ptr
  br i1 %cmp15, label %do.body23, label %do.body12.for.end_crit_edge, !prof !247

do.body12.for.end_crit_edge:                      ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

do.body23:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2258, 0\0A.popsection", ""() #16, !srcloc !288
  unreachable

do.body32:                                        ; preds = %for.body
  %size34 = getelementptr inbounds %struct.vm_struct, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %size34 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size34, align 4
  %add.ptr35 = getelementptr i8, ptr %3, i32 %9
  %cmp37 = icmp ugt ptr %add.ptr35, %5
  br i1 %cmp37, label %do.body45, label %do.body32.for.cond_crit_edge, !prof !247

do.body32.for.cond_crit_edge:                     ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond

do.body45:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2261, 0\0A.popsection", ""() #16, !srcloc !289
  unreachable

for.end:                                          ; preds = %do.body12.for.end_crit_edge, %for.cond.for.end_crit_edge
  %10 = ptrtoint ptr %vm to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %1, ptr %vm, align 4
  %11 = ptrtoint ptr %p.0 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %vm, ptr %p.0, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @vm_area_register_early(ptr noundef %vm, i32 noundef %align) local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %align, -1
  %neg = sub i32 0, %align
  %.b65 = load i1, ptr @vmap_initialized, align 1
  br i1 %.b65, label %do.body6, label %do.end11, !prof !247

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2284, 0\0A.popsection", ""() #16, !srcloc !290
  unreachable

do.end11:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %0 = load ptr, ptr @high_memory, align 4
  %1 = ptrtoint ptr %0 to i32
  %add = add i32 %1, 8388608
  %and = and i32 %add, -8388608
  %add1.pn66 = add i32 %sub, %and
  %addr.067 = and i32 %add1.pn66, %neg
  %2 = load ptr, ptr @vmlist, align 4
  %cmp.not68 = icmp eq ptr %2, null
  br i1 %cmp.not68, label %do.end11.do.body25_crit_edge, label %for.body.lr.ph

do.end11.do.body25_crit_edge:                     ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body25

for.body.lr.ph:                                   ; preds = %do.end11
  %size = getelementptr inbounds %struct.vm_struct, ptr %vm, i32 0, i32 2
  %3 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %size, align 4
  %addr1274 = getelementptr inbounds %struct.vm_struct, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %addr1274 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %addr1274, align 4
  %7 = ptrtoint ptr %6 to i32
  %sub1375 = sub i32 %7, %addr.067
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1375, i32 %4)
  %cmp14.not76 = icmp ult i32 %sub1375, %4
  br i1 %cmp14.not76, label %for.body.lr.ph.if.end16_crit_edge, label %for.body.lr.ph.do.body25_crit_edge

for.body.lr.ph.do.body25_crit_edge:               ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body25

for.body.lr.ph.if.end16_crit_edge:                ; preds = %for.body.lr.ph
  br label %if.end16

for.body:                                         ; preds = %if.end16
  %addr12 = getelementptr inbounds %struct.vm_struct, ptr %16, i32 0, i32 1
  %8 = ptrtoint ptr %addr12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %addr12, align 4
  %10 = ptrtoint ptr %9 to i32
  %sub13 = sub i32 %10, %addr.0
  %cmp14.not = icmp ult i32 %sub13, %4
  br i1 %cmp14.not, label %for.body.if.end16_crit_edge, label %for.body.do.body25_crit_edge

for.body.do.body25_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body25

for.body.if.end16_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16

if.end16:                                         ; preds = %for.body.if.end16_crit_edge, %for.body.lr.ph.if.end16_crit_edge
  %11 = phi i32 [ %10, %for.body.if.end16_crit_edge ], [ %7, %for.body.lr.ph.if.end16_crit_edge ]
  %12 = phi ptr [ %16, %for.body.if.end16_crit_edge ], [ %2, %for.body.lr.ph.if.end16_crit_edge ]
  %size18 = getelementptr inbounds %struct.vm_struct, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %size18 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size18, align 4
  %add19 = add i32 %14, %11
  %add1.pn = add i32 %sub, %add19
  %addr.0 = and i32 %add1.pn, %neg
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %12, align 4
  %cmp.not = icmp eq ptr %16, null
  br i1 %cmp.not, label %if.end16.do.body25_crit_edge, label %for.body

if.end16.do.body25_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body25

do.body25:                                        ; preds = %if.end16.do.body25_crit_edge, %for.body.do.body25_crit_edge, %for.body.lr.ph.do.body25_crit_edge, %do.end11.do.body25_crit_edge
  %p.0.lcssa = phi ptr [ @vmlist, %do.end11.do.body25_crit_edge ], [ @vmlist, %for.body.lr.ph.do.body25_crit_edge ], [ %12, %for.body.do.body25_crit_edge ], [ %12, %if.end16.do.body25_crit_edge ]
  %addr.0.lcssa = phi i32 [ %addr.067, %do.end11.do.body25_crit_edge ], [ %addr.067, %for.body.lr.ph.do.body25_crit_edge ], [ %addr.0, %for.body.do.body25_crit_edge ], [ %addr.0, %if.end16.do.body25_crit_edge ]
  %size26 = getelementptr inbounds %struct.vm_struct, ptr %vm, i32 0, i32 2
  %17 = ptrtoint ptr %size26 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size26, align 4
  %sub27 = sub i32 -8388608, %18
  call void @__sanitizer_cov_trace_cmp4(i32 %addr.0.lcssa, i32 %sub27)
  %cmp28 = icmp ugt i32 %addr.0.lcssa, %sub27
  br i1 %cmp28, label %do.body36, label %do.end44, !prof !247

do.body36:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2292, 0\0A.popsection", ""() #16, !srcloc !291
  unreachable

do.end44:                                         ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #18
  %19 = inttoptr i32 %addr.0.lcssa to ptr
  %addr45 = getelementptr inbounds %struct.vm_struct, ptr %vm, i32 0, i32 1
  %20 = ptrtoint ptr %addr45 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %addr45, align 4
  %21 = ptrtoint ptr %p.0.lcssa to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %p.0.lcssa, align 4
  %23 = ptrtoint ptr %vm to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %vm, align 4
  store ptr %vm, ptr %p.0.lcssa, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @vmalloc_init() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.5, i32 noundef 32, i32 noundef 4, i32 noundef 262144, ptr noundef null) #16
  store ptr %call, ptr @vmap_area_cachep, align 4
  %call198 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call198, i32 %0)
  %cmp99 = icmp ult i32 %call198, %0
  br i1 %cmp99, label %entry.for.body_crit_edge, label %entry.for.cond25.preheader_crit_edge

entry.for.cond25.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond25.preheader

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.cond25.preheader:                             ; preds = %for.body.for.cond25.preheader_crit_edge, %entry.for.cond25.preheader_crit_edge
  %tmp.0101 = load ptr, ptr @vmlist, align 4
  %tobool.not102 = icmp eq ptr %tmp.0101, null
  br i1 %tobool.not102, label %for.cond25.preheader.for.end74_crit_edge, label %for.cond25.preheader.for.body26_crit_edge

for.cond25.preheader.for.body26_crit_edge:        ; preds = %for.cond25.preheader
  br label %for.body26

for.cond25.preheader.for.end74_crit_edge:         ; preds = %for.cond25.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end74

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %call1100 = phi i32 [ %call1, %for.body.for.body_crit_edge ], [ %call198, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call1100
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %add = add i32 %2, ptrtoint (ptr @vmap_block_queue to i32)
  %3 = inttoptr i32 %add to ptr
  tail call void @__raw_spin_lock_init(ptr noundef %3, ptr noundef nonnull @.str.6, ptr noundef nonnull @vmalloc_init.__key, i16 noundef signext 3) #16
  %free = getelementptr inbounds %struct.vmap_block_queue, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %free, ptr %free, align 4
  %prev.i = getelementptr inbounds %struct.vmap_block_queue, ptr %3, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %free, ptr %prev.i, align 4
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add16 = add i32 %7, ptrtoint (ptr @vfree_deferred to i32)
  %8 = inttoptr i32 %add16 to ptr
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %8, align 4
  %wq = getelementptr inbounds %struct.vfree_deferred, ptr %8, i32 0, i32 1
  tail call void @__init_work(ptr noundef %wq, i32 noundef 0) #16
  %10 = ptrtoint ptr %wq to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -64, ptr %wq, align 4
  %lockdep_map = getelementptr inbounds %struct.vfree_deferred, ptr %8, i32 0, i32 1, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.8, ptr noundef nonnull @vmalloc_init.__key.7, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %entry21 = getelementptr inbounds %struct.vfree_deferred, ptr %8, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %entry21 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %entry21, ptr %entry21, align 4
  %prev.i97 = getelementptr inbounds %struct.vfree_deferred, ptr %8, i32 0, i32 1, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i97 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %entry21, ptr %prev.i97, align 4
  %func = getelementptr inbounds %struct.vfree_deferred, ptr %8, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @free_work, ptr %func, align 4
  %call1 = tail call i32 @cpumask_next(i32 noundef %call1100, ptr noundef nonnull @__cpu_possible_mask) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %14 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call1, %14
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.cond25.preheader_crit_edge

for.body.for.cond25.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond25.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body26:                                       ; preds = %for.inc.for.body26_crit_edge, %for.cond25.preheader.for.body26_crit_edge
  %tmp.0103 = phi ptr [ %tmp.0, %for.inc.for.body26_crit_edge ], [ %tmp.0101, %for.cond25.preheader.for.body26_crit_edge ]
  %15 = load ptr, ptr @vmap_area_cachep, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %15, i32 noundef 2304) #16
  %tobool28.not = icmp eq ptr %call.i, null
  br i1 %tobool28.not, label %land.rhs, label %if.end71.critedge

land.rhs:                                         ; preds = %for.body26
  %.b95 = load i1, ptr @vmalloc_init.__already_done, align 1
  br i1 %.b95, label %land.rhs.for.inc_crit_edge, label %if.then, !prof !245

land.rhs.for.inc_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @vmalloc_init.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2366, i32 noundef 9, ptr noundef null) #16
  br label %for.inc

if.end71.critedge:                                ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #18
  %addr = getelementptr inbounds %struct.vm_struct, ptr %tmp.0103, i32 0, i32 1
  %16 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %addr, align 4
  %18 = ptrtoint ptr %17 to i32
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %call.i, align 8
  %size = getelementptr inbounds %struct.vm_struct, ptr %tmp.0103, i32 0, i32 2
  %20 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size, align 4
  %add73 = add i32 %21, %18
  %va_end = getelementptr inbounds %struct.vmap_area, ptr %call.i, i32 0, i32 1
  %22 = ptrtoint ptr %va_end to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add73, ptr %va_end, align 4
  %23 = getelementptr inbounds %struct.vmap_area, ptr %call.i, i32 0, i32 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %tmp.0103, ptr %23, align 4
  tail call fastcc void @insert_vmap_area(ptr noundef nonnull %call.i)
  br label %for.inc

for.inc:                                          ; preds = %if.end71.critedge, %if.then, %land.rhs.for.inc_crit_edge
  %25 = ptrtoint ptr %tmp.0103 to i32
  call void @__asan_load4_noabort(i32 %25)
  %tmp.0 = load ptr, ptr %tmp.0103, align 4
  %tobool.not = icmp eq ptr %tmp.0, null
  br i1 %tobool.not, label %for.inc.for.end74_crit_edge, label %for.inc.for.body26_crit_edge

for.inc.for.body26_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body26

for.inc.for.end74_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end74

for.end74:                                        ; preds = %for.inc.for.end74_crit_edge, %for.cond25.preheader.for.end74_crit_edge
  %.pn142.i = load ptr, ptr @vmap_area_list, align 4
  %cmp.not144.i = icmp eq ptr %.pn142.i, @vmap_area_list
  br i1 %cmp.not144.i, label %for.end74.if.then54.i_crit_edge, label %for.end74.for.body.i_crit_edge

for.end74.for.body.i_crit_edge:                   ; preds = %for.end74
  br label %for.body.i

for.end74.if.then54.i_crit_edge:                  ; preds = %for.end74
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then54.i

for.body.i:                                       ; preds = %if.end46.i.for.body.i_crit_edge, %for.end74.for.body.i_crit_edge
  %.pn146.i = phi ptr [ %.pn.i, %if.end46.i.for.body.i_crit_edge ], [ %.pn142.i, %for.end74.for.body.i_crit_edge ]
  %vmap_start.0145.i = phi i32 [ %34, %if.end46.i.for.body.i_crit_edge ], [ 1, %for.end74.for.body.i_crit_edge ]
  %busy.0147.i = getelementptr i8, ptr %.pn146.i, i32 -20
  %26 = ptrtoint ptr %busy.0147.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %busy.0147.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %vmap_start.0145.i)
  %cmp1.not.i = icmp eq i32 %27, %vmap_start.0145.i
  br i1 %cmp1.not.i, label %for.body.i.if.end46.i_crit_edge, label %if.then.i

for.body.i.if.end46.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end46.i

if.then.i:                                        ; preds = %for.body.i
  %28 = load ptr, ptr @vmap_area_cachep, align 4
  %call.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %28, i32 noundef 2304) #16
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %land.rhs.i, label %if.then42.critedge.i

land.rhs.i:                                       ; preds = %if.then.i
  %.b138.i = load i1, ptr @vmap_init_free_space.__already_done, align 1
  br i1 %.b138.i, label %land.rhs.i.if.end46.i_crit_edge, label %if.then11.i, !prof !245

land.rhs.i.if.end46.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end46.i

if.then11.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @vmap_init_free_space.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2314, i32 noundef 9, ptr noundef null) #16
  br label %if.end46.i

if.then42.critedge.i:                             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %29 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %vmap_start.0145.i, ptr %call.i.i, align 8
  %30 = ptrtoint ptr %busy.0147.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %busy.0147.i, align 4
  %va_end.i = getelementptr inbounds %struct.vmap_area, ptr %call.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %va_end.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %va_end.i, align 4
  tail call fastcc void @insert_vmap_area_augment(ptr noundef nonnull %call.i.i, ptr noundef null) #16
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then42.critedge.i, %if.then11.i, %land.rhs.i.if.end46.i_crit_edge, %for.body.i.if.end46.i_crit_edge
  %va_end47.i = getelementptr i8, ptr %.pn146.i, i32 -16
  %33 = ptrtoint ptr %va_end47.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %va_end47.i, align 4
  %35 = ptrtoint ptr %.pn146.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pn.i = load ptr, ptr %.pn146.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @vmap_area_list
  br i1 %cmp.not.i, label %for.end.i, label %if.end46.i.for.body.i_crit_edge

if.end46.i.for.body.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.end.i:                                        ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %cmp53.not.i = icmp eq i32 %34, -1
  br i1 %cmp53.not.i, label %for.end.i.vmap_init_free_space.exit_crit_edge, label %for.end.i.if.then54.i_crit_edge

for.end.i.if.then54.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then54.i

for.end.i.vmap_init_free_space.exit_crit_edge:    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vmap_init_free_space.exit

if.then54.i:                                      ; preds = %for.end.i.if.then54.i_crit_edge, %for.end74.if.then54.i_crit_edge
  %vmap_start.0.lcssa150.i = phi i32 [ %34, %for.end.i.if.then54.i_crit_edge ], [ 1, %for.end74.if.then54.i_crit_edge ]
  %36 = load ptr, ptr @vmap_area_cachep, align 4
  %call.i141.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %36, i32 noundef 2304) #16
  %tobool57.not.i = icmp eq ptr %call.i141.i, null
  br i1 %tobool57.not.i, label %land.rhs66.i, label %if.then113.critedge.i

land.rhs66.i:                                     ; preds = %if.then54.i
  %.b136137.i = load i1, ptr @vmap_init_free_space.__already_done.30, align 1
  br i1 %.b136137.i, label %land.rhs66.i.vmap_init_free_space.exit_crit_edge, label %if.then77.i, !prof !245

land.rhs66.i.vmap_init_free_space.exit_crit_edge: ; preds = %land.rhs66.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vmap_init_free_space.exit

if.then77.i:                                      ; preds = %land.rhs66.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @vmap_init_free_space.__already_done.30, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2329, i32 noundef 9, ptr noundef null) #16
  br label %vmap_init_free_space.exit

if.then113.critedge.i:                            ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #18
  %37 = ptrtoint ptr %call.i141.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %vmap_start.0.lcssa150.i, ptr %call.i141.i, align 8
  %va_end115.i = getelementptr inbounds %struct.vmap_area, ptr %call.i141.i, i32 0, i32 1
  %38 = ptrtoint ptr %va_end115.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %va_end115.i, align 4
  tail call fastcc void @insert_vmap_area_augment(ptr noundef nonnull %call.i141.i, ptr noundef null) #16
  br label %vmap_init_free_space.exit

vmap_init_free_space.exit:                        ; preds = %if.then113.critedge.i, %if.then77.i, %land.rhs66.i.vmap_init_free_space.exit_crit_edge, %for.end.i.vmap_init_free_space.exit_crit_edge
  store i1 true, ptr @vmap_initialized, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @free_work(ptr noundef %w) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %w, i32 -4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !292
  tail call void @llvm.prefetch.p0(ptr %add.ptr, i32 1, i32 3, i32 1) #16
  %0 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %add.ptr) #16, !srcloc !293
  %asmresult.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !294
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool.not3 = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not3, label %entry.for.end_crit_edge, label %land.rhs.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

land.rhs.preheader:                               ; preds = %entry
  %1 = inttoptr i32 %asmresult.i.i to ptr
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.land.rhs_crit_edge, %land.rhs.preheader
  %llnode.04 = phi ptr [ %3, %land.rhs.land.rhs_crit_edge ], [ %1, %land.rhs.preheader ]
  %2 = ptrtoint ptr %llnode.04 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %llnode.04, align 4
  tail call fastcc void @__vunmap(ptr noundef nonnull %llnode.04, i32 noundef 1)
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %land.rhs.for.end_crit_edge, label %land.rhs.land.rhs_crit_edge

land.rhs.land.rhs_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.rhs

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %land.rhs.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @insert_vmap_area(ptr noundef %va) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @vmap_area_root, align 4
  %tobool1.not.i = icmp eq ptr %0, null
  br i1 %tobool1.not.i, label %entry.if.end4.i_crit_edge, label %if.end6.i, !prof !247

entry.if.end4.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i

if.end6.i:                                        ; preds = %entry
  %1 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %va, align 4
  %va_end1275.i = getelementptr inbounds %struct.vmap_area, ptr %va, i32 0, i32 1
  %3 = ptrtoint ptr %va_end1275.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %va_end1275.i, align 4
  %.pr = load ptr, ptr @vmap_area_root, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond50.i.do.body.i_crit_edge, %if.end6.i
  %5 = phi ptr [ %11, %do.cond50.i.do.body.i_crit_edge ], [ %.pr, %if.end6.i ]
  %add.ptr.i = getelementptr i8, ptr %5, i32 -8
  %va_end.i = getelementptr i8, ptr %5, i32 -4
  %6 = ptrtoint ptr %va_end.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %va_end.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %7)
  %cmp.i = icmp ult i32 %2, %7
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %9)
  %cmp9.not.i = icmp ugt i32 %4, %9
  br i1 %cmp.i, label %land.lhs.true.i, label %if.else11.thread.i

land.lhs.true.i:                                  ; preds = %do.body.i
  br i1 %cmp9.not.i, label %land.lhs.true.i.find_va_links.exit.thread_crit_edge, label %if.then10.i

land.lhs.true.i.find_va_links.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %find_va_links.exit.thread

if.then10.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %5, i32 0, i32 2
  br label %do.cond50.i

if.else11.thread.i:                               ; preds = %do.body.i
  br i1 %cmp9.not.i, label %if.then19.i, label %if.else11.thread.i.find_va_links.exit.thread_crit_edge

if.else11.thread.i.find_va_links.exit.thread_crit_edge: ; preds = %if.else11.thread.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %find_va_links.exit.thread

if.then19.i:                                      ; preds = %if.else11.thread.i
  call void @__sanitizer_cov_trace_pc() #18
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %5, i32 0, i32 1
  br label %do.cond50.i

find_va_links.exit.thread:                        ; preds = %if.else11.thread.i.find_va_links.exit.thread_crit_edge, %land.lhs.true.i.find_va_links.exit.thread_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 892, i32 noundef 9, ptr noundef nonnull @.str.26, i32 noundef %2, i32 noundef %4, i32 noundef %9, i32 noundef %7) #16
  br label %if.end

do.cond50.i:                                      ; preds = %if.then19.i, %if.then10.i
  %link.2.i = phi ptr [ %rb_left.i, %if.then10.i ], [ %rb_right.i, %if.then19.i ]
  %10 = ptrtoint ptr %link.2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %link.2.i, align 4
  %tobool51.not.i = icmp eq ptr %11, null
  br i1 %tobool51.not.i, label %find_va_links.exit, label %do.cond50.i.do.body.i_crit_edge

do.cond50.i.do.body.i_crit_edge:                  ; preds = %do.cond50.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i

find_va_links.exit:                               ; preds = %do.cond50.i
  %tobool.not = icmp eq ptr %link.2.i, null
  br i1 %tobool.not, label %find_va_links.exit.if.end_crit_edge, label %if.then

find_va_links.exit.if.end_crit_edge:              ; preds = %find_va_links.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %find_va_links.exit
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then.if.end4.i_crit_edge, label %if.then.i, !prof !247

if.then.if.end4.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i

if.then.i:                                        ; preds = %if.then
  %list.i = getelementptr i8, ptr %5, i32 12
  %rb_right.i1 = getelementptr inbounds %struct.rb_node, ptr %5, i32 0, i32 1
  %cmp.not.i = icmp eq ptr %rb_right.i1, %link.2.i
  br i1 %cmp.not.i, label %if.then.i.if.end4.i_crit_edge, label %if.then3.i

if.then.i.if.end4.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i = getelementptr i8, ptr %5, i32 16
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.then.i.if.end4.i_crit_edge, %if.then.if.end4.i_crit_edge, %entry.if.end4.i_crit_edge
  %retval.0.i6 = phi ptr [ %link.2.i, %if.then3.i ], [ %rb_right.i1, %if.then.i.if.end4.i_crit_edge ], [ %link.2.i, %if.then.if.end4.i_crit_edge ], [ @vmap_area_root, %entry.if.end4.i_crit_edge ]
  %parent.05 = phi ptr [ %5, %if.then3.i ], [ %5, %if.then.i.if.end4.i_crit_edge ], [ null, %if.then.if.end4.i_crit_edge ], [ null, %entry.if.end4.i_crit_edge ]
  %head.addr.0.i = phi ptr [ %13, %if.then3.i ], [ %list.i, %if.then.i.if.end4.i_crit_edge ], [ @vmap_area_list, %if.then.if.end4.i_crit_edge ], [ @vmap_area_list, %entry.if.end4.i_crit_edge ]
  %rb_node.i = getelementptr inbounds %struct.vmap_area, ptr %va, i32 0, i32 2
  %14 = ptrtoint ptr %parent.05 to i32
  %15 = ptrtoint ptr %rb_node.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %rb_node.i, align 4
  %rb_right.i.i = getelementptr inbounds %struct.vmap_area, ptr %va, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.vmap_area, ptr %va, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %rb_left.i.i, align 4
  %18 = ptrtoint ptr %retval.0.i6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %rb_node.i, ptr %retval.0.i6, align 4
  tail call void @rb_insert_color(ptr noundef %rb_node.i, ptr noundef nonnull @vmap_area_root) #16
  %list10.i = getelementptr inbounds %struct.vmap_area, ptr %va, i32 0, i32 3
  %19 = ptrtoint ptr %head.addr.0.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %head.addr.0.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list10.i, ptr noundef %head.addr.0.i, ptr noundef %20) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end4.i.if.end_crit_edge

if.end4.i.if.end_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end.i.i.i:                                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %list10.i, ptr %prev1.i.i.i, align 4
  %22 = ptrtoint ptr %list10.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %20, ptr %list10.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.vmap_area, ptr %va, i32 0, i32 3, i32 1
  %23 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %head.addr.0.i, ptr %prev3.i.i.i, align 4
  %24 = ptrtoint ptr %head.addr.0.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %list10.i, ptr %head.addr.0.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i.i, %if.end4.i.if.end_crit_edge, %find_va_links.exit.if.end_crit_edge, %find_va_links.exit.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__get_vm_area_caller(i32 noundef %size, i32 noundef %flags, i32 noundef %start, i32 noundef %end, ptr noundef %caller) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @__get_vm_area_node(i32 noundef %size, i32 noundef 1, i32 noundef %flags, i32 noundef %start, i32 noundef %end, i32 noundef 3264, ptr noundef %caller)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__get_vm_area_node(i32 noundef %size, i32 noundef %align, i32 noundef %flags, i32 noundef %start, i32 noundef %end, i32 noundef %gfp_mask, ptr noundef %caller) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !235) #16
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %3, 15728640
  %4 = tail call i32 @llvm.read_register.i32(metadata !235) #16
  %and.i.i1 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i1 to ptr
  %preempt_count.i2 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i2, align 4
  %and2 = and i32 %7, 983040
  %or = or i32 %and2, %and
  %8 = tail call i32 @llvm.read_register.i32(metadata !235) #16
  %and.i.i3 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i3 to ptr
  %preempt_count.i4 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i4, align 4
  %and4 = and i32 %11, 65280
  %or5 = or i32 %or, %and4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5)
  %tobool.not = icmp eq i32 %or5, 0
  br i1 %tobool.not, label %do.end13, label %do.body8, !prof !245

do.body8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2420, 0\0A.popsection", ""() #16, !srcloc !295
  unreachable

do.end13:                                         ; preds = %entry
  %add = add i32 %size, 4095
  %and16 = and i32 %add, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %do.end13.cleanup_crit_edge, label %if.end27, !prof !247

do.end13.cleanup_crit_edge:                       ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end27:                                         ; preds = %do.end13
  %and28 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end27.if.end39_crit_edge, label %get_count_order_long.exit

if.end27.if.end39_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end39

get_count_order_long.exit:                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  %dec.i = add i32 %and16, -1
  %12 = tail call i32 @llvm.ctlz.i32(i32 %dec.i, i1 true) #16, !range !265
  %sub.i.i.i = sub nuw nsw i32 32, %12
  %13 = tail call i32 @llvm.umax.i32(i32 %sub.i.i.i, i32 12)
  %14 = tail call i32 @llvm.umin.i32(i32 %13, i32 19)
  %shl38 = shl nuw nsw i32 1, %14
  br label %if.end39

if.end39:                                         ; preds = %get_count_order_long.exit, %if.end27.if.end39_crit_edge
  %align.addr.0 = phi i32 [ %shl38, %get_count_order_long.exit ], [ %align, %if.end27.if.end39_crit_edge ]
  %and40 = and i32 %gfp_mask, 34336480
  %or.i = or i32 %and40, 256
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef %or.i, i32 noundef 32) #21
  %tobool42.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool42.not, label %if.end39.cleanup_crit_edge, label %if.end52, !prof !247

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end52:                                         ; preds = %if.end39
  %and53 = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  %add56 = add i32 %and16, 4096
  %spec.select = select i1 %tobool54.not, i32 %add56, i32 %and16
  %call58 = tail call fastcc ptr @alloc_vmap_area(i32 noundef %spec.select, i32 noundef %align.addr.0, i32 noundef %start, i32 noundef %end, i32 noundef %gfp_mask)
  %cmp.i5 = icmp ugt ptr %call58, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i5, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree(ptr noundef nonnull %call.i.i.i) #16
  br label %cleanup

if.end61:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_lock(ptr noundef nonnull @vmap_area_lock) #16
  %flags1.i.i = getelementptr inbounds %struct.vm_struct, ptr %call.i.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %flags1.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %flags, ptr %flags1.i.i, align 4
  %17 = ptrtoint ptr %call58 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %call58, align 4
  %19 = inttoptr i32 %18 to ptr
  %addr.i.i = getelementptr inbounds %struct.vm_struct, ptr %call.i.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %addr.i.i, align 4
  %va_end.i.i = getelementptr inbounds %struct.vmap_area, ptr %call58, i32 0, i32 1
  %21 = ptrtoint ptr %va_end.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %va_end.i.i, align 4
  %23 = load i32, ptr %call58, align 4
  %sub.i.i = sub i32 %22, %23
  %size.i.i = getelementptr inbounds %struct.vm_struct, ptr %call.i.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub.i.i, ptr %size.i.i, align 8
  %caller3.i.i = getelementptr inbounds %struct.vm_struct, ptr %call.i.i.i, i32 0, i32 7
  %25 = ptrtoint ptr %caller3.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %caller, ptr %caller3.i.i, align 4
  %26 = getelementptr inbounds %struct.vmap_area, ptr %call58, i32 0, i32 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i.i.i, ptr %26, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @vmap_area_lock) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.then60, %if.end39.cleanup_crit_edge, %do.end13.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then60 ], [ %call.i.i.i, %if.end61 ], [ null, %do.end13.cleanup_crit_edge ], [ null, %if.end39.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @get_vm_area(i32 noundef %size, i32 noundef %flags) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %0 = load ptr, ptr @high_memory, align 4
  %1 = ptrtoint ptr %0 to i32
  %add = add i32 %1, 8388608
  %and = and i32 %add, -8388608
  %2 = tail call ptr @llvm.returnaddress(i32 0)
  %call = tail call fastcc ptr @__get_vm_area_node(i32 noundef %size, i32 noundef 1, i32 noundef %flags, i32 noundef %and, i32 noundef -8388608, i32 noundef 3264, ptr noundef %2)
  ret ptr %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @get_vm_area_caller(i32 noundef %size, i32 noundef %flags, ptr noundef %caller) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %0 = load ptr, ptr @high_memory, align 4
  %1 = ptrtoint ptr %0 to i32
  %add = add i32 %1, 8388608
  %and = and i32 %add, -8388608
  %call = tail call fastcc ptr @__get_vm_area_node(i32 noundef %size, i32 noundef 1, i32 noundef %flags, i32 noundef %and, i32 noundef -8388608, i32 noundef 3264, ptr noundef %caller)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @find_vm_area(ptr noundef %addr) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr to i32
  tail call void @_raw_spin_lock(ptr noundef nonnull @vmap_area_lock) #16
  %n.017.i.i = load ptr, ptr @vmap_area_root, align 4
  %tobool.not18.i.i = icmp eq ptr %n.017.i.i, null
  br i1 %tobool.not18.i.i, label %entry.find_vmap_area.exit.thread_crit_edge, label %entry.while.body.i.i_crit_edge

entry.while.body.i.i_crit_edge:                   ; preds = %entry
  br label %while.body.i.i

entry.find_vmap_area.exit.thread_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %find_vmap_area.exit.thread

while.body.i.i:                                   ; preds = %cleanup.i.i.while.body.i.i_crit_edge, %entry.while.body.i.i_crit_edge
  %n.019.i.i = phi ptr [ %n.0.i.i, %cleanup.i.i.while.body.i.i_crit_edge ], [ %n.017.i.i, %entry.while.body.i.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %n.019.i.i, i32 -8
  %1 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %0)
  %cmp.i.i = icmp ugt i32 %2, %0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %n.019.i.i, i32 0, i32 2
  br label %cleanup.i.i

if.else.i.i:                                      ; preds = %while.body.i.i
  %va_end.i.i = getelementptr i8, ptr %n.019.i.i, i32 -4
  %3 = ptrtoint ptr %va_end.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %va_end.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %0)
  %cmp1.not.i.i = icmp ugt i32 %4, %0
  br i1 %cmp1.not.i.i, label %find_vmap_area.exit, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %n.019.i.i, i32 0, i32 1
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.then2.i.i, %if.then.i.i
  %n.1.in.i.i = phi ptr [ %rb_left.i.i, %if.then.i.i ], [ %rb_right.i.i, %if.then2.i.i ]
  %5 = ptrtoint ptr %n.1.in.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %n.0.i.i = load ptr, ptr %n.1.in.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %n.0.i.i, null
  br i1 %tobool.not.i.i, label %cleanup.i.i.find_vmap_area.exit.thread_crit_edge, label %cleanup.i.i.while.body.i.i_crit_edge

cleanup.i.i.while.body.i.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i.i

cleanup.i.i.find_vmap_area.exit.thread_crit_edge: ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %find_vmap_area.exit.thread

find_vmap_area.exit.thread:                       ; preds = %cleanup.i.i.find_vmap_area.exit.thread_crit_edge, %entry.find_vmap_area.exit.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @vmap_area_lock) #16
  br label %cleanup

find_vmap_area.exit:                              ; preds = %if.else.i.i
  %add.ptr.i.i.le = getelementptr i8, ptr %n.019.i.i, i32 -8
  tail call void @_raw_spin_unlock(ptr noundef nonnull @vmap_area_lock) #16
  %tobool.not = icmp eq ptr %add.ptr.i.i.le, null
  br i1 %tobool.not, label %find_vmap_area.exit.cleanup_crit_edge, label %if.end

find_vmap_area.exit.cleanup_crit_edge:            ; preds = %find_vmap_area.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %find_vmap_area.exit
  call void @__sanitizer_cov_trace_pc() #18
  %6 = getelementptr i8, ptr %n.019.i.i, i32 20
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %find_vmap_area.exit.cleanup_crit_edge, %find_vmap_area.exit.thread
  %retval.0 = phi ptr [ %8, %if.end ], [ null, %find_vmap_area.exit.cleanup_crit_edge ], [ null, %find_vmap_area.exit.thread ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @remove_vm_area(ptr noundef %addr) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 2519) #16
  tail call void @_raw_spin_lock(ptr noundef nonnull @vmap_area_lock) #16
  %0 = ptrtoint ptr %addr to i32
  %n.017.i = load ptr, ptr @vmap_area_root, align 4
  %tobool.not18.i = icmp eq ptr %n.017.i, null
  br i1 %tobool.not18.i, label %entry.if.end_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %n.019.i = phi ptr [ %n.0.i, %cleanup.i.while.body.i_crit_edge ], [ %n.017.i, %entry.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %n.019.i, i32 -8
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %0)
  %cmp.i = icmp ugt i32 %2, %0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %n.019.i, i32 0, i32 2
  br label %cleanup.i

if.else.i:                                        ; preds = %while.body.i
  %va_end.i = getelementptr i8, ptr %n.019.i, i32 -4
  %3 = ptrtoint ptr %va_end.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %va_end.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %0)
  %cmp1.not.i = icmp ugt i32 %4, %0
  br i1 %cmp1.not.i, label %__find_vmap_area.exit, label %if.then2.i

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %n.019.i, i32 0, i32 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then2.i, %if.then.i
  %n.1.in.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then2.i ]
  %5 = ptrtoint ptr %n.1.in.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %n.0.i = load ptr, ptr %n.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %n.0.i, null
  br i1 %tobool.not.i, label %cleanup.i.if.end_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

cleanup.i.if.end_crit_edge:                       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

__find_vmap_area.exit:                            ; preds = %if.else.i
  %add.ptr.i.le = getelementptr i8, ptr %n.019.i, i32 -8
  %va_end.i.le = getelementptr i8, ptr %n.019.i, i32 -4
  %tobool.not = icmp eq ptr %add.ptr.i.le, null
  br i1 %tobool.not, label %__find_vmap_area.exit.if.end_crit_edge, label %land.lhs.true

__find_vmap_area.exit.if.end_crit_edge:           ; preds = %__find_vmap_area.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true:                                    ; preds = %__find_vmap_area.exit
  %6 = getelementptr i8, ptr %n.019.i, i32 20
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %tobool4.not = icmp eq ptr %8, null
  br i1 %tobool4.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %6, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @vmap_area_lock) #16
  tail call void @kasan_free_shadow(ptr noundef nonnull %8) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cacheid to i32))
  %10 = load i32, ptr @cacheid, align 4
  %and2.i.i.i = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then.free_unmap_vmap_area.exit_crit_edge

if.then.free_unmap_vmap_area.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %free_unmap_vmap_area.exit

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %11() #16
  br label %free_unmap_vmap_area.exit

free_unmap_vmap_area.exit:                        ; preds = %if.then.i.i, %if.then.free_unmap_vmap_area.exit_crit_edge
  %12 = ptrtoint ptr %add.ptr.i.le to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i.le, align 4
  %14 = ptrtoint ptr %va_end.i.le to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %va_end.i.le, align 4
  tail call void @vunmap_range_noflush(i32 noundef %13, i32 noundef %15) #16
  tail call fastcc void @free_vmap_area_noflush(ptr noundef nonnull %add.ptr.i.le) #16
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %__find_vmap_area.exit.if.end_crit_edge, %cleanup.i.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @vmap_area_lock) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %free_unmap_vmap_area.exit
  %retval.0 = phi ptr [ %8, %free_unmap_vmap_area.exit ], [ null, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kasan_free_shadow(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vfree_atomic(ptr noundef %addr) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !235) #16
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %3, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end6, label %do.body3, !prof !245

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2669, 0\0A.popsection", ""() #16, !srcloc !296
  unreachable

do.end6:                                          ; preds = %entry
  tail call void @kmemleak_free(ptr noundef %addr) #16
  %tobool7.not = icmp eq ptr %addr, null
  br i1 %tobool7.not, label %do.end6.return_crit_edge, label %if.end9

do.end6.return_crit_edge:                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end9:                                          ; preds = %do.end6
  %4 = tail call i32 @llvm.read_register.i32(metadata !235) #16
  %and.i.i12 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i12 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %9, ptrtoint (ptr @vfree_deferred to i32)
  %10 = inttoptr i32 %add.i to ptr
  %call.i.i = tail call zeroext i1 @llist_add_batch(ptr noundef nonnull %addr, ptr noundef nonnull %addr, ptr noundef %10) #16
  br i1 %call.i.i, label %if.then.i, label %if.end9.return_crit_edge

if.end9.return_crit_edge:                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  %wq.i = getelementptr inbounds %struct.vfree_deferred, ptr %10, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %11 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %11, ptr noundef %wq.i) #16
  br label %return

return:                                           ; preds = %if.then.i, %if.end9.return_crit_edge, %do.end6.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmemleak_free(ptr noundef) local_unnamed_addr #3 section ".ref.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__vfree_deferred(ptr noundef %addr) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %0 = tail call i32 @llvm.read_register.i32(metadata !235) #16
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @vfree_deferred to i32)
  %6 = inttoptr i32 %add to ptr
  %call.i = tail call zeroext i1 @llist_add_batch(ptr noundef %addr, ptr noundef %addr, ptr noundef %6) #16
  br i1 %call.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %wq = getelementptr inbounds %struct.vfree_deferred, ptr %6, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %7 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %wq) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vfree(ptr noundef %addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !235) #16
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %3, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end6, label %do.body3, !prof !245

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2705, 0\0A.popsection", ""() #16, !srcloc !297
  unreachable

do.end6:                                          ; preds = %entry
  tail call void @kmemleak_free(ptr noundef %addr) #16
  %4 = tail call i32 @llvm.read_register.i32(metadata !235) #16
  %and.i.i28 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i28 to ptr
  %preempt_count.i29 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i29 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i29, align 4
  %and9 = and i32 %7, 15728640
  %8 = tail call i32 @llvm.read_register.i32(metadata !235) #16
  %and.i.i30 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i30 to ptr
  %preempt_count.i31 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i31 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i31, align 4
  %and11 = and i32 %11, 983040
  %or = or i32 %and11, %and9
  %12 = tail call i32 @llvm.read_register.i32(metadata !235) #16
  %and.i.i32 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i32 to ptr
  %preempt_count.i33 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i33 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i33, align 4
  %and13 = and i32 %15, 65280
  %or14 = or i32 %or, %and13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or14)
  %tobool15.not = icmp eq i32 %or14, 0
  br i1 %tobool15.not, label %do.body17, label %do.end6.do.end22_crit_edge

do.end6.do.end22_crit_edge:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end22

do.body17:                                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 2709) #16
  br label %do.end22

do.end22:                                         ; preds = %do.body17, %do.end6.do.end22_crit_edge
  %tobool23.not = icmp eq ptr %addr, null
  br i1 %tobool23.not, label %do.end22.return_crit_edge, label %if.end25

do.end22.return_crit_edge:                        ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end25:                                         ; preds = %do.end22
  %16 = tail call i32 @llvm.read_register.i32(metadata !235) #16
  %and.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i, align 4
  %and.i = and i32 %19, 15728640
  %20 = tail call i32 @llvm.read_register.i32(metadata !235) #16
  %and.i.i9.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i9.i to ptr
  %preempt_count.i10.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i10.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i10.i, align 4
  %and2.i = and i32 %23, 983040
  %or.i = or i32 %and2.i, %and.i
  %24 = tail call i32 @llvm.read_register.i32(metadata !235) #16
  %and.i.i11.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i11.i to ptr
  %preempt_count.i12.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i12.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i12.i, align 4
  %and4.i = and i32 %27, 65280
  %or5.i = or i32 %or.i, %and4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i)
  %tobool.not.i = icmp eq i32 %or5.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !245

if.then.i:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @__vfree_deferred(ptr noundef nonnull %addr) #16
  br label %return

if.else.i:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @__vunmap(ptr noundef nonnull %addr, i32 noundef 1) #16
  br label %return

return:                                           ; preds = %if.else.i, %if.then.i, %do.end22.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vunmap(ptr noundef %addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !235) #16
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %3, 15728640
  %4 = tail call i32 @llvm.read_register.i32(metadata !235) #16
  %and.i.i20 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i20 to ptr
  %preempt_count.i21 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i21 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i21, align 4
  %and2 = and i32 %7, 983040
  %or = or i32 %and2, %and
  %8 = tail call i32 @llvm.read_register.i32(metadata !235) #16
  %and.i.i22 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i22 to ptr
  %preempt_count.i23 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i23 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i23, align 4
  %and4 = and i32 %11, 65280
  %or5 = or i32 %or, %and4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5)
  %tobool.not = icmp eq i32 %or5, 0
  br i1 %tobool.not, label %do.body12, label %do.body8, !prof !245

do.body8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2729, 0\0A.popsection", ""() #16, !srcloc !298
  unreachable

do.body12:                                        ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 2730) #16
  %tobool16.not = icmp eq ptr %addr, null
  br i1 %tobool16.not, label %do.body12.if.end18_crit_edge, label %if.then17

do.body12.if.end18_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

if.then17:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @__vunmap(ptr noundef nonnull %addr, i32 noundef 0)
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %do.body12.if.end18_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__vunmap(ptr noundef %addr, i32 noundef %deallocate_pages) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %addr, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %addr to i32
  %and = and i32 %0, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end25, label %do.end, !prof !245

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2609, i32 noundef 9, ptr noundef nonnull @.str.32, ptr noundef nonnull %addr) #16
  br label %cleanup

if.end25:                                         ; preds = %if.end
  tail call void @_raw_spin_lock(ptr noundef nonnull @vmap_area_lock) #16
  %n.017.i.i.i = load ptr, ptr @vmap_area_root, align 4
  %tobool.not18.i.i.i = icmp eq ptr %n.017.i.i.i, null
  br i1 %tobool.not18.i.i.i, label %if.end25.find_vmap_area.exit.thread.i_crit_edge, label %if.end25.while.body.i.i.i_crit_edge

if.end25.while.body.i.i.i_crit_edge:              ; preds = %if.end25
  br label %while.body.i.i.i

if.end25.find_vmap_area.exit.thread.i_crit_edge:  ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #18
  br label %find_vmap_area.exit.thread.i

while.body.i.i.i:                                 ; preds = %cleanup.i.i.i.while.body.i.i.i_crit_edge, %if.end25.while.body.i.i.i_crit_edge
  %n.019.i.i.i = phi ptr [ %n.0.i.i.i, %cleanup.i.i.i.while.body.i.i.i_crit_edge ], [ %n.017.i.i.i, %if.end25.while.body.i.i.i_crit_edge ]
  %add.ptr.i.i.i = getelementptr i8, ptr %n.019.i.i.i, i32 -8
  %1 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %add.ptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %0)
  %cmp.i.i.i = icmp ugt i32 %2, %0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %rb_left.i.i.i = getelementptr inbounds %struct.rb_node, ptr %n.019.i.i.i, i32 0, i32 2
  br label %cleanup.i.i.i

if.else.i.i.i:                                    ; preds = %while.body.i.i.i
  %va_end.i.i.i = getelementptr i8, ptr %n.019.i.i.i, i32 -4
  %3 = ptrtoint ptr %va_end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %va_end.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %0)
  %cmp1.not.i.i.i = icmp ugt i32 %4, %0
  br i1 %cmp1.not.i.i.i, label %find_vmap_area.exit.i, label %if.then2.i.i.i

if.then2.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %rb_right.i.i.i = getelementptr inbounds %struct.rb_node, ptr %n.019.i.i.i, i32 0, i32 1
  br label %cleanup.i.i.i

cleanup.i.i.i:                                    ; preds = %if.then2.i.i.i, %if.then.i.i.i
  %n.1.in.i.i.i = phi ptr [ %rb_left.i.i.i, %if.then.i.i.i ], [ %rb_right.i.i.i, %if.then2.i.i.i ]
  %5 = ptrtoint ptr %n.1.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %n.0.i.i.i = load ptr, ptr %n.1.in.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %n.0.i.i.i, null
  br i1 %tobool.not.i.i.i, label %cleanup.i.i.i.find_vmap_area.exit.thread.i_crit_edge, label %cleanup.i.i.i.while.body.i.i.i_crit_edge

cleanup.i.i.i.while.body.i.i.i_crit_edge:         ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i.i.i

cleanup.i.i.i.find_vmap_area.exit.thread.i_crit_edge: ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %find_vmap_area.exit.thread.i

find_vmap_area.exit.thread.i:                     ; preds = %cleanup.i.i.i.find_vmap_area.exit.thread.i_crit_edge, %if.end25.find_vmap_area.exit.thread.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @vmap_area_lock) #16
  br label %do.end48

find_vmap_area.exit.i:                            ; preds = %if.else.i.i.i
  %add.ptr.i.i.i.le = getelementptr i8, ptr %n.019.i.i.i, i32 -8
  tail call void @_raw_spin_unlock(ptr noundef nonnull @vmap_area_lock) #16
  %tobool.not.i = icmp eq ptr %add.ptr.i.i.i.le, null
  br i1 %tobool.not.i, label %find_vmap_area.exit.i.do.end48_crit_edge, label %find_vm_area.exit

find_vmap_area.exit.i.do.end48_crit_edge:         ; preds = %find_vmap_area.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end48

find_vm_area.exit:                                ; preds = %find_vmap_area.exit.i
  %6 = getelementptr i8, ptr %n.019.i.i.i, i32 20
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %tobool26.not = icmp eq ptr %8, null
  br i1 %tobool26.not, label %find_vm_area.exit.do.end48_crit_edge, label %if.end62, !prof !247

find_vm_area.exit.do.end48_crit_edge:             ; preds = %find_vm_area.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end48

do.end48:                                         ; preds = %find_vm_area.exit.do.end48_crit_edge, %find_vmap_area.exit.i.do.end48_crit_edge, %find_vmap_area.exit.thread.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2615, i32 noundef 9, ptr noundef nonnull @.str.33, ptr noundef nonnull %addr) #16
  br label %cleanup

if.end62:                                         ; preds = %find_vm_area.exit
  %addr63 = getelementptr inbounds %struct.vm_struct, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %addr63 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %addr63, align 4
  %flags.i = getelementptr inbounds %struct.vm_struct, ptr %8, i32 0, i32 3
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %12, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i124 = icmp eq i32 %and.i, 0
  %size.i = getelementptr inbounds %struct.vm_struct, ptr %8, i32 0, i32 2
  %13 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size.i, align 4
  %sub.i = add i32 %14, -4096
  %retval.0.i125 = select i1 %tobool.not.i124, i32 %sub.i, i32 %14
  tail call void @debug_check_no_locks_freed(ptr noundef %10, i32 noundef %retval.0.i125) #16
  %15 = ptrtoint ptr %addr63 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %addr63, align 4
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i, align 4
  %and.i127 = and i32 %18, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i127)
  %tobool.not.i128 = icmp eq i32 %and.i127, 0
  %19 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size.i, align 4
  %sub.i130 = add i32 %20, -4096
  %retval.0.i131 = select i1 %tobool.not.i128, i32 %sub.i130, i32 %20
  tail call void @debug_check_no_obj_freed(ptr noundef %16, i32 noundef %retval.0.i131) #16
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.i, align 4
  %and.i139 = and i32 %22, 256
  %23 = ptrtoint ptr %addr63 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %addr63, align 4
  %call1.i = tail call ptr @remove_vm_area(ptr noundef %24) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i139)
  %tobool.not.i140 = icmp eq i32 %and.i139, 0
  br i1 %tobool.not.i140, label %if.end62.vm_remove_mappings.exit_crit_edge, label %if.end.i141

if.end62.vm_remove_mappings.exit_crit_edge:       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #18
  br label %vm_remove_mappings.exit

if.end.i141:                                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %deallocate_pages)
  %tobool2.not.i = icmp eq i32 %deallocate_pages, 0
  br i1 %tobool2.not.i, label %vm_remove_mappings.exit.thread, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end.i141
  %nr_pages.i = getelementptr inbounds %struct.vm_struct, ptr %8, i32 0, i32 5
  %25 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nr_pages.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp57.not.i = icmp eq i32 %26, 0
  br i1 %cmp57.not.i, label %for.cond.preheader.i.set_area_direct_map.exit.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.set_area_direct_map.exit.i_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %set_area_direct_map.exit.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %pages.i = getelementptr inbounds %struct.vm_struct, ptr %8, i32 0, i32 4
  br label %for.body.i

vm_remove_mappings.exit.thread:                   ; preds = %if.end.i141
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @_vm_unmap_aliases(i32 noundef -1, i32 noundef 0, i32 noundef 0) #16
  br label %if.end97

for.body.i:                                       ; preds = %if.end16.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %start.061.i = phi i32 [ -1, %for.body.lr.ph.i ], [ %start.1.i, %if.end16.i.for.body.i_crit_edge ]
  %end.060.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %end.1.i, %if.end16.i.for.body.i_crit_edge ]
  %i.059.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add18.i, %if.end16.i.for.body.i_crit_edge ]
  %flush_dmap.058.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %flush_dmap.1.i, %if.end16.i.for.body.i_crit_edge ]
  %27 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pages.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %28, i32 %i.059.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i, align 4
  %call6.i = tail call ptr @page_address(ptr noundef %30) #16
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %for.body.i.if.end16.i_crit_edge, label %if.then8.i

for.body.i.if.end16.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16.i

if.then8.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %31 = ptrtoint ptr %call6.i to i32
  %32 = tail call i32 @llvm.umin.i32(i32 %start.061.i, i32 %31) #16
  %add.i = add i32 %31, 4096
  %33 = tail call i32 @llvm.umax.i32(i32 %add.i, i32 %end.060.i) #16
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then8.i, %for.body.i.if.end16.i_crit_edge
  %flush_dmap.1.i = phi i32 [ 1, %if.then8.i ], [ %flush_dmap.058.i, %for.body.i.if.end16.i_crit_edge ]
  %end.1.i = phi i32 [ %33, %if.then8.i ], [ %end.060.i, %for.body.i.if.end16.i_crit_edge ]
  %start.1.i = phi i32 [ %32, %if.then8.i ], [ %start.061.i, %for.body.i.if.end16.i_crit_edge ]
  %add18.i = add nuw i32 %i.059.i, 1
  %34 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nr_pages.i, align 4
  %cmp.i = icmp ult i32 %add18.i, %35
  br i1 %cmp.i, label %if.end16.i.for.body.i_crit_edge, label %for.end.i

if.end16.i.for.body.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.end.i:                                        ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %phi.cmp.i = icmp eq i32 %35, 0
  br i1 %phi.cmp.i, label %for.end.i.set_area_direct_map.exit.i_crit_edge, label %for.end.i.for.body.i.i_crit_edge

for.end.i.for.body.i.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body.i.i

for.end.i.set_area_direct_map.exit.i_crit_edge:   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %set_area_direct_map.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.end.i.for.body.i.i_crit_edge
  %i.010.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.end.i.for.body.i.i_crit_edge ]
  %36 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pages.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %37, i32 %i.010.i.i
  %38 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i142 = tail call ptr @page_address(ptr noundef %39) #16
  %inc.i.i = add nuw i32 %i.010.i.i, 1
  %40 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nr_pages.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %41
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.set_area_direct_map.exit.i_crit_edge

for.body.i.i.set_area_direct_map.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %set_area_direct_map.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

set_area_direct_map.exit.i:                       ; preds = %for.body.i.i.set_area_direct_map.exit.i_crit_edge, %for.end.i.set_area_direct_map.exit.i_crit_edge, %for.cond.preheader.i.set_area_direct_map.exit.i_crit_edge
  %start.0.lcssa72.i = phi i32 [ %start.1.i, %for.end.i.set_area_direct_map.exit.i_crit_edge ], [ -1, %for.cond.preheader.i.set_area_direct_map.exit.i_crit_edge ], [ %start.1.i, %for.body.i.i.set_area_direct_map.exit.i_crit_edge ]
  %end.0.lcssa71.i = phi i32 [ %end.1.i, %for.end.i.set_area_direct_map.exit.i_crit_edge ], [ 0, %for.cond.preheader.i.set_area_direct_map.exit.i_crit_edge ], [ %end.1.i, %for.body.i.i.set_area_direct_map.exit.i_crit_edge ]
  %flush_dmap.0.lcssa70.i = phi i32 [ %flush_dmap.1.i, %for.end.i.set_area_direct_map.exit.i_crit_edge ], [ 0, %for.cond.preheader.i.set_area_direct_map.exit.i_crit_edge ], [ %flush_dmap.1.i, %for.body.i.i.set_area_direct_map.exit.i_crit_edge ]
  tail call fastcc void @_vm_unmap_aliases(i32 noundef %start.0.lcssa72.i, i32 noundef %end.0.lcssa71.i, i32 noundef %flush_dmap.0.lcssa70.i) #16
  %42 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nr_pages.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp9.not.i42.i = icmp eq i32 %43, 0
  br i1 %cmp9.not.i42.i, label %set_area_direct_map.exit.i.vm_remove_mappings.exit_crit_edge, label %for.body.lr.ph.i44.i

set_area_direct_map.exit.i.vm_remove_mappings.exit_crit_edge: ; preds = %set_area_direct_map.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vm_remove_mappings.exit

for.body.lr.ph.i44.i:                             ; preds = %set_area_direct_map.exit.i
  %pages.i43.i = getelementptr inbounds %struct.vm_struct, ptr %8, i32 0, i32 4
  br label %for.body.i49.i

for.body.i49.i:                                   ; preds = %for.body.i49.i.for.body.i49.i_crit_edge, %for.body.lr.ph.i44.i
  %i.010.i45.i = phi i32 [ 0, %for.body.lr.ph.i44.i ], [ %inc.i53.i, %for.body.i49.i.for.body.i49.i_crit_edge ]
  %44 = ptrtoint ptr %pages.i43.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pages.i43.i, align 4
  %arrayidx.i46.i = getelementptr ptr, ptr %45, i32 %i.010.i45.i
  %46 = ptrtoint ptr %arrayidx.i46.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i46.i, align 4
  %call.i47.i = tail call ptr @page_address(ptr noundef %47) #16
  %inc.i53.i = add nuw i32 %i.010.i45.i, 1
  %48 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %nr_pages.i, align 4
  %cmp.i54.i = icmp ult i32 %inc.i53.i, %49
  br i1 %cmp.i54.i, label %for.body.i49.i.for.body.i49.i_crit_edge, label %for.body.i49.i.vm_remove_mappings.exit_crit_edge

for.body.i49.i.vm_remove_mappings.exit_crit_edge: ; preds = %for.body.i49.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vm_remove_mappings.exit

for.body.i49.i.for.body.i49.i_crit_edge:          ; preds = %for.body.i49.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i49.i

vm_remove_mappings.exit:                          ; preds = %for.body.i49.i.vm_remove_mappings.exit_crit_edge, %set_area_direct_map.exit.i.vm_remove_mappings.exit_crit_edge, %if.end62.vm_remove_mappings.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %deallocate_pages)
  %tobool69.not = icmp eq i32 %deallocate_pages, 0
  br i1 %tobool69.not, label %vm_remove_mappings.exit.if.end97_crit_edge, label %for.cond.preheader

vm_remove_mappings.exit.if.end97_crit_edge:       ; preds = %vm_remove_mappings.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end97

for.cond.preheader:                               ; preds = %vm_remove_mappings.exit
  %nr_pages = getelementptr inbounds %struct.vm_struct, ptr %8, i32 0, i32 5
  %50 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %nr_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp72151.not = icmp eq i32 %51, 0
  br i1 %cmp72151.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %pages = getelementptr inbounds %struct.vm_struct, ptr %8, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %do.end92.for.body_crit_edge, %for.body.lr.ph
  %i.0152 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %do.end92.for.body_crit_edge ]
  %52 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pages, align 4
  %arrayidx = getelementptr ptr, ptr %53, i32 %i.0152
  %54 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx, align 4
  %tobool74.not = icmp eq ptr %55, null
  br i1 %tobool74.not, label %do.body84, label %do.end92, !prof !247

do.body84:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2633, 0\0A.popsection", ""() #16, !srcloc !299
  unreachable

do.end92:                                         ; preds = %for.body
  tail call fastcc void @mod_memcg_page_state(ptr noundef nonnull %55, i32 noundef -1)
  tail call void @__free_pages(ptr noundef nonnull %55, i32 noundef 0) #16
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 2636, i32 noundef 0) #16
  %call.i = tail call i32 @__cond_resched() #16
  %add = add nuw i32 %i.0152, 1
  %56 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %nr_pages, align 4
  %cmp72 = icmp ult i32 %add, %57
  br i1 %cmp72, label %do.end92.for.body_crit_edge, label %do.end92.for.end_crit_edge

do.end92.for.end_crit_edge:                       ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

do.end92.for.body_crit_edge:                      ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %do.end92.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %57, %do.end92.for.end_crit_edge ]
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @nr_vmalloc_pages, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr nonnull @nr_vmalloc_pages, i32 1, i32 3, i32 1) #16
  %58 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nr_vmalloc_pages, ptr nonnull @nr_vmalloc_pages, i32 %.lcssa, ptr nonnull elementtype(i32) @nr_vmalloc_pages) #16, !srcloc !300
  %pages96 = getelementptr inbounds %struct.vm_struct, ptr %8, i32 0, i32 4
  %59 = ptrtoint ptr %pages96 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pages96, align 4
  tail call void @kvfree(ptr noundef %60) #16
  br label %if.end97

if.end97:                                         ; preds = %for.end, %vm_remove_mappings.exit.if.end97_crit_edge, %vm_remove_mappings.exit.thread
  tail call void @kfree(ptr noundef nonnull %8) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end97, %do.end48, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vmap(ptr noundef %pages, i32 noundef %count, i32 noundef %flags, i32 noundef %prot) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 2758) #16
  %and = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end34_crit_edge, label %land.rhs

entry.if.end34_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end34

land.rhs:                                         ; preds = %entry
  %.b81 = load i1, ptr @vmap.__already_done, align 1
  br i1 %.b81, label %land.rhs.if.end34_crit_edge, label %if.then, !prof !245

land.rhs.if.end34_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end34

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @vmap.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2764, i32 noundef 9, ptr noundef null) #16
  br label %if.end34

if.end34:                                         ; preds = %if.then, %land.rhs.if.end34_crit_edge, %entry.if.end34_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @_totalram_pages, i32 noundef 4) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @_totalram_pages to i32))
  %0 = load volatile i32, ptr @_totalram_pages, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %count)
  %cmp = icmp ult i32 %0, %count
  br i1 %cmp, label %if.end34.cleanup_crit_edge, label %if.end47

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end47:                                         ; preds = %if.end34
  %and44 = and i32 %flags, -65
  %shl = shl i32 %count, 12
  %1 = tail call ptr @llvm.returnaddress(i32 0)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %2 = load ptr, ptr @high_memory, align 4
  %3 = ptrtoint ptr %2 to i32
  %add.i = add i32 %3, 8388608
  %and.i = and i32 %add.i, -8388608
  %call.i = tail call fastcc ptr @__get_vm_area_node(i32 noundef %shl, i32 noundef 1, i32 noundef %and44, i32 noundef %and.i, i32 noundef -8388608, i32 noundef 3264, ptr noundef %1) #16
  %tobool49.not = icmp eq ptr %call.i, null
  br i1 %tobool49.not, label %if.end47.cleanup_crit_edge, label %if.end51

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end51:                                         ; preds = %if.end47
  %addr52 = getelementptr inbounds %struct.vm_struct, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %addr52 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %addr52, align 4
  %6 = ptrtoint ptr %5 to i32
  %add = add i32 %shl, %6
  %call.i82 = tail call i32 @vmap_pages_range_noflush(i32 noundef %6, i32 noundef %add, i32 noundef %prot, ptr noundef %pages, i32 noundef 12) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cacheid to i32))
  %7 = load i32, ptr @cacheid, align 4
  %and2.i.i.i = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %8() #16
  br label %vmap_pages_range.exit

if.else.i.i:                                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !250
  br label %vmap_pages_range.exit

vmap_pages_range.exit:                            ; preds = %if.else.i.i, %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82)
  %cmp54 = icmp slt i32 %call.i82, 0
  br i1 %cmp54, label %if.then55, label %if.end57

if.then55:                                        ; preds = %vmap_pages_range.exit
  %9 = ptrtoint ptr %addr52 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %addr52, align 4
  %11 = tail call i32 @llvm.read_register.i32(metadata !235) #16
  %and.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i, align 4
  %and.i83 = and i32 %14, 15728640
  %15 = tail call i32 @llvm.read_register.i32(metadata !235) #16
  %and.i.i20.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i20.i to ptr
  %preempt_count.i21.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i21.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i21.i, align 4
  %and2.i = and i32 %18, 983040
  %or.i = or i32 %and2.i, %and.i83
  %19 = tail call i32 @llvm.read_register.i32(metadata !235) #16
  %and.i.i22.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i22.i to ptr
  %preempt_count.i23.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i23.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i23.i, align 4
  %and4.i = and i32 %22, 65280
  %or5.i = or i32 %or.i, %and4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i)
  %tobool.not.i = icmp eq i32 %or5.i, 0
  br i1 %tobool.not.i, label %do.body12.i, label %do.body8.i, !prof !245

do.body8.i:                                       ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2729, 0\0A.popsection", ""() #16, !srcloc !298
  unreachable

do.body12.i:                                      ; preds = %if.then55
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 2730) #16
  %tobool16.not.i = icmp eq ptr %10, null
  br i1 %tobool16.not.i, label %do.body12.i.cleanup_crit_edge, label %if.then17.i

do.body12.i.cleanup_crit_edge:                    ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then17.i:                                      ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @__vunmap(ptr noundef nonnull %10, i32 noundef 0) #16
  br label %cleanup

if.end57:                                         ; preds = %vmap_pages_range.exit
  %and58 = and i32 %flags, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.end57.if.end62_crit_edge, label %if.then60

if.end57.if.end62_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end62

if.then60:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #18
  %pages61 = getelementptr inbounds %struct.vm_struct, ptr %call.i, i32 0, i32 4
  %23 = ptrtoint ptr %pages61 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %pages, ptr %pages61, align 4
  %nr_pages = getelementptr inbounds %struct.vm_struct, ptr %call.i, i32 0, i32 5
  %24 = ptrtoint ptr %nr_pages to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %count, ptr %nr_pages, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %if.end57.if.end62_crit_edge
  %25 = ptrtoint ptr %addr52 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %addr52, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %if.then17.i, %do.body12.i.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %if.end34.cleanup_crit_edge
  %retval.0 = phi ptr [ %26, %if.end62 ], [ null, %if.end34.cleanup_crit_edge ], [ null, %if.end47.cleanup_crit_edge ], [ null, %do.body12.i.cleanup_crit_edge ], [ null, %if.then17.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong allocsize(0) uwtable(sync)
define dso_local noalias ptr @__vmalloc_node_range(i32 noundef %size, i32 noundef %align, i32 noundef %start, i32 noundef %end, i32 noundef %gfp_mask, i32 noundef %prot, i32 noundef %vm_flags, i32 noundef %node, ptr noundef %caller) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not = icmp eq i32 %size, 0
  br i1 %tobool.not, label %land.rhs, label %if.end39

land.rhs:                                         ; preds = %entry
  %.b94 = load i1, ptr @__vmalloc_node_range.__already_done, align 1
  br i1 %.b94, label %land.rhs.cleanup65_crit_edge, label %if.then, !prof !245

land.rhs.cleanup65_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup65

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__vmalloc_node_range.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3059, i32 noundef 9, ptr noundef null) #16
  br label %cleanup65

if.end39:                                         ; preds = %entry
  %shr = lshr i32 %size, 12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @_totalram_pages, i32 noundef 4) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @_totalram_pages to i32))
  %0 = load volatile i32, ptr @_totalram_pages, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %0)
  %cmp = icmp ugt i32 %shr, %0
  br i1 %cmp, label %if.then40, label %again.preheader

again.preheader:                                  ; preds = %if.end39
  %or = or i32 %vm_flags, 34
  %call42149 = tail call fastcc ptr @__get_vm_area_node(i32 noundef %size, i32 noundef %align, i32 noundef %or, i32 noundef %start, i32 noundef %end, i32 noundef %gfp_mask, ptr noundef %caller)
  %tobool43.not150 = icmp eq ptr %call42149, null
  %and = and i32 %gfp_mask, 32768
  br i1 %tobool43.not150, label %if.then44.lr.ph, label %again.preheader.if.end52_crit_edge

again.preheader.if.end52_crit_edge:               ; preds = %again.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end52

if.then44.lr.ph:                                  ; preds = %again.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool45.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool45.not, ptr @.str.12, ptr @.str.11
  tail call void (i32, ptr, ptr, ...) @warn_alloc(i32 noundef %gfp_mask, ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef %size, ptr noundef nonnull %cond) #16
  br i1 %tobool45.not, label %if.then44.lr.ph.cleanup65_crit_edge, label %cleanup.preheader

if.then44.lr.ph.cleanup65_crit_edge:              ; preds = %if.then44.lr.ph
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup65

cleanup.preheader:                                ; preds = %if.then44.lr.ph
  %call50164 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #16
  %call42165 = tail call fastcc ptr @__get_vm_area_node(i32 noundef %size, i32 noundef %align, i32 noundef %or, i32 noundef %start, i32 noundef %end, i32 noundef %gfp_mask, ptr noundef %caller)
  %tobool43.not166 = icmp eq ptr %call42165, null
  br i1 %tobool43.not166, label %cleanup.preheader.cleanup.critedge_crit_edge, label %cleanup.preheader.if.end52_crit_edge

cleanup.preheader.if.end52_crit_edge:             ; preds = %cleanup.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end52

cleanup.preheader.cleanup.critedge_crit_edge:     ; preds = %cleanup.preheader
  br label %cleanup.critedge

if.then40:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (i32, ptr, ptr, ...) @warn_alloc(i32 noundef %gfp_mask, ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef %size) #16
  br label %cleanup65

cleanup.critedge:                                 ; preds = %cleanup.critedge.cleanup.critedge_crit_edge, %cleanup.preheader.cleanup.critedge_crit_edge
  tail call void (i32, ptr, ptr, ...) @warn_alloc(i32 noundef %gfp_mask, ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef %size, ptr noundef nonnull %cond) #16
  %call50 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #16
  %call42 = tail call fastcc ptr @__get_vm_area_node(i32 noundef %size, i32 noundef %align, i32 noundef %or, i32 noundef %start, i32 noundef %end, i32 noundef %gfp_mask, ptr noundef %caller)
  %tobool43.not = icmp eq ptr %call42, null
  br i1 %tobool43.not, label %cleanup.critedge.cleanup.critedge_crit_edge, label %cleanup.critedge.if.end52_crit_edge

cleanup.critedge.if.end52_crit_edge:              ; preds = %cleanup.critedge
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end52

cleanup.critedge.cleanup.critedge_crit_edge:      ; preds = %cleanup.critedge
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.critedge

if.end52:                                         ; preds = %cleanup.critedge.if.end52_crit_edge, %cleanup.preheader.if.end52_crit_edge, %again.preheader.if.end52_crit_edge
  %and1.i.pre-phi = phi i32 [ %and, %again.preheader.if.end52_crit_edge ], [ 1, %cleanup.preheader.if.end52_crit_edge ], [ 1, %cleanup.critedge.if.end52_crit_edge ]
  %call42.lcssa = phi ptr [ %call42149, %again.preheader.if.end52_crit_edge ], [ %call42165, %cleanup.preheader.if.end52_crit_edge ], [ %call42, %cleanup.critedge.if.end52_crit_edge ]
  %and.i = and i32 %gfp_mask, 34336480
  %or.i = or i32 %and.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.pre-phi)
  %tobool.not.i = icmp ne i32 %and1.i.pre-phi, 0
  %addr2.i = getelementptr inbounds %struct.vm_struct, ptr %call42.lcssa, i32 0, i32 1
  %1 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %addr2.i, align 4
  %3 = ptrtoint ptr %2 to i32
  %flags.i138 = getelementptr inbounds %struct.vm_struct, ptr %call42.lcssa, i32 0, i32 3
  %4 = ptrtoint ptr %flags.i138 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i138, align 4
  %and.i139 = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i139)
  %tobool.not.i140 = icmp eq i32 %and.i139, 0
  %size.i = getelementptr inbounds %struct.vm_struct, ptr %call42.lcssa, i32 0, i32 2
  %6 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size.i, align 4
  %sub.i141 = add i32 %7, -4096
  %retval.0.i142 = select i1 %tobool.not.i140, i32 %sub.i141, i32 %7
  %shr.i = lshr i32 %retval.0.i142, 12
  %mul.i = shl nuw nsw i32 %shr.i, 2
  %and4.i = and i32 %gfp_mask, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  %spec.select.i.v = select i1 %tobool5.not.i, i32 8194, i32 8192
  %spec.select.i = or i32 %spec.select.i.v, %gfp_mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 4198399, i32 %retval.0.i142)
  %cmp.i = icmp ugt i32 %retval.0.i142, 4198399
  br i1 %cmp.i, label %if.then7.i, label %if.end5.i.i

if.then7.i:                                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #18
  %caller.i = getelementptr inbounds %struct.vm_struct, ptr %call42.lcssa, i32 0, i32 7
  %8 = ptrtoint ptr %caller.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %caller.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %10 = load ptr, ptr @high_memory, align 4
  %11 = ptrtoint ptr %10 to i32
  %add.i134 = add i32 %11, 8388608
  %and.i135 = and i32 %add.i134, -8388608
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %12 = load i32, ptr @pgprot_kernel, align 4
  %or.i136 = or i32 %12, 512
  %call.i137 = tail call noalias ptr @__vmalloc_node_range(i32 noundef %mul.i, i32 noundef 1, i32 noundef %and.i135, i32 noundef -8388608, i32 noundef %or.i, i32 noundef %or.i136, i32 noundef 0, i32 noundef %node, ptr noundef %9) #23
  br label %if.end11.i

if.end5.i.i:                                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #18
  %call.i4.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i, i32 noundef %or.i) #23
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.end5.i.i, %if.then7.i
  %retval.1.i.i.sink = phi ptr [ %call.i137, %if.then7.i ], [ %call.i4.i.i, %if.end5.i.i ]
  %pages10.i = getelementptr inbounds %struct.vm_struct, ptr %call42.lcssa, i32 0, i32 4
  %13 = ptrtoint ptr %pages10.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %retval.1.i.i.sink, ptr %pages10.i, align 4
  %tobool13.not.i = icmp eq ptr %retval.1.i.i.sink, null
  br i1 %tobool13.not.i, label %if.then14.i, label %if.end16.i

if.then14.i:                                      ; preds = %if.end11.i
  %mul15.i = and i32 %retval.0.i142, -4096
  tail call void (i32, ptr, ptr, ...) @warn_alloc(i32 noundef %gfp_mask, ptr noundef null, ptr noundef nonnull @.str.42, i32 noundef %mul15.i, i32 noundef %mul.i) #16
  %14 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %addr2.i, align 4
  %call.i133 = tail call ptr @remove_vm_area(ptr noundef %15) #16
  %cmp.not.i = icmp eq ptr %call.i133, %call42.lcssa
  br i1 %cmp.not.i, label %free_vm_area.exit, label %do.body2.i, !prof !245

do.body2.i:                                       ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3552, 0\0A.popsection", ""() #16, !srcloc !301
  unreachable

free_vm_area.exit:                                ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree(ptr noundef nonnull %call42.lcssa) #16
  br label %cleanup65

if.end16.i:                                       ; preds = %if.end11.i
  %and.i123 = and i32 %spec.select.i, -32769
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %node)
  %cmp.i.i = icmp eq i32 %node, -1
  %spec.select.i.i = select i1 %cmp.i.i, i32 0, i32 %node
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end16.i
  %nr_allocated.0.i = phi i32 [ 0, %if.end16.i ], [ %add.i125, %while.body.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %nr_allocated.0.i)
  %cmp.i124 = icmp ugt i32 %shr.i, %nr_allocated.0.i
  br i1 %cmp.i124, label %while.body.i, label %while.cond.i.if.end7.i_crit_edge

while.cond.i.if.end7.i_crit_edge:                 ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7.i

while.body.i:                                     ; preds = %while.cond.i
  %sub.i = sub i32 %shr.i, %nr_allocated.0.i
  %16 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 100) #16
  %add.ptr.i = getelementptr ptr, ptr %retval.1.i.i.sink, i32 %nr_allocated.0.i
  %call1.i.i = tail call i32 @__alloc_pages_bulk(i32 noundef %and.i123, i32 noundef %spec.select.i.i, ptr noundef null, i32 noundef %16, ptr noundef null, ptr noundef %add.ptr.i) #16
  %add.i125 = add i32 %call1.i.i, %nr_allocated.0.i
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 2879, i32 noundef 0) #16
  %call.i.i = tail call i32 @__cond_resched() #16
  %cmp4.not.i = icmp eq i32 %call1.i.i, %16
  br i1 %cmp4.not.i, label %while.body.i.while.cond.i_crit_edge, label %while.body.i.if.end7.i_crit_edge

while.body.i.if.end7.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7.i

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.i

if.end7.i:                                        ; preds = %while.body.i.if.end7.i_crit_edge, %while.cond.i.if.end7.i_crit_edge
  %nr_allocated.1.i = phi i32 [ %add.i125, %while.body.i.if.end7.i_crit_edge ], [ %nr_allocated.0.i, %while.cond.i.if.end7.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %nr_allocated.1.i, i32 %shr.i)
  %cmp94.i = icmp ult i32 %nr_allocated.1.i, %shr.i
  br i1 %cmp94.i, label %if.end7.i.while.body10.i_crit_edge, label %if.end7.i.vm_area_alloc_pages.exit_crit_edge

if.end7.i.vm_area_alloc_pages.exit_crit_edge:     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vm_area_alloc_pages.exit

if.end7.i.while.body10.i_crit_edge:               ; preds = %if.end7.i
  br label %while.body10.i

while.body10.i:                                   ; preds = %for.body.i132.while.body10.i_crit_edge, %if.end7.i.while.body10.i_crit_edge
  %nr_allocated.35.i = phi i32 [ %add34.i, %for.body.i132.while.body10.i_crit_edge ], [ %nr_allocated.1.i, %if.end7.i.while.body10.i_crit_edge ]
  %17 = tail call i32 @llvm.read_register.i32(metadata !235) #16
  %and.i.i126 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i126 to ptr
  %task.i127 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task.i127 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task.i127, align 8
  %stack.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %stack.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %stack.i.i.i.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %22, align 4
  %and1.i.i.i.i.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool.not.i.i128 = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i128, label %while.body10.i.if.end15.i_crit_edge, label %fatal_signal_pending.exit.i

while.body10.i.if.end15.i_crit_edge:              ; preds = %while.body10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.i

fatal_signal_pending.exit.i:                      ; preds = %while.body10.i
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 116, i32 1
  %25 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %signal.i.i.i, align 4
  %27 = and i32 %26, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool13.not.i129 = icmp eq i32 %27, 0
  br i1 %tobool13.not.i129, label %fatal_signal_pending.exit.i.if.end15.i_crit_edge, label %fatal_signal_pending.exit.i.vm_area_alloc_pages.exit_crit_edge

fatal_signal_pending.exit.i.vm_area_alloc_pages.exit_crit_edge: ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vm_area_alloc_pages.exit

fatal_signal_pending.exit.i.if.end15.i_crit_edge: ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.i

if.end15.i:                                       ; preds = %fatal_signal_pending.exit.i.if.end15.i_crit_edge, %while.body10.i.if.end15.i_crit_edge
  %28 = zext i32 %node to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %node, label %do.body3.i.i.i [
    i32 -1, label %if.end15.i.if.end21.i_crit_edge
    i32 0, label %if.end15.i.if.end21.i_crit_edge172
  ], !prof !302

if.end15.i.if.end21.i_crit_edge172:               ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end21.i

if.end15.i.if.end21.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end21.i

do.body3.i.i.i:                                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/gfp.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 569, 0\0A.popsection", ""() #16, !srcloc !303
  unreachable

if.end21.i:                                       ; preds = %if.end15.i.if.end21.i_crit_edge, %if.end15.i.if.end21.i_crit_edge172
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef %spec.select.i, i32 noundef 0, i32 noundef 0, ptr noundef null) #16
  %tobool22.not.i130 = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool22.not.i130, label %if.end21.i.vm_area_alloc_pages.exit_crit_edge, label %for.body.i132, !prof !247

if.end21.i.vm_area_alloc_pages.exit_crit_edge:    ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vm_area_alloc_pages.exit

for.body.i132:                                    ; preds = %if.end21.i
  %arrayidx.i131 = getelementptr ptr, ptr %retval.1.i.i.sink, i32 %nr_allocated.35.i
  %29 = ptrtoint ptr %arrayidx.i131 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call38.i.i.i, ptr %arrayidx.i131, align 4
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 2916, i32 noundef 0) #16
  %call.i1.i = tail call i32 @__cond_resched() #16
  %add34.i = add i32 %nr_allocated.35.i, 1
  %exitcond.not.i = icmp eq i32 %add34.i, %shr.i
  br i1 %exitcond.not.i, label %for.body.i132.vm_area_alloc_pages.exit_crit_edge, label %for.body.i132.while.body10.i_crit_edge

for.body.i132.while.body10.i_crit_edge:           ; preds = %for.body.i132
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body10.i

for.body.i132.vm_area_alloc_pages.exit_crit_edge: ; preds = %for.body.i132
  call void @__sanitizer_cov_trace_pc() #18
  br label %vm_area_alloc_pages.exit

vm_area_alloc_pages.exit:                         ; preds = %for.body.i132.vm_area_alloc_pages.exit_crit_edge, %if.end21.i.vm_area_alloc_pages.exit_crit_edge, %fatal_signal_pending.exit.i.vm_area_alloc_pages.exit_crit_edge, %if.end7.i.vm_area_alloc_pages.exit_crit_edge
  %nr_allocated.3.lcssa.i = phi i32 [ %nr_allocated.1.i, %if.end7.i.vm_area_alloc_pages.exit_crit_edge ], [ %nr_allocated.35.i, %if.end21.i.vm_area_alloc_pages.exit_crit_edge ], [ %nr_allocated.35.i, %fatal_signal_pending.exit.i.vm_area_alloc_pages.exit_crit_edge ], [ %shr.i, %for.body.i132.vm_area_alloc_pages.exit_crit_edge ]
  %nr_pages.i = getelementptr inbounds %struct.vm_struct, ptr %call42.lcssa, i32 0, i32 5
  %30 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %nr_allocated.3.lcssa.i, ptr %nr_pages.i, align 4
  %call.i.i3.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @nr_vmalloc_pages, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr nonnull @nr_vmalloc_pages, i32 1, i32 3, i32 1) #16
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nr_vmalloc_pages, ptr nonnull @nr_vmalloc_pages, i32 %nr_allocated.3.lcssa.i, ptr nonnull elementtype(i32) @nr_vmalloc_pages) #16, !srcloc !304
  %and21.i = and i32 %gfp_mask, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %vm_area_alloc_pages.exit.if.end27.i_crit_edge, label %for.cond.i.preheader

vm_area_alloc_pages.exit.if.end27.i_crit_edge:    ; preds = %vm_area_alloc_pages.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27.i

for.cond.i.preheader:                             ; preds = %vm_area_alloc_pages.exit
  %32 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nr_pages.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp25.i151.not = icmp eq i32 %33, 0
  br i1 %cmp25.i151.not, label %for.cond.i.preheader.if.end27.i_crit_edge, label %for.cond.i.preheader.for.body.i_crit_edge

for.cond.i.preheader.for.body.i_crit_edge:        ; preds = %for.cond.i.preheader
  br label %for.body.i

for.cond.i.preheader.if.end27.i_crit_edge:        ; preds = %for.cond.i.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.i.preheader.for.body.i_crit_edge
  %i.0.i152 = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.i.preheader.for.body.i_crit_edge ]
  %34 = ptrtoint ptr %pages10.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pages10.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %35, i32 %i.0.i152
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i, align 4
  tail call fastcc void @mod_memcg_page_state(ptr noundef %37, i32 noundef 1) #16
  %add.i = add nuw i32 %i.0.i152, 1
  %38 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nr_pages.i, align 4
  %cmp25.i = icmp ult i32 %add.i, %39
  br i1 %cmp25.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end27.i_crit_edge

for.body.i.if.end27.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

if.end27.i:                                       ; preds = %for.body.i.if.end27.i_crit_edge, %for.cond.i.preheader.if.end27.i_crit_edge, %vm_area_alloc_pages.exit.if.end27.i_crit_edge
  %40 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nr_pages.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %shr.i)
  %cmp29.not.i = icmp eq i32 %41, %shr.i
  br i1 %cmp29.not.i, label %if.end33.i, label %if.then30.i

if.then30.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #18
  %mul32.i = shl i32 %41, 12
  tail call void (i32, ptr, ptr, ...) @warn_alloc(i32 noundef %gfp_mask, ptr noundef null, ptr noundef nonnull @.str.43, i32 noundef %mul32.i, i32 noundef 0) #16
  br label %fail.i

if.end33.i:                                       ; preds = %if.end27.i
  %and34.i = and i32 %gfp_mask, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %and34.i)
  %cmp35.i = icmp eq i32 %and34.i, 64
  br i1 %cmp35.i, label %if.then36.i, label %if.else38.i

if.then36.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #18
  %42 = tail call i32 @llvm.read_register.i32(metadata !235) #16
  %and.i.i118 = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i118 to ptr
  %task.i119 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %task.i119 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %task.i119, align 8
  %flags1.i120 = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %flags1.i120 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags1.i120, align 4
  %and.i121 = and i32 %47, 262144
  %or.i122 = or i32 %47, 262144
  store i32 %or.i122, ptr %flags1.i120, align 4
  br label %if.end44.i

if.else38.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %cmp40.i = icmp eq i32 %and34.i, 0
  br i1 %cmp40.i, label %if.then41.i, label %if.else38.i.if.end44.i_crit_edge

if.else38.i.if.end44.i_crit_edge:                 ; preds = %if.else38.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end44.i

if.then41.i:                                      ; preds = %if.else38.i
  call void @__sanitizer_cov_trace_pc() #18
  %48 = tail call i32 @llvm.read_register.i32(metadata !235) #16
  %and.i.i113 = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i113 to ptr
  %task.i114 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %task.i114 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %task.i114, align 8
  %flags1.i115 = getelementptr inbounds %struct.task_struct, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %flags1.i115 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags1.i115, align 4
  %and.i116 = and i32 %53, 524288
  %or.i117 = or i32 %53, 524288
  store i32 %or.i117, ptr %flags1.i115, align 4
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then41.i, %if.else38.i.if.end44.i_crit_edge, %if.then36.i
  %flags.0.i = phi i32 [ %and.i121, %if.then36.i ], [ %and.i116, %if.then41.i ], [ -1, %if.else38.i.if.end44.i_crit_edge ]
  %add45.i = add i32 %retval.0.i142, %3
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i, %if.end44.i
  %54 = ptrtoint ptr %pages10.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pages10.i, align 4
  %call.i111 = tail call i32 @vmap_pages_range_noflush(i32 noundef %3, i32 noundef %add45.i, i32 noundef %prot, ptr noundef %55, i32 noundef 12) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cacheid to i32))
  %56 = load i32, ptr @cacheid, align 4
  %and2.i.i.i = and i32 %56, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i112, label %if.else.i.i

if.then.i.i112:                                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %57() #16
  br label %vmap_pages_range.exit

if.else.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !250
  br label %vmap_pages_range.exit

vmap_pages_range.exit:                            ; preds = %if.else.i.i, %if.then.i.i112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i111)
  %cmp49.i = icmp slt i32 %call.i111, 0
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp49.i, i1 false
  br i1 %or.cond.i, label %do.cond.i, label %do.end.i

do.cond.i:                                        ; preds = %vmap_pages_range.exit
  call void @__sanitizer_cov_trace_pc() #18
  %call51.i = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #16
  br label %do.body.i

do.end.i:                                         ; preds = %vmap_pages_range.exit
  br i1 %cmp35.i, label %do.end.i.if.end63.i.sink.split_crit_edge, label %if.else58.i

do.end.i.if.end63.i.sink.split_crit_edge:         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end63.i.sink.split

if.else58.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %cmp60.i = icmp eq i32 %and34.i, 0
  br i1 %cmp60.i, label %if.else58.i.if.end63.i.sink.split_crit_edge, label %if.else58.i.if.end63.i_crit_edge

if.else58.i.if.end63.i_crit_edge:                 ; preds = %if.else58.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end63.i

if.else58.i.if.end63.i.sink.split_crit_edge:      ; preds = %if.else58.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end63.i.sink.split

if.end63.i.sink.split:                            ; preds = %if.else58.i.if.end63.i.sink.split_crit_edge, %do.end.i.if.end63.i.sink.split_crit_edge
  %.sink155 = phi i32 [ -262145, %do.end.i.if.end63.i.sink.split_crit_edge ], [ -524289, %if.else58.i.if.end63.i.sink.split_crit_edge ]
  %58 = tail call i32 @llvm.read_register.i32(metadata !235) #16
  %and.i.i106 = and i32 %58, -16384
  %59 = inttoptr i32 %and.i.i106 to ptr
  %task.i107 = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %task.i107 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %task.i107, align 8
  %flags1.i108 = getelementptr inbounds %struct.task_struct, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %flags1.i108 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flags1.i108, align 4
  %and.i104 = and i32 %63, %.sink155
  %or.i105 = or i32 %and.i104, %flags.0.i
  store i32 %or.i105, ptr %flags1.i108, align 4
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.end63.i.sink.split, %if.else58.i.if.end63.i_crit_edge
  br i1 %cmp49.i, label %if.then65.i, label %__vmalloc_area_node.exit

if.then65.i:                                      ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #18
  %64 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %nr_pages.i, align 4
  %mul67.i = shl i32 %65, 12
  tail call void (i32, ptr, ptr, ...) @warn_alloc(i32 noundef %gfp_mask, ptr noundef null, ptr noundef nonnull @.str.44, i32 noundef %mul67.i) #16
  br label %fail.i

fail.i:                                           ; preds = %if.then65.i, %if.then30.i
  %66 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %addr2.i, align 4
  %68 = tail call i32 @llvm.read_register.i32(metadata !235) #16
  %and.i.i.i = and i32 %68, -16384
  %69 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %preempt_count.i.i, align 4
  %and.i99 = and i32 %71, 15728640
  %72 = tail call i32 @llvm.read_register.i32(metadata !235) #16
  %and.i.i9.i = and i32 %72, -16384
  %73 = inttoptr i32 %and.i.i9.i to ptr
  %preempt_count.i10.i = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %preempt_count.i10.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %preempt_count.i10.i, align 4
  %and2.i = and i32 %75, 983040
  %or.i100 = or i32 %and2.i, %and.i99
  %76 = tail call i32 @llvm.read_register.i32(metadata !235) #16
  %and.i.i11.i = and i32 %76, -16384
  %77 = inttoptr i32 %and.i.i11.i to ptr
  %preempt_count.i12.i = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %preempt_count.i12.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %preempt_count.i12.i, align 4
  %and4.i101 = and i32 %79, 65280
  %or5.i = or i32 %or.i100, %and4.i101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i)
  %tobool.not.i102 = icmp eq i32 %or5.i, 0
  br i1 %tobool.not.i102, label %if.else.i103, label %if.then.i, !prof !245

if.then.i:                                        ; preds = %fail.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @__vfree_deferred(ptr noundef %67) #16
  br label %cleanup65

if.else.i103:                                     ; preds = %fail.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @__vunmap(ptr noundef %67, i32 noundef 1) #16
  br label %cleanup65

__vmalloc_area_node.exit:                         ; preds = %if.end63.i
  %80 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %addr2.i, align 4
  %tobool54.not = icmp eq ptr %81, null
  br i1 %tobool54.not, label %__vmalloc_area_node.exit.cleanup65_crit_edge, label %if.end56

__vmalloc_area_node.exit.cleanup65_crit_edge:     ; preds = %__vmalloc_area_node.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup65

if.end56:                                         ; preds = %__vmalloc_area_node.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !305
  %82 = ptrtoint ptr %flags.i138 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %flags.i138, align 4
  %and.i98 = and i32 %83, -33
  store i32 %and.i98, ptr %flags.i138, align 4
  %and58 = and i32 %vm_flags, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.then60, label %if.end56.cleanup65_crit_edge

if.end56.cleanup65_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup65

if.then60:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #18
  %add = add i32 %size, 4095
  %and57 = and i32 %add, -4096
  tail call void @kmemleak_vmalloc(ptr noundef nonnull %call42.lcssa, i32 noundef %and57, i32 noundef %gfp_mask) #16
  br label %cleanup65

cleanup65:                                        ; preds = %if.then60, %if.end56.cleanup65_crit_edge, %__vmalloc_area_node.exit.cleanup65_crit_edge, %if.else.i103, %if.then.i, %free_vm_area.exit, %if.then40, %if.then44.lr.ph.cleanup65_crit_edge, %if.then, %land.rhs.cleanup65_crit_edge
  %retval.0 = phi ptr [ null, %if.then40 ], [ null, %if.then ], [ %81, %if.then60 ], [ %81, %if.end56.cleanup65_crit_edge ], [ null, %__vmalloc_area_node.exit.cleanup65_crit_edge ], [ null, %land.rhs.cleanup65_crit_edge ], [ null, %free_vm_area.exit ], [ null, %if.then.i ], [ null, %if.else.i103 ], [ null, %if.then44.lr.ph.cleanup65_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_alloc(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmemleak_vmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3 section ".ref.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong allocsize(0) uwtable(sync)
define dso_local noalias ptr @__vmalloc_node(i32 noundef %size, i32 noundef %align, i32 noundef %gfp_mask, i32 noundef %node, ptr noundef %caller) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %0 = load ptr, ptr @high_memory, align 4
  %1 = ptrtoint ptr %0 to i32
  %add = add i32 %1, 8388608
  %and = and i32 %add, -8388608
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %2 = load i32, ptr @pgprot_kernel, align 4
  %or = or i32 %2, 512
  %call = tail call noalias ptr @__vmalloc_node_range(i32 noundef %size, i32 noundef %align, i32 noundef %and, i32 noundef -8388608, i32 noundef %gfp_mask, i32 noundef %or, i32 noundef 0, i32 noundef %node, ptr noundef %caller) #24
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong allocsize(0) uwtable(sync)
define dso_local noalias ptr @__vmalloc(i32 noundef %size, i32 noundef %gfp_mask) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %1 = load ptr, ptr @high_memory, align 4
  %2 = ptrtoint ptr %1 to i32
  %add.i = add i32 %2, 8388608
  %and.i = and i32 %add.i, -8388608
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %3 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %3, 512
  %call.i = tail call noalias ptr @__vmalloc_node_range(i32 noundef %size, i32 noundef 1, i32 noundef %and.i, i32 noundef -8388608, i32 noundef %gfp_mask, i32 noundef %or.i, i32 noundef 0, i32 noundef -1, ptr noundef %0) #23
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong allocsize(0) uwtable(sync)
define dso_local noalias ptr @vmalloc(i32 noundef %size) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %1 = load ptr, ptr @high_memory, align 4
  %2 = ptrtoint ptr %1 to i32
  %add.i = add i32 %2, 8388608
  %and.i = and i32 %add.i, -8388608
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %3 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %3, 512
  %call.i = tail call noalias ptr @__vmalloc_node_range(i32 noundef %size, i32 noundef 1, i32 noundef %and.i, i32 noundef -8388608, i32 noundef 3264, i32 noundef %or.i, i32 noundef 0, i32 noundef -1, ptr noundef %0) #23
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong allocsize(0) uwtable(sync)
define dso_local noalias ptr @vmalloc_no_huge(i32 noundef %size) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %0 = load ptr, ptr @high_memory, align 4
  %1 = ptrtoint ptr %0 to i32
  %add = add i32 %1, 8388608
  %and = and i32 %add, -8388608
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %2 = load i32, ptr @pgprot_kernel, align 4
  %or = or i32 %2, 512
  %3 = tail call ptr @llvm.returnaddress(i32 0)
  %call = tail call noalias ptr @__vmalloc_node_range(i32 noundef %size, i32 noundef 1, i32 noundef %and, i32 noundef -8388608, i32 noundef 3264, i32 noundef %or, i32 noundef 1024, i32 noundef -1, ptr noundef %3) #24
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong allocsize(0) uwtable(sync)
define dso_local noalias ptr @vzalloc(i32 noundef %size) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %1 = load ptr, ptr @high_memory, align 4
  %2 = ptrtoint ptr %1 to i32
  %add.i = add i32 %2, 8388608
  %and.i = and i32 %add.i, -8388608
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %3 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %3, 512
  %call.i = tail call noalias ptr @__vmalloc_node_range(i32 noundef %size, i32 noundef 1, i32 noundef %and.i, i32 noundef -8388608, i32 noundef 3520, i32 noundef %or.i, i32 noundef 0, i32 noundef -1, ptr noundef %0) #23
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong allocsize(0) uwtable(sync)
define dso_local noalias ptr @vmalloc_user(i32 noundef %size) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %0 = load ptr, ptr @high_memory, align 4
  %1 = ptrtoint ptr %0 to i32
  %add = add i32 %1, 8388608
  %and = and i32 %add, -8388608
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %2 = load i32, ptr @pgprot_kernel, align 4
  %or = or i32 %2, 512
  %3 = tail call ptr @llvm.returnaddress(i32 0)
  %call = tail call noalias ptr @__vmalloc_node_range(i32 noundef %size, i32 noundef 16384, i32 noundef %and, i32 noundef -8388608, i32 noundef 3520, i32 noundef %or, i32 noundef 8, i32 noundef -1, ptr noundef %3) #24
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong allocsize(0) uwtable(sync)
define dso_local noalias ptr @vmalloc_node(i32 noundef %size, i32 noundef %node) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %1 = load ptr, ptr @high_memory, align 4
  %2 = ptrtoint ptr %1 to i32
  %add.i = add i32 %2, 8388608
  %and.i = and i32 %add.i, -8388608
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %3 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %3, 512
  %call.i = tail call noalias ptr @__vmalloc_node_range(i32 noundef %size, i32 noundef 1, i32 noundef %and.i, i32 noundef -8388608, i32 noundef 3264, i32 noundef %or.i, i32 noundef 0, i32 noundef %node, ptr noundef %0) #23
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong allocsize(0) uwtable(sync)
define dso_local noalias ptr @vzalloc_node(i32 noundef %size, i32 noundef %node) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %1 = load ptr, ptr @high_memory, align 4
  %2 = ptrtoint ptr %1 to i32
  %add.i = add i32 %2, 8388608
  %and.i = and i32 %add.i, -8388608
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %3 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %3, 512
  %call.i = tail call noalias ptr @__vmalloc_node_range(i32 noundef %size, i32 noundef 1, i32 noundef %and.i, i32 noundef -8388608, i32 noundef 3520, i32 noundef %or.i, i32 noundef 0, i32 noundef %node, ptr noundef %0) #23
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong allocsize(0) uwtable(sync)
define dso_local noalias ptr @vmalloc_32(i32 noundef %size) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %1 = load ptr, ptr @high_memory, align 4
  %2 = ptrtoint ptr %1 to i32
  %add.i = add i32 %2, 8388608
  %and.i = and i32 %add.i, -8388608
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %3 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %3, 512
  %call.i = tail call noalias ptr @__vmalloc_node_range(i32 noundef %size, i32 noundef 1, i32 noundef %and.i, i32 noundef -8388608, i32 noundef 3268, i32 noundef %or.i, i32 noundef 0, i32 noundef -1, ptr noundef %0) #23
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong allocsize(0) uwtable(sync)
define dso_local noalias ptr @vmalloc_32_user(i32 noundef %size) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %0 = load ptr, ptr @high_memory, align 4
  %1 = ptrtoint ptr %0 to i32
  %add = add i32 %1, 8388608
  %and = and i32 %add, -8388608
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %2 = load i32, ptr @pgprot_kernel, align 4
  %or = or i32 %2, 512
  %3 = tail call ptr @llvm.returnaddress(i32 0)
  %call = tail call noalias ptr @__vmalloc_node_range(i32 noundef %size, i32 noundef 16384, i32 noundef %and, i32 noundef -8388608, i32 noundef 3524, i32 noundef %or, i32 noundef 8, i32 noundef -1, ptr noundef %3) #24
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vread(ptr noundef %buf, ptr noundef %addr, i32 noundef %count) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr to i32
  %1 = xor i32 %count, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %0)
  %cmp = icmp ult i32 %1, %0
  %sub = sub i32 0, %0
  %spec.select = select i1 %cmp, i32 %sub, i32 %count
  tail call void @_raw_spin_lock(ptr noundef nonnull @vmap_area_lock) #16
  %n.017.i = load ptr, ptr @vmap_area_root, align 4
  %tobool.not18.i = icmp eq ptr %n.017.i, null
  br i1 %tobool.not18.i, label %entry.finished.thread_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.finished.thread_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %finished.thread

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %n.020.i = phi ptr [ %n.0.i, %cleanup.i.while.body.i_crit_edge ], [ %n.017.i, %entry.while.body.i_crit_edge ]
  %va.019.i = phi ptr [ %va.1.i, %cleanup.i.while.body.i_crit_edge ], [ null, %entry.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %n.020.i, i32 -8
  %va_end.i = getelementptr i8, ptr %n.020.i, i32 -4
  %2 = ptrtoint ptr %va_end.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %va_end.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %0)
  %cmp.i = icmp ugt i32 %3, %0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %0)
  %cmp2.not.i = icmp ugt i32 %5, %0
  br i1 %cmp2.not.i, label %if.end.i, label %if.then.i.find_vmap_area_exceed_addr.exit_crit_edge

if.then.i.find_vmap_area_exceed_addr.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %find_vmap_area_exceed_addr.exit

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %n.020.i, i32 0, i32 2
  br label %cleanup.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %n.020.i, i32 0, i32 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.else.i, %if.end.i
  %n.1.in.i = phi ptr [ %rb_left.i, %if.end.i ], [ %rb_right.i, %if.else.i ]
  %va.1.i = phi ptr [ %add.ptr.i, %if.end.i ], [ %va.019.i, %if.else.i ]
  %6 = ptrtoint ptr %n.1.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %n.0.i = load ptr, ptr %n.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %n.0.i, null
  br i1 %tobool.not.i, label %cleanup.i.find_vmap_area_exceed_addr.exit_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

cleanup.i.find_vmap_area_exceed_addr.exit_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %find_vmap_area_exceed_addr.exit

find_vmap_area_exceed_addr.exit:                  ; preds = %cleanup.i.find_vmap_area_exceed_addr.exit_crit_edge, %if.then.i.find_vmap_area_exceed_addr.exit_crit_edge
  %va.3.i = phi ptr [ %add.ptr.i, %if.then.i.find_vmap_area_exceed_addr.exit_crit_edge ], [ %va.1.i, %cleanup.i.find_vmap_area_exceed_addr.exit_crit_edge ]
  %tobool.not = icmp eq ptr %va.3.i, null
  br i1 %tobool.not, label %find_vmap_area_exceed_addr.exit.finished.thread_crit_edge, label %if.end2

find_vmap_area_exceed_addr.exit.finished.thread_crit_edge: ; preds = %find_vmap_area_exceed_addr.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %finished.thread

if.end2:                                          ; preds = %find_vmap_area_exceed_addr.exit
  %add3 = add i32 %spec.select, %0
  %7 = ptrtoint ptr %va.3.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %va.3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add3, i32 %8)
  %cmp4.not = icmp ugt i32 %add3, %8
  br i1 %cmp4.not, label %for.cond.preheader, label %if.end2.finished.thread_crit_edge

if.end2.finished.thread_crit_edge:                ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #18
  br label %finished.thread

for.cond.preheader:                               ; preds = %if.end2
  %list132 = getelementptr inbounds %struct.vmap_area, ptr %va.3.i, i32 0, i32 3
  %cmp7.not133 = icmp eq ptr %list132, @vmap_area_list
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool8.not134 = icmp eq i32 %spec.select, 0
  %or.cond135 = or i1 %cmp7.not133, %tobool8.not134
  br i1 %or.cond135, label %finished.thread144, label %for.cond.preheader.if.end10_crit_edge

for.cond.preheader.if.end10_crit_edge:            ; preds = %for.cond.preheader
  br label %if.end10

finished.thread144:                               ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_unlock(ptr noundef nonnull @vmap_area_lock) #16
  br label %cleanup

if.end10:                                         ; preds = %for.inc.if.end10_crit_edge, %for.cond.preheader.if.end10_crit_edge
  %list140 = phi ptr [ %51, %for.inc.if.end10_crit_edge ], [ %list132, %for.cond.preheader.if.end10_crit_edge ]
  %buf.addr.0139 = phi ptr [ %buf.addr.2, %for.inc.if.end10_crit_edge ], [ %buf, %for.cond.preheader.if.end10_crit_edge ]
  %va.0138 = phi ptr [ %add.ptr37, %for.inc.if.end10_crit_edge ], [ %va.3.i, %for.cond.preheader.if.end10_crit_edge ]
  %count.addr.1137 = phi i32 [ %count.addr.3, %for.inc.if.end10_crit_edge ], [ %spec.select, %for.cond.preheader.if.end10_crit_edge ]
  %addr.addr.0136 = phi ptr [ %addr.addr.2, %for.inc.if.end10_crit_edge ], [ %addr, %for.cond.preheader.if.end10_crit_edge ]
  %9 = getelementptr inbounds %struct.vmap_area, ptr %va.0138, i32 0, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool11.not = icmp eq ptr %11, null
  br i1 %tobool11.not, label %if.end10.for.inc_crit_edge, label %if.end13

if.end10.for.inc_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end13:                                         ; preds = %if.end10
  %addr14 = getelementptr inbounds %struct.vm_struct, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %addr14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %addr14, align 4
  %flags.i = getelementptr inbounds %struct.vm_struct, ptr %11, i32 0, i32 3
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %15, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i102 = icmp eq i32 %and.i, 0
  %size.i = getelementptr inbounds %struct.vm_struct, ptr %11, i32 0, i32 2
  %16 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size.i, align 4
  %sub.i = add i32 %17, -4096
  %retval.0.i = select i1 %tobool.not.i102, i32 %sub.i, i32 %17
  %add.ptr = getelementptr i8, ptr %13, i32 %retval.0.i
  %cmp16.not = icmp ult ptr %addr.addr.0136, %add.ptr
  br i1 %cmp16.not, label %while.cond.preheader, label %if.end13.for.inc_crit_edge

if.end13.for.inc_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

while.cond.preheader:                             ; preds = %if.end13
  %cmp19126 = icmp ult ptr %addr.addr.0136, %13
  br i1 %cmp19126, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.body:                                       ; preds = %if.end22.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %buf.addr.1129 = phi ptr [ %incdec.ptr, %if.end22.while.body_crit_edge ], [ %buf.addr.0139, %while.cond.preheader.while.body_crit_edge ]
  %count.addr.2128 = phi i32 [ %dec, %if.end22.while.body_crit_edge ], [ %count.addr.1137, %while.cond.preheader.while.body_crit_edge ]
  %addr.addr.1127 = phi ptr [ %incdec.ptr23, %if.end22.while.body_crit_edge ], [ %addr.addr.0136, %while.cond.preheader.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.addr.2128)
  %cmp20 = icmp eq i32 %count.addr.2128, 0
  br i1 %cmp20, label %while.body.finished_crit_edge, label %if.end22

while.body.finished_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %finished

if.end22:                                         ; preds = %while.body
  %18 = ptrtoint ptr %buf.addr.1129 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %buf.addr.1129, align 1
  %incdec.ptr = getelementptr i8, ptr %buf.addr.1129, i32 1
  %incdec.ptr23 = getelementptr i8, ptr %addr.addr.1127, i32 1
  %dec = add i32 %count.addr.2128, -1
  %cmp19 = icmp ult ptr %incdec.ptr23, %13
  br i1 %cmp19, label %if.end22.while.body_crit_edge, label %if.end22.while.end_crit_edge

if.end22.while.end_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

if.end22.while.body_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

while.end:                                        ; preds = %if.end22.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %addr.addr.1.lcssa = phi ptr [ %addr.addr.0136, %while.cond.preheader.while.end_crit_edge ], [ %incdec.ptr23, %if.end22.while.end_crit_edge ]
  %count.addr.2.lcssa = phi i32 [ %count.addr.1137, %while.cond.preheader.while.end_crit_edge ], [ %dec, %if.end22.while.end_crit_edge ]
  %buf.addr.1.lcssa = phi ptr [ %buf.addr.0139, %while.cond.preheader.while.end_crit_edge ], [ %incdec.ptr, %if.end22.while.end_crit_edge ]
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.i, align 4
  %and.i104 = and i32 %20, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i104)
  %tobool.not.i105 = icmp eq i32 %and.i104, 0
  %21 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size.i, align 4
  %sub.i107 = add i32 %22, -4096
  %retval.0.i108 = select i1 %tobool.not.i105, i32 %sub.i107, i32 %22
  %add.ptr25 = getelementptr i8, ptr %13, i32 %retval.0.i108
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr25 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %addr.addr.1.lcssa to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %23 = tail call i32 @llvm.umin.i32(i32 %sub.ptr.sub, i32 %count.addr.2.lcssa)
  %and = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool29.not = icmp eq i32 %and, 0
  br i1 %tobool29.not, label %if.then30, label %if.else

if.then30:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not1.i = icmp eq i32 %23, 0
  br i1 %tobool.not1.i, label %if.then30.if.end32_crit_edge, label %if.then30.while.body.i111_crit_edge

if.then30.while.body.i111_crit_edge:              ; preds = %if.then30
  br label %while.body.i111

if.then30.if.end32_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end32

while.body.i111:                                  ; preds = %if.end7.i.while.body.i111_crit_edge, %if.then30.while.body.i111_crit_edge
  %buf.addr.04.i = phi ptr [ %add.ptr9.i, %if.end7.i.while.body.i111_crit_edge ], [ %buf.addr.1.lcssa, %if.then30.while.body.i111_crit_edge ]
  %count.addr.03.i = phi i32 [ %sub10.i, %if.end7.i.while.body.i111_crit_edge ], [ %23, %if.then30.while.body.i111_crit_edge ]
  %addr.addr.02.i = phi ptr [ %add.ptr8.i, %if.end7.i.while.body.i111_crit_edge ], [ %addr.addr.1.lcssa, %if.then30.while.body.i111_crit_edge ]
  %24 = ptrtoint ptr %addr.addr.02.i to i32
  %and.i109 = and i32 %24, 4095
  %sub.i110 = sub nuw nsw i32 4096, %and.i109
  %25 = tail call i32 @llvm.umin.i32(i32 %sub.i110, i32 %count.addr.03.i) #16
  %call.i = tail call ptr @vmalloc_to_page(ptr noundef %addr.addr.02.i) #16
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %if.else.i113, label %if.then2.i

if.then2.i:                                       ; preds = %while.body.i111
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %26 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %26, 512
  %27 = tail call i32 @llvm.read_register.i32(metadata !235) #16
  %and.i.i.i.i.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %30, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !254
  %31 = tail call i32 @llvm.read_register.i32(metadata !235) #16
  %and.i.i.i1.i.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 213
  %35 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %36, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !255
  %call.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %call.i, i32 noundef %or.i.i) #16
  %add.ptr.i112 = getelementptr i8, ptr %call.i.i.i, i32 %and.i109
  %37 = call ptr @memcpy(ptr %buf.addr.04.i, ptr %add.ptr.i112, i32 %25)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !256
  %38 = tail call i32 @llvm.read_register.i32(metadata !235) #16
  %and.i.i.i1.i.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 213
  %42 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %dec.i.i.i.i = add i32 %43, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !257
  %44 = tail call i32 @llvm.read_register.i32(metadata !235) #16
  %and.i.i.i.i.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %47, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  br label %if.end7.i

if.else.i113:                                     ; preds = %while.body.i111
  call void @__sanitizer_cov_trace_pc() #18
  %48 = call ptr @memset(ptr %buf.addr.04.i, i32 0, i32 %25)
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.else.i113, %if.then2.i
  %add.ptr8.i = getelementptr i8, ptr %addr.addr.02.i, i32 %25
  %add.ptr9.i = getelementptr i8, ptr %buf.addr.04.i, i32 %25
  %sub10.i = sub i32 %count.addr.03.i, %25
  %tobool.not.i114 = icmp eq i32 %sub10.i, 0
  br i1 %tobool.not.i114, label %if.end7.i.if.end32_crit_edge, label %if.end7.i.while.body.i111_crit_edge

if.end7.i.while.body.i111_crit_edge:              ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i111

if.end7.i.if.end32_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end32

if.else:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  %49 = call ptr @memset(ptr %buf.addr.1.lcssa, i32 0, i32 %23)
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.end7.i.if.end32_crit_edge, %if.then30.if.end32_crit_edge
  %add.ptr33 = getelementptr i8, ptr %buf.addr.1.lcssa, i32 %23
  %add.ptr34 = getelementptr i8, ptr %addr.addr.1.lcssa, i32 %23
  %sub35 = sub i32 %count.addr.2.lcssa, %23
  br label %for.inc

for.inc:                                          ; preds = %if.end32, %if.end13.for.inc_crit_edge, %if.end10.for.inc_crit_edge
  %addr.addr.2 = phi ptr [ %addr.addr.0136, %if.end13.for.inc_crit_edge ], [ %add.ptr34, %if.end32 ], [ %addr.addr.0136, %if.end10.for.inc_crit_edge ]
  %count.addr.3 = phi i32 [ %count.addr.1137, %if.end13.for.inc_crit_edge ], [ %sub35, %if.end32 ], [ %count.addr.1137, %if.end10.for.inc_crit_edge ]
  %buf.addr.2 = phi ptr [ %buf.addr.0139, %if.end13.for.inc_crit_edge ], [ %add.ptr33, %if.end32 ], [ %buf.addr.0139, %if.end10.for.inc_crit_edge ]
  %50 = ptrtoint ptr %list140 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %list140, align 4
  %add.ptr37 = getelementptr i8, ptr %51, i32 -20
  %cmp7.not = icmp eq ptr %51, @vmap_area_list
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.addr.3)
  %tobool8.not = icmp eq i32 %count.addr.3, 0
  %or.cond = select i1 %cmp7.not, i1 true, i1 %tobool8.not
  br i1 %or.cond, label %for.inc.finished_crit_edge, label %for.inc.if.end10_crit_edge

for.inc.if.end10_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

for.inc.finished_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %finished

finished.thread:                                  ; preds = %if.end2.finished.thread_crit_edge, %find_vmap_area_exceed_addr.exit.finished.thread_crit_edge, %entry.finished.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @vmap_area_lock) #16
  br label %cleanup

finished:                                         ; preds = %for.inc.finished_crit_edge, %while.body.finished_crit_edge
  %buf.addr.3 = phi ptr [ %buf.addr.1129, %while.body.finished_crit_edge ], [ %buf.addr.2, %for.inc.finished_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @vmap_area_lock) #16
  %cmp38 = icmp eq ptr %buf.addr.3, %buf
  br i1 %cmp38, label %finished.cleanup_crit_edge, label %if.end40

finished.cleanup_crit_edge:                       ; preds = %finished
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end40:                                         ; preds = %finished
  %add.ptr41 = getelementptr i8, ptr %buf, i32 %count
  %cmp42.not = icmp eq ptr %buf.addr.3, %add.ptr41
  br i1 %cmp42.not, label %if.end40.cleanup_crit_edge, label %if.then43

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #18
  %sub.ptr.lhs.cast44 = ptrtoint ptr %buf.addr.3 to i32
  %sub.ptr.rhs.cast45 = ptrtoint ptr %buf to i32
  %sub.ptr.sub46.neg = add i32 %sub.ptr.rhs.cast45, %count
  %sub47 = sub i32 %sub.ptr.sub46.neg, %sub.ptr.lhs.cast44
  %52 = call ptr @memset(ptr %buf.addr.3, i32 0, i32 %sub47)
  br label %cleanup

cleanup:                                          ; preds = %if.then43, %if.end40.cleanup_crit_edge, %finished.cleanup_crit_edge, %finished.thread, %finished.thread144
  %retval.0 = phi i32 [ 0, %finished.cleanup_crit_edge ], [ %count, %if.then43 ], [ %count, %if.end40.cleanup_crit_edge ], [ 0, %finished.thread ], [ 0, %finished.thread144 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @remap_vmalloc_range_partial(ptr noundef %vma, i32 noundef %uaddr, ptr noundef %kaddr, i32 noundef %pgoff, i32 noundef %size) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %pgoff, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048575, i32 %pgoff)
  %0 = icmp ugt i32 %pgoff, 1048575
  br i1 %0, label %entry.cleanup64_crit_edge, label %if.end

entry.cleanup64_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup64

if.end:                                           ; preds = %entry
  %add = add i32 %size, 4095
  %and = and i32 %add, -4096
  %1 = ptrtoint ptr %kaddr to i32
  %2 = or i32 %1, %uaddr
  %3 = and i32 %2, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %if.end31, label %if.end.cleanup64_crit_edge

if.end.cleanup64_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup64

if.end31:                                         ; preds = %if.end
  tail call void @_raw_spin_lock(ptr noundef nonnull @vmap_area_lock) #16
  %n.017.i.i.i = load ptr, ptr @vmap_area_root, align 4
  %tobool.not18.i.i.i = icmp eq ptr %n.017.i.i.i, null
  br i1 %tobool.not18.i.i.i, label %if.end31.find_vmap_area.exit.thread.i_crit_edge, label %if.end31.while.body.i.i.i_crit_edge

if.end31.while.body.i.i.i_crit_edge:              ; preds = %if.end31
  br label %while.body.i.i.i

if.end31.find_vmap_area.exit.thread.i_crit_edge:  ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #18
  br label %find_vmap_area.exit.thread.i

while.body.i.i.i:                                 ; preds = %cleanup.i.i.i.while.body.i.i.i_crit_edge, %if.end31.while.body.i.i.i_crit_edge
  %n.019.i.i.i = phi ptr [ %n.0.i.i.i, %cleanup.i.i.i.while.body.i.i.i_crit_edge ], [ %n.017.i.i.i, %if.end31.while.body.i.i.i_crit_edge ]
  %add.ptr.i.i.i = getelementptr i8, ptr %n.019.i.i.i, i32 -8
  %5 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %1)
  %cmp.i.i.i = icmp ugt i32 %6, %1
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %rb_left.i.i.i = getelementptr inbounds %struct.rb_node, ptr %n.019.i.i.i, i32 0, i32 2
  br label %cleanup.i.i.i

if.else.i.i.i:                                    ; preds = %while.body.i.i.i
  %va_end.i.i.i = getelementptr i8, ptr %n.019.i.i.i, i32 -4
  %7 = ptrtoint ptr %va_end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %va_end.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %1)
  %cmp1.not.i.i.i = icmp ugt i32 %8, %1
  br i1 %cmp1.not.i.i.i, label %find_vmap_area.exit.i, label %if.then2.i.i.i

if.then2.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %rb_right.i.i.i = getelementptr inbounds %struct.rb_node, ptr %n.019.i.i.i, i32 0, i32 1
  br label %cleanup.i.i.i

cleanup.i.i.i:                                    ; preds = %if.then2.i.i.i, %if.then.i.i.i
  %n.1.in.i.i.i = phi ptr [ %rb_left.i.i.i, %if.then.i.i.i ], [ %rb_right.i.i.i, %if.then2.i.i.i ]
  %9 = ptrtoint ptr %n.1.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %n.0.i.i.i = load ptr, ptr %n.1.in.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %n.0.i.i.i, null
  br i1 %tobool.not.i.i.i, label %cleanup.i.i.i.find_vmap_area.exit.thread.i_crit_edge, label %cleanup.i.i.i.while.body.i.i.i_crit_edge

cleanup.i.i.i.while.body.i.i.i_crit_edge:         ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i.i.i

cleanup.i.i.i.find_vmap_area.exit.thread.i_crit_edge: ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %find_vmap_area.exit.thread.i

find_vmap_area.exit.thread.i:                     ; preds = %cleanup.i.i.i.find_vmap_area.exit.thread.i_crit_edge, %if.end31.find_vmap_area.exit.thread.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @vmap_area_lock) #16
  br label %cleanup64

find_vmap_area.exit.i:                            ; preds = %if.else.i.i.i
  %add.ptr.i.i.i.le = getelementptr i8, ptr %n.019.i.i.i, i32 -8
  tail call void @_raw_spin_unlock(ptr noundef nonnull @vmap_area_lock) #16
  %tobool.not.i = icmp eq ptr %add.ptr.i.i.i.le, null
  br i1 %tobool.not.i, label %find_vmap_area.exit.i.cleanup64_crit_edge, label %find_vm_area.exit

find_vmap_area.exit.i.cleanup64_crit_edge:        ; preds = %find_vmap_area.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup64

find_vm_area.exit:                                ; preds = %find_vmap_area.exit.i
  %10 = getelementptr i8, ptr %n.019.i.i.i, i32 20
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %tobool33.not = icmp eq ptr %12, null
  br i1 %tobool33.not, label %find_vm_area.exit.cleanup64_crit_edge, label %if.end35

find_vm_area.exit.cleanup64_crit_edge:            ; preds = %find_vm_area.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup64

if.end35:                                         ; preds = %find_vm_area.exit
  %flags = getelementptr inbounds %struct.vm_struct, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %and36 = and i32 %14, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end35.cleanup64_crit_edge, label %if.end39

if.end35.cleanup64_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup64

if.end39:                                         ; preds = %if.end35
  %15 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %and, i32 %shl)
  %16 = extractvalue { i32, i1 } %15, 1
  br i1 %16, label %if.end39.cleanup64_crit_edge, label %lor.lhs.false48

if.end39.cleanup64_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup64

lor.lhs.false48:                                  ; preds = %if.end39
  %17 = extractvalue { i32, i1 } %15, 0
  %and.i = and i32 %14, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i98 = icmp eq i32 %and.i, 0
  %size.i = getelementptr inbounds %struct.vm_struct, ptr %12, i32 0, i32 2
  %18 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size.i, align 4
  %sub.i = add i32 %19, -4096
  %retval.0.i99 = select i1 %tobool.not.i98, i32 %sub.i, i32 %19
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %retval.0.i99)
  %cmp50 = icmp ugt i32 %17, %retval.0.i99
  br i1 %cmp50, label %lor.lhs.false48.cleanup64_crit_edge, label %if.end53

lor.lhs.false48.cleanup64_crit_edge:              ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup64

if.end53:                                         ; preds = %lor.lhs.false48
  %add.ptr = getelementptr i8, ptr %kaddr, i32 %shl
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %if.end53
  %size.addr.0 = phi i32 [ %and, %if.end53 ], [ %sub, %do.cond.do.body_crit_edge ]
  %kaddr.addr.0 = phi ptr [ %add.ptr, %if.end53 ], [ %add.ptr60, %do.cond.do.body_crit_edge ]
  %uaddr.addr.0 = phi i32 [ %uaddr, %if.end53 ], [ %add59, %do.cond.do.body_crit_edge ]
  %call54 = tail call ptr @vmalloc_to_page(ptr noundef %kaddr.addr.0)
  %call55 = tail call i32 @vm_insert_page(ptr noundef %vma, i32 noundef %uaddr.addr.0, ptr noundef %call54) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %do.cond, label %do.body.cleanup64_crit_edge

do.body.cleanup64_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup64

do.cond:                                          ; preds = %do.body
  %add59 = add i32 %uaddr.addr.0, 4096
  %add.ptr60 = getelementptr i8, ptr %kaddr.addr.0, i32 4096
  %sub = add i32 %size.addr.0, -4096
  %cmp62.not = icmp eq i32 %sub, 0
  br i1 %cmp62.not, label %do.end, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

do.end:                                           ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #18
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %20 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vm_flags, align 4
  %or = or i32 %21, 67371008
  store i32 %or, ptr %vm_flags, align 4
  br label %cleanup64

cleanup64:                                        ; preds = %do.end, %do.body.cleanup64_crit_edge, %lor.lhs.false48.cleanup64_crit_edge, %if.end39.cleanup64_crit_edge, %if.end35.cleanup64_crit_edge, %find_vm_area.exit.cleanup64_crit_edge, %find_vmap_area.exit.i.cleanup64_crit_edge, %find_vmap_area.exit.thread.i, %if.end.cleanup64_crit_edge, %entry.cleanup64_crit_edge
  %retval.2 = phi i32 [ 0, %do.end ], [ -22, %entry.cleanup64_crit_edge ], [ -22, %if.end.cleanup64_crit_edge ], [ -22, %find_vm_area.exit.cleanup64_crit_edge ], [ -22, %if.end35.cleanup64_crit_edge ], [ -22, %lor.lhs.false48.cleanup64_crit_edge ], [ -22, %if.end39.cleanup64_crit_edge ], [ -22, %find_vmap_area.exit.i.cleanup64_crit_edge ], [ -22, %find_vmap_area.exit.thread.i ], [ %call55, %do.body.cleanup64_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_insert_page(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @remap_vmalloc_range(ptr noundef %vma, ptr noundef %addr, i32 noundef %pgoff) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vma, align 4
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %2 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vm_end, align 4
  %sub = sub i32 %3, %1
  %call = tail call i32 @remap_vmalloc_range_partial(ptr noundef %vma, i32 noundef %1, ptr noundef %addr, i32 noundef %pgoff, i32 noundef %sub)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @free_vm_area(ptr noundef %area) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %addr = getelementptr inbounds %struct.vm_struct, ptr %area, i32 0, i32 1
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr, align 4
  %call = tail call ptr @remove_vm_area(ptr noundef %1)
  %cmp.not = icmp eq ptr %call, %area
  br i1 %cmp.not, label %do.end7, label %do.body2, !prof !245

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3552, 0\0A.popsection", ""() #16, !srcloc !301
  unreachable

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree(ptr noundef %area) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pcpu_get_vm_areas(ptr nocapture noundef readonly %offsets, ptr nocapture noundef readonly %sizes, i32 noundef %nr_vms, i32 noundef %align) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %0 = load ptr, ptr @high_memory, align 4
  %1 = ptrtoint ptr %0 to i32
  %add = add i32 %1, 8388608
  %and = and i32 %add, -8388608
  %sub = add i32 %align, -1
  %add1 = add i32 %and, %sub
  %neg = sub i32 0, %align
  %and3 = and i32 %add1, %neg
  %and6 = and i32 %neg, -8388608
  %and7 = and i32 %align, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool.not = icmp ne i32 %and7, 0
  %2 = tail call i32 @llvm.ctpop.i32(i32 %align) #16, !range !265
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %3 = icmp ne i32 %2, 1
  %4 = or i1 %3, %tobool.not
  br i1 %4, label %do.body11, label %for.cond.preheader, !prof !306

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_vms)
  %cmp856 = icmp sgt i32 %nr_vms, 0
  br i1 %cmp856, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end97_crit_edge

for.cond.preheader.for.end97_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end97

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

do.body11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3663, 0\0A.popsection", ""() #16, !srcloc !307
  unreachable

for.cond.loopexit:                                ; preds = %do.end94.for.cond.loopexit_crit_edge, %do.end64.for.cond.loopexit_crit_edge
  %exitcond924.not = icmp eq i32 %add69, %nr_vms
  br i1 %exitcond924.not, label %for.cond.loopexit.for.end97_crit_edge, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.cond.loopexit.for.end97_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end97

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %area.0858 = phi i32 [ %add69, %for.cond.loopexit.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %last_area.0857 = phi i32 [ %spec.select, %for.cond.loopexit.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %offsets, i32 %area.0858
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %arrayidx17 = getelementptr i32, ptr %sizes, i32 %area.0858
  %7 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx17, align 4
  %add18 = add i32 %8, %6
  %and22 = and i32 %6, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %cmp23.not = icmp eq i32 %and22, 0
  br i1 %cmp23.not, label %do.body42, label %do.body33, !prof !245

do.body33:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3669, 0\0A.popsection", ""() #16, !srcloc !308
  unreachable

do.body42:                                        ; preds = %for.body
  %and45 = and i32 %8, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %cmp46.not = icmp eq i32 %and45, 0
  br i1 %cmp46.not, label %do.end64, label %do.body56, !prof !245

do.body56:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3670, 0\0A.popsection", ""() #16, !srcloc !309
  unreachable

do.end64:                                         ; preds = %do.body42
  %arrayidx65 = getelementptr i32, ptr %offsets, i32 %last_area.0857
  %9 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx65, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %10)
  %cmp66 = icmp ugt i32 %6, %10
  %spec.select = select i1 %cmp66, i32 %area.0858, i32 %last_area.0857
  %add69 = add nuw nsw i32 %area.0858, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add69, i32 %nr_vms)
  %cmp71853 = icmp slt i32 %add69, %nr_vms
  br i1 %cmp71853, label %do.end64.for.body72_crit_edge, label %do.end64.for.cond.loopexit_crit_edge

do.end64.for.cond.loopexit_crit_edge:             ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.loopexit

do.end64.for.body72_crit_edge:                    ; preds = %do.end64
  br label %for.body72

for.body72:                                       ; preds = %do.end94.for.body72_crit_edge, %do.end64.for.body72_crit_edge
  %area2.0854 = phi i32 [ %inc, %do.end94.for.body72_crit_edge ], [ %add69, %do.end64.for.body72_crit_edge ]
  %arrayidx73 = getelementptr i32, ptr %offsets, i32 %area2.0854
  %11 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx73, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %add18)
  %cmp77 = icmp ult i32 %12, %add18
  br i1 %cmp77, label %land.rhs, label %for.body72.do.end94_crit_edge

for.body72.do.end94_crit_edge:                    ; preds = %for.body72
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end94

land.rhs:                                         ; preds = %for.body72
  %arrayidx74 = getelementptr i32, ptr %sizes, i32 %area2.0854
  %13 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx74, align 4
  %add75 = add i32 %14, %12
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %add75)
  %cmp78 = icmp ult i32 %6, %add75
  br i1 %cmp78, label %do.body86, label %land.rhs.do.end94_crit_edge, !prof !247

land.rhs.do.end94_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end94

do.body86:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3680, 0\0A.popsection", ""() #16, !srcloc !310
  unreachable

do.end94:                                         ; preds = %land.rhs.do.end94_crit_edge, %for.body72.do.end94_crit_edge
  %inc = add nuw i32 %area2.0854, 1
  %exitcond.not = icmp eq i32 %inc, %nr_vms
  br i1 %exitcond.not, label %do.end94.for.cond.loopexit_crit_edge, label %do.end94.for.body72_crit_edge

do.end94.for.body72_crit_edge:                    ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body72

do.end94.for.cond.loopexit_crit_edge:             ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.loopexit

for.end97:                                        ; preds = %for.cond.loopexit.for.end97_crit_edge, %for.cond.preheader.for.end97_crit_edge
  %last_area.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end97_crit_edge ], [ %spec.select, %for.cond.loopexit.for.end97_crit_edge ]
  %arrayidx98 = getelementptr i32, ptr %offsets, i32 %last_area.0.lcssa
  %15 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx98, align 4
  %arrayidx99 = getelementptr i32, ptr %sizes, i32 %last_area.0.lcssa
  %17 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx99, align 4
  %add100 = add i32 %18, %16
  %sub101 = sub i32 %and6, %and3
  call void @__sanitizer_cov_trace_cmp4(i32 %sub101, i32 %add100)
  %cmp102 = icmp ult i32 %sub101, %add100
  br i1 %cmp102, label %do.end115, label %if.end128

do.end115:                                        ; preds = %for.end97
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3686, i32 noundef 9, ptr noundef null) #16
  br label %cleanup418

if.end128:                                        ; preds = %for.end97
  %19 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nr_vms, i32 4) #16
  %20 = extractvalue { i32, i1 } %19, 1
  br i1 %20, label %if.end128.err_free2_crit_edge, label %if.end7.i.i690, !prof !247

if.end128.err_free2_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_free2

if.end7.i.i690:                                   ; preds = %if.end128
  %21 = extractvalue { i32, i1 } %19, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %21, i32 noundef 3520) #23
  %call8.i.i689 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %21, i32 noundef 3520) #23
  %tobool131.not = icmp eq ptr %call8.i.i689, null
  %tobool132.not = icmp eq ptr %call8.i.i, null
  %or.cond = select i1 %tobool131.not, i1 true, i1 %tobool132.not
  br i1 %or.cond, label %if.end7.i.i690.err_free2_crit_edge, label %for.cond135.preheader

if.end7.i.i690.err_free2_crit_edge:               ; preds = %if.end7.i.i690
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_free2

for.cond135.preheader:                            ; preds = %if.end7.i.i690
  br i1 %cmp856, label %for.cond135.preheader.for.body137_crit_edge, label %for.cond135.preheader.retry.preheader_crit_edge

for.cond135.preheader.retry.preheader_crit_edge:  ; preds = %for.cond135.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %retry.preheader

for.cond135.preheader.for.body137_crit_edge:      ; preds = %for.cond135.preheader
  br label %for.body137

for.cond135:                                      ; preds = %for.body137
  %inc150 = add nuw nsw i32 %area.1860, 1
  %exitcond925.not = icmp eq i32 %inc150, %nr_vms
  br i1 %exitcond925.not, label %for.cond135.retry.preheader_crit_edge, label %for.cond135.for.body137_crit_edge

for.cond135.for.body137_crit_edge:                ; preds = %for.cond135
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body137

for.cond135.retry.preheader_crit_edge:            ; preds = %for.cond135
  call void @__sanitizer_cov_trace_pc() #18
  br label %retry.preheader

retry.preheader:                                  ; preds = %for.cond135.retry.preheader_crit_edge, %for.cond135.preheader.retry.preheader_crit_edge
  %add159 = add i32 %add100, %and3
  %add180 = add i32 %nr_vms, -1
  br label %retry

for.body137:                                      ; preds = %for.cond135.for.body137_crit_edge, %for.cond135.preheader.for.body137_crit_edge
  %area.1860 = phi i32 [ %inc150, %for.cond135.for.body137_crit_edge ], [ 0, %for.cond135.preheader.for.body137_crit_edge ]
  %22 = load ptr, ptr @vmap_area_cachep, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %22, i32 noundef 3520) #16
  %arrayidx139 = getelementptr ptr, ptr %call8.i.i689, i32 %area.1860
  %23 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i, ptr %arrayidx139, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 32) #21
  %arrayidx141 = getelementptr ptr, ptr %call8.i.i, i32 %area.1860
  %25 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i.i, ptr %arrayidx141, align 4
  %26 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx139, align 4
  %tobool143.not = icmp eq ptr %27, null
  %tobool146.not = icmp eq ptr %call7.i.i, null
  %or.cond606 = select i1 %tobool143.not, i1 true, i1 %tobool146.not
  br i1 %or.cond606, label %for.body137.err_free_crit_edge, label %for.cond135

for.body137.err_free_crit_edge:                   ; preds = %for.body137
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_free

retry:                                            ; preds = %retry.backedge, %retry.preheader
  %purged.0.off0 = phi i1 [ false, %retry.preheader ], [ true, %retry.backedge ]
  tail call void @_raw_spin_lock(ptr noundef nonnull @free_vmap_area_lock) #16
  %28 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx98, align 4
  %30 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx99, align 4
  %add154 = add i32 %31, %29
  %n.011.i = load ptr, ptr @free_vmap_area_root, align 4
  %tobool.not12.i = icmp eq ptr %n.011.i, null
  br i1 %tobool.not12.i, label %retry.overflow_crit_edge, label %retry.while.body.i_crit_edge

retry.while.body.i_crit_edge:                     ; preds = %retry
  br label %while.body.i

retry.overflow_crit_edge:                         ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #18
  br label %overflow

while.body.i:                                     ; preds = %if.end4.i.while.body.i_crit_edge, %retry.while.body.i_crit_edge
  %n.014.i = phi ptr [ %n.0.i, %if.end4.i.while.body.i_crit_edge ], [ %n.011.i, %retry.while.body.i_crit_edge ]
  %va.013.i = phi ptr [ %va.1.i, %if.end4.i.while.body.i_crit_edge ], [ null, %retry.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %n.014.i, i32 -8
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %and6)
  %cmp.not.i693 = icmp ugt i32 %33, %and6
  br i1 %cmp.not.i693, label %if.else.i, label %if.then.i695

if.then.i695:                                     ; preds = %while.body.i
  %va_end.i694 = getelementptr i8, ptr %n.014.i, i32 -4
  %34 = ptrtoint ptr %va_end.i694 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %va_end.i694, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %and6)
  %cmp2.not.i = icmp ult i32 %35, %and6
  br i1 %cmp2.not.i, label %if.end.i696, label %if.then.i695.pvm_find_va_enclose_addr.exit_crit_edge

if.then.i695.pvm_find_va_enclose_addr.exit_crit_edge: ; preds = %if.then.i695
  call void @__sanitizer_cov_trace_pc() #18
  br label %pvm_find_va_enclose_addr.exit

if.end.i696:                                      ; preds = %if.then.i695
  call void @__sanitizer_cov_trace_pc() #18
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %n.014.i, i32 0, i32 1
  br label %if.end4.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %n.014.i, i32 0, i32 2
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.else.i, %if.end.i696
  %n.1.in.i = phi ptr [ %rb_right.i, %if.end.i696 ], [ %rb_left.i, %if.else.i ]
  %va.1.i = phi ptr [ %add.ptr.i, %if.end.i696 ], [ %va.013.i, %if.else.i ]
  %36 = ptrtoint ptr %n.1.in.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %n.0.i = load ptr, ptr %n.1.in.i, align 4
  %tobool.not.i697 = icmp eq ptr %n.0.i, null
  br i1 %tobool.not.i697, label %if.end4.i.pvm_find_va_enclose_addr.exit_crit_edge, label %if.end4.i.while.body.i_crit_edge

if.end4.i.while.body.i_crit_edge:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

if.end4.i.pvm_find_va_enclose_addr.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %pvm_find_va_enclose_addr.exit

pvm_find_va_enclose_addr.exit:                    ; preds = %if.end4.i.pvm_find_va_enclose_addr.exit_crit_edge, %if.then.i695.pvm_find_va_enclose_addr.exit_crit_edge
  %va.2.i = phi ptr [ %add.ptr.i, %if.then.i695.pvm_find_va_enclose_addr.exit_crit_edge ], [ %va.1.i, %if.end4.i.pvm_find_va_enclose_addr.exit_crit_edge ]
  %tobool.not.i698 = icmp eq ptr %va.2.i, null
  br i1 %tobool.not.i698, label %pvm_find_va_enclose_addr.exit.overflow_crit_edge, label %for.cond.preheader.i, !prof !247

pvm_find_va_enclose_addr.exit.overflow_crit_edge: ; preds = %pvm_find_va_enclose_addr.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %overflow

for.cond.preheader.i:                             ; preds = %pvm_find_va_enclose_addr.exit
  %list24.i = getelementptr inbounds %struct.vmap_area, ptr %va.2.i, i32 0, i32 3
  %cmp.not25.i = icmp eq ptr %list24.i, @free_vmap_area_list
  br i1 %cmp.not25.i, label %for.cond.preheader.i.pvm_determine_end_from_reverse.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.pvm_determine_end_from_reverse.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %pvm_determine_end_from_reverse.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %va.0 = phi ptr [ %add.ptr.i700, %for.inc.i.for.body.i_crit_edge ], [ %va.2.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %va_end.i699 = getelementptr inbounds %struct.vmap_area, ptr %va.0, i32 0, i32 1
  %37 = ptrtoint ptr %va_end.i699 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %va_end.i699, align 4
  %and7.i = and i32 %38, %neg
  %39 = tail call i32 @llvm.umin.i32(i32 %and7.i, i32 %and6) #16
  %40 = ptrtoint ptr %va.0 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %va.0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %39)
  %cmp9.i = icmp ult i32 %41, %39
  br i1 %cmp9.i, label %for.body.i.pvm_determine_end_from_reverse.exit_crit_edge, label %for.inc.i

for.body.i.pvm_determine_end_from_reverse.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %pvm_determine_end_from_reverse.exit

for.inc.i:                                        ; preds = %for.body.i
  %prev.i = getelementptr inbounds %struct.vmap_area, ptr %va.0, i32 0, i32 3, i32 1
  %42 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i, align 4
  %add.ptr.i700 = getelementptr i8, ptr %43, i32 -20
  %cmp.not.i701 = icmp eq ptr %43, @free_vmap_area_list
  br i1 %cmp.not.i701, label %for.inc.i.pvm_determine_end_from_reverse.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.pvm_determine_end_from_reverse.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %pvm_determine_end_from_reverse.exit

pvm_determine_end_from_reverse.exit:              ; preds = %for.inc.i.pvm_determine_end_from_reverse.exit_crit_edge, %for.body.i.pvm_determine_end_from_reverse.exit_crit_edge, %for.cond.preheader.i.pvm_determine_end_from_reverse.exit_crit_edge
  %va.1 = phi ptr [ %va.2.i, %for.cond.preheader.i.pvm_determine_end_from_reverse.exit_crit_edge ], [ %add.ptr.i700, %for.inc.i.pvm_determine_end_from_reverse.exit_crit_edge ], [ %va.0, %for.body.i.pvm_determine_end_from_reverse.exit_crit_edge ]
  %retval.0.i702 = phi i32 [ 0, %for.cond.preheader.i.pvm_determine_end_from_reverse.exit_crit_edge ], [ 0, %for.inc.i.pvm_determine_end_from_reverse.exit_crit_edge ], [ %39, %for.body.i.pvm_determine_end_from_reverse.exit_crit_edge ]
  %sub157 = sub i32 %retval.0.i702, %add154
  %add158867 = add i32 %sub157, %add100
  call void @__sanitizer_cov_trace_cmp4(i32 %add158867, i32 %add159)
  %cmp160868 = icmp ult i32 %add158867, %add159
  %cmp163861869 = icmp eq ptr %va.1, null
  %or.cond819862870 = select i1 %cmp160868, i1 true, i1 %cmp163861869
  br i1 %or.cond819862870, label %pvm_determine_end_from_reverse.exit.overflow_crit_edge, label %pvm_determine_end_from_reverse.exit.if.end165.lr.ph_crit_edge

pvm_determine_end_from_reverse.exit.if.end165.lr.ph_crit_edge: ; preds = %pvm_determine_end_from_reverse.exit
  br label %if.end165.lr.ph

pvm_determine_end_from_reverse.exit.overflow_crit_edge: ; preds = %pvm_determine_end_from_reverse.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %overflow

if.end165.lr.ph:                                  ; preds = %while.cond.outer.backedge.if.end165.lr.ph_crit_edge, %pvm_determine_end_from_reverse.exit.if.end165.lr.ph_crit_edge
  %area.2.ph876 = phi i32 [ %area.2866, %while.cond.outer.backedge.if.end165.lr.ph_crit_edge ], [ %last_area.0.lcssa, %pvm_determine_end_from_reverse.exit.if.end165.lr.ph_crit_edge ]
  %end.0.ph875 = phi i32 [ %end.0865, %while.cond.outer.backedge.if.end165.lr.ph_crit_edge ], [ %add154, %pvm_determine_end_from_reverse.exit.if.end165.lr.ph_crit_edge ]
  %start.0.ph874 = phi i32 [ %start.0864, %while.cond.outer.backedge.if.end165.lr.ph_crit_edge ], [ %29, %pvm_determine_end_from_reverse.exit.if.end165.lr.ph_crit_edge ]
  %base.0.ph873 = phi i32 [ %base.0.ph.be, %while.cond.outer.backedge.if.end165.lr.ph_crit_edge ], [ %sub157, %pvm_determine_end_from_reverse.exit.if.end165.lr.ph_crit_edge ]
  %va.2.ph871 = phi ptr [ %va.2.ph.be, %while.cond.outer.backedge.if.end165.lr.ph_crit_edge ], [ %va.1, %pvm_determine_end_from_reverse.exit.if.end165.lr.ph_crit_edge ]
  br label %if.end165

if.end165:                                        ; preds = %pvm_find_va_enclose_addr.exit757.if.end165_crit_edge, %if.end165.lr.ph
  %area.2866 = phi i32 [ %area.2.ph876, %if.end165.lr.ph ], [ %rem, %pvm_find_va_enclose_addr.exit757.if.end165_crit_edge ]
  %end.0865 = phi i32 [ %end.0.ph875, %if.end165.lr.ph ], [ %add187, %pvm_find_va_enclose_addr.exit757.if.end165_crit_edge ]
  %start.0864 = phi i32 [ %start.0.ph874, %if.end165.lr.ph ], [ %63, %pvm_find_va_enclose_addr.exit757.if.end165_crit_edge ]
  %va.2863 = phi ptr [ %va.2.ph871, %if.end165.lr.ph ], [ %va.2.i756, %pvm_find_va_enclose_addr.exit757.if.end165_crit_edge ]
  %add166 = add i32 %end.0865, %base.0.ph873
  %va_end = getelementptr inbounds %struct.vmap_area, ptr %va.2863, i32 0, i32 1
  %44 = ptrtoint ptr %va_end to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %va_end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add166, i32 %45)
  %cmp167 = icmp ugt i32 %add166, %45
  br i1 %cmp167, label %for.cond.preheader.i708, label %if.end171

for.cond.preheader.i708:                          ; preds = %if.end165
  %list24.i706 = getelementptr inbounds %struct.vmap_area, ptr %va.2863, i32 0, i32 3
  %cmp.not25.i707 = icmp eq ptr %list24.i706, @free_vmap_area_list
  br i1 %cmp.not25.i707, label %for.cond.preheader.i708.while.cond.outer.backedge_crit_edge, label %for.cond.preheader.i708.for.body.i712_crit_edge

for.cond.preheader.i708.for.body.i712_crit_edge:  ; preds = %for.cond.preheader.i708
  br label %for.body.i712

for.cond.preheader.i708.while.cond.outer.backedge_crit_edge: ; preds = %for.cond.preheader.i708
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.outer.backedge

for.body.i712:                                    ; preds = %for.inc.i716.for.body.i712_crit_edge, %for.cond.preheader.i708.for.body.i712_crit_edge
  %va.3 = phi ptr [ %add.ptr.i714, %for.inc.i716.for.body.i712_crit_edge ], [ %va.2863, %for.cond.preheader.i708.for.body.i712_crit_edge ]
  %va_end.i709 = getelementptr inbounds %struct.vmap_area, ptr %va.3, i32 0, i32 1
  %46 = ptrtoint ptr %va_end.i709 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %va_end.i709, align 4
  %and7.i710 = and i32 %47, %neg
  %48 = tail call i32 @llvm.umin.i32(i32 %and7.i710, i32 %and6) #16
  %49 = ptrtoint ptr %va.3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %va.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %48)
  %cmp9.i711 = icmp ult i32 %50, %48
  br i1 %cmp9.i711, label %for.body.i712.while.cond.outer.backedge_crit_edge, label %for.inc.i716

for.body.i712.while.cond.outer.backedge_crit_edge: ; preds = %for.body.i712
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.outer.backedge

for.inc.i716:                                     ; preds = %for.body.i712
  %prev.i713 = getelementptr inbounds %struct.vmap_area, ptr %va.3, i32 0, i32 3, i32 1
  %51 = ptrtoint ptr %prev.i713 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev.i713, align 4
  %add.ptr.i714 = getelementptr i8, ptr %52, i32 -20
  %cmp.not.i715 = icmp eq ptr %52, @free_vmap_area_list
  br i1 %cmp.not.i715, label %for.inc.i716.while.cond.outer.backedge_crit_edge, label %for.inc.i716.for.body.i712_crit_edge

for.inc.i716.for.body.i712_crit_edge:             ; preds = %for.inc.i716
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i712

for.inc.i716.while.cond.outer.backedge_crit_edge: ; preds = %for.inc.i716
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.outer.backedge

while.cond.outer.backedge:                        ; preds = %for.inc.i734.while.cond.outer.backedge_crit_edge, %for.body.i730.while.cond.outer.backedge_crit_edge, %for.cond.preheader.i726.while.cond.outer.backedge_crit_edge, %for.inc.i716.while.cond.outer.backedge_crit_edge, %for.body.i712.while.cond.outer.backedge_crit_edge, %for.cond.preheader.i708.while.cond.outer.backedge_crit_edge
  %va.2.ph.be = phi ptr [ %va.2863, %for.cond.preheader.i708.while.cond.outer.backedge_crit_edge ], [ %add.ptr.i720, %for.cond.preheader.i726.while.cond.outer.backedge_crit_edge ], [ %va.3, %for.body.i712.while.cond.outer.backedge_crit_edge ], [ %add.ptr.i714, %for.inc.i716.while.cond.outer.backedge_crit_edge ], [ %va.5, %for.body.i730.while.cond.outer.backedge_crit_edge ], [ %add.ptr.i732, %for.inc.i734.while.cond.outer.backedge_crit_edge ]
  %retval.0.i735.pn = phi i32 [ 0, %for.cond.preheader.i708.while.cond.outer.backedge_crit_edge ], [ 0, %for.cond.preheader.i726.while.cond.outer.backedge_crit_edge ], [ %48, %for.body.i712.while.cond.outer.backedge_crit_edge ], [ 0, %for.inc.i716.while.cond.outer.backedge_crit_edge ], [ %57, %for.body.i730.while.cond.outer.backedge_crit_edge ], [ 0, %for.inc.i734.while.cond.outer.backedge_crit_edge ]
  %base.0.ph.be = sub i32 %retval.0.i735.pn, %end.0865
  %add158 = add i32 %base.0.ph.be, %add100
  call void @__sanitizer_cov_trace_cmp4(i32 %add158, i32 %add159)
  %cmp160 = icmp ult i32 %add158, %add159
  %cmp163861 = icmp eq ptr %va.2.ph.be, null
  %or.cond819862 = select i1 %cmp160, i1 true, i1 %cmp163861
  br i1 %or.cond819862, label %while.cond.outer.backedge.overflow_crit_edge, label %while.cond.outer.backedge.if.end165.lr.ph_crit_edge

while.cond.outer.backedge.if.end165.lr.ph_crit_edge: ; preds = %while.cond.outer.backedge
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end165.lr.ph

while.cond.outer.backedge.overflow_crit_edge:     ; preds = %while.cond.outer.backedge
  call void @__sanitizer_cov_trace_pc() #18
  br label %overflow

if.end171:                                        ; preds = %if.end165
  %add172 = add i32 %start.0864, %base.0.ph873
  %53 = ptrtoint ptr %va.2863 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %va.2863, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add172, i32 %54)
  %cmp173 = icmp ult i32 %add172, %54
  br i1 %cmp173, label %if.then174, label %if.end179

if.then174:                                       ; preds = %if.end171
  %rb_node = getelementptr inbounds %struct.vmap_area, ptr %va.2863, i32 0, i32 2
  %call175 = tail call ptr @rb_prev(ptr noundef %rb_node) #16
  %tobool.not.i719 = icmp eq ptr %call175, null
  %add.ptr.i720 = getelementptr i8, ptr %call175, i32 -8
  %tobool.not.i723820 = icmp eq ptr %add.ptr.i720, null
  %tobool.not.i723 = or i1 %tobool.not.i719, %tobool.not.i723820
  br i1 %tobool.not.i723, label %if.then174.overflow_crit_edge, label %for.cond.preheader.i726, !prof !247

if.then174.overflow_crit_edge:                    ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #18
  br label %overflow

for.cond.preheader.i726:                          ; preds = %if.then174
  %list24.i724 = getelementptr i8, ptr %call175, i32 12
  %cmp.not25.i725 = icmp eq ptr %list24.i724, @free_vmap_area_list
  br i1 %cmp.not25.i725, label %for.cond.preheader.i726.while.cond.outer.backedge_crit_edge, label %for.cond.preheader.i726.for.body.i730_crit_edge

for.cond.preheader.i726.for.body.i730_crit_edge:  ; preds = %for.cond.preheader.i726
  br label %for.body.i730

for.cond.preheader.i726.while.cond.outer.backedge_crit_edge: ; preds = %for.cond.preheader.i726
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.outer.backedge

for.body.i730:                                    ; preds = %for.inc.i734.for.body.i730_crit_edge, %for.cond.preheader.i726.for.body.i730_crit_edge
  %va.5 = phi ptr [ %add.ptr.i732, %for.inc.i734.for.body.i730_crit_edge ], [ %add.ptr.i720, %for.cond.preheader.i726.for.body.i730_crit_edge ]
  %va_end.i727 = getelementptr inbounds %struct.vmap_area, ptr %va.5, i32 0, i32 1
  %55 = ptrtoint ptr %va_end.i727 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %va_end.i727, align 4
  %and7.i728 = and i32 %56, %neg
  %57 = tail call i32 @llvm.umin.i32(i32 %and7.i728, i32 %and6) #16
  %58 = ptrtoint ptr %va.5 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %va.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %57)
  %cmp9.i729 = icmp ult i32 %59, %57
  br i1 %cmp9.i729, label %for.body.i730.while.cond.outer.backedge_crit_edge, label %for.inc.i734

for.body.i730.while.cond.outer.backedge_crit_edge: ; preds = %for.body.i730
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.outer.backedge

for.inc.i734:                                     ; preds = %for.body.i730
  %prev.i731 = getelementptr inbounds %struct.vmap_area, ptr %va.5, i32 0, i32 3, i32 1
  %60 = ptrtoint ptr %prev.i731 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %prev.i731, align 4
  %add.ptr.i732 = getelementptr i8, ptr %61, i32 -20
  %cmp.not.i733 = icmp eq ptr %61, @free_vmap_area_list
  br i1 %cmp.not.i733, label %for.inc.i734.while.cond.outer.backedge_crit_edge, label %for.inc.i734.for.body.i730_crit_edge

for.inc.i734.for.body.i730_crit_edge:             ; preds = %for.inc.i734
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i730

for.inc.i734.while.cond.outer.backedge_crit_edge: ; preds = %for.inc.i734
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.outer.backedge

if.end179:                                        ; preds = %if.end171
  %sub181 = add i32 %add180, %area.2866
  %rem = srem i32 %sub181, %nr_vms
  call void @__sanitizer_cov_trace_cmp4(i32 %rem, i32 %area.2.ph876)
  %cmp182 = icmp eq i32 %rem, %area.2.ph876
  br i1 %cmp182, label %for.cond190.preheader, label %if.end184

for.cond190.preheader:                            ; preds = %if.end179
  br i1 %cmp856, label %for.cond190.preheader.for.body192_crit_edge, label %for.end351.critedge

for.cond190.preheader.for.body192_crit_edge:      ; preds = %for.cond190.preheader
  br label %for.body192

if.end184:                                        ; preds = %if.end179
  %arrayidx185 = getelementptr i32, ptr %offsets, i32 %rem
  %62 = ptrtoint ptr %arrayidx185 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx185, align 4
  %arrayidx186 = getelementptr i32, ptr %sizes, i32 %rem
  %64 = ptrtoint ptr %arrayidx186 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx186, align 4
  %add187 = add i32 %65, %63
  %add188 = add i32 %add187, %base.0.ph873
  %n.011.i737 = load ptr, ptr @free_vmap_area_root, align 4
  %tobool.not12.i738 = icmp eq ptr %n.011.i737, null
  br i1 %tobool.not12.i738, label %if.end184.overflow_crit_edge, label %if.end184.while.body.i743_crit_edge

if.end184.while.body.i743_crit_edge:              ; preds = %if.end184
  br label %while.body.i743

if.end184.overflow_crit_edge:                     ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #18
  br label %overflow

while.body.i743:                                  ; preds = %if.end4.i755.while.body.i743_crit_edge, %if.end184.while.body.i743_crit_edge
  %n.014.i739 = phi ptr [ %n.0.i753, %if.end4.i755.while.body.i743_crit_edge ], [ %n.011.i737, %if.end184.while.body.i743_crit_edge ]
  %va.013.i740 = phi ptr [ %va.1.i752, %if.end4.i755.while.body.i743_crit_edge ], [ null, %if.end184.while.body.i743_crit_edge ]
  %add.ptr.i741 = getelementptr i8, ptr %n.014.i739, i32 -8
  %66 = ptrtoint ptr %add.ptr.i741 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %add.ptr.i741, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %add188)
  %cmp.not.i742 = icmp ugt i32 %67, %add188
  br i1 %cmp.not.i742, label %if.else.i750, label %if.then.i746

if.then.i746:                                     ; preds = %while.body.i743
  %va_end.i744 = getelementptr i8, ptr %n.014.i739, i32 -4
  %68 = ptrtoint ptr %va_end.i744 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %va_end.i744, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %add188)
  %cmp2.not.i745 = icmp ult i32 %69, %add188
  br i1 %cmp2.not.i745, label %if.end.i748, label %if.then.i746.pvm_find_va_enclose_addr.exit757_crit_edge

if.then.i746.pvm_find_va_enclose_addr.exit757_crit_edge: ; preds = %if.then.i746
  call void @__sanitizer_cov_trace_pc() #18
  br label %pvm_find_va_enclose_addr.exit757

if.end.i748:                                      ; preds = %if.then.i746
  call void @__sanitizer_cov_trace_pc() #18
  %rb_right.i747 = getelementptr inbounds %struct.rb_node, ptr %n.014.i739, i32 0, i32 1
  br label %if.end4.i755

if.else.i750:                                     ; preds = %while.body.i743
  call void @__sanitizer_cov_trace_pc() #18
  %rb_left.i749 = getelementptr inbounds %struct.rb_node, ptr %n.014.i739, i32 0, i32 2
  br label %if.end4.i755

if.end4.i755:                                     ; preds = %if.else.i750, %if.end.i748
  %n.1.in.i751 = phi ptr [ %rb_right.i747, %if.end.i748 ], [ %rb_left.i749, %if.else.i750 ]
  %va.1.i752 = phi ptr [ %add.ptr.i741, %if.end.i748 ], [ %va.013.i740, %if.else.i750 ]
  %70 = ptrtoint ptr %n.1.in.i751 to i32
  call void @__asan_load4_noabort(i32 %70)
  %n.0.i753 = load ptr, ptr %n.1.in.i751, align 4
  %tobool.not.i754 = icmp eq ptr %n.0.i753, null
  br i1 %tobool.not.i754, label %if.end4.i755.pvm_find_va_enclose_addr.exit757_crit_edge, label %if.end4.i755.while.body.i743_crit_edge

if.end4.i755.while.body.i743_crit_edge:           ; preds = %if.end4.i755
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i743

if.end4.i755.pvm_find_va_enclose_addr.exit757_crit_edge: ; preds = %if.end4.i755
  call void @__sanitizer_cov_trace_pc() #18
  br label %pvm_find_va_enclose_addr.exit757

pvm_find_va_enclose_addr.exit757:                 ; preds = %if.end4.i755.pvm_find_va_enclose_addr.exit757_crit_edge, %if.then.i746.pvm_find_va_enclose_addr.exit757_crit_edge
  %va.2.i756 = phi ptr [ %add.ptr.i741, %if.then.i746.pvm_find_va_enclose_addr.exit757_crit_edge ], [ %va.1.i752, %if.end4.i755.pvm_find_va_enclose_addr.exit757_crit_edge ]
  %cmp163 = icmp eq ptr %va.2.i756, null
  br i1 %cmp163, label %pvm_find_va_enclose_addr.exit757.overflow_crit_edge, label %pvm_find_va_enclose_addr.exit757.if.end165_crit_edge

pvm_find_va_enclose_addr.exit757.if.end165_crit_edge: ; preds = %pvm_find_va_enclose_addr.exit757
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end165

pvm_find_va_enclose_addr.exit757.overflow_crit_edge: ; preds = %pvm_find_va_enclose_addr.exit757
  call void @__sanitizer_cov_trace_pc() #18
  br label %overflow

for.body192:                                      ; preds = %for.inc324.for.body192_crit_edge, %for.cond190.preheader.for.body192_crit_edge
  %area.3879 = phi i32 [ %inc325, %for.inc324.for.body192_crit_edge ], [ 0, %for.cond190.preheader.for.body192_crit_edge ]
  %arrayidx193 = getelementptr i32, ptr %offsets, i32 %area.3879
  %71 = ptrtoint ptr %arrayidx193 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx193, align 4
  %add194 = add i32 %72, %base.0.ph873
  %arrayidx195 = getelementptr i32, ptr %sizes, i32 %area.3879
  %73 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx195, align 4
  %n.011.i758 = load ptr, ptr @free_vmap_area_root, align 4
  %tobool.not12.i759 = icmp eq ptr %n.011.i758, null
  br i1 %tobool.not12.i759, label %for.body192.land.rhs203_crit_edge, label %for.body192.while.body.i764_crit_edge

for.body192.while.body.i764_crit_edge:            ; preds = %for.body192
  br label %while.body.i764

for.body192.land.rhs203_crit_edge:                ; preds = %for.body192
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.rhs203

while.body.i764:                                  ; preds = %if.end4.i776.while.body.i764_crit_edge, %for.body192.while.body.i764_crit_edge
  %n.014.i760 = phi ptr [ %n.0.i774, %if.end4.i776.while.body.i764_crit_edge ], [ %n.011.i758, %for.body192.while.body.i764_crit_edge ]
  %va.013.i761 = phi ptr [ %va.1.i773, %if.end4.i776.while.body.i764_crit_edge ], [ null, %for.body192.while.body.i764_crit_edge ]
  %add.ptr.i762 = getelementptr i8, ptr %n.014.i760, i32 -8
  %75 = ptrtoint ptr %add.ptr.i762 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %add.ptr.i762, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %add194)
  %cmp.not.i763 = icmp ugt i32 %76, %add194
  br i1 %cmp.not.i763, label %if.else.i771, label %if.then.i767

if.then.i767:                                     ; preds = %while.body.i764
  %va_end.i765 = getelementptr i8, ptr %n.014.i760, i32 -4
  %77 = ptrtoint ptr %va_end.i765 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %va_end.i765, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %add194)
  %cmp2.not.i766 = icmp ult i32 %78, %add194
  br i1 %cmp2.not.i766, label %if.end.i769, label %if.then.i767.pvm_find_va_enclose_addr.exit778_crit_edge

if.then.i767.pvm_find_va_enclose_addr.exit778_crit_edge: ; preds = %if.then.i767
  call void @__sanitizer_cov_trace_pc() #18
  br label %pvm_find_va_enclose_addr.exit778

if.end.i769:                                      ; preds = %if.then.i767
  call void @__sanitizer_cov_trace_pc() #18
  %rb_right.i768 = getelementptr inbounds %struct.rb_node, ptr %n.014.i760, i32 0, i32 1
  br label %if.end4.i776

if.else.i771:                                     ; preds = %while.body.i764
  call void @__sanitizer_cov_trace_pc() #18
  %rb_left.i770 = getelementptr inbounds %struct.rb_node, ptr %n.014.i760, i32 0, i32 2
  br label %if.end4.i776

if.end4.i776:                                     ; preds = %if.else.i771, %if.end.i769
  %n.1.in.i772 = phi ptr [ %rb_right.i768, %if.end.i769 ], [ %rb_left.i770, %if.else.i771 ]
  %va.1.i773 = phi ptr [ %add.ptr.i762, %if.end.i769 ], [ %va.013.i761, %if.else.i771 ]
  %79 = ptrtoint ptr %n.1.in.i772 to i32
  call void @__asan_load4_noabort(i32 %79)
  %n.0.i774 = load ptr, ptr %n.1.in.i772, align 4
  %tobool.not.i775 = icmp eq ptr %n.0.i774, null
  br i1 %tobool.not.i775, label %if.end4.i776.pvm_find_va_enclose_addr.exit778_crit_edge, label %if.end4.i776.while.body.i764_crit_edge

if.end4.i776.while.body.i764_crit_edge:           ; preds = %if.end4.i776
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i764

if.end4.i776.pvm_find_va_enclose_addr.exit778_crit_edge: ; preds = %if.end4.i776
  call void @__sanitizer_cov_trace_pc() #18
  br label %pvm_find_va_enclose_addr.exit778

pvm_find_va_enclose_addr.exit778:                 ; preds = %if.end4.i776.pvm_find_va_enclose_addr.exit778_crit_edge, %if.then.i767.pvm_find_va_enclose_addr.exit778_crit_edge
  %va.2.i777 = phi ptr [ %add.ptr.i762, %if.then.i767.pvm_find_va_enclose_addr.exit778_crit_edge ], [ %va.1.i773, %if.end4.i776.pvm_find_va_enclose_addr.exit778_crit_edge ]
  %cmp197 = icmp eq ptr %va.2.i777, null
  br i1 %cmp197, label %pvm_find_va_enclose_addr.exit778.land.rhs203_crit_edge, label %if.end251

pvm_find_va_enclose_addr.exit778.land.rhs203_crit_edge: ; preds = %pvm_find_va_enclose_addr.exit778
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.rhs203

land.rhs203:                                      ; preds = %pvm_find_va_enclose_addr.exit778.land.rhs203_crit_edge, %for.body192.land.rhs203_crit_edge
  %.b605 = load i1, ptr @pcpu_get_vm_areas.__already_done, align 1
  br i1 %.b605, label %land.rhs203.cleanup_crit_edge, label %land.rhs203.cleanup.sink.split_crit_edge, !prof !245

land.rhs203.cleanup.sink.split_crit_edge:         ; preds = %land.rhs203
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

land.rhs203.cleanup_crit_edge:                    ; preds = %land.rhs203
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end251:                                        ; preds = %pvm_find_va_enclose_addr.exit778
  %80 = ptrtoint ptr %va.2.i777 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %va.2.i777, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %add194)
  %cmp.i = icmp ugt i32 %81, %add194
  br i1 %cmp.i, label %if.end251.land.rhs261_crit_edge, label %lor.lhs.false.i

if.end251.land.rhs261_crit_edge:                  ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.rhs261

lor.lhs.false.i:                                  ; preds = %if.end251
  %add.i = add i32 %74, %add194
  %va_end.i = getelementptr inbounds %struct.vmap_area, ptr %va.2.i777, i32 0, i32 1
  %82 = ptrtoint ptr %va_end.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %va_end.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %83)
  %cmp1.i = icmp ugt i32 %add.i, %83
  br i1 %cmp1.i, label %lor.lhs.false.i.land.rhs261_crit_edge, label %classify_va_fit_type.exit

lor.lhs.false.i.land.rhs261_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.rhs261

classify_va_fit_type.exit:                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %add194)
  %cmp3.i = icmp eq i32 %81, %add194
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %add.i)
  %cmp7.i = icmp eq i32 %83, %add.i
  %..i = select i1 %cmp7.i, i32 1, i32 2
  %.29.i = select i1 %cmp7.i, i32 3, i32 4
  %type.0.i = select i1 %cmp3.i, i32 %..i, i32 %.29.i
  %84 = zext i32 %type.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %type.0.i, label %if.then8.i [
    i32 1, label %if.then.i
    i32 2, label %if.then2.i
    i32 3, label %if.then5.i
  ]

land.rhs261:                                      ; preds = %lor.lhs.false.i.land.rhs261_crit_edge, %if.end251.land.rhs261_crit_edge
  %.b603604 = load i1, ptr @pcpu_get_vm_areas.__already_done.13, align 1
  br i1 %.b603604, label %land.rhs261.cleanup_crit_edge, label %land.rhs261.cleanup.sink.split_crit_edge, !prof !245

land.rhs261.cleanup.sink.split_crit_edge:         ; preds = %land.rhs261
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

land.rhs261.cleanup_crit_edge:                    ; preds = %land.rhs261
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then.i:                                        ; preds = %classify_va_fit_type.exit
  %rb_node.i.i = getelementptr inbounds %struct.vmap_area, ptr %va.2.i777, i32 0, i32 2
  %85 = ptrtoint ptr %rb_node.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %rb_node.i.i, align 4
  %87 = ptrtoint ptr %rb_node.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %87)
  %cmp.i.i = icmp eq i32 %86, %87
  br i1 %cmp.i.i, label %if.end35.thread70.i, label %if.end22.critedge.i.i, !prof !247

if.end35.thread70.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 962, i32 noundef 9, ptr noundef null) #16
  %88 = load ptr, ptr @vmap_area_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %88, ptr noundef nonnull %va.2.i777) #16
  br label %for.inc324

if.end22.critedge.i.i:                            ; preds = %if.then.i
  %rb_right.i.i.i.i = getelementptr inbounds %struct.vmap_area, ptr %va.2.i777, i32 0, i32 2, i32 1
  %89 = ptrtoint ptr %rb_right.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %rb_right.i.i.i.i, align 4
  %rb_left.i.i.i.i = getelementptr inbounds %struct.vmap_area, ptr %va.2.i777, i32 0, i32 2, i32 2
  %91 = ptrtoint ptr %rb_left.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %rb_left.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %92, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.i, label %if.else6.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end22.critedge.i.i
  %and.i.i.i.i = and i32 %86, -4
  %93 = inttoptr i32 %and.i.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %if.then.i.i.i.i.__rb_change_child.exit.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i

if.then.i.i.i.i.__rb_change_child.exit.i.i.i.i_crit_edge: ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__rb_change_child.exit.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %rb_left.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %93, i32 0, i32 2
  %94 = ptrtoint ptr %rb_left.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %rb_left.i.i.i.i.i, align 4
  %cmp.i.i.i.i.i = icmp eq ptr %95, %rb_node.i.i
  %rb_right.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %93, i32 0, i32 1
  %spec.select.i.i.i.i.i = select i1 %cmp.i.i.i.i.i, ptr %rb_left.i.i.i.i.i, ptr %rb_right.i.i.i.i.i
  br label %__rb_change_child.exit.i.i.i.i

__rb_change_child.exit.i.i.i.i:                   ; preds = %if.then.i.i.i.i.i, %if.then.i.i.i.i.__rb_change_child.exit.i.i.i.i_crit_edge
  %rb_left.sink.i.i.i.i.i = phi ptr [ @free_vmap_area_root, %if.then.i.i.i.i.__rb_change_child.exit.i.i.i.i_crit_edge ], [ %spec.select.i.i.i.i.i, %if.then.i.i.i.i.i ]
  %96 = ptrtoint ptr %rb_left.sink.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile ptr %90, ptr %rb_left.sink.i.i.i.i.i, align 4
  %tobool1.not.i.i.i.i = icmp eq ptr %90, null
  br i1 %tobool1.not.i.i.i.i, label %if.else.i.i.i.i, label %if.then2.i.i.i.i

if.then2.i.i.i.i:                                 ; preds = %__rb_change_child.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %97 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %86, ptr %90, align 4
  br label %if.end69.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %__rb_change_child.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %and4.i.i.i.i = and i32 %86, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i.i.i)
  %tobool5.not.i.i.i.i = icmp eq i32 %and4.i.i.i.i, 0
  %spec.select.i.i.i.i = select i1 %tobool5.not.i.i.i.i, ptr null, ptr %93
  br label %if.end69.i.i.i.i

if.else6.i.i.i.i:                                 ; preds = %if.end22.critedge.i.i
  %tobool7.not.i.i.i.i = icmp eq ptr %90, null
  br i1 %tobool7.not.i.i.i.i, label %if.then8.i.i.i.i, label %if.else12.i.i.i.i

if.then8.i.i.i.i:                                 ; preds = %if.else6.i.i.i.i
  %98 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %86, ptr %92, align 4
  %and11.i.i.i.i = and i32 %86, -4
  %99 = inttoptr i32 %and11.i.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i.i.i)
  %tobool.not.i2.i.i.i.i = icmp eq i32 %and11.i.i.i.i, 0
  br i1 %tobool.not.i2.i.i.i.i, label %if.then8.i.i.i.i.__rb_change_child.exit9.i.i.i.i_crit_edge, label %if.then.i7.i.i.i.i

if.then8.i.i.i.i.__rb_change_child.exit9.i.i.i.i_crit_edge: ; preds = %if.then8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__rb_change_child.exit9.i.i.i.i

if.then.i7.i.i.i.i:                               ; preds = %if.then8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %rb_left.i3.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %99, i32 0, i32 2
  %100 = ptrtoint ptr %rb_left.i3.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %rb_left.i3.i.i.i.i, align 4
  %cmp.i4.i.i.i.i = icmp eq ptr %101, %rb_node.i.i
  %rb_right.i5.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %99, i32 0, i32 1
  %spec.select.i6.i.i.i.i = select i1 %cmp.i4.i.i.i.i, ptr %rb_left.i3.i.i.i.i, ptr %rb_right.i5.i.i.i.i
  br label %__rb_change_child.exit9.i.i.i.i

__rb_change_child.exit9.i.i.i.i:                  ; preds = %if.then.i7.i.i.i.i, %if.then8.i.i.i.i.__rb_change_child.exit9.i.i.i.i_crit_edge
  %rb_left.sink.i8.i.i.i.i = phi ptr [ @free_vmap_area_root, %if.then8.i.i.i.i.__rb_change_child.exit9.i.i.i.i_crit_edge ], [ %spec.select.i6.i.i.i.i, %if.then.i7.i.i.i.i ]
  %102 = ptrtoint ptr %rb_left.sink.i8.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store volatile ptr %92, ptr %rb_left.sink.i8.i.i.i.i, align 4
  br label %if.end69.i.i.i.i

if.else12.i.i.i.i:                                ; preds = %if.else6.i.i.i.i
  %rb_left13.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %90, i32 0, i32 2
  %103 = ptrtoint ptr %rb_left13.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %rb_left13.i.i.i.i, align 4
  %tobool14.not.i.i.i.i = icmp eq ptr %104, null
  br i1 %tobool14.not.i.i.i.i, label %if.then15.i.i.i.i, label %if.else12.i.i.i.i.do.body.i.i.i.i_crit_edge

if.else12.i.i.i.i.do.body.i.i.i.i_crit_edge:      ; preds = %if.else12.i.i.i.i
  br label %do.body.i.i.i.i

if.then15.i.i.i.i:                                ; preds = %if.else12.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %rb_right16.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %90, i32 0, i32 1
  %105 = ptrtoint ptr %rb_right16.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %rb_right16.i.i.i.i, align 4
  %107 = getelementptr %struct.vmap_area, ptr %va.2.i777, i32 0, i32 4
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %107, align 4
  %110 = getelementptr i8, ptr %90, i32 20
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %109, ptr %110, align 4
  %.pre.i.i.i.i = ptrtoint ptr %90 to i32
  br label %if.end42.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.else12.i.i.i.i.do.body.i.i.i.i_crit_edge
  %tmp.0.i.i.i.i = phi ptr [ %113, %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge ], [ %104, %if.else12.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %successor.0.i.i.i.i = phi ptr [ %tmp.0.i.i.i.i, %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge ], [ %90, %if.else12.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %rb_left18.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %tmp.0.i.i.i.i, i32 0, i32 2
  %112 = ptrtoint ptr %rb_left18.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %rb_left18.i.i.i.i, align 4
  %tobool19.not.i.i.i.i = icmp eq ptr %113, null
  br i1 %tobool19.not.i.i.i.i, label %do.end.i.i.i.i, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %do.body.i.i.i.i
  %rb_right20.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %tmp.0.i.i.i.i, i32 0, i32 1
  %114 = ptrtoint ptr %rb_right20.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %rb_right20.i.i.i.i, align 4
  %rb_left26.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %successor.0.i.i.i.i, i32 0, i32 2
  %116 = ptrtoint ptr %rb_left26.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store volatile ptr %115, ptr %rb_left26.i.i.i.i, align 4
  store volatile ptr %90, ptr %rb_right20.i.i.i.i, align 4
  %117 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %90, align 4
  %and.i.i.i.i.i = and i32 %118, 1
  %119 = ptrtoint ptr %tmp.0.i.i.i.i to i32
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, %119
  store i32 %or.i.i.i.i.i, ptr %90, align 4
  %120 = getelementptr %struct.vmap_area, ptr %va.2.i777, i32 0, i32 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %120, align 4
  %123 = getelementptr i8, ptr %tmp.0.i.i.i.i, i32 20
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %122, ptr %123, align 4
  %cmp.not7.i.i.i.i.i = icmp eq ptr %successor.0.i.i.i.i, %tmp.0.i.i.i.i
  br i1 %cmp.not7.i.i.i.i.i, label %do.end.i.i.i.i.if.end42.i.i.i.i_crit_edge, label %do.end.i.i.i.i.while.body.i.i.i.i.i_crit_edge

do.end.i.i.i.i.while.body.i.i.i.i.i_crit_edge:    ; preds = %do.end.i.i.i.i
  br label %while.body.i.i.i.i.i

do.end.i.i.i.i.if.end42.i.i.i.i_crit_edge:        ; preds = %do.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end42.i.i.i.i

while.body.i.i.i.i.i:                             ; preds = %cleanup.i.i.i.i.i.while.body.i.i.i.i.i_crit_edge, %do.end.i.i.i.i.while.body.i.i.i.i.i_crit_edge
  %rb.addr.08.i.i.i.i.i = phi ptr [ %147, %cleanup.i.i.i.i.i.while.body.i.i.i.i.i_crit_edge ], [ %successor.0.i.i.i.i, %do.end.i.i.i.i.while.body.i.i.i.i.i_crit_edge ]
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i.i.i.i, i32 -8
  %va_end.i.i.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i.i.i.i, i32 -4
  %125 = ptrtoint ptr %va_end.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %va_end.i.i.i.i.i.i.i, align 4
  %127 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %add.ptr.i.i.i.i.i, align 4
  %sub.i.i.i.i.i.i.i = sub i32 %126, %128
  %rb_left.i.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i.i.i.i, i32 8
  %129 = ptrtoint ptr %rb_left.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %rb_left.i.i.i.i.i.i, align 4
  %tobool.not.i.i.i.i.i.i = icmp eq ptr %130, null
  br i1 %tobool.not.i.i.i.i.i.i, label %while.body.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i.i

while.body.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge: ; preds = %while.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i.i.i.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %while.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %131 = getelementptr i8, ptr %130, i32 20
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %131, align 4
  %134 = tail call i32 @llvm.umax.i32(i32 %133, i32 %sub.i.i.i.i.i.i.i) #16
  br label %if.end4.i.i.i.i.i.i

if.end4.i.i.i.i.i.i:                              ; preds = %if.then.i.i.i.i.i.i, %while.body.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge
  %max.0.i.i.i.i.i.i = phi i32 [ %sub.i.i.i.i.i.i.i, %while.body.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge ], [ %134, %if.then.i.i.i.i.i.i ]
  %rb_right.i.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i.i.i.i, i32 4
  %135 = ptrtoint ptr %rb_right.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %rb_right.i.i.i.i.i.i, align 4
  %tobool6.not.i.i.i.i.i.i = icmp eq ptr %136, null
  br i1 %tobool6.not.i.i.i.i.i.i, label %if.end4.i.i.i.i.i.i.if.end16.i.i.i.i.i.i_crit_edge, label %if.then7.i.i.i.i.i.i

if.end4.i.i.i.i.i.i.if.end16.i.i.i.i.i.i_crit_edge: ; preds = %if.end4.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16.i.i.i.i.i.i

if.then7.i.i.i.i.i.i:                             ; preds = %if.end4.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %137 = getelementptr i8, ptr %136, i32 20
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %137, align 4
  %140 = tail call i32 @llvm.umax.i32(i32 %139, i32 %max.0.i.i.i.i.i.i) #16
  br label %if.end16.i.i.i.i.i.i

if.end16.i.i.i.i.i.i:                             ; preds = %if.then7.i.i.i.i.i.i, %if.end4.i.i.i.i.i.i.if.end16.i.i.i.i.i.i_crit_edge
  %max.1.i.i.i.i.i.i = phi i32 [ %max.0.i.i.i.i.i.i, %if.end4.i.i.i.i.i.i.if.end16.i.i.i.i.i.i_crit_edge ], [ %140, %if.then7.i.i.i.i.i.i ]
  %141 = getelementptr i8, ptr %rb.addr.08.i.i.i.i.i, i32 20
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %141, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %143, i32 %max.1.i.i.i.i.i.i)
  %cmp18.i.i.i.i.i.i = icmp eq i32 %143, %max.1.i.i.i.i.i.i
  br i1 %cmp18.i.i.i.i.i.i, label %if.end16.i.i.i.i.i.i.if.end42.i.i.i.i_crit_edge, label %cleanup.i.i.i.i.i

if.end16.i.i.i.i.i.i.if.end42.i.i.i.i_crit_edge:  ; preds = %if.end16.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end42.i.i.i.i

cleanup.i.i.i.i.i:                                ; preds = %if.end16.i.i.i.i.i.i
  %144 = ptrtoint ptr %141 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %max.1.i.i.i.i.i.i, ptr %141, align 4
  %145 = ptrtoint ptr %rb.addr.08.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %rb.addr.08.i.i.i.i.i, align 4
  %and.i10.i.i.i.i = and i32 %146, -4
  %147 = inttoptr i32 %and.i10.i.i.i.i to ptr
  %cmp.not.i.i.i.i.i = icmp eq ptr %tmp.0.i.i.i.i, %147
  br i1 %cmp.not.i.i.i.i.i, label %cleanup.i.i.i.i.i.if.end42.i.i.i.i_crit_edge, label %cleanup.i.i.i.i.i.while.body.i.i.i.i.i_crit_edge

cleanup.i.i.i.i.i.while.body.i.i.i.i.i_crit_edge: ; preds = %cleanup.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i.i.i.i.i

cleanup.i.i.i.i.i.if.end42.i.i.i.i_crit_edge:     ; preds = %cleanup.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end42.i.i.i.i

if.end42.i.i.i.i:                                 ; preds = %cleanup.i.i.i.i.i.if.end42.i.i.i.i_crit_edge, %if.end16.i.i.i.i.i.i.if.end42.i.i.i.i_crit_edge, %do.end.i.i.i.i.if.end42.i.i.i.i_crit_edge, %if.then15.i.i.i.i
  %.pre-phi.i.i.i.i = phi i32 [ %119, %do.end.i.i.i.i.if.end42.i.i.i.i_crit_edge ], [ %.pre.i.i.i.i, %if.then15.i.i.i.i ], [ %119, %if.end16.i.i.i.i.i.i.if.end42.i.i.i.i_crit_edge ], [ %119, %cleanup.i.i.i.i.i.if.end42.i.i.i.i_crit_edge ]
  %parent.0.i.i.i.i = phi ptr [ %tmp.0.i.i.i.i, %do.end.i.i.i.i.if.end42.i.i.i.i_crit_edge ], [ %90, %if.then15.i.i.i.i ], [ %successor.0.i.i.i.i, %if.end16.i.i.i.i.i.i.if.end42.i.i.i.i_crit_edge ], [ %successor.0.i.i.i.i, %cleanup.i.i.i.i.i.if.end42.i.i.i.i_crit_edge ]
  %successor.1.i.i.i.i = phi ptr [ %tmp.0.i.i.i.i, %do.end.i.i.i.i.if.end42.i.i.i.i_crit_edge ], [ %90, %if.then15.i.i.i.i ], [ %tmp.0.i.i.i.i, %if.end16.i.i.i.i.i.i.if.end42.i.i.i.i_crit_edge ], [ %tmp.0.i.i.i.i, %cleanup.i.i.i.i.i.if.end42.i.i.i.i_crit_edge ]
  %child2.0.i.i.i.i = phi ptr [ %115, %do.end.i.i.i.i.if.end42.i.i.i.i_crit_edge ], [ %106, %if.then15.i.i.i.i ], [ %115, %if.end16.i.i.i.i.i.i.if.end42.i.i.i.i_crit_edge ], [ %115, %cleanup.i.i.i.i.i.if.end42.i.i.i.i_crit_edge ]
  %148 = ptrtoint ptr %rb_left.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %rb_left.i.i.i.i, align 4
  %rb_left49.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %successor.1.i.i.i.i, i32 0, i32 2
  %150 = ptrtoint ptr %rb_left49.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store volatile ptr %149, ptr %rb_left49.i.i.i.i, align 4
  %151 = ptrtoint ptr %149 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %149, align 4
  %and.i11.i.i.i.i = and i32 %152, 1
  %or.i12.i.i.i.i = or i32 %and.i11.i.i.i.i, %.pre-phi.i.i.i.i
  store i32 %or.i12.i.i.i.i, ptr %149, align 4
  %153 = ptrtoint ptr %rb_node.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %rb_node.i.i, align 4
  %and55.i.i.i.i = and i32 %154, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i.i.i.i)
  %tobool.not.i13.i.i.i.i = icmp eq i32 %and55.i.i.i.i, 0
  br i1 %tobool.not.i13.i.i.i.i, label %if.end42.i.i.i.i.__rb_change_child.exit20.i.i.i.i_crit_edge, label %if.then.i18.i.i.i.i

if.end42.i.i.i.i.__rb_change_child.exit20.i.i.i.i_crit_edge: ; preds = %if.end42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__rb_change_child.exit20.i.i.i.i

if.then.i18.i.i.i.i:                              ; preds = %if.end42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %155 = inttoptr i32 %and55.i.i.i.i to ptr
  %rb_left.i14.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %155, i32 0, i32 2
  %156 = ptrtoint ptr %rb_left.i14.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %rb_left.i14.i.i.i.i, align 4
  %cmp.i15.i.i.i.i = icmp eq ptr %157, %rb_node.i.i
  %rb_right.i16.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %155, i32 0, i32 1
  %spec.select.i17.i.i.i.i = select i1 %cmp.i15.i.i.i.i, ptr %rb_left.i14.i.i.i.i, ptr %rb_right.i16.i.i.i.i
  br label %__rb_change_child.exit20.i.i.i.i

__rb_change_child.exit20.i.i.i.i:                 ; preds = %if.then.i18.i.i.i.i, %if.end42.i.i.i.i.__rb_change_child.exit20.i.i.i.i_crit_edge
  %rb_left.sink.i19.i.i.i.i = phi ptr [ @free_vmap_area_root, %if.end42.i.i.i.i.__rb_change_child.exit20.i.i.i.i_crit_edge ], [ %spec.select.i17.i.i.i.i, %if.then.i18.i.i.i.i ]
  %158 = ptrtoint ptr %rb_left.sink.i19.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store volatile ptr %successor.1.i.i.i.i, ptr %rb_left.sink.i19.i.i.i.i, align 4
  %tobool56.not.i.i.i.i = icmp eq ptr %child2.0.i.i.i.i, null
  br i1 %tobool56.not.i.i.i.i, label %if.else58.i.i.i.i, label %if.then57.i.i.i.i

if.then57.i.i.i.i:                                ; preds = %__rb_change_child.exit20.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %159 = ptrtoint ptr %parent.0.i.i.i.i to i32
  %or.i21.i.i.i.i = or i32 %159, 1
  %160 = ptrtoint ptr %child2.0.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %or.i21.i.i.i.i, ptr %child2.0.i.i.i.i, align 4
  br label %if.end66.i.i.i.i

if.else58.i.i.i.i:                                ; preds = %__rb_change_child.exit20.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %161 = ptrtoint ptr %successor.1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %successor.1.i.i.i.i, align 4
  %and60.i.i.i.i = and i32 %162, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.i.i.i.i)
  %tobool61.not.i.i.i.i = icmp eq i32 %and60.i.i.i.i, 0
  %spec.select1.i.i.i.i = select i1 %tobool61.not.i.i.i.i, ptr null, ptr %parent.0.i.i.i.i
  br label %if.end66.i.i.i.i

if.end66.i.i.i.i:                                 ; preds = %if.else58.i.i.i.i, %if.then57.i.i.i.i
  %rebalance.1.i.i.i.i = phi ptr [ null, %if.then57.i.i.i.i ], [ %spec.select1.i.i.i.i, %if.else58.i.i.i.i ]
  %163 = ptrtoint ptr %successor.1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %154, ptr %successor.1.i.i.i.i, align 4
  br label %if.end69.i.i.i.i

if.end69.i.i.i.i:                                 ; preds = %if.end66.i.i.i.i, %__rb_change_child.exit9.i.i.i.i, %if.else.i.i.i.i, %if.then2.i.i.i.i
  %tmp.1.i.i.i.i = phi ptr [ %successor.1.i.i.i.i, %if.end66.i.i.i.i ], [ %99, %__rb_change_child.exit9.i.i.i.i ], [ %93, %if.else.i.i.i.i ], [ %93, %if.then2.i.i.i.i ]
  %rebalance.2.i.i.i.i = phi ptr [ %rebalance.1.i.i.i.i, %if.end66.i.i.i.i ], [ null, %__rb_change_child.exit9.i.i.i.i ], [ %spec.select.i.i.i.i, %if.else.i.i.i.i ], [ null, %if.then2.i.i.i.i ]
  %cmp.not7.i22.i.i.i.i = icmp eq ptr %tmp.1.i.i.i.i, null
  br i1 %cmp.not7.i22.i.i.i.i, label %if.end69.i.i.i.i.__rb_erase_augmented.exit.i.i.i_crit_edge, label %if.end69.i.i.i.i.while.body.i29.i.i.i.i_crit_edge

if.end69.i.i.i.i.while.body.i29.i.i.i.i_crit_edge: ; preds = %if.end69.i.i.i.i
  br label %while.body.i29.i.i.i.i

if.end69.i.i.i.i.__rb_erase_augmented.exit.i.i.i_crit_edge: ; preds = %if.end69.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__rb_erase_augmented.exit.i.i.i

while.body.i29.i.i.i.i:                           ; preds = %cleanup.i41.i.i.i.i.while.body.i29.i.i.i.i_crit_edge, %if.end69.i.i.i.i.while.body.i29.i.i.i.i_crit_edge
  %rb.addr.08.i23.i.i.i.i = phi ptr [ %186, %cleanup.i41.i.i.i.i.while.body.i29.i.i.i.i_crit_edge ], [ %tmp.1.i.i.i.i, %if.end69.i.i.i.i.while.body.i29.i.i.i.i_crit_edge ]
  %add.ptr.i24.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i23.i.i.i.i, i32 -8
  %va_end.i.i.i25.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i23.i.i.i.i, i32 -4
  %164 = ptrtoint ptr %va_end.i.i.i25.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %va_end.i.i.i25.i.i.i.i, align 4
  %166 = ptrtoint ptr %add.ptr.i24.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %add.ptr.i24.i.i.i.i, align 4
  %sub.i.i.i26.i.i.i.i = sub i32 %165, %167
  %rb_left.i.i27.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i23.i.i.i.i, i32 8
  %168 = ptrtoint ptr %rb_left.i.i27.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %rb_left.i.i27.i.i.i.i, align 4
  %tobool.not.i.i28.i.i.i.i = icmp eq ptr %169, null
  br i1 %tobool.not.i.i28.i.i.i.i, label %while.body.i29.i.i.i.i.if.end4.i.i34.i.i.i.i_crit_edge, label %if.then.i.i30.i.i.i.i

while.body.i29.i.i.i.i.if.end4.i.i34.i.i.i.i_crit_edge: ; preds = %while.body.i29.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i.i34.i.i.i.i

if.then.i.i30.i.i.i.i:                            ; preds = %while.body.i29.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %170 = getelementptr i8, ptr %169, i32 20
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %170, align 4
  %173 = tail call i32 @llvm.umax.i32(i32 %172, i32 %sub.i.i.i26.i.i.i.i) #16
  br label %if.end4.i.i34.i.i.i.i

if.end4.i.i34.i.i.i.i:                            ; preds = %if.then.i.i30.i.i.i.i, %while.body.i29.i.i.i.i.if.end4.i.i34.i.i.i.i_crit_edge
  %max.0.i.i31.i.i.i.i = phi i32 [ %sub.i.i.i26.i.i.i.i, %while.body.i29.i.i.i.i.if.end4.i.i34.i.i.i.i_crit_edge ], [ %173, %if.then.i.i30.i.i.i.i ]
  %rb_right.i.i32.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i23.i.i.i.i, i32 4
  %174 = ptrtoint ptr %rb_right.i.i32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %rb_right.i.i32.i.i.i.i, align 4
  %tobool6.not.i.i33.i.i.i.i = icmp eq ptr %175, null
  br i1 %tobool6.not.i.i33.i.i.i.i, label %if.end4.i.i34.i.i.i.i.if.end16.i.i38.i.i.i.i_crit_edge, label %if.then7.i.i35.i.i.i.i

if.end4.i.i34.i.i.i.i.if.end16.i.i38.i.i.i.i_crit_edge: ; preds = %if.end4.i.i34.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16.i.i38.i.i.i.i

if.then7.i.i35.i.i.i.i:                           ; preds = %if.end4.i.i34.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %176 = getelementptr i8, ptr %175, i32 20
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %176, align 4
  %179 = tail call i32 @llvm.umax.i32(i32 %178, i32 %max.0.i.i31.i.i.i.i) #16
  br label %if.end16.i.i38.i.i.i.i

if.end16.i.i38.i.i.i.i:                           ; preds = %if.then7.i.i35.i.i.i.i, %if.end4.i.i34.i.i.i.i.if.end16.i.i38.i.i.i.i_crit_edge
  %max.1.i.i36.i.i.i.i = phi i32 [ %max.0.i.i31.i.i.i.i, %if.end4.i.i34.i.i.i.i.if.end16.i.i38.i.i.i.i_crit_edge ], [ %179, %if.then7.i.i35.i.i.i.i ]
  %180 = getelementptr i8, ptr %rb.addr.08.i23.i.i.i.i, i32 20
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %180, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %182, i32 %max.1.i.i36.i.i.i.i)
  %cmp18.i.i37.i.i.i.i = icmp eq i32 %182, %max.1.i.i36.i.i.i.i
  br i1 %cmp18.i.i37.i.i.i.i, label %if.end16.i.i38.i.i.i.i.__rb_erase_augmented.exit.i.i.i_crit_edge, label %cleanup.i41.i.i.i.i

if.end16.i.i38.i.i.i.i.__rb_erase_augmented.exit.i.i.i_crit_edge: ; preds = %if.end16.i.i38.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__rb_erase_augmented.exit.i.i.i

cleanup.i41.i.i.i.i:                              ; preds = %if.end16.i.i38.i.i.i.i
  %183 = ptrtoint ptr %180 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %max.1.i.i36.i.i.i.i, ptr %180, align 4
  %184 = ptrtoint ptr %rb.addr.08.i23.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %rb.addr.08.i23.i.i.i.i, align 4
  %and.i39.i.i.i.i = and i32 %185, -4
  %186 = inttoptr i32 %and.i39.i.i.i.i to ptr
  %cmp.not.i40.i.i.i.i = icmp eq i32 %and.i39.i.i.i.i, 0
  br i1 %cmp.not.i40.i.i.i.i, label %cleanup.i41.i.i.i.i.__rb_erase_augmented.exit.i.i.i_crit_edge, label %cleanup.i41.i.i.i.i.while.body.i29.i.i.i.i_crit_edge

cleanup.i41.i.i.i.i.while.body.i29.i.i.i.i_crit_edge: ; preds = %cleanup.i41.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i29.i.i.i.i

cleanup.i41.i.i.i.i.__rb_erase_augmented.exit.i.i.i_crit_edge: ; preds = %cleanup.i41.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__rb_erase_augmented.exit.i.i.i

__rb_erase_augmented.exit.i.i.i:                  ; preds = %cleanup.i41.i.i.i.i.__rb_erase_augmented.exit.i.i.i_crit_edge, %if.end16.i.i38.i.i.i.i.__rb_erase_augmented.exit.i.i.i_crit_edge, %if.end69.i.i.i.i.__rb_erase_augmented.exit.i.i.i_crit_edge
  %tobool.not.i.i.i = icmp eq ptr %rebalance.2.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %__rb_erase_augmented.exit.i.i.i.if.end27.i.i_crit_edge, label %if.then.i.i.i

__rb_erase_augmented.exit.i.i.i.if.end27.i.i_crit_edge: ; preds = %__rb_erase_augmented.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27.i.i

if.then.i.i.i:                                    ; preds = %__rb_erase_augmented.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__rb_erase_color(ptr noundef nonnull %rebalance.2.i.i.i.i, ptr noundef nonnull @free_vmap_area_root, ptr noundef nonnull @free_vmap_area_rb_augment_cb_rotate) #16
  br label %if.end27.i.i

if.end27.i.i:                                     ; preds = %if.then.i.i.i, %__rb_erase_augmented.exit.i.i.i.if.end27.i.i_crit_edge
  %list.i.i = getelementptr inbounds %struct.vmap_area, ptr %va.2.i777, i32 0, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i.i) #16
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end27.i.i.if.end35.i_crit_edge

if.end27.i.i.if.end35.i_crit_edge:                ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end35.i

if.end.i.i.i.i:                                   ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i.i = getelementptr inbounds %struct.vmap_area, ptr %va.2.i777, i32 0, i32 3, i32 1
  %187 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %prev.i.i.i.i, align 4
  %189 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %list.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %190, i32 0, i32 1
  %191 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %188, ptr %prev1.i.i.i.i.i, align 4
  %192 = ptrtoint ptr %188 to i32
  call void @__asan_store4_noabort(i32 %192)
  store volatile ptr %190, ptr %188, align 4
  br label %if.end35.i

if.then2.i:                                       ; preds = %classify_va_fit_type.exit
  call void @__sanitizer_cov_trace_pc() #18
  %add.i609 = add i32 %81, %74
  %193 = ptrtoint ptr %va.2.i777 to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %add.i609, ptr %va.2.i777, align 4
  br label %if.then37.i

if.then5.i:                                       ; preds = %classify_va_fit_type.exit
  call void @__sanitizer_cov_trace_pc() #18
  %194 = ptrtoint ptr %va_end.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %add194, ptr %va_end.i, align 4
  br label %if.then37.i

if.then8.i:                                       ; preds = %classify_va_fit_type.exit
  %195 = tail call i32 @llvm.read_register.i32(metadata !235) #16
  %and.i.i = and i32 %195, -16384
  %196 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %196, i32 0, i32 3
  %197 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %198
  %199 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %arrayidx.i, align 4
  %add15.i = add i32 %200, ptrtoint (ptr @ne_fit_preload_node to i32)
  %201 = inttoptr i32 %add15.i to ptr
  %202 = ptrtoint ptr %201 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %201, align 4
  store ptr null, ptr %201, align 4
  %tobool.not.i = icmp eq ptr %203, null
  br i1 %tobool.not.i, label %if.then21.i, label %if.then8.i.if.end25.i_crit_edge, !prof !247

if.then8.i.if.end25.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end25.i

if.then21.i:                                      ; preds = %if.then8.i
  %204 = load ptr, ptr @vmap_area_cachep, align 4
  %call22.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %204, i32 noundef 2048) #16
  %tobool23.not.i = icmp eq ptr %call22.i, null
  br i1 %tobool23.not.i, label %if.then21.i.cleanup_crit_edge, label %if.then21.i.if.end25.i_crit_edge

if.then21.i.if.end25.i_crit_edge:                 ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end25.i

if.then21.i.cleanup_crit_edge:                    ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end25.i:                                       ; preds = %if.then21.i.if.end25.i_crit_edge, %if.then8.i.if.end25.i_crit_edge
  %lva.0.i = phi ptr [ %call22.i, %if.then21.i.if.end25.i_crit_edge ], [ %203, %if.then8.i.if.end25.i_crit_edge ]
  %205 = ptrtoint ptr %va.2.i777 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %va.2.i777, align 4
  %207 = ptrtoint ptr %lva.0.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %206, ptr %lva.0.i, align 4
  %va_end28.i = getelementptr inbounds %struct.vmap_area, ptr %lva.0.i, i32 0, i32 1
  %208 = ptrtoint ptr %va_end28.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %add194, ptr %va_end28.i, align 4
  store i32 %add.i, ptr %va.2.i777, align 4
  br label %if.then37.i

if.end35.i:                                       ; preds = %if.end.i.i.i.i, %if.end27.i.i.if.end35.i_crit_edge
  %209 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.vmap_area, ptr %va.2.i777, i32 0, i32 3, i32 1
  %210 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %211 = ptrtoint ptr %rb_node.i.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %87, ptr %rb_node.i.i, align 4
  %212 = load ptr, ptr @vmap_area_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %212, ptr noundef nonnull %va.2.i777) #16
  br label %for.inc324

if.then37.i:                                      ; preds = %if.end25.i, %if.then5.i, %if.then2.i
  %lva.169.i = phi ptr [ %lva.0.i, %if.end25.i ], [ null, %if.then5.i ], [ null, %if.then2.i ]
  %rb_node.i62.i = getelementptr inbounds %struct.vmap_area, ptr %va.2.i777, i32 0, i32 2
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %cleanup.i.i.i.while.body.i.i.i_crit_edge, %if.then37.i
  %rb.addr.08.i.i.i = phi ptr [ %235, %cleanup.i.i.i.while.body.i.i.i_crit_edge ], [ %rb_node.i62.i, %if.then37.i ]
  %add.ptr.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i.i, i32 -8
  %va_end.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i.i, i32 -4
  %213 = ptrtoint ptr %va_end.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %va_end.i.i.i.i.i, align 4
  %215 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %add.ptr.i.i.i, align 4
  %sub.i.i.i.i.i = sub i32 %214, %216
  %rb_left.i.i.i63.i = getelementptr i8, ptr %rb.addr.08.i.i.i, i32 8
  %217 = ptrtoint ptr %rb_left.i.i.i63.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %rb_left.i.i.i63.i, align 4
  %tobool.not.i.i.i64.i = icmp eq ptr %218, null
  br i1 %tobool.not.i.i.i64.i, label %while.body.i.i.i.if.end4.i.i.i.i_crit_edge, label %if.then.i.i.i65.i

while.body.i.i.i.if.end4.i.i.i.i_crit_edge:       ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i.i.i.i

if.then.i.i.i65.i:                                ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %219 = getelementptr i8, ptr %218, i32 20
  %220 = ptrtoint ptr %219 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %219, align 4
  %222 = tail call i32 @llvm.umax.i32(i32 %221, i32 %sub.i.i.i.i.i) #16
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %if.then.i.i.i65.i, %while.body.i.i.i.if.end4.i.i.i.i_crit_edge
  %max.0.i.i.i.i = phi i32 [ %sub.i.i.i.i.i, %while.body.i.i.i.if.end4.i.i.i.i_crit_edge ], [ %222, %if.then.i.i.i65.i ]
  %rb_right.i.i.i66.i = getelementptr i8, ptr %rb.addr.08.i.i.i, i32 4
  %223 = ptrtoint ptr %rb_right.i.i.i66.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %rb_right.i.i.i66.i, align 4
  %tobool6.not.i.i.i.i = icmp eq ptr %224, null
  br i1 %tobool6.not.i.i.i.i, label %if.end4.i.i.i.i.if.end16.i.i.i.i_crit_edge, label %if.then7.i.i.i.i

if.end4.i.i.i.i.if.end16.i.i.i.i_crit_edge:       ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16.i.i.i.i

if.then7.i.i.i.i:                                 ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %225 = getelementptr i8, ptr %224, i32 20
  %226 = ptrtoint ptr %225 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %225, align 4
  %228 = tail call i32 @llvm.umax.i32(i32 %227, i32 %max.0.i.i.i.i) #16
  br label %if.end16.i.i.i.i

if.end16.i.i.i.i:                                 ; preds = %if.then7.i.i.i.i, %if.end4.i.i.i.i.if.end16.i.i.i.i_crit_edge
  %max.1.i.i.i.i = phi i32 [ %max.0.i.i.i.i, %if.end4.i.i.i.i.if.end16.i.i.i.i_crit_edge ], [ %228, %if.then7.i.i.i.i ]
  %229 = getelementptr i8, ptr %rb.addr.08.i.i.i, i32 20
  %230 = ptrtoint ptr %229 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %229, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %231, i32 %max.1.i.i.i.i)
  %cmp18.i.i.i.i = icmp eq i32 %231, %max.1.i.i.i.i
  br i1 %cmp18.i.i.i.i, label %if.end16.i.i.i.i.augment_tree_propagate_from.exit.i_crit_edge, label %cleanup.i.i.i

if.end16.i.i.i.i.augment_tree_propagate_from.exit.i_crit_edge: ; preds = %if.end16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %augment_tree_propagate_from.exit.i

cleanup.i.i.i:                                    ; preds = %if.end16.i.i.i.i
  %232 = ptrtoint ptr %229 to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 %max.1.i.i.i.i, ptr %229, align 4
  %233 = ptrtoint ptr %rb.addr.08.i.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %rb.addr.08.i.i.i, align 4
  %and.i.i.i = and i32 %234, -4
  %235 = inttoptr i32 %and.i.i.i to ptr
  %cmp.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %cleanup.i.i.i.augment_tree_propagate_from.exit.i_crit_edge, label %cleanup.i.i.i.while.body.i.i.i_crit_edge

cleanup.i.i.i.while.body.i.i.i_crit_edge:         ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i.i.i

cleanup.i.i.i.augment_tree_propagate_from.exit.i_crit_edge: ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %augment_tree_propagate_from.exit.i

augment_tree_propagate_from.exit.i:               ; preds = %cleanup.i.i.i.augment_tree_propagate_from.exit.i_crit_edge, %if.end16.i.i.i.i.augment_tree_propagate_from.exit.i_crit_edge
  %tobool38.not.i = icmp eq ptr %lva.169.i, null
  br i1 %tobool38.not.i, label %augment_tree_propagate_from.exit.i.for.inc324_crit_edge, label %if.then39.i

augment_tree_propagate_from.exit.i.for.inc324_crit_edge: ; preds = %augment_tree_propagate_from.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc324

if.then39.i:                                      ; preds = %augment_tree_propagate_from.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @insert_vmap_area_augment(ptr noundef nonnull %lva.169.i, ptr noundef %rb_node.i62.i) #16
  br label %for.inc324

cleanup.sink.split:                               ; preds = %land.rhs261.cleanup.sink.split_crit_edge, %land.rhs203.cleanup.sink.split_crit_edge
  %pcpu_get_vm_areas.__already_done.13.sink = phi ptr [ @pcpu_get_vm_areas.__already_done, %land.rhs203.cleanup.sink.split_crit_edge ], [ @pcpu_get_vm_areas.__already_done.13, %land.rhs261.cleanup.sink.split_crit_edge ]
  %.sink = phi i32 [ 3767, %land.rhs203.cleanup.sink.split_crit_edge ], [ 3772, %land.rhs261.cleanup.sink.split_crit_edge ]
  %236 = ptrtoint ptr %pcpu_get_vm_areas.__already_done.13.sink to i32
  call void @__asan_store1_noabort(i32 %236)
  store i1 true, ptr %pcpu_get_vm_areas.__already_done.13.sink, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #16
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then21.i.cleanup_crit_edge, %land.rhs261.cleanup_crit_edge, %land.rhs203.cleanup_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %area.3879)
  %tobool353.not884 = icmp eq i32 %area.3879, 0
  br i1 %tobool353.not884, label %cleanup.overflow_crit_edge, label %cleanup.while.body354_crit_edge

cleanup.while.body354_crit_edge:                  ; preds = %cleanup
  br label %while.body354

cleanup.overflow_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %overflow

for.inc324:                                       ; preds = %if.then39.i, %augment_tree_propagate_from.exit.i.for.inc324_crit_edge, %if.end35.i, %if.end35.thread70.i
  %arrayidx320 = getelementptr ptr, ptr %call8.i.i689, i32 %area.3879
  %237 = ptrtoint ptr %arrayidx320 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %arrayidx320, align 4
  %239 = ptrtoint ptr %238 to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 %add194, ptr %238, align 4
  %va_end323 = getelementptr inbounds %struct.vmap_area, ptr %238, i32 0, i32 1
  %240 = ptrtoint ptr %va_end323 to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 %add.i, ptr %va_end323, align 4
  %inc325 = add nuw nsw i32 %area.3879, 1
  %exitcond926.not = icmp eq i32 %inc325, %nr_vms
  br i1 %exitcond926.not, label %for.end326, label %for.inc324.for.body192_crit_edge

for.inc324.for.body192_crit_edge:                 ; preds = %for.inc324
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body192

for.end326:                                       ; preds = %for.inc324
  tail call void @_raw_spin_unlock(ptr noundef nonnull @free_vmap_area_lock) #16
  tail call void @_raw_spin_lock(ptr noundef nonnull @vmap_area_lock) #16
  br i1 %cmp856, label %for.end326.for.body345_crit_edge, label %for.end326.for.end351_crit_edge

for.end326.for.end351_crit_edge:                  ; preds = %for.end326
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end351

for.end326.for.body345_crit_edge:                 ; preds = %for.end326
  br label %for.body345

for.body345:                                      ; preds = %for.body345.for.body345_crit_edge, %for.end326.for.body345_crit_edge
  %area.5889 = phi i32 [ %inc350, %for.body345.for.body345_crit_edge ], [ 0, %for.end326.for.body345_crit_edge ]
  %arrayidx346 = getelementptr ptr, ptr %call8.i.i689, i32 %area.5889
  %241 = ptrtoint ptr %arrayidx346 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %arrayidx346, align 4
  tail call fastcc void @insert_vmap_area(ptr noundef %242)
  %arrayidx347 = getelementptr ptr, ptr %call8.i.i, i32 %area.5889
  %243 = ptrtoint ptr %arrayidx347 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %arrayidx347, align 4
  %245 = ptrtoint ptr %arrayidx346 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %arrayidx346, align 4
  %flags1.i = getelementptr inbounds %struct.vm_struct, ptr %244, i32 0, i32 3
  %247 = ptrtoint ptr %flags1.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 2, ptr %flags1.i, align 4
  %248 = ptrtoint ptr %246 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %246, align 4
  %250 = inttoptr i32 %249 to ptr
  %addr.i = getelementptr inbounds %struct.vm_struct, ptr %244, i32 0, i32 1
  %251 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store ptr %250, ptr %addr.i, align 4
  %va_end.i779 = getelementptr inbounds %struct.vmap_area, ptr %246, i32 0, i32 1
  %252 = ptrtoint ptr %va_end.i779 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %va_end.i779, align 4
  %254 = load i32, ptr %246, align 4
  %sub.i = sub i32 %253, %254
  %size.i = getelementptr inbounds %struct.vm_struct, ptr %244, i32 0, i32 2
  %255 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 %sub.i, ptr %size.i, align 4
  %caller3.i = getelementptr inbounds %struct.vm_struct, ptr %244, i32 0, i32 7
  %256 = ptrtoint ptr %caller3.i to i32
  call void @__asan_store4_noabort(i32 %256)
  store ptr @pcpu_get_vm_areas, ptr %caller3.i, align 4
  %257 = getelementptr inbounds %struct.vmap_area, ptr %246, i32 0, i32 4
  %258 = ptrtoint ptr %257 to i32
  call void @__asan_store4_noabort(i32 %258)
  store ptr %244, ptr %257, align 4
  %inc350 = add nuw nsw i32 %area.5889, 1
  %exitcond928.not = icmp eq i32 %inc350, %nr_vms
  br i1 %exitcond928.not, label %for.body345.for.end351_crit_edge, label %for.body345.for.body345_crit_edge

for.body345.for.body345_crit_edge:                ; preds = %for.body345
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body345

for.body345.for.end351_crit_edge:                 ; preds = %for.body345
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end351

for.end351.critedge:                              ; preds = %for.cond190.preheader
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_unlock(ptr noundef nonnull @free_vmap_area_lock) #16
  tail call void @_raw_spin_lock(ptr noundef nonnull @vmap_area_lock) #16
  br label %for.end351

for.end351:                                       ; preds = %for.end351.critedge, %for.body345.for.end351_crit_edge, %for.end326.for.end351_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @vmap_area_lock) #16
  tail call void @kfree(ptr noundef nonnull %call8.i.i689) #16
  br label %cleanup418

while.body354:                                    ; preds = %if.end365.while.body354_crit_edge, %cleanup.while.body354_crit_edge
  %dec885.in = phi i32 [ %dec885, %if.end365.while.body354_crit_edge ], [ %area.3879, %cleanup.while.body354_crit_edge ]
  %dec885 = add nsw i32 %dec885.in, -1
  %arrayidx355 = getelementptr ptr, ptr %call8.i.i689, i32 %dec885
  %259 = ptrtoint ptr %arrayidx355 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %arrayidx355, align 4
  %261 = load ptr, ptr @free_vmap_area_root, align 4
  %tobool1.not.i.i.i = icmp eq ptr %261, null
  br i1 %tobool1.not.i.i.i, label %while.body354.if.end4.i.i.i_crit_edge, label %if.end6.i.i.i, !prof !247

while.body354.if.end4.i.i.i_crit_edge:            ; preds = %while.body354
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i.i.i

if.end6.i.i.i:                                    ; preds = %while.body354
  %262 = ptrtoint ptr %260 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %260, align 4
  %va_end1275.i.i.i = getelementptr inbounds %struct.vmap_area, ptr %260, i32 0, i32 1
  %264 = ptrtoint ptr %va_end1275.i.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %va_end1275.i.i.i, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.cond50.i.i.i.do.body.i.i.i_crit_edge, %if.end6.i.i.i
  %266 = phi ptr [ %272, %do.cond50.i.i.i.do.body.i.i.i_crit_edge ], [ %261, %if.end6.i.i.i ]
  %add.ptr.i.i.i612 = getelementptr i8, ptr %266, i32 -8
  %va_end.i.i.i = getelementptr i8, ptr %266, i32 -4
  %267 = ptrtoint ptr %va_end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %va_end.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %263, i32 %268)
  %cmp.i.i.i = icmp ult i32 %263, %268
  %269 = ptrtoint ptr %add.ptr.i.i.i612 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %add.ptr.i.i.i612, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %265, i32 %270)
  %cmp9.not.i.i.i = icmp ugt i32 %265, %270
  br i1 %cmp.i.i.i, label %land.lhs.true.i.i.i, label %if.else11.thread.i.i.i

land.lhs.true.i.i.i:                              ; preds = %do.body.i.i.i
  br i1 %cmp9.not.i.i.i, label %land.lhs.true.i.i.i.find_va_links.exit.thread.i.i_crit_edge, label %if.then10.i.i.i

land.lhs.true.i.i.i.find_va_links.exit.thread.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %find_va_links.exit.thread.i.i

if.then10.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %rb_left.i.i.i = getelementptr inbounds %struct.rb_node, ptr %266, i32 0, i32 2
  br label %do.cond50.i.i.i

if.else11.thread.i.i.i:                           ; preds = %do.body.i.i.i
  br i1 %cmp9.not.i.i.i, label %if.then19.i.i.i, label %if.else11.thread.i.i.i.find_va_links.exit.thread.i.i_crit_edge

if.else11.thread.i.i.i.find_va_links.exit.thread.i.i_crit_edge: ; preds = %if.else11.thread.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %find_va_links.exit.thread.i.i

if.then19.i.i.i:                                  ; preds = %if.else11.thread.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %rb_right.i.i.i = getelementptr inbounds %struct.rb_node, ptr %266, i32 0, i32 1
  br label %do.cond50.i.i.i

find_va_links.exit.thread.i.i:                    ; preds = %if.else11.thread.i.i.i.find_va_links.exit.thread.i.i_crit_edge, %land.lhs.true.i.i.i.find_va_links.exit.thread.i.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 892, i32 noundef 9, ptr noundef nonnull @.str.26, i32 noundef %263, i32 noundef %265, i32 noundef %270, i32 noundef %268) #16
  br label %if.end365

do.cond50.i.i.i:                                  ; preds = %if.then19.i.i.i, %if.then10.i.i.i
  %link.2.i.i.i = phi ptr [ %rb_left.i.i.i, %if.then10.i.i.i ], [ %rb_right.i.i.i, %if.then19.i.i.i ]
  %271 = ptrtoint ptr %link.2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %link.2.i.i.i, align 4
  %tobool51.not.i.i.i = icmp eq ptr %272, null
  br i1 %tobool51.not.i.i.i, label %find_va_links.exit.i.i, label %do.cond50.i.i.i.do.body.i.i.i_crit_edge

do.cond50.i.i.i.do.body.i.i.i_crit_edge:          ; preds = %do.cond50.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i.i

find_va_links.exit.i.i:                           ; preds = %do.cond50.i.i.i
  %tobool.not.i.i = icmp eq ptr %link.2.i.i.i, null
  br i1 %tobool.not.i.i, label %find_va_links.exit.i.i.if.end365_crit_edge, label %if.end.i.i.i

find_va_links.exit.i.i.if.end365_crit_edge:       ; preds = %find_va_links.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end365

if.end.i.i.i:                                     ; preds = %find_va_links.exit.i.i
  %list4.i.i.i = getelementptr i8, ptr %266, i32 12
  %rb_right.i65.i.i = getelementptr inbounds %struct.rb_node, ptr %266, i32 0, i32 1
  %cmp.i66.i.i = icmp eq ptr %rb_right.i65.i.i, %link.2.i.i.i
  br i1 %cmp.i66.i.i, label %cond.true.i.i.i, label %if.end.i.i.i.get_va_next_sibling.exit.i.i_crit_edge

if.end.i.i.i.get_va_next_sibling.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_va_next_sibling.exit.i.i

cond.true.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %273 = ptrtoint ptr %list4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %list4.i.i.i, align 4
  br label %get_va_next_sibling.exit.i.i

get_va_next_sibling.exit.i.i:                     ; preds = %cond.true.i.i.i, %if.end.i.i.i.get_va_next_sibling.exit.i.i_crit_edge
  %retval.0.i67.i.i = phi ptr [ %274, %cond.true.i.i.i ], [ %list4.i.i.i, %if.end.i.i.i.get_va_next_sibling.exit.i.i_crit_edge ]
  %cmp.i.i613 = icmp eq ptr %retval.0.i67.i.i, null
  br i1 %cmp.i.i613, label %get_va_next_sibling.exit.i.i.if.then.i73.i.i_crit_edge, label %if.end5.i.i, !prof !247

get_va_next_sibling.exit.i.i.if.then.i73.i.i_crit_edge: ; preds = %get_va_next_sibling.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i73.i.i

if.end5.i.i:                                      ; preds = %get_va_next_sibling.exit.i.i
  %cmp6.not.i.i = icmp eq ptr %retval.0.i67.i.i, @free_vmap_area_list
  br i1 %cmp6.not.i.i, label %if.end5.i.i.if.end13.i.i_crit_edge, label %if.then7.i.i

if.end5.i.i.if.end13.i.i_crit_edge:               ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13.i.i

if.then7.i.i:                                     ; preds = %if.end5.i.i
  %add.ptr.i.i = getelementptr i8, ptr %retval.0.i67.i.i, i32 -20
  %275 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %276, i32 %265)
  %cmp8.i.i = icmp eq i32 %276, %265
  br i1 %cmp8.i.i, label %if.then9.i.i, label %if.then7.i.i.if.end13.i.i_crit_edge

if.then7.i.i.if.end13.i.i_crit_edge:              ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13.i.i

if.then9.i.i:                                     ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %277 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 %263, ptr %add.ptr.i.i, align 4
  %278 = load ptr, ptr @vmap_area_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %278, ptr noundef %260) #16
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.then9.i.i, %if.then7.i.i.if.end13.i.i_crit_edge, %if.end5.i.i.if.end13.i.i_crit_edge
  %merged.0.off0.i.i = phi i1 [ true, %if.then9.i.i ], [ false, %if.then7.i.i.if.end13.i.i_crit_edge ], [ false, %if.end5.i.i.if.end13.i.i_crit_edge ]
  %va.addr.0.i.i = phi ptr [ %add.ptr.i.i, %if.then9.i.i ], [ %260, %if.then7.i.i.if.end13.i.i_crit_edge ], [ %260, %if.end5.i.i.if.end13.i.i_crit_edge ]
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %retval.0.i67.i.i, i32 0, i32 1
  %279 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %prev.i.i, align 4
  %cmp14.not.i.i = icmp eq ptr %280, @free_vmap_area_list
  br i1 %cmp14.not.i.i, label %if.end13.i.i.insert.i.i_crit_edge, label %if.then15.i.i

if.end13.i.i.insert.i.i_crit_edge:                ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %insert.i.i

if.then15.i.i:                                    ; preds = %if.end13.i.i
  %add.ptr19.i.i = getelementptr i8, ptr %280, i32 -20
  %va_end20.i.i = getelementptr i8, ptr %280, i32 -16
  %281 = ptrtoint ptr %va_end20.i.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %va_end20.i.i, align 4
  %283 = ptrtoint ptr %va.addr.0.i.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %va.addr.0.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %282, i32 %284)
  %cmp22.i.i = icmp eq i32 %282, %284
  br i1 %cmp22.i.i, label %if.then23.i.i, label %if.then15.i.i.insert.i.i_crit_edge

if.then15.i.i.insert.i.i_crit_edge:               ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %insert.i.i

if.then23.i.i:                                    ; preds = %if.then15.i.i
  br i1 %merged.0.off0.i.i, label %if.then25.i.i, label %if.then23.i.i.insert.thread115.i.i_crit_edge

if.then23.i.i.insert.thread115.i.i_crit_edge:     ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %insert.thread115.i.i

if.then25.i.i:                                    ; preds = %if.then23.i.i
  %rb_node.i.i.i = getelementptr inbounds %struct.vmap_area, ptr %va.addr.0.i.i, i32 0, i32 2
  %285 = ptrtoint ptr %rb_node.i.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %rb_node.i.i.i, align 4
  %287 = ptrtoint ptr %rb_node.i.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %286, i32 %287)
  %cmp.i68.i.i = icmp eq i32 %286, %287
  br i1 %cmp.i68.i.i, label %do.end.i69.i.i, label %if.end22.critedge.i.i.i, !prof !247

do.end.i69.i.i:                                   ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 962, i32 noundef 9, ptr noundef null) #16
  br label %insert.thread115.i.i

if.end22.critedge.i.i.i:                          ; preds = %if.then25.i.i
  %rb_right.i.i.i.i.i614 = getelementptr inbounds %struct.vmap_area, ptr %va.addr.0.i.i, i32 0, i32 2, i32 1
  %288 = ptrtoint ptr %rb_right.i.i.i.i.i614 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %rb_right.i.i.i.i.i614, align 4
  %rb_left.i.i.i.i.i615 = getelementptr inbounds %struct.vmap_area, ptr %va.addr.0.i.i, i32 0, i32 2, i32 2
  %290 = ptrtoint ptr %rb_left.i.i.i.i.i615 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %rb_left.i.i.i.i.i615, align 4
  %tobool.not.i.i.i.i.i616 = icmp eq ptr %291, null
  br i1 %tobool.not.i.i.i.i.i616, label %if.then.i.i.i.i.i619, label %if.else6.i.i.i.i.i

if.then.i.i.i.i.i619:                             ; preds = %if.end22.critedge.i.i.i
  %and.i.i.i.i.i617 = and i32 %286, -4
  %292 = inttoptr i32 %and.i.i.i.i.i617 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i617)
  %tobool.not.i.i.i.i.i.i618 = icmp eq i32 %and.i.i.i.i.i617, 0
  br i1 %tobool.not.i.i.i.i.i.i618, label %if.then.i.i.i.i.i619.__rb_change_child.exit.i.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i.i622

if.then.i.i.i.i.i619.__rb_change_child.exit.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i.i.i.i619
  call void @__sanitizer_cov_trace_pc() #18
  br label %__rb_change_child.exit.i.i.i.i.i

if.then.i.i.i.i.i.i622:                           ; preds = %if.then.i.i.i.i.i619
  call void @__sanitizer_cov_trace_pc() #18
  %rb_left.i.i.i.i.i.i620 = getelementptr inbounds %struct.rb_node, ptr %292, i32 0, i32 2
  %293 = ptrtoint ptr %rb_left.i.i.i.i.i.i620 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %rb_left.i.i.i.i.i.i620, align 4
  %cmp.i.i.i.i.i.i = icmp eq ptr %294, %rb_node.i.i.i
  %rb_right.i.i.i.i.i.i621 = getelementptr inbounds %struct.rb_node, ptr %292, i32 0, i32 1
  %spec.select.i.i.i.i.i.i = select i1 %cmp.i.i.i.i.i.i, ptr %rb_left.i.i.i.i.i.i620, ptr %rb_right.i.i.i.i.i.i621
  br label %__rb_change_child.exit.i.i.i.i.i

__rb_change_child.exit.i.i.i.i.i:                 ; preds = %if.then.i.i.i.i.i.i622, %if.then.i.i.i.i.i619.__rb_change_child.exit.i.i.i.i.i_crit_edge
  %rb_left.sink.i.i.i.i.i.i = phi ptr [ @free_vmap_area_root, %if.then.i.i.i.i.i619.__rb_change_child.exit.i.i.i.i.i_crit_edge ], [ %spec.select.i.i.i.i.i.i, %if.then.i.i.i.i.i.i622 ]
  %295 = ptrtoint ptr %rb_left.sink.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %295)
  store volatile ptr %289, ptr %rb_left.sink.i.i.i.i.i.i, align 4
  %tobool1.not.i.i.i.i.i = icmp eq ptr %289, null
  br i1 %tobool1.not.i.i.i.i.i, label %if.else.i.i.i.i.i, label %if.then2.i.i.i.i.i

if.then2.i.i.i.i.i:                               ; preds = %__rb_change_child.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %296 = ptrtoint ptr %289 to i32
  call void @__asan_store4_noabort(i32 %296)
  store i32 %286, ptr %289, align 4
  br label %if.end69.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %__rb_change_child.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %and4.i.i.i.i.i = and i32 %286, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i.i.i.i)
  %tobool5.not.i.i.i.i.i = icmp eq i32 %and4.i.i.i.i.i, 0
  %spec.select.i.i.i.i.i623 = select i1 %tobool5.not.i.i.i.i.i, ptr null, ptr %292
  br label %if.end69.i.i.i.i.i

if.else6.i.i.i.i.i:                               ; preds = %if.end22.critedge.i.i.i
  %tobool7.not.i.i.i.i.i = icmp eq ptr %289, null
  br i1 %tobool7.not.i.i.i.i.i, label %if.then8.i.i.i.i.i, label %if.else12.i.i.i.i.i

if.then8.i.i.i.i.i:                               ; preds = %if.else6.i.i.i.i.i
  %297 = ptrtoint ptr %291 to i32
  call void @__asan_store4_noabort(i32 %297)
  store i32 %286, ptr %291, align 4
  %and11.i.i.i.i.i = and i32 %286, -4
  %298 = inttoptr i32 %and11.i.i.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i.i.i.i)
  %tobool.not.i2.i.i.i.i.i = icmp eq i32 %and11.i.i.i.i.i, 0
  br i1 %tobool.not.i2.i.i.i.i.i, label %if.then8.i.i.i.i.i.__rb_change_child.exit9.i.i.i.i.i_crit_edge, label %if.then.i7.i.i.i.i.i

if.then8.i.i.i.i.i.__rb_change_child.exit9.i.i.i.i.i_crit_edge: ; preds = %if.then8.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__rb_change_child.exit9.i.i.i.i.i

if.then.i7.i.i.i.i.i:                             ; preds = %if.then8.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %rb_left.i3.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %298, i32 0, i32 2
  %299 = ptrtoint ptr %rb_left.i3.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %rb_left.i3.i.i.i.i.i, align 4
  %cmp.i4.i.i.i.i.i = icmp eq ptr %300, %rb_node.i.i.i
  %rb_right.i5.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %298, i32 0, i32 1
  %spec.select.i6.i.i.i.i.i = select i1 %cmp.i4.i.i.i.i.i, ptr %rb_left.i3.i.i.i.i.i, ptr %rb_right.i5.i.i.i.i.i
  br label %__rb_change_child.exit9.i.i.i.i.i

__rb_change_child.exit9.i.i.i.i.i:                ; preds = %if.then.i7.i.i.i.i.i, %if.then8.i.i.i.i.i.__rb_change_child.exit9.i.i.i.i.i_crit_edge
  %rb_left.sink.i8.i.i.i.i.i = phi ptr [ @free_vmap_area_root, %if.then8.i.i.i.i.i.__rb_change_child.exit9.i.i.i.i.i_crit_edge ], [ %spec.select.i6.i.i.i.i.i, %if.then.i7.i.i.i.i.i ]
  %301 = ptrtoint ptr %rb_left.sink.i8.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %301)
  store volatile ptr %291, ptr %rb_left.sink.i8.i.i.i.i.i, align 4
  br label %if.end69.i.i.i.i.i

if.else12.i.i.i.i.i:                              ; preds = %if.else6.i.i.i.i.i
  %rb_left13.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %289, i32 0, i32 2
  %302 = ptrtoint ptr %rb_left13.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %rb_left13.i.i.i.i.i, align 4
  %tobool14.not.i.i.i.i.i = icmp eq ptr %303, null
  br i1 %tobool14.not.i.i.i.i.i, label %if.then15.i.i.i.i.i, label %if.else12.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

if.else12.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:  ; preds = %if.else12.i.i.i.i.i
  br label %do.body.i.i.i.i.i

if.then15.i.i.i.i.i:                              ; preds = %if.else12.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %rb_right16.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %289, i32 0, i32 1
  %304 = ptrtoint ptr %rb_right16.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %rb_right16.i.i.i.i.i, align 4
  %306 = getelementptr %struct.vmap_area, ptr %va.addr.0.i.i, i32 0, i32 4
  %307 = ptrtoint ptr %306 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %306, align 4
  %309 = getelementptr i8, ptr %289, i32 20
  %310 = ptrtoint ptr %309 to i32
  call void @__asan_store4_noabort(i32 %310)
  store i32 %308, ptr %309, align 4
  %.pre.i.i.i.i.i = ptrtoint ptr %289 to i32
  br label %if.end42.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %if.else12.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge
  %tmp.0.i.i.i.i.i = phi ptr [ %312, %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ], [ %303, %if.else12.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %successor.0.i.i.i.i.i = phi ptr [ %tmp.0.i.i.i.i.i, %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ], [ %289, %if.else12.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %rb_left18.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %tmp.0.i.i.i.i.i, i32 0, i32 2
  %311 = ptrtoint ptr %rb_left18.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %rb_left18.i.i.i.i.i, align 4
  %tobool19.not.i.i.i.i.i = icmp eq ptr %312, null
  br i1 %tobool19.not.i.i.i.i.i, label %do.end.i.i.i.i.i, label %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i.i.i.i

do.end.i.i.i.i.i:                                 ; preds = %do.body.i.i.i.i.i
  %rb_right20.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %tmp.0.i.i.i.i.i, i32 0, i32 1
  %313 = ptrtoint ptr %rb_right20.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %rb_right20.i.i.i.i.i, align 4
  %rb_left26.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %successor.0.i.i.i.i.i, i32 0, i32 2
  %315 = ptrtoint ptr %rb_left26.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %315)
  store volatile ptr %314, ptr %rb_left26.i.i.i.i.i, align 4
  store volatile ptr %289, ptr %rb_right20.i.i.i.i.i, align 4
  %316 = ptrtoint ptr %289 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %289, align 4
  %and.i.i.i.i.i.i = and i32 %317, 1
  %318 = ptrtoint ptr %tmp.0.i.i.i.i.i to i32
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, %318
  store i32 %or.i.i.i.i.i.i, ptr %289, align 4
  %319 = getelementptr %struct.vmap_area, ptr %va.addr.0.i.i, i32 0, i32 4
  %320 = ptrtoint ptr %319 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %319, align 4
  %322 = getelementptr i8, ptr %tmp.0.i.i.i.i.i, i32 20
  %323 = ptrtoint ptr %322 to i32
  call void @__asan_store4_noabort(i32 %323)
  store i32 %321, ptr %322, align 4
  %cmp.not7.i.i.i.i.i.i = icmp eq ptr %successor.0.i.i.i.i.i, %tmp.0.i.i.i.i.i
  br i1 %cmp.not7.i.i.i.i.i.i, label %do.end.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge, label %do.end.i.i.i.i.i.while.body.i.i.i.i.i.i_crit_edge

do.end.i.i.i.i.i.while.body.i.i.i.i.i.i_crit_edge: ; preds = %do.end.i.i.i.i.i
  br label %while.body.i.i.i.i.i.i

do.end.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge:    ; preds = %do.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end42.i.i.i.i.i

while.body.i.i.i.i.i.i:                           ; preds = %cleanup.i.i.i.i.i.i.while.body.i.i.i.i.i.i_crit_edge, %do.end.i.i.i.i.i.while.body.i.i.i.i.i.i_crit_edge
  %rb.addr.08.i.i.i.i.i.i = phi ptr [ %346, %cleanup.i.i.i.i.i.i.while.body.i.i.i.i.i.i_crit_edge ], [ %successor.0.i.i.i.i.i, %do.end.i.i.i.i.i.while.body.i.i.i.i.i.i_crit_edge ]
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i.i.i.i.i, i32 -8
  %va_end.i.i.i.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i.i.i.i.i, i32 -4
  %324 = ptrtoint ptr %va_end.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %va_end.i.i.i.i.i.i.i.i, align 4
  %326 = ptrtoint ptr %add.ptr.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %add.ptr.i.i.i.i.i.i, align 4
  %sub.i.i.i.i.i.i.i.i = sub i32 %325, %327
  %rb_left.i.i.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i.i.i.i.i, i32 8
  %328 = ptrtoint ptr %rb_left.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %rb_left.i.i.i.i.i.i.i, align 4
  %tobool.not.i.i.i.i.i.i.i = icmp eq ptr %329, null
  br i1 %tobool.not.i.i.i.i.i.i.i, label %while.body.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i.i.i

while.body.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i_crit_edge: ; preds = %while.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i.i.i.i.i.i.i

if.then.i.i.i.i.i.i.i:                            ; preds = %while.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %330 = getelementptr i8, ptr %329, i32 20
  %331 = ptrtoint ptr %330 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %330, align 4
  %333 = tail call i32 @llvm.umax.i32(i32 %332, i32 %sub.i.i.i.i.i.i.i.i) #16
  br label %if.end4.i.i.i.i.i.i.i

if.end4.i.i.i.i.i.i.i:                            ; preds = %if.then.i.i.i.i.i.i.i, %while.body.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i_crit_edge
  %max.0.i.i.i.i.i.i.i = phi i32 [ %sub.i.i.i.i.i.i.i.i, %while.body.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i_crit_edge ], [ %333, %if.then.i.i.i.i.i.i.i ]
  %rb_right.i.i.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i.i.i.i.i, i32 4
  %334 = ptrtoint ptr %rb_right.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %rb_right.i.i.i.i.i.i.i, align 4
  %tobool6.not.i.i.i.i.i.i.i = icmp eq ptr %335, null
  br i1 %tobool6.not.i.i.i.i.i.i.i, label %if.end4.i.i.i.i.i.i.i.if.end16.i.i.i.i.i.i.i_crit_edge, label %if.then7.i.i.i.i.i.i.i

if.end4.i.i.i.i.i.i.i.if.end16.i.i.i.i.i.i.i_crit_edge: ; preds = %if.end4.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16.i.i.i.i.i.i.i

if.then7.i.i.i.i.i.i.i:                           ; preds = %if.end4.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %336 = getelementptr i8, ptr %335, i32 20
  %337 = ptrtoint ptr %336 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %336, align 4
  %339 = tail call i32 @llvm.umax.i32(i32 %338, i32 %max.0.i.i.i.i.i.i.i) #16
  br label %if.end16.i.i.i.i.i.i.i

if.end16.i.i.i.i.i.i.i:                           ; preds = %if.then7.i.i.i.i.i.i.i, %if.end4.i.i.i.i.i.i.i.if.end16.i.i.i.i.i.i.i_crit_edge
  %max.1.i.i.i.i.i.i.i = phi i32 [ %max.0.i.i.i.i.i.i.i, %if.end4.i.i.i.i.i.i.i.if.end16.i.i.i.i.i.i.i_crit_edge ], [ %339, %if.then7.i.i.i.i.i.i.i ]
  %340 = getelementptr i8, ptr %rb.addr.08.i.i.i.i.i.i, i32 20
  %341 = ptrtoint ptr %340 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %340, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %342, i32 %max.1.i.i.i.i.i.i.i)
  %cmp18.i.i.i.i.i.i.i = icmp eq i32 %342, %max.1.i.i.i.i.i.i.i
  br i1 %cmp18.i.i.i.i.i.i.i, label %if.end16.i.i.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge, label %cleanup.i.i.i.i.i.i

if.end16.i.i.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge: ; preds = %if.end16.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end42.i.i.i.i.i

cleanup.i.i.i.i.i.i:                              ; preds = %if.end16.i.i.i.i.i.i.i
  %343 = ptrtoint ptr %340 to i32
  call void @__asan_store4_noabort(i32 %343)
  store i32 %max.1.i.i.i.i.i.i.i, ptr %340, align 4
  %344 = ptrtoint ptr %rb.addr.08.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %rb.addr.08.i.i.i.i.i.i, align 4
  %and.i10.i.i.i.i.i = and i32 %345, -4
  %346 = inttoptr i32 %and.i10.i.i.i.i.i to ptr
  %cmp.not.i.i.i.i.i.i = icmp eq ptr %tmp.0.i.i.i.i.i, %346
  br i1 %cmp.not.i.i.i.i.i.i, label %cleanup.i.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge, label %cleanup.i.i.i.i.i.i.while.body.i.i.i.i.i.i_crit_edge

cleanup.i.i.i.i.i.i.while.body.i.i.i.i.i.i_crit_edge: ; preds = %cleanup.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i.i.i.i.i.i

cleanup.i.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge: ; preds = %cleanup.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end42.i.i.i.i.i

if.end42.i.i.i.i.i:                               ; preds = %cleanup.i.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge, %if.end16.i.i.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge, %do.end.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge, %if.then15.i.i.i.i.i
  %.pre-phi.i.i.i.i.i = phi i32 [ %318, %do.end.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge ], [ %.pre.i.i.i.i.i, %if.then15.i.i.i.i.i ], [ %318, %if.end16.i.i.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge ], [ %318, %cleanup.i.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge ]
  %parent.0.i.i.i.i.i = phi ptr [ %tmp.0.i.i.i.i.i, %do.end.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge ], [ %289, %if.then15.i.i.i.i.i ], [ %successor.0.i.i.i.i.i, %if.end16.i.i.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge ], [ %successor.0.i.i.i.i.i, %cleanup.i.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge ]
  %successor.1.i.i.i.i.i = phi ptr [ %tmp.0.i.i.i.i.i, %do.end.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge ], [ %289, %if.then15.i.i.i.i.i ], [ %tmp.0.i.i.i.i.i, %if.end16.i.i.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge ], [ %tmp.0.i.i.i.i.i, %cleanup.i.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge ]
  %child2.0.i.i.i.i.i = phi ptr [ %314, %do.end.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge ], [ %305, %if.then15.i.i.i.i.i ], [ %314, %if.end16.i.i.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge ], [ %314, %cleanup.i.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge ]
  %347 = ptrtoint ptr %rb_left.i.i.i.i.i615 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %rb_left.i.i.i.i.i615, align 4
  %rb_left49.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %successor.1.i.i.i.i.i, i32 0, i32 2
  %349 = ptrtoint ptr %rb_left49.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %349)
  store volatile ptr %348, ptr %rb_left49.i.i.i.i.i, align 4
  %350 = ptrtoint ptr %348 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %348, align 4
  %and.i11.i.i.i.i.i = and i32 %351, 1
  %or.i12.i.i.i.i.i = or i32 %and.i11.i.i.i.i.i, %.pre-phi.i.i.i.i.i
  store i32 %or.i12.i.i.i.i.i, ptr %348, align 4
  %352 = ptrtoint ptr %rb_node.i.i.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %rb_node.i.i.i, align 4
  %and55.i.i.i.i.i = and i32 %353, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i.i.i.i.i)
  %tobool.not.i13.i.i.i.i.i = icmp eq i32 %and55.i.i.i.i.i, 0
  br i1 %tobool.not.i13.i.i.i.i.i, label %if.end42.i.i.i.i.i.__rb_change_child.exit20.i.i.i.i.i_crit_edge, label %if.then.i18.i.i.i.i.i

if.end42.i.i.i.i.i.__rb_change_child.exit20.i.i.i.i.i_crit_edge: ; preds = %if.end42.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__rb_change_child.exit20.i.i.i.i.i

if.then.i18.i.i.i.i.i:                            ; preds = %if.end42.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %354 = inttoptr i32 %and55.i.i.i.i.i to ptr
  %rb_left.i14.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %354, i32 0, i32 2
  %355 = ptrtoint ptr %rb_left.i14.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %rb_left.i14.i.i.i.i.i, align 4
  %cmp.i15.i.i.i.i.i = icmp eq ptr %356, %rb_node.i.i.i
  %rb_right.i16.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %354, i32 0, i32 1
  %spec.select.i17.i.i.i.i.i = select i1 %cmp.i15.i.i.i.i.i, ptr %rb_left.i14.i.i.i.i.i, ptr %rb_right.i16.i.i.i.i.i
  br label %__rb_change_child.exit20.i.i.i.i.i

__rb_change_child.exit20.i.i.i.i.i:               ; preds = %if.then.i18.i.i.i.i.i, %if.end42.i.i.i.i.i.__rb_change_child.exit20.i.i.i.i.i_crit_edge
  %rb_left.sink.i19.i.i.i.i.i = phi ptr [ @free_vmap_area_root, %if.end42.i.i.i.i.i.__rb_change_child.exit20.i.i.i.i.i_crit_edge ], [ %spec.select.i17.i.i.i.i.i, %if.then.i18.i.i.i.i.i ]
  %357 = ptrtoint ptr %rb_left.sink.i19.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %357)
  store volatile ptr %successor.1.i.i.i.i.i, ptr %rb_left.sink.i19.i.i.i.i.i, align 4
  %tobool56.not.i.i.i.i.i = icmp eq ptr %child2.0.i.i.i.i.i, null
  br i1 %tobool56.not.i.i.i.i.i, label %if.else58.i.i.i.i.i, label %if.then57.i.i.i.i.i

if.then57.i.i.i.i.i:                              ; preds = %__rb_change_child.exit20.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %358 = ptrtoint ptr %parent.0.i.i.i.i.i to i32
  %or.i21.i.i.i.i.i = or i32 %358, 1
  %359 = ptrtoint ptr %child2.0.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %359)
  store i32 %or.i21.i.i.i.i.i, ptr %child2.0.i.i.i.i.i, align 4
  br label %if.end66.i.i.i.i.i

if.else58.i.i.i.i.i:                              ; preds = %__rb_change_child.exit20.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %360 = ptrtoint ptr %successor.1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %successor.1.i.i.i.i.i, align 4
  %and60.i.i.i.i.i = and i32 %361, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.i.i.i.i.i)
  %tobool61.not.i.i.i.i.i = icmp eq i32 %and60.i.i.i.i.i, 0
  %spec.select1.i.i.i.i.i = select i1 %tobool61.not.i.i.i.i.i, ptr null, ptr %parent.0.i.i.i.i.i
  br label %if.end66.i.i.i.i.i

if.end66.i.i.i.i.i:                               ; preds = %if.else58.i.i.i.i.i, %if.then57.i.i.i.i.i
  %rebalance.1.i.i.i.i.i = phi ptr [ null, %if.then57.i.i.i.i.i ], [ %spec.select1.i.i.i.i.i, %if.else58.i.i.i.i.i ]
  %362 = ptrtoint ptr %successor.1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %362)
  store i32 %353, ptr %successor.1.i.i.i.i.i, align 4
  br label %if.end69.i.i.i.i.i

if.end69.i.i.i.i.i:                               ; preds = %if.end66.i.i.i.i.i, %__rb_change_child.exit9.i.i.i.i.i, %if.else.i.i.i.i.i, %if.then2.i.i.i.i.i
  %tmp.1.i.i.i.i.i = phi ptr [ %successor.1.i.i.i.i.i, %if.end66.i.i.i.i.i ], [ %298, %__rb_change_child.exit9.i.i.i.i.i ], [ %292, %if.else.i.i.i.i.i ], [ %292, %if.then2.i.i.i.i.i ]
  %rebalance.2.i.i.i.i.i = phi ptr [ %rebalance.1.i.i.i.i.i, %if.end66.i.i.i.i.i ], [ null, %__rb_change_child.exit9.i.i.i.i.i ], [ %spec.select.i.i.i.i.i623, %if.else.i.i.i.i.i ], [ null, %if.then2.i.i.i.i.i ]
  %cmp.not7.i22.i.i.i.i.i = icmp eq ptr %tmp.1.i.i.i.i.i, null
  br i1 %cmp.not7.i22.i.i.i.i.i, label %if.end69.i.i.i.i.i.__rb_erase_augmented.exit.i.i.i.i_crit_edge, label %if.end69.i.i.i.i.i.while.body.i29.i.i.i.i.i_crit_edge

if.end69.i.i.i.i.i.while.body.i29.i.i.i.i.i_crit_edge: ; preds = %if.end69.i.i.i.i.i
  br label %while.body.i29.i.i.i.i.i

if.end69.i.i.i.i.i.__rb_erase_augmented.exit.i.i.i.i_crit_edge: ; preds = %if.end69.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__rb_erase_augmented.exit.i.i.i.i

while.body.i29.i.i.i.i.i:                         ; preds = %cleanup.i41.i.i.i.i.i.while.body.i29.i.i.i.i.i_crit_edge, %if.end69.i.i.i.i.i.while.body.i29.i.i.i.i.i_crit_edge
  %rb.addr.08.i23.i.i.i.i.i = phi ptr [ %385, %cleanup.i41.i.i.i.i.i.while.body.i29.i.i.i.i.i_crit_edge ], [ %tmp.1.i.i.i.i.i, %if.end69.i.i.i.i.i.while.body.i29.i.i.i.i.i_crit_edge ]
  %add.ptr.i24.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i23.i.i.i.i.i, i32 -8
  %va_end.i.i.i25.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i23.i.i.i.i.i, i32 -4
  %363 = ptrtoint ptr %va_end.i.i.i25.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %va_end.i.i.i25.i.i.i.i.i, align 4
  %365 = ptrtoint ptr %add.ptr.i24.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %add.ptr.i24.i.i.i.i.i, align 4
  %sub.i.i.i26.i.i.i.i.i = sub i32 %364, %366
  %rb_left.i.i27.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i23.i.i.i.i.i, i32 8
  %367 = ptrtoint ptr %rb_left.i.i27.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %rb_left.i.i27.i.i.i.i.i, align 4
  %tobool.not.i.i28.i.i.i.i.i = icmp eq ptr %368, null
  br i1 %tobool.not.i.i28.i.i.i.i.i, label %while.body.i29.i.i.i.i.i.if.end4.i.i34.i.i.i.i.i_crit_edge, label %if.then.i.i30.i.i.i.i.i

while.body.i29.i.i.i.i.i.if.end4.i.i34.i.i.i.i.i_crit_edge: ; preds = %while.body.i29.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i.i34.i.i.i.i.i

if.then.i.i30.i.i.i.i.i:                          ; preds = %while.body.i29.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %369 = getelementptr i8, ptr %368, i32 20
  %370 = ptrtoint ptr %369 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %369, align 4
  %372 = tail call i32 @llvm.umax.i32(i32 %371, i32 %sub.i.i.i26.i.i.i.i.i) #16
  br label %if.end4.i.i34.i.i.i.i.i

if.end4.i.i34.i.i.i.i.i:                          ; preds = %if.then.i.i30.i.i.i.i.i, %while.body.i29.i.i.i.i.i.if.end4.i.i34.i.i.i.i.i_crit_edge
  %max.0.i.i31.i.i.i.i.i = phi i32 [ %sub.i.i.i26.i.i.i.i.i, %while.body.i29.i.i.i.i.i.if.end4.i.i34.i.i.i.i.i_crit_edge ], [ %372, %if.then.i.i30.i.i.i.i.i ]
  %rb_right.i.i32.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i23.i.i.i.i.i, i32 4
  %373 = ptrtoint ptr %rb_right.i.i32.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %rb_right.i.i32.i.i.i.i.i, align 4
  %tobool6.not.i.i33.i.i.i.i.i = icmp eq ptr %374, null
  br i1 %tobool6.not.i.i33.i.i.i.i.i, label %if.end4.i.i34.i.i.i.i.i.if.end16.i.i38.i.i.i.i.i_crit_edge, label %if.then7.i.i35.i.i.i.i.i

if.end4.i.i34.i.i.i.i.i.if.end16.i.i38.i.i.i.i.i_crit_edge: ; preds = %if.end4.i.i34.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16.i.i38.i.i.i.i.i

if.then7.i.i35.i.i.i.i.i:                         ; preds = %if.end4.i.i34.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %375 = getelementptr i8, ptr %374, i32 20
  %376 = ptrtoint ptr %375 to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %375, align 4
  %378 = tail call i32 @llvm.umax.i32(i32 %377, i32 %max.0.i.i31.i.i.i.i.i) #16
  br label %if.end16.i.i38.i.i.i.i.i

if.end16.i.i38.i.i.i.i.i:                         ; preds = %if.then7.i.i35.i.i.i.i.i, %if.end4.i.i34.i.i.i.i.i.if.end16.i.i38.i.i.i.i.i_crit_edge
  %max.1.i.i36.i.i.i.i.i = phi i32 [ %max.0.i.i31.i.i.i.i.i, %if.end4.i.i34.i.i.i.i.i.if.end16.i.i38.i.i.i.i.i_crit_edge ], [ %378, %if.then7.i.i35.i.i.i.i.i ]
  %379 = getelementptr i8, ptr %rb.addr.08.i23.i.i.i.i.i, i32 20
  %380 = ptrtoint ptr %379 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %379, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %381, i32 %max.1.i.i36.i.i.i.i.i)
  %cmp18.i.i37.i.i.i.i.i = icmp eq i32 %381, %max.1.i.i36.i.i.i.i.i
  br i1 %cmp18.i.i37.i.i.i.i.i, label %if.end16.i.i38.i.i.i.i.i.__rb_erase_augmented.exit.i.i.i.i_crit_edge, label %cleanup.i41.i.i.i.i.i

if.end16.i.i38.i.i.i.i.i.__rb_erase_augmented.exit.i.i.i.i_crit_edge: ; preds = %if.end16.i.i38.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__rb_erase_augmented.exit.i.i.i.i

cleanup.i41.i.i.i.i.i:                            ; preds = %if.end16.i.i38.i.i.i.i.i
  %382 = ptrtoint ptr %379 to i32
  call void @__asan_store4_noabort(i32 %382)
  store i32 %max.1.i.i36.i.i.i.i.i, ptr %379, align 4
  %383 = ptrtoint ptr %rb.addr.08.i23.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %rb.addr.08.i23.i.i.i.i.i, align 4
  %and.i39.i.i.i.i.i = and i32 %384, -4
  %385 = inttoptr i32 %and.i39.i.i.i.i.i to ptr
  %cmp.not.i40.i.i.i.i.i = icmp eq i32 %and.i39.i.i.i.i.i, 0
  br i1 %cmp.not.i40.i.i.i.i.i, label %cleanup.i41.i.i.i.i.i.__rb_erase_augmented.exit.i.i.i.i_crit_edge, label %cleanup.i41.i.i.i.i.i.while.body.i29.i.i.i.i.i_crit_edge

cleanup.i41.i.i.i.i.i.while.body.i29.i.i.i.i.i_crit_edge: ; preds = %cleanup.i41.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i29.i.i.i.i.i

cleanup.i41.i.i.i.i.i.__rb_erase_augmented.exit.i.i.i.i_crit_edge: ; preds = %cleanup.i41.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__rb_erase_augmented.exit.i.i.i.i

__rb_erase_augmented.exit.i.i.i.i:                ; preds = %cleanup.i41.i.i.i.i.i.__rb_erase_augmented.exit.i.i.i.i_crit_edge, %if.end16.i.i38.i.i.i.i.i.__rb_erase_augmented.exit.i.i.i.i_crit_edge, %if.end69.i.i.i.i.i.__rb_erase_augmented.exit.i.i.i.i_crit_edge
  %tobool.not.i.i.i.i624 = icmp eq ptr %rebalance.2.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i624, label %__rb_erase_augmented.exit.i.i.i.i.if.end27.i.i.i_crit_edge, label %if.then.i.i.i.i625

__rb_erase_augmented.exit.i.i.i.i.if.end27.i.i.i_crit_edge: ; preds = %__rb_erase_augmented.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27.i.i.i

if.then.i.i.i.i625:                               ; preds = %__rb_erase_augmented.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__rb_erase_color(ptr noundef nonnull %rebalance.2.i.i.i.i.i, ptr noundef nonnull @free_vmap_area_root, ptr noundef nonnull @free_vmap_area_rb_augment_cb_rotate) #16
  br label %if.end27.i.i.i

if.end27.i.i.i:                                   ; preds = %if.then.i.i.i.i625, %__rb_erase_augmented.exit.i.i.i.i.if.end27.i.i.i_crit_edge
  %list.i.i.i = getelementptr inbounds %struct.vmap_area, ptr %va.addr.0.i.i, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i.i.i) #16
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end27.i.i.i.list_del.exit.i.i.i_crit_edge

if.end27.i.i.i.list_del.exit.i.i.i_crit_edge:     ; preds = %if.end27.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.end27.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i.i.i = getelementptr inbounds %struct.vmap_area, ptr %va.addr.0.i.i, i32 0, i32 3, i32 1
  %386 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %388 = ptrtoint ptr %list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %list.i.i.i, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %389, i32 0, i32 1
  %390 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %390)
  store ptr %387, ptr %prev1.i.i.i.i.i.i, align 4
  %391 = ptrtoint ptr %387 to i32
  call void @__asan_store4_noabort(i32 %391)
  store volatile ptr %389, ptr %387, align 4
  br label %list_del.exit.i.i.i

list_del.exit.i.i.i:                              ; preds = %if.end.i.i.i.i.i, %if.end27.i.i.i.list_del.exit.i.i.i_crit_edge
  %392 = ptrtoint ptr %list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %392)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i.i.i, align 4
  %prev.i.i.i.i626 = getelementptr inbounds %struct.vmap_area, ptr %va.addr.0.i.i, i32 0, i32 3, i32 1
  %393 = ptrtoint ptr %prev.i.i.i.i626 to i32
  call void @__asan_store4_noabort(i32 %393)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i.i626, align 4
  %394 = ptrtoint ptr %rb_node.i.i.i to i32
  call void @__asan_store4_noabort(i32 %394)
  store i32 %287, ptr %rb_node.i.i.i, align 4
  br label %insert.thread115.i.i

insert.thread115.i.i:                             ; preds = %list_del.exit.i.i.i, %do.end.i69.i.i, %if.then23.i.i.insert.thread115.i.i_crit_edge
  %va_end27.i.i = getelementptr inbounds %struct.vmap_area, ptr %va.addr.0.i.i, i32 0, i32 1
  %395 = ptrtoint ptr %va_end27.i.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load i32, ptr %va_end27.i.i, align 4
  %397 = ptrtoint ptr %va_end20.i.i to i32
  call void @__asan_store4_noabort(i32 %397)
  store i32 %396, ptr %va_end20.i.i, align 4
  %398 = load ptr, ptr @vmap_area_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %398, ptr noundef %va.addr.0.i.i) #16
  br label %merge_or_add_vmap_area.exit.i

insert.i.i:                                       ; preds = %if.then15.i.i.insert.i.i_crit_edge, %if.end13.i.i.insert.i.i_crit_edge
  br i1 %merged.0.off0.i.i, label %insert.i.i.merge_or_add_vmap_area.exit.i_crit_edge, label %insert.i.i.if.then.i73.i.i_crit_edge

insert.i.i.if.then.i73.i.i_crit_edge:             ; preds = %insert.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i73.i.i

insert.i.i.merge_or_add_vmap_area.exit.i_crit_edge: ; preds = %insert.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %merge_or_add_vmap_area.exit.i

if.then.i73.i.i:                                  ; preds = %insert.i.i.if.then.i73.i.i_crit_edge, %get_va_next_sibling.exit.i.i.if.then.i73.i.i_crit_edge
  %va.addr.1113125.i.i = phi ptr [ %260, %get_va_next_sibling.exit.i.i.if.then.i73.i.i_crit_edge ], [ %va.addr.0.i.i, %insert.i.i.if.then.i73.i.i_crit_edge ]
  br i1 %cmp.i66.i.i, label %if.then.i73.i.i.if.end4.i.i.i_crit_edge, label %if.then3.i.i.i

if.then.i73.i.i.if.end4.i.i.i_crit_edge:          ; preds = %if.then.i73.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i.i.i

if.then3.i.i.i:                                   ; preds = %if.then.i73.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i627 = getelementptr i8, ptr %266, i32 16
  %399 = ptrtoint ptr %prev.i.i.i627 to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %prev.i.i.i627, align 4
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %if.then3.i.i.i, %if.then.i73.i.i.if.end4.i.i.i_crit_edge, %while.body354.if.end4.i.i.i_crit_edge
  %va.addr.1113126.i.i = phi ptr [ %va.addr.1113125.i.i, %if.then3.i.i.i ], [ %va.addr.1113125.i.i, %if.then.i73.i.i.if.end4.i.i.i_crit_edge ], [ %260, %while.body354.if.end4.i.i.i_crit_edge ]
  %retval.0.i85.i.i = phi ptr [ %link.2.i.i.i, %if.then3.i.i.i ], [ %rb_right.i65.i.i, %if.then.i73.i.i.if.end4.i.i.i_crit_edge ], [ @free_vmap_area_root, %while.body354.if.end4.i.i.i_crit_edge ]
  %parent.083.i.i = phi ptr [ %266, %if.then3.i.i.i ], [ %266, %if.then.i73.i.i.if.end4.i.i.i_crit_edge ], [ null, %while.body354.if.end4.i.i.i_crit_edge ]
  %head.addr.0.i.i.i = phi ptr [ %400, %if.then3.i.i.i ], [ %list4.i.i.i, %if.then.i73.i.i.if.end4.i.i.i_crit_edge ], [ @free_vmap_area_list, %while.body354.if.end4.i.i.i_crit_edge ]
  %rb_node.i74.i.i = getelementptr inbounds %struct.vmap_area, ptr %va.addr.1113126.i.i, i32 0, i32 2
  %401 = ptrtoint ptr %parent.083.i.i to i32
  %402 = ptrtoint ptr %rb_node.i74.i.i to i32
  call void @__asan_store4_noabort(i32 %402)
  store i32 %401, ptr %rb_node.i74.i.i, align 4
  %rb_right.i.i.i.i628 = getelementptr inbounds %struct.vmap_area, ptr %va.addr.1113126.i.i, i32 0, i32 2, i32 1
  %403 = ptrtoint ptr %rb_right.i.i.i.i628 to i32
  call void @__asan_store4_noabort(i32 %403)
  store ptr null, ptr %rb_right.i.i.i.i628, align 4
  %rb_left.i.i.i.i629 = getelementptr inbounds %struct.vmap_area, ptr %va.addr.1113126.i.i, i32 0, i32 2, i32 2
  %404 = ptrtoint ptr %rb_left.i.i.i.i629 to i32
  call void @__asan_store4_noabort(i32 %404)
  store ptr null, ptr %rb_left.i.i.i.i629, align 4
  %405 = ptrtoint ptr %retval.0.i85.i.i to i32
  call void @__asan_store4_noabort(i32 %405)
  store ptr %rb_node.i74.i.i, ptr %retval.0.i85.i.i, align 4
  tail call void @__rb_insert_augmented(ptr noundef %rb_node.i74.i.i, ptr noundef nonnull @free_vmap_area_root, ptr noundef nonnull @free_vmap_area_rb_augment_cb_rotate) #16
  %406 = getelementptr inbounds %struct.vmap_area, ptr %va.addr.1113126.i.i, i32 0, i32 4
  %407 = ptrtoint ptr %406 to i32
  call void @__asan_store4_noabort(i32 %407)
  store i32 0, ptr %406, align 4
  %list10.i.i.i = getelementptr inbounds %struct.vmap_area, ptr %va.addr.1113126.i.i, i32 0, i32 3
  %408 = ptrtoint ptr %head.addr.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %head.addr.0.i.i.i, align 4
  %call.i.i.i76.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list10.i.i.i, ptr noundef %head.addr.0.i.i.i, ptr noundef %409) #16
  br i1 %call.i.i.i76.i.i, label %if.end.i.i.i77.i.i, label %if.end4.i.i.i.merge_or_add_vmap_area.exit.i_crit_edge

if.end4.i.i.i.merge_or_add_vmap_area.exit.i_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %merge_or_add_vmap_area.exit.i

if.end.i.i.i77.i.i:                               ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev1.i.i.i.i.i630 = getelementptr inbounds %struct.list_head, ptr %409, i32 0, i32 1
  %410 = ptrtoint ptr %prev1.i.i.i.i.i630 to i32
  call void @__asan_store4_noabort(i32 %410)
  store ptr %list10.i.i.i, ptr %prev1.i.i.i.i.i630, align 4
  %411 = ptrtoint ptr %list10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %411)
  store ptr %409, ptr %list10.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.vmap_area, ptr %va.addr.1113126.i.i, i32 0, i32 3, i32 1
  %412 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %412)
  store ptr %head.addr.0.i.i.i, ptr %prev3.i.i.i.i.i, align 4
  %413 = ptrtoint ptr %head.addr.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %413)
  store volatile ptr %list10.i.i.i, ptr %head.addr.0.i.i.i, align 4
  br label %merge_or_add_vmap_area.exit.i

merge_or_add_vmap_area.exit.i:                    ; preds = %if.end.i.i.i77.i.i, %if.end4.i.i.i.merge_or_add_vmap_area.exit.i_crit_edge, %insert.i.i.merge_or_add_vmap_area.exit.i_crit_edge, %insert.thread115.i.i
  %retval.0.i.i = phi ptr [ %va.addr.0.i.i, %insert.i.i.merge_or_add_vmap_area.exit.i_crit_edge ], [ %add.ptr19.i.i, %insert.thread115.i.i ], [ %va.addr.1113126.i.i, %if.end4.i.i.i.merge_or_add_vmap_area.exit.i_crit_edge ], [ %va.addr.1113126.i.i, %if.end.i.i.i77.i.i ]
  %tobool.not.i631 = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool.not.i631, label %merge_or_add_vmap_area.exit.i.if.end365_crit_edge, label %if.then.i633

merge_or_add_vmap_area.exit.i.if.end365_crit_edge: ; preds = %merge_or_add_vmap_area.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end365

if.then.i633:                                     ; preds = %merge_or_add_vmap_area.exit.i
  %rb_node.i.i632 = getelementptr inbounds %struct.vmap_area, ptr %retval.0.i.i, i32 0, i32 2
  br label %while.body.i.i.i637

while.body.i.i.i637:                              ; preds = %cleanup.i.i.i647.while.body.i.i.i637_crit_edge, %if.then.i633
  %rb.addr.08.i.i.i634 = phi ptr [ %436, %cleanup.i.i.i647.while.body.i.i.i637_crit_edge ], [ %rb_node.i.i632, %if.then.i633 ]
  %add.ptr.i.i1.i = getelementptr i8, ptr %rb.addr.08.i.i.i634, i32 -8
  %va_end.i.i.i.i.i635 = getelementptr i8, ptr %rb.addr.08.i.i.i634, i32 -4
  %414 = ptrtoint ptr %va_end.i.i.i.i.i635 to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load i32, ptr %va_end.i.i.i.i.i635, align 4
  %416 = ptrtoint ptr %add.ptr.i.i1.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load i32, ptr %add.ptr.i.i1.i, align 4
  %sub.i.i.i.i.i636 = sub i32 %415, %417
  %rb_left.i.i.i2.i = getelementptr i8, ptr %rb.addr.08.i.i.i634, i32 8
  %418 = ptrtoint ptr %rb_left.i.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %rb_left.i.i.i2.i, align 4
  %tobool.not.i.i.i3.i = icmp eq ptr %419, null
  br i1 %tobool.not.i.i.i3.i, label %while.body.i.i.i637.if.end4.i.i.i.i640_crit_edge, label %if.then.i.i.i4.i

while.body.i.i.i637.if.end4.i.i.i.i640_crit_edge: ; preds = %while.body.i.i.i637
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i.i.i.i640

if.then.i.i.i4.i:                                 ; preds = %while.body.i.i.i637
  call void @__sanitizer_cov_trace_pc() #18
  %420 = getelementptr i8, ptr %419, i32 20
  %421 = ptrtoint ptr %420 to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load i32, ptr %420, align 4
  %423 = tail call i32 @llvm.umax.i32(i32 %422, i32 %sub.i.i.i.i.i636) #16
  br label %if.end4.i.i.i.i640

if.end4.i.i.i.i640:                               ; preds = %if.then.i.i.i4.i, %while.body.i.i.i637.if.end4.i.i.i.i640_crit_edge
  %max.0.i.i.i.i638 = phi i32 [ %sub.i.i.i.i.i636, %while.body.i.i.i637.if.end4.i.i.i.i640_crit_edge ], [ %423, %if.then.i.i.i4.i ]
  %rb_right.i.i.i5.i = getelementptr i8, ptr %rb.addr.08.i.i.i634, i32 4
  %424 = ptrtoint ptr %rb_right.i.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %rb_right.i.i.i5.i, align 4
  %tobool6.not.i.i.i.i639 = icmp eq ptr %425, null
  br i1 %tobool6.not.i.i.i.i639, label %if.end4.i.i.i.i640.if.end16.i.i.i.i644_crit_edge, label %if.then7.i.i.i.i641

if.end4.i.i.i.i640.if.end16.i.i.i.i644_crit_edge: ; preds = %if.end4.i.i.i.i640
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16.i.i.i.i644

if.then7.i.i.i.i641:                              ; preds = %if.end4.i.i.i.i640
  call void @__sanitizer_cov_trace_pc() #18
  %426 = getelementptr i8, ptr %425, i32 20
  %427 = ptrtoint ptr %426 to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load i32, ptr %426, align 4
  %429 = tail call i32 @llvm.umax.i32(i32 %428, i32 %max.0.i.i.i.i638) #16
  br label %if.end16.i.i.i.i644

if.end16.i.i.i.i644:                              ; preds = %if.then7.i.i.i.i641, %if.end4.i.i.i.i640.if.end16.i.i.i.i644_crit_edge
  %max.1.i.i.i.i642 = phi i32 [ %max.0.i.i.i.i638, %if.end4.i.i.i.i640.if.end16.i.i.i.i644_crit_edge ], [ %429, %if.then7.i.i.i.i641 ]
  %430 = getelementptr i8, ptr %rb.addr.08.i.i.i634, i32 20
  %431 = ptrtoint ptr %430 to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load i32, ptr %430, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %432, i32 %max.1.i.i.i.i642)
  %cmp18.i.i.i.i643 = icmp eq i32 %432, %max.1.i.i.i.i642
  br i1 %cmp18.i.i.i.i643, label %if.end16.i.i.i.i644.if.end365_crit_edge, label %cleanup.i.i.i647

if.end16.i.i.i.i644.if.end365_crit_edge:          ; preds = %if.end16.i.i.i.i644
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end365

cleanup.i.i.i647:                                 ; preds = %if.end16.i.i.i.i644
  %433 = ptrtoint ptr %430 to i32
  call void @__asan_store4_noabort(i32 %433)
  store i32 %max.1.i.i.i.i642, ptr %430, align 4
  %434 = ptrtoint ptr %rb.addr.08.i.i.i634 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load i32, ptr %rb.addr.08.i.i.i634, align 4
  %and.i.i.i645 = and i32 %435, -4
  %436 = inttoptr i32 %and.i.i.i645 to ptr
  %cmp.not.i.i.i646 = icmp eq i32 %and.i.i.i645, 0
  br i1 %cmp.not.i.i.i646, label %cleanup.i.i.i647.if.end365_crit_edge, label %cleanup.i.i.i647.while.body.i.i.i637_crit_edge

cleanup.i.i.i647.while.body.i.i.i637_crit_edge:   ; preds = %cleanup.i.i.i647
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i.i.i637

cleanup.i.i.i647.if.end365_crit_edge:             ; preds = %cleanup.i.i.i647
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end365

if.end365:                                        ; preds = %cleanup.i.i.i647.if.end365_crit_edge, %if.end16.i.i.i.i644.if.end365_crit_edge, %merge_or_add_vmap_area.exit.i.if.end365_crit_edge, %find_va_links.exit.i.i.if.end365_crit_edge, %find_va_links.exit.thread.i.i
  %437 = ptrtoint ptr %arrayidx355 to i32
  call void @__asan_store4_noabort(i32 %437)
  store ptr null, ptr %arrayidx355, align 4
  %tobool353.not = icmp eq i32 %dec885, 0
  br i1 %tobool353.not, label %if.end365.overflow_crit_edge, label %if.end365.while.body354_crit_edge

if.end365.while.body354_crit_edge:                ; preds = %if.end365
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body354

if.end365.overflow_crit_edge:                     ; preds = %if.end365
  call void @__sanitizer_cov_trace_pc() #18
  br label %overflow

overflow:                                         ; preds = %if.end365.overflow_crit_edge, %cleanup.overflow_crit_edge, %pvm_find_va_enclose_addr.exit757.overflow_crit_edge, %if.end184.overflow_crit_edge, %if.then174.overflow_crit_edge, %while.cond.outer.backedge.overflow_crit_edge, %pvm_determine_end_from_reverse.exit.overflow_crit_edge, %pvm_find_va_enclose_addr.exit.overflow_crit_edge, %retry.overflow_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @free_vmap_area_lock) #16
  br i1 %purged.0.off0, label %overflow.err_free_crit_edge, label %if.then369

overflow.err_free_crit_edge:                      ; preds = %overflow
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_free

if.then369:                                       ; preds = %overflow
  tail call void @mutex_lock_nested(ptr noundef nonnull @vmap_purge_lock, i32 noundef 0) #16
  tail call fastcc void @purge_fragmented_blocks_allcpus() #16
  %call.i780 = tail call fastcc zeroext i1 @__purge_vmap_area_lazy(i32 noundef -1, i32 noundef 0) #16
  tail call void @mutex_unlock(ptr noundef nonnull @vmap_purge_lock) #16
  br i1 %cmp856, label %if.then369.for.body372_crit_edge, label %if.then369.retry.backedge_crit_edge

if.then369.retry.backedge_crit_edge:              ; preds = %if.then369
  call void @__sanitizer_cov_trace_pc() #18
  br label %retry.backedge

if.then369.for.body372_crit_edge:                 ; preds = %if.then369
  br label %for.body372

retry.backedge:                                   ; preds = %for.inc383.retry.backedge_crit_edge, %if.then369.retry.backedge_crit_edge
  br label %retry

for.body372:                                      ; preds = %for.inc383.for.body372_crit_edge, %if.then369.for.body372_crit_edge
  %area.7887 = phi i32 [ %inc384, %for.inc383.for.body372_crit_edge ], [ 0, %if.then369.for.body372_crit_edge ]
  %arrayidx373 = getelementptr ptr, ptr %call8.i.i689, i32 %area.7887
  %438 = ptrtoint ptr %arrayidx373 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %arrayidx373, align 4
  %tobool374.not = icmp eq ptr %439, null
  br i1 %tobool374.not, label %if.end376, label %for.body372.for.inc383_crit_edge

for.body372.for.inc383_crit_edge:                 ; preds = %for.body372
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc383

if.end376:                                        ; preds = %for.body372
  %440 = load ptr, ptr @vmap_area_cachep, align 4
  %call.i781 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %440, i32 noundef 3520) #16
  %441 = ptrtoint ptr %arrayidx373 to i32
  call void @__asan_store4_noabort(i32 %441)
  store ptr %call.i781, ptr %arrayidx373, align 4
  %tobool380.not = icmp eq ptr %call.i781, null
  br i1 %tobool380.not, label %if.end376.err_free_crit_edge, label %if.end376.for.inc383_crit_edge

if.end376.for.inc383_crit_edge:                   ; preds = %if.end376
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc383

if.end376.err_free_crit_edge:                     ; preds = %if.end376
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_free

for.inc383:                                       ; preds = %if.end376.for.inc383_crit_edge, %for.body372.for.inc383_crit_edge
  %inc384 = add nuw nsw i32 %area.7887, 1
  %exitcond927.not = icmp eq i32 %inc384, %nr_vms
  br i1 %exitcond927.not, label %for.inc383.retry.backedge_crit_edge, label %for.inc383.for.body372_crit_edge

for.inc383.for.body372_crit_edge:                 ; preds = %for.inc383
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body372

for.inc383.retry.backedge_crit_edge:              ; preds = %for.inc383
  call void @__sanitizer_cov_trace_pc() #18
  br label %retry.backedge

err_free:                                         ; preds = %if.end376.err_free_crit_edge, %overflow.err_free_crit_edge, %for.body137.err_free_crit_edge
  br i1 %cmp856, label %err_free.for.body389_crit_edge, label %err_free.err_free2_crit_edge

err_free.err_free2_crit_edge:                     ; preds = %err_free
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_free2

err_free.for.body389_crit_edge:                   ; preds = %err_free
  br label %for.body389

for.body389:                                      ; preds = %if.end394.for.body389_crit_edge, %err_free.for.body389_crit_edge
  %area.8891 = phi i32 [ %inc397, %if.end394.for.body389_crit_edge ], [ 0, %err_free.for.body389_crit_edge ]
  %arrayidx390 = getelementptr ptr, ptr %call8.i.i689, i32 %area.8891
  %442 = ptrtoint ptr %arrayidx390 to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %arrayidx390, align 4
  %tobool391.not = icmp eq ptr %443, null
  br i1 %tobool391.not, label %for.body389.if.end394_crit_edge, label %if.then392

for.body389.if.end394_crit_edge:                  ; preds = %for.body389
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end394

if.then392:                                       ; preds = %for.body389
  call void @__sanitizer_cov_trace_pc() #18
  %444 = load ptr, ptr @vmap_area_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %444, ptr noundef nonnull %443) #16
  br label %if.end394

if.end394:                                        ; preds = %if.then392, %for.body389.if.end394_crit_edge
  %arrayidx395 = getelementptr ptr, ptr %call8.i.i, i32 %area.8891
  %445 = ptrtoint ptr %arrayidx395 to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %arrayidx395, align 4
  tail call void @kfree(ptr noundef %446) #16
  %inc397 = add nuw nsw i32 %area.8891, 1
  %exitcond929.not = icmp eq i32 %inc397, %nr_vms
  br i1 %exitcond929.not, label %if.end394.err_free2_crit_edge, label %if.end394.for.body389_crit_edge

if.end394.for.body389_crit_edge:                  ; preds = %if.end394
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body389

if.end394.err_free2_crit_edge:                    ; preds = %if.end394
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_free2

err_free2:                                        ; preds = %if.end394.err_free2_crit_edge, %err_free.err_free2_crit_edge, %if.end7.i.i690.err_free2_crit_edge, %if.end128.err_free2_crit_edge
  %retval.0.i.i691801 = phi ptr [ %call8.i.i689, %if.end7.i.i690.err_free2_crit_edge ], [ null, %if.end128.err_free2_crit_edge ], [ %call8.i.i689, %err_free.err_free2_crit_edge ], [ %call8.i.i689, %if.end394.err_free2_crit_edge ]
  %retval.0.i.i659794800 = phi ptr [ %call8.i.i, %if.end7.i.i690.err_free2_crit_edge ], [ null, %if.end128.err_free2_crit_edge ], [ %call8.i.i, %err_free.err_free2_crit_edge ], [ %call8.i.i, %if.end394.err_free2_crit_edge ]
  tail call void @kfree(ptr noundef %retval.0.i.i691801) #16
  tail call void @kfree(ptr noundef %retval.0.i.i659794800) #16
  br label %cleanup418

cleanup418:                                       ; preds = %err_free2, %for.end351, %do.end115
  %retval.0 = phi ptr [ null, %do.end115 ], [ null, %err_free2 ], [ %call8.i.i, %for.end351 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_prev(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @purge_vmap_area_lazy() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @vmap_purge_lock, i32 noundef 0) #16
  tail call fastcc void @purge_fragmented_blocks_allcpus()
  %call = tail call fastcc zeroext i1 @__purge_vmap_area_lazy(i32 noundef -1, i32 noundef 0)
  tail call void @mutex_unlock(ptr noundef nonnull @vmap_purge_lock) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pcpu_free_vm_areas(ptr noundef %vms, i32 noundef %nr_vms) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_vms)
  %cmp4 = icmp sgt i32 %nr_vms, 0
  br i1 %cmp4, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %free_vm_area.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %i.05 = phi i32 [ %inc, %free_vm_area.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %vms, i32 %i.05
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %addr.i = getelementptr inbounds %struct.vm_struct, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %addr.i, align 4
  %call.i = tail call ptr @remove_vm_area(ptr noundef %3) #16
  %cmp.not.i = icmp eq ptr %call.i, %1
  br i1 %cmp.not.i, label %free_vm_area.exit, label %do.body2.i, !prof !245

do.body2.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3552, 0\0A.popsection", ""() #16, !srcloc !301
  unreachable

free_vm_area.exit:                                ; preds = %for.body
  tail call void @kfree(ptr noundef %1) #16
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, %nr_vms
  br i1 %exitcond.not, label %free_vm_area.exit.for.end_crit_edge, label %free_vm_area.exit.for.body_crit_edge

free_vm_area.exit.for.body_crit_edge:             ; preds = %free_vm_area.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

free_vm_area.exit.for.end_crit_edge:              ; preds = %free_vm_area.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %free_vm_area.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @kfree(ptr noundef %vms) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @vmalloc_dump_obj(ptr noundef %object) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %object to i32
  %add = add i32 %0, 4095
  %and = and i32 %add, -4096
  tail call void @_raw_spin_lock(ptr noundef nonnull @vmap_area_lock) #16
  %n.017.i.i.i = load ptr, ptr @vmap_area_root, align 4
  %tobool.not18.i.i.i = icmp eq ptr %n.017.i.i.i, null
  br i1 %tobool.not18.i.i.i, label %entry.find_vmap_area.exit.thread.i_crit_edge, label %entry.while.body.i.i.i_crit_edge

entry.while.body.i.i.i_crit_edge:                 ; preds = %entry
  br label %while.body.i.i.i

entry.find_vmap_area.exit.thread.i_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %find_vmap_area.exit.thread.i

while.body.i.i.i:                                 ; preds = %cleanup.i.i.i.while.body.i.i.i_crit_edge, %entry.while.body.i.i.i_crit_edge
  %n.019.i.i.i = phi ptr [ %n.0.i.i.i, %cleanup.i.i.i.while.body.i.i.i_crit_edge ], [ %n.017.i.i.i, %entry.while.body.i.i.i_crit_edge ]
  %add.ptr.i.i.i = getelementptr i8, ptr %n.019.i.i.i, i32 -8
  %1 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %add.ptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %and)
  %cmp.i.i.i = icmp ugt i32 %2, %and
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %rb_left.i.i.i = getelementptr inbounds %struct.rb_node, ptr %n.019.i.i.i, i32 0, i32 2
  br label %cleanup.i.i.i

if.else.i.i.i:                                    ; preds = %while.body.i.i.i
  %va_end.i.i.i = getelementptr i8, ptr %n.019.i.i.i, i32 -4
  %3 = ptrtoint ptr %va_end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %va_end.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %and)
  %cmp1.not.i.i.i = icmp ugt i32 %4, %and
  br i1 %cmp1.not.i.i.i, label %find_vmap_area.exit.i, label %if.then2.i.i.i

if.then2.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %rb_right.i.i.i = getelementptr inbounds %struct.rb_node, ptr %n.019.i.i.i, i32 0, i32 1
  br label %cleanup.i.i.i

cleanup.i.i.i:                                    ; preds = %if.then2.i.i.i, %if.then.i.i.i
  %n.1.in.i.i.i = phi ptr [ %rb_left.i.i.i, %if.then.i.i.i ], [ %rb_right.i.i.i, %if.then2.i.i.i ]
  %5 = ptrtoint ptr %n.1.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %n.0.i.i.i = load ptr, ptr %n.1.in.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %n.0.i.i.i, null
  br i1 %tobool.not.i.i.i, label %cleanup.i.i.i.find_vmap_area.exit.thread.i_crit_edge, label %cleanup.i.i.i.while.body.i.i.i_crit_edge

cleanup.i.i.i.while.body.i.i.i_crit_edge:         ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i.i.i

cleanup.i.i.i.find_vmap_area.exit.thread.i_crit_edge: ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %find_vmap_area.exit.thread.i

find_vmap_area.exit.thread.i:                     ; preds = %cleanup.i.i.i.find_vmap_area.exit.thread.i_crit_edge, %entry.find_vmap_area.exit.thread.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @vmap_area_lock) #16
  br label %cleanup

find_vmap_area.exit.i:                            ; preds = %if.else.i.i.i
  %add.ptr.i.i.i.le = getelementptr i8, ptr %n.019.i.i.i, i32 -8
  tail call void @_raw_spin_unlock(ptr noundef nonnull @vmap_area_lock) #16
  %tobool.not.i = icmp eq ptr %add.ptr.i.i.i.le, null
  br i1 %tobool.not.i, label %find_vmap_area.exit.i.cleanup_crit_edge, label %find_vm_area.exit

find_vmap_area.exit.i.cleanup_crit_edge:          ; preds = %find_vmap_area.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

find_vm_area.exit:                                ; preds = %find_vmap_area.exit.i
  %6 = getelementptr i8, ptr %n.019.i.i.i, i32 20
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %find_vm_area.exit.cleanup_crit_edge, label %do.end

find_vm_area.exit.cleanup_crit_edge:              ; preds = %find_vm_area.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end:                                           ; preds = %find_vm_area.exit
  call void @__sanitizer_cov_trace_pc() #18
  %nr_pages = getelementptr inbounds %struct.vm_struct, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr_pages, align 4
  %addr = getelementptr inbounds %struct.vm_struct, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %addr, align 4
  %13 = ptrtoint ptr %12 to i32
  %caller = getelementptr inbounds %struct.vm_struct, ptr %8, i32 0, i32 7
  %14 = ptrtoint ptr %caller to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %caller, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %10, i32 noundef %13, ptr noundef %15) #22
  br label %cleanup

cleanup:                                          ; preds = %do.end, %find_vm_area.exit.cleanup_crit_edge, %find_vmap_area.exit.i.cleanup_crit_edge, %find_vmap_area.exit.thread.i
  %tobool.not8 = phi i1 [ false, %find_vm_area.exit.cleanup_crit_edge ], [ true, %do.end ], [ false, %find_vmap_area.exit.i.cleanup_crit_edge ], [ false, %find_vmap_area.exit.thread.i ]
  ret i1 %tobool.not8
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_vmalloc_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.48, i16 noundef zeroext 256, ptr noundef null, ptr noundef nonnull @vmalloc_op, i32 noundef 0, ptr noundef null) #16
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pte_alloc_kernel(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_pte_at(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pmd_clear_bad(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @purge_fragmented_blocks_allcpus() unnamed_addr #2 align 64 {
entry:
  %purge.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call3 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call3, i32 %0)
  %cmp4 = icmp ult i32 %call3, %0
  br i1 %cmp4, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %1 = getelementptr inbounds %struct.list_head, ptr %purge.i, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %purge_fragmented_blocks.exit.for.body_crit_edge, %for.body.lr.ph
  %call5 = phi i32 [ %call3, %for.body.lr.ph ], [ %call, %purge_fragmented_blocks.exit.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %purge.i) #16
  %2 = ptrtoint ptr %purge.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %purge.i, ptr %purge.i, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %purge.i, ptr %1, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call5
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %5, ptrtoint (ptr @vmap_block_queue to i32)
  %6 = inttoptr i32 %add.i to ptr
  %7 = call i32 @llvm.read_register.i32(metadata !235) #16
  %and.i.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !258
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i.i = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i.i, label %for.body.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

for.body.rcu_read_lock.exit.i_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %for.body
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 696, ptr noundef nonnull @.str.20) #16
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %for.body.rcu_read_lock.exit.i_crit_edge
  %call.i = call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end8.i_crit_edge

rcu_read_lock.exit.i.do.end8.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call3.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.do.end8.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.do.end8.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b96.i = load i1, ptr @purge_fragmented_blocks.__warned, align 1
  br i1 %.b96.i, label %land.lhs.true5.i.do.end8.i_crit_edge, label %if.then.i

land.lhs.true5.i.do.end8.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8.i

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @purge_fragmented_blocks.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1955, ptr noundef nonnull @.str.18) #16
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then.i, %land.lhs.true5.i.do.end8.i_crit_edge, %land.lhs.true.i.do.end8.i_crit_edge, %rcu_read_lock.exit.i.do.end8.i_crit_edge
  %free.i = getelementptr inbounds %struct.vmap_block_queue, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %free.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn117.i = load volatile ptr, ptr %free.i, align 4
  %cmp.not119.i = icmp eq ptr %.pn117.i, %free.i
  br i1 %cmp.not119.i, label %do.end8.i.for.end.i_crit_edge, label %do.end8.i.for.body.i_crit_edge

do.end8.i.for.body.i_crit_edge:                   ; preds = %do.end8.i
  br label %for.body.i

do.end8.i.for.end.i_crit_edge:                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end8.i.for.body.i_crit_edge
  %.pn120.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn117.i, %do.end8.i.for.body.i_crit_edge ]
  %vb.0121.i = getelementptr i8, ptr %.pn120.i, i32 -64
  %free16.i = getelementptr i8, ptr %.pn120.i, i32 -16
  %12 = ptrtoint ptr %free16.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %free16.i, align 4
  %dirty.i = getelementptr i8, ptr %.pn120.i, i32 -12
  %14 = ptrtoint ptr %dirty.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dirty.i, align 4
  %add17.i = add i32 %15, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %add17.i)
  %cmp18.i = icmp ne i32 %add17.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %15)
  %cmp21.not.i = icmp eq i32 %15, 512
  %or.cond.i = or i1 %cmp21.not.i, %cmp18.i
  br i1 %or.cond.i, label %for.body.i.for.inc.i_crit_edge, label %if.end23.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.end23.i:                                       ; preds = %for.body.i
  call void @_raw_spin_lock(ptr noundef %vb.0121.i) #16
  %16 = ptrtoint ptr %free16.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %free16.i, align 4
  %18 = ptrtoint ptr %dirty.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dirty.i, align 4
  %add26.i = add i32 %19, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %add26.i)
  %cmp27.i = icmp ne i32 %add26.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %19)
  %cmp30.not.i = icmp eq i32 %19, 512
  %or.cond98.i = or i1 %cmp30.not.i, %cmp27.i
  br i1 %or.cond98.i, label %if.else.i, label %if.then31.i

if.then31.i:                                      ; preds = %if.end23.i
  %20 = ptrtoint ptr %free16.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %free16.i, align 4
  %21 = ptrtoint ptr %dirty.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 512, ptr %dirty.i, align 4
  %dirty_min.i = getelementptr i8, ptr %.pn120.i, i32 -8
  %22 = ptrtoint ptr %dirty_min.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %dirty_min.i, align 4
  %dirty_max.i = getelementptr i8, ptr %.pn120.i, i32 -4
  %23 = ptrtoint ptr %dirty_max.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 512, ptr %dirty_max.i, align 4
  call void @_raw_spin_lock(ptr noundef %6) #16
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn120.i) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then31.i.list_del_rcu.exit.i_crit_edge

if.then31.i.list_del_rcu.exit.i_crit_edge:        ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del_rcu.exit.i

if.end.i.i.i:                                     ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn120.i, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i.i, align 4
  %26 = ptrtoint ptr %.pn120.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %.pn120.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %list_del_rcu.exit.i

list_del_rcu.exit.i:                              ; preds = %if.end.i.i.i, %if.then31.i.list_del_rcu.exit.i_crit_edge
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn120.i, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef %6) #16
  call void @_raw_spin_unlock(ptr noundef %vb.0121.i) #16
  %purge38.i = getelementptr i8, ptr %.pn120.i, i32 16
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %call.i.i100.i = call zeroext i1 @__list_add_valid(ptr noundef %purge38.i, ptr noundef %32, ptr noundef nonnull %purge.i) #16
  br i1 %call.i.i100.i, label %if.end.i.i101.i, label %list_del_rcu.exit.i.for.inc.i_crit_edge

list_del_rcu.exit.i.for.inc.i_crit_edge:          ; preds = %list_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.end.i.i101.i:                                  ; preds = %list_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %purge38.i, ptr %1, align 4
  %34 = ptrtoint ptr %purge38.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %purge.i, ptr %purge38.i, align 4
  %prev3.i.i.i = getelementptr i8, ptr %.pn120.i, i32 20
  %35 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev3.i.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %purge38.i, ptr %32, align 4
  br label %for.inc.i

if.else.i:                                        ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @_raw_spin_unlock(ptr noundef %vb.0121.i) #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.end.i.i101.i, %list_del_rcu.exit.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %37 = ptrtoint ptr %.pn120.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn.i = load volatile ptr, ptr %.pn120.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %free.i
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %do.end8.i.for.end.i_crit_edge
  %call.i102.i = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i102.i, label %for.end.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i105.i

for.end.i.rcu_read_unlock.exit.i_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit.i

land.lhs.true.i105.i:                             ; preds = %for.end.i
  %call1.i103.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i103.i)
  %tobool.not.i104.i = icmp eq i32 %call1.i103.i, 0
  br i1 %tobool.not.i104.i, label %land.lhs.true.i105.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i107.i

land.lhs.true.i105.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i105.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i107.i:                            ; preds = %land.lhs.true.i105.i
  %.b4.i106.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i106.i, label %land.lhs.true2.i107.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i108.i

land.lhs.true2.i107.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i107.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit.i

if.then.i108.i:                                   ; preds = %land.lhs.true2.i107.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 724, ptr noundef nonnull @.str.21) #16
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i108.i, %land.lhs.true2.i107.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i105.i.rcu_read_unlock.exit.i_crit_edge, %for.end.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !259
  %38 = call i32 @llvm.read_register.i32(metadata !235) #16
  %and.i.i.i.i.i109.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i.i109.i to ptr
  %preempt_count.i.i.i.i110.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i.i110.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i.i110.i, align 4
  %sub.i.i.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i110.i, align 4
  call void @rcu_read_unlock_strict() #16
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  %42 = ptrtoint ptr %purge.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %purge.i, align 4
  %cmp61.not122.i = icmp eq ptr %43, %purge.i
  br i1 %cmp61.not122.i, label %rcu_read_unlock.exit.i.purge_fragmented_blocks.exit_crit_edge, label %rcu_read_unlock.exit.i.for.body62.i_crit_edge

rcu_read_unlock.exit.i.for.body62.i_crit_edge:    ; preds = %rcu_read_unlock.exit.i
  br label %for.body62.i

rcu_read_unlock.exit.i.purge_fragmented_blocks.exit_crit_edge: ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %purge_fragmented_blocks.exit

for.body62.i:                                     ; preds = %free_vmap_block.exit.i.for.body62.i_crit_edge, %rcu_read_unlock.exit.i.for.body62.i_crit_edge
  %.pn95.in123.i = phi ptr [ %.pn95.i, %free_vmap_block.exit.i.for.body62.i_crit_edge ], [ %43, %rcu_read_unlock.exit.i.for.body62.i_crit_edge ]
  %vb.1.i = getelementptr i8, ptr %.pn95.in123.i, i32 -80
  %44 = ptrtoint ptr %.pn95.in123.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pn95.i = load ptr, ptr %.pn95.in123.i, align 4
  %call.i.i111.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn95.in123.i) #16
  br i1 %call.i.i111.i, label %if.end.i.i114.i, label %for.body62.i.list_del.exit.i_crit_edge

for.body62.i.list_del.exit.i_crit_edge:           ; preds = %for.body62.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit.i

if.end.i.i114.i:                                  ; preds = %for.body62.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i112.i = getelementptr inbounds %struct.list_head, ptr %.pn95.in123.i, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i.i112.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i.i112.i, align 4
  %47 = ptrtoint ptr %.pn95.in123.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %.pn95.in123.i, align 4
  %prev1.i.i.i113.i = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %prev1.i.i.i113.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev1.i.i.i113.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %48, ptr %46, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i114.i, %for.body62.i.list_del.exit.i_crit_edge
  %51 = ptrtoint ptr %.pn95.in123.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn95.in123.i, align 4
  %prev.i115.i = getelementptr inbounds %struct.list_head, ptr %.pn95.in123.i, i32 0, i32 1
  %52 = ptrtoint ptr %prev.i115.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i115.i, align 4
  %va.i.i = getelementptr i8, ptr %.pn95.in123.i, i32 -36
  %53 = ptrtoint ptr %va.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %va.i.i, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %57 = load ptr, ptr @high_memory, align 4
  %58 = ptrtoint ptr %57 to i32
  %add.i.i.i = add i32 %58, 8388608
  %and.i.i.i = and i32 %add.i.i.i, -8388608
  %sub.i.i.i = sub i32 %56, %and.i.i.i
  %div4.i.i.i = lshr i32 %sub.i.i.i, 21
  %call1.i116.i = call ptr @xa_erase(ptr noundef nonnull @vmap_blocks, i32 noundef %div4.i.i.i) #16
  %cmp.not.i.i = icmp eq ptr %call1.i116.i, %vb.1.i
  br i1 %cmp.not.i.i, label %do.end8.i.i, label %do.body3.i.i, !prof !245

do.body3.i.i:                                     ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1941, 0\0A.popsection", ""() #16, !srcloc !267
  unreachable

do.end8.i.i:                                      ; preds = %list_del.exit.i
  %59 = ptrtoint ptr %va.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %va.i.i, align 4
  call fastcc void @free_vmap_area_noflush(ptr noundef %60) #16
  %tobool11.not.i.i = icmp eq ptr %vb.1.i, null
  br i1 %tobool11.not.i.i, label %do.end8.i.i.free_vmap_block.exit.i_crit_edge, label %do.end15.i.i

do.end8.i.i.free_vmap_block.exit.i_crit_edge:     ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %free_vmap_block.exit.i

do.end15.i.i:                                     ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %callback_head.i.i = getelementptr i8, ptr %.pn95.in123.i, i32 -8
  call void @kvfree_call_rcu(ptr noundef %callback_head.i.i, ptr noundef nonnull inttoptr (i32 72 to ptr)) #16
  br label %free_vmap_block.exit.i

free_vmap_block.exit.i:                           ; preds = %do.end15.i.i, %do.end8.i.i.free_vmap_block.exit.i_crit_edge
  %cmp61.not.i = icmp eq ptr %.pn95.i, %purge.i
  br i1 %cmp61.not.i, label %free_vmap_block.exit.i.purge_fragmented_blocks.exit_crit_edge, label %free_vmap_block.exit.i.for.body62.i_crit_edge

free_vmap_block.exit.i.for.body62.i_crit_edge:    ; preds = %free_vmap_block.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body62.i

free_vmap_block.exit.i.purge_fragmented_blocks.exit_crit_edge: ; preds = %free_vmap_block.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %purge_fragmented_blocks.exit

purge_fragmented_blocks.exit:                     ; preds = %free_vmap_block.exit.i.purge_fragmented_blocks.exit_crit_edge, %rcu_read_unlock.exit.i.purge_fragmented_blocks.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %purge.i) #16
  %call = call i32 @cpumask_next(i32 noundef %call5, ptr noundef nonnull @__cpu_possible_mask) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %61 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %61
  br i1 %cmp, label %purge_fragmented_blocks.exit.for.body_crit_edge, label %purge_fragmented_blocks.exit.for.end_crit_edge

purge_fragmented_blocks.exit.for.end_crit_edge:   ; preds = %purge_fragmented_blocks.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

purge_fragmented_blocks.exit.for.body_crit_edge:  ; preds = %purge_fragmented_blocks.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %purge_fragmented_blocks.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @__purge_vmap_area_lazy(i32 noundef %start, i32 noundef %end) unnamed_addr #2 align 64 {
entry:
  %local_pure_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %local_pure_list) #16
  %0 = getelementptr inbounds %struct.list_head, ptr %local_pure_list, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %1 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.rhs:                                         ; preds = %entry
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @vmap_purge_lock, i32 0, i32 5), i32 noundef -1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !247

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1671, i32 noundef 9, ptr noundef null) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @purge_vmap_area_lock) #16
  store ptr null, ptr @purge_vmap_area_root, align 4
  %2 = load ptr, ptr @purge_vmap_area_list, align 4
  %3 = ptrtoint ptr %local_pure_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %local_pure_list, align 4
  %prev.i.i111 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i111 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %local_pure_list, ptr %prev.i.i111, align 4
  %5 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @purge_vmap_area_list, i32 0, i32 1), align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %0, align 4
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %local_pure_list, ptr %5, align 4
  store volatile ptr @purge_vmap_area_list, ptr @purge_vmap_area_list, align 4
  store ptr @purge_vmap_area_list, ptr getelementptr inbounds (%struct.list_head, ptr @purge_vmap_area_list, i32 0, i32 1), align 4
  call void @_raw_spin_unlock(ptr noundef nonnull @purge_vmap_area_lock) #16
  %8 = ptrtoint ptr %local_pure_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %local_pure_list, align 4
  %cmp.i = icmp ne ptr %9, %local_pure_list
  br i1 %cmp.i, label %if.end33, label %if.end.cleanup86_crit_edge, !prof !245

if.end.cleanup86_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup86

if.end33:                                         ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %9, i32 -20
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr, align 4
  %12 = call i32 @llvm.umin.i32(i32 %11, i32 %start)
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %0, align 4
  %va_end = getelementptr i8, ptr %14, i32 -16
  %15 = ptrtoint ptr %va_end to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %va_end, align 4
  %17 = call i32 @llvm.umax.i32(i32 %16, i32 %end)
  call void @flush_tlb_kernel_range(i32 noundef %12, i32 noundef %17) #16
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %18 = load volatile i32, ptr @__num_online_cpus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i112 = icmp eq i32 %18, 0
  %19 = call i32 @llvm.ctlz.i32(i32 %18, i1 true) #16, !range !265
  %sub.i.op.i = mul nsw i32 %19, -16384
  %sub.i.op.i.op = add nsw i32 %sub.i.op.i, 524288
  %shl = select i1 %tobool.not.i.i112, i32 0, i32 %sub.i.op.i.op
  call void @_raw_spin_lock(ptr noundef nonnull @free_vmap_area_lock) #16
  %20 = ptrtoint ptr %local_pure_list to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %local_pure_list, align 4
  %cmp56.not125 = icmp eq ptr %21, %local_pure_list
  br i1 %cmp56.not125, label %if.end33.for.end_crit_edge, label %if.end33.for.body_crit_edge

if.end33.for.body_crit_edge:                      ; preds = %if.end33
  br label %for.body

if.end33.for.end_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end33.for.body_crit_edge
  %.pn.in126 = phi ptr [ %.pn127, %cleanup.for.body_crit_edge ], [ %21, %if.end33.for.body_crit_edge ]
  %22 = ptrtoint ptr %.pn.in126 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn127 = load ptr, ptr %.pn.in126, align 4
  %va.0 = getelementptr i8, ptr %.pn.in126, i32 -20
  %va_end59 = getelementptr i8, ptr %.pn.in126, i32 -16
  %23 = ptrtoint ptr %va_end59 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %va_end59, align 4
  %25 = ptrtoint ptr %va.0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %va.0, align 4
  %sub = sub i32 %24, %26
  %shr = lshr i32 %sub, 12
  %27 = load ptr, ptr @free_vmap_area_root, align 4
  %tobool1.not.i.i.i = icmp eq ptr %27, null
  br i1 %tobool1.not.i.i.i, label %for.body.if.end4.i.i.i_crit_edge, label %if.end6.i.i.i, !prof !247

for.body.if.end4.i.i.i_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i.i.i

if.end6.i.i.i:                                    ; preds = %for.body
  %28 = ptrtoint ptr %va_end59 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %va_end59, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.cond50.i.i.i.do.body.i.i.i_crit_edge, %if.end6.i.i.i
  %30 = phi ptr [ %36, %do.cond50.i.i.i.do.body.i.i.i_crit_edge ], [ %27, %if.end6.i.i.i ]
  %add.ptr.i.i.i = getelementptr i8, ptr %30, i32 -8
  %va_end.i.i.i = getelementptr i8, ptr %30, i32 -4
  %31 = ptrtoint ptr %va_end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %va_end.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %32)
  %cmp.i.i.i = icmp ult i32 %26, %32
  %33 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %34)
  %cmp9.not.i.i.i = icmp ugt i32 %29, %34
  br i1 %cmp.i.i.i, label %land.lhs.true.i.i.i, label %if.else11.thread.i.i.i

land.lhs.true.i.i.i:                              ; preds = %do.body.i.i.i
  br i1 %cmp9.not.i.i.i, label %land.lhs.true.i.i.i.find_va_links.exit.thread.i.i_crit_edge, label %if.then10.i.i.i

land.lhs.true.i.i.i.find_va_links.exit.thread.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %find_va_links.exit.thread.i.i

if.then10.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %rb_left.i.i.i = getelementptr inbounds %struct.rb_node, ptr %30, i32 0, i32 2
  br label %do.cond50.i.i.i

if.else11.thread.i.i.i:                           ; preds = %do.body.i.i.i
  br i1 %cmp9.not.i.i.i, label %if.then19.i.i.i, label %if.else11.thread.i.i.i.find_va_links.exit.thread.i.i_crit_edge

if.else11.thread.i.i.i.find_va_links.exit.thread.i.i_crit_edge: ; preds = %if.else11.thread.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %find_va_links.exit.thread.i.i

if.then19.i.i.i:                                  ; preds = %if.else11.thread.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %rb_right.i.i.i = getelementptr inbounds %struct.rb_node, ptr %30, i32 0, i32 1
  br label %do.cond50.i.i.i

find_va_links.exit.thread.i.i:                    ; preds = %if.else11.thread.i.i.i.find_va_links.exit.thread.i.i_crit_edge, %land.lhs.true.i.i.i.find_va_links.exit.thread.i.i_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 892, i32 noundef 9, ptr noundef nonnull @.str.26, i32 noundef %26, i32 noundef %29, i32 noundef %34, i32 noundef %32) #16
  br label %cleanup

do.cond50.i.i.i:                                  ; preds = %if.then19.i.i.i, %if.then10.i.i.i
  %link.2.i.i.i = phi ptr [ %rb_left.i.i.i, %if.then10.i.i.i ], [ %rb_right.i.i.i, %if.then19.i.i.i ]
  %35 = ptrtoint ptr %link.2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %link.2.i.i.i, align 4
  %tobool51.not.i.i.i = icmp eq ptr %36, null
  br i1 %tobool51.not.i.i.i, label %find_va_links.exit.i.i, label %do.cond50.i.i.i.do.body.i.i.i_crit_edge

do.cond50.i.i.i.do.body.i.i.i_crit_edge:          ; preds = %do.cond50.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i.i

find_va_links.exit.i.i:                           ; preds = %do.cond50.i.i.i
  %tobool.not.i.i = icmp eq ptr %link.2.i.i.i, null
  br i1 %tobool.not.i.i, label %find_va_links.exit.i.i.cleanup_crit_edge, label %if.end.i.i.i

find_va_links.exit.i.i.cleanup_crit_edge:         ; preds = %find_va_links.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i.i.i:                                     ; preds = %find_va_links.exit.i.i
  %list4.i.i.i = getelementptr i8, ptr %30, i32 12
  %rb_right.i65.i.i = getelementptr inbounds %struct.rb_node, ptr %30, i32 0, i32 1
  %cmp.i66.i.i = icmp eq ptr %rb_right.i65.i.i, %link.2.i.i.i
  br i1 %cmp.i66.i.i, label %cond.true.i.i.i, label %if.end.i.i.i.get_va_next_sibling.exit.i.i_crit_edge

if.end.i.i.i.get_va_next_sibling.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_va_next_sibling.exit.i.i

cond.true.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %37 = ptrtoint ptr %list4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %list4.i.i.i, align 4
  br label %get_va_next_sibling.exit.i.i

get_va_next_sibling.exit.i.i:                     ; preds = %cond.true.i.i.i, %if.end.i.i.i.get_va_next_sibling.exit.i.i_crit_edge
  %retval.0.i67.i.i = phi ptr [ %38, %cond.true.i.i.i ], [ %list4.i.i.i, %if.end.i.i.i.get_va_next_sibling.exit.i.i_crit_edge ]
  %cmp.i.i = icmp eq ptr %retval.0.i67.i.i, null
  br i1 %cmp.i.i, label %get_va_next_sibling.exit.i.i.if.then.i73.i.i_crit_edge, label %if.end5.i.i, !prof !247

get_va_next_sibling.exit.i.i.if.then.i73.i.i_crit_edge: ; preds = %get_va_next_sibling.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i73.i.i

if.end5.i.i:                                      ; preds = %get_va_next_sibling.exit.i.i
  %cmp6.not.i.i = icmp eq ptr %retval.0.i67.i.i, @free_vmap_area_list
  br i1 %cmp6.not.i.i, label %if.end5.i.i.if.end13.i.i_crit_edge, label %if.then7.i.i

if.end5.i.i.if.end13.i.i_crit_edge:               ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13.i.i

if.then7.i.i:                                     ; preds = %if.end5.i.i
  %add.ptr.i.i = getelementptr i8, ptr %retval.0.i67.i.i, i32 -20
  %39 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %29)
  %cmp8.i.i = icmp eq i32 %40, %29
  br i1 %cmp8.i.i, label %if.then9.i.i, label %if.then7.i.i.if.end13.i.i_crit_edge

if.then7.i.i.if.end13.i.i_crit_edge:              ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13.i.i

if.then9.i.i:                                     ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %41 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %26, ptr %add.ptr.i.i, align 4
  %42 = load ptr, ptr @vmap_area_cachep, align 4
  call void @kmem_cache_free(ptr noundef %42, ptr noundef %va.0) #16
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.then9.i.i, %if.then7.i.i.if.end13.i.i_crit_edge, %if.end5.i.i.if.end13.i.i_crit_edge
  %merged.0.off0.i.i = phi i1 [ true, %if.then9.i.i ], [ false, %if.then7.i.i.if.end13.i.i_crit_edge ], [ false, %if.end5.i.i.if.end13.i.i_crit_edge ]
  %va.addr.0.i.i = phi ptr [ %add.ptr.i.i, %if.then9.i.i ], [ %va.0, %if.then7.i.i.if.end13.i.i_crit_edge ], [ %va.0, %if.end5.i.i.if.end13.i.i_crit_edge ]
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %retval.0.i67.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prev.i.i, align 4
  %cmp14.not.i.i = icmp eq ptr %44, @free_vmap_area_list
  br i1 %cmp14.not.i.i, label %if.end13.i.i.insert.i.i_crit_edge, label %if.then15.i.i

if.end13.i.i.insert.i.i_crit_edge:                ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %insert.i.i

if.then15.i.i:                                    ; preds = %if.end13.i.i
  %add.ptr19.i.i = getelementptr i8, ptr %44, i32 -20
  %va_end20.i.i = getelementptr i8, ptr %44, i32 -16
  %45 = ptrtoint ptr %va_end20.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %va_end20.i.i, align 4
  %47 = ptrtoint ptr %va.addr.0.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %va.addr.0.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %48)
  %cmp22.i.i = icmp eq i32 %46, %48
  br i1 %cmp22.i.i, label %if.then23.i.i, label %if.then15.i.i.insert.i.i_crit_edge

if.then15.i.i.insert.i.i_crit_edge:               ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %insert.i.i

if.then23.i.i:                                    ; preds = %if.then15.i.i
  br i1 %merged.0.off0.i.i, label %if.then25.i.i, label %if.then23.i.i.insert.thread115.i.i_crit_edge

if.then23.i.i.insert.thread115.i.i_crit_edge:     ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %insert.thread115.i.i

if.then25.i.i:                                    ; preds = %if.then23.i.i
  %rb_node.i.i.i = getelementptr inbounds %struct.vmap_area, ptr %va.addr.0.i.i, i32 0, i32 2
  %49 = ptrtoint ptr %rb_node.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rb_node.i.i.i, align 4
  %51 = ptrtoint ptr %rb_node.i.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %51)
  %cmp.i68.i.i = icmp eq i32 %50, %51
  br i1 %cmp.i68.i.i, label %do.end.i69.i.i, label %if.end22.critedge.i.i.i, !prof !247

do.end.i69.i.i:                                   ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 962, i32 noundef 9, ptr noundef null) #16
  br label %insert.thread115.i.i

if.end22.critedge.i.i.i:                          ; preds = %if.then25.i.i
  %rb_right.i.i.i.i.i = getelementptr inbounds %struct.vmap_area, ptr %va.addr.0.i.i, i32 0, i32 2, i32 1
  %52 = ptrtoint ptr %rb_right.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rb_right.i.i.i.i.i, align 4
  %rb_left.i.i.i.i.i = getelementptr inbounds %struct.vmap_area, ptr %va.addr.0.i.i, i32 0, i32 2, i32 2
  %54 = ptrtoint ptr %rb_left.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rb_left.i.i.i.i.i, align 4
  %tobool.not.i.i.i.i.i = icmp eq ptr %55, null
  br i1 %tobool.not.i.i.i.i.i, label %if.then.i.i.i.i.i, label %if.else6.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %if.end22.critedge.i.i.i
  %and.i.i.i.i.i = and i32 %50, -4
  %56 = inttoptr i32 %and.i.i.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %if.then.i.i.i.i.i.__rb_change_child.exit.i.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i.i

if.then.i.i.i.i.i.__rb_change_child.exit.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__rb_change_child.exit.i.i.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %rb_left.i.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %rb_left.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rb_left.i.i.i.i.i.i, align 4
  %cmp.i.i.i.i.i.i = icmp eq ptr %58, %rb_node.i.i.i
  %rb_right.i.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %56, i32 0, i32 1
  %spec.select.i.i.i.i.i.i = select i1 %cmp.i.i.i.i.i.i, ptr %rb_left.i.i.i.i.i.i, ptr %rb_right.i.i.i.i.i.i
  br label %__rb_change_child.exit.i.i.i.i.i

__rb_change_child.exit.i.i.i.i.i:                 ; preds = %if.then.i.i.i.i.i.i, %if.then.i.i.i.i.i.__rb_change_child.exit.i.i.i.i.i_crit_edge
  %rb_left.sink.i.i.i.i.i.i = phi ptr [ @free_vmap_area_root, %if.then.i.i.i.i.i.__rb_change_child.exit.i.i.i.i.i_crit_edge ], [ %spec.select.i.i.i.i.i.i, %if.then.i.i.i.i.i.i ]
  %59 = ptrtoint ptr %rb_left.sink.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %53, ptr %rb_left.sink.i.i.i.i.i.i, align 4
  %tobool1.not.i.i.i.i.i = icmp eq ptr %53, null
  br i1 %tobool1.not.i.i.i.i.i, label %if.else.i.i.i.i.i, label %if.then2.i.i.i.i.i

if.then2.i.i.i.i.i:                               ; preds = %__rb_change_child.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %60 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %50, ptr %53, align 4
  br label %if.end69.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %__rb_change_child.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %and4.i.i.i.i.i = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i.i.i.i)
  %tobool5.not.i.i.i.i.i = icmp eq i32 %and4.i.i.i.i.i, 0
  %spec.select.i.i.i.i.i = select i1 %tobool5.not.i.i.i.i.i, ptr null, ptr %56
  br label %if.end69.i.i.i.i.i

if.else6.i.i.i.i.i:                               ; preds = %if.end22.critedge.i.i.i
  %tobool7.not.i.i.i.i.i = icmp eq ptr %53, null
  br i1 %tobool7.not.i.i.i.i.i, label %if.then8.i.i.i.i.i, label %if.else12.i.i.i.i.i

if.then8.i.i.i.i.i:                               ; preds = %if.else6.i.i.i.i.i
  %61 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %50, ptr %55, align 4
  %and11.i.i.i.i.i = and i32 %50, -4
  %62 = inttoptr i32 %and11.i.i.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i.i.i.i)
  %tobool.not.i2.i.i.i.i.i = icmp eq i32 %and11.i.i.i.i.i, 0
  br i1 %tobool.not.i2.i.i.i.i.i, label %if.then8.i.i.i.i.i.__rb_change_child.exit9.i.i.i.i.i_crit_edge, label %if.then.i7.i.i.i.i.i

if.then8.i.i.i.i.i.__rb_change_child.exit9.i.i.i.i.i_crit_edge: ; preds = %if.then8.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__rb_change_child.exit9.i.i.i.i.i

if.then.i7.i.i.i.i.i:                             ; preds = %if.then8.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %rb_left.i3.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %rb_left.i3.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %rb_left.i3.i.i.i.i.i, align 4
  %cmp.i4.i.i.i.i.i = icmp eq ptr %64, %rb_node.i.i.i
  %rb_right.i5.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %62, i32 0, i32 1
  %spec.select.i6.i.i.i.i.i = select i1 %cmp.i4.i.i.i.i.i, ptr %rb_left.i3.i.i.i.i.i, ptr %rb_right.i5.i.i.i.i.i
  br label %__rb_change_child.exit9.i.i.i.i.i

__rb_change_child.exit9.i.i.i.i.i:                ; preds = %if.then.i7.i.i.i.i.i, %if.then8.i.i.i.i.i.__rb_change_child.exit9.i.i.i.i.i_crit_edge
  %rb_left.sink.i8.i.i.i.i.i = phi ptr [ @free_vmap_area_root, %if.then8.i.i.i.i.i.__rb_change_child.exit9.i.i.i.i.i_crit_edge ], [ %spec.select.i6.i.i.i.i.i, %if.then.i7.i.i.i.i.i ]
  %65 = ptrtoint ptr %rb_left.sink.i8.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %55, ptr %rb_left.sink.i8.i.i.i.i.i, align 4
  br label %if.end69.i.i.i.i.i

if.else12.i.i.i.i.i:                              ; preds = %if.else6.i.i.i.i.i
  %rb_left13.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %53, i32 0, i32 2
  %66 = ptrtoint ptr %rb_left13.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rb_left13.i.i.i.i.i, align 4
  %tobool14.not.i.i.i.i.i = icmp eq ptr %67, null
  br i1 %tobool14.not.i.i.i.i.i, label %if.then15.i.i.i.i.i, label %if.else12.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

if.else12.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:  ; preds = %if.else12.i.i.i.i.i
  br label %do.body.i.i.i.i.i

if.then15.i.i.i.i.i:                              ; preds = %if.else12.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %rb_right16.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %53, i32 0, i32 1
  %68 = ptrtoint ptr %rb_right16.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %rb_right16.i.i.i.i.i, align 4
  %70 = getelementptr %struct.vmap_area, ptr %va.addr.0.i.i, i32 0, i32 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %70, align 4
  %73 = getelementptr i8, ptr %53, i32 20
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %72, ptr %73, align 4
  %.pre.i.i.i.i.i = ptrtoint ptr %53 to i32
  br label %if.end42.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %if.else12.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge
  %tmp.0.i.i.i.i.i = phi ptr [ %76, %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ], [ %67, %if.else12.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %successor.0.i.i.i.i.i = phi ptr [ %tmp.0.i.i.i.i.i, %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ], [ %53, %if.else12.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %rb_left18.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %tmp.0.i.i.i.i.i, i32 0, i32 2
  %75 = ptrtoint ptr %rb_left18.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %rb_left18.i.i.i.i.i, align 4
  %tobool19.not.i.i.i.i.i = icmp eq ptr %76, null
  br i1 %tobool19.not.i.i.i.i.i, label %do.end.i.i.i.i.i, label %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i.i.i.i

do.end.i.i.i.i.i:                                 ; preds = %do.body.i.i.i.i.i
  %rb_right20.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %tmp.0.i.i.i.i.i, i32 0, i32 1
  %77 = ptrtoint ptr %rb_right20.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %rb_right20.i.i.i.i.i, align 4
  %rb_left26.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %successor.0.i.i.i.i.i, i32 0, i32 2
  %79 = ptrtoint ptr %rb_left26.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %78, ptr %rb_left26.i.i.i.i.i, align 4
  store volatile ptr %53, ptr %rb_right20.i.i.i.i.i, align 4
  %80 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %53, align 4
  %and.i.i.i.i.i.i = and i32 %81, 1
  %82 = ptrtoint ptr %tmp.0.i.i.i.i.i to i32
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, %82
  store i32 %or.i.i.i.i.i.i, ptr %53, align 4
  %83 = getelementptr %struct.vmap_area, ptr %va.addr.0.i.i, i32 0, i32 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %83, align 4
  %86 = getelementptr i8, ptr %tmp.0.i.i.i.i.i, i32 20
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %85, ptr %86, align 4
  %cmp.not7.i.i.i.i.i.i = icmp eq ptr %successor.0.i.i.i.i.i, %tmp.0.i.i.i.i.i
  br i1 %cmp.not7.i.i.i.i.i.i, label %do.end.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge, label %do.end.i.i.i.i.i.while.body.i.i.i.i.i.i_crit_edge

do.end.i.i.i.i.i.while.body.i.i.i.i.i.i_crit_edge: ; preds = %do.end.i.i.i.i.i
  br label %while.body.i.i.i.i.i.i

do.end.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge:    ; preds = %do.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end42.i.i.i.i.i

while.body.i.i.i.i.i.i:                           ; preds = %cleanup.i.i.i.i.i.i.while.body.i.i.i.i.i.i_crit_edge, %do.end.i.i.i.i.i.while.body.i.i.i.i.i.i_crit_edge
  %rb.addr.08.i.i.i.i.i.i = phi ptr [ %110, %cleanup.i.i.i.i.i.i.while.body.i.i.i.i.i.i_crit_edge ], [ %successor.0.i.i.i.i.i, %do.end.i.i.i.i.i.while.body.i.i.i.i.i.i_crit_edge ]
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i.i.i.i.i, i32 -8
  %va_end.i.i.i.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i.i.i.i.i, i32 -4
  %88 = ptrtoint ptr %va_end.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %va_end.i.i.i.i.i.i.i.i, align 4
  %90 = ptrtoint ptr %add.ptr.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %add.ptr.i.i.i.i.i.i, align 4
  %sub.i.i.i.i.i.i.i.i = sub i32 %89, %91
  %rb_left.i.i.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i.i.i.i.i, i32 8
  %92 = ptrtoint ptr %rb_left.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %rb_left.i.i.i.i.i.i.i, align 4
  %tobool.not.i.i.i.i.i.i.i = icmp eq ptr %93, null
  br i1 %tobool.not.i.i.i.i.i.i.i, label %while.body.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i.i.i

while.body.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i_crit_edge: ; preds = %while.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i.i.i.i.i.i.i

if.then.i.i.i.i.i.i.i:                            ; preds = %while.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %94 = getelementptr i8, ptr %93, i32 20
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %94, align 4
  %97 = call i32 @llvm.umax.i32(i32 %96, i32 %sub.i.i.i.i.i.i.i.i) #16
  br label %if.end4.i.i.i.i.i.i.i

if.end4.i.i.i.i.i.i.i:                            ; preds = %if.then.i.i.i.i.i.i.i, %while.body.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i_crit_edge
  %max.0.i.i.i.i.i.i.i = phi i32 [ %sub.i.i.i.i.i.i.i.i, %while.body.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i_crit_edge ], [ %97, %if.then.i.i.i.i.i.i.i ]
  %rb_right.i.i.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i.i.i.i.i, i32 4
  %98 = ptrtoint ptr %rb_right.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %rb_right.i.i.i.i.i.i.i, align 4
  %tobool6.not.i.i.i.i.i.i.i = icmp eq ptr %99, null
  br i1 %tobool6.not.i.i.i.i.i.i.i, label %if.end4.i.i.i.i.i.i.i.if.end16.i.i.i.i.i.i.i_crit_edge, label %if.then7.i.i.i.i.i.i.i

if.end4.i.i.i.i.i.i.i.if.end16.i.i.i.i.i.i.i_crit_edge: ; preds = %if.end4.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16.i.i.i.i.i.i.i

if.then7.i.i.i.i.i.i.i:                           ; preds = %if.end4.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %100 = getelementptr i8, ptr %99, i32 20
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %100, align 4
  %103 = call i32 @llvm.umax.i32(i32 %102, i32 %max.0.i.i.i.i.i.i.i) #16
  br label %if.end16.i.i.i.i.i.i.i

if.end16.i.i.i.i.i.i.i:                           ; preds = %if.then7.i.i.i.i.i.i.i, %if.end4.i.i.i.i.i.i.i.if.end16.i.i.i.i.i.i.i_crit_edge
  %max.1.i.i.i.i.i.i.i = phi i32 [ %max.0.i.i.i.i.i.i.i, %if.end4.i.i.i.i.i.i.i.if.end16.i.i.i.i.i.i.i_crit_edge ], [ %103, %if.then7.i.i.i.i.i.i.i ]
  %104 = getelementptr i8, ptr %rb.addr.08.i.i.i.i.i.i, i32 20
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %104, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %106, i32 %max.1.i.i.i.i.i.i.i)
  %cmp18.i.i.i.i.i.i.i = icmp eq i32 %106, %max.1.i.i.i.i.i.i.i
  br i1 %cmp18.i.i.i.i.i.i.i, label %if.end16.i.i.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge, label %cleanup.i.i.i.i.i.i

if.end16.i.i.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge: ; preds = %if.end16.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end42.i.i.i.i.i

cleanup.i.i.i.i.i.i:                              ; preds = %if.end16.i.i.i.i.i.i.i
  %107 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %max.1.i.i.i.i.i.i.i, ptr %104, align 4
  %108 = ptrtoint ptr %rb.addr.08.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %rb.addr.08.i.i.i.i.i.i, align 4
  %and.i10.i.i.i.i.i = and i32 %109, -4
  %110 = inttoptr i32 %and.i10.i.i.i.i.i to ptr
  %cmp.not.i.i.i.i.i.i = icmp eq ptr %tmp.0.i.i.i.i.i, %110
  br i1 %cmp.not.i.i.i.i.i.i, label %cleanup.i.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge, label %cleanup.i.i.i.i.i.i.while.body.i.i.i.i.i.i_crit_edge

cleanup.i.i.i.i.i.i.while.body.i.i.i.i.i.i_crit_edge: ; preds = %cleanup.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i.i.i.i.i.i

cleanup.i.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge: ; preds = %cleanup.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end42.i.i.i.i.i

if.end42.i.i.i.i.i:                               ; preds = %cleanup.i.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge, %if.end16.i.i.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge, %do.end.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge, %if.then15.i.i.i.i.i
  %.pre-phi.i.i.i.i.i = phi i32 [ %82, %do.end.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge ], [ %.pre.i.i.i.i.i, %if.then15.i.i.i.i.i ], [ %82, %if.end16.i.i.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge ], [ %82, %cleanup.i.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge ]
  %parent.0.i.i.i.i.i = phi ptr [ %tmp.0.i.i.i.i.i, %do.end.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge ], [ %53, %if.then15.i.i.i.i.i ], [ %successor.0.i.i.i.i.i, %if.end16.i.i.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge ], [ %successor.0.i.i.i.i.i, %cleanup.i.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge ]
  %successor.1.i.i.i.i.i = phi ptr [ %tmp.0.i.i.i.i.i, %do.end.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge ], [ %53, %if.then15.i.i.i.i.i ], [ %tmp.0.i.i.i.i.i, %if.end16.i.i.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge ], [ %tmp.0.i.i.i.i.i, %cleanup.i.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge ]
  %child2.0.i.i.i.i.i = phi ptr [ %78, %do.end.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge ], [ %69, %if.then15.i.i.i.i.i ], [ %78, %if.end16.i.i.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge ], [ %78, %cleanup.i.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge ]
  %111 = ptrtoint ptr %rb_left.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %rb_left.i.i.i.i.i, align 4
  %rb_left49.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %successor.1.i.i.i.i.i, i32 0, i32 2
  %113 = ptrtoint ptr %rb_left49.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store volatile ptr %112, ptr %rb_left49.i.i.i.i.i, align 4
  %114 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %112, align 4
  %and.i11.i.i.i.i.i = and i32 %115, 1
  %or.i12.i.i.i.i.i = or i32 %and.i11.i.i.i.i.i, %.pre-phi.i.i.i.i.i
  store i32 %or.i12.i.i.i.i.i, ptr %112, align 4
  %116 = ptrtoint ptr %rb_node.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %rb_node.i.i.i, align 4
  %and55.i.i.i.i.i = and i32 %117, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i.i.i.i.i)
  %tobool.not.i13.i.i.i.i.i = icmp eq i32 %and55.i.i.i.i.i, 0
  br i1 %tobool.not.i13.i.i.i.i.i, label %if.end42.i.i.i.i.i.__rb_change_child.exit20.i.i.i.i.i_crit_edge, label %if.then.i18.i.i.i.i.i

if.end42.i.i.i.i.i.__rb_change_child.exit20.i.i.i.i.i_crit_edge: ; preds = %if.end42.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__rb_change_child.exit20.i.i.i.i.i

if.then.i18.i.i.i.i.i:                            ; preds = %if.end42.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %118 = inttoptr i32 %and55.i.i.i.i.i to ptr
  %rb_left.i14.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %118, i32 0, i32 2
  %119 = ptrtoint ptr %rb_left.i14.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %rb_left.i14.i.i.i.i.i, align 4
  %cmp.i15.i.i.i.i.i = icmp eq ptr %120, %rb_node.i.i.i
  %rb_right.i16.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %118, i32 0, i32 1
  %spec.select.i17.i.i.i.i.i = select i1 %cmp.i15.i.i.i.i.i, ptr %rb_left.i14.i.i.i.i.i, ptr %rb_right.i16.i.i.i.i.i
  br label %__rb_change_child.exit20.i.i.i.i.i

__rb_change_child.exit20.i.i.i.i.i:               ; preds = %if.then.i18.i.i.i.i.i, %if.end42.i.i.i.i.i.__rb_change_child.exit20.i.i.i.i.i_crit_edge
  %rb_left.sink.i19.i.i.i.i.i = phi ptr [ @free_vmap_area_root, %if.end42.i.i.i.i.i.__rb_change_child.exit20.i.i.i.i.i_crit_edge ], [ %spec.select.i17.i.i.i.i.i, %if.then.i18.i.i.i.i.i ]
  %121 = ptrtoint ptr %rb_left.sink.i19.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store volatile ptr %successor.1.i.i.i.i.i, ptr %rb_left.sink.i19.i.i.i.i.i, align 4
  %tobool56.not.i.i.i.i.i = icmp eq ptr %child2.0.i.i.i.i.i, null
  br i1 %tobool56.not.i.i.i.i.i, label %if.else58.i.i.i.i.i, label %if.then57.i.i.i.i.i

if.then57.i.i.i.i.i:                              ; preds = %__rb_change_child.exit20.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %122 = ptrtoint ptr %parent.0.i.i.i.i.i to i32
  %or.i21.i.i.i.i.i = or i32 %122, 1
  %123 = ptrtoint ptr %child2.0.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %or.i21.i.i.i.i.i, ptr %child2.0.i.i.i.i.i, align 4
  br label %if.end66.i.i.i.i.i

if.else58.i.i.i.i.i:                              ; preds = %__rb_change_child.exit20.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %124 = ptrtoint ptr %successor.1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %successor.1.i.i.i.i.i, align 4
  %and60.i.i.i.i.i = and i32 %125, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.i.i.i.i.i)
  %tobool61.not.i.i.i.i.i = icmp eq i32 %and60.i.i.i.i.i, 0
  %spec.select1.i.i.i.i.i = select i1 %tobool61.not.i.i.i.i.i, ptr null, ptr %parent.0.i.i.i.i.i
  br label %if.end66.i.i.i.i.i

if.end66.i.i.i.i.i:                               ; preds = %if.else58.i.i.i.i.i, %if.then57.i.i.i.i.i
  %rebalance.1.i.i.i.i.i = phi ptr [ null, %if.then57.i.i.i.i.i ], [ %spec.select1.i.i.i.i.i, %if.else58.i.i.i.i.i ]
  %126 = ptrtoint ptr %successor.1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %117, ptr %successor.1.i.i.i.i.i, align 4
  br label %if.end69.i.i.i.i.i

if.end69.i.i.i.i.i:                               ; preds = %if.end66.i.i.i.i.i, %__rb_change_child.exit9.i.i.i.i.i, %if.else.i.i.i.i.i, %if.then2.i.i.i.i.i
  %tmp.1.i.i.i.i.i = phi ptr [ %successor.1.i.i.i.i.i, %if.end66.i.i.i.i.i ], [ %62, %__rb_change_child.exit9.i.i.i.i.i ], [ %56, %if.else.i.i.i.i.i ], [ %56, %if.then2.i.i.i.i.i ]
  %rebalance.2.i.i.i.i.i = phi ptr [ %rebalance.1.i.i.i.i.i, %if.end66.i.i.i.i.i ], [ null, %__rb_change_child.exit9.i.i.i.i.i ], [ %spec.select.i.i.i.i.i, %if.else.i.i.i.i.i ], [ null, %if.then2.i.i.i.i.i ]
  %cmp.not7.i22.i.i.i.i.i = icmp eq ptr %tmp.1.i.i.i.i.i, null
  br i1 %cmp.not7.i22.i.i.i.i.i, label %if.end69.i.i.i.i.i.__rb_erase_augmented.exit.i.i.i.i_crit_edge, label %if.end69.i.i.i.i.i.while.body.i29.i.i.i.i.i_crit_edge

if.end69.i.i.i.i.i.while.body.i29.i.i.i.i.i_crit_edge: ; preds = %if.end69.i.i.i.i.i
  br label %while.body.i29.i.i.i.i.i

if.end69.i.i.i.i.i.__rb_erase_augmented.exit.i.i.i.i_crit_edge: ; preds = %if.end69.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__rb_erase_augmented.exit.i.i.i.i

while.body.i29.i.i.i.i.i:                         ; preds = %cleanup.i41.i.i.i.i.i.while.body.i29.i.i.i.i.i_crit_edge, %if.end69.i.i.i.i.i.while.body.i29.i.i.i.i.i_crit_edge
  %rb.addr.08.i23.i.i.i.i.i = phi ptr [ %149, %cleanup.i41.i.i.i.i.i.while.body.i29.i.i.i.i.i_crit_edge ], [ %tmp.1.i.i.i.i.i, %if.end69.i.i.i.i.i.while.body.i29.i.i.i.i.i_crit_edge ]
  %add.ptr.i24.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i23.i.i.i.i.i, i32 -8
  %va_end.i.i.i25.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i23.i.i.i.i.i, i32 -4
  %127 = ptrtoint ptr %va_end.i.i.i25.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %va_end.i.i.i25.i.i.i.i.i, align 4
  %129 = ptrtoint ptr %add.ptr.i24.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %add.ptr.i24.i.i.i.i.i, align 4
  %sub.i.i.i26.i.i.i.i.i = sub i32 %128, %130
  %rb_left.i.i27.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i23.i.i.i.i.i, i32 8
  %131 = ptrtoint ptr %rb_left.i.i27.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %rb_left.i.i27.i.i.i.i.i, align 4
  %tobool.not.i.i28.i.i.i.i.i = icmp eq ptr %132, null
  br i1 %tobool.not.i.i28.i.i.i.i.i, label %while.body.i29.i.i.i.i.i.if.end4.i.i34.i.i.i.i.i_crit_edge, label %if.then.i.i30.i.i.i.i.i

while.body.i29.i.i.i.i.i.if.end4.i.i34.i.i.i.i.i_crit_edge: ; preds = %while.body.i29.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i.i34.i.i.i.i.i

if.then.i.i30.i.i.i.i.i:                          ; preds = %while.body.i29.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %133 = getelementptr i8, ptr %132, i32 20
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %133, align 4
  %136 = call i32 @llvm.umax.i32(i32 %135, i32 %sub.i.i.i26.i.i.i.i.i) #16
  br label %if.end4.i.i34.i.i.i.i.i

if.end4.i.i34.i.i.i.i.i:                          ; preds = %if.then.i.i30.i.i.i.i.i, %while.body.i29.i.i.i.i.i.if.end4.i.i34.i.i.i.i.i_crit_edge
  %max.0.i.i31.i.i.i.i.i = phi i32 [ %sub.i.i.i26.i.i.i.i.i, %while.body.i29.i.i.i.i.i.if.end4.i.i34.i.i.i.i.i_crit_edge ], [ %136, %if.then.i.i30.i.i.i.i.i ]
  %rb_right.i.i32.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i23.i.i.i.i.i, i32 4
  %137 = ptrtoint ptr %rb_right.i.i32.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %rb_right.i.i32.i.i.i.i.i, align 4
  %tobool6.not.i.i33.i.i.i.i.i = icmp eq ptr %138, null
  br i1 %tobool6.not.i.i33.i.i.i.i.i, label %if.end4.i.i34.i.i.i.i.i.if.end16.i.i38.i.i.i.i.i_crit_edge, label %if.then7.i.i35.i.i.i.i.i

if.end4.i.i34.i.i.i.i.i.if.end16.i.i38.i.i.i.i.i_crit_edge: ; preds = %if.end4.i.i34.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16.i.i38.i.i.i.i.i

if.then7.i.i35.i.i.i.i.i:                         ; preds = %if.end4.i.i34.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %139 = getelementptr i8, ptr %138, i32 20
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %139, align 4
  %142 = call i32 @llvm.umax.i32(i32 %141, i32 %max.0.i.i31.i.i.i.i.i) #16
  br label %if.end16.i.i38.i.i.i.i.i

if.end16.i.i38.i.i.i.i.i:                         ; preds = %if.then7.i.i35.i.i.i.i.i, %if.end4.i.i34.i.i.i.i.i.if.end16.i.i38.i.i.i.i.i_crit_edge
  %max.1.i.i36.i.i.i.i.i = phi i32 [ %max.0.i.i31.i.i.i.i.i, %if.end4.i.i34.i.i.i.i.i.if.end16.i.i38.i.i.i.i.i_crit_edge ], [ %142, %if.then7.i.i35.i.i.i.i.i ]
  %143 = getelementptr i8, ptr %rb.addr.08.i23.i.i.i.i.i, i32 20
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %143, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %145, i32 %max.1.i.i36.i.i.i.i.i)
  %cmp18.i.i37.i.i.i.i.i = icmp eq i32 %145, %max.1.i.i36.i.i.i.i.i
  br i1 %cmp18.i.i37.i.i.i.i.i, label %if.end16.i.i38.i.i.i.i.i.__rb_erase_augmented.exit.i.i.i.i_crit_edge, label %cleanup.i41.i.i.i.i.i

if.end16.i.i38.i.i.i.i.i.__rb_erase_augmented.exit.i.i.i.i_crit_edge: ; preds = %if.end16.i.i38.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__rb_erase_augmented.exit.i.i.i.i

cleanup.i41.i.i.i.i.i:                            ; preds = %if.end16.i.i38.i.i.i.i.i
  %146 = ptrtoint ptr %143 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %max.1.i.i36.i.i.i.i.i, ptr %143, align 4
  %147 = ptrtoint ptr %rb.addr.08.i23.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %rb.addr.08.i23.i.i.i.i.i, align 4
  %and.i39.i.i.i.i.i = and i32 %148, -4
  %149 = inttoptr i32 %and.i39.i.i.i.i.i to ptr
  %cmp.not.i40.i.i.i.i.i = icmp eq i32 %and.i39.i.i.i.i.i, 0
  br i1 %cmp.not.i40.i.i.i.i.i, label %cleanup.i41.i.i.i.i.i.__rb_erase_augmented.exit.i.i.i.i_crit_edge, label %cleanup.i41.i.i.i.i.i.while.body.i29.i.i.i.i.i_crit_edge

cleanup.i41.i.i.i.i.i.while.body.i29.i.i.i.i.i_crit_edge: ; preds = %cleanup.i41.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i29.i.i.i.i.i

cleanup.i41.i.i.i.i.i.__rb_erase_augmented.exit.i.i.i.i_crit_edge: ; preds = %cleanup.i41.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__rb_erase_augmented.exit.i.i.i.i

__rb_erase_augmented.exit.i.i.i.i:                ; preds = %cleanup.i41.i.i.i.i.i.__rb_erase_augmented.exit.i.i.i.i_crit_edge, %if.end16.i.i38.i.i.i.i.i.__rb_erase_augmented.exit.i.i.i.i_crit_edge, %if.end69.i.i.i.i.i.__rb_erase_augmented.exit.i.i.i.i_crit_edge
  %tobool.not.i.i.i.i = icmp eq ptr %rebalance.2.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %__rb_erase_augmented.exit.i.i.i.i.if.end27.i.i.i_crit_edge, label %if.then.i.i.i.i

__rb_erase_augmented.exit.i.i.i.i.if.end27.i.i.i_crit_edge: ; preds = %__rb_erase_augmented.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27.i.i.i

if.then.i.i.i.i:                                  ; preds = %__rb_erase_augmented.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__rb_erase_color(ptr noundef nonnull %rebalance.2.i.i.i.i.i, ptr noundef nonnull @free_vmap_area_root, ptr noundef nonnull @free_vmap_area_rb_augment_cb_rotate) #16
  br label %if.end27.i.i.i

if.end27.i.i.i:                                   ; preds = %if.then.i.i.i.i, %__rb_erase_augmented.exit.i.i.i.i.if.end27.i.i.i_crit_edge
  %list.i.i.i = getelementptr inbounds %struct.vmap_area, ptr %va.addr.0.i.i, i32 0, i32 3
  %call.i.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i.i.i) #16
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end27.i.i.i.list_del.exit.i.i.i_crit_edge

if.end27.i.i.i.list_del.exit.i.i.i_crit_edge:     ; preds = %if.end27.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.end27.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i.i.i = getelementptr inbounds %struct.vmap_area, ptr %va.addr.0.i.i, i32 0, i32 3, i32 1
  %150 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %152 = ptrtoint ptr %list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %list.i.i.i, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %153, i32 0, i32 1
  %154 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %151, ptr %prev1.i.i.i.i.i.i, align 4
  %155 = ptrtoint ptr %151 to i32
  call void @__asan_store4_noabort(i32 %155)
  store volatile ptr %153, ptr %151, align 4
  br label %list_del.exit.i.i.i

list_del.exit.i.i.i:                              ; preds = %if.end.i.i.i.i.i, %if.end27.i.i.i.list_del.exit.i.i.i_crit_edge
  %156 = ptrtoint ptr %list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i.i.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.vmap_area, ptr %va.addr.0.i.i, i32 0, i32 3, i32 1
  %157 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i.i, align 4
  %158 = ptrtoint ptr %rb_node.i.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %51, ptr %rb_node.i.i.i, align 4
  br label %insert.thread115.i.i

insert.thread115.i.i:                             ; preds = %list_del.exit.i.i.i, %do.end.i69.i.i, %if.then23.i.i.insert.thread115.i.i_crit_edge
  %va_end27.i.i = getelementptr inbounds %struct.vmap_area, ptr %va.addr.0.i.i, i32 0, i32 1
  %159 = ptrtoint ptr %va_end27.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %va_end27.i.i, align 4
  %161 = ptrtoint ptr %va_end20.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %160, ptr %va_end20.i.i, align 4
  %162 = load ptr, ptr @vmap_area_cachep, align 4
  call void @kmem_cache_free(ptr noundef %162, ptr noundef %va.addr.0.i.i) #16
  br label %merge_or_add_vmap_area.exit.i

insert.i.i:                                       ; preds = %if.then15.i.i.insert.i.i_crit_edge, %if.end13.i.i.insert.i.i_crit_edge
  br i1 %merged.0.off0.i.i, label %insert.i.i.merge_or_add_vmap_area.exit.i_crit_edge, label %insert.i.i.if.then.i73.i.i_crit_edge

insert.i.i.if.then.i73.i.i_crit_edge:             ; preds = %insert.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i73.i.i

insert.i.i.merge_or_add_vmap_area.exit.i_crit_edge: ; preds = %insert.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %merge_or_add_vmap_area.exit.i

if.then.i73.i.i:                                  ; preds = %insert.i.i.if.then.i73.i.i_crit_edge, %get_va_next_sibling.exit.i.i.if.then.i73.i.i_crit_edge
  %va.addr.1113125.i.i = phi ptr [ %va.0, %get_va_next_sibling.exit.i.i.if.then.i73.i.i_crit_edge ], [ %va.addr.0.i.i, %insert.i.i.if.then.i73.i.i_crit_edge ]
  br i1 %cmp.i66.i.i, label %if.then.i73.i.i.if.end4.i.i.i_crit_edge, label %if.then3.i.i.i

if.then.i73.i.i.if.end4.i.i.i_crit_edge:          ; preds = %if.then.i73.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i.i.i

if.then3.i.i.i:                                   ; preds = %if.then.i73.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i = getelementptr i8, ptr %30, i32 16
  %163 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %prev.i.i.i, align 4
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %if.then3.i.i.i, %if.then.i73.i.i.if.end4.i.i.i_crit_edge, %for.body.if.end4.i.i.i_crit_edge
  %va.addr.1113126.i.i = phi ptr [ %va.addr.1113125.i.i, %if.then3.i.i.i ], [ %va.addr.1113125.i.i, %if.then.i73.i.i.if.end4.i.i.i_crit_edge ], [ %va.0, %for.body.if.end4.i.i.i_crit_edge ]
  %retval.0.i85.i.i = phi ptr [ %link.2.i.i.i, %if.then3.i.i.i ], [ %rb_right.i65.i.i, %if.then.i73.i.i.if.end4.i.i.i_crit_edge ], [ @free_vmap_area_root, %for.body.if.end4.i.i.i_crit_edge ]
  %parent.083.i.i = phi ptr [ %30, %if.then3.i.i.i ], [ %30, %if.then.i73.i.i.if.end4.i.i.i_crit_edge ], [ null, %for.body.if.end4.i.i.i_crit_edge ]
  %head.addr.0.i.i.i = phi ptr [ %164, %if.then3.i.i.i ], [ %list4.i.i.i, %if.then.i73.i.i.if.end4.i.i.i_crit_edge ], [ @free_vmap_area_list, %for.body.if.end4.i.i.i_crit_edge ]
  %rb_node.i74.i.i = getelementptr inbounds %struct.vmap_area, ptr %va.addr.1113126.i.i, i32 0, i32 2
  %165 = ptrtoint ptr %parent.083.i.i to i32
  %166 = ptrtoint ptr %rb_node.i74.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %165, ptr %rb_node.i74.i.i, align 4
  %rb_right.i.i.i.i = getelementptr inbounds %struct.vmap_area, ptr %va.addr.1113126.i.i, i32 0, i32 2, i32 1
  %167 = ptrtoint ptr %rb_right.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr null, ptr %rb_right.i.i.i.i, align 4
  %rb_left.i.i.i.i = getelementptr inbounds %struct.vmap_area, ptr %va.addr.1113126.i.i, i32 0, i32 2, i32 2
  %168 = ptrtoint ptr %rb_left.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr null, ptr %rb_left.i.i.i.i, align 4
  %169 = ptrtoint ptr %retval.0.i85.i.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %rb_node.i74.i.i, ptr %retval.0.i85.i.i, align 4
  call void @__rb_insert_augmented(ptr noundef %rb_node.i74.i.i, ptr noundef nonnull @free_vmap_area_root, ptr noundef nonnull @free_vmap_area_rb_augment_cb_rotate) #16
  %170 = getelementptr inbounds %struct.vmap_area, ptr %va.addr.1113126.i.i, i32 0, i32 4
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 0, ptr %170, align 4
  %list10.i.i.i = getelementptr inbounds %struct.vmap_area, ptr %va.addr.1113126.i.i, i32 0, i32 3
  %172 = ptrtoint ptr %head.addr.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %head.addr.0.i.i.i, align 4
  %call.i.i.i76.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list10.i.i.i, ptr noundef %head.addr.0.i.i.i, ptr noundef %173) #16
  br i1 %call.i.i.i76.i.i, label %if.end.i.i.i77.i.i, label %if.end4.i.i.i.merge_or_add_vmap_area.exit.i_crit_edge

if.end4.i.i.i.merge_or_add_vmap_area.exit.i_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %merge_or_add_vmap_area.exit.i

if.end.i.i.i77.i.i:                               ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %173, i32 0, i32 1
  %174 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %list10.i.i.i, ptr %prev1.i.i.i.i.i, align 4
  %175 = ptrtoint ptr %list10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %173, ptr %list10.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.vmap_area, ptr %va.addr.1113126.i.i, i32 0, i32 3, i32 1
  %176 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %head.addr.0.i.i.i, ptr %prev3.i.i.i.i.i, align 4
  %177 = ptrtoint ptr %head.addr.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store volatile ptr %list10.i.i.i, ptr %head.addr.0.i.i.i, align 4
  br label %merge_or_add_vmap_area.exit.i

merge_or_add_vmap_area.exit.i:                    ; preds = %if.end.i.i.i77.i.i, %if.end4.i.i.i.merge_or_add_vmap_area.exit.i_crit_edge, %insert.i.i.merge_or_add_vmap_area.exit.i_crit_edge, %insert.thread115.i.i
  %retval.0.i.i = phi ptr [ %va.addr.0.i.i, %insert.i.i.merge_or_add_vmap_area.exit.i_crit_edge ], [ %add.ptr19.i.i, %insert.thread115.i.i ], [ %va.addr.1113126.i.i, %if.end4.i.i.i.merge_or_add_vmap_area.exit.i_crit_edge ], [ %va.addr.1113126.i.i, %if.end.i.i.i77.i.i ]
  %tobool.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool.not.i, label %merge_or_add_vmap_area.exit.i.cleanup_crit_edge, label %if.then.i

merge_or_add_vmap_area.exit.i.cleanup_crit_edge:  ; preds = %merge_or_add_vmap_area.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then.i:                                        ; preds = %merge_or_add_vmap_area.exit.i
  %rb_node.i.i = getelementptr inbounds %struct.vmap_area, ptr %retval.0.i.i, i32 0, i32 2
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %cleanup.i.i.i.while.body.i.i.i_crit_edge, %if.then.i
  %rb.addr.08.i.i.i = phi ptr [ %200, %cleanup.i.i.i.while.body.i.i.i_crit_edge ], [ %rb_node.i.i, %if.then.i ]
  %add.ptr.i.i1.i = getelementptr i8, ptr %rb.addr.08.i.i.i, i32 -8
  %va_end.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i.i, i32 -4
  %178 = ptrtoint ptr %va_end.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %va_end.i.i.i.i.i, align 4
  %180 = ptrtoint ptr %add.ptr.i.i1.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %add.ptr.i.i1.i, align 4
  %sub.i.i.i.i.i = sub i32 %179, %181
  %rb_left.i.i.i2.i = getelementptr i8, ptr %rb.addr.08.i.i.i, i32 8
  %182 = ptrtoint ptr %rb_left.i.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %rb_left.i.i.i2.i, align 4
  %tobool.not.i.i.i3.i = icmp eq ptr %183, null
  br i1 %tobool.not.i.i.i3.i, label %while.body.i.i.i.if.end4.i.i.i.i_crit_edge, label %if.then.i.i.i4.i

while.body.i.i.i.if.end4.i.i.i.i_crit_edge:       ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i.i.i.i

if.then.i.i.i4.i:                                 ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %184 = getelementptr i8, ptr %183, i32 20
  %185 = ptrtoint ptr %184 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %184, align 4
  %187 = call i32 @llvm.umax.i32(i32 %186, i32 %sub.i.i.i.i.i) #16
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %if.then.i.i.i4.i, %while.body.i.i.i.if.end4.i.i.i.i_crit_edge
  %max.0.i.i.i.i = phi i32 [ %sub.i.i.i.i.i, %while.body.i.i.i.if.end4.i.i.i.i_crit_edge ], [ %187, %if.then.i.i.i4.i ]
  %rb_right.i.i.i5.i = getelementptr i8, ptr %rb.addr.08.i.i.i, i32 4
  %188 = ptrtoint ptr %rb_right.i.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %rb_right.i.i.i5.i, align 4
  %tobool6.not.i.i.i.i = icmp eq ptr %189, null
  br i1 %tobool6.not.i.i.i.i, label %if.end4.i.i.i.i.if.end16.i.i.i.i_crit_edge, label %if.then7.i.i.i.i

if.end4.i.i.i.i.if.end16.i.i.i.i_crit_edge:       ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16.i.i.i.i

if.then7.i.i.i.i:                                 ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %190 = getelementptr i8, ptr %189, i32 20
  %191 = ptrtoint ptr %190 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %190, align 4
  %193 = call i32 @llvm.umax.i32(i32 %192, i32 %max.0.i.i.i.i) #16
  br label %if.end16.i.i.i.i

if.end16.i.i.i.i:                                 ; preds = %if.then7.i.i.i.i, %if.end4.i.i.i.i.if.end16.i.i.i.i_crit_edge
  %max.1.i.i.i.i = phi i32 [ %max.0.i.i.i.i, %if.end4.i.i.i.i.if.end16.i.i.i.i_crit_edge ], [ %193, %if.then7.i.i.i.i ]
  %194 = getelementptr i8, ptr %rb.addr.08.i.i.i, i32 20
  %195 = ptrtoint ptr %194 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %194, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %196, i32 %max.1.i.i.i.i)
  %cmp18.i.i.i.i = icmp eq i32 %196, %max.1.i.i.i.i
  br i1 %cmp18.i.i.i.i, label %if.end16.i.i.i.i.if.end66_crit_edge, label %cleanup.i.i.i

if.end16.i.i.i.i.if.end66_crit_edge:              ; preds = %if.end16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end66

cleanup.i.i.i:                                    ; preds = %if.end16.i.i.i.i
  %197 = ptrtoint ptr %194 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %max.1.i.i.i.i, ptr %194, align 4
  %198 = ptrtoint ptr %rb.addr.08.i.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %rb.addr.08.i.i.i, align 4
  %and.i.i.i = and i32 %199, -4
  %200 = inttoptr i32 %and.i.i.i to ptr
  %cmp.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %cleanup.i.i.i.if.end66_crit_edge, label %cleanup.i.i.i.while.body.i.i.i_crit_edge

cleanup.i.i.i.while.body.i.i.i_crit_edge:         ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i.i.i

cleanup.i.i.i.if.end66_crit_edge:                 ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end66

if.end66:                                         ; preds = %cleanup.i.i.i.if.end66_crit_edge, %if.end16.i.i.i.i.if.end66_crit_edge
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @vmap_lazy_nr, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr nonnull @vmap_lazy_nr, i32 1, i32 3, i32 1) #16
  %201 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @vmap_lazy_nr, ptr nonnull @vmap_lazy_nr, i32 %shr, ptr nonnull elementtype(i32) @vmap_lazy_nr) #16, !srcloc !300
  %call.i.i110 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @vmap_lazy_nr, i32 noundef 4) #16
  %202 = load volatile i32, ptr @vmap_lazy_nr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %202, i32 %shl)
  %cmp74 = icmp ult i32 %202, %shl
  br i1 %cmp74, label %if.then75, label %if.end66.cleanup_crit_edge

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then75:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #18
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 1716, i32 noundef 1) #16
  %call77 = call i32 @__cond_resched_lock(ptr noundef nonnull @free_vmap_area_lock) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then75, %if.end66.cleanup_crit_edge, %merge_or_add_vmap_area.exit.i.cleanup_crit_edge, %find_va_links.exit.i.i.cleanup_crit_edge, %find_va_links.exit.thread.i.i
  %cmp56.not = icmp eq ptr %.pn127, %local_pure_list
  br i1 %cmp56.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end33.for.end_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @free_vmap_area_lock) #16
  br label %cleanup86

cleanup86:                                        ; preds = %for.end, %if.end.cleanup86_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %local_pure_list) #16
  ret i1 %cmp.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_erase(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_vmap_area_noflush(ptr noundef %va) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @vmap_area_lock) #16
  %rb_node.i = getelementptr inbounds %struct.vmap_area, ptr %va, i32 0, i32 2
  %0 = ptrtoint ptr %rb_node.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rb_node.i, align 4
  %2 = ptrtoint ptr %rb_node.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %2)
  %cmp.i = icmp eq i32 %1, %2
  br i1 %cmp.i, label %do.end.i, label %if.end22.critedge.i, !prof !247

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 962, i32 noundef 9, ptr noundef null) #16
  br label %unlink_va.exit

if.end22.critedge.i:                              ; preds = %entry
  tail call void @rb_erase(ptr noundef %rb_node.i, ptr noundef nonnull @vmap_area_root) #16
  %list.i = getelementptr inbounds %struct.vmap_area, ptr %va, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end22.critedge.i.list_del.exit.i_crit_edge

if.end22.critedge.i.list_del.exit.i_crit_edge:    ; preds = %if.end22.critedge.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end22.critedge.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i = getelementptr inbounds %struct.vmap_area, ptr %va, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end22.critedge.i.list_del.exit.i_crit_edge
  %9 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.vmap_area, ptr %va, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %rb_node.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %2, ptr %rb_node.i, align 4
  br label %unlink_va.exit

unlink_va.exit:                                   ; preds = %list_del.exit.i, %do.end.i
  tail call void @_raw_spin_unlock(ptr noundef nonnull @vmap_area_lock) #16
  %va_end = getelementptr inbounds %struct.vmap_area, ptr %va, i32 0, i32 1
  %12 = ptrtoint ptr %va_end to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %va_end, align 4
  %14 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %va, align 4
  %sub = sub i32 %13, %15
  %shr = lshr i32 %sub, 12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @vmap_lazy_nr, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !311
  tail call void @llvm.prefetch.p0(ptr nonnull @vmap_lazy_nr, i32 1, i32 3, i32 1) #16
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @vmap_lazy_nr, ptr nonnull @vmap_lazy_nr, i32 %shr, ptr nonnull elementtype(i32) @vmap_lazy_nr) #16, !srcloc !312
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %16, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !313
  tail call void @_raw_spin_lock(ptr noundef nonnull @purge_vmap_area_lock) #16
  %17 = load ptr, ptr @purge_vmap_area_root, align 4
  %tobool1.not.i.i = icmp eq ptr %17, null
  br i1 %tobool1.not.i.i, label %unlink_va.exit.if.end4.i.i_crit_edge, label %if.end6.i.i, !prof !247

unlink_va.exit.if.end4.i.i_crit_edge:             ; preds = %unlink_va.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i.i

if.end6.i.i:                                      ; preds = %unlink_va.exit
  %18 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %va, align 4
  %20 = ptrtoint ptr %va_end to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %va_end, align 4
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.cond50.i.i.do.body.i.i_crit_edge, %if.end6.i.i
  %22 = phi ptr [ %28, %do.cond50.i.i.do.body.i.i_crit_edge ], [ %17, %if.end6.i.i ]
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 -8
  %va_end.i.i = getelementptr i8, ptr %22, i32 -4
  %23 = ptrtoint ptr %va_end.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %va_end.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %24)
  %cmp.i.i = icmp ult i32 %19, %24
  %25 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %26)
  %cmp9.not.i.i = icmp ugt i32 %21, %26
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.else11.thread.i.i

land.lhs.true.i.i:                                ; preds = %do.body.i.i
  br i1 %cmp9.not.i.i, label %land.lhs.true.i.i.find_va_links.exit.thread.i_crit_edge, label %if.then10.i.i

land.lhs.true.i.i.find_va_links.exit.thread.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %find_va_links.exit.thread.i

if.then10.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %22, i32 0, i32 2
  br label %do.cond50.i.i

if.else11.thread.i.i:                             ; preds = %do.body.i.i
  br i1 %cmp9.not.i.i, label %if.then19.i.i, label %if.else11.thread.i.i.find_va_links.exit.thread.i_crit_edge

if.else11.thread.i.i.find_va_links.exit.thread.i_crit_edge: ; preds = %if.else11.thread.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %find_va_links.exit.thread.i

if.then19.i.i:                                    ; preds = %if.else11.thread.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %22, i32 0, i32 1
  br label %do.cond50.i.i

find_va_links.exit.thread.i:                      ; preds = %if.else11.thread.i.i.find_va_links.exit.thread.i_crit_edge, %land.lhs.true.i.i.find_va_links.exit.thread.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 892, i32 noundef 9, ptr noundef nonnull @.str.26, i32 noundef %19, i32 noundef %21, i32 noundef %26, i32 noundef %24) #16
  br label %merge_or_add_vmap_area.exit

do.cond50.i.i:                                    ; preds = %if.then19.i.i, %if.then10.i.i
  %link.2.i.i = phi ptr [ %rb_left.i.i, %if.then10.i.i ], [ %rb_right.i.i, %if.then19.i.i ]
  %27 = ptrtoint ptr %link.2.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %link.2.i.i, align 4
  %tobool51.not.i.i = icmp eq ptr %28, null
  br i1 %tobool51.not.i.i, label %find_va_links.exit.i, label %do.cond50.i.i.do.body.i.i_crit_edge

do.cond50.i.i.do.body.i.i_crit_edge:              ; preds = %do.cond50.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i

find_va_links.exit.i:                             ; preds = %do.cond50.i.i
  %tobool.not.i = icmp eq ptr %link.2.i.i, null
  br i1 %tobool.not.i, label %find_va_links.exit.i.merge_or_add_vmap_area.exit_crit_edge, label %if.end.i.i

find_va_links.exit.i.merge_or_add_vmap_area.exit_crit_edge: ; preds = %find_va_links.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %merge_or_add_vmap_area.exit

if.end.i.i:                                       ; preds = %find_va_links.exit.i
  %list4.i.i = getelementptr i8, ptr %22, i32 12
  %rb_right.i65.i = getelementptr inbounds %struct.rb_node, ptr %22, i32 0, i32 1
  %cmp.i66.i = icmp eq ptr %rb_right.i65.i, %link.2.i.i
  br i1 %cmp.i66.i, label %cond.true.i.i, label %if.end.i.i.get_va_next_sibling.exit.i_crit_edge

if.end.i.i.get_va_next_sibling.exit.i_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_va_next_sibling.exit.i

cond.true.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %29 = ptrtoint ptr %list4.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %list4.i.i, align 4
  br label %get_va_next_sibling.exit.i

get_va_next_sibling.exit.i:                       ; preds = %cond.true.i.i, %if.end.i.i.get_va_next_sibling.exit.i_crit_edge
  %retval.0.i67.i = phi ptr [ %30, %cond.true.i.i ], [ %list4.i.i, %if.end.i.i.get_va_next_sibling.exit.i_crit_edge ]
  %cmp.i7 = icmp eq ptr %retval.0.i67.i, null
  br i1 %cmp.i7, label %get_va_next_sibling.exit.i.if.then.i73.i_crit_edge, label %if.end5.i, !prof !247

get_va_next_sibling.exit.i.if.then.i73.i_crit_edge: ; preds = %get_va_next_sibling.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i73.i

if.end5.i:                                        ; preds = %get_va_next_sibling.exit.i
  %cmp6.not.i = icmp eq ptr %retval.0.i67.i, @purge_vmap_area_list
  br i1 %cmp6.not.i, label %if.end5.i.if.end13.i_crit_edge, label %if.then7.i

if.end5.i.if.end13.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13.i

if.then7.i:                                       ; preds = %if.end5.i
  %add.ptr.i = getelementptr i8, ptr %retval.0.i67.i, i32 -20
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %21)
  %cmp8.i = icmp eq i32 %32, %21
  br i1 %cmp8.i, label %if.then9.i, label %if.then7.i.if.end13.i_crit_edge

if.then7.i.if.end13.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13.i

if.then9.i:                                       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #18
  %33 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %19, ptr %add.ptr.i, align 4
  %34 = load ptr, ptr @vmap_area_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %34, ptr noundef %va) #16
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then9.i, %if.then7.i.if.end13.i_crit_edge, %if.end5.i.if.end13.i_crit_edge
  %merged.0.off0.i = phi i1 [ true, %if.then9.i ], [ false, %if.then7.i.if.end13.i_crit_edge ], [ false, %if.end5.i.if.end13.i_crit_edge ]
  %va.addr.0.i = phi ptr [ %add.ptr.i, %if.then9.i ], [ %va, %if.then7.i.if.end13.i_crit_edge ], [ %va, %if.end5.i.if.end13.i_crit_edge ]
  %prev.i = getelementptr inbounds %struct.list_head, ptr %retval.0.i67.i, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev.i, align 4
  %cmp14.not.i = icmp eq ptr %36, @purge_vmap_area_list
  br i1 %cmp14.not.i, label %if.end13.i.insert.i_crit_edge, label %if.then15.i

if.end13.i.insert.i_crit_edge:                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %insert.i

if.then15.i:                                      ; preds = %if.end13.i
  %va_end20.i = getelementptr i8, ptr %36, i32 -16
  %37 = ptrtoint ptr %va_end20.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %va_end20.i, align 4
  %39 = ptrtoint ptr %va.addr.0.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %va.addr.0.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp22.i = icmp eq i32 %38, %40
  br i1 %cmp22.i, label %if.then23.i, label %if.then15.i.insert.i_crit_edge

if.then15.i.insert.i_crit_edge:                   ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %insert.i

if.then23.i:                                      ; preds = %if.then15.i
  br i1 %merged.0.off0.i, label %if.then25.i, label %if.then23.i.insert.thread115.i_crit_edge

if.then23.i.insert.thread115.i_crit_edge:         ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %insert.thread115.i

if.then25.i:                                      ; preds = %if.then23.i
  %rb_node.i.i = getelementptr inbounds %struct.vmap_area, ptr %va.addr.0.i, i32 0, i32 2
  %41 = ptrtoint ptr %rb_node.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rb_node.i.i, align 4
  %43 = ptrtoint ptr %rb_node.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %43)
  %cmp.i68.i = icmp eq i32 %42, %43
  br i1 %cmp.i68.i, label %do.end.i69.i, label %if.end22.critedge.i.i, !prof !247

do.end.i69.i:                                     ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 962, i32 noundef 9, ptr noundef null) #16
  br label %insert.thread115.i

if.end22.critedge.i.i:                            ; preds = %if.then25.i
  tail call void @rb_erase(ptr noundef %rb_node.i.i, ptr noundef nonnull @purge_vmap_area_root) #16
  %list.i.i = getelementptr inbounds %struct.vmap_area, ptr %va.addr.0.i, i32 0, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i.i) #16
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end22.critedge.i.i.list_del.exit.i.i_crit_edge

if.end22.critedge.i.i.list_del.exit.i.i_crit_edge: ; preds = %if.end22.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end22.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i.i = getelementptr inbounds %struct.vmap_area, ptr %va.addr.0.i, i32 0, i32 3, i32 1
  %44 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev.i.i.i.i, align 4
  %46 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %list.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev1.i.i.i.i.i, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %47, ptr %45, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %if.end22.critedge.i.i.list_del.exit.i.i_crit_edge
  %50 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i.i, align 4
  %prev.i.i.i8 = getelementptr inbounds %struct.vmap_area, ptr %va.addr.0.i, i32 0, i32 3, i32 1
  %51 = ptrtoint ptr %prev.i.i.i8 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i8, align 4
  %52 = ptrtoint ptr %rb_node.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %43, ptr %rb_node.i.i, align 4
  br label %insert.thread115.i

insert.thread115.i:                               ; preds = %list_del.exit.i.i, %do.end.i69.i, %if.then23.i.insert.thread115.i_crit_edge
  %va_end27.i = getelementptr inbounds %struct.vmap_area, ptr %va.addr.0.i, i32 0, i32 1
  %53 = ptrtoint ptr %va_end27.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %va_end27.i, align 4
  %55 = ptrtoint ptr %va_end20.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %va_end20.i, align 4
  %56 = load ptr, ptr @vmap_area_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %56, ptr noundef %va.addr.0.i) #16
  br label %merge_or_add_vmap_area.exit

insert.i:                                         ; preds = %if.then15.i.insert.i_crit_edge, %if.end13.i.insert.i_crit_edge
  br i1 %merged.0.off0.i, label %insert.i.merge_or_add_vmap_area.exit_crit_edge, label %insert.i.if.then.i73.i_crit_edge

insert.i.if.then.i73.i_crit_edge:                 ; preds = %insert.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i73.i

insert.i.merge_or_add_vmap_area.exit_crit_edge:   ; preds = %insert.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %merge_or_add_vmap_area.exit

if.then.i73.i:                                    ; preds = %insert.i.if.then.i73.i_crit_edge, %get_va_next_sibling.exit.i.if.then.i73.i_crit_edge
  %va.addr.1113125.i = phi ptr [ %va, %get_va_next_sibling.exit.i.if.then.i73.i_crit_edge ], [ %va.addr.0.i, %insert.i.if.then.i73.i_crit_edge ]
  br i1 %cmp.i66.i, label %if.then.i73.i.if.end4.i.i_crit_edge, label %if.then3.i.i

if.then.i73.i.if.end4.i.i_crit_edge:              ; preds = %if.then.i73.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i.i

if.then3.i.i:                                     ; preds = %if.then.i73.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i9 = getelementptr i8, ptr %22, i32 16
  %57 = ptrtoint ptr %prev.i.i9 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev.i.i9, align 4
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.then3.i.i, %if.then.i73.i.if.end4.i.i_crit_edge, %unlink_va.exit.if.end4.i.i_crit_edge
  %va.addr.1113126.i = phi ptr [ %va.addr.1113125.i, %if.then3.i.i ], [ %va.addr.1113125.i, %if.then.i73.i.if.end4.i.i_crit_edge ], [ %va, %unlink_va.exit.if.end4.i.i_crit_edge ]
  %retval.0.i85.i = phi ptr [ %link.2.i.i, %if.then3.i.i ], [ %rb_right.i65.i, %if.then.i73.i.if.end4.i.i_crit_edge ], [ @purge_vmap_area_root, %unlink_va.exit.if.end4.i.i_crit_edge ]
  %parent.083.i = phi ptr [ %22, %if.then3.i.i ], [ %22, %if.then.i73.i.if.end4.i.i_crit_edge ], [ null, %unlink_va.exit.if.end4.i.i_crit_edge ]
  %head.addr.0.i.i = phi ptr [ %58, %if.then3.i.i ], [ %list4.i.i, %if.then.i73.i.if.end4.i.i_crit_edge ], [ @purge_vmap_area_list, %unlink_va.exit.if.end4.i.i_crit_edge ]
  %rb_node.i74.i = getelementptr inbounds %struct.vmap_area, ptr %va.addr.1113126.i, i32 0, i32 2
  %59 = ptrtoint ptr %parent.083.i to i32
  %60 = ptrtoint ptr %rb_node.i74.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %rb_node.i74.i, align 4
  %rb_right.i.i.i = getelementptr inbounds %struct.vmap_area, ptr %va.addr.1113126.i, i32 0, i32 2, i32 1
  %61 = ptrtoint ptr %rb_right.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %rb_right.i.i.i, align 4
  %rb_left.i.i.i = getelementptr inbounds %struct.vmap_area, ptr %va.addr.1113126.i, i32 0, i32 2, i32 2
  %62 = ptrtoint ptr %rb_left.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %rb_left.i.i.i, align 4
  %63 = ptrtoint ptr %retval.0.i85.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %rb_node.i74.i, ptr %retval.0.i85.i, align 4
  tail call void @rb_insert_color(ptr noundef %rb_node.i74.i, ptr noundef nonnull @purge_vmap_area_root) #16
  %list10.i.i = getelementptr inbounds %struct.vmap_area, ptr %va.addr.1113126.i, i32 0, i32 3
  %64 = ptrtoint ptr %head.addr.0.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %head.addr.0.i.i, align 4
  %call.i.i.i76.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list10.i.i, ptr noundef %head.addr.0.i.i, ptr noundef %65) #16
  br i1 %call.i.i.i76.i, label %if.end.i.i.i77.i, label %if.end4.i.i.merge_or_add_vmap_area.exit_crit_edge

if.end4.i.i.merge_or_add_vmap_area.exit_crit_edge: ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %merge_or_add_vmap_area.exit

if.end.i.i.i77.i:                                 ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev1.i.i.i.i10 = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %prev1.i.i.i.i10 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %list10.i.i, ptr %prev1.i.i.i.i10, align 4
  %67 = ptrtoint ptr %list10.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %65, ptr %list10.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.vmap_area, ptr %va.addr.1113126.i, i32 0, i32 3, i32 1
  %68 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %head.addr.0.i.i, ptr %prev3.i.i.i.i, align 4
  %69 = ptrtoint ptr %head.addr.0.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %list10.i.i, ptr %head.addr.0.i.i, align 4
  br label %merge_or_add_vmap_area.exit

merge_or_add_vmap_area.exit:                      ; preds = %if.end.i.i.i77.i, %if.end4.i.i.merge_or_add_vmap_area.exit_crit_edge, %insert.i.merge_or_add_vmap_area.exit_crit_edge, %insert.thread115.i, %find_va_links.exit.i.merge_or_add_vmap_area.exit_crit_edge, %find_va_links.exit.thread.i
  tail call void @_raw_spin_unlock(ptr noundef nonnull @purge_vmap_area_lock) #16
  %call.i.i.i.i11 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %70 = load volatile i32, ptr @__num_online_cpus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.not.i.i = icmp eq i32 %70, 0
  %71 = tail call i32 @llvm.ctlz.i32(i32 %70, i1 true) #16, !range !265
  %.neg.i = mul nsw i32 %71, -8192
  %sub.i.op.i = add nsw i32 %.neg.i, 262144
  %mul.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.op.i
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult.i.i.i.i, i32 %mul.i)
  %cmp = icmp ugt i32 %asmresult.i.i.i.i, %mul.i
  br i1 %cmp, label %if.then, label %merge_or_add_vmap_area.exit.if.end_crit_edge, !prof !247

merge_or_add_vmap_area.exit.if.end_crit_edge:     ; preds = %merge_or_add_vmap_area.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %merge_or_add_vmap_area.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @try_purge_vmap_area_lazy()
  br label %if.end

if.end:                                           ; preds = %if.then, %merge_or_add_vmap_area.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @try_purge_vmap_area_lazy() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mutex_trylock(ptr noundef nonnull @vmap_purge_lock) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call1 = tail call fastcc zeroext i1 @__purge_vmap_area_lazy(i32 noundef -1, i32 noundef 0)
  tail call void @mutex_unlock(ptr noundef nonnull @vmap_purge_lock) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rb_erase_color(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @free_vmap_area_rb_augment_cb_rotate(ptr nocapture noundef %rb_old, ptr nocapture noundef writeonly %rb_new) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rb_old, i32 -8
  %0 = getelementptr i8, ptr %rb_old, i32 20
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  %3 = getelementptr i8, ptr %rb_new, i32 20
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %2, ptr %3, align 4
  %va_end.i.i = getelementptr i8, ptr %rb_old, i32 -4
  %5 = ptrtoint ptr %va_end.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %va_end.i.i, align 4
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr, align 4
  %sub.i.i = sub i32 %6, %8
  %rb_left.i = getelementptr i8, ptr %rb_old, i32 8
  %9 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rb_left.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %entry.if.end4.i_crit_edge, label %if.then.i

entry.if.end4.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %11 = getelementptr i8, ptr %10, i32 20
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %14 = tail call i32 @llvm.umax.i32(i32 %13, i32 %sub.i.i) #16
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then.i, %entry.if.end4.i_crit_edge
  %max.0.i = phi i32 [ %sub.i.i, %entry.if.end4.i_crit_edge ], [ %14, %if.then.i ]
  %rb_right.i = getelementptr i8, ptr %rb_old, i32 4
  %15 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rb_right.i, align 4
  %tobool6.not.i = icmp eq ptr %16, null
  br i1 %tobool6.not.i, label %if.end4.i.free_vmap_area_rb_augment_cb_compute_max.exit_crit_edge, label %if.then7.i

if.end4.i.free_vmap_area_rb_augment_cb_compute_max.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %free_vmap_area_rb_augment_cb_compute_max.exit

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  %17 = getelementptr i8, ptr %16, i32 20
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %20 = tail call i32 @llvm.umax.i32(i32 %19, i32 %max.0.i) #16
  br label %free_vmap_area_rb_augment_cb_compute_max.exit

free_vmap_area_rb_augment_cb_compute_max.exit:    ; preds = %if.then7.i, %if.end4.i.free_vmap_area_rb_augment_cb_compute_max.exit_crit_edge
  %max.1.i = phi i32 [ %max.0.i, %if.end4.i.free_vmap_area_rb_augment_cb_compute_max.exit_crit_edge ], [ %20, %if.then7.i ]
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %max.1.i, ptr %0, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rb_insert_augmented(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xa_insert(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmemleak_scan_area(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3 section ".ref.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__printk_ratelimit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @insert_vmap_area_augment(ptr noundef %va, ptr noundef %from) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %from, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %va, align 4
  %va_end1275.i = getelementptr inbounds %struct.vmap_area, ptr %va, i32 0, i32 1
  %2 = ptrtoint ptr %va_end1275.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %va_end1275.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond50.i.do.body.i_crit_edge, %if.then
  %link.1.i.sroa.speculated = phi ptr [ %from, %if.then ], [ %9, %do.cond50.i.do.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %link.1.i.sroa.speculated, i32 -8
  %va_end.i = getelementptr i8, ptr %link.1.i.sroa.speculated, i32 -4
  %4 = ptrtoint ptr %va_end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %va_end.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %5)
  %cmp.i = icmp ult i32 %1, %5
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %7)
  %cmp9.not.i = icmp ugt i32 %3, %7
  br i1 %cmp.i, label %land.lhs.true.i, label %if.else11.thread.i

land.lhs.true.i:                                  ; preds = %do.body.i
  br i1 %cmp9.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %if.then10.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

if.then10.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %link.1.i.sroa.speculated, i32 0, i32 2
  br label %do.cond50.i

if.else11.thread.i:                               ; preds = %do.body.i
  br i1 %cmp9.not.i, label %if.then19.i, label %if.else11.thread.i.do.end.i_crit_edge

if.else11.thread.i.do.end.i_crit_edge:            ; preds = %if.else11.thread.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

if.then19.i:                                      ; preds = %if.else11.thread.i
  call void @__sanitizer_cov_trace_pc() #18
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %link.1.i.sroa.speculated, i32 0, i32 1
  br label %do.cond50.i

do.end.i:                                         ; preds = %if.else11.thread.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 892, i32 noundef 9, ptr noundef nonnull @.str.26, i32 noundef %1, i32 noundef %3, i32 noundef %7, i32 noundef %5) #16
  br label %if.end4

do.cond50.i:                                      ; preds = %if.then19.i, %if.then10.i
  %link.2.i = phi ptr [ %rb_left.i, %if.then10.i ], [ %rb_right.i, %if.then19.i ]
  %8 = ptrtoint ptr %link.2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %link.2.i, align 4
  %tobool51.not.i = icmp eq ptr %9, null
  br i1 %tobool51.not.i, label %do.cond50.i.if.end_crit_edge, label %do.cond50.i.do.body.i_crit_edge

do.cond50.i.do.body.i_crit_edge:                  ; preds = %do.cond50.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i

do.cond50.i.if.end_crit_edge:                     ; preds = %do.cond50.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = load ptr, ptr @free_vmap_area_root, align 4
  %tobool1.not.i = icmp eq ptr %10, null
  br i1 %tobool1.not.i, label %if.else.if.end4.i_crit_edge, label %if.end6.i, !prof !247

if.else.if.end4.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i

if.end6.i:                                        ; preds = %if.else
  %11 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %va, align 4
  %va_end1275.i2 = getelementptr inbounds %struct.vmap_area, ptr %va, i32 0, i32 1
  %13 = ptrtoint ptr %va_end1275.i2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %va_end1275.i2, align 4
  br label %do.body.i8

do.body.i8:                                       ; preds = %do.cond50.i19.do.body.i8_crit_edge, %if.end6.i
  %link.1.i3 = phi ptr [ @free_vmap_area_root, %if.end6.i ], [ %link.2.i17, %do.cond50.i19.do.body.i8_crit_edge ]
  %15 = ptrtoint ptr %link.1.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %link.1.i3, align 4
  %add.ptr.i4 = getelementptr i8, ptr %16, i32 -8
  %va_end.i5 = getelementptr i8, ptr %16, i32 -4
  %17 = ptrtoint ptr %va_end.i5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %va_end.i5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %18)
  %cmp.i6 = icmp ult i32 %12, %18
  %19 = ptrtoint ptr %add.ptr.i4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr.i4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %20)
  %cmp9.not.i7 = icmp ugt i32 %14, %20
  br i1 %cmp.i6, label %land.lhs.true.i9, label %if.else11.thread.i13

land.lhs.true.i9:                                 ; preds = %do.body.i8
  br i1 %cmp9.not.i7, label %land.lhs.true.i9.do.end.i16_crit_edge, label %if.then10.i11

land.lhs.true.i9.do.end.i16_crit_edge:            ; preds = %land.lhs.true.i9
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i16

if.then10.i11:                                    ; preds = %land.lhs.true.i9
  call void @__sanitizer_cov_trace_pc() #18
  %rb_left.i10 = getelementptr inbounds %struct.rb_node, ptr %16, i32 0, i32 2
  br label %do.cond50.i19

if.else11.thread.i13:                             ; preds = %do.body.i8
  br i1 %cmp9.not.i7, label %if.then19.i15, label %if.else11.thread.i13.do.end.i16_crit_edge

if.else11.thread.i13.do.end.i16_crit_edge:        ; preds = %if.else11.thread.i13
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i16

if.then19.i15:                                    ; preds = %if.else11.thread.i13
  call void @__sanitizer_cov_trace_pc() #18
  %rb_right.i14 = getelementptr inbounds %struct.rb_node, ptr %16, i32 0, i32 1
  br label %do.cond50.i19

do.end.i16:                                       ; preds = %if.else11.thread.i13.do.end.i16_crit_edge, %land.lhs.true.i9.do.end.i16_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 892, i32 noundef 9, ptr noundef nonnull @.str.26, i32 noundef %12, i32 noundef %14, i32 noundef %20, i32 noundef %18) #16
  br label %if.end4

do.cond50.i19:                                    ; preds = %if.then19.i15, %if.then10.i11
  %link.2.i17 = phi ptr [ %rb_left.i10, %if.then10.i11 ], [ %rb_right.i14, %if.then19.i15 ]
  %21 = ptrtoint ptr %link.2.i17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %link.2.i17, align 4
  %tobool51.not.i18 = icmp eq ptr %22, null
  br i1 %tobool51.not.i18, label %do.cond50.i19.if.end_crit_edge, label %do.cond50.i19.do.body.i8_crit_edge

do.cond50.i19.do.body.i8_crit_edge:               ; preds = %do.cond50.i19
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i8

do.cond50.i19.if.end_crit_edge:                   ; preds = %do.cond50.i19
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end:                                           ; preds = %do.cond50.i19.if.end_crit_edge, %do.cond50.i.if.end_crit_edge
  %parent.2 = phi ptr [ %16, %do.cond50.i19.if.end_crit_edge ], [ %link.1.i.sroa.speculated, %do.cond50.i.if.end_crit_edge ]
  %link.0 = phi ptr [ %link.2.i17, %do.cond50.i19.if.end_crit_edge ], [ %link.2.i, %do.cond50.i.if.end_crit_edge ]
  %tobool2.not = icmp eq ptr %link.0, null
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

if.then3:                                         ; preds = %if.end
  %tobool.not.i = icmp eq ptr %parent.2, null
  br i1 %tobool.not.i, label %if.then3.if.end4.i_crit_edge, label %if.then.i, !prof !247

if.then3.if.end4.i_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i

if.then.i:                                        ; preds = %if.then3
  %list.i = getelementptr i8, ptr %parent.2, i32 12
  %rb_right.i23 = getelementptr inbounds %struct.rb_node, ptr %parent.2, i32 0, i32 1
  %cmp.not.i = icmp eq ptr %rb_right.i23, %link.0
  br i1 %cmp.not.i, label %if.then.i.if.end4.i_crit_edge, label %if.then3.i

if.then.i.if.end4.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i = getelementptr i8, ptr %parent.2, i32 16
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.then.i.if.end4.i_crit_edge, %if.then3.if.end4.i_crit_edge, %if.else.if.end4.i_crit_edge
  %link.029 = phi ptr [ %link.0, %if.then3.i ], [ %link.0, %if.then.i.if.end4.i_crit_edge ], [ %link.0, %if.then3.if.end4.i_crit_edge ], [ @free_vmap_area_root, %if.else.if.end4.i_crit_edge ]
  %parent.228 = phi ptr [ %parent.2, %if.then3.i ], [ %parent.2, %if.then.i.if.end4.i_crit_edge ], [ null, %if.then3.if.end4.i_crit_edge ], [ null, %if.else.if.end4.i_crit_edge ]
  %head.addr.0.i = phi ptr [ %24, %if.then3.i ], [ %list.i, %if.then.i.if.end4.i_crit_edge ], [ @free_vmap_area_list, %if.then3.if.end4.i_crit_edge ], [ @free_vmap_area_list, %if.else.if.end4.i_crit_edge ]
  %rb_node.i = getelementptr inbounds %struct.vmap_area, ptr %va, i32 0, i32 2
  %25 = ptrtoint ptr %parent.228 to i32
  %26 = ptrtoint ptr %rb_node.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %rb_node.i, align 4
  %rb_right.i.i = getelementptr inbounds %struct.vmap_area, ptr %va, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.vmap_area, ptr %va, i32 0, i32 2, i32 2
  %28 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %rb_left.i.i, align 4
  %29 = ptrtoint ptr %link.029 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %rb_node.i, ptr %link.029, align 4
  tail call void @__rb_insert_augmented(ptr noundef %rb_node.i, ptr noundef nonnull @free_vmap_area_root, ptr noundef nonnull @free_vmap_area_rb_augment_cb_rotate) #16
  %30 = getelementptr inbounds %struct.vmap_area, ptr %va, i32 0, i32 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %30, align 4
  %list10.i = getelementptr inbounds %struct.vmap_area, ptr %va, i32 0, i32 3
  %32 = ptrtoint ptr %head.addr.0.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %head.addr.0.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list10.i, ptr noundef %head.addr.0.i, ptr noundef %33) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end4.i.while.body.i.i.preheader_crit_edge

if.end4.i.while.body.i.i.preheader_crit_edge:     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i.i.preheader

if.end.i.i.i:                                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %list10.i, ptr %prev1.i.i.i, align 4
  %35 = ptrtoint ptr %list10.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %33, ptr %list10.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.vmap_area, ptr %va, i32 0, i32 3, i32 1
  %36 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %head.addr.0.i, ptr %prev3.i.i.i, align 4
  %37 = ptrtoint ptr %head.addr.0.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %list10.i, ptr %head.addr.0.i, align 4
  br label %while.body.i.i.preheader

while.body.i.i.preheader:                         ; preds = %if.end.i.i.i, %if.end4.i.while.body.i.i.preheader_crit_edge
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %cleanup.i.i.while.body.i.i_crit_edge, %while.body.i.i.preheader
  %rb.addr.08.i.i = phi ptr [ %60, %cleanup.i.i.while.body.i.i_crit_edge ], [ %rb_node.i, %while.body.i.i.preheader ]
  %add.ptr.i.i = getelementptr i8, ptr %rb.addr.08.i.i, i32 -8
  %va_end.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i, i32 -4
  %38 = ptrtoint ptr %va_end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %va_end.i.i.i.i, align 4
  %40 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr.i.i, align 4
  %sub.i.i.i.i = sub i32 %39, %41
  %rb_left.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i, i32 8
  %42 = ptrtoint ptr %rb_left.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rb_left.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %43, null
  br i1 %tobool.not.i.i.i, label %while.body.i.i.if.end4.i.i.i_crit_edge, label %if.then.i.i.i

while.body.i.i.if.end4.i.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i.i.i

if.then.i.i.i:                                    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %44 = getelementptr i8, ptr %43, i32 20
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 4
  %47 = tail call i32 @llvm.umax.i32(i32 %46, i32 %sub.i.i.i.i) #16
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %if.then.i.i.i, %while.body.i.i.if.end4.i.i.i_crit_edge
  %max.0.i.i.i = phi i32 [ %sub.i.i.i.i, %while.body.i.i.if.end4.i.i.i_crit_edge ], [ %47, %if.then.i.i.i ]
  %rb_right.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i, i32 4
  %48 = ptrtoint ptr %rb_right.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rb_right.i.i.i, align 4
  %tobool6.not.i.i.i = icmp eq ptr %49, null
  br i1 %tobool6.not.i.i.i, label %if.end4.i.i.i.if.end16.i.i.i_crit_edge, label %if.then7.i.i.i

if.end4.i.i.i.if.end16.i.i.i_crit_edge:           ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16.i.i.i

if.then7.i.i.i:                                   ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %50 = getelementptr i8, ptr %49, i32 20
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  %53 = tail call i32 @llvm.umax.i32(i32 %52, i32 %max.0.i.i.i) #16
  br label %if.end16.i.i.i

if.end16.i.i.i:                                   ; preds = %if.then7.i.i.i, %if.end4.i.i.i.if.end16.i.i.i_crit_edge
  %max.1.i.i.i = phi i32 [ %max.0.i.i.i, %if.end4.i.i.i.if.end16.i.i.i_crit_edge ], [ %53, %if.then7.i.i.i ]
  %54 = getelementptr i8, ptr %rb.addr.08.i.i, i32 20
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %max.1.i.i.i)
  %cmp18.i.i.i = icmp eq i32 %56, %max.1.i.i.i
  br i1 %cmp18.i.i.i, label %if.end16.i.i.i.if.end4_crit_edge, label %cleanup.i.i

if.end16.i.i.i.if.end4_crit_edge:                 ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

cleanup.i.i:                                      ; preds = %if.end16.i.i.i
  %57 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %max.1.i.i.i, ptr %54, align 4
  %58 = ptrtoint ptr %rb.addr.08.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rb.addr.08.i.i, align 4
  %and.i.i = and i32 %59, -4
  %60 = inttoptr i32 %and.i.i to ptr
  %cmp.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.not.i.i, label %cleanup.i.i.if.end4_crit_edge, label %cleanup.i.i.while.body.i.i_crit_edge

cleanup.i.i.while.body.i.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i.i

cleanup.i.i.if.end4_crit_edge:                    ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

if.end4:                                          ; preds = %cleanup.i.i.if.end4_crit_edge, %if.end16.i.i.i.if.end4_crit_edge, %if.end.if.end4_crit_edge, %do.end.i16, %do.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @llist_add_batch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_check_no_obj_freed(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mod_memcg_page_state(ptr noundef %page, i32 noundef %val) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @memory_cgrp_subsys_enabled_key, i32 1), ptr blockaddress(@mod_memcg_page_state, %cleanup)) #16
          to label %if.end [label %cleanup], !srcloc !314

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !235) #16
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !258
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 696, ptr noundef nonnull @.str.20) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %4 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !245

if.then.i.i:                                      ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i = add i32 %6, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  %7 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i1 = phi i32 [ %sub.i.i, %if.then.i.i ], [ %7, %if.end.i.i ]
  %8 = inttoptr i32 %retval.0.i.i1 to ptr
  %9 = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %and.i.i.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body7.i.i.i, label %if.then.i.i.i, !prof !245

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @dump_page(ptr noundef %8, ptr noundef nonnull @.str.34) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/memcontrol.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 537, 0\0A.popsection", ""() #16, !srcloc !315
  unreachable

do.body7.i.i.i:                                   ; preds = %_compound_head.exit.i
  %memcg_data.i.i.i = getelementptr inbounds %struct.anon.81, ptr %8, i32 0, i32 7
  %12 = ptrtoint ptr %memcg_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %memcg_data.i.i.i, align 4
  %and.i.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool8.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool8.not.i.i.i, label %folio_memcg_kmem.exit.i.i, label %if.then15.i.i.i, !prof !245

if.then15.i.i.i:                                  ; preds = %do.body7.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @dump_page(ptr noundef %8, ptr noundef nonnull @.str.35) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/memcontrol.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 538, 0\0A.popsection", ""() #16, !srcloc !316
  unreachable

folio_memcg_kmem.exit.i.i:                        ; preds = %do.body7.i.i.i
  %and23.i.i.i = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i.i.i)
  %tobool24.i.not.i.i = icmp eq i32 %and23.i.i.i, 0
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %9, align 4
  %and.i.i.i.i9.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i9.i.i)
  %tobool.not.i.i.i10.i.i = icmp eq i32 %and.i.i.i.i9.i.i, 0
  br i1 %tobool24.i.not.i.i, label %if.end.i3.i, label %if.then.i2.i

if.then.i2.i:                                     ; preds = %folio_memcg_kmem.exit.i.i
  br i1 %tobool.not.i.i.i10.i.i, label %folio_test_slab.exit.i.i.i, label %if.then.i.i.i.i.i, !prof !245

if.then.i.i.i.i.i:                                ; preds = %if.then.i2.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @dump_page(ptr noundef %8, ptr noundef nonnull @.str.39) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #16, !srcloc !317
  unreachable

folio_test_slab.exit.i.i.i:                       ; preds = %if.then.i2.i
  %16 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %8, align 4
  %18 = and i32 %17, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.i.not.i.i.i = icmp eq i32 %18, 0
  br i1 %tobool.i.not.i.i.i, label %__folio_objcg.exit.i.i, label %if.then.i6.i.i, !prof !245

if.then.i6.i.i:                                   ; preds = %folio_test_slab.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @dump_page(ptr noundef %8, ptr noundef nonnull @.str.36) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/memcontrol.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 417, 0\0A.popsection", ""() #16, !srcloc !318
  unreachable

__folio_objcg.exit.i.i:                           ; preds = %folio_test_slab.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %and48.i.i.i = and i32 %13, -4
  %19 = inttoptr i32 %and48.i.i.i to ptr
  %memcg.i.i.i = getelementptr inbounds %struct.obj_cgroup, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %memcg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %memcg.i.i.i, align 4
  br label %page_memcg.exit

if.end.i3.i:                                      ; preds = %folio_memcg_kmem.exit.i.i
  br i1 %tobool.not.i.i.i10.i.i, label %folio_test_slab.exit.i13.i.i, label %if.then.i.i.i11.i.i, !prof !245

if.then.i.i.i11.i.i:                              ; preds = %if.end.i3.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @dump_page(ptr noundef %8, ptr noundef nonnull @.str.39) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #16, !srcloc !317
  unreachable

folio_test_slab.exit.i13.i.i:                     ; preds = %if.end.i3.i
  %22 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %8, align 4
  %24 = and i32 %23, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.i.not.i12.i.i = icmp eq i32 %24, 0
  br i1 %tobool.i.not.i12.i.i, label %__folio_memcg.exit.i.i, label %if.then.i14.i.i, !prof !245

if.then.i14.i.i:                                  ; preds = %folio_test_slab.exit.i13.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @dump_page(ptr noundef %8, ptr noundef nonnull @.str.36) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/memcontrol.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 396, 0\0A.popsection", ""() #16, !srcloc !319
  unreachable

__folio_memcg.exit.i.i:                           ; preds = %folio_test_slab.exit.i13.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %and46.i.i.i = and i32 %13, -4
  %25 = inttoptr i32 %and46.i.i.i to ptr
  br label %page_memcg.exit

page_memcg.exit:                                  ; preds = %__folio_memcg.exit.i.i, %__folio_objcg.exit.i.i
  %retval.0.i4.i = phi ptr [ %21, %__folio_objcg.exit.i.i ], [ %25, %__folio_memcg.exit.i.i ]
  %tobool.not = icmp eq ptr %retval.0.i4.i, null
  br i1 %tobool.not, label %page_memcg.exit.if.end3_crit_edge, label %if.then2

page_memcg.exit.if.end3_crit_edge:                ; preds = %page_memcg.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end3

if.then2:                                         ; preds = %page_memcg.exit
  %26 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !320
  %and.i.i2 = and i32 %26, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i2)
  %tobool.not.i3 = icmp eq i32 %and.i.i2, 0
  br i1 %tobool.not.i3, label %if.then21.i, label %do.end11.i

do.end11.i:                                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__mod_memcg_state(ptr noundef nonnull %retval.0.i4.i, i32 noundef 43, i32 noundef %val) #16
  br label %do.body23.i

if.then21.i:                                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @trace_hardirqs_off() #16
  tail call void @__mod_memcg_state(ptr noundef nonnull %retval.0.i4.i, i32 noundef 43, i32 noundef %val) #16
  tail call void @trace_hardirqs_on() #16
  br label %do.body23.i

do.body23.i:                                      ; preds = %if.then21.i, %do.end11.i
  %27 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !321
  %and.i.i.i4 = and i32 %27, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i4)
  %tobool32.not.i = icmp eq i32 %and.i.i.i4, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body23.i.mod_memcg_state.exit_crit_edge, !prof !247

do.body23.i.mod_memcg_state.exit_crit_edge:       ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mod_memcg_state.exit

if.then36.i:                                      ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @warn_bogus_irq_restore() #16
  br label %mod_memcg_state.exit

mod_memcg_state.exit:                             ; preds = %if.then36.i, %do.body23.i.mod_memcg_state.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %26) #16, !srcloc !322
  br label %if.end3

if.end3:                                          ; preds = %mod_memcg_state.exit, %page_memcg.exit.if.end3_crit_edge
  %call.i5 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i5, label %if.end3.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i8

if.end3.rcu_read_unlock.exit_crit_edge:           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i8:                                 ; preds = %if.end3
  %call1.i6 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i6)
  %tobool.not.i7 = icmp eq i32 %call1.i6, 0
  br i1 %tobool.not.i7, label %land.lhs.true.i8.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i10

land.lhs.true.i8.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i8
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i10:                               ; preds = %land.lhs.true.i8
  %.b4.i9 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i9, label %land.lhs.true2.i10.rcu_read_unlock.exit_crit_edge, label %if.then.i11

land.lhs.true2.i10.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i10
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i11:                                      ; preds = %land.lhs.true2.i10
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 724, ptr noundef nonnull @.str.21) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i11, %land.lhs.true2.i10.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i8.rcu_read_unlock.exit_crit_edge, %if.end3.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !259
  %28 = tail call i32 @llvm.read_register.i32(metadata !235) #16
  %and.i.i.i.i.i12 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i12 to ptr
  %preempt_count.i.i.i.i13 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i13, align 4
  %sub.i.i.i = add i32 %31, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i13, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry
  call void @__sanitizer_cov_trace_pc() #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mod_memcg_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__alloc_pages_bulk(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_seq_private(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @s_start(ptr nocapture noundef readnone %m, ptr nocapture noundef readonly %pos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @vmap_purge_lock, i32 noundef 0) #16
  tail call void @_raw_spin_lock(ptr noundef nonnull @vmap_area_lock) #16
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %call = tail call ptr @seq_list_start(ptr noundef nonnull @vmap_area_list, i64 noundef %1) #16
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s_stop(ptr nocapture noundef readnone %m, ptr nocapture noundef readnone %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_unlock(ptr noundef nonnull @vmap_area_lock) #16
  tail call void @mutex_unlock(ptr noundef nonnull @vmap_purge_lock) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @s_next(ptr nocapture noundef readnone %m, ptr noundef %p, ptr noundef %pos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @seq_list_next(ptr noundef %p, ptr noundef nonnull @vmap_area_list, ptr noundef %pos) #16
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s_show(ptr noundef %m, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr i8, ptr %p, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr = getelementptr i8, ptr %p, i32 -20
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr, align 4
  %5 = inttoptr i32 %4 to ptr
  %va_end = getelementptr i8, ptr %p, i32 -16
  %6 = ptrtoint ptr %va_end to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %va_end, align 4
  %8 = inttoptr i32 %7 to ptr
  %sub = sub i32 %7, %4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.49, ptr noundef %5, ptr noundef %8, i32 noundef %sub) #16
  br label %final

if.end:                                           ; preds = %entry
  %addr = getelementptr inbounds %struct.vm_struct, ptr %2, i32 0, i32 1
  %9 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %addr, align 4
  %size = getelementptr inbounds %struct.vm_struct, ptr %2, i32 0, i32 2
  %11 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size, align 4
  %add.ptr4 = getelementptr i8, ptr %10, i32 %12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.50, ptr noundef %10, ptr noundef %add.ptr4, i32 noundef %12) #16
  %caller = getelementptr inbounds %struct.vm_struct, ptr %2, i32 0, i32 7
  %13 = ptrtoint ptr %caller to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %caller, align 4
  %tobool6.not = icmp eq ptr %14, null
  br i1 %tobool6.not, label %if.end.if.end9_crit_edge, label %if.then7

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.51, ptr noundef nonnull %14) #16
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end.if.end9_crit_edge
  %nr_pages = getelementptr inbounds %struct.vm_struct, ptr %2, i32 0, i32 5
  %15 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nr_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool10.not = icmp eq i32 %16, 0
  br i1 %tobool10.not, label %if.end9.if.end13_crit_edge, label %if.then11

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.52, i32 noundef %16) #16
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end9.if.end13_crit_edge
  %phys_addr = getelementptr inbounds %struct.vm_struct, ptr %2, i32 0, i32 6
  %17 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %phys_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool14.not = icmp eq i32 %18, 0
  br i1 %tobool14.not, label %if.end13.if.end17_crit_edge, label %if.then15

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.53, ptr noundef %phys_addr) #16
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end13.if.end17_crit_edge
  %flags = getelementptr inbounds %struct.vm_struct, ptr %2, i32 0, i32 3
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 4
  %and = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %if.end17.if.end20_crit_edge, label %if.then19

if.end17.if.end20_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.54) #16
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end17.if.end20_crit_edge
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 4
  %and22 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end20.if.end25_crit_edge, label %if.then24

if.end20.if.end25_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end25

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.55) #16
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end20.if.end25_crit_edge
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags, align 4
  %and27 = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end25.if.end30_crit_edge, label %if.then29

if.end25.if.end30_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end30

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.56) #16
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end25.if.end30_crit_edge
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags, align 4
  %and32 = and i32 %26, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end30.if.end35_crit_edge, label %if.then34

if.end30.if.end35_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end35

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.57) #16
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end30.if.end35_crit_edge
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags, align 4
  %and37 = and i32 %28, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end35.if.end40_crit_edge, label %if.then39

if.end35.if.end40_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end40

if.then39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.58) #16
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end35.if.end40_crit_edge
  %pages = getelementptr inbounds %struct.vm_struct, ptr %2, i32 0, i32 4
  %29 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pages, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %32 = load ptr, ptr @high_memory, align 4
  %33 = ptrtoint ptr %32 to i32
  %add.i = add i32 %33, 8388608
  %and.i = and i32 %add.i, -8388608
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %31)
  %cmp.not.i = icmp ule i32 %and.i, %31
  %cmp1.i = icmp ult ptr %30, inttoptr (i32 -8388608 to ptr)
  %spec.select.i = and i1 %cmp1.i, %cmp.not.i
  br i1 %spec.select.i, label %if.then41, label %if.end40.if.end42_crit_edge

if.end40.if.end42_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end42

if.then41:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.59) #16
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end40.if.end42_crit_edge
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #16
  br label %final

final:                                            ; preds = %if.end42, %if.then
  %34 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %p, align 4
  %cmp.i.not = icmp eq ptr %35, @vmap_area_list
  br i1 %cmp.i.not, label %if.then45, label %final.if.end46_crit_edge

final.if.end46_crit_edge:                         ; preds = %final
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end46

if.then45:                                        ; preds = %final
  tail call void @_raw_spin_lock(ptr noundef nonnull @purge_vmap_area_lock) #16
  %.pn12.i = load ptr, ptr @purge_vmap_area_list, align 4
  %cmp.not13.i = icmp eq ptr %.pn12.i, @purge_vmap_area_list
  br i1 %cmp.not13.i, label %if.then45.show_purge_info.exit_crit_edge, label %if.then45.for.body.i_crit_edge

if.then45.for.body.i_crit_edge:                   ; preds = %if.then45
  br label %for.body.i

if.then45.show_purge_info.exit_crit_edge:         ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #18
  br label %show_purge_info.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then45.for.body.i_crit_edge
  %.pn14.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn12.i, %if.then45.for.body.i_crit_edge ]
  %va.0.i = getelementptr i8, ptr %.pn14.i, i32 -20
  %36 = ptrtoint ptr %va.0.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %va.0.i, align 4
  %38 = inttoptr i32 %37 to ptr
  %va_end.i = getelementptr i8, ptr %.pn14.i, i32 -16
  %39 = ptrtoint ptr %va_end.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %va_end.i, align 4
  %41 = inttoptr i32 %40 to ptr
  %sub.i = sub i32 %40, %37
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.60, ptr noundef %38, ptr noundef %41, i32 noundef %sub.i) #16
  %42 = ptrtoint ptr %.pn14.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pn.i = load ptr, ptr %.pn14.i, align 4
  %cmp.not.i84 = icmp eq ptr %.pn.i, @purge_vmap_area_list
  br i1 %cmp.not.i84, label %for.body.i.show_purge_info.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.body.i.show_purge_info.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %show_purge_info.exit

show_purge_info.exit:                             ; preds = %for.body.i.show_purge_info.exit_crit_edge, %if.then45.show_purge_info.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @purge_vmap_area_lock) #16
  br label %if.end46

if.end46:                                         ; preds = %show_purge_info.exit, %final.if.end46_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_start(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind null_pointer_is_valid sanitize_address sspstrong allocsize(0) uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind readonly }
attributes #12 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #14 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { nounwind readnone }
attributes #20 = { nounwind readonly willreturn }
attributes #21 = { nounwind allocsize(2) }
attributes #22 = { cold nounwind }
attributes #23 = { nounwind allocsize(0) }
attributes #24 = { allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !37, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !89, !90, !91, !93, !95, !96, !98, !100, !102, !103, !105, !107, !108, !110, !112, !113, !114, !116, !117, !119, !120, !121, !123, !124, !126, !127, !128, !130, !132, !133, !135, !137, !139, !140, !142, !144, !146, !148, !150, !151, !153, !155, !156, !157, !159, !161, !163, !165, !167, !169, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233}
!llvm.named.register.sp = !{!235}
!llvm.module.flags = !{!236, !237, !238, !239, !240, !241, !242, !243}
!llvm.ident = !{!244}

!0 = !{ptr @__ksymtab_is_vmalloc_addr, !1, !"__ksymtab_is_vmalloc_addr", i1 false, i1 false}
!1 = !{!"../mm/vmalloc.c", i32 81, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../mm/vmalloc.c", i32 584, i32 2}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../mm/vmalloc.c", i32 665, i32 6}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../mm/vmalloc.c", i32 667, i32 6}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../mm/vmalloc.c", i32 675, i32 6}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../mm/vmalloc.c", i32 683, i32 6}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../mm/vmalloc.c", i32 691, i32 6}
!14 = !{ptr @__ksymtab_vmalloc_to_page, !15, !"__ksymtab_vmalloc_to_page", i1 false, i1 false}
!15 = !{!"../mm/vmalloc.c", i32 702, i32 1}
!16 = !{ptr @__ksymtab_vmalloc_to_pfn, !17, !"__ksymtab_vmalloc_to_pfn", i1 false, i1 false}
!17 = !{!"../mm/vmalloc.c", i32 711, i32 1}
!18 = !{ptr @vmap_area_list, !19, !"vmap_area_list", i1 false, i1 false}
!19 = !{!"../mm/vmalloc.c", i32 723, i32 1}
!20 = !{ptr @__ksymtab_register_vmap_purge_notifier, !21, !"__ksymtab_register_vmap_purge_notifier", i1 false, i1 false}
!21 = !{!"../mm/vmalloc.c", i32 1606, i32 1}
!22 = !{ptr @__ksymtab_unregister_vmap_purge_notifier, !23, !"__ksymtab_unregister_vmap_purge_notifier", i1 false, i1 false}
!23 = !{!"../mm/vmalloc.c", i32 1612, i32 1}
!24 = !{ptr @__ksymtab_vm_unmap_aliases, !25, !"__ksymtab_vm_unmap_aliases", i1 false, i1 false}
!25 = !{!"../mm/vmalloc.c", i32 2138, i32 1}
!26 = !{ptr @__ksymtab_vm_unmap_ram, !27, !"__ksymtab_vm_unmap_ram", i1 false, i1 false}
!27 = !{!"../mm/vmalloc.c", i32 2171, i32 1}
!28 = !{ptr @__ksymtab_vm_map_ram, !29, !"__ksymtab_vm_map_ram", i1 false, i1 false}
!29 = !{!"../mm/vmalloc.c", i32 2219, i32 1}
!30 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../mm/vmalloc.c", i32 2349, i32 21}
!32 = !{ptr @vmalloc_init.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../mm/vmalloc.c", i32 2356, i32 3}
!34 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @vmalloc_init.__key.7, !36, !"__key", i1 false, i1 false}
!36 = !{!"../mm/vmalloc.c", i32 2360, i32 3}
!37 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!38 = distinct !{null, !39, !"__already_done", i1 false, i1 false}
!39 = !{!"../mm/vmalloc.c", i32 2366, i32 7}
!40 = !{ptr @__ksymtab_vfree, !41, !"__ksymtab_vfree", i1 false, i1 false}
!41 = !{!"../mm/vmalloc.c", i32 2716, i32 1}
!42 = !{ptr @__ksymtab_vunmap, !43, !"__ksymtab_vunmap", i1 false, i1 false}
!43 = !{!"../mm/vmalloc.c", i32 2734, i32 1}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../mm/vmalloc.c", i32 2764, i32 6}
!46 = !{ptr @__ksymtab_vmap, !47, !"__ksymtab_vmap", i1 false, i1 false}
!47 = !{!"../mm/vmalloc.c", i32 2788, i32 1}
!48 = distinct !{null, !49, !"__already_done", i1 false, i1 false}
!49 = !{!"../mm/vmalloc.c", i32 3059, i32 6}
!50 = !{ptr @.str.9, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../mm/vmalloc.c", i32 3064, i32 4}
!52 = !{ptr @.str.10, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../mm/vmalloc.c", i32 3098, i32 4}
!54 = !{ptr @.str.11, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../mm/vmalloc.c", i32 3099, i32 26}
!56 = !{ptr @.str.12, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../mm/vmalloc.c", i32 3099, i32 42}
!58 = !{ptr @__ksymtab___vmalloc_node, !59, !"__ksymtab___vmalloc_node", i1 false, i1 false}
!59 = !{!"../mm/vmalloc.c", i32 3166, i32 1}
!60 = !{ptr @__ksymtab___vmalloc, !61, !"__ksymtab___vmalloc", i1 false, i1 false}
!61 = !{!"../mm/vmalloc.c", i32 3174, i32 1}
!62 = !{ptr @__ksymtab_vmalloc, !63, !"__ksymtab_vmalloc", i1 false, i1 false}
!63 = !{!"../mm/vmalloc.c", i32 3193, i32 1}
!64 = !{ptr @__ksymtab_vmalloc_no_huge, !65, !"__ksymtab_vmalloc_no_huge", i1 false, i1 false}
!65 = !{!"../mm/vmalloc.c", i32 3210, i32 1}
!66 = !{ptr @__ksymtab_vzalloc, !67, !"__ksymtab_vzalloc", i1 false, i1 false}
!67 = !{!"../mm/vmalloc.c", i32 3230, i32 1}
!68 = !{ptr @__ksymtab_vmalloc_user, !69, !"__ksymtab_vmalloc_user", i1 false, i1 false}
!69 = !{!"../mm/vmalloc.c", i32 3248, i32 1}
!70 = !{ptr @__ksymtab_vmalloc_node, !71, !"__ksymtab_vmalloc_node", i1 false, i1 false}
!71 = !{!"../mm/vmalloc.c", i32 3268, i32 1}
!72 = !{ptr @__ksymtab_vzalloc_node, !73, !"__ksymtab_vzalloc_node", i1 false, i1 false}
!73 = !{!"../mm/vmalloc.c", i32 3286, i32 1}
!74 = !{ptr @__ksymtab_vmalloc_32, !75, !"__ksymtab_vmalloc_32", i1 false, i1 false}
!75 = !{!"../mm/vmalloc.c", i32 3314, i32 1}
!76 = !{ptr @__ksymtab_vmalloc_32_user, !77, !"__ksymtab_vmalloc_32_user", i1 false, i1 false}
!77 = !{!"../mm/vmalloc.c", i32 3332, i32 1}
!78 = !{ptr @__ksymtab_remap_vmalloc_range, !79, !"__ksymtab_remap_vmalloc_range", i1 false, i1 false}
!79 = !{!"../mm/vmalloc.c", i32 3546, i32 1}
!80 = !{ptr @__ksymtab_free_vm_area, !81, !"__ksymtab_free_vm_area", i1 false, i1 false}
!81 = !{!"../mm/vmalloc.c", i32 3555, i32 1}
!82 = distinct !{null, !83, !"__already_done", i1 false, i1 false}
!83 = !{!"../mm/vmalloc.c", i32 3767, i32 7}
!84 = distinct !{null, !85, !"__already_done", i1 false, i1 false}
!85 = !{!"../mm/vmalloc.c", i32 3772, i32 7}
!86 = !{ptr @.str.14, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../mm/vmalloc.c", i32 3910, i32 2}
!88 = !{ptr @.str.15, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @vmalloc_dump_obj._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @vmalloc_dump_obj._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @__initcall__kmod_vmalloc__354_4058_proc_vmalloc_init6, !92, !"__initcall__kmod_vmalloc__354_4058_proc_vmalloc_init6", i1 false, i1 false}
!92 = !{!"../mm/vmalloc.c", i32 4058, i32 1}
!93 = !{ptr @__pcpu_unique_vfree_deferred, !94, !"__pcpu_unique_vfree_deferred", i1 false, i1 false}
!94 = !{!"../mm/vmalloc.c", i32 87, i32 8}
!95 = !{ptr @vfree_deferred, !94, !"vfree_deferred", i1 false, i1 false}
!96 = distinct !{null, !97, !"vmap_initialized", i1 false, i1 false}
!97 = !{!"../mm/vmalloc.c", i32 725, i32 13}
!98 = !{ptr @vmap_area_cachep, !99, !"vmap_area_cachep", i1 false, i1 false}
!99 = !{!"../mm/vmalloc.c", i32 737, i32 27}
!100 = !{ptr @__pcpu_unique_ne_fit_preload_node, !101, !"__pcpu_unique_ne_fit_preload_node", i1 false, i1 false}
!101 = !{!"../mm/vmalloc.c", i32 762, i32 8}
!102 = !{ptr @ne_fit_preload_node, !101, !"ne_fit_preload_node", i1 false, i1 false}
!103 = !{ptr @nr_vmalloc_pages, !104, !"nr_vmalloc_pages", i1 false, i1 false}
!104 = !{!"../mm/vmalloc.c", i32 797, i32 22}
!105 = !{ptr @__pcpu_unique_vmap_block_queue, !106, !"__pcpu_unique_vmap_block_queue", i1 false, i1 false}
!106 = !{!"../mm/vmalloc.c", i32 1844, i32 8}
!107 = !{ptr @vmap_block_queue, !106, !"vmap_block_queue", i1 false, i1 false}
!108 = !{ptr @vmlist, !109, !"vmlist", i1 false, i1 false}
!109 = !{!"../mm/vmalloc.c", i32 2221, i32 26}
!110 = !{ptr @.str.16, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../mm/vmalloc.c", i32 794, i32 8}
!112 = !{ptr @.str.17, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @vmap_notify_list, !111, !"vmap_notify_list", i1 false, i1 false}
!114 = distinct !{null, !115, !"__warned", i1 false, i1 false}
!115 = !{!"../mm/vmalloc.c", i32 2092, i32 3}
!116 = !{ptr @.str.18, !115, !"<string literal>", i1 false, i1 false}
!117 = distinct !{null, !118, !"__warned", i1 false, i1 false}
!118 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!119 = !{ptr @.str.19, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.20, !118, !"<string literal>", i1 false, i1 false}
!121 = distinct !{null, !122, !"__warned", i1 false, i1 false}
!122 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!123 = !{ptr @.str.21, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.22, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../mm/vmalloc.c", i32 1646, i32 8}
!126 = !{ptr @.str.23, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @vmap_purge_lock, !125, !"vmap_purge_lock", i1 false, i1 false}
!128 = distinct !{null, !129, !"__warned", i1 false, i1 false}
!129 = !{!"../mm/vmalloc.c", i32 1955, i32 2}
!130 = !{ptr @.str.24, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../mm/vmalloc.c", i32 1851, i32 8}
!132 = !{ptr @vmap_blocks, !131, !"vmap_blocks", i1 false, i1 false}
!133 = distinct !{null, !134, !"free_vmap_area_rb_augment_cb", i1 false, i1 false}
!134 = !{!"../mm/vmalloc.c", i32 790, i32 1}
!135 = !{ptr @vmap_lazy_nr, !136, !"vmap_lazy_nr", i1 false, i1 false}
!136 = !{!"../mm/vmalloc.c", i32 1639, i32 22}
!137 = !{ptr @.str.25, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../mm/vmalloc.c", i32 729, i32 8}
!139 = !{ptr @purge_vmap_area_lock, !138, !"purge_vmap_area_lock", i1 false, i1 false}
!140 = !{ptr @.str.26, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../mm/vmalloc.c", i32 891, i32 4}
!142 = !{ptr @purge_vmap_area_root, !143, !"purge_vmap_area_root", i1 false, i1 false}
!143 = !{!"../mm/vmalloc.c", i32 727, i32 23}
!144 = !{ptr @purge_vmap_area_list, !145, !"purge_vmap_area_list", i1 false, i1 false}
!145 = !{!"../mm/vmalloc.c", i32 728, i32 8}
!146 = distinct !{null, !147, !"__warned", i1 false, i1 false}
!147 = !{!"../mm/vmalloc.c", i32 2011, i32 2}
!148 = !{ptr @new_vmap_block.__key, !149, !"__key", i1 false, i1 false}
!149 = !{!"../mm/vmalloc.c", i32 1909, i32 2}
!150 = !{ptr @.str.27, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @__func__.alloc_vmap_area, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../mm/vmalloc.c", i32 1594, i32 36}
!153 = !{ptr @.str.28, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../mm/vmalloc.c", i32 1595, i32 3}
!155 = !{ptr @alloc_vmap_area._entry, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @alloc_vmap_area._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!157 = distinct !{null, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../mm/vmalloc.c", i32 1508, i32 12}
!159 = distinct !{null, !160, !"__already_done", i1 false, i1 false}
!160 = !{!"../mm/vmalloc.c", i32 1454, i32 6}
!161 = !{ptr @vmap_area_root, !162, !"vmap_area_root", i1 false, i1 false}
!162 = !{!"../mm/vmalloc.c", i32 724, i32 23}
!163 = distinct !{null, !164, !"__already_done", i1 false, i1 false}
!164 = !{!"../mm/vmalloc.c", i32 2314, i32 9}
!165 = distinct !{null, !166, !"__already_done", i1 false, i1 false}
!166 = !{!"../mm/vmalloc.c", i32 2329, i32 8}
!167 = !{ptr @.str.31, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../mm/vmalloc.c", i32 720, i32 8}
!169 = !{ptr @vmap_area_lock, !168, !"vmap_area_lock", i1 false, i1 false}
!170 = !{ptr @.str.32, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../mm/vmalloc.c", i32 2608, i32 6}
!172 = !{ptr @.str.33, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../mm/vmalloc.c", i32 2614, i32 3}
!174 = !{ptr @.str.34, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../include/linux/memcontrol.h", i32 537, i32 2}
!176 = !{ptr @.str.35, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../include/linux/memcontrol.h", i32 538, i32 2}
!178 = !{ptr @.str.36, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../include/linux/memcontrol.h", i32 417, i32 2}
!180 = distinct !{null, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../include/linux/memcontrol.h", i32 418, i32 2}
!182 = distinct !{null, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../include/linux/memcontrol.h", i32 419, i32 2}
!184 = !{ptr @.str.39, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!186 = distinct !{null, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!188 = distinct !{null, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../include/linux/memcontrol.h", i32 398, i32 2}
!190 = !{ptr @.str.42, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../mm/vmalloc.c", i32 2953, i32 4}
!192 = !{ptr @.str.43, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../mm/vmalloc.c", i32 2980, i32 4}
!194 = !{ptr @.str.44, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../mm/vmalloc.c", i32 3008, i32 4}
!196 = distinct !{null, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!198 = !{ptr @.str.46, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../mm/vmalloc.c", i32 721, i32 8}
!200 = !{ptr @free_vmap_area_lock, !199, !"free_vmap_area_lock", i1 false, i1 false}
!201 = distinct !{null, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../mm/vmalloc.c", i32 1369, i32 9}
!203 = !{ptr @free_vmap_area_root, !204, !"free_vmap_area_root", i1 false, i1 false}
!204 = !{!"../mm/vmalloc.c", i32 755, i32 23}
!205 = !{ptr @free_vmap_area_list, !206, !"free_vmap_area_list", i1 false, i1 false}
!206 = !{!"../mm/vmalloc.c", i32 743, i32 8}
!207 = !{ptr @.str.48, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../mm/vmalloc.c", i32 4055, i32 3}
!209 = !{ptr @vmalloc_op, !210, !"vmalloc_op", i1 false, i1 false}
!210 = !{!"../mm/vmalloc.c", i32 4041, i32 36}
!211 = !{ptr @.str.49, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../mm/vmalloc.c", i32 3989, i32 17}
!213 = !{ptr @.str.50, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../mm/vmalloc.c", i32 3998, i32 16}
!215 = !{ptr @.str.51, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../mm/vmalloc.c", i32 4002, i32 17}
!217 = !{ptr @.str.52, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../mm/vmalloc.c", i32 4005, i32 17}
!219 = !{ptr @.str.53, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../mm/vmalloc.c", i32 4008, i32 17}
!221 = !{ptr @.str.54, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../mm/vmalloc.c", i32 4011, i32 15}
!223 = !{ptr @.str.55, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../mm/vmalloc.c", i32 4014, i32 15}
!225 = !{ptr @.str.56, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../mm/vmalloc.c", i32 4017, i32 15}
!227 = !{ptr @.str.57, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../mm/vmalloc.c", i32 4020, i32 15}
!229 = !{ptr @.str.58, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../mm/vmalloc.c", i32 4023, i32 15}
!231 = !{ptr @.str.59, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../mm/vmalloc.c", i32 4026, i32 15}
!233 = !{ptr @.str.60, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../mm/vmalloc.c", i32 3970, i32 17}
!235 = !{!"sp"}
!236 = !{i32 1, !"wchar_size", i32 2}
!237 = !{i32 1, !"min_enum_size", i32 4}
!238 = !{i32 8, !"branch-target-enforcement", i32 0}
!239 = !{i32 8, !"sign-return-address", i32 0}
!240 = !{i32 8, !"sign-return-address-all", i32 0}
!241 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!242 = !{i32 7, !"uwtable", i32 1}
!243 = !{i32 7, !"frame-pointer", i32 2}
!244 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!245 = !{!"branch_weights", i32 2000, i32 1}
!246 = !{i64 2155176800, i64 2155177277, i64 2155176837, i64 2155176893, i64 2155176927, i64 2155176951, i64 2155176992, i64 2155177013, i64 2155177041, i64 2155177075}
!247 = !{!"branch_weights", i32 1, i32 2000}
!248 = !{i64 2148998596, i64 2148998619, i64 2148998651, i64 2148998683, i64 2148998721, i64 2148998751}
!249 = !{i64 2155173728, i64 2155174205, i64 2155173765, i64 2155173821, i64 2155173855, i64 2155173879, i64 2155173920, i64 2155173941, i64 2155173969, i64 2155174003}
!250 = !{i64 2153612243}
!251 = !{i64 2155180381, i64 2155180858, i64 2155180418, i64 2155180474, i64 2155180508, i64 2155180532, i64 2155180573, i64 2155180594, i64 2155180622, i64 2155180656}
!252 = !{i64 2155184517, i64 2155184994, i64 2155184554, i64 2155184610, i64 2155184644, i64 2155184668, i64 2155184709, i64 2155184730, i64 2155184758, i64 2155184792}
!253 = !{i64 2155188536, i64 2155189013, i64 2155188573, i64 2155188629, i64 2155188663, i64 2155188687, i64 2155188728, i64 2155188749, i64 2155188777, i64 2155188811}
!254 = !{i64 2153860896}
!255 = !{i64 2152844427}
!256 = !{i64 2152844634}
!257 = !{i64 2153863667}
!258 = !{i64 2149347502}
!259 = !{i64 2149347768}
!260 = !{i64 2155603630, i64 2155604108, i64 2155603667, i64 2155603723, i64 2155603757, i64 2155603781, i64 2155603822, i64 2155603843, i64 2155603871, i64 2155603905}
!261 = !{i64 2155605420, i64 2155605898, i64 2155605457, i64 2155605513, i64 2155605547, i64 2155605571, i64 2155605612, i64 2155605633, i64 2155605661, i64 2155605695}
!262 = !{i64 2155607009, i64 2155607487, i64 2155607046, i64 2155607102, i64 2155607136, i64 2155607160, i64 2155607201, i64 2155607222, i64 2155607250, i64 2155607284}
!263 = !{i64 2155608965, i64 2155609443, i64 2155609002, i64 2155609058, i64 2155609092, i64 2155609116, i64 2155609157, i64 2155609178, i64 2155609206, i64 2155609240}
!264 = !{i64 2155546332, i64 2155546810, i64 2155546369, i64 2155546425, i64 2155546459, i64 2155546483, i64 2155546524, i64 2155546545, i64 2155546573, i64 2155546607}
!265 = !{i32 0, i32 33}
!266 = !{i64 2155557454, i64 2155557932, i64 2155557491, i64 2155557547, i64 2155557581, i64 2155557605, i64 2155557646, i64 2155557667, i64 2155557695, i64 2155557729}
!267 = !{i64 2155430677, i64 2155431155, i64 2155430714, i64 2155430770, i64 2155430804, i64 2155430828, i64 2155430869, i64 2155430890, i64 2155430918, i64 2155430952}
!268 = !{i64 2155610565, i64 2155611043, i64 2155610602, i64 2155610658, i64 2155610692, i64 2155610716, i64 2155610757, i64 2155610778, i64 2155610806, i64 2155610840}
!269 = !{i64 2155497712, i64 2155498190, i64 2155497749, i64 2155497805, i64 2155497839, i64 2155497863, i64 2155497904, i64 2155497925, i64 2155497953, i64 2155497987}
!270 = !{i64 2155499732}
!271 = !{i64 2155405463, i64 2155405941, i64 2155405500, i64 2155405556, i64 2155405590, i64 2155405614, i64 2155405655, i64 2155405676, i64 2155405704, i64 2155405738}
!272 = !{i64 2155540127}
!273 = !{i64 2155421283, i64 2155421761, i64 2155421320, i64 2155421376, i64 2155421410, i64 2155421434, i64 2155421475, i64 2155421496, i64 2155421524, i64 2155421558}
!274 = !{i64 2155429213}
!275 = !{i64 2151600445}
!276 = !{i64 2155430357}
!277 = !{!"auto-init"}
!278 = !{i64 2155352544, i64 2155353022, i64 2155352581, i64 2155352637, i64 2155352671, i64 2155352695, i64 2155352736, i64 2155352757, i64 2155352785, i64 2155352819}
!279 = !{i64 2155354251, i64 2155354729, i64 2155354288, i64 2155354344, i64 2155354378, i64 2155354402, i64 2155354443, i64 2155354464, i64 2155354492, i64 2155354526}
!280 = !{!"branch_weights", i32 -102759400, i32 4193255}
!281 = !{i64 2155355831, i64 2155356309, i64 2155355868, i64 2155355924, i64 2155355958, i64 2155355982, i64 2155356023, i64 2155356044, i64 2155356072, i64 2155356106}
!282 = !{i64 2155306512}
!283 = !{i64 2155323720}
!284 = !{i64 2155358521, i64 2155358999, i64 2155358558, i64 2155358614, i64 2155358648, i64 2155358672, i64 2155358713, i64 2155358734, i64 2155358762, i64 2155358796}
!285 = !{i64 2155360101, i64 2155360579, i64 2155360138, i64 2155360194, i64 2155360228, i64 2155360252, i64 2155360293, i64 2155360314, i64 2155360342, i64 2155360376}
!286 = !{i64 2155361673, i64 2155362151, i64 2155361710, i64 2155361766, i64 2155361800, i64 2155361824, i64 2155361865, i64 2155361886, i64 2155361914, i64 2155361948}
!287 = !{i64 2155621849, i64 2155622327, i64 2155621886, i64 2155621942, i64 2155621976, i64 2155622000, i64 2155622041, i64 2155622062, i64 2155622090, i64 2155622124}
!288 = !{i64 2155623461, i64 2155623939, i64 2155623498, i64 2155623554, i64 2155623588, i64 2155623612, i64 2155623653, i64 2155623674, i64 2155623702, i64 2155623736}
!289 = !{i64 2155625063, i64 2155625541, i64 2155625100, i64 2155625156, i64 2155625190, i64 2155625214, i64 2155625255, i64 2155625276, i64 2155625304, i64 2155625338}
!290 = !{i64 2155627538, i64 2155628016, i64 2155627575, i64 2155627631, i64 2155627665, i64 2155627689, i64 2155627730, i64 2155627751, i64 2155627779, i64 2155627813}
!291 = !{i64 2155629572, i64 2155630050, i64 2155629609, i64 2155629665, i64 2155629699, i64 2155629723, i64 2155629764, i64 2155629785, i64 2155629813, i64 2155629847}
!292 = !{i64 2149207973}
!293 = !{i64 1096731, i64 1096748, i64 1096772, i64 1096798, i64 1096816}
!294 = !{i64 2149208326}
!295 = !{i64 2155641962, i64 2155642440, i64 2155641999, i64 2155642055, i64 2155642089, i64 2155642113, i64 2155642154, i64 2155642175, i64 2155642203, i64 2155642237}
!296 = !{i64 2155666378, i64 2155666856, i64 2155666415, i64 2155666471, i64 2155666505, i64 2155666529, i64 2155666570, i64 2155666591, i64 2155666619, i64 2155666653}
!297 = !{i64 2155669061, i64 2155669539, i64 2155669098, i64 2155669154, i64 2155669188, i64 2155669212, i64 2155669253, i64 2155669274, i64 2155669302, i64 2155669336}
!298 = !{i64 2155673643, i64 2155674121, i64 2155673680, i64 2155673736, i64 2155673770, i64 2155673794, i64 2155673835, i64 2155673856, i64 2155673884, i64 2155673918}
!299 = !{i64 2155663333, i64 2155663811, i64 2155663370, i64 2155663426, i64 2155663460, i64 2155663484, i64 2155663525, i64 2155663546, i64 2155663574, i64 2155663608}
!300 = !{i64 2148592428, i64 2148592454, i64 2148592483, i64 2148592517, i64 2148592548, i64 2148592571}
!301 = !{i64 2155713870, i64 2155714348, i64 2155713907, i64 2155713963, i64 2155713997, i64 2155714021, i64 2155714062, i64 2155714083, i64 2155714111, i64 2155714145}
!302 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
!303 = !{i64 2151329878, i64 2151330362, i64 2151329915, i64 2151329971, i64 2151330005, i64 2151330029, i64 2151330070, i64 2151330091, i64 2151330119, i64 2151330153}
!304 = !{i64 2148589963, i64 2148589989, i64 2148590018, i64 2148590052, i64 2148590083, i64 2148590106}
!305 = !{i64 2155640685}
!306 = !{!"branch_weights", i32 4008002, i32 4000000}
!307 = !{i64 2155723777, i64 2155724255, i64 2155723814, i64 2155723870, i64 2155723904, i64 2155723928, i64 2155723969, i64 2155723990, i64 2155724018, i64 2155724052}
!308 = !{i64 2155725527, i64 2155726005, i64 2155725564, i64 2155725620, i64 2155725654, i64 2155725678, i64 2155725719, i64 2155725740, i64 2155725768, i64 2155725802}
!309 = !{i64 2155727265, i64 2155727743, i64 2155727302, i64 2155727358, i64 2155727392, i64 2155727416, i64 2155727457, i64 2155727478, i64 2155727506, i64 2155727540}
!310 = !{i64 2155728859, i64 2155729337, i64 2155728896, i64 2155728952, i64 2155728986, i64 2155729010, i64 2155729051, i64 2155729072, i64 2155729100, i64 2155729134}
!311 = !{i64 2148675398}
!312 = !{i64 2148590683, i64 2148590715, i64 2148590744, i64 2148590778, i64 2148590809, i64 2148590832}
!313 = !{i64 2148675627}
!314 = !{i64 2148414561, i64 2148414566, i64 2148414579, i64 2148414623, i64 2148414657, i64 2148414678}
!315 = !{i64 2154723396, i64 2154723887, i64 2154723433, i64 2154723489, i64 2154723523, i64 2154723547, i64 2154723588, i64 2154723609, i64 2154723637, i64 2154723671}
!316 = !{i64 2154725296, i64 2154725787, i64 2154725333, i64 2154725389, i64 2154725423, i64 2154725447, i64 2154725488, i64 2154725509, i64 2154725537, i64 2154725571}
!317 = !{i64 2150345051, i64 2150345542, i64 2150345088, i64 2150345144, i64 2150345178, i64 2150345202, i64 2150345243, i64 2150345264, i64 2150345292, i64 2150345326}
!318 = !{i64 2154707896, i64 2154708387, i64 2154707933, i64 2154707989, i64 2154708023, i64 2154708047, i64 2154708088, i64 2154708109, i64 2154708137, i64 2154708171}
!319 = !{i64 2154702154, i64 2154702645, i64 2154702191, i64 2154702247, i64 2154702281, i64 2154702305, i64 2154702346, i64 2154702367, i64 2154702395, i64 2154702429}
!320 = !{i64 994643, i64 994704}
!321 = !{i64 997375}
!322 = !{i64 997660}
