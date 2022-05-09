; ModuleID = '/llk/IR_all_yes/arch/arm/mm/dma-mapping.c_pt.bc'
source_filename = "../arch/arm/mm/dma-mapping.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+arm_dma_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_arm_dma_ops\09\09\09\09"
module asm "\09.long\09__crc_arm_dma_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_arm_dma_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22arm_dma_ops\22\09\09\09\09\09"
module asm "__kstrtabns_arm_dma_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+arm_coherent_dma_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_arm_coherent_dma_ops\09\09\09\09"
module asm "\09.long\09__crc_arm_coherent_dma_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_arm_coherent_dma_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22arm_coherent_dma_ops\22\09\09\09\09\09"
module asm "__kstrtabns_arm_coherent_dma_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+arm_iommu_create_mapping\22, \22a\22\09"
module asm "\09.weak\09__crc_arm_iommu_create_mapping\09\09\09\09"
module asm "\09.long\09__crc_arm_iommu_create_mapping\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_arm_iommu_create_mapping:\09\09\09\09\09"
module asm "\09.asciz \09\22arm_iommu_create_mapping\22\09\09\09\09\09"
module asm "__kstrtabns_arm_iommu_create_mapping:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+arm_iommu_release_mapping\22, \22a\22\09"
module asm "\09.weak\09__crc_arm_iommu_release_mapping\09\09\09\09"
module asm "\09.long\09__crc_arm_iommu_release_mapping\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_arm_iommu_release_mapping:\09\09\09\09\09"
module asm "\09.asciz \09\22arm_iommu_release_mapping\22\09\09\09\09\09"
module asm "__kstrtabns_arm_iommu_release_mapping:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+arm_iommu_attach_device\22, \22a\22\09"
module asm "\09.weak\09__crc_arm_iommu_attach_device\09\09\09\09"
module asm "\09.long\09__crc_arm_iommu_attach_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_arm_iommu_attach_device:\09\09\09\09\09"
module asm "\09.asciz \09\22arm_iommu_attach_device\22\09\09\09\09\09"
module asm "__kstrtabns_arm_iommu_attach_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+arm_iommu_detach_device\22, \22a\22\09"
module asm "\09.weak\09__crc_arm_iommu_detach_device\09\09\09\09"
module asm "\09.long\09__crc_arm_iommu_detach_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_arm_iommu_detach_device:\09\09\09\09\09"
module asm "\09.asciz \09\22arm_iommu_detach_device\22\09\09\09\09\09"
module asm "__kstrtabns_arm_iommu_detach_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dma_map_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.dma_contig_early_reserve = type { i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.outer_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mm_struct = type { %struct.anon.10, [0 x i32] }
%struct.anon.10 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.cpu_tlb_fns = type { ptr, ptr, i32 }
%struct.arm_dma_allocator = type { ptr, ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.bus_dma_region = type { i32, i32, i64, i64 }
%struct.page = type { i32, %union.anon.2, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.map_desc = type { i32, i32, i32, i32 }
%struct.arm_dma_alloc_args = type { ptr, i32, i32, i32, ptr, i8, i32 }
%struct.arm_dma_buffer = type { %struct.list_head, ptr, ptr }
%struct.arm_dma_free_args = type { ptr, i32, ptr, ptr, i8 }
%struct.dma_iommu_mapping = type { ptr, ptr, i32, i32, i32, i32, i32, %struct.spinlock, %struct.kref }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.53 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.gen_pool = type { %struct.spinlock, %struct.list_head, i32, ptr, ptr, ptr }

@arm_dma_ops = dso_local constant { %struct.dma_map_ops, [36 x i8] } { %struct.dma_map_ops { ptr @arm_dma_alloc, ptr @arm_dma_free, ptr @dma_direct_alloc_pages, ptr @dma_direct_free_pages, ptr null, ptr null, ptr @arm_dma_mmap, ptr @arm_dma_get_sgtable, ptr @arm_dma_map_page, ptr @arm_dma_unmap_page, ptr @arm_dma_map_sg, ptr @arm_dma_unmap_sg, ptr @dma_direct_map_resource, ptr null, ptr @arm_dma_sync_single_for_cpu, ptr @arm_dma_sync_single_for_device, ptr @arm_dma_sync_sg_for_cpu, ptr @arm_dma_sync_sg_for_device, ptr null, ptr @arm_dma_supported, ptr @dma_direct_get_required_mask, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_arm_dma_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_arm_dma_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_arm_dma_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @arm_dma_ops to i32), ptr @__kstrtab_arm_dma_ops, ptr @__kstrtabns_arm_dma_ops }, section "___ksymtab+arm_dma_ops", align 4
@arm_coherent_dma_ops = dso_local constant { %struct.dma_map_ops, [36 x i8] } { %struct.dma_map_ops { ptr @arm_coherent_dma_alloc, ptr @arm_coherent_dma_free, ptr @dma_direct_alloc_pages, ptr @dma_direct_free_pages, ptr null, ptr null, ptr @arm_coherent_dma_mmap, ptr @arm_dma_get_sgtable, ptr @arm_coherent_dma_map_page, ptr null, ptr @arm_dma_map_sg, ptr null, ptr @dma_direct_map_resource, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @arm_dma_supported, ptr @dma_direct_get_required_mask, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_arm_coherent_dma_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_arm_coherent_dma_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_arm_coherent_dma_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @arm_coherent_dma_ops to i32), ptr @__kstrtab_arm_coherent_dma_ops, ptr @__kstrtabns_arm_coherent_dma_ops }, section "___ksymtab+arm_coherent_dma_ops", align 4
@__setup_str_early_coherent_pool = internal constant [14 x i8] c"coherent_pool\00", section ".init.rodata", align 1
@__setup_early_coherent_pool = internal global %struct.obs_kernel_param { ptr @__setup_str_early_coherent_pool, ptr @early_coherent_pool, i32 1 }, section ".init.setup", align 4
@__initcall__kmod_dma_mapping__249_382_atomic_pool_init2 = internal global ptr @atomic_pool_init, section ".initcall2.init", align 4
@dma_mmu_remap = internal unnamed_addr global [8 x %struct.dma_contig_early_reserve] zeroinitializer, section ".init.data", align 4
@dma_mmu_remap_num = internal unnamed_addr global i32 0, section ".init.data", align 4
@arm_lowmem_limit = external dso_local local_unnamed_addr global i32, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@arm_iommu_create_mapping.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&mapping->lock\00", [17 x i8] zeroinitializer }, align 32
@__kstrtab_arm_iommu_create_mapping = external dso_local constant [0 x i8], align 1
@__kstrtabns_arm_iommu_create_mapping = external dso_local constant [0 x i8], align 1
@__ksymtab_arm_iommu_create_mapping = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @arm_iommu_create_mapping to i32), ptr @__kstrtab_arm_iommu_create_mapping, ptr @__kstrtabns_arm_iommu_create_mapping }, section "___ksymtab_gpl+arm_iommu_create_mapping", align 4
@__kstrtab_arm_iommu_release_mapping = external dso_local constant [0 x i8], align 1
@__kstrtabns_arm_iommu_release_mapping = external dso_local constant [0 x i8], align 1
@__ksymtab_arm_iommu_release_mapping = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @arm_iommu_release_mapping to i32), ptr @__kstrtab_arm_iommu_release_mapping, ptr @__kstrtabns_arm_iommu_release_mapping }, section "___ksymtab_gpl+arm_iommu_release_mapping", align 4
@iommu_ops = internal constant { %struct.dma_map_ops, [36 x i8] } { %struct.dma_map_ops { ptr @arm_iommu_alloc_attrs, ptr @arm_iommu_free_attrs, ptr null, ptr null, ptr null, ptr null, ptr @arm_iommu_mmap_attrs, ptr @arm_iommu_get_sgtable, ptr @arm_iommu_map_page, ptr @arm_iommu_unmap_page, ptr @arm_iommu_map_sg, ptr @arm_iommu_unmap_sg, ptr @arm_iommu_map_resource, ptr @arm_iommu_unmap_resource, ptr @arm_iommu_sync_single_for_cpu, ptr @arm_iommu_sync_single_for_device, ptr @arm_iommu_sync_sg_for_cpu, ptr @arm_iommu_sync_sg_for_device, ptr null, ptr @arm_dma_supported, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_arm_iommu_attach_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_arm_iommu_attach_device = external dso_local constant [0 x i8], align 1
@__ksymtab_arm_iommu_attach_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @arm_iommu_attach_device to i32), ptr @__kstrtab_arm_iommu_attach_device, ptr @__kstrtabns_arm_iommu_attach_device }, section "___ksymtab_gpl+arm_iommu_attach_device", align 4
@arm_iommu_detach_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2195, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Not attached\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"arm_iommu_detach_device\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"arch/arm/mm/dma-mapping.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@arm_iommu_detach_device._entry_ptr = internal global ptr @arm_iommu_detach_device._entry, section ".printk_index", align 4
@arm_iommu_detach_device.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.2, ptr @.str.3, ptr @.str.7, i8 2, i8 39, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dma_mapping\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Detached IOMMU controller from %s device.\0A\00", [53 x i8] zeroinitializer }, align 32
@__kstrtab_arm_iommu_detach_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_arm_iommu_detach_device = external dso_local constant [0 x i8], align 1
@__ksymtab_arm_iommu_detach_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @arm_iommu_detach_device to i32), ptr @__kstrtab_arm_iommu_detach_device, ptr @__kstrtabns_arm_iommu_detach_device }, section "___ksymtab_gpl+arm_iommu_detach_device", align 4
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@cacheid = external dso_local local_unnamed_addr global i32, align 4
@outer_cache = external dso_local local_unnamed_addr global %struct.outer_cache_fns, align 4
@max_pfn = external dso_local local_unnamed_addr global i32, align 4
@arm_dma_pfn_limit = external dso_local local_unnamed_addr global i32, align 4
@atomic_pool_size = internal unnamed_addr global i32 262144, section ".init.data", align 4
@atomic_pool = internal unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@atomic_pool_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 367, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\016DMA: preallocated %zu KiB pool for atomic coherent allocations\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"atomic_pool_init\00", [47 x i8] zeroinitializer }, align 32
@atomic_pool_init._entry_ptr = internal global ptr @atomic_pool_init._entry, section ".printk_index", align 4
@atomic_pool_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.3, i32 376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013DMA: failed to allocate %zu KiB pool for atomic coherent allocation\0A\00", [57 x i8] zeroinitializer }, align 32
@atomic_pool_init._entry_ptr.12 = internal global ptr @atomic_pool_init._entry.10, section ".printk_index", align 4
@dma_contiguous_default_area = external dso_local local_unnamed_addr global ptr, align 4
@init_mm = external dso_local global %struct.mm_struct, align 8
@cpu_vtable = external dso_local local_unnamed_addr global [0 x ptr], align 4
@cpu_tlb = external dso_local local_unnamed_addr global %struct.cpu_tlb_fns, align 4
@__dma_alloc._entry = internal constant %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 685, ptr @.str.4, ptr @.str.5 }, align 1
@.str.14 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"coherent allocation too big (requested %#x mask %#llx)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"__dma_alloc\00", [20 x i8] zeroinitializer }, align 32
@__dma_alloc._entry_ptr = internal global ptr @__dma_alloc._entry, section ".printk_index", align 4
@cma_allocator = internal global { %struct.arm_dma_allocator, [24 x i8] } { %struct.arm_dma_allocator { ptr @cma_allocator_alloc, ptr @cma_allocator_free }, [24 x i8] zeroinitializer }, align 32
@simple_allocator = internal global { %struct.arm_dma_allocator, [24 x i8] } { %struct.arm_dma_allocator { ptr @simple_allocator_alloc, ptr @simple_allocator_free }, [24 x i8] zeroinitializer }, align 32
@remap_allocator = internal global { %struct.arm_dma_allocator, [24 x i8] } { %struct.arm_dma_allocator { ptr @remap_allocator_alloc, ptr @remap_allocator_free }, [24 x i8] zeroinitializer }, align 32
@pool_allocator = internal global { %struct.arm_dma_allocator, [24 x i8] } { %struct.arm_dma_allocator { ptr @pool_allocator_alloc, ptr @pool_allocator_free }, [24 x i8] zeroinitializer }, align 32
@arm_dma_bufs_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@arm_dma_bufs = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @arm_dma_bufs, ptr @arm_dma_bufs }, [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"coherent pool not initialised!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"arm_dma_bufs_lock\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Freeing invalid buffer %p\0A\00", [37 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__arm_iommu_attach_device.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.19, ptr @.str.3, ptr @.str.20, i8 2, i8 25, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"__arm_iommu_attach_device\00", [38 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Attached IOMMU controller to %s device.\0A\00", [55 x i8] zeroinitializer }, align 32
@iommu_order_array = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 9, i32 8, i32 4, i32 0], [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"trying to free invalid coherent area: %p\0A\00", [54 x i8] zeroinitializer }, align 32
@__arm_iommu_mmap_attrs._entry = internal constant %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 1501, ptr null, ptr null }, align 1
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013Remapping memory failed: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"__arm_iommu_mmap_attrs\00", [41 x i8] zeroinitializer }, align 32
@__arm_iommu_mmap_attrs._entry_ptr = internal global ptr @__arm_iommu_mmap_attrs._entry, section ".printk_index", align 4
@arm_setup_iommu_dma_ops._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 2224, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014Failed to create %llu-byte IOMMU mapping for device %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"arm_setup_iommu_dma_ops\00", [40 x i8] zeroinitializer }, align 32
@arm_setup_iommu_dma_ops._entry_ptr = internal global ptr @arm_setup_iommu_dma_ops._entry, section ".printk_index", align 4
@arm_setup_iommu_dma_ops._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.3, i32 2230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014Failed to attached device %s to IOMMU_mapping\0A\00", [47 x i8] zeroinitializer }, align 32
@arm_setup_iommu_dma_ops._entry_ptr.28 = internal global ptr @arm_setup_iommu_dma_ops._entry.26, section ".printk_index", align 4
@iommu_coherent_ops = internal constant { %struct.dma_map_ops, [36 x i8] } { %struct.dma_map_ops { ptr @arm_coherent_iommu_alloc_attrs, ptr @arm_coherent_iommu_free_attrs, ptr null, ptr null, ptr null, ptr null, ptr @arm_coherent_iommu_mmap_attrs, ptr @arm_iommu_get_sgtable, ptr @arm_coherent_iommu_map_page, ptr @arm_coherent_iommu_unmap_page, ptr @arm_coherent_iommu_map_sg, ptr @arm_coherent_iommu_unmap_sg, ptr @arm_iommu_map_resource, ptr @arm_iommu_unmap_resource, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @arm_dma_supported, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.33 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.34 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.35 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.36 = private unnamed_addr constant [12 x i8] c"arm_dma_ops\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 196, i32 26 }
@___asan_gen_.39 = private unnamed_addr constant [21 x i8] c"arm_coherent_dma_ops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 225, i32 26 }
@___asan_gen_.42 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 2082, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [10 x i8] c"iommu_ops\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 1989, i32 33 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 2195, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 2204, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 366, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 375, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 684, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant [14 x i8] c"cma_allocator\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 620, i32 33 }
@___asan_gen_.99 = private unnamed_addr constant [17 x i8] c"simple_allocator\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 600, i32 33 }
@___asan_gen_.102 = private unnamed_addr constant [16 x i8] c"remap_allocator\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 657, i32 33 }
@___asan_gen_.105 = private unnamed_addr constant [15 x i8] c"pool_allocator\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 636, i32 33 }
@___asan_gen_.108 = private unnamed_addr constant [18 x i8] c"arm_dma_bufs_lock\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [13 x i8] c"arm_dma_bufs\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 74, i32 8 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 490, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 75, i32 8 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 818, i32 6 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 2151, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant [18 x i8] c"iommu_order_array\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 1197, i32 18 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 1538, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 1501, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 2223, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 2229, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant [19 x i8] c"iommu_coherent_ops\00", align 1
@___asan_gen_.157 = private constant [29 x i8] c"../arch/arm/mm/dma-mapping.c\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 2011, i32 33 }
@llvm.compiler.used = appending global [58 x ptr] [ptr @__arm_iommu_mmap_attrs._entry, ptr @__arm_iommu_mmap_attrs._entry_ptr, ptr @__dma_alloc._entry, ptr @__dma_alloc._entry_ptr, ptr @__initcall__kmod_dma_mapping__249_382_atomic_pool_init2, ptr @__ksymtab_arm_coherent_dma_ops, ptr @__ksymtab_arm_dma_ops, ptr @__ksymtab_arm_iommu_attach_device, ptr @__ksymtab_arm_iommu_create_mapping, ptr @__ksymtab_arm_iommu_detach_device, ptr @__ksymtab_arm_iommu_release_mapping, ptr @__setup_early_coherent_pool, ptr @arm_iommu_detach_device._entry, ptr @arm_iommu_detach_device._entry_ptr, ptr @arm_setup_iommu_dma_ops._entry, ptr @arm_setup_iommu_dma_ops._entry.26, ptr @arm_setup_iommu_dma_ops._entry_ptr, ptr @arm_setup_iommu_dma_ops._entry_ptr.28, ptr @atomic_pool_init._entry, ptr @atomic_pool_init._entry.10, ptr @atomic_pool_init._entry_ptr, ptr @atomic_pool_init._entry_ptr.12, ptr @arm_dma_ops, ptr @arm_coherent_dma_ops, ptr @arm_iommu_create_mapping.__key, ptr @.str, ptr @iommu_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.15, ptr @cma_allocator, ptr @simple_allocator, ptr @remap_allocator, ptr @pool_allocator, ptr @arm_dma_bufs_lock, ptr @arm_dma_bufs, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @iommu_order_array, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @iommu_coherent_ops], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_dma_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_coherent_dma_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_iommu_create_mapping.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iommu_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_iommu_detach_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atomic_pool_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atomic_pool_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cma_allocator to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simple_allocator to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @remap_allocator to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pool_allocator to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_dma_bufs_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_dma_bufs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iommu_order_array to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_setup_iommu_dma_ops._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_setup_iommu_dma_ops._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iommu_coherent_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @arm_dma_alloc(ptr noundef %dev, i32 noundef %size, ptr nocapture noundef writeonly %handle, i32 noundef %gfp, i32 noundef %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %0 = load i32, ptr @pgprot_kernel, align 4
  %cond.i.v = and i32 %0, -573
  %cond.i = or i32 %cond.i.v, 516
  %1 = tail call ptr @llvm.returnaddress(i32 0)
  %call1 = tail call fastcc ptr @__dma_alloc(ptr noundef %dev, i32 noundef %size, ptr noundef %handle, i32 noundef %gfp, i32 noundef %cond.i, i1 noundef zeroext false, i32 noundef %attrs, ptr noundef %1)
  ret ptr %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @arm_dma_free(ptr noundef %dev, i32 noundef %size, ptr noundef %cpu_addr, i32 noundef %handle, i32 noundef %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__arm_dma_free(ptr noundef %dev, i32 noundef %size, ptr noundef %cpu_addr, i32 noundef %handle, i32 noundef %attrs)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_direct_alloc_pages(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_direct_free_pages(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @arm_dma_mmap(ptr noundef %dev, ptr noundef %vma, ptr noundef %cpu_addr, i32 noundef %dma_addr, i32 noundef %size, i32 noundef %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_page_prot = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %0 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vm_page_prot, align 4
  %and.i = and i32 %attrs, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and1.i = and i32 %1, -61
  %or.i = or i32 %and1.i, 4
  %and2.i = and i32 %1, -573
  %or3.i = or i32 %and2.i, 516
  %cond.i = select i1 %tobool.not.i, i32 %or3.i, i32 %or.i
  %2 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %cond.i, ptr %vm_page_prot, align 4
  %call2 = tail call fastcc i32 @__arm_dma_mmap(ptr noundef %dev, ptr noundef %vma, ptr noundef %cpu_addr, i32 noundef %dma_addr, i32 noundef %size)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @arm_dma_get_sgtable(ptr noundef readonly %dev, ptr noundef %sgt, ptr nocapture readnone %cpu_addr, i32 noundef %handle, i32 noundef %size, i32 %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %entry.dma_to_pfn.exit_crit_edge, label %land.lhs.true.i

entry.dma_to_pfn.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_to_pfn.exit

land.lhs.true.i:                                  ; preds = %entry
  %dma_range_map.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 21
  %0 = ptrtoint ptr %dma_range_map.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_range_map.i, align 8
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.dma_to_pfn.exit_crit_edge, label %if.then.i

land.lhs.true.i.dma_to_pfn.exit_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_to_pfn.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %shl.i = and i32 %handle, -4096
  %size16.i.i = getelementptr inbounds %struct.bus_dma_region, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %size16.i.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %size16.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool.not17.i.i = icmp eq i64 %3, 0
  br i1 %tobool.not17.i.i, label %if.then.i.dma_to_pfn.exit_crit_edge, label %if.then.i.for.body.i.i_crit_edge

if.then.i.for.body.i.i_crit_edge:                 ; preds = %if.then.i
  br label %for.body.i.i

if.then.i.dma_to_pfn.exit_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_to_pfn.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then.i.for.body.i.i_crit_edge
  %4 = phi i64 [ %11, %for.inc.i.i.for.body.i.i_crit_edge ], [ %3, %if.then.i.for.body.i.i_crit_edge ]
  %m.018.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %1, %if.then.i.for.body.i.i_crit_edge ]
  %dma_start.i.i = getelementptr inbounds %struct.bus_dma_region, ptr %m.018.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %dma_start.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dma_start.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %6)
  %cmp.not.i.i = icmp ult i32 %shl.i, %6
  br i1 %cmp.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %sub.i.i = sub i32 %shl.i, %6
  %conv.i.i = zext i32 %sub.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %conv.i.i)
  %cmp3.i.i = icmp ugt i64 %4, %conv.i.i
  br i1 %cmp3.i.i, label %if.then.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %offset.i.i = getelementptr inbounds %struct.bus_dma_region, ptr %m.018.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %offset.i.i, align 8
  %9 = trunc i64 %8 to i32
  %conv6.i.i = add i32 %shl.i, %9
  br label %dma_to_pfn.exit

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %incdec.ptr.i.i = getelementptr %struct.bus_dma_region, ptr %m.018.i.i, i32 1
  %size.i.i = getelementptr %struct.bus_dma_region, ptr %m.018.i.i, i32 1, i32 2
  %10 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %size.i.i, align 8
  %tobool.not.i.i = icmp eq i64 %11, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i.dma_to_pfn.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.inc.i.i.dma_to_pfn.exit_crit_edge:            ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_to_pfn.exit

dma_to_pfn.exit:                                  ; preds = %for.inc.i.i.dma_to_pfn.exit_crit_edge, %if.then.i.i, %if.then.i.dma_to_pfn.exit_crit_edge, %land.lhs.true.i.dma_to_pfn.exit_crit_edge, %entry.dma_to_pfn.exit_crit_edge
  %pfn.0.in.i = phi i32 [ %handle, %land.lhs.true.i.dma_to_pfn.exit_crit_edge ], [ %handle, %entry.dma_to_pfn.exit_crit_edge ], [ %conv6.i.i, %if.then.i.i ], [ -1, %if.then.i.dma_to_pfn.exit_crit_edge ], [ -1, %for.inc.i.i.dma_to_pfn.exit_crit_edge ]
  %pfn.0.i = lshr i32 %pfn.0.in.i, 12
  %call1 = tail call i32 @pfn_valid(i32 noundef %pfn.0.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %dma_to_pfn.exit.cleanup_crit_edge, label %if.end

dma_to_pfn.exit.cleanup_crit_edge:                ; preds = %dma_to_pfn.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %dma_to_pfn.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %12 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %13 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %call2 = tail call i32 @sg_alloc_table(ptr noundef %sgt, i32 noundef 1, i32 noundef 3264) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end7, label %if.end.cleanup_crit_edge, !prof !113

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %sub = sub i32 %pfn.0.i, %13
  %add.ptr = getelementptr %struct.page, ptr %12, i32 %sub
  %14 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sgt, align 4
  %add = add i32 %size, 4095
  %and = and i32 %add, -4096
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %18 = ptrtoint ptr %add.ptr to i32
  %and2.i.i = and i32 %18, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i13 = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i13, label %do.body11.i.i, label %do.body5.i.i, !prof !113

do.body5.i.i:                                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #14, !srcloc !114
  unreachable

do.body11.i.i:                                    ; preds = %if.end7
  %and.i.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !113

do.body19.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #14, !srcloc !115
  unreachable

sg_set_page.exit:                                 ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %and.i.i = and i32 %17, 3
  %or.i.i = or i32 %and.i.i, %18
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or.i.i, ptr %15, align 4
  %offset1.i = getelementptr inbounds %struct.scatterlist, ptr %15, i32 0, i32 1
  %20 = ptrtoint ptr %offset1.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %offset1.i, align 4
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %15, i32 0, i32 2
  %21 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and, ptr %length.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %sg_set_page.exit, %if.end.cleanup_crit_edge, %dma_to_pfn.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sg_set_page.exit ], [ -6, %dma_to_pfn.exit.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_dma_map_page(ptr noundef readonly %dev, ptr noundef %page, i32 noundef %offset, i32 noundef %size, i32 noundef %dir, i32 noundef %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %attrs, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %.pre = ptrtoint ptr %page to i32
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 8), align 4
  tail call fastcc void @dma_cache_maint_page(ptr noundef %page, i32 noundef %offset, i32 noundef %size, i32 noundef %dir, ptr noundef %0) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %1 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %page to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %2 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %sub.ptr.div.i, %2
  %shl.i = shl i32 %add.i, 12
  %add1.i = add i32 %shl.i, %offset
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dir)
  %cmp.i = icmp eq i32 %dir, 2
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @outer_cache to i32))
  %3 = load ptr, ptr @outer_cache, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.then.i.if.end_crit_edge, label %if.then.i.if.end.sink.split.i_crit_edge

if.then.i.if.end.sink.split.i_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.sink.split.i

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.else.i:                                        ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %tobool.not.i12.i = icmp eq ptr %4, null
  br i1 %tobool.not.i12.i, label %if.else.i.if.end_crit_edge, label %if.else.i.if.end.sink.split.i_crit_edge

if.else.i.if.end.sink.split.i_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.sink.split.i

if.else.i.if.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.sink.split.i:                              ; preds = %if.else.i.if.end.sink.split.i_crit_edge, %if.then.i.if.end.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %3, %if.then.i.if.end.sink.split.i_crit_edge ], [ %4, %if.else.i.if.end.sink.split.i_crit_edge ]
  %add3.i = add i32 %add1.i, %size
  tail call void %.sink.i(i32 noundef %add1.i, i32 noundef %add3.i) #14
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split.i, %if.else.i.if.end_crit_edge, %if.then.i.if.end_crit_edge, %entry.if.end_crit_edge
  %sub.ptr.lhs.cast.pre-phi = phi i32 [ %.pre, %entry.if.end_crit_edge ], [ %sub.ptr.lhs.cast.i, %if.end.sink.split.i ], [ %sub.ptr.lhs.cast.i, %if.else.i.if.end_crit_edge ], [ %sub.ptr.lhs.cast.i, %if.then.i.if.end_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %5 = load ptr, ptr @mem_map, align 4
  %sub.ptr.rhs.cast = ptrtoint ptr %5 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast.pre-phi, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %6 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %sub.ptr.div, %6
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %if.end.pfn_to_dma.exit_crit_edge, label %land.lhs.true.i

if.end.pfn_to_dma.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %pfn_to_dma.exit

land.lhs.true.i:                                  ; preds = %if.end
  %dma_range_map.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 21
  %7 = ptrtoint ptr %dma_range_map.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dma_range_map.i, align 8
  %tobool1.not.i = icmp eq ptr %8, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.pfn_to_dma.exit_crit_edge, label %if.then.i5

land.lhs.true.i.pfn_to_dma.exit_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pfn_to_dma.exit

if.then.i5:                                       ; preds = %land.lhs.true.i
  %shl.i4 = shl i32 %add, 12
  %size17.i.i = getelementptr inbounds %struct.bus_dma_region, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %size17.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %size17.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %tobool.not18.i.i = icmp eq i64 %10, 0
  br i1 %tobool.not18.i.i, label %if.then.i5.pfn_to_dma.exit_crit_edge, label %if.then.i5.for.body.i.i_crit_edge

if.then.i5.for.body.i.i_crit_edge:                ; preds = %if.then.i5
  br label %for.body.i.i

if.then.i5.pfn_to_dma.exit_crit_edge:             ; preds = %if.then.i5
  call void @__sanitizer_cov_trace_pc() #16
  br label %pfn_to_dma.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then.i5.for.body.i.i_crit_edge
  %11 = phi i64 [ %18, %for.inc.i.i.for.body.i.i_crit_edge ], [ %10, %if.then.i5.for.body.i.i_crit_edge ]
  %m.019.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %8, %if.then.i5.for.body.i.i_crit_edge ]
  %12 = ptrtoint ptr %m.019.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %m.019.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i4, i32 %13)
  %cmp.not.i.i = icmp ult i32 %shl.i4, %13
  br i1 %cmp.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %sub.i.i = sub i32 %shl.i4, %13
  %conv.i.i = zext i32 %sub.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %conv.i.i)
  %cmp3.i.i = icmp ugt i64 %11, %conv.i.i
  br i1 %cmp3.i.i, label %if.then.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %offset.i.i = getelementptr inbounds %struct.bus_dma_region, ptr %m.019.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %offset.i.i, align 8
  %16 = trunc i64 %15 to i32
  %conv7.i.i = sub i32 %shl.i4, %16
  %phi.bo.i = lshr i32 %conv7.i.i, 12
  br label %pfn_to_dma.exit

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %incdec.ptr.i.i = getelementptr %struct.bus_dma_region, ptr %m.019.i.i, i32 1
  %size.i.i = getelementptr %struct.bus_dma_region, ptr %m.019.i.i, i32 1, i32 2
  %17 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %size.i.i, align 8
  %tobool.not.i.i6 = icmp eq i64 %18, 0
  br i1 %tobool.not.i.i6, label %for.inc.i.i.pfn_to_dma.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.inc.i.i.pfn_to_dma.exit_crit_edge:            ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pfn_to_dma.exit

pfn_to_dma.exit:                                  ; preds = %for.inc.i.i.pfn_to_dma.exit_crit_edge, %if.then.i.i, %if.then.i5.pfn_to_dma.exit_crit_edge, %land.lhs.true.i.pfn_to_dma.exit_crit_edge, %if.end.pfn_to_dma.exit_crit_edge
  %pfn.addr.0.i = phi i32 [ %add, %land.lhs.true.i.pfn_to_dma.exit_crit_edge ], [ %add, %if.end.pfn_to_dma.exit_crit_edge ], [ %phi.bo.i, %if.then.i.i ], [ 1048575, %if.then.i5.pfn_to_dma.exit_crit_edge ], [ 1048575, %for.inc.i.i.pfn_to_dma.exit_crit_edge ]
  %shl2.i = shl i32 %pfn.addr.0.i, 12
  %add1 = add i32 %shl2.i, %offset
  ret i32 %add1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arm_dma_unmap_page(ptr noundef readonly %dev, i32 noundef %handle, i32 noundef %size, i32 noundef %dir, i32 noundef %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %attrs, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %0 = load ptr, ptr @mem_map, align 4
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %if.then.dma_to_pfn.exit_crit_edge, label %land.lhs.true.i

if.then.dma_to_pfn.exit_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_to_pfn.exit

land.lhs.true.i:                                  ; preds = %if.then
  %dma_range_map.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 21
  %1 = ptrtoint ptr %dma_range_map.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dma_range_map.i, align 8
  %tobool1.not.i = icmp eq ptr %2, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.dma_to_pfn.exit_crit_edge, label %if.then.i

land.lhs.true.i.dma_to_pfn.exit_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_to_pfn.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %shl.i = and i32 %handle, -4096
  %size16.i.i = getelementptr inbounds %struct.bus_dma_region, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %size16.i.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %size16.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %tobool.not17.i.i = icmp eq i64 %4, 0
  br i1 %tobool.not17.i.i, label %if.then.i.dma_to_pfn.exit_crit_edge, label %if.then.i.for.body.i.i_crit_edge

if.then.i.for.body.i.i_crit_edge:                 ; preds = %if.then.i
  br label %for.body.i.i

if.then.i.dma_to_pfn.exit_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_to_pfn.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then.i.for.body.i.i_crit_edge
  %5 = phi i64 [ %12, %for.inc.i.i.for.body.i.i_crit_edge ], [ %4, %if.then.i.for.body.i.i_crit_edge ]
  %m.018.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %2, %if.then.i.for.body.i.i_crit_edge ]
  %dma_start.i.i = getelementptr inbounds %struct.bus_dma_region, ptr %m.018.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %dma_start.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_start.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %7)
  %cmp.not.i.i = icmp ult i32 %shl.i, %7
  br i1 %cmp.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %sub.i.i = sub i32 %shl.i, %7
  %conv.i.i = zext i32 %sub.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %conv.i.i)
  %cmp3.i.i = icmp ugt i64 %5, %conv.i.i
  br i1 %cmp3.i.i, label %if.then.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %offset.i.i = getelementptr inbounds %struct.bus_dma_region, ptr %m.018.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %offset.i.i, align 8
  %10 = trunc i64 %9 to i32
  %conv6.i.i = add i32 %shl.i, %10
  br label %dma_to_pfn.exit

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %incdec.ptr.i.i = getelementptr %struct.bus_dma_region, ptr %m.018.i.i, i32 1
  %size.i.i = getelementptr %struct.bus_dma_region, ptr %m.018.i.i, i32 1, i32 2
  %11 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %size.i.i, align 8
  %tobool.not.i.i = icmp eq i64 %12, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i.dma_to_pfn.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.inc.i.i.dma_to_pfn.exit_crit_edge:            ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_to_pfn.exit

dma_to_pfn.exit:                                  ; preds = %for.inc.i.i.dma_to_pfn.exit_crit_edge, %if.then.i.i, %if.then.i.dma_to_pfn.exit_crit_edge, %land.lhs.true.i.dma_to_pfn.exit_crit_edge, %if.then.dma_to_pfn.exit_crit_edge
  %pfn.0.in.i = phi i32 [ %handle, %land.lhs.true.i.dma_to_pfn.exit_crit_edge ], [ %handle, %if.then.dma_to_pfn.exit_crit_edge ], [ %conv6.i.i, %if.then.i.i ], [ -1, %if.then.i.dma_to_pfn.exit_crit_edge ], [ -1, %for.inc.i.i.dma_to_pfn.exit_crit_edge ]
  %pfn.0.i = lshr i32 %pfn.0.in.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %13 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub = sub i32 %pfn.0.i, %13
  %add.ptr = getelementptr %struct.page, ptr %0, i32 %sub
  %and1 = and i32 %handle, 4095
  tail call fastcc void @__dma_page_dev_to_cpu(ptr noundef %add.ptr, i32 noundef %and1, i32 noundef %size, i32 noundef %dir)
  br label %if.end

if.end:                                           ; preds = %dma_to_pfn.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @arm_dma_map_sg(ptr noundef %dev, ptr noundef %sg, i32 noundef %nents, i32 noundef %dir, i32 noundef %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_ops.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %dma_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_ops.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %spec.select.i = select i1 %tobool.not.i, ptr @arm_dma_ops, ptr %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nents)
  %cmp44 = icmp sgt i32 %nents, 0
  br i1 %cmp44, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %map_page = getelementptr inbounds %struct.dma_map_ops, ptr %spec.select.i, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.046 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %s.045 = phi ptr [ %sg, %for.body.lr.ph ], [ %call6, %for.inc.for.body_crit_edge ]
  %length = getelementptr inbounds %struct.scatterlist, ptr %s.045, i32 0, i32 2
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length, align 4
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %s.045, i32 0, i32 4
  %4 = ptrtoint ptr %dma_length to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %dma_length, align 4
  %5 = ptrtoint ptr %s.045 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s.045, align 4
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !113

do.body2.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #14, !srcloc !116
  unreachable

sg_page.exit:                                     ; preds = %for.body
  %7 = ptrtoint ptr %map_page to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %map_page, align 4
  %and.i = and i32 %6, -4
  %9 = inttoptr i32 %and.i to ptr
  %offset = getelementptr inbounds %struct.scatterlist, ptr %s.045, i32 0, i32 1
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset, align 4
  %call3 = tail call i32 %8(ptr noundef %dev, ptr noundef %9, i32 noundef %11, i32 noundef %3, i32 noundef %dir, i32 noundef %attrs) #14
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %s.045, i32 0, i32 3
  %12 = ptrtoint ptr %dma_address to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call3, ptr %dma_address, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef %call3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3)
  %cmp.i.not = icmp eq i32 %call3, -1
  br i1 %cmp.i.not, label %for.cond7.preheader, label %for.inc

for.cond7.preheader:                              ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.046)
  %cmp847.not = icmp eq i32 %i.046, 0
  br i1 %cmp847.not, label %for.cond7.preheader.cleanup_crit_edge, label %for.body9.lr.ph

for.cond7.preheader.cleanup_crit_edge:            ; preds = %for.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body9.lr.ph:                                  ; preds = %for.cond7.preheader
  %unmap_page = getelementptr inbounds %struct.dma_map_ops, ptr %spec.select.i, i32 0, i32 9
  br label %for.body9

for.inc:                                          ; preds = %sg_page.exit
  %inc = add nuw nsw i32 %i.046, 1
  %call6 = tail call ptr @sg_next(ptr noundef %s.045) #14
  %exitcond.not = icmp eq i32 %inc, %nents
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body9:                                        ; preds = %for.body9.for.body9_crit_edge, %for.body9.lr.ph
  %j.049 = phi i32 [ 0, %for.body9.lr.ph ], [ %inc13, %for.body9.for.body9_crit_edge ]
  %s.148 = phi ptr [ %sg, %for.body9.lr.ph ], [ %call14, %for.body9.for.body9_crit_edge ]
  %13 = ptrtoint ptr %unmap_page to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %unmap_page, align 4
  %dma_address10 = getelementptr inbounds %struct.scatterlist, ptr %s.148, i32 0, i32 3
  %15 = ptrtoint ptr %dma_address10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma_address10, align 4
  %dma_length11 = getelementptr inbounds %struct.scatterlist, ptr %s.148, i32 0, i32 4
  %17 = ptrtoint ptr %dma_length11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dma_length11, align 4
  tail call void %14(ptr noundef %dev, i32 noundef %16, i32 noundef %18, i32 noundef %dir, i32 noundef %attrs) #14
  %inc13 = add nuw nsw i32 %j.049, 1
  %call14 = tail call ptr @sg_next(ptr noundef %s.148) #14
  %exitcond53.not = icmp eq i32 %inc13, %i.046
  br i1 %exitcond53.not, label %for.body9.cleanup_crit_edge, label %for.body9.for.body9_crit_edge

for.body9.for.body9_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body9

for.body9.cleanup_crit_edge:                      ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.body9.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %for.cond7.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %for.cond7.preheader.cleanup_crit_edge ], [ %nents, %entry.cleanup_crit_edge ], [ -5, %for.body9.cleanup_crit_edge ], [ %nents, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @arm_dma_unmap_sg(ptr noundef %dev, ptr noundef %sg, i32 noundef %nents, i32 noundef %dir, i32 noundef %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nents)
  %cmp6 = icmp sgt i32 %nents, 0
  br i1 %cmp6, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dma_ops.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %dma_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_ops.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %spec.select.i = select i1 %tobool.not.i, ptr @arm_dma_ops, ptr %1
  %unmap_page = getelementptr inbounds %struct.dma_map_ops, ptr %spec.select.i, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.08 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %s.07 = phi ptr [ %sg, %for.body.lr.ph ], [ %call1, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %unmap_page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %unmap_page, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %s.07, i32 0, i32 3
  %4 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_address, align 4
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %s.07, i32 0, i32 4
  %6 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_length, align 4
  tail call void %3(ptr noundef %dev, i32 noundef %5, i32 noundef %7, i32 noundef %dir, i32 noundef %attrs) #14
  %inc = add nuw nsw i32 %i.08, 1
  %call1 = tail call ptr @sg_next(ptr noundef %s.07) #14
  %exitcond.not = icmp eq i32 %inc, %nents
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_direct_map_resource(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arm_dma_sync_single_for_cpu(ptr noundef readonly %dev, i32 noundef %handle, i32 noundef %size, i32 noundef %dir) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %0 = load ptr, ptr @mem_map, align 4
  %sub = and i32 %handle, -4096
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %entry.dma_to_pfn.exit_crit_edge, label %land.lhs.true.i

entry.dma_to_pfn.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_to_pfn.exit

land.lhs.true.i:                                  ; preds = %entry
  %dma_range_map.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 21
  %1 = ptrtoint ptr %dma_range_map.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dma_range_map.i, align 8
  %tobool1.not.i = icmp eq ptr %2, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.dma_to_pfn.exit_crit_edge, label %if.then.i

land.lhs.true.i.dma_to_pfn.exit_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_to_pfn.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %size16.i.i = getelementptr inbounds %struct.bus_dma_region, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %size16.i.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %size16.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %tobool.not17.i.i = icmp eq i64 %4, 0
  br i1 %tobool.not17.i.i, label %if.then.i.dma_to_pfn.exit_crit_edge, label %if.then.i.for.body.i.i_crit_edge

if.then.i.for.body.i.i_crit_edge:                 ; preds = %if.then.i
  br label %for.body.i.i

if.then.i.dma_to_pfn.exit_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_to_pfn.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then.i.for.body.i.i_crit_edge
  %5 = phi i64 [ %12, %for.inc.i.i.for.body.i.i_crit_edge ], [ %4, %if.then.i.for.body.i.i_crit_edge ]
  %m.018.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %2, %if.then.i.for.body.i.i_crit_edge ]
  %dma_start.i.i = getelementptr inbounds %struct.bus_dma_region, ptr %m.018.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %dma_start.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_start.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %7)
  %cmp.not.i.i = icmp ult i32 %sub, %7
  br i1 %cmp.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %sub.i.i = sub i32 %sub, %7
  %conv.i.i = zext i32 %sub.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %conv.i.i)
  %cmp3.i.i = icmp ugt i64 %5, %conv.i.i
  br i1 %cmp3.i.i, label %if.then.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %offset.i.i = getelementptr inbounds %struct.bus_dma_region, ptr %m.018.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %offset.i.i, align 8
  %10 = trunc i64 %9 to i32
  %conv6.i.i = add i32 %sub, %10
  br label %dma_to_pfn.exit

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %incdec.ptr.i.i = getelementptr %struct.bus_dma_region, ptr %m.018.i.i, i32 1
  %size.i.i = getelementptr %struct.bus_dma_region, ptr %m.018.i.i, i32 1, i32 2
  %11 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %size.i.i, align 8
  %tobool.not.i.i = icmp eq i64 %12, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i.dma_to_pfn.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.inc.i.i.dma_to_pfn.exit_crit_edge:            ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_to_pfn.exit

dma_to_pfn.exit:                                  ; preds = %for.inc.i.i.dma_to_pfn.exit_crit_edge, %if.then.i.i, %if.then.i.dma_to_pfn.exit_crit_edge, %land.lhs.true.i.dma_to_pfn.exit_crit_edge, %entry.dma_to_pfn.exit_crit_edge
  %pfn.0.in.i = phi i32 [ %sub, %land.lhs.true.i.dma_to_pfn.exit_crit_edge ], [ %sub, %entry.dma_to_pfn.exit_crit_edge ], [ %conv6.i.i, %if.then.i.i ], [ -1, %if.then.i.dma_to_pfn.exit_crit_edge ], [ -1, %for.inc.i.i.dma_to_pfn.exit_crit_edge ]
  %and = and i32 %handle, 4095
  %pfn.0.i = lshr i32 %pfn.0.in.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %13 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub1 = sub i32 %pfn.0.i, %13
  %add.ptr = getelementptr %struct.page, ptr %0, i32 %sub1
  tail call fastcc void @__dma_page_dev_to_cpu(ptr noundef %add.ptr, i32 noundef %and, i32 noundef %size, i32 noundef %dir)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arm_dma_sync_single_for_device(ptr noundef readonly %dev, i32 noundef %handle, i32 noundef %size, i32 noundef %dir) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %handle, 4095
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %0 = load ptr, ptr @mem_map, align 4
  %sub = and i32 %handle, -4096
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %entry.dma_to_pfn.exit_crit_edge, label %land.lhs.true.i

entry.dma_to_pfn.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_to_pfn.exit

land.lhs.true.i:                                  ; preds = %entry
  %dma_range_map.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 21
  %1 = ptrtoint ptr %dma_range_map.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dma_range_map.i, align 8
  %tobool1.not.i = icmp eq ptr %2, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.dma_to_pfn.exit_crit_edge, label %if.then.i

land.lhs.true.i.dma_to_pfn.exit_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_to_pfn.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %size16.i.i = getelementptr inbounds %struct.bus_dma_region, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %size16.i.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %size16.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %tobool.not17.i.i = icmp eq i64 %4, 0
  br i1 %tobool.not17.i.i, label %if.then.i.dma_to_pfn.exit_crit_edge, label %if.then.i.for.body.i.i_crit_edge

if.then.i.for.body.i.i_crit_edge:                 ; preds = %if.then.i
  br label %for.body.i.i

if.then.i.dma_to_pfn.exit_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_to_pfn.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then.i.for.body.i.i_crit_edge
  %5 = phi i64 [ %12, %for.inc.i.i.for.body.i.i_crit_edge ], [ %4, %if.then.i.for.body.i.i_crit_edge ]
  %m.018.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %2, %if.then.i.for.body.i.i_crit_edge ]
  %dma_start.i.i = getelementptr inbounds %struct.bus_dma_region, ptr %m.018.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %dma_start.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_start.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %7)
  %cmp.not.i.i = icmp ult i32 %sub, %7
  br i1 %cmp.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %sub.i.i = sub i32 %sub, %7
  %conv.i.i = zext i32 %sub.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %conv.i.i)
  %cmp3.i.i = icmp ugt i64 %5, %conv.i.i
  br i1 %cmp3.i.i, label %if.then.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %offset.i.i = getelementptr inbounds %struct.bus_dma_region, ptr %m.018.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %offset.i.i, align 8
  %10 = trunc i64 %9 to i32
  %conv6.i.i = add i32 %sub, %10
  br label %dma_to_pfn.exit

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %incdec.ptr.i.i = getelementptr %struct.bus_dma_region, ptr %m.018.i.i, i32 1
  %size.i.i = getelementptr %struct.bus_dma_region, ptr %m.018.i.i, i32 1, i32 2
  %11 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %size.i.i, align 8
  %tobool.not.i.i = icmp eq i64 %12, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i.dma_to_pfn.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.inc.i.i.dma_to_pfn.exit_crit_edge:            ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_to_pfn.exit

dma_to_pfn.exit:                                  ; preds = %for.inc.i.i.dma_to_pfn.exit_crit_edge, %if.then.i.i, %if.then.i.dma_to_pfn.exit_crit_edge, %land.lhs.true.i.dma_to_pfn.exit_crit_edge, %entry.dma_to_pfn.exit_crit_edge
  %pfn.0.in.i = phi i32 [ %sub, %land.lhs.true.i.dma_to_pfn.exit_crit_edge ], [ %sub, %entry.dma_to_pfn.exit_crit_edge ], [ %conv6.i.i, %if.then.i.i ], [ -1, %if.then.i.dma_to_pfn.exit_crit_edge ], [ -1, %for.inc.i.i.dma_to_pfn.exit_crit_edge ]
  %pfn.0.i = lshr i32 %pfn.0.in.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %13 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub1 = sub i32 %pfn.0.i, %13
  %add.ptr = getelementptr %struct.page, ptr %0, i32 %sub1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 8) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 8), align 4
  tail call fastcc void @dma_cache_maint_page(ptr noundef %add.ptr, i32 noundef %and, i32 noundef %size, i32 noundef %dir, ptr noundef %14) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %15 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %16 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %sub.ptr.div.i, %16
  %shl.i = shl i32 %add.i, 12
  %add1.i = or i32 %shl.i, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dir)
  %cmp.i = icmp eq i32 %dir, 2
  br i1 %cmp.i, label %if.then.i5, label %if.else.i

if.then.i5:                                       ; preds = %dma_to_pfn.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @outer_cache to i32))
  %17 = load ptr, ptr @outer_cache, align 4
  %tobool.not.i.i4 = icmp eq ptr %17, null
  br i1 %tobool.not.i.i4, label %if.then.i5.__dma_page_cpu_to_dev.exit_crit_edge, label %if.then.i5.if.end.sink.split.i_crit_edge

if.then.i5.if.end.sink.split.i_crit_edge:         ; preds = %if.then.i5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.sink.split.i

if.then.i5.__dma_page_cpu_to_dev.exit_crit_edge:  ; preds = %if.then.i5
  call void @__sanitizer_cov_trace_pc() #16
  br label %__dma_page_cpu_to_dev.exit

if.else.i:                                        ; preds = %dma_to_pfn.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %tobool.not.i12.i = icmp eq ptr %18, null
  br i1 %tobool.not.i12.i, label %if.else.i.__dma_page_cpu_to_dev.exit_crit_edge, label %if.else.i.if.end.sink.split.i_crit_edge

if.else.i.if.end.sink.split.i_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.sink.split.i

if.else.i.__dma_page_cpu_to_dev.exit_crit_edge:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__dma_page_cpu_to_dev.exit

if.end.sink.split.i:                              ; preds = %if.else.i.if.end.sink.split.i_crit_edge, %if.then.i5.if.end.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %17, %if.then.i5.if.end.sink.split.i_crit_edge ], [ %18, %if.else.i.if.end.sink.split.i_crit_edge ]
  %add3.i = add i32 %add1.i, %size
  tail call void %.sink.i(i32 noundef %add1.i, i32 noundef %add3.i) #14
  br label %__dma_page_cpu_to_dev.exit

__dma_page_cpu_to_dev.exit:                       ; preds = %if.end.sink.split.i, %if.else.i.__dma_page_cpu_to_dev.exit_crit_edge, %if.then.i5.__dma_page_cpu_to_dev.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @arm_dma_sync_sg_for_cpu(ptr noundef %dev, ptr noundef %sg, i32 noundef %nents, i32 noundef %dir) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nents)
  %cmp6 = icmp sgt i32 %nents, 0
  br i1 %cmp6, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dma_ops.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %dma_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_ops.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %spec.select.i = select i1 %tobool.not.i, ptr @arm_dma_ops, ptr %1
  %sync_single_for_cpu = getelementptr inbounds %struct.dma_map_ops, ptr %spec.select.i, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.08 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %s.07 = phi ptr [ %sg, %for.body.lr.ph ], [ %call1, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %sync_single_for_cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sync_single_for_cpu, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %s.07, i32 0, i32 3
  %4 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_address, align 4
  %length = getelementptr inbounds %struct.scatterlist, ptr %s.07, i32 0, i32 2
  %6 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length, align 4
  tail call void %3(ptr noundef %dev, i32 noundef %5, i32 noundef %7, i32 noundef %dir) #14
  %inc = add nuw nsw i32 %i.08, 1
  %call1 = tail call ptr @sg_next(ptr noundef %s.07) #14
  %exitcond.not = icmp eq i32 %inc, %nents
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @arm_dma_sync_sg_for_device(ptr noundef %dev, ptr noundef %sg, i32 noundef %nents, i32 noundef %dir) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nents)
  %cmp6 = icmp sgt i32 %nents, 0
  br i1 %cmp6, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dma_ops.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %dma_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_ops.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %spec.select.i = select i1 %tobool.not.i, ptr @arm_dma_ops, ptr %1
  %sync_single_for_device = getelementptr inbounds %struct.dma_map_ops, ptr %spec.select.i, i32 0, i32 15
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.08 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %s.07 = phi ptr [ %sg, %for.body.lr.ph ], [ %call1, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %sync_single_for_device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sync_single_for_device, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %s.07, i32 0, i32 3
  %4 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_address, align 4
  %length = getelementptr inbounds %struct.scatterlist, ptr %s.07, i32 0, i32 2
  %6 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length, align 4
  tail call void %3(ptr noundef %dev, i32 noundef %5, i32 noundef %7, i32 noundef %dir) #14
  %inc = add nuw nsw i32 %i.08, 1
  %call1 = tail call ptr @sg_next(ptr noundef %s.07) #14
  %exitcond.not = icmp eq i32 %inc, %nents
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_dma_supported(ptr noundef readonly %dev, i64 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @max_pfn to i32))
  %0 = load i32, ptr @max_pfn, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arm_dma_pfn_limit to i32))
  %1 = load i32, ptr @arm_dma_pfn_limit, align 4
  %conv = trunc i64 %mask to i32
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %entry.dma_to_pfn.exit_crit_edge, label %land.lhs.true.i

entry.dma_to_pfn.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_to_pfn.exit

land.lhs.true.i:                                  ; preds = %entry
  %dma_range_map.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 21
  %2 = ptrtoint ptr %dma_range_map.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_range_map.i, align 8
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.dma_to_pfn.exit_crit_edge, label %if.then.i

land.lhs.true.i.dma_to_pfn.exit_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_to_pfn.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %shl.i = and i32 %conv, -4096
  %size16.i.i = getelementptr inbounds %struct.bus_dma_region, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %size16.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %size16.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool.not17.i.i = icmp eq i64 %5, 0
  br i1 %tobool.not17.i.i, label %if.then.i.dma_to_pfn.exit_crit_edge, label %if.then.i.for.body.i.i_crit_edge

if.then.i.for.body.i.i_crit_edge:                 ; preds = %if.then.i
  br label %for.body.i.i

if.then.i.dma_to_pfn.exit_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_to_pfn.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then.i.for.body.i.i_crit_edge
  %6 = phi i64 [ %13, %for.inc.i.i.for.body.i.i_crit_edge ], [ %5, %if.then.i.for.body.i.i_crit_edge ]
  %m.018.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %3, %if.then.i.for.body.i.i_crit_edge ]
  %dma_start.i.i = getelementptr inbounds %struct.bus_dma_region, ptr %m.018.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %dma_start.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dma_start.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %8)
  %cmp.not.i.i = icmp ult i32 %shl.i, %8
  br i1 %cmp.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %sub.i.i = sub i32 %shl.i, %8
  %conv.i.i = zext i32 %sub.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %conv.i.i)
  %cmp3.i.i = icmp ugt i64 %6, %conv.i.i
  br i1 %cmp3.i.i, label %if.then.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %offset.i.i = getelementptr inbounds %struct.bus_dma_region, ptr %m.018.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %offset.i.i, align 8
  %11 = trunc i64 %10 to i32
  %conv6.i.i = add i32 %shl.i, %11
  br label %dma_to_pfn.exit

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %incdec.ptr.i.i = getelementptr %struct.bus_dma_region, ptr %m.018.i.i, i32 1
  %size.i.i = getelementptr %struct.bus_dma_region, ptr %m.018.i.i, i32 1, i32 2
  %12 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %size.i.i, align 8
  %tobool.not.i.i = icmp eq i64 %13, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i.dma_to_pfn.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.inc.i.i.dma_to_pfn.exit_crit_edge:            ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_to_pfn.exit

dma_to_pfn.exit:                                  ; preds = %for.inc.i.i.dma_to_pfn.exit_crit_edge, %if.then.i.i, %if.then.i.dma_to_pfn.exit_crit_edge, %land.lhs.true.i.dma_to_pfn.exit_crit_edge, %entry.dma_to_pfn.exit_crit_edge
  %pfn.0.in.i = phi i32 [ %conv, %land.lhs.true.i.dma_to_pfn.exit_crit_edge ], [ %conv, %entry.dma_to_pfn.exit_crit_edge ], [ %conv6.i.i, %if.then.i.i ], [ -1, %if.then.i.dma_to_pfn.exit_crit_edge ], [ -1, %for.inc.i.i.dma_to_pfn.exit_crit_edge ]
  %sub = add i32 %0, -1
  %14 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %1)
  %pfn.0.i = lshr i32 %pfn.0.in.i, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %pfn.0.i, i32 %14)
  %cmp1 = icmp uge i32 %pfn.0.i, %14
  %conv2 = zext i1 %cmp1 to i32
  ret i32 %conv2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dma_direct_get_required_mask(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @arm_coherent_dma_alloc(ptr noundef %dev, i32 noundef %size, ptr nocapture noundef writeonly %handle, i32 noundef %gfp, i32 noundef %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %0 = load i32, ptr @pgprot_kernel, align 4
  %or = or i32 %0, 512
  %1 = tail call ptr @llvm.returnaddress(i32 0)
  %call = tail call fastcc ptr @__dma_alloc(ptr noundef %dev, i32 noundef %size, ptr noundef %handle, i32 noundef %gfp, i32 noundef %or, i1 noundef zeroext true, i32 noundef %attrs, ptr noundef %1)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arm_coherent_dma_free(ptr noundef %dev, i32 noundef %size, ptr noundef %cpu_addr, i32 noundef %handle, i32 noundef %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__arm_dma_free(ptr noundef %dev, i32 noundef %size, ptr noundef %cpu_addr, i32 noundef %handle, i32 noundef %attrs)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_coherent_dma_mmap(ptr noundef %dev, ptr noundef %vma, ptr noundef %cpu_addr, i32 noundef %dma_addr, i32 noundef %size, i32 noundef %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__arm_dma_mmap(ptr noundef %dev, ptr noundef %vma, ptr noundef %cpu_addr, i32 noundef %dma_addr, i32 noundef %size)
  ret i32 %call
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_coherent_dma_map_page(ptr noundef readonly %dev, ptr noundef %page, i32 noundef %offset, i32 noundef %size, i32 noundef %dir, i32 noundef %attrs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %0 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %page to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %0 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %1 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %sub.ptr.div, %1
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %entry.pfn_to_dma.exit_crit_edge, label %land.lhs.true.i

entry.pfn_to_dma.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %pfn_to_dma.exit

land.lhs.true.i:                                  ; preds = %entry
  %dma_range_map.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 21
  %2 = ptrtoint ptr %dma_range_map.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_range_map.i, align 8
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.pfn_to_dma.exit_crit_edge, label %if.then.i

land.lhs.true.i.pfn_to_dma.exit_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pfn_to_dma.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %shl.i = shl i32 %add, 12
  %size17.i.i = getelementptr inbounds %struct.bus_dma_region, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %size17.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %size17.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool.not18.i.i = icmp eq i64 %5, 0
  br i1 %tobool.not18.i.i, label %if.then.i.pfn_to_dma.exit_crit_edge, label %if.then.i.for.body.i.i_crit_edge

if.then.i.for.body.i.i_crit_edge:                 ; preds = %if.then.i
  br label %for.body.i.i

if.then.i.pfn_to_dma.exit_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pfn_to_dma.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then.i.for.body.i.i_crit_edge
  %6 = phi i64 [ %13, %for.inc.i.i.for.body.i.i_crit_edge ], [ %5, %if.then.i.for.body.i.i_crit_edge ]
  %m.019.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %3, %if.then.i.for.body.i.i_crit_edge ]
  %7 = ptrtoint ptr %m.019.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %m.019.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %8)
  %cmp.not.i.i = icmp ult i32 %shl.i, %8
  br i1 %cmp.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %sub.i.i = sub i32 %shl.i, %8
  %conv.i.i = zext i32 %sub.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %conv.i.i)
  %cmp3.i.i = icmp ugt i64 %6, %conv.i.i
  br i1 %cmp3.i.i, label %if.then.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %offset.i.i = getelementptr inbounds %struct.bus_dma_region, ptr %m.019.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %offset.i.i, align 8
  %11 = trunc i64 %10 to i32
  %conv7.i.i = sub i32 %shl.i, %11
  %phi.bo.i = lshr i32 %conv7.i.i, 12
  br label %pfn_to_dma.exit

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %incdec.ptr.i.i = getelementptr %struct.bus_dma_region, ptr %m.019.i.i, i32 1
  %size.i.i = getelementptr %struct.bus_dma_region, ptr %m.019.i.i, i32 1, i32 2
  %12 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %size.i.i, align 8
  %tobool.not.i.i = icmp eq i64 %13, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i.pfn_to_dma.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.inc.i.i.pfn_to_dma.exit_crit_edge:            ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pfn_to_dma.exit

pfn_to_dma.exit:                                  ; preds = %for.inc.i.i.pfn_to_dma.exit_crit_edge, %if.then.i.i, %if.then.i.pfn_to_dma.exit_crit_edge, %land.lhs.true.i.pfn_to_dma.exit_crit_edge, %entry.pfn_to_dma.exit_crit_edge
  %pfn.addr.0.i = phi i32 [ %add, %land.lhs.true.i.pfn_to_dma.exit_crit_edge ], [ %add, %entry.pfn_to_dma.exit_crit_edge ], [ %phi.bo.i, %if.then.i.i ], [ 1048575, %if.then.i.pfn_to_dma.exit_crit_edge ], [ 1048575, %for.inc.i.i.pfn_to_dma.exit_crit_edge ]
  %shl2.i = shl i32 %pfn.addr.0.i, 12
  %add1 = add i32 %shl2.i, %offset
  ret i32 %add1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @early_coherent_pool(ptr noundef %p) #3 section ".init.text" align 64 {
entry:
  %p.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %p, ptr %p.addr, align 4
  %call = call i64 @memparse(ptr noundef %p, ptr noundef nonnull %p.addr) #14
  %conv = trunc i64 %call to i32
  store i32 %conv, ptr @atomic_pool_size, align 4
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @atomic_pool_init() #3 section ".init.text" align 64 {
entry:
  %page = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %0 = load i32, ptr @pgprot_kernel, align 4
  %or = and i32 %0, -573
  %or1 = or i32 %or, 516
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page) #14
  %1 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %page, align 4, !annotation !117
  %call = tail call ptr @gen_pool_create(i32 noundef 12, i32 noundef -1) #14
  store ptr %call, ptr @atomic_pool, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup22_crit_edge, label %if.end

entry.cleanup22_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup22

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dma_contiguous_default_area to i32))
  %2 = load ptr, ptr @dma_contiguous_default_area, align 4
  %tobool3.not = icmp eq ptr %2, null
  %3 = load i32, ptr @atomic_pool_size, align 4
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call5 = call fastcc ptr @__alloc_from_contiguous(ptr noundef null, i32 noundef %3, i32 noundef %or1, ptr noundef nonnull %page, ptr noundef nonnull @atomic_pool_init, i1 noundef zeroext true, i32 noundef 0, i32 noundef 3264)
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call6 = call fastcc ptr @__alloc_remap_buffer(i32 noundef %3, i32 noundef 3265, i32 noundef %or1, ptr noundef nonnull %page, ptr noundef nonnull @atomic_pool_init, i1 noundef zeroext true)
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then4
  %ptr.0 = phi ptr [ %call5, %if.then4 ], [ %call6, %if.else ]
  %tobool8.not = icmp eq ptr %ptr.0, null
  br i1 %tobool8.not, label %if.end7.destroy_genpool_crit_edge, label %if.then9

if.end7.destroy_genpool_crit_edge:                ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %destroy_genpool

if.then9:                                         ; preds = %if.end7
  %4 = load ptr, ptr @atomic_pool, align 4
  %5 = ptrtoint ptr %ptr.0 to i32
  %6 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %page, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %8 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %8 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %9 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %sub.ptr.div, %9
  %shl = shl i32 %add, 12
  %10 = load i32, ptr @atomic_pool_size, align 4
  %call.i = tail call i32 @gen_pool_add_owner(ptr noundef %4, i32 noundef %5, i32 noundef %shl, i32 noundef %10, i32 noundef -1, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not = icmp eq i32 %call.i, 0
  br i1 %tobool11.not, label %if.end13, label %if.then9.destroy_genpool_crit_edge

if.then9.destroy_genpool_crit_edge:               ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #16
  br label %destroy_genpool

if.end13:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #16
  %11 = load ptr, ptr @atomic_pool, align 4
  tail call void @gen_pool_set_algo(ptr noundef %11, ptr noundef nonnull @gen_pool_first_fit_order_align, ptr noundef null) #14
  br label %cleanup22

destroy_genpool:                                  ; preds = %if.then9.destroy_genpool_crit_edge, %if.end7.destroy_genpool_crit_edge
  %12 = load ptr, ptr @atomic_pool, align 4
  tail call void @gen_pool_destroy(ptr noundef %12) #14
  store ptr null, ptr @atomic_pool, align 4
  br label %cleanup22

cleanup22:                                        ; preds = %destroy_genpool, %if.end13, %entry.cleanup22_crit_edge
  %.str.8.sink = phi ptr [ @.str.8, %if.end13 ], [ @.str.11, %destroy_genpool ], [ @.str.11, %entry.cleanup22_crit_edge ]
  %retval.1 = phi i32 [ 0, %if.end13 ], [ -12, %destroy_genpool ], [ -12, %entry.cleanup22_crit_edge ]
  %13 = load i32, ptr @atomic_pool_size, align 4
  %div29 = lshr i32 %13, 10
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.8.sink, i32 noundef %div29) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page) #14
  ret i32 %retval.1
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @dma_contiguous_early_fixup(i32 noundef %base, i32 noundef %size) local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @dma_mmu_remap_num, align 4
  %arrayidx = getelementptr [8 x %struct.dma_contig_early_reserve], ptr @dma_mmu_remap, i32 0, i32 %0
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %base, ptr %arrayidx, align 4
  %size3 = getelementptr [8 x %struct.dma_contig_early_reserve], ptr @dma_mmu_remap, i32 0, i32 %0, i32 1
  %2 = ptrtoint ptr %size3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %size, ptr %size3, align 4
  %inc = add i32 %0, 1
  store i32 %inc, ptr @dma_mmu_remap_num, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @dma_contiguous_remap() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  %map = alloca %struct.map_desc, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @dma_mmu_remap_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp48 = icmp sgt i32 %0, 0
  br i1 %cmp48, label %for.body.lr.ph, label %entry.for.end23_crit_edge

entry.for.end23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end23

for.body.lr.ph:                                   ; preds = %entry
  %1 = getelementptr inbounds %struct.map_desc, ptr %map, i32 0, i32 1
  %2 = getelementptr inbounds %struct.map_desc, ptr %map, i32 0, i32 2
  %3 = getelementptr inbounds %struct.map_desc, ptr %map, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.049 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x %struct.dma_contig_early_reserve], ptr @dma_mmu_remap, i32 0, i32 %i.049
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %size = getelementptr [8 x %struct.dma_contig_early_reserve], ptr @dma_mmu_remap, i32 0, i32 %i.049, i32 1
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  %add = add i32 %7, %5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %map) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arm_lowmem_limit to i32))
  %8 = load i32, ptr @arm_lowmem_limit, align 4
  %9 = call i32 @llvm.umin.i32(i32 %add, i32 %8)
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %5)
  %cmp3.not = icmp ugt i32 %9, %5
  br i1 %cmp3.not, label %if.end5, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %for.body
  %shr = lshr i32 %5, 12
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %shr, ptr %1, align 4
  %11 = call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %5, i32 -2130706432, i32 8454144) #18, !srcloc !118
  %12 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %map, align 4
  %sub = sub i32 %9, %5
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub, ptr %2, align 4
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 16, ptr %3, align 4
  %15 = call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %9, i32 -2130706432, i32 8454144) #18, !srcloc !118
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %15)
  %cmp946 = icmp ult i32 %11, %15
  br i1 %cmp946, label %if.end5.do.body_crit_edge, label %if.end5.for.end_crit_edge

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end5.do.body_crit_edge:                        ; preds = %if.end5
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.end5.do.body_crit_edge
  %addr.047 = phi i32 [ %add16, %do.body.do.body_crit_edge ], [ %11, %if.end5.do.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %shr.i.i = lshr i32 %addr.047, 21
  %add.ptr.i.i = getelementptr [2 x i32], ptr %16, i32 %shr.i.i
  %17 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %add.ptr.i.i, align 4
  %18 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %arrayidx14 = getelementptr [2 x i32], ptr %18, i32 %shr.i.i, i32 1
  %19 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %arrayidx14, align 4
  %20 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %add.ptr.i.i45 = getelementptr [2 x i32], ptr %20, i32 %shr.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %21 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c7, c10, 1\09@ flush_pmd", "r,r,Ir,~{cc}"(ptr %add.ptr.i.i45, i32 %21, i32 1073741824) #14, !srcloc !119
  %add16 = add i32 %addr.047, 2097152
  %cmp9 = icmp ult i32 %add16, %15
  br i1 %cmp9, label %do.body.do.body_crit_edge, label %do.body.for.end_crit_edge

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

for.end:                                          ; preds = %do.body.for.end_crit_edge, %if.end5.for.end_crit_edge
  call void @flush_tlb_kernel_range(i32 noundef %11, i32 noundef %15) #14
  call void @iotable_init(ptr noundef nonnull %map, i32 noundef 1) #14
  br label %cleanup

cleanup:                                          ; preds = %for.end, %for.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %map) #14
  %inc = add nuw nsw i32 %i.049, 1
  %22 = load i32, ptr @dma_mmu_remap_num, align 4
  %cmp = icmp slt i32 %inc, %22
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end23_crit_edge

cleanup.for.end23_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end23

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end23:                                        ; preds = %cleanup.for.end23_crit_edge, %entry.for.end23_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_tlb_kernel_range(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iotable_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__dma_alloc(ptr noundef %dev, i32 noundef %size, ptr nocapture noundef writeonly %handle, i32 noundef %gfp, i32 noundef %prot, i1 noundef zeroext %is_coherent, i32 noundef %attrs, ptr noundef %caller) unnamed_addr #0 align 64 {
entry:
  %page = alloca ptr, align 4
  %args = alloca %struct.arm_dma_alloc_args, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %coherent_dma_mask = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %coherent_dma_mask to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %coherent_dma_mask, align 8
  %bus_dma_limit = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 20
  %2 = ptrtoint ptr %bus_dma_limit to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %bus_dma_limit, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp = icmp eq i64 %1, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp1 = icmp eq i64 %3, 0
  %4 = tail call i64 @llvm.umin.i64(i64 %1, i64 %3)
  %spec.select = select i1 %cmp1, i64 %1, i64 %4
  %cond11 = select i1 %cmp, i64 %3, i64 %spec.select
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page) #14
  %5 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %page, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %args) #14
  %6 = getelementptr inbounds i8, ptr %args, i32 20
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4
  %8 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %args, align 4
  %size13 = getelementptr inbounds %struct.arm_dma_alloc_args, ptr %args, i32 0, i32 1
  %add = add i32 %size, 4095
  %and = and i32 %add, -4096
  %9 = ptrtoint ptr %size13 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and, ptr %size13, align 4
  %gfp14 = getelementptr inbounds %struct.arm_dma_alloc_args, ptr %args, i32 0, i32 2
  %prot15 = getelementptr inbounds %struct.arm_dma_alloc_args, ptr %args, i32 0, i32 3
  %10 = ptrtoint ptr %prot15 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %prot, ptr %prot15, align 4
  %caller16 = getelementptr inbounds %struct.arm_dma_alloc_args, ptr %args, i32 0, i32 4
  %11 = ptrtoint ptr %caller16 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %caller, ptr %caller16, align 4
  %want_vaddr = getelementptr inbounds %struct.arm_dma_alloc_args, ptr %args, i32 0, i32 5
  %12 = trunc i32 %attrs to i8
  %13 = lshr i8 %12, 4
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = ptrtoint ptr %want_vaddr to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %want_vaddr, align 4
  %coherent_flag = getelementptr inbounds %struct.arm_dma_alloc_args, ptr %args, i32 0, i32 6
  %cond20 = zext i1 %is_coherent to i32
  %17 = ptrtoint ptr %coherent_flag to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond20, ptr %coherent_flag, align 4
  %add21 = add i64 %cond11, 1
  %neg = xor i64 %cond11, -1
  %and22 = and i64 %add21, %neg
  %conv = zext i32 %size to i64
  %18 = add i64 %and22, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %18, i64 %conv)
  %.not = icmp ult i64 %18, %conv
  br i1 %.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %size, i64 noundef %cond11) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %and26 = and i32 %gfp, -264
  %or.i = or i32 %and26, 256
  %and.i.i.i = and i32 %gfp, 4194320
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i19.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i19.i.i, label %if.end.kzalloc.exit_crit_edge, label %if.end.i20.i.i, !prof !113

if.end.kzalloc.exit_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %kzalloc.exit

if.end.i20.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %and6.i.i.i = and i32 %gfp, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end.i20.i.i, %if.end.kzalloc.exit_crit_edge
  %retval.0.i21.i.i = phi i32 [ 0, %if.end.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end.i20.i.i ]
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i21.i.i, i32 7
  %19 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef %or.i, i32 noundef 16) #19
  %tobool27.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool27.not, label %kzalloc.exit.cleanup_crit_edge, label %if.end29

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end29:                                         ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %cond11)
  %cmp30 = icmp ult i64 %cond11, 4294967295
  %or = zext i1 %cmp30 to i32
  %gfp.masked = and i32 %gfp, -262145
  %and34 = or i32 %gfp.masked, %or
  %21 = ptrtoint ptr %gfp14 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and34, ptr %gfp14, align 4
  %22 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %handle, align 4
  %and.i = and i32 %gfp, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.else.thread, label %cond.true40

cond.true40:                                      ; preds = %if.end29
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %cond.true40.dev_get_cma_area.exit_crit_edge, label %land.lhs.true.i

cond.true40.dev_get_cma_area.exit_crit_edge:      ; preds = %cond.true40
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_get_cma_area.exit

land.lhs.true.i:                                  ; preds = %cond.true40
  %cma_area.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 25
  %23 = ptrtoint ptr %cma_area.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cma_area.i, align 4
  %tobool1.not.i = icmp eq ptr %24, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.dev_get_cma_area.exit_crit_edge, label %land.lhs.true.i.if.end60_crit_edge

land.lhs.true.i.if.end60_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60

land.lhs.true.i.dev_get_cma_area.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_get_cma_area.exit

dev_get_cma_area.exit:                            ; preds = %land.lhs.true.i.dev_get_cma_area.exit_crit_edge, %cond.true40.dev_get_cma_area.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dma_contiguous_default_area to i32))
  %25 = load ptr, ptr @dma_contiguous_default_area, align 4
  %phi.cmp = icmp eq ptr %25, null
  %spec.select147 = select i1 %is_coherent, ptr @simple_allocator, ptr @remap_allocator
  %spec.select149 = select i1 %phi.cmp, ptr %spec.select147, ptr @cma_allocator
  br label %if.end60

if.else.thread:                                   ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  %spec.select148 = select i1 %is_coherent, ptr @simple_allocator, ptr @pool_allocator
  br label %if.end60

if.end60:                                         ; preds = %if.else.thread, %dev_get_cma_area.exit, %land.lhs.true.i.if.end60_crit_edge
  %simple_allocator.sink = phi ptr [ @cma_allocator, %land.lhs.true.i.if.end60_crit_edge ], [ %spec.select148, %if.else.thread ], [ %spec.select149, %dev_get_cma_area.exit ]
  %allocator51 = getelementptr inbounds %struct.arm_dma_buffer, ptr %call7.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %allocator51 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %simple_allocator.sink, ptr %allocator51, align 4
  %27 = ptrtoint ptr %simple_allocator.sink to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %simple_allocator.sink, align 4
  %call62 = call ptr %28(ptr noundef nonnull %args, ptr noundef nonnull %page) #14
  %29 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %page, align 4
  %tobool63.not = icmp eq ptr %30, null
  br i1 %tobool63.not, label %if.else85, label %if.then64

if.then64:                                        ; preds = %if.end60
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %31 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %30 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %31 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %32 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add65 = add i32 %sub.ptr.div, %32
  %tobool.not.i137 = icmp eq ptr %dev, null
  br i1 %tobool.not.i137, label %if.then64.pfn_to_dma.exit_crit_edge, label %land.lhs.true.i139

if.then64.pfn_to_dma.exit_crit_edge:              ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #16
  br label %pfn_to_dma.exit

land.lhs.true.i139:                               ; preds = %if.then64
  %dma_range_map.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 21
  %33 = ptrtoint ptr %dma_range_map.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dma_range_map.i, align 8
  %tobool1.not.i138 = icmp eq ptr %34, null
  br i1 %tobool1.not.i138, label %land.lhs.true.i139.pfn_to_dma.exit_crit_edge, label %if.then.i

land.lhs.true.i139.pfn_to_dma.exit_crit_edge:     ; preds = %land.lhs.true.i139
  call void @__sanitizer_cov_trace_pc() #16
  br label %pfn_to_dma.exit

if.then.i:                                        ; preds = %land.lhs.true.i139
  %shl.i = shl i32 %add65, 12
  %size17.i.i = getelementptr inbounds %struct.bus_dma_region, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %size17.i.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %size17.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %36)
  %tobool.not18.i.i = icmp eq i64 %36, 0
  br i1 %tobool.not18.i.i, label %if.then.i.pfn_to_dma.exit_crit_edge, label %if.then.i.for.body.i.i_crit_edge

if.then.i.for.body.i.i_crit_edge:                 ; preds = %if.then.i
  br label %for.body.i.i

if.then.i.pfn_to_dma.exit_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pfn_to_dma.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then.i.for.body.i.i_crit_edge
  %37 = phi i64 [ %44, %for.inc.i.i.for.body.i.i_crit_edge ], [ %36, %if.then.i.for.body.i.i_crit_edge ]
  %m.019.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %34, %if.then.i.for.body.i.i_crit_edge ]
  %38 = ptrtoint ptr %m.019.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %m.019.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %39)
  %cmp.not.i.i = icmp ult i32 %shl.i, %39
  br i1 %cmp.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %sub.i.i = sub i32 %shl.i, %39
  %conv.i.i = zext i32 %sub.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %37, i64 %conv.i.i)
  %cmp3.i.i = icmp ugt i64 %37, %conv.i.i
  br i1 %cmp3.i.i, label %if.then.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %offset.i.i = getelementptr inbounds %struct.bus_dma_region, ptr %m.019.i.i, i32 0, i32 3
  %40 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %offset.i.i, align 8
  %42 = trunc i64 %41 to i32
  %conv7.i.i = sub i32 %shl.i, %42
  %phi.bo.i = lshr i32 %conv7.i.i, 12
  br label %pfn_to_dma.exit

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %incdec.ptr.i.i = getelementptr %struct.bus_dma_region, ptr %m.019.i.i, i32 1
  %size.i.i = getelementptr %struct.bus_dma_region, ptr %m.019.i.i, i32 1, i32 2
  %43 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %size.i.i, align 8
  %tobool.not.i.i = icmp eq i64 %44, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i.pfn_to_dma.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.inc.i.i.pfn_to_dma.exit_crit_edge:            ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pfn_to_dma.exit

pfn_to_dma.exit:                                  ; preds = %for.inc.i.i.pfn_to_dma.exit_crit_edge, %if.then.i.i, %if.then.i.pfn_to_dma.exit_crit_edge, %land.lhs.true.i139.pfn_to_dma.exit_crit_edge, %if.then64.pfn_to_dma.exit_crit_edge
  %pfn.addr.0.i = phi i32 [ %add65, %land.lhs.true.i139.pfn_to_dma.exit_crit_edge ], [ %add65, %if.then64.pfn_to_dma.exit_crit_edge ], [ %phi.bo.i, %if.then.i.i ], [ 1048575, %if.then.i.pfn_to_dma.exit_crit_edge ], [ 1048575, %for.inc.i.i.pfn_to_dma.exit_crit_edge ]
  %shl2.i = shl i32 %pfn.addr.0.i, 12
  %45 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %shl2.i, ptr %handle, align 4
  %46 = ptrtoint ptr %want_vaddr to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %want_vaddr, align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool68.not = icmp eq i8 %47, 0
  %spec.select143 = select i1 %tobool68.not, ptr %30, ptr %call62
  %virt = getelementptr inbounds %struct.arm_dma_buffer, ptr %call7.i.i, i32 0, i32 1
  %48 = ptrtoint ptr %virt to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %spec.select143, ptr %virt, align 8
  %call80 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @arm_dma_bufs_lock) #14
  %49 = load ptr, ptr @arm_dma_bufs, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @arm_dma_bufs, ptr noundef %49) #14
  br i1 %call.i.i, label %if.end.i.i, label %pfn_to_dma.exit.list_add.exit_crit_edge

pfn_to_dma.exit.list_add.exit_crit_edge:          ; preds = %pfn_to_dma.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add.exit

if.end.i.i:                                       ; preds = %pfn_to_dma.exit
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call7.i.i, ptr %prev1.i.i, align 4
  %51 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %49, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %52 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @arm_dma_bufs, ptr %prev3.i.i, align 4
  store volatile ptr %call7.i.i, ptr @arm_dma_bufs, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %pfn_to_dma.exit.list_add.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @arm_dma_bufs_lock, i32 noundef %call80) #14
  br label %if.end86

if.else85:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #16
  call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %if.end86

if.end86:                                         ; preds = %if.else85, %list_add.exit
  %53 = ptrtoint ptr %want_vaddr to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %want_vaddr, align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool88.not = icmp eq i8 %54, 0
  br i1 %tobool88.not, label %cond.false91, label %if.end86.cleanup_crit_edge

if.end86.cleanup_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cond.false91:                                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #16
  %55 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %page, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.false91, %if.end86.cleanup_crit_edge, %kzalloc.exit.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ null, %kzalloc.exit.cleanup_crit_edge ], [ %56, %cond.false91 ], [ %call62, %if.end86.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %args) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page) #14
  ret ptr %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__arm_dma_mmap(ptr noundef %dev, ptr noundef %vma, ptr noundef %cpu_addr, i32 noundef %dma_addr, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #14
  %0 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -6, ptr %ret, align 4
  %vm_end.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %1 = ptrtoint ptr %vm_end.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %vm_end.i, align 4
  %3 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vma, align 4
  %sub.i = sub i32 %2, %4
  %shr.i = lshr i32 %sub.i, 12
  %add = add i32 %size, 4095
  %shr = lshr i32 %add, 12
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %entry.dma_to_pfn.exit_crit_edge, label %land.lhs.true.i

entry.dma_to_pfn.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_to_pfn.exit

land.lhs.true.i:                                  ; preds = %entry
  %dma_range_map.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 21
  %5 = ptrtoint ptr %dma_range_map.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dma_range_map.i, align 8
  %tobool1.not.i = icmp eq ptr %6, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.dma_to_pfn.exit_crit_edge, label %if.then.i

land.lhs.true.i.dma_to_pfn.exit_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_to_pfn.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %shl.i = and i32 %dma_addr, -4096
  %size16.i.i = getelementptr inbounds %struct.bus_dma_region, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %size16.i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %size16.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %tobool.not17.i.i = icmp eq i64 %8, 0
  br i1 %tobool.not17.i.i, label %if.then.i.dma_to_pfn.exit_crit_edge, label %if.then.i.for.body.i.i_crit_edge

if.then.i.for.body.i.i_crit_edge:                 ; preds = %if.then.i
  br label %for.body.i.i

if.then.i.dma_to_pfn.exit_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_to_pfn.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then.i.for.body.i.i_crit_edge
  %9 = phi i64 [ %16, %for.inc.i.i.for.body.i.i_crit_edge ], [ %8, %if.then.i.for.body.i.i_crit_edge ]
  %m.018.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %6, %if.then.i.for.body.i.i_crit_edge ]
  %dma_start.i.i = getelementptr inbounds %struct.bus_dma_region, ptr %m.018.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %dma_start.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_start.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %11)
  %cmp.not.i.i = icmp ult i32 %shl.i, %11
  br i1 %cmp.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %sub.i.i = sub i32 %shl.i, %11
  %conv.i.i = zext i32 %sub.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %conv.i.i)
  %cmp3.i.i = icmp ugt i64 %9, %conv.i.i
  br i1 %cmp3.i.i, label %if.then.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %offset.i.i = getelementptr inbounds %struct.bus_dma_region, ptr %m.018.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %offset.i.i, align 8
  %14 = trunc i64 %13 to i32
  %conv6.i.i = add i32 %shl.i, %14
  br label %dma_to_pfn.exit

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %incdec.ptr.i.i = getelementptr %struct.bus_dma_region, ptr %m.018.i.i, i32 1
  %size.i.i = getelementptr %struct.bus_dma_region, ptr %m.018.i.i, i32 1, i32 2
  %15 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %size.i.i, align 8
  %tobool.not.i.i = icmp eq i64 %16, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i.dma_to_pfn.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.inc.i.i.dma_to_pfn.exit_crit_edge:            ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_to_pfn.exit

dma_to_pfn.exit:                                  ; preds = %for.inc.i.i.dma_to_pfn.exit_crit_edge, %if.then.i.i, %if.then.i.dma_to_pfn.exit_crit_edge, %land.lhs.true.i.dma_to_pfn.exit_crit_edge, %entry.dma_to_pfn.exit_crit_edge
  %pfn.0.in.i = phi i32 [ %dma_addr, %land.lhs.true.i.dma_to_pfn.exit_crit_edge ], [ %dma_addr, %entry.dma_to_pfn.exit_crit_edge ], [ %conv6.i.i, %if.then.i.i ], [ -1, %if.then.i.dma_to_pfn.exit_crit_edge ], [ -1, %for.inc.i.i.dma_to_pfn.exit_crit_edge ]
  %pfn.0.i = lshr i32 %pfn.0.in.i, 12
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %17 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vm_pgoff, align 4
  %call2 = call i32 @dma_mmap_from_dev_coherent(ptr noundef %dev, ptr noundef %vma, ptr noundef %cpu_addr, i32 noundef %size, ptr noundef nonnull %ret) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %dma_to_pfn.exit.cleanup_crit_edge

dma_to_pfn.exit.cleanup_crit_edge:                ; preds = %dma_to_pfn.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %dma_to_pfn.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %18)
  %cmp = icmp ule i32 %shr, %18
  %sub = sub i32 %shr, %18
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %sub)
  %cmp3.not = icmp ugt i32 %shr.i, %sub
  %or.cond = select i1 %cmp, i1 true, i1 %cmp3.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vma, align 4
  %add5 = add i32 %pfn.0.i, %18
  %21 = ptrtoint ptr %vm_end.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vm_end.i, align 4
  %sub7 = sub i32 %22, %20
  %vm_page_prot = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %23 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vm_page_prot, align 4
  %call8 = call i32 @remap_pfn_range(ptr noundef %vma, i32 noundef %20, i32 noundef %add5, i32 noundef %sub7, i32 noundef %24) #14
  %25 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call8, ptr %ret, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %dma_to_pfn.exit.cleanup_crit_edge
  %26 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %26)
  %retval.0 = load i32, ptr %ret, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__arm_dma_free(ptr noundef %dev, i32 noundef %size, ptr noundef %cpu_addr, i32 noundef %handle, i32 noundef %attrs) unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.arm_dma_free_args, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %0 = load ptr, ptr @mem_map, align 4
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %entry.dma_to_pfn.exit_crit_edge, label %land.lhs.true.i

entry.dma_to_pfn.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_to_pfn.exit

land.lhs.true.i:                                  ; preds = %entry
  %dma_range_map.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 21
  %1 = ptrtoint ptr %dma_range_map.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dma_range_map.i, align 8
  %tobool1.not.i = icmp eq ptr %2, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.dma_to_pfn.exit_crit_edge, label %if.then.i

land.lhs.true.i.dma_to_pfn.exit_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_to_pfn.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %shl.i = and i32 %handle, -4096
  %size16.i.i = getelementptr inbounds %struct.bus_dma_region, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %size16.i.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %size16.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %tobool.not17.i.i = icmp eq i64 %4, 0
  br i1 %tobool.not17.i.i, label %if.then.i.dma_to_pfn.exit_crit_edge, label %if.then.i.for.body.i.i_crit_edge

if.then.i.for.body.i.i_crit_edge:                 ; preds = %if.then.i
  br label %for.body.i.i

if.then.i.dma_to_pfn.exit_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_to_pfn.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then.i.for.body.i.i_crit_edge
  %5 = phi i64 [ %12, %for.inc.i.i.for.body.i.i_crit_edge ], [ %4, %if.then.i.for.body.i.i_crit_edge ]
  %m.018.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %2, %if.then.i.for.body.i.i_crit_edge ]
  %dma_start.i.i = getelementptr inbounds %struct.bus_dma_region, ptr %m.018.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %dma_start.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_start.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %7)
  %cmp.not.i.i = icmp ult i32 %shl.i, %7
  br i1 %cmp.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %sub.i.i = sub i32 %shl.i, %7
  %conv.i.i = zext i32 %sub.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %conv.i.i)
  %cmp3.i.i = icmp ugt i64 %5, %conv.i.i
  br i1 %cmp3.i.i, label %if.then.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %offset.i.i = getelementptr inbounds %struct.bus_dma_region, ptr %m.018.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %offset.i.i, align 8
  %10 = trunc i64 %9 to i32
  %conv6.i.i = add i32 %shl.i, %10
  br label %dma_to_pfn.exit

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %incdec.ptr.i.i = getelementptr %struct.bus_dma_region, ptr %m.018.i.i, i32 1
  %size.i.i = getelementptr %struct.bus_dma_region, ptr %m.018.i.i, i32 1, i32 2
  %11 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %size.i.i, align 8
  %tobool.not.i.i = icmp eq i64 %12, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i.dma_to_pfn.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.inc.i.i.dma_to_pfn.exit_crit_edge:            ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_to_pfn.exit

dma_to_pfn.exit:                                  ; preds = %for.inc.i.i.dma_to_pfn.exit_crit_edge, %if.then.i.i, %if.then.i.dma_to_pfn.exit_crit_edge, %land.lhs.true.i.dma_to_pfn.exit_crit_edge, %entry.dma_to_pfn.exit_crit_edge
  %pfn.0.in.i = phi i32 [ %handle, %land.lhs.true.i.dma_to_pfn.exit_crit_edge ], [ %handle, %entry.dma_to_pfn.exit_crit_edge ], [ %conv6.i.i, %if.then.i.i ], [ -1, %if.then.i.dma_to_pfn.exit_crit_edge ], [ -1, %for.inc.i.i.dma_to_pfn.exit_crit_edge ]
  %pfn.0.i = lshr i32 %pfn.0.in.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %13 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub = sub i32 %pfn.0.i, %13
  %add.ptr = getelementptr %struct.page, ptr %0, i32 %sub
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %args) #14
  %14 = getelementptr inbounds i8, ptr %args, i32 16
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %14, align 4
  %16 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %dev, ptr %args, align 4
  %size2 = getelementptr inbounds %struct.arm_dma_free_args, ptr %args, i32 0, i32 1
  %add = add i32 %size, 4095
  %and = and i32 %add, -4096
  %17 = ptrtoint ptr %size2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and, ptr %size2, align 4
  %cpu_addr3 = getelementptr inbounds %struct.arm_dma_free_args, ptr %args, i32 0, i32 2
  %18 = ptrtoint ptr %cpu_addr3 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %cpu_addr, ptr %cpu_addr3, align 4
  %page4 = getelementptr inbounds %struct.arm_dma_free_args, ptr %args, i32 0, i32 3
  %19 = ptrtoint ptr %page4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr, ptr %page4, align 4
  %want_vaddr = getelementptr inbounds %struct.arm_dma_free_args, ptr %args, i32 0, i32 4
  %20 = trunc i32 %attrs to i8
  %21 = lshr i8 %20, 4
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = ptrtoint ptr %want_vaddr to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %want_vaddr, align 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @arm_dma_bufs_lock) #14
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %dma_to_pfn.exit
  %buf.0.in.i = phi ptr [ @arm_dma_bufs, %dma_to_pfn.exit ], [ %buf.0.i, %for.body.i.for.cond.i_crit_edge ]
  %25 = ptrtoint ptr %buf.0.in.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %buf.0.i = load ptr, ptr %buf.0.in.i, align 4
  %cmp6.not.i = icmp eq ptr %buf.0.i, @arm_dma_bufs
  br i1 %cmp6.not.i, label %arm_dma_buffer_find.exit.thread, label %for.body.i

arm_dma_buffer_find.exit.thread:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @arm_dma_bufs_lock, i32 noundef %call2.i) #14
  br label %do.end

for.body.i:                                       ; preds = %for.cond.i
  %virt8.i = getelementptr inbounds %struct.arm_dma_buffer, ptr %buf.0.i, i32 0, i32 1
  %26 = ptrtoint ptr %virt8.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %virt8.i, align 4
  %cmp9.i = icmp eq ptr %27, %cpu_addr
  br i1 %cmp9.i, label %if.then.i1, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i

if.then.i1:                                       ; preds = %for.body.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %buf.0.i) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i1.arm_dma_buffer_find.exit_crit_edge

if.then.i1.arm_dma_buffer_find.exit_crit_edge:    ; preds = %if.then.i1
  call void @__sanitizer_cov_trace_pc() #16
  br label %arm_dma_buffer_find.exit

if.end.i.i.i:                                     ; preds = %if.then.i1
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %buf.0.i, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i.i, align 4
  %30 = ptrtoint ptr %buf.0.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %buf.0.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev1.i.i.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %31, ptr %29, align 4
  br label %arm_dma_buffer_find.exit

arm_dma_buffer_find.exit:                         ; preds = %if.end.i.i.i, %if.then.i1.arm_dma_buffer_find.exit_crit_edge
  %34 = ptrtoint ptr %buf.0.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 256 to ptr), ptr %buf.0.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %buf.0.i, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @arm_dma_bufs_lock, i32 noundef %call2.i) #14
  %tobool.not = icmp eq ptr %buf.0.i, null
  br i1 %tobool.not, label %arm_dma_buffer_find.exit.do.end_crit_edge, label %if.end30, !prof !121

arm_dma_buffer_find.exit.do.end_crit_edge:        ; preds = %arm_dma_buffer_find.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

do.end:                                           ; preds = %arm_dma_buffer_find.exit.do.end_crit_edge, %arm_dma_buffer_find.exit.thread
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 818, i32 noundef 9, ptr noundef nonnull @.str.18, ptr noundef %cpu_addr) #14
  br label %cleanup

if.end30:                                         ; preds = %arm_dma_buffer_find.exit
  call void @__sanitizer_cov_trace_pc() #16
  %allocator = getelementptr inbounds %struct.arm_dma_buffer, ptr %buf.0.i, i32 0, i32 2
  %36 = ptrtoint ptr %allocator to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %allocator, align 4
  %free = getelementptr inbounds %struct.arm_dma_allocator, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %free, align 4
  call void %39(ptr noundef nonnull %args) #14
  call void @kfree(ptr noundef nonnull %buf.0.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %do.end
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %args) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @arm_iommu_create_mapping(ptr noundef %bus, i32 noundef %base, i64 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i64 %size, 12
  %conv = trunc i64 %shr to i32
  %sub = add i32 %conv, 31
  %0 = lshr i32 %sub, 3
  %mul = and i32 %0, 536870908
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %size)
  %cmp = icmp ugt i64 %size, 4294967296
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %tobool.not = icmp eq i32 %mul, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %mul)
  %cmp5 = icmp ugt i32 %mul, 4096
  %div871 = lshr i32 %sub, 15
  %1 = tail call i32 @llvm.umin.i32(i32 %mul, i32 4096)
  %spec.select72 = select i1 %cmp5, i32 %div871, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 76) #19
  %tobool11.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool11.not, label %if.end4.cleanup_crit_edge, label %if.end13

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end13:                                         ; preds = %if.end4
  %bitmap_size14 = getelementptr inbounds %struct.dma_iommu_mapping, ptr %call7.i.i, i32 0, i32 4
  %3 = ptrtoint ptr %bitmap_size14 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %1, ptr %bitmap_size14, align 8
  %4 = shl nuw nsw i32 %spec.select72, 2
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3520) #20
  %bitmaps = getelementptr inbounds %struct.dma_iommu_mapping, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %bitmaps to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call8.i.i, ptr %bitmaps, align 4
  %tobool17.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool17.not, label %if.end13.err2_crit_edge, label %if.end8.i.i

if.end13.err2_crit_edge:                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %err2

if.end8.i.i:                                      ; preds = %if.end13
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %1, i32 noundef 3520) #20
  %6 = ptrtoint ptr %bitmaps to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bitmaps, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call9.i.i, ptr %7, align 4
  %9 = load ptr, ptr %bitmaps, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool24.not = icmp eq ptr %11, null
  br i1 %tobool24.not, label %if.end8.i.i.err3_crit_edge, label %if.end26

if.end8.i.i.err3_crit_edge:                       ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err3

if.end26:                                         ; preds = %if.end8.i.i
  %nr_bitmaps = getelementptr inbounds %struct.dma_iommu_mapping, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %nr_bitmaps to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %nr_bitmaps, align 8
  %extensions27 = getelementptr inbounds %struct.dma_iommu_mapping, ptr %call7.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %extensions27 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %spec.select72, ptr %extensions27, align 4
  %base28 = getelementptr inbounds %struct.dma_iommu_mapping, ptr %call7.i.i, i32 0, i32 6
  %14 = ptrtoint ptr %base28 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %base, ptr %base28, align 8
  %mul29 = shl nuw nsw i32 %1, 3
  %bits30 = getelementptr inbounds %struct.dma_iommu_mapping, ptr %call7.i.i, i32 0, i32 5
  %15 = ptrtoint ptr %bits30 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %mul29, ptr %bits30, align 4
  %lock = getelementptr inbounds %struct.dma_iommu_mapping, ptr %call7.i.i, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @arm_iommu_create_mapping.__key, i16 noundef signext 3) #14
  %call32 = tail call ptr @iommu_domain_alloc(ptr noundef %bus) #14
  %16 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call32, ptr %call7.i.i, align 8
  %tobool34.not = icmp eq ptr %call32, null
  br i1 %tobool34.not, label %err4, label %if.end36

if.end36:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  %kref = getelementptr inbounds %struct.dma_iommu_mapping, ptr %call7.i.i, i32 0, i32 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #14
  %17 = ptrtoint ptr %kref to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 1, ptr %kref, align 8
  br label %cleanup

err4:                                             ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %bitmaps to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bitmaps, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  tail call void @kfree(ptr noundef %21) #14
  br label %err3

err3:                                             ; preds = %err4, %if.end8.i.i.err3_crit_edge
  %22 = ptrtoint ptr %bitmaps to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bitmaps, align 4
  tail call void @kfree(ptr noundef %23) #14
  br label %err2

err2:                                             ; preds = %err3, %if.end13.err2_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %err2, %if.end36, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end36 ], [ inttoptr (i32 -34 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end4.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %err2 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iommu_domain_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @arm_iommu_release_mapping(ptr noundef %mapping) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mapping, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  %kref = getelementptr inbounds %struct.dma_iommu_mapping, ptr %mapping, i32 0, i32 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !122
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #14, !srcloc !123
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !113

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #14
  br label %if.end

if.then.i:                                        ; preds = %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !124
  %1 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mapping, align 4
  tail call void @iommu_domain_free(ptr noundef %2) #14
  %nr_bitmaps.i.i = getelementptr %struct.dma_iommu_mapping, ptr %mapping, i32 0, i32 2
  %3 = ptrtoint ptr %nr_bitmaps.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nr_bitmaps.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp8.not.i.i = icmp eq i32 %4, 0
  br i1 %cmp8.not.i.i, label %if.then.i.release_iommu_mapping.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.then.i.release_iommu_mapping.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %release_iommu_mapping.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.then.i
  %bitmaps.i.i = getelementptr %struct.dma_iommu_mapping, ptr %mapping, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.09.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %5 = ptrtoint ptr %bitmaps.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bitmaps.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %6, i32 %i.09.i.i
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void @kfree(ptr noundef %8) #14
  %inc.i.i = add nuw i32 %i.09.i.i, 1
  %9 = ptrtoint ptr %nr_bitmaps.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr_bitmaps.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %10
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.release_iommu_mapping.exit.i_crit_edge

for.body.i.i.release_iommu_mapping.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %release_iommu_mapping.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

release_iommu_mapping.exit.i:                     ; preds = %for.body.i.i.release_iommu_mapping.exit.i_crit_edge, %if.then.i.release_iommu_mapping.exit.i_crit_edge
  %bitmaps1.i.i = getelementptr %struct.dma_iommu_mapping, ptr %mapping, i32 0, i32 1
  %11 = ptrtoint ptr %bitmaps1.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bitmaps1.i.i, align 4
  tail call void @kfree(ptr noundef %12) #14
  tail call void @kfree(ptr noundef nonnull %mapping) #14
  br label %if.end

if.end:                                           ; preds = %release_iommu_mapping.exit.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @arm_iommu_attach_device(ptr noundef %dev, ptr noundef %mapping) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__arm_iommu_attach_device(ptr noundef %dev, ptr noundef %mapping)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dma_ops1.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %dma_ops1.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @iommu_ops, ptr %dma_ops1.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__arm_iommu_attach_device(ptr noundef %dev, ptr noundef %mapping) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %call = tail call i32 @iommu_attach_device(ptr noundef %1, ptr noundef %dev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %kref = getelementptr inbounds %struct.dma_iommu_mapping, ptr %mapping, i32 0, i32 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #14
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #14, !srcloc !125
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !121

if.end.if.end15.sink.split.i.i.i.i_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !113

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i.i) #14
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %archdata = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 26
  %4 = ptrtoint ptr %archdata to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %mapping, ptr %archdata, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__arm_iommu_attach_device.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__arm_iommu_attach_device, %if.then6)) #14
          to label %cleanup [label %if.then6], !srcloc !126

if.then6:                                         ; preds = %kref_get.exit
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %5 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then6.dev_name.exit_crit_edge

if.then6.dev_name.exit_crit_edge:                 ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then6.dev_name.exit_crit_edge
  %retval.0.i14 = phi ptr [ %8, %if.end.i ], [ %6, %if.then6.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__arm_iommu_attach_device.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.20, ptr noundef %retval.0.i14) #14
  br label %cleanup

cleanup:                                          ; preds = %dev_name.exit, %kref_get.exit, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @arm_iommu_detach_device(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %archdata = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 26
  %0 = ptrtoint ptr %archdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %archdata, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.1) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @iommu_detach_device(ptr noundef %3, ptr noundef %dev) #14
  %kref = getelementptr inbounds %struct.dma_iommu_mapping, ptr %1, i32 0, i32 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !122
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #14
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #14, !srcloc !123
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !113

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #14
  br label %kref_put.exit

if.then.i:                                        ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !124
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  tail call void @iommu_domain_free(ptr noundef %6) #14
  %nr_bitmaps.i.i = getelementptr %struct.dma_iommu_mapping, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %nr_bitmaps.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr_bitmaps.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp8.not.i.i = icmp eq i32 %8, 0
  br i1 %cmp8.not.i.i, label %if.then.i.release_iommu_mapping.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.then.i.release_iommu_mapping.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %release_iommu_mapping.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.then.i
  %bitmaps.i.i = getelementptr %struct.dma_iommu_mapping, ptr %1, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.09.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %9 = ptrtoint ptr %bitmaps.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bitmaps.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %10, i32 %i.09.i.i
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void @kfree(ptr noundef %12) #14
  %inc.i.i = add nuw i32 %i.09.i.i, 1
  %13 = ptrtoint ptr %nr_bitmaps.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nr_bitmaps.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %14
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.release_iommu_mapping.exit.i_crit_edge

for.body.i.i.release_iommu_mapping.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %release_iommu_mapping.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

release_iommu_mapping.exit.i:                     ; preds = %for.body.i.i.release_iommu_mapping.exit.i_crit_edge, %if.then.i.release_iommu_mapping.exit.i_crit_edge
  %bitmaps1.i.i = getelementptr %struct.dma_iommu_mapping, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %bitmaps1.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bitmaps1.i.i, align 4
  tail call void @kfree(ptr noundef %16) #14
  tail call void @kfree(ptr noundef nonnull %1) #14
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %release_iommu_mapping.exit.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  %17 = ptrtoint ptr %archdata to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %archdata, align 8
  %dma_coherent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 26, i32 1
  %18 = ptrtoint ptr %dma_coherent to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %dma_coherent, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool5 = icmp slt i8 %bf.load, 0
  %cond.i = select i1 %tobool5, ptr @arm_coherent_dma_ops, ptr @arm_dma_ops
  %dma_ops1.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 17
  %19 = ptrtoint ptr %dma_ops1.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %cond.i, ptr %dma_ops1.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arm_iommu_detach_device.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arm_iommu_detach_device, %if.then12)) #14
          to label %cleanup [label %if.then12], !srcloc !126

if.then12:                                        ; preds = %kref_put.exit
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %20 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then12.dev_name.exit_crit_edge

if.then12.dev_name.exit_crit_edge:                ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then12.dev_name.exit_crit_edge
  %retval.0.i25 = phi ptr [ %23, %if.end.i ], [ %21, %if.then12.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @arm_iommu_detach_device.__UNIQUE_ID_ddebug254, ptr noundef nonnull @.str.7, ptr noundef %retval.0.i25) #14
  br label %cleanup

cleanup:                                          ; preds = %dev_name.exit, %kref_put.exit, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_detach_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @arch_setup_dma_ops(ptr noundef %dev, i64 noundef %dma_base, i64 noundef %size, ptr noundef readnone %iommu, i1 noundef zeroext %coherent) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_coherent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 26, i32 1
  %0 = ptrtoint ptr %dma_coherent to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %dma_coherent, align 4
  %bf.shl = select i1 %coherent, i8 -128, i8 0
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %dma_coherent, align 4
  %dma_ops1 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 17
  %1 = ptrtoint ptr %dma_ops1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dma_ops1, align 4
  %tobool2.not = icmp eq ptr %2, null
  br i1 %tobool2.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not.i = icmp eq ptr %iommu, null
  br i1 %tobool.not.i, label %if.end.if.else_crit_edge, label %if.end.i

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.end.i:                                         ; preds = %if.end
  %bus.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 5
  %3 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bus.i, align 8
  %conv.i = trunc i64 %dma_base to i32
  %call.i = tail call ptr @arm_iommu_create_mapping(ptr noundef %4, i32 noundef %conv.i, i64 noundef %size) #14
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end5.i

do.end.i:                                         ; preds = %if.end.i
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %5 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.dev_name.exit.i_crit_edge

do.end.i.dev_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %do.end.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %8, %if.end.i.i ], [ %6, %do.end.i.dev_name.exit.i_crit_edge ]
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i64 noundef %size, ptr noundef %retval.0.i.i) #17
  br label %if.else

if.end5.i:                                        ; preds = %if.end.i
  %call6.i = tail call fastcc i32 @__arm_iommu_attach_device(ptr noundef %dev, ptr noundef %call.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.then3, label %do.end11.i

do.end11.i:                                       ; preds = %if.end5.i
  %init_name.i22.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %9 = ptrtoint ptr %init_name.i22.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i22.i, align 8
  %tobool.not.i23.i = icmp eq ptr %10, null
  br i1 %tobool.not.i23.i, label %if.end.i24.i, label %do.end11.i.dev_name.exit26.i_crit_edge

do.end11.i.dev_name.exit26.i_crit_edge:           ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit26.i

if.end.i24.i:                                     ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  br label %dev_name.exit26.i

dev_name.exit26.i:                                ; preds = %if.end.i24.i, %do.end11.i.dev_name.exit26.i_crit_edge
  %retval.0.i25.i = phi ptr [ %12, %if.end.i24.i ], [ %10, %do.end11.i.dev_name.exit26.i_crit_edge ]
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %retval.0.i25.i) #17
  tail call void @arm_iommu_release_mapping(ptr noundef %call.i) #14
  br label %if.else

if.then3:                                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #16
  %cond.i = select i1 %coherent, ptr @iommu_coherent_ops, ptr @iommu_ops
  br label %if.end8

if.else:                                          ; preds = %dev_name.exit26.i, %dev_name.exit.i, %if.end.if.else_crit_edge
  %cond.i19 = select i1 %coherent, ptr @arm_coherent_dma_ops, ptr @arm_dma_ops
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then3
  %dma_ops.0 = phi ptr [ %cond.i, %if.then3 ], [ %cond.i19, %if.else ]
  %13 = ptrtoint ptr %dma_ops1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dma_ops.0, ptr %dma_ops1, align 4
  %14 = ptrtoint ptr %dma_coherent to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load10 = load i8, ptr %dma_coherent, align 4
  %bf.set12 = or i8 %bf.load10, 64
  store i8 %bf.set12, ptr %dma_coherent, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @arch_teardown_dma_ops(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_ops_setup = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 26, i32 1
  %0 = ptrtoint ptr %dma_ops_setup to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %dma_ops_setup, align 4
  %1 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  %archdata.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 26
  %2 = ptrtoint ptr %archdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %archdata.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.arm_teardown_iommu_dma_ops.exit_crit_edge, label %if.end.i

if.end.arm_teardown_iommu_dma_ops.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %arm_teardown_iommu_dma_ops.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @arm_iommu_detach_device(ptr noundef %dev) #14
  tail call void @arm_iommu_release_mapping(ptr noundef nonnull %3) #14
  br label %arm_teardown_iommu_dma_ops.exit

arm_teardown_iommu_dma_ops.exit:                  ; preds = %if.end.i, %if.end.arm_teardown_iommu_dma_ops.exit_crit_edge
  %dma_ops1.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 17
  %4 = ptrtoint ptr %dma_ops1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %dma_ops1.i, align 4
  br label %return

return:                                           ; preds = %arm_teardown_iommu_dma_ops.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dma_cache_maint_page(ptr noundef %page, i32 noundef %offset, i32 noundef %size, i32 noundef %dir, ptr nocapture noundef readonly %op) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %0 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %page to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %0 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %1 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %div55 = lshr i32 %offset, 12
  %add = add i32 %1, %div55
  %add1 = add i32 %add, %sub.ptr.div
  %rem = and i32 %offset, 4095
  %sub.peel = sub i32 %add1, %1
  %add.ptr.peel = getelementptr %struct.page, ptr %0, i32 %sub.peel
  %2 = ptrtoint ptr %add.ptr.peel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.peel, align 4
  %shr.i.peel = lshr i32 %3, 30
  %4 = zext i32 %shr.i.peel to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i.peel, label %entry.if.else21.peel_crit_edge [
    i32 2, label %entry.if.then.peel_crit_edge
    i32 3, label %is_highmem_idx.exit.peel
  ]

entry.if.then.peel_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.peel

entry.if.else21.peel_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else21.peel

is_highmem_idx.exit.peel:                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %5 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp2.i.not.peel = icmp eq i32 %5, 2
  br i1 %cmp2.i.not.peel, label %is_highmem_idx.exit.peel.if.then.peel_crit_edge, label %is_highmem_idx.exit.peel.if.else21.peel_crit_edge

is_highmem_idx.exit.peel.if.else21.peel_crit_edge: ; preds = %is_highmem_idx.exit.peel
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else21.peel

is_highmem_idx.exit.peel.if.then.peel_crit_edge:  ; preds = %is_highmem_idx.exit.peel
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.peel

if.then.peel:                                     ; preds = %is_highmem_idx.exit.peel.if.then.peel_crit_edge, %entry.if.then.peel_crit_edge
  %add3.peel = add i32 %rem, %size
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add3.peel)
  %cmp.peel = icmp ugt i32 %add3.peel, 4096
  %sub5.peel = sub nuw nsw i32 4096, %rem
  %spec.select.peel = select i1 %cmp.peel, i32 %sub5.peel, i32 %size
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cacheid to i32))
  %6 = load i32, ptr @cacheid, align 4
  %and2.i.peel = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.peel)
  %tobool7.not.peel = icmp eq i32 %and2.i.peel, 0
  br i1 %tobool7.not.peel, label %if.then.peel.if.end24.peel_crit_edge, label %if.then8.peel

if.then.peel.if.end24.peel_crit_edge:             ; preds = %if.then.peel
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24.peel

if.then8.peel:                                    ; preds = %if.then.peel
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %7 = load i32, ptr @pgprot_kernel, align 4
  %or.i.peel = or i32 %7, 512
  %8 = tail call i32 @llvm.read_register.i32(metadata !103) #14
  %and.i.i.i.i.i.peel = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.peel to ptr
  %preempt_count.i.i.i.i.peel = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i.peel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i.peel, align 4
  %add.i.i.i.peel = add i32 %11, 1
  store volatile i32 %add.i.i.i.peel, ptr %preempt_count.i.i.i.i.peel, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !127
  %12 = tail call i32 @llvm.read_register.i32(metadata !103) #14
  %and.i.i.i1.i.i.peel = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i1.i.i.peel to ptr
  %task.i.i.i.i.peel = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task.i.i.i.i.peel to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i.i.i.i.peel, align 8
  %pagefault_disabled.i.i.i.i.peel = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 213
  %16 = ptrtoint ptr %pagefault_disabled.i.i.i.i.peel to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pagefault_disabled.i.i.i.i.peel, align 8
  %inc.i.i.i.i.peel = add i32 %17, 1
  store i32 %inc.i.i.i.i.peel, ptr %pagefault_disabled.i.i.i.i.peel, align 8
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !128
  %call.i.i.peel = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr.peel, i32 noundef %or.i.peel) #14
  %add.ptr10.peel = getelementptr i8, ptr %call.i.i.peel, i32 %rem
  tail call void %op(ptr noundef %add.ptr10.peel, i32 noundef %spec.select.peel, i32 noundef %dir) #14
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.peel) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !129
  %18 = tail call i32 @llvm.read_register.i32(metadata !103) #14
  %and.i.i.i1.i.peel = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i1.i.peel to ptr
  %task.i.i.i.peel = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task.i.i.i.peel to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task.i.i.i.peel, align 8
  %pagefault_disabled.i.i.i.peel = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 213
  %22 = ptrtoint ptr %pagefault_disabled.i.i.i.peel to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pagefault_disabled.i.i.i.peel, align 8
  %dec.i.i.i.peel = add i32 %23, -1
  store i32 %dec.i.i.i.peel, ptr %pagefault_disabled.i.i.i.peel, align 8
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !130
  %24 = tail call i32 @llvm.read_register.i32(metadata !103) #14
  %and.i.i.i.i.peel = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.peel to ptr
  %preempt_count.i.i.i.peel = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.peel to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.peel, align 4
  %sub.i.i.peel = add i32 %27, -1
  store volatile i32 %sub.i.i.peel, ptr %preempt_count.i.i.i.peel, align 4
  br label %if.end24.peel

if.else21.peel:                                   ; preds = %is_highmem_idx.exit.peel.if.else21.peel_crit_edge, %entry.if.else21.peel_crit_edge
  %call22.peel = tail call ptr @page_address(ptr noundef %add.ptr.peel) #14
  %add.ptr23.peel = getelementptr i8, ptr %call22.peel, i32 %rem
  tail call void %op(ptr noundef %add.ptr23.peel, i32 noundef %size, i32 noundef %dir) #14
  br label %if.end24.peel

if.end24.peel:                                    ; preds = %if.else21.peel, %if.then8.peel, %if.then.peel.if.end24.peel_crit_edge
  %len.1.peel = phi i32 [ %spec.select.peel, %if.then8.peel ], [ %size, %if.else21.peel ], [ %spec.select.peel, %if.then.peel.if.end24.peel_crit_edge ]
  %sub25.peel = sub i32 %size, %len.1.peel
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub25.peel)
  %tobool27.not.peel = icmp eq i32 %sub25.peel, 0
  br i1 %tobool27.not.peel, label %if.end24.peel.do.end28_crit_edge, label %if.end24.peel.do.body_crit_edge

if.end24.peel.do.body_crit_edge:                  ; preds = %if.end24.peel
  br label %do.body

if.end24.peel.do.end28_crit_edge:                 ; preds = %if.end24.peel
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end28

do.body:                                          ; preds = %if.end24.do.body_crit_edge, %if.end24.peel.do.body_crit_edge
  %pfn.0.in = phi i32 [ %pfn.0, %if.end24.do.body_crit_edge ], [ %add1, %if.end24.peel.do.body_crit_edge ]
  %left.0 = phi i32 [ %sub25, %if.end24.do.body_crit_edge ], [ %sub25.peel, %if.end24.peel.do.body_crit_edge ]
  %pfn.0 = add i32 %pfn.0.in, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %28 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %29 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub = sub i32 %pfn.0, %29
  %add.ptr = getelementptr %struct.page, ptr %28, i32 %sub
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr, align 4
  %shr.i = lshr i32 %31, 30
  %32 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %shr.i, label %do.body.if.else21_crit_edge [
    i32 2, label %do.body.if.then_crit_edge
    i32 3, label %is_highmem_idx.exit
  ]

do.body.if.then_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

do.body.if.else21_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else21

is_highmem_idx.exit:                              ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %33 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %cmp2.i.not = icmp eq i32 %33, 2
  br i1 %cmp2.i.not, label %is_highmem_idx.exit.if.then_crit_edge, label %is_highmem_idx.exit.if.else21_crit_edge

is_highmem_idx.exit.if.else21_crit_edge:          ; preds = %is_highmem_idx.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else21

is_highmem_idx.exit.if.then_crit_edge:            ; preds = %is_highmem_idx.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %is_highmem_idx.exit.if.then_crit_edge, %do.body.if.then_crit_edge
  %34 = call i32 @llvm.umin.i32(i32 %left.0, i32 4096)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cacheid to i32))
  %35 = load i32, ptr @cacheid, align 4
  %and2.i = and i32 %35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool7.not = icmp eq i32 %and2.i, 0
  br i1 %tobool7.not, label %if.then.if.end24_crit_edge, label %if.then8

if.then.if.end24_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %36 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %36, 512
  %37 = tail call i32 @llvm.read_register.i32(metadata !103) #14
  %and.i.i.i.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %40, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !127
  %41 = tail call i32 @llvm.read_register.i32(metadata !103) #14
  %and.i.i.i1.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 213
  %45 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %46, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !128
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr, i32 noundef %or.i) #14
  tail call void %op(ptr noundef %call.i.i, i32 noundef %34, i32 noundef %dir) #14
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !129
  %47 = tail call i32 @llvm.read_register.i32(metadata !103) #14
  %and.i.i.i1.i = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %50, i32 0, i32 213
  %51 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %52, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !130
  %53 = tail call i32 @llvm.read_register.i32(metadata !103) #14
  %and.i.i.i.i = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %56, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  br label %if.end24

if.else21:                                        ; preds = %is_highmem_idx.exit.if.else21_crit_edge, %do.body.if.else21_crit_edge
  %call22 = tail call ptr @page_address(ptr noundef %add.ptr) #14
  tail call void %op(ptr noundef %call22, i32 noundef %left.0, i32 noundef %dir) #14
  br label %if.end24

if.end24:                                         ; preds = %if.else21, %if.then8, %if.then.if.end24_crit_edge
  %len.1 = phi i32 [ %34, %if.then8 ], [ %left.0, %if.else21 ], [ %34, %if.then.if.end24_crit_edge ]
  %sub25 = sub i32 %left.0, %len.1
  %tobool27.not = icmp eq i32 %sub25, 0
  br i1 %tobool27.not, label %if.end24.do.end28_crit_edge, label %if.end24.do.body_crit_edge, !llvm.loop !131

if.end24.do.body_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

if.end24.do.end28_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end28

do.end28:                                         ; preds = %if.end24.do.end28_crit_edge, %if.end24.peel.do.end28_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__dma_page_dev_to_cpu(ptr noundef %page, i32 noundef %off, i32 noundef %size, i32 noundef %dir) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sub.ptr.lhs.cast = ptrtoint ptr %page to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp.not = icmp eq i32 %dir, 1
  br i1 %cmp.not, label %entry.if.end19_crit_edge, label %if.then

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @outer_cache to i32))
  %0 = load ptr, ptr @outer_cache, align 4
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %if.then.outer_inv_range.exit_crit_edge, label %if.then.i

if.then.outer_inv_range.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %outer_inv_range.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %1 = load ptr, ptr @mem_map, align 4
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %2 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %sub.ptr.div, %2
  %shl = shl i32 %add, 12
  %add1 = add i32 %shl, %off
  %add2 = add i32 %add1, %size
  tail call void %0(i32 noundef %add1, i32 noundef %add2) #14
  br label %outer_inv_range.exit

outer_inv_range.exit:                             ; preds = %if.then.i, %if.then.outer_inv_range.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 9) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 9), align 4
  tail call fastcc void @dma_cache_maint_page(ptr noundef %page, i32 noundef %off, i32 noundef %size, i32 noundef %dir, ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %size)
  %cmp4 = icmp ugt i32 %size, 4095
  br i1 %cmp4, label %if.then5, label %outer_inv_range.exit.if.end19_crit_edge

outer_inv_range.exit.if.end19_crit_edge:          ; preds = %outer_inv_range.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.then5:                                         ; preds = %outer_inv_range.exit
  %rem = and i32 %off, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  %sub.neg = or i32 %off, -4096
  %sub13 = select i1 %tobool.not, i32 0, i32 %sub.neg
  %spec.select38 = add i32 %sub13, %size
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %spec.select38)
  %cmp1539 = icmp ugt i32 %spec.select38, 4095
  br i1 %cmp1539, label %while.body.preheader, label %if.then5.if.end19_crit_edge

if.then5.if.end19_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

while.body.preheader:                             ; preds = %if.then5
  %div37 = lshr i32 %off, 12
  %not.tobool.not = xor i1 %tobool.not, true
  %inc = zext i1 %not.tobool.not to i32
  %add10 = add nuw nsw i32 %div37, %inc
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %4 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add11 = add i32 %add10, %4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %5 = load ptr, ptr @mem_map, align 4
  %sub.ptr.rhs.cast7 = ptrtoint ptr %5 to i32
  %sub.ptr.sub8 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast7
  %sub.ptr.div9 = sdiv exact i32 %sub.ptr.sub8, 36
  %spec.select = add i32 %add11, %sub.ptr.div9
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %left.141 = phi i32 [ %sub18, %while.body.while.body_crit_edge ], [ %spec.select38, %while.body.preheader ]
  %pfn.140 = phi i32 [ %inc16, %while.body.while.body_crit_edge ], [ %spec.select, %while.body.preheader ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %6 = load ptr, ptr @mem_map, align 4
  %inc16 = add i32 %pfn.140, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %7 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub17 = sub i32 %pfn.140, %7
  %add.ptr = getelementptr %struct.page, ptr %6, i32 %sub17
  tail call void @_set_bit(i32 noundef 11, ptr noundef %add.ptr) #14
  %sub18 = add i32 %left.141, -4096
  %cmp15 = icmp ugt i32 %sub18, 4095
  br i1 %cmp15, label %while.body.while.body_crit_edge, label %while.body.if.end19_crit_edge

while.body.if.end19_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

if.end19:                                         ; preds = %while.body.if.end19_crit_edge, %if.then5.if.end19_crit_edge, %outer_inv_range.exit.if.end19_crit_edge, %entry.if.end19_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @memparse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gen_pool_create(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__alloc_from_contiguous(ptr noundef %dev, i32 noundef %size, i32 noundef %prot, ptr nocapture noundef writeonly %ret_page, ptr noundef %caller, i1 noundef zeroext %want_vaddr, i32 noundef %coherent_flag, i32 noundef %gfp) unnamed_addr #0 align 64 {
entry:
  %prot.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dec.i = add i32 %size, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i)
  %tobool.not.i.i = icmp ult i32 %dec.i, 4096
  %shr.i = lshr i32 %dec.i, 12
  %0 = tail call i32 @llvm.ctlz.i32(i32 %shr.i, i1 true) #14, !range !133
  %sub.i.i = sub nuw nsw i32 32, %0
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  %shr = lshr i32 %size, 12
  %and = and i32 %gfp, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %call1 = tail call ptr @dma_alloc_from_contiguous(ptr noundef %dev, i32 noundef %shr, i32 noundef %cond.i.i, i1 noundef zeroext %tobool) #14
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @__dma_clear_buffer(ptr noundef nonnull %call1, i32 noundef %size, i32 noundef %coherent_flag)
  br i1 %want_vaddr, label %if.end5, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end5:                                          ; preds = %if.end
  %1 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call1, align 4
  %shr.i35 = lshr i32 %2, 30
  %3 = zext i32 %shr.i35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %shr.i35, label %if.end5.if.else_crit_edge [
    i32 2, label %if.end5.if.then9_crit_edge
    i32 3, label %is_highmem_idx.exit
  ]

if.end5.if.then9_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then9

if.end5.if.else_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

is_highmem_idx.exit:                              ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %4 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp2.i.not = icmp eq i32 %4, 2
  br i1 %cmp2.i.not, label %is_highmem_idx.exit.if.then9_crit_edge, label %is_highmem_idx.exit.if.else_crit_edge

is_highmem_idx.exit.if.else_crit_edge:            ; preds = %is_highmem_idx.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

is_highmem_idx.exit.if.then9_crit_edge:           ; preds = %is_highmem_idx.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then9

if.then9:                                         ; preds = %is_highmem_idx.exit.if.then9_crit_edge, %if.end5.if.then9_crit_edge
  %call10 = tail call ptr @dma_common_contiguous_remap(ptr noundef nonnull %call1, i32 noundef %size, i32 noundef %prot, ptr noundef %caller) #14
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.then12, label %if.then9.out_crit_edge

if.then9.out_crit_edge:                           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then12:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #16
  %call13 = tail call zeroext i1 @dma_release_from_contiguous(ptr noundef %dev, ptr noundef nonnull %call1, i32 noundef %shr) #14
  br label %cleanup

if.else:                                          ; preds = %is_highmem_idx.exit.if.else_crit_edge, %if.end5.if.else_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prot.addr.i)
  %5 = ptrtoint ptr %prot.addr.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %prot, ptr %prot.addr.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef nonnull %call1) #14
  %6 = ptrtoint ptr %call.i to i32
  %add.i36 = add i32 %6, %size
  %call1.i = call i32 @apply_to_page_range(ptr noundef nonnull @init_mm, i32 noundef %6, i32 noundef %size, ptr noundef nonnull @__dma_update_pte, ptr noundef nonnull %prot.addr.i) #14
  call void @flush_tlb_kernel_range(i32 noundef %6, i32 noundef %add.i36) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prot.addr.i)
  %call15 = call ptr @page_address(ptr noundef nonnull %call1) #14
  br label %out

out:                                              ; preds = %if.else, %if.then9.out_crit_edge, %if.end.out_crit_edge
  %ptr.0 = phi ptr [ %call10, %if.then9.out_crit_edge ], [ %call15, %if.else ], [ null, %if.end.out_crit_edge ]
  %7 = ptrtoint ptr %ret_page to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call1, ptr %ret_page, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then12, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %ptr.0, %out ], [ null, %if.then12 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__alloc_remap_buffer(i32 noundef %size, i32 noundef %gfp, i32 noundef %prot, ptr nocapture noundef writeonly %ret_page, ptr noundef %caller, i1 noundef zeroext %want_vaddr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dec.i.i = add i32 %size, -1
  %shr.i.i = lshr i32 %dec.i.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i.i)
  %tobool.not.i.i.i = icmp ult i32 %dec.i.i, 4096
  %0 = tail call i32 @llvm.ctlz.i32(i32 %shr.i.i, i1 true) #14, !range !133
  %sub.i.i.i = sub nuw nsw i32 32, %0
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 0, i32 %sub.i.i.i
  %call38.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef %gfp, i32 noundef %cond.i.i.i, i32 noundef 0, ptr noundef null) #14
  %tobool.not.i = icmp eq ptr %call38.i.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %entry
  tail call void @split_page(ptr noundef nonnull %call38.i.i.i.i, i32 noundef %cond.i.i.i) #14
  %shr.i = lshr i32 %size, 12
  %add.ptr.i = getelementptr %struct.page, ptr %call38.i.i.i.i, i32 %shr.i
  %shl.i = shl nuw i32 1, %cond.i.i.i
  %add.ptr2.i = getelementptr %struct.page, ptr %call38.i.i.i.i, i32 %shl.i
  %cmp1.i = icmp ult ptr %add.ptr.i, %add.ptr2.i
  br i1 %cmp1.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %p.02.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %add.ptr.i, %if.end.i.for.body.i_crit_edge ]
  tail call void @__free_pages(ptr noundef %p.02.i, i32 noundef 0) #14
  %incdec.ptr.i = getelementptr %struct.page, ptr %p.02.i, i32 1
  %cmp.i = icmp ult ptr %incdec.ptr.i, %add.ptr2.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end_crit_edge

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

if.end:                                           ; preds = %for.body.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  tail call fastcc void @__dma_clear_buffer(ptr noundef nonnull %call38.i.i.i.i, i32 noundef %size, i32 noundef 0) #14
  br i1 %want_vaddr, label %if.end3, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end3:                                          ; preds = %if.end
  %call4 = tail call ptr @dma_common_contiguous_remap(ptr noundef nonnull %call38.i.i.i.i, i32 noundef %size, i32 noundef %prot, ptr noundef %caller) #14
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.then6, label %if.end3.out_crit_edge

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then6:                                         ; preds = %if.end3
  %cmp4.i = icmp ugt ptr %add.ptr.i, %call38.i.i.i.i
  br i1 %cmp4.i, label %if.then6.while.body.i_crit_edge, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then6.while.body.i_crit_edge:                  ; preds = %if.then6
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then6.while.body.i_crit_edge
  %page.addr.05.i = phi ptr [ %incdec.ptr.i3, %while.body.i.while.body.i_crit_edge ], [ %call38.i.i.i.i, %if.then6.while.body.i_crit_edge ]
  tail call void @__free_pages(ptr noundef %page.addr.05.i, i32 noundef 0) #14
  %incdec.ptr.i3 = getelementptr %struct.page, ptr %page.addr.05.i, i32 1
  %cmp.i4 = icmp ult ptr %incdec.ptr.i3, %add.ptr.i
  br i1 %cmp.i4, label %while.body.i.while.body.i_crit_edge, label %while.body.i.cleanup_crit_edge

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

out:                                              ; preds = %if.end3.out_crit_edge, %if.end.out_crit_edge
  %ptr.0 = phi ptr [ %call4, %if.end3.out_crit_edge ], [ null, %if.end.out_crit_edge ]
  %1 = ptrtoint ptr %ret_page to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call38.i.i.i.i, ptr %ret_page, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %while.body.i.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %ptr.0, %out ], [ null, %if.then6.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %while.body.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gen_pool_set_algo(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_first_fit_order_align(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @gen_pool_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_from_contiguous(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__dma_clear_buffer(ptr noundef %page, i32 noundef %size, i32 noundef %coherent_flag) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page, align 4
  %shr.i = lshr i32 %1, 30
  %2 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %shr.i, label %entry.if.else_crit_edge [
    i32 2, label %entry.if.then_crit_edge
    i32 3, label %is_highmem_idx.exit
  ]

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

is_highmem_idx.exit:                              ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %3 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp2.i.not = icmp eq i32 %3, 2
  br i1 %cmp2.i.not, label %is_highmem_idx.exit.if.then_crit_edge, label %is_highmem_idx.exit.if.else_crit_edge

is_highmem_idx.exit.if.else_crit_edge:            ; preds = %is_highmem_idx.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

is_highmem_idx.exit.if.then_crit_edge:            ; preds = %is_highmem_idx.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %is_highmem_idx.exit.if.then_crit_edge, %entry.if.then_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %4 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %page to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %4 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %5 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %sub.ptr.div, %5
  %shl = shl i32 %add, 12
  %add2 = add i32 %shl, %size
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp.not47 = icmp eq i32 %size, 0
  br i1 %cmp.not47, label %if.then.while.end_crit_edge, label %while.body.lr.ph

if.then.while.end_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %coherent_flag)
  %cmp4.not = icmp eq i32 %coherent_flag, 1
  br label %while.body

while.body:                                       ; preds = %do.end.while.body_crit_edge, %while.body.lr.ph
  %page.addr.049 = phi ptr [ %page, %while.body.lr.ph ], [ %incdec.ptr, %do.end.while.body_crit_edge ]
  %size.addr.048 = phi i32 [ %size, %while.body.lr.ph ], [ %sub, %do.end.while.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %6 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %6, 512
  %7 = tail call i32 @llvm.read_register.i32(metadata !103) #14
  %and.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !127
  %11 = tail call i32 @llvm.read_register.i32(metadata !103) #14
  %and.i.i.i1.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 213
  %15 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %16, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !128
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %page.addr.049, i32 noundef %or.i) #14
  %17 = call ptr @memset(ptr %call.i.i, i32 0, i32 4096)
  br i1 %cmp4.not, label %while.body.do.end_crit_edge, label %if.then5

while.body.do.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then5:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 10) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 10), align 4
  %add.ptr = getelementptr i8, ptr %call.i.i, i32 4096
  tail call void %18(ptr noundef %call.i.i, ptr noundef %add.ptr) #14
  br label %do.end

do.end:                                           ; preds = %if.then5, %while.body.do.end_crit_edge
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !129
  %19 = tail call i32 @llvm.read_register.i32(metadata !103) #14
  %and.i.i.i1.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 213
  %23 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %24, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !130
  %25 = tail call i32 @llvm.read_register.i32(metadata !103) #14
  %and.i.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %28, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  %incdec.ptr = getelementptr %struct.page, ptr %page.addr.049, i32 1
  %sub = add i32 %size.addr.048, -4096
  %cmp.not = icmp eq i32 %sub, 0
  br i1 %cmp.not, label %do.end.while.end_crit_edge, label %do.end.while.body_crit_edge

do.end.while.body_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %if.then.while.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %coherent_flag)
  %cmp9.not = icmp eq i32 %coherent_flag, 1
  br i1 %cmp9.not, label %while.end.if.end21_crit_edge, label %if.then10

while.end.if.end21_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

if.then10:                                        ; preds = %while.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 2) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 2), align 4
  %tobool.not.i = icmp eq ptr %29, null
  br i1 %tobool.not.i, label %if.then10.if.end21_crit_edge, label %if.then.i

if.then10.if.end21_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

if.then.i:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %29(i32 noundef %shl, i32 noundef %add2) #14
  br label %if.end21

if.else:                                          ; preds = %is_highmem_idx.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %call13 = tail call ptr @page_address(ptr noundef %page) #14
  %30 = call ptr @memset(ptr %call13, i32 0, i32 %size)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %coherent_flag)
  %cmp14.not = icmp eq i32 %coherent_flag, 1
  br i1 %cmp14.not, label %if.else.if.end21_crit_edge, label %if.then15

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

if.then15:                                        ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 10) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 10), align 4
  %add.ptr16 = getelementptr i8, ptr %call13, i32 %size
  tail call void %31(ptr noundef %call13, ptr noundef %add.ptr16) #14
  %32 = ptrtoint ptr %call13 to i32
  %call17 = tail call i32 @__virt_to_phys(i32 noundef %32) #14
  %call18 = tail call i32 @__virt_to_phys(i32 noundef %32) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 2) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 2), align 4
  %tobool.not.i41 = icmp eq ptr %33, null
  br i1 %tobool.not.i41, label %if.then15.if.end21_crit_edge, label %if.then.i42

if.then15.if.end21_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

if.then.i42:                                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #16
  %add19 = add i32 %call18, %size
  tail call void %33(i32 noundef %call17, i32 noundef %add19) #14
  br label %if.end21

if.end21:                                         ; preds = %if.then.i42, %if.then15.if.end21_crit_edge, %if.else.if.end21_crit_edge, %if.then.i, %if.then10.if.end21_crit_edge, %while.end.if.end21_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_common_contiguous_remap(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dma_release_from_contiguous(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @apply_to_page_range(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__dma_update_pte(ptr noundef %pte, i32 noundef %addr, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %addr, 1073741824
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %0 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpu_vtable to i32))
  %3 = load ptr, ptr @cpu_vtable, align 4
  %set_pte_ext = getelementptr inbounds %struct.processor, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %set_pte_ext to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_pte_ext, align 4
  %add23 = shl i32 %0, 12
  %shr4 = add i32 %sub, %add23
  %shl = and i32 %shr4, -4096
  %or = or i32 %shl, %2
  tail call void %5(ptr noundef %pte, i32 noundef %or, i32 noundef 0) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @split_page(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_add_owner(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @cma_allocator_alloc(ptr nocapture noundef readonly %args, ptr nocapture noundef writeonly %ret_page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %args, align 4
  %size = getelementptr inbounds %struct.arm_dma_alloc_args, ptr %args, i32 0, i32 1
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  %prot = getelementptr inbounds %struct.arm_dma_alloc_args, ptr %args, i32 0, i32 3
  %4 = ptrtoint ptr %prot to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %prot, align 4
  %caller = getelementptr inbounds %struct.arm_dma_alloc_args, ptr %args, i32 0, i32 4
  %6 = ptrtoint ptr %caller to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %caller, align 4
  %want_vaddr = getelementptr inbounds %struct.arm_dma_alloc_args, ptr %args, i32 0, i32 5
  %8 = ptrtoint ptr %want_vaddr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %want_vaddr, align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool = icmp ne i8 %9, 0
  %coherent_flag = getelementptr inbounds %struct.arm_dma_alloc_args, ptr %args, i32 0, i32 6
  %10 = ptrtoint ptr %coherent_flag to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %coherent_flag, align 4
  %gfp = getelementptr inbounds %struct.arm_dma_alloc_args, ptr %args, i32 0, i32 2
  %12 = ptrtoint ptr %gfp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %gfp, align 4
  %call = tail call fastcc ptr @__alloc_from_contiguous(ptr noundef %1, i32 noundef %3, i32 noundef %5, ptr noundef %ret_page, ptr noundef %7, i1 noundef zeroext %tobool, i32 noundef %11, i32 noundef %13)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cma_allocator_free(ptr nocapture noundef readonly %args) #0 align 64 {
entry:
  %prot.addr.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %args, align 4
  %page = getelementptr inbounds %struct.arm_dma_free_args, ptr %args, i32 0, i32 3
  %2 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %page, align 4
  %cpu_addr = getelementptr inbounds %struct.arm_dma_free_args, ptr %args, i32 0, i32 2
  %4 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cpu_addr, align 4
  %size = getelementptr inbounds %struct.arm_dma_free_args, ptr %args, i32 0, i32 1
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  %want_vaddr = getelementptr inbounds %struct.arm_dma_free_args, ptr %args, i32 0, i32 4
  %8 = ptrtoint ptr %want_vaddr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %want_vaddr, align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %entry.__free_from_contiguous.exit_crit_edge, label %if.then.i

entry.__free_from_contiguous.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %__free_from_contiguous.exit

if.then.i:                                        ; preds = %entry
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %3, align 4
  %shr.i.i = lshr i32 %11, 30
  %12 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %shr.i.i, label %if.then.i.if.else.i_crit_edge [
    i32 2, label %if.then.i.if.then3.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.then.i.if.then3.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then3.i

if.then.i.if.else.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i

is_highmem_idx.exit.i:                            ; preds = %if.then.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %13 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp2.i.not.i = icmp eq i32 %13, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.then3.i_crit_edge, label %is_highmem_idx.exit.i.if.else.i_crit_edge

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i

is_highmem_idx.exit.i.if.then3.i_crit_edge:       ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then3.i

if.then3.i:                                       ; preds = %is_highmem_idx.exit.i.if.then3.i_crit_edge, %if.then.i.if.then3.i_crit_edge
  tail call void @dma_common_free_remap(ptr noundef %5, i32 noundef %7) #14
  br label %__free_from_contiguous.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %if.then.i.if.else.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %14 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %14, 512
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prot.addr.i.i) #14
  %15 = ptrtoint ptr %prot.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or.i, ptr %prot.addr.i.i, align 4
  %call.i.i = tail call ptr @page_address(ptr noundef %3) #14
  %16 = ptrtoint ptr %call.i.i to i32
  %add.i.i = add i32 %7, %16
  %call1.i.i = call i32 @apply_to_page_range(ptr noundef nonnull @init_mm, i32 noundef %16, i32 noundef %7, ptr noundef nonnull @__dma_update_pte, ptr noundef nonnull %prot.addr.i.i) #14
  call void @flush_tlb_kernel_range(i32 noundef %16, i32 noundef %add.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prot.addr.i.i) #14
  br label %__free_from_contiguous.exit

__free_from_contiguous.exit:                      ; preds = %if.else.i, %if.then3.i, %entry.__free_from_contiguous.exit_crit_edge
  %shr.i = lshr i32 %7, 12
  %call5.i = call zeroext i1 @dma_release_from_contiguous(ptr noundef %1, ptr noundef %3, i32 noundef %shr.i) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_common_free_remap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @simple_allocator_alloc(ptr nocapture noundef readonly %args, ptr nocapture noundef writeonly %ret_page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.arm_dma_alloc_args, ptr %args, i32 0, i32 1
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  %gfp = getelementptr inbounds %struct.arm_dma_alloc_args, ptr %args, i32 0, i32 2
  %2 = ptrtoint ptr %gfp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gfp, align 4
  %call = tail call fastcc ptr @__alloc_simple_buffer(i32 noundef %1, i32 noundef %3, ptr noundef %ret_page)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @simple_allocator_free(ptr nocapture noundef readonly %args) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %page = getelementptr inbounds %struct.arm_dma_free_args, ptr %args, i32 0, i32 3
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %page, align 4
  %size = getelementptr inbounds %struct.arm_dma_free_args, ptr %args, i32 0, i32 1
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  %shr.i = lshr i32 %3, 12
  %add.ptr.i = getelementptr %struct.page, ptr %1, i32 %shr.i
  %cmp4.i = icmp ugt ptr %add.ptr.i, %1
  br i1 %cmp4.i, label %entry.while.body.i_crit_edge, label %entry.__dma_free_buffer.exit_crit_edge

entry.__dma_free_buffer.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %__dma_free_buffer.exit

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %page.addr.05.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %1, %entry.while.body.i_crit_edge ]
  tail call void @__free_pages(ptr noundef %page.addr.05.i, i32 noundef 0) #14
  %incdec.ptr.i = getelementptr %struct.page, ptr %page.addr.05.i, i32 1
  %cmp.i = icmp ult ptr %incdec.ptr.i, %add.ptr.i
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.__dma_free_buffer.exit_crit_edge

while.body.i.__dma_free_buffer.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__dma_free_buffer.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

__dma_free_buffer.exit:                           ; preds = %while.body.i.__dma_free_buffer.exit_crit_edge, %entry.__dma_free_buffer.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__alloc_simple_buffer(i32 noundef %size, i32 noundef %gfp, ptr nocapture noundef writeonly %ret_page) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dec.i.i = add i32 %size, -1
  %shr.i.i = lshr i32 %dec.i.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i.i)
  %tobool.not.i.i.i = icmp ult i32 %dec.i.i, 4096
  %0 = tail call i32 @llvm.ctlz.i32(i32 %shr.i.i, i1 true) #14, !range !133
  %sub.i.i.i = sub nuw nsw i32 32, %0
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 0, i32 %sub.i.i.i
  %call38.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef %gfp, i32 noundef %cond.i.i.i, i32 noundef 0, ptr noundef null) #14
  %tobool.not.i = icmp eq ptr %call38.i.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %entry
  tail call void @split_page(ptr noundef nonnull %call38.i.i.i.i, i32 noundef %cond.i.i.i) #14
  %shr.i = lshr i32 %size, 12
  %add.ptr.i = getelementptr %struct.page, ptr %call38.i.i.i.i, i32 %shr.i
  %shl.i = shl nuw i32 1, %cond.i.i.i
  %add.ptr2.i = getelementptr %struct.page, ptr %call38.i.i.i.i, i32 %shl.i
  %cmp1.i = icmp ult ptr %add.ptr.i, %add.ptr2.i
  br i1 %cmp1.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %p.02.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %add.ptr.i, %if.end.i.for.body.i_crit_edge ]
  tail call void @__free_pages(ptr noundef %p.02.i, i32 noundef 0) #14
  %incdec.ptr.i = getelementptr %struct.page, ptr %p.02.i, i32 1
  %cmp.i = icmp ult ptr %incdec.ptr.i, %add.ptr2.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end_crit_edge

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

if.end:                                           ; preds = %for.body.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  tail call fastcc void @__dma_clear_buffer(ptr noundef nonnull %call38.i.i.i.i, i32 noundef %size, i32 noundef 1) #14
  %1 = ptrtoint ptr %ret_page to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call38.i.i.i.i, ptr %ret_page, align 4
  %call1 = tail call ptr @page_address(ptr noundef nonnull %call38.i.i.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call1, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @remap_allocator_alloc(ptr nocapture noundef readonly %args, ptr nocapture noundef writeonly %ret_page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.arm_dma_alloc_args, ptr %args, i32 0, i32 1
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  %gfp = getelementptr inbounds %struct.arm_dma_alloc_args, ptr %args, i32 0, i32 2
  %2 = ptrtoint ptr %gfp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gfp, align 4
  %prot = getelementptr inbounds %struct.arm_dma_alloc_args, ptr %args, i32 0, i32 3
  %4 = ptrtoint ptr %prot to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %prot, align 4
  %caller = getelementptr inbounds %struct.arm_dma_alloc_args, ptr %args, i32 0, i32 4
  %6 = ptrtoint ptr %caller to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %caller, align 4
  %want_vaddr = getelementptr inbounds %struct.arm_dma_alloc_args, ptr %args, i32 0, i32 5
  %8 = ptrtoint ptr %want_vaddr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %want_vaddr, align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool = icmp ne i8 %9, 0
  %call = tail call fastcc ptr @__alloc_remap_buffer(i32 noundef %1, i32 noundef %3, i32 noundef %5, ptr noundef %ret_page, ptr noundef %7, i1 noundef zeroext %tobool)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @remap_allocator_free(ptr nocapture noundef readonly %args) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %want_vaddr = getelementptr inbounds %struct.arm_dma_free_args, ptr %args, i32 0, i32 4
  %0 = ptrtoint ptr %want_vaddr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %want_vaddr, align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %cpu_addr = getelementptr inbounds %struct.arm_dma_free_args, ptr %args, i32 0, i32 2
  %2 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpu_addr, align 4
  %size = getelementptr inbounds %struct.arm_dma_free_args, ptr %args, i32 0, i32 1
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  tail call void @dma_common_free_remap(ptr noundef %3, i32 noundef %5) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %page = getelementptr inbounds %struct.arm_dma_free_args, ptr %args, i32 0, i32 3
  %6 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %page, align 4
  %size1 = getelementptr inbounds %struct.arm_dma_free_args, ptr %args, i32 0, i32 1
  %8 = ptrtoint ptr %size1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size1, align 4
  %shr.i = lshr i32 %9, 12
  %add.ptr.i = getelementptr %struct.page, ptr %7, i32 %shr.i
  %cmp4.i = icmp ugt ptr %add.ptr.i, %7
  br i1 %cmp4.i, label %if.end.while.body.i_crit_edge, label %if.end.__dma_free_buffer.exit_crit_edge

if.end.__dma_free_buffer.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %__dma_free_buffer.exit

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %page.addr.05.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %7, %if.end.while.body.i_crit_edge ]
  tail call void @__free_pages(ptr noundef %page.addr.05.i, i32 noundef 0) #14
  %incdec.ptr.i = getelementptr %struct.page, ptr %page.addr.05.i, i32 1
  %cmp.i = icmp ult ptr %incdec.ptr.i, %add.ptr.i
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.__dma_free_buffer.exit_crit_edge

while.body.i.__dma_free_buffer.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__dma_free_buffer.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

__dma_free_buffer.exit:                           ; preds = %while.body.i.__dma_free_buffer.exit_crit_edge, %if.end.__dma_free_buffer.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @pool_allocator_alloc(ptr nocapture noundef readonly %args, ptr nocapture noundef writeonly %ret_page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @atomic_pool, align 4
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end17.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 490, i32 noundef 9, ptr noundef nonnull @.str.16) #14
  br label %__alloc_from_pool.exit

if.end17.i:                                       ; preds = %entry
  %size = getelementptr inbounds %struct.arm_dma_alloc_args, ptr %args, i32 0, i32 1
  %1 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %size, align 4
  %algo.i.i = getelementptr inbounds %struct.gen_pool, ptr %0, i32 0, i32 3
  %3 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %algo.i.i, align 4
  %data.i.i = getelementptr inbounds %struct.gen_pool, ptr %0, i32 0, i32 4
  %5 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i.i, align 4
  %call.i.i.i = tail call i32 @gen_pool_alloc_algo_owner(ptr noundef nonnull %0, i32 noundef %2, ptr noundef %4, ptr noundef %6, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool18.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool18.not.i, label %if.end17.i.__alloc_from_pool.exit_crit_edge, label %if.then19.i

if.end17.i.__alloc_from_pool.exit_crit_edge:      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__alloc_from_pool.exit

if.then19.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #16
  %7 = load ptr, ptr @atomic_pool, align 4
  %call20.i = tail call i32 @gen_pool_virt_to_phys(ptr noundef %7, i32 noundef %call.i.i.i) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %8 = load ptr, ptr @mem_map, align 4
  %shr.i = lshr i32 %call20.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %9 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i = sub i32 %shr.i, %9
  %add.ptr.i = getelementptr %struct.page, ptr %8, i32 %sub.i
  %10 = ptrtoint ptr %ret_page to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr.i, ptr %ret_page, align 4
  %11 = inttoptr i32 %call.i.i.i to ptr
  br label %__alloc_from_pool.exit

__alloc_from_pool.exit:                           ; preds = %if.then19.i, %if.end17.i.__alloc_from_pool.exit_crit_edge, %do.end.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %11, %if.then19.i ], [ null, %if.end17.i.__alloc_from_pool.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pool_allocator_free(ptr nocapture noundef readonly %args) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cpu_addr = getelementptr inbounds %struct.arm_dma_free_args, ptr %args, i32 0, i32 2
  %0 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpu_addr, align 4
  %size = getelementptr inbounds %struct.arm_dma_free_args, ptr %args, i32 0, i32 1
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  %4 = load ptr, ptr @atomic_pool, align 4
  %5 = ptrtoint ptr %1 to i32
  %call.i.i = tail call zeroext i1 @gen_pool_has_addr(ptr noundef %4, i32 noundef %5, i32 noundef %3) #14
  br i1 %call.i.i, label %if.end.i, label %entry.__free_from_pool.exit_crit_edge

entry.__free_from_pool.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %__free_from_pool.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %6 = load ptr, ptr @atomic_pool, align 4
  tail call void @gen_pool_free_owner(ptr noundef %6, i32 noundef %5, i32 noundef %3, ptr noundef null) #14
  br label %__free_from_pool.exit

__free_from_pool.exit:                            ; preds = %if.end.i, %entry.__free_from_pool.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_virt_to_phys(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_alloc_algo_owner(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @gen_pool_has_addr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gen_pool_free_owner(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_mmap_from_dev_coherent(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remap_pfn_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_domain_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_attach_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @arm_iommu_alloc_attrs(ptr noundef %dev, i32 noundef %size, ptr nocapture noundef %handle, i32 noundef %gfp, i32 noundef %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @__arm_iommu_alloc_attrs(ptr noundef %dev, i32 noundef %size, ptr noundef %handle, i32 noundef %gfp, i32 noundef %attrs, i32 noundef 0)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arm_iommu_free_attrs(ptr noundef %dev, i32 noundef %size, ptr noundef %cpu_addr, i32 noundef %handle, i32 noundef %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__arm_iommu_free_attrs(ptr noundef %dev, i32 noundef %size, ptr noundef %cpu_addr, i32 noundef %handle, i32 noundef %attrs, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_iommu_mmap_attrs(ptr nocapture noundef readnone %dev, ptr noundef %vma, ptr noundef %cpu_addr, i32 noundef %dma_addr, i32 noundef %size, i32 noundef %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_page_prot = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %0 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vm_page_prot, align 4
  %and.i = and i32 %attrs, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and1.i = and i32 %1, -61
  %or.i = or i32 %and1.i, 4
  %and2.i = and i32 %1, -573
  %or3.i = or i32 %and2.i, 516
  %cond.i = select i1 %tobool.not.i, i32 %or3.i, i32 %or.i
  %2 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %cond.i, ptr %vm_page_prot, align 4
  %call2 = tail call fastcc i32 @__arm_iommu_mmap_attrs(ptr noundef %vma, ptr noundef %cpu_addr, i32 noundef %size, i32 noundef %attrs)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_iommu_get_sgtable(ptr nocapture noundef readnone %dev, ptr noundef %sgt, ptr noundef %cpu_addr, i32 noundef %dma_addr, i32 noundef %size, i32 noundef %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @atomic_pool, align 4
  %1 = ptrtoint ptr %cpu_addr to i32
  %call.i.i = tail call zeroext i1 @gen_pool_has_addr(ptr noundef %0, i32 noundef %1, i32 noundef 4096) #14
  br i1 %call.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %2 = load ptr, ptr @atomic_pool, align 4
  %call.i8.i = tail call i32 @gen_pool_virt_to_phys(ptr noundef %2, i32 noundef %1) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %3 = load ptr, ptr @mem_map, align 4
  %shr.i.i = lshr i32 %call.i8.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %4 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i.i = sub i32 %shr.i.i, %4
  %add.ptr.i.i = getelementptr %struct.page, ptr %3, i32 %sub.i.i
  br label %__iommu_get_pages.exit

if.end.i:                                         ; preds = %entry
  %and.i = and i32 %attrs, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i.__iommu_get_pages.exit_crit_edge

if.end.i.__iommu_get_pages.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__iommu_get_pages.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %call4.i = tail call ptr @dma_common_find_pages(ptr noundef %cpu_addr) #14
  br label %__iommu_get_pages.exit

__iommu_get_pages.exit:                           ; preds = %if.end3.i, %if.end.i.__iommu_get_pages.exit_crit_edge, %if.then.i
  %retval.0.i = phi ptr [ %add.ptr.i.i, %if.then.i ], [ %call4.i, %if.end3.i ], [ %cpu_addr, %if.end.i.__iommu_get_pages.exit_crit_edge ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %__iommu_get_pages.exit.cleanup_crit_edge, label %if.end

__iommu_get_pages.exit.cleanup_crit_edge:         ; preds = %__iommu_get_pages.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %__iommu_get_pages.exit
  call void @__sanitizer_cov_trace_pc() #16
  %add = add i32 %size, 4095
  %shr = lshr i32 %add, 12
  %call.i = tail call i32 @sg_alloc_table_from_pages_segment(ptr noundef %sgt, ptr noundef nonnull %retval.0.i, i32 noundef %shr, i32 noundef 0, i32 noundef %size, i32 noundef -1, i32 noundef 3264) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %__iommu_get_pages.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ -6, %__iommu_get_pages.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_iommu_map_page(ptr nocapture noundef readonly %dev, ptr noundef %page, i32 noundef %offset, i32 noundef %size, i32 noundef %dir, i32 noundef %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %attrs, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 8), align 4
  tail call fastcc void @dma_cache_maint_page(ptr noundef %page, i32 noundef %offset, i32 noundef %size, i32 noundef %dir, ptr noundef %0) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %1 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %page to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %2 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %sub.ptr.div.i, %2
  %shl.i = shl i32 %add.i, 12
  %add1.i = add i32 %shl.i, %offset
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dir)
  %cmp.i = icmp eq i32 %dir, 2
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @outer_cache to i32))
  %3 = load ptr, ptr @outer_cache, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.then.i.if.end_crit_edge, label %if.then.i.if.end.sink.split.i_crit_edge

if.then.i.if.end.sink.split.i_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.sink.split.i

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.else.i:                                        ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %tobool.not.i12.i = icmp eq ptr %4, null
  br i1 %tobool.not.i12.i, label %if.else.i.if.end_crit_edge, label %if.else.i.if.end.sink.split.i_crit_edge

if.else.i.if.end.sink.split.i_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.sink.split.i

if.else.i.if.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.sink.split.i:                              ; preds = %if.else.i.if.end.sink.split.i_crit_edge, %if.then.i.if.end.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %3, %if.then.i.if.end.sink.split.i_crit_edge ], [ %4, %if.else.i.if.end.sink.split.i_crit_edge ]
  %add3.i = add i32 %add1.i, %size
  tail call void %.sink.i(i32 noundef %add1.i, i32 noundef %add3.i) #14
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split.i, %if.else.i.if.end_crit_edge, %if.then.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call = tail call i32 @arm_coherent_iommu_map_page(ptr noundef %dev, ptr noundef %page, i32 noundef %offset, i32 noundef %size, i32 noundef %dir, i32 noundef %attrs)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arm_iommu_unmap_page(ptr nocapture noundef readonly %dev, i32 noundef %handle, i32 noundef %size, i32 noundef %dir, i32 noundef %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %archdata = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 26
  %0 = ptrtoint ptr %archdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %archdata, align 8
  %and = and i32 %handle, -4096
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %2 = load ptr, ptr @mem_map, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %call = tail call i32 @iommu_iova_to_phys(ptr noundef %4, i32 noundef %and) #14
  %shr = lshr i32 %call, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %5 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub = sub i32 %shr, %5
  %add.ptr = getelementptr %struct.page, ptr %2, i32 %sub
  %and2 = and i32 %handle, 4095
  %add = add i32 %size, 4095
  %add3 = add i32 %add, %and2
  %and4 = and i32 %add3, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %and5 = and i32 %attrs, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %cmp = icmp eq i32 %and5, 0
  br i1 %cmp, label %if.then6, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @__dma_page_dev_to_cpu(ptr noundef %add.ptr, i32 noundef %and2, i32 noundef %size, i32 noundef %dir)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call9 = tail call i32 @iommu_unmap(ptr noundef %7, i32 noundef %and, i32 noundef %and4) #14
  %bits.i = getelementptr inbounds %struct.dma_iommu_mapping, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %bits.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bits.i, align 4
  %shl.i = shl i32 %9, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not.i = icmp eq i32 %and4, 0
  br i1 %tobool.not.i, label %if.end7.cleanup_crit_edge, label %if.end.i

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %if.end7
  %base.i = getelementptr inbounds %struct.dma_iommu_mapping, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base.i, align 4
  %sub.i = sub i32 %and, %11
  %div.i = udiv i32 %sub.i, %shl.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %11)
  %cmp.i = icmp ult i32 %and, %11
  br i1 %cmp.i, label %if.end.i.do.body6.i_crit_edge, label %lor.rhs.i, !prof !121

if.end.i.do.body6.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body6.i

lor.rhs.i:                                        ; preds = %if.end.i
  %extensions.i = getelementptr inbounds %struct.dma_iommu_mapping, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %extensions.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %extensions.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %13)
  %cmp2.i = icmp ugt i32 %div.i, %13
  br i1 %cmp2.i, label %lor.rhs.i.do.body6.i_crit_edge, label %do.end12.i, !prof !121

lor.rhs.i.do.body6.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body6.i

do.body6.i:                                       ; preds = %lor.rhs.i.do.body6.i_crit_edge, %if.end.i.do.body6.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/dma-mapping.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1174, 0\0A.popsection", ""() #14, !srcloc !134
  unreachable

do.end12.i:                                       ; preds = %lor.rhs.i
  %mul.i = mul i32 %div.i, %shl.i
  %add.i = add i32 %mul.i, %11
  %add15.i = add i32 %and4, %and
  %add16.i = add i32 %add.i, %shl.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add15.i, i32 %add16.i)
  %cmp17.i = icmp ugt i32 %add15.i, %add16.i
  br i1 %cmp17.i, label %do.body19.i, label %if.else.i

do.body19.i:                                      ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/dma-mapping.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1187, 0\0A.popsection", ""() #14, !srcloc !135
  unreachable

if.else.i:                                        ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub14.i = sub i32 %and, %add.i
  %shr.i = lshr i32 %sub14.i, 12
  %shr25.i = lshr i32 %add3, 12
  %lock.i = getelementptr inbounds %struct.dma_iommu_mapping, ptr %1, i32 0, i32 7
  %call30.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #14
  %bitmaps.i = getelementptr inbounds %struct.dma_iommu_mapping, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %bitmaps.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bitmaps.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %15, i32 %div.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  tail call void @__bitmap_clear(ptr noundef %17, i32 noundef %shr.i, i32 noundef %shr25.i) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call30.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_iommu_map_sg(ptr nocapture noundef readonly %dev, ptr noundef %sg, i32 noundef %nents, i32 noundef %dir, i32 noundef %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__iommu_map_sg(ptr noundef %dev, ptr noundef %sg, i32 noundef %nents, i32 noundef %dir, i32 noundef %attrs, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arm_iommu_unmap_sg(ptr nocapture noundef readonly %dev, ptr noundef %sg, i32 noundef %nents, i32 noundef %dir, i32 noundef %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nents)
  %cmp15.i = icmp sgt i32 %nents, 0
  br i1 %cmp15.i, label %for.body.lr.ph.i, label %entry.__iommu_unmap_sg.exit_crit_edge

entry.__iommu_unmap_sg.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %__iommu_unmap_sg.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %and.i = and i32 %attrs, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp3.i.not = icmp eq i32 %and.i, 0
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.018.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %s.016.i = phi ptr [ %sg, %for.body.lr.ph.i ], [ %call7.i, %for.inc.i.for.body.i_crit_edge ]
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %s.016.i, i32 0, i32 4
  %0 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dma_length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %s.016.i, i32 0, i32 3
  %2 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_address.i, align 4
  tail call fastcc void @__iommu_remove_mapping(ptr noundef %dev, i32 noundef %3, i32 noundef %1) #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  br i1 %cmp3.i.not, label %if.then4.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then4.i:                                       ; preds = %if.end.i
  %4 = ptrtoint ptr %s.016.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s.016.i, align 4
  %and.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_page.exit.i, label %do.body2.i.i, !prof !113

do.body2.i.i:                                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #14, !srcloc !116
  unreachable

sg_page.exit.i:                                   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #16
  %and.i.i = and i32 %5, -4
  %6 = inttoptr i32 %and.i.i to ptr
  %offset.i = getelementptr inbounds %struct.scatterlist, ptr %s.016.i, i32 0, i32 1
  %7 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %offset.i, align 4
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %s.016.i, i32 0, i32 2
  %9 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %length.i, align 4
  tail call fastcc void @__dma_page_dev_to_cpu(ptr noundef %6, i32 noundef %8, i32 noundef %10, i32 noundef %dir) #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %sg_page.exit.i, %if.end.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.018.i, 1
  %call7.i = tail call ptr @sg_next(ptr noundef %s.016.i) #14
  %exitcond.not.i = icmp eq i32 %inc.i, %nents
  br i1 %exitcond.not.i, label %for.inc.i.__iommu_unmap_sg.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.__iommu_unmap_sg.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__iommu_unmap_sg.exit

__iommu_unmap_sg.exit:                            ; preds = %for.inc.i.__iommu_unmap_sg.exit_crit_edge, %entry.__iommu_unmap_sg.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_iommu_map_resource(ptr nocapture noundef readonly %dev, i32 noundef %phys_addr, i32 noundef %size, i32 noundef %dir, i32 noundef %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %archdata = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 26
  %0 = ptrtoint ptr %archdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %archdata, align 8
  %and2 = and i32 %phys_addr, 4095
  %add = add i32 %size, 4095
  %add3 = add i32 %add, %and2
  %and4 = and i32 %add3, -4096
  %call = tail call fastcc i32 @__alloc_iova(ptr noundef %1, i32 noundef %and4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %phys_addr, -4096
  %and.i = lshr i32 %attrs, 4
  %2 = and i32 %and.i, 32
  %3 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %dir, label %if.end.__dma_info_to_prot.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb3.i
    i32 2, label %sw.bb5.i
  ]

if.end.__dma_info_to_prot.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %__dma_info_to_prot.exit

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %or2.i = or i32 %2, 3
  br label %__dma_info_to_prot.exit

sw.bb3.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %or4.i = or i32 %2, 1
  br label %__dma_info_to_prot.exit

sw.bb5.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %or6.i = or i32 %2, 2
  br label %__dma_info_to_prot.exit

__dma_info_to_prot.exit:                          ; preds = %sw.bb5.i, %sw.bb3.i, %sw.bb.i, %if.end.__dma_info_to_prot.exit_crit_edge
  %retval.0.i = phi i32 [ %or6.i, %sw.bb5.i ], [ %or4.i, %sw.bb3.i ], [ %or2.i, %sw.bb.i ], [ %2, %if.end.__dma_info_to_prot.exit_crit_edge ]
  %or = or i32 %retval.0.i, 16
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call6 = tail call i32 @iommu_map(ptr noundef %5, i32 noundef %call, i32 noundef %and, i32 noundef %and4, i32 noundef %or) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %fail, label %if.end9

if.end9:                                          ; preds = %__dma_info_to_prot.exit
  call void @__sanitizer_cov_trace_pc() #16
  %add10 = add i32 %call, %and2
  br label %cleanup

fail:                                             ; preds = %__dma_info_to_prot.exit
  %bits.i = getelementptr inbounds %struct.dma_iommu_mapping, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %bits.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bits.i, align 4
  %shl.i = shl i32 %7, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not.i = icmp eq i32 %and4, 0
  br i1 %tobool.not.i, label %fail.cleanup_crit_edge, label %if.end.i

fail.cleanup_crit_edge:                           ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %fail
  %base.i = getelementptr inbounds %struct.dma_iommu_mapping, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base.i, align 4
  %sub.i = sub i32 %call, %9
  %div.i = udiv i32 %sub.i, %shl.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %9)
  %cmp.i = icmp ult i32 %call, %9
  br i1 %cmp.i, label %if.end.i.do.body6.i_crit_edge, label %lor.rhs.i, !prof !121

if.end.i.do.body6.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body6.i

lor.rhs.i:                                        ; preds = %if.end.i
  %extensions.i = getelementptr inbounds %struct.dma_iommu_mapping, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %extensions.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %extensions.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %11)
  %cmp2.i = icmp ugt i32 %div.i, %11
  br i1 %cmp2.i, label %lor.rhs.i.do.body6.i_crit_edge, label %do.end12.i, !prof !121

lor.rhs.i.do.body6.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body6.i

do.body6.i:                                       ; preds = %lor.rhs.i.do.body6.i_crit_edge, %if.end.i.do.body6.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/dma-mapping.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1174, 0\0A.popsection", ""() #14, !srcloc !134
  unreachable

do.end12.i:                                       ; preds = %lor.rhs.i
  %mul.i = mul i32 %div.i, %shl.i
  %add.i = add i32 %mul.i, %9
  %add15.i = add i32 %call, %and4
  %add16.i = add i32 %add.i, %shl.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add15.i, i32 %add16.i)
  %cmp17.i = icmp ugt i32 %add15.i, %add16.i
  br i1 %cmp17.i, label %do.body19.i, label %if.else.i

do.body19.i:                                      ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/dma-mapping.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1187, 0\0A.popsection", ""() #14, !srcloc !135
  unreachable

if.else.i:                                        ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub14.i = sub i32 %call, %add.i
  %shr.i = lshr i32 %sub14.i, 12
  %shr25.i = lshr i32 %add3, 12
  %lock.i = getelementptr inbounds %struct.dma_iommu_mapping, ptr %1, i32 0, i32 7
  %call30.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #14
  %bitmaps.i = getelementptr inbounds %struct.dma_iommu_mapping, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %bitmaps.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bitmaps.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %13, i32 %div.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  tail call void @__bitmap_clear(ptr noundef %15, i32 noundef %shr.i, i32 noundef %shr25.i) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call30.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %fail.cleanup_crit_edge, %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add10, %if.end9 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %fail.cleanup_crit_edge ], [ -1, %if.else.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arm_iommu_unmap_resource(ptr nocapture noundef readonly %dev, i32 noundef %dma_handle, i32 noundef %size, i32 noundef %dir, i32 noundef %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %dma_handle, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %and2 = and i32 %dma_handle, 4095
  %add = add i32 %size, 4095
  %add3 = add i32 %add, %and2
  %and4 = and i32 %add3, -4096
  %archdata = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 26
  %0 = ptrtoint ptr %archdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %archdata, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 @iommu_unmap(ptr noundef %3, i32 noundef %and, i32 noundef %and4) #14
  %bits.i = getelementptr inbounds %struct.dma_iommu_mapping, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %bits.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bits.i, align 4
  %shl.i = shl i32 %5, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not.i = icmp eq i32 %and4, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %base.i = getelementptr inbounds %struct.dma_iommu_mapping, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base.i, align 4
  %sub.i = sub i32 %and, %7
  %div.i = udiv i32 %sub.i, %shl.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %7)
  %cmp.i = icmp ult i32 %and, %7
  br i1 %cmp.i, label %if.end.i.do.body6.i_crit_edge, label %lor.rhs.i, !prof !121

if.end.i.do.body6.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body6.i

lor.rhs.i:                                        ; preds = %if.end.i
  %extensions.i = getelementptr inbounds %struct.dma_iommu_mapping, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %extensions.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %extensions.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %9)
  %cmp2.i = icmp ugt i32 %div.i, %9
  br i1 %cmp2.i, label %lor.rhs.i.do.body6.i_crit_edge, label %do.end12.i, !prof !121

lor.rhs.i.do.body6.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body6.i

do.body6.i:                                       ; preds = %lor.rhs.i.do.body6.i_crit_edge, %if.end.i.do.body6.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/dma-mapping.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1174, 0\0A.popsection", ""() #14, !srcloc !134
  unreachable

do.end12.i:                                       ; preds = %lor.rhs.i
  %mul.i = mul i32 %div.i, %shl.i
  %add.i = add i32 %mul.i, %7
  %add15.i = add i32 %and4, %and
  %add16.i = add i32 %add.i, %shl.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add15.i, i32 %add16.i)
  %cmp17.i = icmp ugt i32 %add15.i, %add16.i
  br i1 %cmp17.i, label %do.body19.i, label %if.else.i

do.body19.i:                                      ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/dma-mapping.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1187, 0\0A.popsection", ""() #14, !srcloc !135
  unreachable

if.else.i:                                        ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub14.i = sub i32 %and, %add.i
  %shr.i = lshr i32 %sub14.i, 12
  %shr25.i = lshr i32 %add3, 12
  %lock.i = getelementptr inbounds %struct.dma_iommu_mapping, ptr %1, i32 0, i32 7
  %call30.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #14
  %bitmaps.i = getelementptr inbounds %struct.dma_iommu_mapping, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %bitmaps.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bitmaps.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %11, i32 %div.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  tail call void @__bitmap_clear(ptr noundef %13, i32 noundef %shr.i, i32 noundef %shr25.i) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call30.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arm_iommu_sync_single_for_cpu(ptr nocapture noundef readonly %dev, i32 noundef %handle, i32 noundef %size, i32 noundef %dir) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %archdata = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 26
  %0 = ptrtoint ptr %archdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %archdata, align 8
  %and = and i32 %handle, -4096
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %2 = load ptr, ptr @mem_map, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %call = tail call i32 @iommu_iova_to_phys(ptr noundef %4, i32 noundef %and) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %and2 = and i32 %handle, 4095
  %shr = lshr i32 %call, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %5 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub = sub i32 %shr, %5
  %add.ptr = getelementptr %struct.page, ptr %2, i32 %sub
  tail call fastcc void @__dma_page_dev_to_cpu(ptr noundef %add.ptr, i32 noundef %and2, i32 noundef %size, i32 noundef %dir)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arm_iommu_sync_single_for_device(ptr nocapture noundef readonly %dev, i32 noundef %handle, i32 noundef %size, i32 noundef %dir) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %archdata = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 26
  %0 = ptrtoint ptr %archdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %archdata, align 8
  %and = and i32 %handle, -4096
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %2 = load ptr, ptr @mem_map, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %call = tail call i32 @iommu_iova_to_phys(ptr noundef %4, i32 noundef %and) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %and2 = and i32 %handle, 4095
  %shr = lshr i32 %call, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %5 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub = sub i32 %shr, %5
  %add.ptr = getelementptr %struct.page, ptr %2, i32 %sub
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 8) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 8), align 4
  tail call fastcc void @dma_cache_maint_page(ptr noundef %add.ptr, i32 noundef %and2, i32 noundef %size, i32 noundef %dir, ptr noundef %6) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %7 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %8 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %sub.ptr.div.i, %8
  %shl.i = shl i32 %add.i, 12
  %add1.i = or i32 %shl.i, %and2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dir)
  %cmp.i = icmp eq i32 %dir, 2
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @outer_cache to i32))
  %9 = load ptr, ptr @outer_cache, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.then.i.cleanup_crit_edge, label %if.then.i.if.end.sink.split.i_crit_edge

if.then.i.if.end.sink.split.i_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.sink.split.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else.i:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %tobool.not.i12.i = icmp eq ptr %10, null
  br i1 %tobool.not.i12.i, label %if.else.i.cleanup_crit_edge, label %if.else.i.if.end.sink.split.i_crit_edge

if.else.i.if.end.sink.split.i_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.sink.split.i

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.sink.split.i:                              ; preds = %if.else.i.if.end.sink.split.i_crit_edge, %if.then.i.if.end.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %9, %if.then.i.if.end.sink.split.i_crit_edge ], [ %10, %if.else.i.if.end.sink.split.i_crit_edge ]
  %add3.i = add i32 %add1.i, %size
  tail call void %.sink.i(i32 noundef %add1.i, i32 noundef %add3.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end.sink.split.i, %if.else.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arm_iommu_sync_sg_for_cpu(ptr nocapture noundef readnone %dev, ptr noundef %sg, i32 noundef %nents, i32 noundef %dir) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nents)
  %cmp6 = icmp sgt i32 %nents, 0
  br i1 %cmp6, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %sg_page.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %i.08 = phi i32 [ %inc, %sg_page.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %s.07 = phi ptr [ %call1, %sg_page.exit.for.body_crit_edge ], [ %sg, %entry.for.body_crit_edge ]
  %0 = ptrtoint ptr %s.07 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s.07, align 4
  %and.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !113

do.body2.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #14, !srcloc !116
  unreachable

sg_page.exit:                                     ; preds = %for.body
  %and.i = and i32 %1, -4
  %2 = inttoptr i32 %and.i to ptr
  %offset = getelementptr inbounds %struct.scatterlist, ptr %s.07, i32 0, i32 1
  %3 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %offset, align 4
  %length = getelementptr inbounds %struct.scatterlist, ptr %s.07, i32 0, i32 2
  %5 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %length, align 4
  tail call fastcc void @__dma_page_dev_to_cpu(ptr noundef %2, i32 noundef %4, i32 noundef %6, i32 noundef %dir)
  %inc = add nuw nsw i32 %i.08, 1
  %call1 = tail call ptr @sg_next(ptr noundef %s.07) #14
  %exitcond.not = icmp eq i32 %inc, %nents
  br i1 %exitcond.not, label %sg_page.exit.for.end_crit_edge, label %sg_page.exit.for.body_crit_edge

sg_page.exit.for.body_crit_edge:                  ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

sg_page.exit.for.end_crit_edge:                   ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %sg_page.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arm_iommu_sync_sg_for_device(ptr nocapture noundef readnone %dev, ptr noundef %sg, i32 noundef %nents, i32 noundef %dir) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nents)
  %cmp6 = icmp sgt i32 %nents, 0
  br i1 %cmp6, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dir)
  %cmp.i = icmp eq i32 %dir, 2
  br label %for.body

for.body:                                         ; preds = %__dma_page_cpu_to_dev.exit.for.body_crit_edge, %for.body.lr.ph
  %i.08 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %__dma_page_cpu_to_dev.exit.for.body_crit_edge ]
  %s.07 = phi ptr [ %sg, %for.body.lr.ph ], [ %call1, %__dma_page_cpu_to_dev.exit.for.body_crit_edge ]
  %0 = ptrtoint ptr %s.07 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s.07, align 4
  %and.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !113

do.body2.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #14, !srcloc !116
  unreachable

sg_page.exit:                                     ; preds = %for.body
  %and.i = and i32 %1, -4
  %2 = inttoptr i32 %and.i to ptr
  %offset = getelementptr inbounds %struct.scatterlist, ptr %s.07, i32 0, i32 1
  %3 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %offset, align 4
  %length = getelementptr inbounds %struct.scatterlist, ptr %s.07, i32 0, i32 2
  %5 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %length, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 8) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 8), align 4
  tail call fastcc void @dma_cache_maint_page(ptr noundef %2, i32 noundef %4, i32 noundef %6, i32 noundef %dir, ptr noundef %7) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %8 = load ptr, ptr @mem_map, align 4
  %sub.ptr.rhs.cast.i = ptrtoint ptr %8 to i32
  %sub.ptr.sub.i = sub i32 %and.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %9 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %sub.ptr.div.i, %9
  %shl.i = shl i32 %add.i, 12
  %add1.i = add i32 %shl.i, %4
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sg_page.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @outer_cache to i32))
  %10 = load ptr, ptr @outer_cache, align 4
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.then.i.__dma_page_cpu_to_dev.exit_crit_edge, label %if.then.i.if.end.sink.split.i_crit_edge

if.then.i.if.end.sink.split.i_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.sink.split.i

if.then.i.__dma_page_cpu_to_dev.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__dma_page_cpu_to_dev.exit

if.else.i:                                        ; preds = %sg_page.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %tobool.not.i12.i = icmp eq ptr %11, null
  br i1 %tobool.not.i12.i, label %if.else.i.__dma_page_cpu_to_dev.exit_crit_edge, label %if.else.i.if.end.sink.split.i_crit_edge

if.else.i.if.end.sink.split.i_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.sink.split.i

if.else.i.__dma_page_cpu_to_dev.exit_crit_edge:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__dma_page_cpu_to_dev.exit

if.end.sink.split.i:                              ; preds = %if.else.i.if.end.sink.split.i_crit_edge, %if.then.i.if.end.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %10, %if.then.i.if.end.sink.split.i_crit_edge ], [ %11, %if.else.i.if.end.sink.split.i_crit_edge ]
  %add3.i = add i32 %add1.i, %6
  tail call void %.sink.i(i32 noundef %add1.i, i32 noundef %add3.i) #14
  br label %__dma_page_cpu_to_dev.exit

__dma_page_cpu_to_dev.exit:                       ; preds = %if.end.sink.split.i, %if.else.i.__dma_page_cpu_to_dev.exit_crit_edge, %if.then.i.__dma_page_cpu_to_dev.exit_crit_edge
  %inc = add nuw nsw i32 %i.08, 1
  %call1 = tail call ptr @sg_next(ptr noundef %s.07) #14
  %exitcond.not = icmp eq i32 %inc, %nents
  br i1 %exitcond.not, label %__dma_page_cpu_to_dev.exit.for.end_crit_edge, label %__dma_page_cpu_to_dev.exit.for.body_crit_edge

__dma_page_cpu_to_dev.exit.for.body_crit_edge:    ; preds = %__dma_page_cpu_to_dev.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

__dma_page_cpu_to_dev.exit.for.end_crit_edge:     ; preds = %__dma_page_cpu_to_dev.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %__dma_page_cpu_to_dev.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__arm_iommu_alloc_attrs(ptr noundef %dev, i32 noundef %size, ptr nocapture noundef %handle, i32 noundef %gfp, i32 noundef %attrs, i32 noundef %coherent_flag) unnamed_addr #0 align 64 {
entry:
  %page.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %0 = load i32, ptr @pgprot_kernel, align 4
  %cond.i.v = and i32 %0, -573
  %cond.i = or i32 %cond.i.v, 516
  %1 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %handle, align 4
  %add = add i32 %size, 4095
  %and = and i32 %add, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %coherent_flag)
  %cmp = icmp eq i32 %coherent_flag, 1
  br i1 %cmp, label %if.then.i, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %and.i52 = and i32 %gfp, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i52)
  %tobool.i.not = icmp eq i32 %and.i52, 0
  br i1 %tobool.i.not, label %if.else.i, label %if.end

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page.i) #14
  %2 = ptrtoint ptr %page.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %page.i, align 4, !annotation !117
  %call.i = call fastcc ptr @__alloc_simple_buffer(i32 noundef %and, i32 noundef %gfp, ptr noundef nonnull %page.i) #14
  br label %if.end.i

if.else.i:                                        ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page.i) #14
  %3 = load ptr, ptr @atomic_pool, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.end17.i.i

do.end.i.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 490, i32 noundef 9, ptr noundef nonnull @.str.16) #14
  br label %__iommu_alloc_simple.exit

if.end17.i.i:                                     ; preds = %if.else.i
  %algo.i.i.i = getelementptr inbounds %struct.gen_pool, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %algo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %algo.i.i.i, align 4
  %data.i.i.i = getelementptr inbounds %struct.gen_pool, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i.i.i, align 4
  %call.i.i.i.i = tail call i32 @gen_pool_alloc_algo_owner(ptr noundef nonnull %3, i32 noundef %and, ptr noundef %5, ptr noundef %7, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool18.not.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool18.not.i.i, label %if.end17.i.i.__iommu_alloc_simple.exit_crit_edge, label %if.then19.i.i

if.end17.i.i.__iommu_alloc_simple.exit_crit_edge: ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__iommu_alloc_simple.exit

if.then19.i.i:                                    ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %8 = load ptr, ptr @atomic_pool, align 4
  %call20.i.i = tail call i32 @gen_pool_virt_to_phys(ptr noundef %8, i32 noundef %call.i.i.i.i) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %9 = load ptr, ptr @mem_map, align 4
  %shr.i.i = lshr i32 %call20.i.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %10 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i.i = sub i32 %shr.i.i, %10
  %add.ptr.i.i = getelementptr %struct.page, ptr %9, i32 %sub.i.i
  %11 = ptrtoint ptr %page.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr.i.i, ptr %page.i, align 4
  %12 = inttoptr i32 %call.i.i.i.i to ptr
  br label %if.end.i

if.end.i:                                         ; preds = %if.then19.i.i, %if.then.i
  %addr.0.i = phi ptr [ %call.i, %if.then.i ], [ %12, %if.then19.i.i ]
  %tobool.not.i53 = icmp eq ptr %addr.0.i, null
  br i1 %tobool.not.i53, label %if.end.i.__iommu_alloc_simple.exit_crit_edge, label %if.end3.i

if.end.i.__iommu_alloc_simple.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__iommu_alloc_simple.exit

if.end3.i:                                        ; preds = %if.end.i
  %call4.i = call fastcc i32 @__iommu_create_mapping(ptr noundef %dev, ptr noundef nonnull %page.i, i32 noundef %and, i32 noundef %attrs) #14
  %13 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call4.i, ptr %handle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4.i)
  %cmp5.i = icmp eq i32 %call4.i, -1
  br i1 %cmp5.i, label %err_mapping.i, label %if.end3.i.__iommu_alloc_simple.exit_crit_edge

if.end3.i.__iommu_alloc_simple.exit_crit_edge:    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__iommu_alloc_simple.exit

err_mapping.i:                                    ; preds = %if.end3.i
  %14 = load ptr, ptr @atomic_pool, align 4
  %15 = ptrtoint ptr %addr.0.i to i32
  %call.i.i.i = tail call zeroext i1 @gen_pool_has_addr(ptr noundef %14, i32 noundef %15, i32 noundef %and) #14
  br i1 %call.i.i.i, label %if.end.i.i, label %err_mapping.i.__iommu_alloc_simple.exit_crit_edge

err_mapping.i.__iommu_alloc_simple.exit_crit_edge: ; preds = %err_mapping.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__iommu_alloc_simple.exit

if.end.i.i:                                       ; preds = %err_mapping.i
  call void @__sanitizer_cov_trace_pc() #16
  %16 = load ptr, ptr @atomic_pool, align 4
  tail call void @gen_pool_free_owner(ptr noundef %16, i32 noundef %15, i32 noundef %and, ptr noundef null) #14
  br label %__iommu_alloc_simple.exit

__iommu_alloc_simple.exit:                        ; preds = %if.end.i.i, %err_mapping.i.__iommu_alloc_simple.exit_crit_edge, %if.end3.i.__iommu_alloc_simple.exit_crit_edge, %if.end.i.__iommu_alloc_simple.exit_crit_edge, %if.end17.i.i.__iommu_alloc_simple.exit_crit_edge, %do.end.i.i
  %retval.0.i = phi ptr [ null, %if.end.i.__iommu_alloc_simple.exit_crit_edge ], [ %addr.0.i, %if.end3.i.__iommu_alloc_simple.exit_crit_edge ], [ null, %err_mapping.i.__iommu_alloc_simple.exit_crit_edge ], [ null, %if.end.i.i ], [ null, %do.end.i.i ], [ null, %if.end17.i.i.__iommu_alloc_simple.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page.i) #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %and3 = and i32 %gfp, -262145
  %shr.i = lshr i32 %add, 12
  %mul.i = shl nuw nsw i32 %shr.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4198400, i32 %and)
  %cmp.i54 = icmp ult i32 %and, 4198400
  br i1 %cmp.i54, label %if.end8.i.i.i, label %if.else.i56

if.end8.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i, i32 noundef 3520) #20
  br label %if.end.i58

if.else.i56:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call1.i = tail call noalias ptr @vzalloc(i32 noundef %mul.i) #20
  br label %if.end.i58

if.end.i58:                                       ; preds = %if.else.i56, %if.end8.i.i.i
  %pages.0.i = phi ptr [ %call1.i, %if.else.i56 ], [ %call9.i.i.i, %if.end8.i.i.i ]
  %tobool.not.i57 = icmp eq ptr %pages.0.i, null
  br i1 %tobool.not.i57, label %if.end.i58.cleanup_crit_edge, label %if.end3.i60

if.end.i58.cleanup_crit_edge:                     ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3.i60:                                      ; preds = %if.end.i58
  %and.i59 = and i32 %attrs, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i59)
  %tobool4.not.i = icmp eq i32 %and.i59, 0
  br i1 %tobool4.not.i, label %if.end15.i, label %get_order.exit.i

get_order.exit.i:                                 ; preds = %if.end3.i60
  %dec.i.i = add i32 %and, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %dec.i.i)
  %tobool.not.i.i.i = icmp eq i32 %dec.i.i, 4095
  %shr.i.i64 = lshr i32 %dec.i.i, 12
  %17 = tail call i32 @llvm.ctlz.i32(i32 %shr.i.i64, i1 true) #14, !range !133
  %sub.i.i.i = sub nuw nsw i32 32, %17
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 0, i32 %sub.i.i.i
  %and7.i = and i32 %gfp, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.i = icmp ne i32 %and7.i, 0
  %call9.i = tail call ptr @dma_alloc_from_contiguous(ptr noundef %dev, i32 noundef %shr.i, i32 noundef %cond.i.i.i, i1 noundef zeroext %tobool8.i) #14
  %tobool10.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not.i, label %get_order.exit.i.while.end74.i_crit_edge, label %if.end12.i

get_order.exit.i.while.end74.i_crit_edge:         ; preds = %get_order.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end74.i

if.end12.i:                                       ; preds = %get_order.exit.i
  tail call fastcc void @__dma_clear_buffer(ptr noundef nonnull %call9.i, i32 noundef %and, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp1313.not.i = icmp eq i32 %and, 0
  br i1 %cmp1313.not.i, label %if.end12.i.if.end6_crit_edge, label %for.body.preheader.i

if.end12.i.if.end6_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

for.body.preheader.i:                             ; preds = %if.end12.i
  %umax.i = tail call i32 @llvm.umax.i32(i32 %shr.i, i32 1) #14
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.014.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %add.ptr.i = getelementptr %struct.page, ptr %call9.i, i32 %i.014.i
  %arrayidx.i = getelementptr ptr, ptr %pages.0.i, i32 %i.014.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr.i, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.014.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %for.body.i.if.end6_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i.if.end6_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.end15.i:                                       ; preds = %if.end3.i60
  %or.i65 = or i32 %and3, 8194
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not18.i = icmp eq i32 %and, 0
  br i1 %tobool20.not18.i, label %if.end15.i.if.end6_crit_edge, label %while.body.lr.ph.i

if.end15.i.if.end6_crit_edge:                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

while.body.lr.ph.i:                               ; preds = %if.end15.i
  %and16.i = and i32 %attrs, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  %spec.select.i = select i1 %tobool17.not.i, i32 0, i32 3
  %or30.i = or i32 %and3, 73730
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup61.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %order_idx.123.i = phi i32 [ %spec.select.i, %while.body.lr.ph.i ], [ %order_idx.2.i, %cleanup61.i.while.body.i_crit_edge ]
  %i.221.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %i.3.i, %cleanup61.i.while.body.i_crit_edge ]
  %count.019.i = phi i32 [ %shr.i, %while.body.lr.ph.i ], [ %count.1.i, %cleanup61.i.while.body.i_crit_edge ]
  %arrayidx22.i = getelementptr [4 x i32], ptr @iommu_order_array, i32 0, i32 %order_idx.123.i
  %19 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx22.i, align 4
  %21 = tail call i32 @llvm.ctlz.i32(i32 %count.019.i, i1 true) #14, !range !133
  %sub.i1.i = xor i32 %21, 31
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i1.i, i32 %20)
  %cmp24.i = icmp ult i32 %sub.i1.i, %20
  br i1 %cmp24.i, label %if.then25.i, label %if.end27.i

if.then25.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %inc26.i = add i32 %order_idx.123.i, 1
  br label %cleanup61.i

if.end27.i:                                       ; preds = %while.body.i
  %22 = and i32 %order_idx.123.i, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %22)
  %tobool28.not.i = icmp eq i32 %22, 3
  br i1 %tobool28.not.i, label %if.else38.i, label %if.then29.i

if.then29.i:                                      ; preds = %if.end27.i
  %call38.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef %or30.i, i32 noundef %20, i32 noundef 0, ptr noundef null) #14
  %arrayidx32.i = getelementptr ptr, ptr %pages.0.i, i32 %i.221.i
  %23 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call38.i.i.i.i, ptr %arrayidx32.i, align 4
  %tobool34.not.i = icmp eq ptr %call38.i.i.i.i, null
  br i1 %tobool34.not.i, label %if.then35.i, label %while.body51.preheader.i

if.then35.i:                                      ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #16
  %inc36.i = add i32 %order_idx.123.i, 1
  br label %cleanup61.i

if.else38.i:                                      ; preds = %if.end27.i
  %call38.i.i.i2.i = tail call ptr @__alloc_pages(i32 noundef %or.i65, i32 noundef 0, i32 noundef 0, ptr noundef null) #14
  %arrayidx40.i = getelementptr ptr, ptr %pages.0.i, i32 %i.221.i
  %24 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call38.i.i.i2.i, ptr %arrayidx40.i, align 4
  %tobool42.not.i = icmp eq ptr %call38.i.i.i2.i, null
  br i1 %tobool42.not.i, label %error.i, label %if.else38.i.if.end55.i_crit_edge

if.else38.i.if.end55.i_crit_edge:                 ; preds = %if.else38.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55.i

while.body51.preheader.i:                         ; preds = %if.then29.i
  tail call void @split_page(ptr noundef nonnull %call38.i.i.i.i, i32 noundef %20) #14
  %notmask.i = shl nsw i32 -1, %20
  %dec15.i = xor i32 %notmask.i, -1
  br label %while.body51.i

while.body51.i:                                   ; preds = %while.body51.i.while.body51.i_crit_edge, %while.body51.preheader.i
  %dec17.i = phi i32 [ %dec.i, %while.body51.i.while.body51.i_crit_edge ], [ %dec15.i, %while.body51.preheader.i ]
  %25 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx32.i, align 4
  %add.ptr53.i = getelementptr %struct.page, ptr %26, i32 %dec17.i
  %add.i = add i32 %dec17.i, %i.221.i
  %arrayidx54.i = getelementptr ptr, ptr %pages.0.i, i32 %add.i
  %27 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr53.i, ptr %arrayidx54.i, align 4
  %dec.i = add i32 %dec17.i, -1
  %tobool50.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool50.not.i, label %while.body51.i.if.end55.i_crit_edge, label %while.body51.i.while.body51.i_crit_edge

while.body51.i.while.body51.i_crit_edge:          ; preds = %while.body51.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body51.i

while.body51.i.if.end55.i_crit_edge:              ; preds = %while.body51.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55.i

if.end55.i:                                       ; preds = %while.body51.i.if.end55.i_crit_edge, %if.else38.i.if.end55.i_crit_edge
  %arrayidx56.i = getelementptr ptr, ptr %pages.0.i, i32 %i.221.i
  %28 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx56.i, align 4
  %shl57.i = shl i32 4096, %20
  tail call fastcc void @__dma_clear_buffer(ptr noundef %29, i32 noundef %shl57.i, i32 noundef 0) #14
  %shl58.i = shl nuw i32 1, %20
  %add59.i = add i32 %shl58.i, %i.221.i
  %sub.i = sub i32 %count.019.i, %shl58.i
  br label %cleanup61.i

cleanup61.i:                                      ; preds = %if.end55.i, %if.then35.i, %if.then25.i
  %count.1.i = phi i32 [ %count.019.i, %if.then25.i ], [ %sub.i, %if.end55.i ], [ %count.019.i, %if.then35.i ]
  %i.3.i = phi i32 [ %i.221.i, %if.then25.i ], [ %add59.i, %if.end55.i ], [ %i.221.i, %if.then35.i ]
  %order_idx.2.i = phi i32 [ %inc26.i, %if.then25.i ], [ %order_idx.123.i, %if.end55.i ], [ %inc36.i, %if.then35.i ]
  %tobool20.not.i = icmp eq i32 %count.1.i, 0
  br i1 %tobool20.not.i, label %cleanup61.i.if.end6_crit_edge, label %cleanup61.i.while.body.i_crit_edge

cleanup61.i.while.body.i_crit_edge:               ; preds = %cleanup61.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

cleanup61.i.if.end6_crit_edge:                    ; preds = %cleanup61.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

error.i:                                          ; preds = %if.else38.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.221.i)
  %tobool67.not26.i = icmp eq i32 %i.221.i, 0
  br i1 %tobool67.not26.i, label %error.i.while.end74.i_crit_edge, label %error.i.while.body68.i_crit_edge

error.i.while.body68.i_crit_edge:                 ; preds = %error.i
  br label %while.body68.i

error.i.while.end74.i_crit_edge:                  ; preds = %error.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end74.i

while.body68.i:                                   ; preds = %if.end73.i.while.body68.i_crit_edge, %error.i.while.body68.i_crit_edge
  %dec6627.in.i = phi i32 [ %dec6627.i, %if.end73.i.while.body68.i_crit_edge ], [ %i.221.i, %error.i.while.body68.i_crit_edge ]
  %dec6627.i = add i32 %dec6627.in.i, -1
  %arrayidx69.i = getelementptr ptr, ptr %pages.0.i, i32 %dec6627.i
  %30 = ptrtoint ptr %arrayidx69.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx69.i, align 4
  %tobool70.not.i = icmp eq ptr %31, null
  br i1 %tobool70.not.i, label %while.body68.i.if.end73.i_crit_edge, label %if.then71.i

while.body68.i.if.end73.i_crit_edge:              ; preds = %while.body68.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73.i

if.then71.i:                                      ; preds = %while.body68.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__free_pages(ptr noundef nonnull %31, i32 noundef 0) #14
  br label %if.end73.i

if.end73.i:                                       ; preds = %if.then71.i, %while.body68.i.if.end73.i_crit_edge
  %tobool67.not.i = icmp eq i32 %dec6627.i, 0
  br i1 %tobool67.not.i, label %if.end73.i.while.end74.i_crit_edge, label %if.end73.i.while.body68.i_crit_edge

if.end73.i.while.body68.i_crit_edge:              ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body68.i

if.end73.i.while.end74.i_crit_edge:               ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end74.i

while.end74.i:                                    ; preds = %if.end73.i.while.end74.i_crit_edge, %error.i.while.end74.i_crit_edge, %get_order.exit.i.while.end74.i_crit_edge
  tail call void @kvfree(ptr noundef nonnull %pages.0.i) #14
  br label %cleanup

if.end6:                                          ; preds = %cleanup61.i.if.end6_crit_edge, %if.end15.i.if.end6_crit_edge, %for.body.i.if.end6_crit_edge, %if.end12.i.if.end6_crit_edge
  %tobool4.not.i93103 = phi i1 [ true, %if.end15.i.if.end6_crit_edge ], [ %tobool4.not.i, %if.end12.i.if.end6_crit_edge ], [ %tobool4.not.i, %cleanup61.i.if.end6_crit_edge ], [ %tobool4.not.i, %for.body.i.if.end6_crit_edge ]
  %call7 = tail call fastcc i32 @__iommu_create_mapping(ptr noundef %dev, ptr noundef nonnull %pages.0.i, i32 noundef %and, i32 noundef %attrs)
  %32 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call7, ptr %handle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call7)
  %cmp8 = icmp eq i32 %call7, -1
  br i1 %cmp8, label %if.end6.err_buffer_crit_edge, label %if.end10

if.end6.err_buffer_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_buffer

if.end10:                                         ; preds = %if.end6
  %and11 = and i32 %attrs, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %33 = tail call ptr @llvm.returnaddress(i32 0)
  %call15 = tail call ptr @dma_common_pages_remap(ptr noundef nonnull %pages.0.i, i32 noundef %and, i32 noundef %cond.i, ptr noundef %33) #14
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %err_mapping, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

err_mapping:                                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  %34 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %handle, align 4
  tail call fastcc void @__iommu_remove_mapping(ptr noundef %dev, i32 noundef %35, i32 noundef %and)
  br label %err_buffer

err_buffer:                                       ; preds = %err_mapping, %if.end6.err_buffer_crit_edge
  br i1 %tobool4.not.i93103, label %for.cond.preheader.i, label %if.then.i72

for.cond.preheader.i:                             ; preds = %err_buffer
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp1.not.i = icmp eq i32 %and, 0
  br i1 %cmp1.not.i, label %for.cond.preheader.i.__iommu_free_buffer.exit_crit_edge, label %for.body.preheader.i70

for.cond.preheader.i.__iommu_free_buffer.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__iommu_free_buffer.exit

for.body.preheader.i70:                           ; preds = %for.cond.preheader.i
  %umax.i69 = tail call i32 @llvm.umax.i32(i32 %shr.i, i32 1) #14
  br label %for.body.i73

if.then.i72:                                      ; preds = %err_buffer
  call void @__sanitizer_cov_trace_pc() #16
  %36 = ptrtoint ptr %pages.0.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pages.0.i, align 4
  %call.i71 = tail call zeroext i1 @dma_release_from_contiguous(ptr noundef %dev, ptr noundef %37, i32 noundef %shr.i) #14
  br label %__iommu_free_buffer.exit

for.body.i73:                                     ; preds = %for.inc.i.for.body.i73_crit_edge, %for.body.preheader.i70
  %i.02.i = phi i32 [ %inc.i74, %for.inc.i.for.body.i73_crit_edge ], [ 0, %for.body.preheader.i70 ]
  %arrayidx1.i = getelementptr ptr, ptr %pages.0.i, i32 %i.02.i
  %38 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx1.i, align 4
  %tobool2.not.i = icmp eq ptr %39, null
  br i1 %tobool2.not.i, label %for.body.i73.for.inc.i_crit_edge, label %if.then3.i

for.body.i73.for.inc.i_crit_edge:                 ; preds = %for.body.i73
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then3.i:                                       ; preds = %for.body.i73
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__free_pages(ptr noundef nonnull %39, i32 noundef 0) #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then3.i, %for.body.i73.for.inc.i_crit_edge
  %inc.i74 = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i75 = icmp eq i32 %inc.i74, %umax.i69
  br i1 %exitcond.not.i75, label %for.inc.i.__iommu_free_buffer.exit_crit_edge, label %for.inc.i.for.body.i73_crit_edge

for.inc.i.for.body.i73_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i73

for.inc.i.__iommu_free_buffer.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__iommu_free_buffer.exit

__iommu_free_buffer.exit:                         ; preds = %for.inc.i.__iommu_free_buffer.exit_crit_edge, %if.then.i72, %for.cond.preheader.i.__iommu_free_buffer.exit_crit_edge
  tail call void @kvfree(ptr noundef nonnull %pages.0.i) #14
  br label %cleanup

cleanup:                                          ; preds = %__iommu_free_buffer.exit, %if.end14.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %while.end74.i, %if.end.i58.cleanup_crit_edge, %__iommu_alloc_simple.exit
  %retval.0 = phi ptr [ %retval.0.i, %__iommu_alloc_simple.exit ], [ null, %__iommu_free_buffer.exit ], [ %pages.0.i, %if.end10.cleanup_crit_edge ], [ %call15, %if.end14.cleanup_crit_edge ], [ null, %while.end74.i ], [ null, %if.end.i58.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__iommu_create_mapping(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %pages, i32 noundef %size, i32 noundef %attrs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %archdata = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 26
  %0 = ptrtoint ptr %archdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %archdata, align 8
  %add = add i32 %size, 4095
  %shr = lshr i32 %add, 12
  %call = tail call fastcc i32 @__alloc_iova(ptr noundef %1, i32 noundef %size)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %entry.cleanup40_crit_edge, label %for.cond.preheader

entry.cleanup40_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup40

for.cond.preheader:                               ; preds = %entry
  %and.i = lshr i32 %attrs, 4
  %2 = and i32 %and.i, 32
  %or2.i = or i32 %2, 3
  %3 = add nsw i32 %shr, -1
  br label %for.cond

for.cond:                                         ; preds = %for.end.for.cond_crit_edge, %for.cond.preheader
  %iova.0 = phi i32 [ %add31, %for.end.for.cond_crit_edge ], [ %call, %for.cond.preheader ]
  %i.0 = phi i32 [ %j.0.lcssa, %for.end.for.cond_crit_edge ], [ 0, %for.cond.preheader ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %shr)
  %cmp2 = icmp ult i32 %i.0, %shr
  br i1 %cmp2, label %for.body, label %for.cond.cleanup40_crit_edge

for.cond.cleanup40_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup40

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr ptr, ptr %pages, i32 %i.0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %6 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %6 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %7 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add3 = add i32 %sub.ptr.div, %7
  %shl = shl i32 %add3, 12
  br label %for.cond12

for.cond12:                                       ; preds = %for.body14.for.cond12_crit_edge, %for.body
  %next_pfn.0.in = phi i32 [ %add3, %for.body ], [ %next_pfn.0, %for.body14.for.cond12_crit_edge ]
  %j.0.in = phi i32 [ %i.0, %for.body ], [ %j.0, %for.body14.for.cond12_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0.in, i32 %3)
  %exitcond.not = icmp eq i32 %j.0.in, %3
  br i1 %exitcond.not, label %for.cond12.for.end_crit_edge, label %for.body14

for.cond12.for.end_crit_edge:                     ; preds = %for.cond12
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body14:                                       ; preds = %for.cond12
  %j.0 = add nuw nsw i32 %j.0.in, 1
  %next_pfn.0 = add i32 %next_pfn.0.in, 1
  %arrayidx15 = getelementptr ptr, ptr %pages, i32 %j.0
  %8 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx15, align 4
  %sub.ptr.lhs.cast16 = ptrtoint ptr %9 to i32
  %sub.ptr.sub18 = sub i32 %sub.ptr.lhs.cast16, %sub.ptr.rhs.cast
  %sub.ptr.div19 = sdiv exact i32 %sub.ptr.sub18, 36
  %add20 = add i32 %sub.ptr.div19, %7
  %cmp21.not = icmp eq i32 %add20, %next_pfn.0
  br i1 %cmp21.not, label %for.body14.for.cond12_crit_edge, label %for.body14.for.end_crit_edge

for.body14.for.end_crit_edge:                     ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body14.for.cond12_crit_edge:                  ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond12

for.end:                                          ; preds = %for.body14.for.end_crit_edge, %for.cond12.for.end_crit_edge
  %j.0.lcssa = phi i32 [ %j.0, %for.body14.for.end_crit_edge ], [ %shr, %for.cond12.for.end_crit_edge ]
  %sub = sub i32 %j.0.lcssa, %i.0
  %shl25 = shl i32 %sub, 12
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %call27 = tail call i32 @iommu_map(ptr noundef %11, i32 noundef %iova.0, i32 noundef %shl, i32 noundef %shl25, i32 noundef %or2.i) #14
  %cmp28 = icmp slt i32 %call27, 0
  %add31 = add i32 %shl25, %iova.0
  br i1 %cmp28, label %fail, label %for.end.for.cond_crit_edge

for.end.for.cond_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond

fail:                                             ; preds = %for.end
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %sub38 = sub i32 %iova.0, %call
  %call39 = tail call i32 @iommu_unmap(ptr noundef %13, i32 noundef %call, i32 noundef %sub38) #14
  %bits.i = getelementptr inbounds %struct.dma_iommu_mapping, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %bits.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bits.i, align 4
  %shl.i = shl i32 %15, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not.i = icmp eq i32 %size, 0
  br i1 %tobool.not.i, label %fail.cleanup40_crit_edge, label %if.end.i

fail.cleanup40_crit_edge:                         ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup40

if.end.i:                                         ; preds = %fail
  %base.i = getelementptr inbounds %struct.dma_iommu_mapping, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %base.i, align 4
  %sub.i = sub i32 %call, %17
  %div.i = udiv i32 %sub.i, %shl.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %17)
  %cmp.i = icmp ult i32 %call, %17
  br i1 %cmp.i, label %if.end.i.do.body6.i_crit_edge, label %lor.rhs.i, !prof !121

if.end.i.do.body6.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body6.i

lor.rhs.i:                                        ; preds = %if.end.i
  %extensions.i = getelementptr inbounds %struct.dma_iommu_mapping, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %extensions.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %extensions.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %19)
  %cmp2.i = icmp ugt i32 %div.i, %19
  br i1 %cmp2.i, label %lor.rhs.i.do.body6.i_crit_edge, label %do.end12.i, !prof !121

lor.rhs.i.do.body6.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body6.i

do.body6.i:                                       ; preds = %lor.rhs.i.do.body6.i_crit_edge, %if.end.i.do.body6.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/dma-mapping.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1174, 0\0A.popsection", ""() #14, !srcloc !134
  unreachable

do.end12.i:                                       ; preds = %lor.rhs.i
  %mul.i = mul i32 %div.i, %shl.i
  %add.i = add i32 %mul.i, %17
  %add15.i = add i32 %call, %size
  %add16.i = add i32 %add.i, %shl.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add15.i, i32 %add16.i)
  %cmp17.i = icmp ugt i32 %add15.i, %add16.i
  br i1 %cmp17.i, label %do.body19.i, label %if.else.i

do.body19.i:                                      ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/dma-mapping.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1187, 0\0A.popsection", ""() #14, !srcloc !135
  unreachable

if.else.i:                                        ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub14.i = sub i32 %call, %add.i
  %shr.i = lshr i32 %sub14.i, 12
  %shr25.i = lshr i32 %size, 12
  %lock.i = getelementptr inbounds %struct.dma_iommu_mapping, ptr %1, i32 0, i32 7
  %call30.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #14
  %bitmaps.i = getelementptr inbounds %struct.dma_iommu_mapping, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %bitmaps.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bitmaps.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %21, i32 %div.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  tail call void @__bitmap_clear(ptr noundef %23, i32 noundef %shr.i, i32 noundef %shr25.i) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call30.i) #14
  br label %cleanup40

cleanup40:                                        ; preds = %if.else.i, %fail.cleanup40_crit_edge, %for.cond.cleanup40_crit_edge, %entry.cleanup40_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup40_crit_edge ], [ -1, %fail.cleanup40_crit_edge ], [ -1, %if.else.i ], [ %call, %for.cond.cleanup40_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_common_pages_remap(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__iommu_remove_mapping(ptr nocapture noundef readonly %dev, i32 noundef %iova, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %archdata = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 26
  %0 = ptrtoint ptr %archdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %archdata, align 8
  %and = and i32 %iova, 4095
  %add = add i32 %size, 4095
  %add2 = add i32 %add, %and
  %and3 = and i32 %add2, -4096
  %and4 = and i32 %iova, -4096
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 @iommu_unmap(ptr noundef %3, i32 noundef %and4, i32 noundef %and3) #14
  %bits.i = getelementptr inbounds %struct.dma_iommu_mapping, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %bits.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bits.i, align 4
  %shl.i = shl i32 %5, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not.i = icmp eq i32 %and3, 0
  br i1 %tobool.not.i, label %entry.__free_iova.exit_crit_edge, label %if.end.i

entry.__free_iova.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %__free_iova.exit

if.end.i:                                         ; preds = %entry
  %base.i = getelementptr inbounds %struct.dma_iommu_mapping, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base.i, align 4
  %sub.i = sub i32 %and4, %7
  %div.i = udiv i32 %sub.i, %shl.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and4, i32 %7)
  %cmp.i = icmp ult i32 %and4, %7
  br i1 %cmp.i, label %if.end.i.do.body6.i_crit_edge, label %lor.rhs.i, !prof !121

if.end.i.do.body6.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body6.i

lor.rhs.i:                                        ; preds = %if.end.i
  %extensions.i = getelementptr inbounds %struct.dma_iommu_mapping, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %extensions.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %extensions.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %9)
  %cmp2.i = icmp ugt i32 %div.i, %9
  br i1 %cmp2.i, label %lor.rhs.i.do.body6.i_crit_edge, label %do.end12.i, !prof !121

lor.rhs.i.do.body6.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body6.i

do.body6.i:                                       ; preds = %lor.rhs.i.do.body6.i_crit_edge, %if.end.i.do.body6.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/dma-mapping.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1174, 0\0A.popsection", ""() #14, !srcloc !134
  unreachable

do.end12.i:                                       ; preds = %lor.rhs.i
  %mul.i = mul i32 %div.i, %shl.i
  %add.i = add i32 %mul.i, %7
  %add15.i = add i32 %and3, %and4
  %add16.i = add i32 %add.i, %shl.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add15.i, i32 %add16.i)
  %cmp17.i = icmp ugt i32 %add15.i, %add16.i
  br i1 %cmp17.i, label %do.body19.i, label %if.else.i

do.body19.i:                                      ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/dma-mapping.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1187, 0\0A.popsection", ""() #14, !srcloc !135
  unreachable

if.else.i:                                        ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub14.i = sub i32 %and4, %add.i
  %shr.i = lshr i32 %sub14.i, 12
  %shr25.i = lshr i32 %add2, 12
  %lock.i = getelementptr inbounds %struct.dma_iommu_mapping, ptr %1, i32 0, i32 7
  %call30.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #14
  %bitmaps.i = getelementptr inbounds %struct.dma_iommu_mapping, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %bitmaps.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bitmaps.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %11, i32 %div.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  tail call void @__bitmap_clear(ptr noundef %13, i32 noundef %shr.i, i32 noundef %shr25.i) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call30.i) #14
  br label %__free_iova.exit

__free_iova.exit:                                 ; preds = %if.else.i, %entry.__free_iova.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__alloc_iova(ptr noundef %mapping, i32 noundef %size) unnamed_addr #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %dec.i = add i32 %size, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i)
  %tobool.not.i.i = icmp ult i32 %dec.i, 4096
  %shr.i = lshr i32 %dec.i, 12
  %0 = tail call i32 @llvm.ctlz.i32(i32 %shr.i, i1 true) #14, !range !133
  %sub.i.i = sub nuw nsw i32 32, %0
  %bits = getelementptr inbounds %struct.dma_iommu_mapping, ptr %mapping, i32 0, i32 5
  %1 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %bits, align 4
  %3 = call i32 @llvm.umin.i32(i32 %sub.i.i, i32 8)
  %add = add i32 %size, 4095
  %shr = lshr i32 %add, 12
  %.op = shl nsw i32 -1, %3
  %.op.op = xor i32 %.op, -1
  %sub = select i1 %tobool.not.i.i, i32 0, i32 %.op.op
  %lock = getelementptr inbounds %struct.dma_iommu_mapping, ptr %mapping, i32 0, i32 7
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #14
  %nr_bitmaps = getelementptr inbounds %struct.dma_iommu_mapping, ptr %mapping, i32 0, i32 2
  %4 = ptrtoint ptr %nr_bitmaps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_bitmaps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp8122.not = icmp eq i32 %5, 0
  br i1 %cmp8122.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %bitmaps = getelementptr inbounds %struct.dma_iommu_mapping, ptr %mapping, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0123 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %bitmaps to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bitmaps, align 4
  %arrayidx = getelementptr ptr, ptr %7, i32 %i.0123
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bits, align 4
  %call.i = tail call i32 @bitmap_find_next_zero_area_off(ptr noundef %9, i32 noundef %11, i32 noundef 0, i32 noundef %shr, i32 noundef %sub, i32 noundef 0) #14
  %12 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bits, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %13)
  %cmp13 = icmp ugt i32 %call.i, %13
  br i1 %cmp13, label %for.inc, label %if.end16

if.end16:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %bitmaps to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bitmaps, align 4
  %arrayidx18 = getelementptr ptr, ptr %15, i32 %i.0123
  %16 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx18, align 4
  tail call void @__bitmap_set(ptr noundef %17, i32 noundef %call.i, i32 noundef %shr) #14
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0123, 1
  %18 = ptrtoint ptr %nr_bitmaps to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nr_bitmaps, align 4
  %cmp8 = icmp ult i32 %inc, %19
  br i1 %cmp8, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end16, %entry.for.end_crit_edge
  %i.0119 = phi i32 [ %i.0123, %if.end16 ], [ 0, %entry.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  %start.1 = phi i32 [ %call.i, %if.end16 ], [ -1, %entry.for.end_crit_edge ], [ %call.i, %for.inc.for.end_crit_edge ]
  %20 = ptrtoint ptr %nr_bitmaps to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nr_bitmaps, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0119, i32 %21)
  %cmp20 = icmp eq i32 %i.0119, %21
  br i1 %cmp20, label %if.then22, label %for.end.if.end39_crit_edge

for.end.if.end39_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

if.then22:                                        ; preds = %for.end
  %extensions.i = getelementptr inbounds %struct.dma_iommu_mapping, ptr %mapping, i32 0, i32 3
  %22 = ptrtoint ptr %extensions.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %extensions.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0119, i32 %23)
  %cmp.not.i = icmp ult i32 %i.0119, %23
  br i1 %cmp.not.i, label %if.end8.i.i.i, label %if.then22.if.then24_crit_edge

if.then22.if.then24_crit_edge:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then24

if.end8.i.i.i:                                    ; preds = %if.then22
  %bitmap_size.i = getelementptr inbounds %struct.dma_iommu_mapping, ptr %mapping, i32 0, i32 4
  %24 = ptrtoint ptr %bitmap_size.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bitmap_size.i, align 4
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %25, i32 noundef 2848) #20
  %bitmaps.i = getelementptr inbounds %struct.dma_iommu_mapping, ptr %mapping, i32 0, i32 1
  %26 = ptrtoint ptr %bitmaps.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bitmaps.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %27, i32 %i.0119
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call9.i.i.i, ptr %arrayidx.i, align 4
  %29 = load ptr, ptr %bitmaps.i, align 4
  %arrayidx3.i = getelementptr ptr, ptr %29, i32 %i.0119
  %30 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx3.i, align 4
  %tobool.not.i111 = icmp eq ptr %31, null
  br i1 %tobool.not.i111, label %if.end8.i.i.i.if.then24_crit_edge, label %if.end26

if.end8.i.i.i.if.then24_crit_edge:                ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then24

if.then24:                                        ; preds = %if.end8.i.i.i.if.then24_crit_edge, %if.then22.if.then24_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #14
  br label %cleanup

if.end26:                                         ; preds = %if.end8.i.i.i
  %32 = ptrtoint ptr %nr_bitmaps to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nr_bitmaps, align 4
  %inc.i = add i32 %33, 1
  store i32 %inc.i, ptr %nr_bitmaps, align 4
  %34 = ptrtoint ptr %bitmaps.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bitmaps.i, align 4
  %arrayidx28 = getelementptr ptr, ptr %35, i32 %i.0119
  %36 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx28, align 4
  %38 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bits, align 4
  %call.i113 = tail call i32 @bitmap_find_next_zero_area_off(ptr noundef %37, i32 noundef %39, i32 noundef 0, i32 noundef %shr, i32 noundef %sub, i32 noundef 0) #14
  %40 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bits, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i113, i32 %41)
  %cmp32 = icmp ugt i32 %call.i113, %41
  br i1 %cmp32, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #14
  br label %cleanup

if.end36:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  %42 = ptrtoint ptr %bitmaps.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bitmaps.i, align 4
  %arrayidx38 = getelementptr ptr, ptr %43, i32 %i.0119
  %44 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx38, align 4
  tail call void @__bitmap_set(ptr noundef %45, i32 noundef %call.i113, i32 noundef %shr) #14
  br label %if.end39

if.end39:                                         ; preds = %if.end36, %for.end.if.end39_crit_edge
  %start.2 = phi i32 [ %start.1, %for.end.if.end39_crit_edge ], [ %call.i113, %if.end36 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #14
  %base = getelementptr inbounds %struct.dma_iommu_mapping, ptr %mapping, i32 0, i32 6
  %46 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %base, align 4
  %mul = mul i32 %i.0119, %2
  %reass.add = add i32 %start.2, %mul
  %reass.mul = shl i32 %reass.add, 12
  %add43 = add i32 %reass.mul, %47
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.then34, %if.then24
  %retval.0 = phi i32 [ -1, %if.then24 ], [ -1, %if.then34 ], [ %add43, %if.end39 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_map(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_unmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_find_next_zero_area_off(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__arm_iommu_free_attrs(ptr noundef %dev, i32 noundef %size, ptr noundef %cpu_addr, i32 noundef %handle, i32 noundef %attrs, i32 noundef %coherent_flag) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %size, 4095
  %and = and i32 %add, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %coherent_flag)
  %cmp = icmp eq i32 %coherent_flag, 1
  br i1 %cmp, label %if.then.i, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr @atomic_pool, align 4
  %1 = ptrtoint ptr %cpu_addr to i32
  %call.i = tail call zeroext i1 @gen_pool_has_addr(ptr noundef %0, i32 noundef %1, i32 noundef %and) #14
  br i1 %call.i, label %if.else.i, label %if.end

if.then.i:                                        ; preds = %entry
  tail call fastcc void @__iommu_remove_mapping(ptr noundef %dev, i32 noundef %handle, i32 noundef %and) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %2 = load ptr, ptr @mem_map, align 4
  %3 = ptrtoint ptr %cpu_addr to i32
  %sub.i = add i32 %3, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %2, i32 %shr.i
  %shr.i.i = lshr i32 %add, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %add.ptr.i, i32 %shr.i.i
  %cmp4.i.i = icmp ugt ptr %add.ptr.i.i, %add.ptr.i
  br i1 %cmp4.i.i, label %if.then.i.while.body.i.i_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i.while.body.i.i_crit_edge:               ; preds = %if.then.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.then.i.while.body.i.i_crit_edge
  %page.addr.05.i.i = phi ptr [ %incdec.ptr.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %add.ptr.i, %if.then.i.while.body.i.i_crit_edge ]
  tail call void @__free_pages(ptr noundef %page.addr.05.i.i, i32 noundef 0) #14
  %incdec.ptr.i.i = getelementptr %struct.page, ptr %page.addr.05.i.i, i32 1
  %cmp.i.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr.i.i
  br i1 %cmp.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %while.body.i.i.cleanup_crit_edge

while.body.i.i.cleanup_crit_edge:                 ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i

if.else.i:                                        ; preds = %lor.lhs.false
  tail call fastcc void @__iommu_remove_mapping(ptr noundef %dev, i32 noundef %handle, i32 noundef %and) #14
  %4 = load ptr, ptr @atomic_pool, align 4
  %call.i.i.i = tail call zeroext i1 @gen_pool_has_addr(ptr noundef %4, i32 noundef %1, i32 noundef %and) #14
  br i1 %call.i.i.i, label %if.end.i.i, label %if.else.i.cleanup_crit_edge

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %5 = load ptr, ptr @atomic_pool, align 4
  tail call void @gen_pool_free_owner(ptr noundef %5, i32 noundef %1, i32 noundef %and, ptr noundef null) #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %6 = load ptr, ptr @atomic_pool, align 4
  %call.i.i = tail call zeroext i1 @gen_pool_has_addr(ptr noundef %6, i32 noundef %1, i32 noundef 4096) #14
  br i1 %call.i.i, label %if.then.i46, label %if.end.i

if.then.i46:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %7 = load ptr, ptr @atomic_pool, align 4
  %call.i8.i = tail call i32 @gen_pool_virt_to_phys(ptr noundef %7, i32 noundef %1) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %8 = load ptr, ptr @mem_map, align 4
  %shr.i.i44 = lshr i32 %call.i8.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %9 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i.i = sub i32 %shr.i.i44, %9
  %add.ptr.i.i45 = getelementptr %struct.page, ptr %8, i32 %sub.i.i
  br label %__iommu_get_pages.exit

if.end.i:                                         ; preds = %if.end
  %and.i = and i32 %attrs, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i.__iommu_get_pages.exit_crit_edge

if.end.i.__iommu_get_pages.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__iommu_get_pages.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %call4.i = tail call ptr @dma_common_find_pages(ptr noundef %cpu_addr) #14
  br label %__iommu_get_pages.exit

__iommu_get_pages.exit:                           ; preds = %if.end3.i, %if.end.i.__iommu_get_pages.exit_crit_edge, %if.then.i46
  %retval.0.i = phi ptr [ %add.ptr.i.i45, %if.then.i46 ], [ %call4.i, %if.end3.i ], [ %cpu_addr, %if.end.i.__iommu_get_pages.exit_crit_edge ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %do.end, label %if.end20

do.end:                                           ; preds = %__iommu_get_pages.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1538, i32 noundef 9, ptr noundef nonnull @.str.21, ptr noundef %cpu_addr) #14
  br label %cleanup

if.end20:                                         ; preds = %__iommu_get_pages.exit
  %and21 = and i32 %attrs, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %cmp22 = icmp eq i32 %and21, 0
  br i1 %cmp22, label %if.then23, label %if.end20.if.end24_crit_edge

if.end20.if.end24_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dma_common_free_remap(ptr noundef %cpu_addr, i32 noundef %and) #14
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end20.if.end24_crit_edge
  tail call fastcc void @__iommu_remove_mapping(ptr noundef %dev, i32 noundef %handle, i32 noundef %and)
  %shr.i47 = lshr i32 %add, 12
  %and.i48 = and i32 %attrs, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i48)
  %tobool.not.i49 = icmp eq i32 %and.i48, 0
  br i1 %tobool.not.i49, label %for.cond.preheader.i, label %if.then.i51

for.cond.preheader.i:                             ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp1.not.i = icmp eq i32 %and, 0
  br i1 %cmp1.not.i, label %for.cond.preheader.i.__iommu_free_buffer.exit_crit_edge, label %for.body.preheader.i

for.cond.preheader.i.__iommu_free_buffer.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__iommu_free_buffer.exit

for.body.preheader.i:                             ; preds = %for.cond.preheader.i
  %umax.i = tail call i32 @llvm.umax.i32(i32 %shr.i47, i32 1) #14
  br label %for.body.i

if.then.i51:                                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %retval.0.i, align 4
  %call.i50 = tail call zeroext i1 @dma_release_from_contiguous(ptr noundef %dev, ptr noundef %11, i32 noundef %shr.i47) #14
  br label %__iommu_free_buffer.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.02.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %arrayidx1.i = getelementptr ptr, ptr %retval.0.i, i32 %i.02.i
  %12 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx1.i, align 4
  %tobool2.not.i = icmp eq ptr %13, null
  br i1 %tobool2.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then3.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then3.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__free_pages(ptr noundef nonnull %13, i32 noundef 0) #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then3.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %for.inc.i.__iommu_free_buffer.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.__iommu_free_buffer.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__iommu_free_buffer.exit

__iommu_free_buffer.exit:                         ; preds = %for.inc.i.__iommu_free_buffer.exit_crit_edge, %if.then.i51, %for.cond.preheader.i.__iommu_free_buffer.exit_crit_edge
  tail call void @kvfree(ptr noundef nonnull %retval.0.i) #14
  br label %cleanup

cleanup:                                          ; preds = %__iommu_free_buffer.exit, %do.end, %if.end.i.i, %if.else.i.cleanup_crit_edge, %while.body.i.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_common_find_pages(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__arm_iommu_mmap_attrs(ptr noundef %vma, ptr noundef %cpu_addr, i32 noundef %size, i32 noundef %attrs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @atomic_pool, align 4
  %1 = ptrtoint ptr %cpu_addr to i32
  %call.i.i = tail call zeroext i1 @gen_pool_has_addr(ptr noundef %0, i32 noundef %1, i32 noundef 4096) #14
  br i1 %call.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %2 = load ptr, ptr @atomic_pool, align 4
  %call.i8.i = tail call i32 @gen_pool_virt_to_phys(ptr noundef %2, i32 noundef %1) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %3 = load ptr, ptr @mem_map, align 4
  %shr.i.i = lshr i32 %call.i8.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %4 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i.i = sub i32 %shr.i.i, %4
  %add.ptr.i.i = getelementptr %struct.page, ptr %3, i32 %sub.i.i
  br label %__iommu_get_pages.exit

if.end.i:                                         ; preds = %entry
  %and.i = and i32 %attrs, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i.__iommu_get_pages.exit_crit_edge

if.end.i.__iommu_get_pages.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__iommu_get_pages.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %call4.i = tail call ptr @dma_common_find_pages(ptr noundef %cpu_addr) #14
  br label %__iommu_get_pages.exit

__iommu_get_pages.exit:                           ; preds = %if.end3.i, %if.end.i.__iommu_get_pages.exit_crit_edge, %if.then.i
  %retval.0.i = phi ptr [ %add.ptr.i.i, %if.then.i ], [ %call4.i, %if.end3.i ], [ %cpu_addr, %if.end.i.__iommu_get_pages.exit_crit_edge ]
  %add = add i32 %size, 4095
  %shr = lshr i32 %add, 12
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %__iommu_get_pages.exit.cleanup_crit_edge, label %if.end

__iommu_get_pages.exit.cleanup_crit_edge:         ; preds = %__iommu_get_pages.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %__iommu_get_pages.exit
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %5 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vm_pgoff, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %shr)
  %cmp.not = icmp ult i32 %6, %shr
  br i1 %cmp.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %call3 = tail call i32 @vm_map_pages(ptr noundef %vma, ptr noundef nonnull %retval.0.i, i32 noundef %shr) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end2.cleanup_crit_edge, label %do.end

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #16
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %call3) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %__iommu_get_pages.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %__iommu_get_pages.exit.cleanup_crit_edge ], [ -6, %if.end.cleanup_crit_edge ], [ %call3, %do.end ], [ 0, %if.end2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_map_pages(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table_from_pages_segment(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_coherent_iommu_map_page(ptr nocapture noundef readonly %dev, ptr noundef %page, i32 noundef %offset, i32 noundef %size, i32 noundef %dir, i32 noundef %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %archdata = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 26
  %0 = ptrtoint ptr %archdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %archdata, align 8
  %add = add i32 %offset, 4095
  %add2 = add i32 %add, %size
  %and = and i32 %add2, -4096
  %call = tail call fastcc i32 @__alloc_iova(ptr noundef %1, i32 noundef %and)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %and.i = lshr i32 %attrs, 4
  %2 = and i32 %and.i, 32
  %3 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %dir, label %if.end.__dma_info_to_prot.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb3.i
    i32 2, label %sw.bb5.i
  ]

if.end.__dma_info_to_prot.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %__dma_info_to_prot.exit

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %or2.i = or i32 %2, 3
  br label %__dma_info_to_prot.exit

sw.bb3.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %or4.i = or i32 %2, 1
  br label %__dma_info_to_prot.exit

sw.bb5.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %or6.i = or i32 %2, 2
  br label %__dma_info_to_prot.exit

__dma_info_to_prot.exit:                          ; preds = %sw.bb5.i, %sw.bb3.i, %sw.bb.i, %if.end.__dma_info_to_prot.exit_crit_edge
  %retval.0.i = phi i32 [ %or6.i, %sw.bb5.i ], [ %or4.i, %sw.bb3.i ], [ %or2.i, %sw.bb.i ], [ %2, %if.end.__dma_info_to_prot.exit_crit_edge ]
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %6 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %page to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %6 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %7 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add4 = add i32 %sub.ptr.div, %7
  %shl = shl i32 %add4, 12
  %call5 = tail call i32 @iommu_map(ptr noundef %5, i32 noundef %call, i32 noundef %shl, i32 noundef %and, i32 noundef %retval.0.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %fail, label %if.end8

if.end8:                                          ; preds = %__dma_info_to_prot.exit
  call void @__sanitizer_cov_trace_pc() #16
  %add9 = add i32 %call, %offset
  br label %cleanup

fail:                                             ; preds = %__dma_info_to_prot.exit
  %bits.i = getelementptr inbounds %struct.dma_iommu_mapping, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %bits.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bits.i, align 4
  %shl.i = shl i32 %9, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not.i = icmp eq i32 %and, 0
  br i1 %tobool.not.i, label %fail.cleanup_crit_edge, label %if.end.i

fail.cleanup_crit_edge:                           ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %fail
  %base.i = getelementptr inbounds %struct.dma_iommu_mapping, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base.i, align 4
  %sub.i = sub i32 %call, %11
  %div.i = udiv i32 %sub.i, %shl.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %11)
  %cmp.i = icmp ult i32 %call, %11
  br i1 %cmp.i, label %if.end.i.do.body6.i_crit_edge, label %lor.rhs.i, !prof !121

if.end.i.do.body6.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body6.i

lor.rhs.i:                                        ; preds = %if.end.i
  %extensions.i = getelementptr inbounds %struct.dma_iommu_mapping, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %extensions.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %extensions.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %13)
  %cmp2.i = icmp ugt i32 %div.i, %13
  br i1 %cmp2.i, label %lor.rhs.i.do.body6.i_crit_edge, label %do.end12.i, !prof !121

lor.rhs.i.do.body6.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body6.i

do.body6.i:                                       ; preds = %lor.rhs.i.do.body6.i_crit_edge, %if.end.i.do.body6.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/dma-mapping.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1174, 0\0A.popsection", ""() #14, !srcloc !134
  unreachable

do.end12.i:                                       ; preds = %lor.rhs.i
  %mul.i = mul i32 %div.i, %shl.i
  %add.i = add i32 %mul.i, %11
  %add15.i = add i32 %call, %and
  %add16.i = add i32 %add.i, %shl.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add15.i, i32 %add16.i)
  %cmp17.i = icmp ugt i32 %add15.i, %add16.i
  br i1 %cmp17.i, label %do.body19.i, label %if.else.i

do.body19.i:                                      ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/dma-mapping.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1187, 0\0A.popsection", ""() #14, !srcloc !135
  unreachable

if.else.i:                                        ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub14.i = sub i32 %call, %add.i
  %shr.i = lshr i32 %sub14.i, 12
  %shr25.i = lshr i32 %add2, 12
  %lock.i = getelementptr inbounds %struct.dma_iommu_mapping, ptr %1, i32 0, i32 7
  %call30.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #14
  %bitmaps.i = getelementptr inbounds %struct.dma_iommu_mapping, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %bitmaps.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bitmaps.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %15, i32 %div.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  tail call void @__bitmap_clear(ptr noundef %17, i32 noundef %shr.i, i32 noundef %shr25.i) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call30.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %fail.cleanup_crit_edge, %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add9, %if.end8 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %fail.cleanup_crit_edge ], [ -1, %if.else.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_iova_to_phys(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__iommu_map_sg(ptr nocapture noundef readonly %dev, ptr noundef %sg, i32 noundef %nents, i32 noundef %dir, i32 noundef %attrs, i1 noundef zeroext %is_coherent) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %offset1 = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 1
  %0 = ptrtoint ptr %offset1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offset1, align 4
  %length = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 2
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length, align 4
  %add = add i32 %3, %1
  %dma_parms.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 22
  %4 = ptrtoint ptr %dma_parms.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_parms.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.lhs.true.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not.i = icmp eq i32 %7, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.dma_get_max_seg_size.exit_crit_edge

land.lhs.true.i.dma_get_max_seg_size.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_get_max_seg_size.exit

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  br label %dma_get_max_seg_size.exit

dma_get_max_seg_size.exit:                        ; preds = %if.end.i, %land.lhs.true.i.dma_get_max_seg_size.exit_crit_edge
  %retval.0.i = phi i32 [ 65536, %if.end.i ], [ %7, %land.lhs.true.i.dma_get_max_seg_size.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nents)
  %cmp106 = icmp sgt i32 %nents, 1
  br i1 %cmp106, label %dma_get_max_seg_size.exit.for.body_crit_edge, label %dma_get_max_seg_size.exit.for.end_crit_edge

dma_get_max_seg_size.exit.for.end_crit_edge:      ; preds = %dma_get_max_seg_size.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

dma_get_max_seg_size.exit.for.body_crit_edge:     ; preds = %dma_get_max_seg_size.exit
  br label %for.body

for.body:                                         ; preds = %if.end20.for.body_crit_edge, %dma_get_max_seg_size.exit.for.body_crit_edge
  %size.0116 = phi i32 [ %add22, %if.end20.for.body_crit_edge ], [ %add, %dma_get_max_seg_size.exit.for.body_crit_edge ]
  %offset.0114 = phi i32 [ %offset.1, %if.end20.for.body_crit_edge ], [ %1, %dma_get_max_seg_size.exit.for.body_crit_edge ]
  %count.0113 = phi i32 [ %count.1, %if.end20.for.body_crit_edge ], [ 0, %dma_get_max_seg_size.exit.for.body_crit_edge ]
  %i.0112 = phi i32 [ %inc, %if.end20.for.body_crit_edge ], [ 1, %dma_get_max_seg_size.exit.for.body_crit_edge ]
  %start.0110 = phi ptr [ %start.1, %if.end20.for.body_crit_edge ], [ %sg, %dma_get_max_seg_size.exit.for.body_crit_edge ]
  %dma.0108 = phi ptr [ %dma.1, %if.end20.for.body_crit_edge ], [ %sg, %dma_get_max_seg_size.exit.for.body_crit_edge ]
  %s.0107 = phi ptr [ %call3, %if.end20.for.body_crit_edge ], [ %sg, %dma_get_max_seg_size.exit.for.body_crit_edge ]
  %call3 = tail call ptr @sg_next(ptr noundef %s.0107) #14
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %call3, i32 0, i32 4
  %8 = ptrtoint ptr %dma_length to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %dma_length, align 4
  %offset4 = getelementptr inbounds %struct.scatterlist, ptr %call3, i32 0, i32 1
  %9 = ptrtoint ptr %offset4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offset4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  %and = and i32 %size.0116, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  %or.cond = select i1 %tobool.not, i1 %tobool5.not, i1 false
  br i1 %or.cond, label %lor.lhs.false6, label %for.body.if.then_crit_edge

for.body.if.then_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

lor.lhs.false6:                                   ; preds = %for.body
  %length7 = getelementptr inbounds %struct.scatterlist, ptr %call3, i32 0, i32 2
  %11 = ptrtoint ptr %length7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %length7, align 4
  %add8 = add i32 %12, %size.0116
  call void @__sanitizer_cov_trace_cmp4(i32 %add8, i32 %retval.0.i)
  %cmp9 = icmp ugt i32 %add8, %retval.0.i
  br i1 %cmp9, label %lor.lhs.false6.if.then_crit_edge, label %lor.lhs.false6.if.end20_crit_edge

lor.lhs.false6.if.end20_crit_edge:                ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

lor.lhs.false6.if.then_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false6.if.then_crit_edge, %for.body.if.then_crit_edge
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %dma.0108, i32 0, i32 3
  %call11 = tail call fastcc i32 @__map_sg_chunk(ptr noundef %dev, ptr noundef %start.0110, i32 noundef %size.0116, ptr noundef %dma_address, i32 noundef %dir, i32 noundef %attrs, i1 noundef zeroext %is_coherent)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then.bad_mapping_crit_edge, label %if.end

if.then.bad_mapping_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %bad_mapping

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma_address, align 4
  %add15 = add i32 %14, %offset.0114
  store i32 %add15, ptr %dma_address, align 4
  %sub = sub i32 %size.0116, %offset.0114
  %dma_length16 = getelementptr inbounds %struct.scatterlist, ptr %dma.0108, i32 0, i32 4
  %15 = ptrtoint ptr %dma_length16 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub, ptr %dma_length16, align 4
  %16 = ptrtoint ptr %offset4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offset4, align 4
  %call18 = tail call ptr @sg_next(ptr noundef %dma.0108) #14
  %add19 = add i32 %count.0113, 1
  br label %if.end20

if.end20:                                         ; preds = %if.end, %lor.lhs.false6.if.end20_crit_edge
  %dma.1 = phi ptr [ %call18, %if.end ], [ %dma.0108, %lor.lhs.false6.if.end20_crit_edge ]
  %start.1 = phi ptr [ %call3, %if.end ], [ %start.0110, %lor.lhs.false6.if.end20_crit_edge ]
  %count.1 = phi i32 [ %add19, %if.end ], [ %count.0113, %lor.lhs.false6.if.end20_crit_edge ]
  %offset.1 = phi i32 [ %17, %if.end ], [ %offset.0114, %lor.lhs.false6.if.end20_crit_edge ]
  %size.1 = phi i32 [ %17, %if.end ], [ %size.0116, %lor.lhs.false6.if.end20_crit_edge ]
  %length21 = getelementptr inbounds %struct.scatterlist, ptr %call3, i32 0, i32 2
  %18 = ptrtoint ptr %length21 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %length21, align 4
  %add22 = add i32 %19, %size.1
  %inc = add nuw nsw i32 %i.0112, 1
  %exitcond.not = icmp eq i32 %inc, %nents
  br i1 %exitcond.not, label %if.end20.for.end_crit_edge, label %if.end20.for.body_crit_edge

if.end20.for.body_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.end20.for.end_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %if.end20.for.end_crit_edge, %dma_get_max_seg_size.exit.for.end_crit_edge
  %dma.0.lcssa = phi ptr [ %sg, %dma_get_max_seg_size.exit.for.end_crit_edge ], [ %dma.1, %if.end20.for.end_crit_edge ]
  %start.0.lcssa = phi ptr [ %sg, %dma_get_max_seg_size.exit.for.end_crit_edge ], [ %start.1, %if.end20.for.end_crit_edge ]
  %count.0.lcssa = phi i32 [ 0, %dma_get_max_seg_size.exit.for.end_crit_edge ], [ %count.1, %if.end20.for.end_crit_edge ]
  %offset.0.lcssa = phi i32 [ %1, %dma_get_max_seg_size.exit.for.end_crit_edge ], [ %offset.1, %if.end20.for.end_crit_edge ]
  %size.0.lcssa = phi i32 [ %add, %dma_get_max_seg_size.exit.for.end_crit_edge ], [ %add22, %if.end20.for.end_crit_edge ]
  %dma_address23 = getelementptr inbounds %struct.scatterlist, ptr %dma.0.lcssa, i32 0, i32 3
  %call25 = tail call fastcc i32 @__map_sg_chunk(ptr noundef %dev, ptr noundef %start.0.lcssa, i32 noundef %size.0.lcssa, ptr noundef %dma_address23, i32 noundef %dir, i32 noundef %attrs, i1 noundef zeroext %is_coherent)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %for.end.bad_mapping_crit_edge, label %if.end28

for.end.bad_mapping_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %bad_mapping

if.end28:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %dma_address23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma_address23, align 4
  %add30 = add i32 %21, %offset.0.lcssa
  store i32 %add30, ptr %dma_address23, align 4
  %sub31 = sub i32 %size.0.lcssa, %offset.0.lcssa
  %dma_length32 = getelementptr inbounds %struct.scatterlist, ptr %dma.0.lcssa, i32 0, i32 4
  %22 = ptrtoint ptr %dma_length32 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub31, ptr %dma_length32, align 4
  %add33 = add i32 %count.0.lcssa, 1
  br label %cleanup

bad_mapping:                                      ; preds = %for.end.bad_mapping_crit_edge, %if.then.bad_mapping_crit_edge
  %count.0103 = phi i32 [ %count.0.lcssa, %for.end.bad_mapping_crit_edge ], [ %count.0113, %if.then.bad_mapping_crit_edge ]
  %ret.0 = phi i32 [ %call25, %for.end.bad_mapping_crit_edge ], [ %call11, %if.then.bad_mapping_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0103)
  %cmp35122 = icmp sgt i32 %count.0103, 0
  br i1 %cmp35122, label %bad_mapping.for.body36_crit_edge, label %bad_mapping.for.end43_crit_edge

bad_mapping.for.end43_crit_edge:                  ; preds = %bad_mapping
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end43

bad_mapping.for.body36_crit_edge:                 ; preds = %bad_mapping
  br label %for.body36

for.body36:                                       ; preds = %for.body36.for.body36_crit_edge, %bad_mapping.for.body36_crit_edge
  %i.1124 = phi i32 [ %inc41, %for.body36.for.body36_crit_edge ], [ 0, %bad_mapping.for.body36_crit_edge ]
  %s.1123 = phi ptr [ %call42, %for.body36.for.body36_crit_edge ], [ %sg, %bad_mapping.for.body36_crit_edge ]
  %dma_address37 = getelementptr inbounds %struct.scatterlist, ptr %s.1123, i32 0, i32 3
  %23 = ptrtoint ptr %dma_address37 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dma_address37, align 4
  %dma_length38 = getelementptr inbounds %struct.scatterlist, ptr %s.1123, i32 0, i32 4
  %25 = ptrtoint ptr %dma_length38 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dma_length38, align 4
  tail call fastcc void @__iommu_remove_mapping(ptr noundef %dev, i32 noundef %24, i32 noundef %26)
  %inc41 = add nuw nsw i32 %i.1124, 1
  %call42 = tail call ptr @sg_next(ptr noundef %s.1123) #14
  %exitcond126.not = icmp eq i32 %inc41, %count.0103
  br i1 %exitcond126.not, label %for.body36.for.end43_crit_edge, label %for.body36.for.body36_crit_edge

for.body36.for.body36_crit_edge:                  ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body36

for.body36.for.end43_crit_edge:                   ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end43

for.end43:                                        ; preds = %for.body36.for.end43_crit_edge, %bad_mapping.for.end43_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %ret.0)
  %cmp44 = icmp eq i32 %ret.0, -12
  %. = select i1 %cmp44, i32 -12, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %for.end43, %if.end28
  %retval.0 = phi i32 [ %add33, %if.end28 ], [ %., %for.end43 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__map_sg_chunk(ptr nocapture noundef readonly %dev, ptr noundef %sg, i32 noundef %size, ptr nocapture noundef writeonly %handle, i32 noundef %dir, i32 noundef %attrs, i1 noundef zeroext %is_coherent) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %archdata = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 26
  %0 = ptrtoint ptr %archdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %archdata, align 8
  %add = add i32 %size, 4095
  %and = and i32 %add, -4096
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %handle, align 4
  %call = tail call fastcc i32 @__alloc_iova(ptr noundef %1, i32 noundef %and)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %entry.cleanup27_crit_edge, label %for.cond.preheader

entry.cleanup27_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup27

for.cond.preheader:                               ; preds = %entry
  %shr = lshr i32 %add, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add)
  %cmp271.not = icmp ult i32 %add, 4096
  br i1 %cmp271.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %and8 = and i32 %attrs, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %cmp9 = icmp ne i32 %and8, 0
  %3 = or i1 %cmp9, %is_coherent
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dir)
  %cmp.i = icmp eq i32 %dir, 2
  %and.i6368 = lshr i32 %attrs, 4
  %4 = and i32 %and.i6368, 32
  %or4.i = or i32 %4, 1
  %or2.i = or i32 %4, 3
  %or6.i = or i32 %4, 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %s.074 = phi ptr [ %sg, %for.body.lr.ph ], [ %call24, %for.inc.for.body_crit_edge ]
  %count.073 = phi i32 [ 0, %for.body.lr.ph ], [ %add21, %for.inc.for.body_crit_edge ]
  %iova.072 = phi i32 [ %call, %for.body.lr.ph ], [ %add22, %for.inc.for.body_crit_edge ]
  %5 = ptrtoint ptr %s.074 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s.074, align 4
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !113

do.body2.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #14, !srcloc !116
  unreachable

sg_page.exit:                                     ; preds = %for.body
  %and.i = and i32 %6, -4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %7 = load ptr, ptr @mem_map, align 4
  %sub.ptr.rhs.cast = ptrtoint ptr %7 to i32
  %sub.ptr.sub = sub i32 %and.i, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %8 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add4 = add i32 %sub.ptr.div, %8
  %shl = shl i32 %add4, 12
  %offset = getelementptr inbounds %struct.scatterlist, ptr %s.074, i32 0, i32 1
  %9 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offset, align 4
  %length = getelementptr inbounds %struct.scatterlist, ptr %s.074, i32 0, i32 2
  %11 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %length, align 4
  %add5 = add i32 %10, 4095
  %add6 = add i32 %add5, %12
  %and7 = and i32 %add6, -4096
  br i1 %3, label %sg_page.exit.if.end14_crit_edge, label %sg_page.exit62

sg_page.exit.if.end14_crit_edge:                  ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

sg_page.exit62:                                   ; preds = %sg_page.exit
  %13 = inttoptr i32 %and.i to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 8) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 8), align 4
  tail call fastcc void @dma_cache_maint_page(ptr noundef %13, i32 noundef %10, i32 noundef %12, i32 noundef %dir, ptr noundef %14) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %15 = load ptr, ptr @mem_map, align 4
  %sub.ptr.rhs.cast.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i = sub i32 %and.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %16 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %sub.ptr.div.i, %16
  %shl.i = shl i32 %add.i, 12
  %add1.i = add i32 %shl.i, %10
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sg_page.exit62
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @outer_cache to i32))
  %17 = load ptr, ptr @outer_cache, align 4
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %if.then.i.sw.bb5.i_crit_edge, label %if.then.i.if.end.sink.split.i_crit_edge

if.then.i.if.end.sink.split.i_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.sink.split.i

if.then.i.sw.bb5.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb5.i

if.else.i:                                        ; preds = %sg_page.exit62
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %tobool.not.i12.i = icmp eq ptr %18, null
  br i1 %tobool.not.i12.i, label %if.else.i.if.end14_crit_edge, label %if.else.i.if.end.sink.split.i_crit_edge

if.else.i.if.end.sink.split.i_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.sink.split.i

if.else.i.if.end14_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.end.sink.split.i:                              ; preds = %if.else.i.if.end.sink.split.i_crit_edge, %if.then.i.if.end.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %17, %if.then.i.if.end.sink.split.i_crit_edge ], [ %18, %if.else.i.if.end.sink.split.i_crit_edge ]
  %add3.i = add i32 %add1.i, %12
  tail call void %.sink.i(i32 noundef %add1.i, i32 noundef %add3.i) #14
  br label %if.end14

if.end14:                                         ; preds = %if.end.sink.split.i, %if.else.i.if.end14_crit_edge, %sg_page.exit.if.end14_crit_edge
  %19 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %dir, label %if.end14.__dma_info_to_prot.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb3.i
    i32 2, label %if.end14.sw.bb5.i_crit_edge
  ]

if.end14.sw.bb5.i_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb5.i

if.end14.__dma_info_to_prot.exit_crit_edge:       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %__dma_info_to_prot.exit

sw.bb.i:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %__dma_info_to_prot.exit

sw.bb3.i:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %__dma_info_to_prot.exit

sw.bb5.i:                                         ; preds = %if.end14.sw.bb5.i_crit_edge, %if.then.i.sw.bb5.i_crit_edge
  br label %__dma_info_to_prot.exit

__dma_info_to_prot.exit:                          ; preds = %sw.bb5.i, %sw.bb3.i, %sw.bb.i, %if.end14.__dma_info_to_prot.exit_crit_edge
  %retval.0.i = phi i32 [ %or6.i, %sw.bb5.i ], [ %or4.i, %sw.bb3.i ], [ %or2.i, %sw.bb.i ], [ %4, %if.end14.__dma_info_to_prot.exit_crit_edge ]
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %call16 = tail call i32 @iommu_map(ptr noundef %21, i32 noundef %iova.072, i32 noundef %shl, i32 noundef %and7, i32 noundef %retval.0.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %fail, label %for.inc

for.inc:                                          ; preds = %__dma_info_to_prot.exit
  %shr20 = lshr i32 %add6, 12
  %add21 = add i32 %shr20, %count.073
  %add22 = add i32 %and7, %iova.072
  %call24 = tail call ptr @sg_next(ptr noundef %s.074) #14
  %cmp2 = icmp ult i32 %add21, %shr
  br i1 %cmp2, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %22 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call, ptr %handle, align 4
  br label %cleanup27

fail:                                             ; preds = %__dma_info_to_prot.exit
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %mul = shl i32 %count.073, 12
  %call26 = tail call i32 @iommu_unmap(ptr noundef %24, i32 noundef %call, i32 noundef %mul) #14
  %bits.i = getelementptr inbounds %struct.dma_iommu_mapping, ptr %1, i32 0, i32 5
  %25 = ptrtoint ptr %bits.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bits.i, align 4
  %shl.i64 = shl i32 %26, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not.i = icmp eq i32 %and, 0
  br i1 %tobool.not.i, label %fail.cleanup27_crit_edge, label %if.end.i

fail.cleanup27_crit_edge:                         ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup27

if.end.i:                                         ; preds = %fail
  %base.i = getelementptr inbounds %struct.dma_iommu_mapping, ptr %1, i32 0, i32 6
  %27 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %base.i, align 4
  %sub.i = sub i32 %call, %28
  %div.i = udiv i32 %sub.i, %shl.i64
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %28)
  %cmp.i65 = icmp ult i32 %call, %28
  br i1 %cmp.i65, label %if.end.i.do.body6.i_crit_edge, label %lor.rhs.i, !prof !121

if.end.i.do.body6.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body6.i

lor.rhs.i:                                        ; preds = %if.end.i
  %extensions.i = getelementptr inbounds %struct.dma_iommu_mapping, ptr %1, i32 0, i32 3
  %29 = ptrtoint ptr %extensions.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %extensions.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %30)
  %cmp2.i = icmp ugt i32 %div.i, %30
  br i1 %cmp2.i, label %lor.rhs.i.do.body6.i_crit_edge, label %do.end12.i, !prof !121

lor.rhs.i.do.body6.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body6.i

do.body6.i:                                       ; preds = %lor.rhs.i.do.body6.i_crit_edge, %if.end.i.do.body6.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/dma-mapping.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1174, 0\0A.popsection", ""() #14, !srcloc !134
  unreachable

do.end12.i:                                       ; preds = %lor.rhs.i
  %mul.i = mul i32 %div.i, %shl.i64
  %add.i66 = add i32 %mul.i, %28
  %add15.i = add i32 %call, %and
  %add16.i = add i32 %add.i66, %shl.i64
  call void @__sanitizer_cov_trace_cmp4(i32 %add15.i, i32 %add16.i)
  %cmp17.i = icmp ugt i32 %add15.i, %add16.i
  br i1 %cmp17.i, label %do.body19.i, label %if.else.i67

do.body19.i:                                      ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/dma-mapping.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1187, 0\0A.popsection", ""() #14, !srcloc !135
  unreachable

if.else.i67:                                      ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub14.i = sub i32 %call, %add.i66
  %shr.i = lshr i32 %sub14.i, 12
  %lock.i = getelementptr inbounds %struct.dma_iommu_mapping, ptr %1, i32 0, i32 7
  %call30.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #14
  %bitmaps.i = getelementptr inbounds %struct.dma_iommu_mapping, ptr %1, i32 0, i32 1
  %31 = ptrtoint ptr %bitmaps.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bitmaps.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %32, i32 %div.i
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i, align 4
  tail call void @__bitmap_clear(ptr noundef %34, i32 noundef %shr.i, i32 noundef %shr) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call30.i) #14
  br label %cleanup27

cleanup27:                                        ; preds = %if.else.i67, %fail.cleanup27_crit_edge, %for.end, %entry.cleanup27_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -12, %entry.cleanup27_crit_edge ], [ %call16, %fail.cleanup27_crit_edge ], [ %call16, %if.else.i67 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @arm_coherent_iommu_alloc_attrs(ptr nocapture noundef readonly %dev, i32 noundef %size, ptr nocapture noundef writeonly %handle, i32 noundef %gfp, i32 noundef %attrs) #0 align 64 {
entry:
  %page.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %handle, align 4
  %add.i = add i32 %size, 4095
  %and.i = and i32 %add.i, -4096
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page.i.i) #14
  %1 = ptrtoint ptr %page.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %page.i.i, align 4, !annotation !117
  %call.i.i = call fastcc ptr @__alloc_simple_buffer(i32 noundef %and.i, i32 noundef %gfp, ptr noundef nonnull %page.i.i) #14
  %tobool.not.i53.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i53.i, label %entry.__arm_iommu_alloc_attrs.exit_crit_edge, label %if.end3.i.i

entry.__arm_iommu_alloc_attrs.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %__arm_iommu_alloc_attrs.exit

if.end3.i.i:                                      ; preds = %entry
  %call4.i.i = call fastcc i32 @__iommu_create_mapping(ptr noundef %dev, ptr noundef nonnull %page.i.i, i32 noundef %and.i, i32 noundef %attrs) #14
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call4.i.i, ptr %handle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4.i.i)
  %cmp5.i.i = icmp eq i32 %call4.i.i, -1
  br i1 %cmp5.i.i, label %err_mapping.i.i, label %if.end3.i.i.__arm_iommu_alloc_attrs.exit_crit_edge

if.end3.i.i.__arm_iommu_alloc_attrs.exit_crit_edge: ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__arm_iommu_alloc_attrs.exit

err_mapping.i.i:                                  ; preds = %if.end3.i.i
  %3 = load ptr, ptr @atomic_pool, align 4
  %4 = ptrtoint ptr %call.i.i to i32
  %call.i.i.i.i = tail call zeroext i1 @gen_pool_has_addr(ptr noundef %3, i32 noundef %4, i32 noundef %and.i) #14
  br i1 %call.i.i.i.i, label %if.end.i.i.i, label %err_mapping.i.i.__arm_iommu_alloc_attrs.exit_crit_edge

err_mapping.i.i.__arm_iommu_alloc_attrs.exit_crit_edge: ; preds = %err_mapping.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__arm_iommu_alloc_attrs.exit

if.end.i.i.i:                                     ; preds = %err_mapping.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %5 = load ptr, ptr @atomic_pool, align 4
  tail call void @gen_pool_free_owner(ptr noundef %5, i32 noundef %4, i32 noundef %and.i, ptr noundef null) #14
  br label %__arm_iommu_alloc_attrs.exit

__arm_iommu_alloc_attrs.exit:                     ; preds = %if.end.i.i.i, %err_mapping.i.i.__arm_iommu_alloc_attrs.exit_crit_edge, %if.end3.i.i.__arm_iommu_alloc_attrs.exit_crit_edge, %entry.__arm_iommu_alloc_attrs.exit_crit_edge
  %retval.0.i.i = phi ptr [ null, %entry.__arm_iommu_alloc_attrs.exit_crit_edge ], [ %call.i.i, %if.end3.i.i.__arm_iommu_alloc_attrs.exit_crit_edge ], [ null, %err_mapping.i.i.__arm_iommu_alloc_attrs.exit_crit_edge ], [ null, %if.end.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page.i.i) #14
  ret ptr %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arm_coherent_iommu_free_attrs(ptr nocapture noundef readonly %dev, i32 noundef %size, ptr noundef %cpu_addr, i32 noundef %handle, i32 noundef %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.i = add i32 %size, 4095
  %and.i = and i32 %add.i, -4096
  tail call fastcc void @__iommu_remove_mapping(ptr noundef %dev, i32 noundef %handle, i32 noundef %and.i) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %0 = load ptr, ptr @mem_map, align 4
  %1 = ptrtoint ptr %cpu_addr to i32
  %sub.i.i = add i32 %1, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %0, i32 %shr.i.i
  %shr.i.i.i = lshr i32 %add.i, 12
  %add.ptr.i.i.i = getelementptr %struct.page, ptr %add.ptr.i.i, i32 %shr.i.i.i
  %cmp4.i.i.i = icmp ugt ptr %add.ptr.i.i.i, %add.ptr.i.i
  br i1 %cmp4.i.i.i, label %entry.while.body.i.i.i_crit_edge, label %entry.__arm_iommu_free_attrs.exit_crit_edge

entry.__arm_iommu_free_attrs.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %__arm_iommu_free_attrs.exit

entry.while.body.i.i.i_crit_edge:                 ; preds = %entry
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %entry.while.body.i.i.i_crit_edge
  %page.addr.05.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ %add.ptr.i.i, %entry.while.body.i.i.i_crit_edge ]
  tail call void @__free_pages(ptr noundef %page.addr.05.i.i.i, i32 noundef 0) #14
  %incdec.ptr.i.i.i = getelementptr %struct.page, ptr %page.addr.05.i.i.i, i32 1
  %cmp.i.i.i = icmp ult ptr %incdec.ptr.i.i.i, %add.ptr.i.i.i
  br i1 %cmp.i.i.i, label %while.body.i.i.i.while.body.i.i.i_crit_edge, label %while.body.i.i.i.__arm_iommu_free_attrs.exit_crit_edge

while.body.i.i.i.__arm_iommu_free_attrs.exit_crit_edge: ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__arm_iommu_free_attrs.exit

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i.i

__arm_iommu_free_attrs.exit:                      ; preds = %while.body.i.i.i.__arm_iommu_free_attrs.exit_crit_edge, %entry.__arm_iommu_free_attrs.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_coherent_iommu_mmap_attrs(ptr nocapture noundef readnone %dev, ptr noundef %vma, ptr noundef %cpu_addr, i32 noundef %dma_addr, i32 noundef %size, i32 noundef %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__arm_iommu_mmap_attrs(ptr noundef %vma, ptr noundef %cpu_addr, i32 noundef %size, i32 noundef %attrs)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arm_coherent_iommu_unmap_page(ptr nocapture noundef readonly %dev, i32 noundef %handle, i32 noundef %size, i32 noundef %dir, i32 noundef %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %handle, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %and2 = and i32 %handle, 4095
  %add = add i32 %size, 4095
  %add3 = add i32 %add, %and2
  %and4 = and i32 %add3, -4096
  %archdata = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 26
  %0 = ptrtoint ptr %archdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %archdata, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 @iommu_unmap(ptr noundef %3, i32 noundef %and, i32 noundef %and4) #14
  %bits.i = getelementptr inbounds %struct.dma_iommu_mapping, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %bits.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bits.i, align 4
  %shl.i = shl i32 %5, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not.i = icmp eq i32 %and4, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %base.i = getelementptr inbounds %struct.dma_iommu_mapping, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base.i, align 4
  %sub.i = sub i32 %and, %7
  %div.i = udiv i32 %sub.i, %shl.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %7)
  %cmp.i = icmp ult i32 %and, %7
  br i1 %cmp.i, label %if.end.i.do.body6.i_crit_edge, label %lor.rhs.i, !prof !121

if.end.i.do.body6.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body6.i

lor.rhs.i:                                        ; preds = %if.end.i
  %extensions.i = getelementptr inbounds %struct.dma_iommu_mapping, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %extensions.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %extensions.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %9)
  %cmp2.i = icmp ugt i32 %div.i, %9
  br i1 %cmp2.i, label %lor.rhs.i.do.body6.i_crit_edge, label %do.end12.i, !prof !121

lor.rhs.i.do.body6.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body6.i

do.body6.i:                                       ; preds = %lor.rhs.i.do.body6.i_crit_edge, %if.end.i.do.body6.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/dma-mapping.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1174, 0\0A.popsection", ""() #14, !srcloc !134
  unreachable

do.end12.i:                                       ; preds = %lor.rhs.i
  %mul.i = mul i32 %div.i, %shl.i
  %add.i = add i32 %mul.i, %7
  %add15.i = add i32 %and4, %and
  %add16.i = add i32 %add.i, %shl.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add15.i, i32 %add16.i)
  %cmp17.i = icmp ugt i32 %add15.i, %add16.i
  br i1 %cmp17.i, label %do.body19.i, label %if.else.i

do.body19.i:                                      ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/dma-mapping.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1187, 0\0A.popsection", ""() #14, !srcloc !135
  unreachable

if.else.i:                                        ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub14.i = sub i32 %and, %add.i
  %shr.i = lshr i32 %sub14.i, 12
  %shr25.i = lshr i32 %add3, 12
  %lock.i = getelementptr inbounds %struct.dma_iommu_mapping, ptr %1, i32 0, i32 7
  %call30.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #14
  %bitmaps.i = getelementptr inbounds %struct.dma_iommu_mapping, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %bitmaps.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bitmaps.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %11, i32 %div.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  tail call void @__bitmap_clear(ptr noundef %13, i32 noundef %shr.i, i32 noundef %shr25.i) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call30.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_coherent_iommu_map_sg(ptr nocapture noundef readonly %dev, ptr noundef %sg, i32 noundef %nents, i32 noundef %dir, i32 noundef %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__iommu_map_sg(ptr noundef %dev, ptr noundef %sg, i32 noundef %nents, i32 noundef %dir, i32 noundef %attrs, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arm_coherent_iommu_unmap_sg(ptr nocapture noundef readonly %dev, ptr noundef %sg, i32 noundef %nents, i32 noundef %dir, i32 noundef %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nents)
  %cmp15.i = icmp sgt i32 %nents, 0
  br i1 %cmp15.i, label %entry.for.body.i_crit_edge, label %entry.__iommu_unmap_sg.exit_crit_edge

entry.__iommu_unmap_sg.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %__iommu_unmap_sg.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.018.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %s.016.i = phi ptr [ %call7.i, %if.end.i.for.body.i_crit_edge ], [ %sg, %entry.for.body.i_crit_edge ]
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %s.016.i, i32 0, i32 4
  %0 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dma_length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %s.016.i, i32 0, i32 3
  %2 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_address.i, align 4
  tail call fastcc void @__iommu_remove_mapping(ptr noundef %dev, i32 noundef %3, i32 noundef %1) #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %inc.i = add nuw nsw i32 %i.018.i, 1
  %call7.i = tail call ptr @sg_next(ptr noundef %s.016.i) #14
  %exitcond.not.i = icmp eq i32 %inc.i, %nents
  br i1 %exitcond.not.i, label %if.end.i.__iommu_unmap_sg.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

if.end.i.__iommu_unmap_sg.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__iommu_unmap_sg.exit

__iommu_unmap_sg.exit:                            ; preds = %if.end.i.__iommu_unmap_sg.exit_crit_edge, %entry.__iommu_unmap_sg.exit_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #13 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind readnone }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !35, !37, !39, !40, !42, !44, !45, !46, !47, !49, !50, !51, !53, !55, !57, !58, !59, !60, !62, !64, !66, !68, !70, !72, !73, !75, !77, !79, !80, !81, !83, !85, !87, !89, !90, !91, !92, !94, !95, !96, !97, !99, !100, !101}
!llvm.named.register.sp = !{!103}
!llvm.module.flags = !{!104, !105, !106, !107, !108, !109, !110, !111}
!llvm.ident = !{!112}

!0 = !{ptr @arm_dma_ops, !1, !"arm_dma_ops", i1 false, i1 false}
!1 = !{!"../arch/arm/mm/dma-mapping.c", i32 196, i32 26}
!2 = !{ptr @__ksymtab_arm_dma_ops, !3, !"__ksymtab_arm_dma_ops", i1 false, i1 false}
!3 = !{!"../arch/arm/mm/dma-mapping.c", i32 215, i32 1}
!4 = !{ptr @arm_coherent_dma_ops, !5, !"arm_coherent_dma_ops", i1 false, i1 false}
!5 = !{!"../arch/arm/mm/dma-mapping.c", i32 225, i32 26}
!6 = !{ptr @__ksymtab_arm_coherent_dma_ops, !7, !"__ksymtab_arm_coherent_dma_ops", i1 false, i1 false}
!7 = !{!"../arch/arm/mm/dma-mapping.c", i32 238, i32 1}
!8 = !{ptr @__setup_early_coherent_pool, !9, !"__setup_early_coherent_pool", i1 false, i1 false}
!9 = !{!"../arch/arm/mm/dma-mapping.c", i32 328, i32 1}
!10 = !{ptr @__initcall__kmod_dma_mapping__249_382_atomic_pool_init2, !11, !"__initcall__kmod_dma_mapping__249_382_atomic_pool_init2", i1 false, i1 false}
!11 = !{!"../arch/arm/mm/dma-mapping.c", i32 382, i32 1}
!12 = !{ptr @arm_iommu_create_mapping.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../arch/arm/mm/dma-mapping.c", i32 2082, i32 2}
!14 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__ksymtab_arm_iommu_create_mapping, !16, !"__ksymtab_arm_iommu_create_mapping", i1 false, i1 false}
!16 = !{!"../arch/arm/mm/dma-mapping.c", i32 2099, i32 1}
!17 = !{ptr @__ksymtab_arm_iommu_release_mapping, !18, !"__ksymtab_arm_iommu_release_mapping", i1 false, i1 false}
!18 = !{!"../arch/arm/mm/dma-mapping.c", i32 2137, i32 1}
!19 = !{ptr @__ksymtab_arm_iommu_attach_device, !20, !"__ksymtab_arm_iommu_attach_device", i1 false, i1 false}
!20 = !{!"../arch/arm/mm/dma-mapping.c", i32 2180, i32 1}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../arch/arm/mm/dma-mapping.c", i32 2195, i32 3}
!23 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @arm_iommu_detach_device._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @arm_iommu_detach_device._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../arch/arm/mm/dma-mapping.c", i32 2204, i32 2}
!31 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @arm_iommu_detach_device.__UNIQUE_ID_ddebug254, !30, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!33 = !{ptr @__ksymtab_arm_iommu_detach_device, !34, !"__ksymtab_arm_iommu_detach_device", i1 false, i1 false}
!34 = !{!"../arch/arm/mm/dma-mapping.c", i32 2206, i32 1}
!35 = !{ptr @dma_mmu_remap, !36, !"dma_mmu_remap", i1 false, i1 false}
!36 = !{!"../arch/arm/mm/dma-mapping.c", i32 389, i32 40}
!37 = !{ptr @dma_mmu_remap_num, !38, !"dma_mmu_remap_num", i1 false, i1 false}
!38 = !{!"../arch/arm/mm/dma-mapping.c", i32 391, i32 12}
!39 = !{ptr @__setup_str_early_coherent_pool, !9, !"__setup_str_early_coherent_pool", i1 false, i1 false}
!40 = !{ptr @atomic_pool_size, !41, !"atomic_pool_size", i1 false, i1 false}
!41 = !{!"../arch/arm/mm/dma-mapping.c", i32 321, i32 15}
!42 = !{ptr @.str.8, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../arch/arm/mm/dma-mapping.c", i32 366, i32 3}
!44 = !{ptr @.str.9, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @atomic_pool_init._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @atomic_pool_init._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.11, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../arch/arm/mm/dma-mapping.c", i32 375, i32 2}
!49 = !{ptr @atomic_pool_init._entry.10, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @atomic_pool_init._entry_ptr.12, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @atomic_pool, !52, !"atomic_pool", i1 false, i1 false}
!52 = !{!"../arch/arm/mm/dma-mapping.c", i32 319, i32 25}
!53 = distinct !{null, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!55 = !{ptr @.str.14, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../arch/arm/mm/dma-mapping.c", i32 684, i32 3}
!57 = !{ptr @.str.15, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @__dma_alloc._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @__dma_alloc._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @cma_allocator, !61, !"cma_allocator", i1 false, i1 false}
!61 = !{!"../arch/arm/mm/dma-mapping.c", i32 620, i32 33}
!62 = !{ptr @simple_allocator, !63, !"simple_allocator", i1 false, i1 false}
!63 = !{!"../arch/arm/mm/dma-mapping.c", i32 600, i32 33}
!64 = !{ptr @remap_allocator, !65, !"remap_allocator", i1 false, i1 false}
!65 = !{!"../arch/arm/mm/dma-mapping.c", i32 657, i32 33}
!66 = !{ptr @pool_allocator, !67, !"pool_allocator", i1 false, i1 false}
!67 = !{!"../arch/arm/mm/dma-mapping.c", i32 636, i32 33}
!68 = !{ptr @.str.16, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../arch/arm/mm/dma-mapping.c", i32 490, i32 3}
!70 = !{ptr @.str.17, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../arch/arm/mm/dma-mapping.c", i32 75, i32 8}
!72 = !{ptr @arm_dma_bufs_lock, !71, !"arm_dma_bufs_lock", i1 false, i1 false}
!73 = !{ptr @arm_dma_bufs, !74, !"arm_dma_bufs", i1 false, i1 false}
!74 = !{!"../arch/arm/mm/dma-mapping.c", i32 74, i32 8}
!75 = !{ptr @.str.18, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../arch/arm/mm/dma-mapping.c", i32 818, i32 6}
!77 = !{ptr @.str.19, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../arch/arm/mm/dma-mapping.c", i32 2151, i32 2}
!79 = !{ptr @.str.20, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @__arm_iommu_attach_device.__UNIQUE_ID_ddebug253, !78, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!81 = !{ptr @iommu_ops, !82, !"iommu_ops", i1 false, i1 false}
!82 = !{!"../arch/arm/mm/dma-mapping.c", i32 1989, i32 33}
!83 = !{ptr @iommu_order_array, !84, !"iommu_order_array", i1 false, i1 false}
!84 = !{!"../arch/arm/mm/dma-mapping.c", i32 1197, i32 18}
!85 = !{ptr @.str.21, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../arch/arm/mm/dma-mapping.c", i32 1538, i32 3}
!87 = !{ptr @.str.22, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../arch/arm/mm/dma-mapping.c", i32 1501, i32 3}
!89 = !{ptr @.str.23, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @__arm_iommu_mmap_attrs._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @__arm_iommu_mmap_attrs._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.24, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../arch/arm/mm/dma-mapping.c", i32 2223, i32 3}
!94 = !{ptr @.str.25, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @arm_setup_iommu_dma_ops._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @arm_setup_iommu_dma_ops._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.27, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../arch/arm/mm/dma-mapping.c", i32 2229, i32 3}
!99 = !{ptr @arm_setup_iommu_dma_ops._entry.26, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @arm_setup_iommu_dma_ops._entry_ptr.28, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @iommu_coherent_ops, !102, !"iommu_coherent_ops", i1 false, i1 false}
!102 = !{!"../arch/arm/mm/dma-mapping.c", i32 2011, i32 33}
!103 = !{!"sp"}
!104 = !{i32 1, !"wchar_size", i32 2}
!105 = !{i32 1, !"min_enum_size", i32 4}
!106 = !{i32 8, !"branch-target-enforcement", i32 0}
!107 = !{i32 8, !"sign-return-address", i32 0}
!108 = !{i32 8, !"sign-return-address-all", i32 0}
!109 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!110 = !{i32 7, !"uwtable", i32 1}
!111 = !{i32 7, !"frame-pointer", i32 2}
!112 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!113 = !{!"branch_weights", i32 2000, i32 1}
!114 = !{i64 2153848454, i64 2153848946, i64 2153848491, i64 2153848547, i64 2153848581, i64 2153848605, i64 2153848646, i64 2153848667, i64 2153848695, i64 2153848729}
!115 = !{i64 2153850064, i64 2153850556, i64 2153850101, i64 2153850157, i64 2153850191, i64 2153850215, i64 2153850256, i64 2153850277, i64 2153850305, i64 2153850339}
!116 = !{i64 2153852012, i64 2153852504, i64 2153852049, i64 2153852105, i64 2153852139, i64 2153852163, i64 2153852204, i64 2153852225, i64 2153852253, i64 2153852287}
!117 = !{!"auto-init"}
!118 = !{i64 2149138128, i64 2149138151, i64 2149138183, i64 2149138215, i64 2149138253, i64 2149138283}
!119 = !{i64 2152532580, i64 2152532593}
!120 = !{i8 0, i8 2}
!121 = !{!"branch_weights", i32 1, i32 2000}
!122 = !{i64 2148490648}
!123 = !{i64 2148405088, i64 2148405120, i64 2148405149, i64 2148405183, i64 2148405214, i64 2148405237}
!124 = !{i64 2149366762}
!125 = !{i64 2148402623, i64 2148402655, i64 2148402684, i64 2148402718, i64 2148402749, i64 2148402772}
!126 = !{i64 2149014470, i64 2149014475, i64 2149014488, i64 2149014532, i64 2149014566, i64 2149014587}
!127 = !{i64 2154179528}
!128 = !{i64 2153026856}
!129 = !{i64 2153027063}
!130 = !{i64 2154182299}
!131 = distinct !{!131, !132}
!132 = !{!"llvm.loop.peeled.count", i32 1}
!133 = !{i32 0, i32 33}
!134 = !{i64 2154435614, i64 2154436105, i64 2154435651, i64 2154435707, i64 2154435741, i64 2154435765, i64 2154435806, i64 2154435827, i64 2154435855, i64 2154435889}
!135 = !{i64 2154437116, i64 2154437607, i64 2154437153, i64 2154437209, i64 2154437243, i64 2154437267, i64 2154437308, i64 2154437329, i64 2154437357, i64 2154437391}
