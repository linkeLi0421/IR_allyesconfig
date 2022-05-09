; ModuleID = '/llk/IR_all_yes/arch/arm/mm/init.c_pt.bc'
source_filename = "../arch/arm/mm/init.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+arm_dma_zone_size\22, \22a\22\09"
module asm "\09.weak\09__crc_arm_dma_zone_size\09\09\09\09"
module asm "\09.long\09__crc_arm_dma_zone_size\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_arm_dma_zone_size:\09\09\09\09\09"
module asm "\09.asciz \09\22arm_dma_zone_size\22\09\09\09\09\09"
module asm "__kstrtabns_arm_dma_zone_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pfn_valid\22, \22a\22\09"
module asm "\09.weak\09__crc_pfn_valid\09\09\09\09"
module asm "\09.long\09__crc_pfn_valid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pfn_valid:\09\09\09\09\09"
module asm "\09.asciz \09\22pfn_valid\22\09\09\09\09\09"
module asm "__kstrtabns_pfn_valid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.tagtable = type { i32, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.memblock = type { i8, i32, %struct.memblock_type, %struct.memblock_type }
%struct.memblock_type = type { i32, i32, i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.19 }
%struct.atomic_t = type { i32 }
%union.anon.19 = type { i32 }
%struct.section_perm = type { ptr, i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.73, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.0 }
%struct.llist_node = type { ptr }
%union.anon.0 = type { i32 }
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
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.51 }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.10 }
%union.anon.10 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.73 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.mm_struct = type { %struct.anon.3, [0 x i32] }
%struct.anon.3 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.cpu_tlb_fns = type { ptr, ptr, i32 }
%struct.tag = type { %struct.tag_header, %union.anon }
%struct.tag_header = type { i32, i32 }
%union.anon = type { %struct.tag_videolfb }
%struct.tag_videolfb = type { i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.machine_desc = type { i32, ptr, i32, ptr, i32, i32, i32, i32, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.page = type { i32, %union.anon.8, %union.anon.50, %struct.atomic_t, i32 }
%union.anon.8 = type { %struct.anon.9 }
%struct.anon.9 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.50 = type { %struct.atomic_t }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hlist_head = type { ptr }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i32, i32 }
%struct.pacct_struct = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@cr_alignment = external dso_local local_unnamed_addr global i32, align 4
@__tagtable_parse_tag_initrd = internal constant %struct.tagtable { i32 1413545989, ptr @parse_tag_initrd }, section ".taglist.init", align 4
@__tagtable_parse_tag_initrd2 = internal constant %struct.tagtable { i32 1413611525, ptr @parse_tag_initrd2 }, section ".taglist.init", align 4
@arm_dma_zone_size = dso_local global i32 0, section ".data..read_mostly", align 4
@__kstrtab_arm_dma_zone_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_arm_dma_zone_size = external dso_local constant [0 x i8], align 1
@__ksymtab_arm_dma_zone_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @arm_dma_zone_size to i32), ptr @__kstrtab_arm_dma_zone_size, ptr @__kstrtabns_arm_dma_zone_size }, section "___ksymtab+arm_dma_zone_size", align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@arm_dma_limit = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@arm_dma_pfn_limit = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@memblock = external dso_local global %struct.memblock, align 4
@__kstrtab_pfn_valid = external dso_local constant [0 x i8], align 1
@__kstrtabns_pfn_valid = external dso_local constant [0 x i8], align 1
@__ksymtab_pfn_valid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pfn_valid to i32), ptr @__kstrtab_pfn_valid, ptr @__kstrtabns_pfn_valid }, section "___ksymtab+pfn_valid", align 4
@arm_memblock_steal_permitted = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to steal %pa bytes at %pS\0A\00", [62 x i8] zeroinitializer }, align 32
@icache_size = external dso_local local_unnamed_addr global i32, align 4
@check_cpu_icache_size._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\016CPU%u: detected I-Cache line size mismatch, workaround enabled\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"check_cpu_icache_size\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"arch/arm/mm/init.c\00", [45 x i8] zeroinitializer }, align 32
@check_cpu_icache_size._entry_ptr = internal global ptr @check_cpu_icache_size._entry, section ".printk_index", align 4
@_stext = external dso_local global [0 x i8], align 1
@_end = external dso_local global [0 x i8], align 1
@min_low_pfn = external dso_local local_unnamed_addr global i32, align 4
@max_low_pfn = external dso_local local_unnamed_addr global i32, align 4
@max_pfn = external dso_local local_unnamed_addr global i32, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__init_begin = external dso_local global [0 x i8], align 1
@__init_end = external dso_local global [0 x i8], align 1
@__machine_arch_type = external dso_local local_unnamed_addr global i32, align 4
@initrd_start = external dso_local local_unnamed_addr global i32, align 4
@initrd_end = external dso_local local_unnamed_addr global i32, align 4
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"initrd\00", [25 x i8] zeroinitializer }, align 32
@parse_tag_initrd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.3, i32 56, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\014ATAG_INITRD is deprecated; please update your bootloader.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"parse_tag_initrd\00", [47 x i8] zeroinitializer }, align 32
@parse_tag_initrd._entry_ptr = internal global ptr @parse_tag_initrd._entry, section ".printk_index", align 4
@phys_initrd_start = external dso_local local_unnamed_addr global i32, align 4
@phys_initrd_size = external dso_local local_unnamed_addr global i32, align 4
@arm_initrd_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013INITRD: 0x%08llx+0x%08lx is not a memory region - disabling initrd\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"arm_initrd_init\00", [16 x i8] zeroinitializer }, align 32
@arm_initrd_init._entry_ptr = internal global ptr @arm_initrd_init._entry, section ".printk_index", align 4
@arm_initrd_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.3, i32 196, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\013INITRD: 0x%08llx+0x%08lx overlaps in-use memory region - disabling initrd\0A\00", [51 x i8] zeroinitializer }, align 32
@arm_initrd_init._entry_ptr.11 = internal global ptr @arm_initrd_init._entry.9, section ".printk_index", align 4
@max_mapnr = external dso_local local_unnamed_addr global i32, align 4
@.str.12 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"VM_BUG_ON_PAGE(1 && PageCompound(page))\00", [56 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_set = external dso_local global %struct.tracepoint, align 4
@ro_perms = internal global { [1 x %struct.section_perm], [40 x i8] } { [1 x %struct.section_perm] [%struct.section_perm { ptr @.str.17, i32 ptrtoint (ptr @_stext to i32), i32 ptrtoint (ptr @__init_begin to i32), i32 -33793, i32 33792, i32 1024 }], [40 x i8] zeroinitializer }, align 32
@init_task = external dso_local global %struct.task_struct, align 128
@update_sections_early.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@init_mm = external dso_local global %struct.mm_struct, align 8
@set_section_perms._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 453, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013BUG: %s section %lx-%lx not aligned to %lx\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"set_section_perms\00", [46 x i8] zeroinitializer }, align 32
@set_section_perms._entry_ptr = internal global ptr @set_section_perms._entry, section ".printk_index", align 4
@cpu_tlb = external dso_local local_unnamed_addr global %struct.cpu_tlb_fns, align 4
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"text/rodata RO\00", [17 x i8] zeroinitializer }, align 32
@nx_perms = internal global { [3 x %struct.section_perm], [56 x i8] } { [3 x %struct.section_perm] [%struct.section_perm { ptr @.str.18, i32 -1073741824, i32 ptrtoint (ptr @_stext to i32), i32 -17, i32 16, i32 0 }, %struct.section_perm { ptr @.str.19, i32 ptrtoint (ptr @__init_begin to i32), i32 ptrtoint (ptr @_sdata to i32), i32 -17, i32 16, i32 0 }, %struct.section_perm { ptr @.str.20, i32 ptrtoint (ptr @__start_rodata_section_aligned to i32), i32 ptrtoint (ptr @__init_begin to i32), i32 -17, i32 16, i32 0 }], [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pre-text NX\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"init NX\00", [24 x i8] zeroinitializer }, align 32
@_sdata = external dso_local global [0 x i8], align 1
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rodata NX\00", [22 x i8] zeroinitializer }, align 32
@__start_rodata_section_aligned = external dso_local global [0 x i8], align 1
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unused kernel image (initmem)\00", [34 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 21, i64 275]
@___asan_gen_.22 = private unnamed_addr constant [14 x i8] c"arm_dma_limit\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 93, i32 13 }
@___asan_gen_.25 = private unnamed_addr constant [18 x i8] c"arm_dma_pfn_limit\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 94, i32 15 }
@___asan_gen_.28 = private unnamed_addr constant [29 x i8] c"arm_memblock_steal_permitted\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 158, i32 9 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 217, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 531, i32 53 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 55, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 189, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 195, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 440, i32 1 }
@___asan_gen_.77 = private unnamed_addr constant [9 x i8] c"ro_perms\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 389, i32 28 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 478, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 451, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 392, i32 11 }
@___asan_gen_.95 = private unnamed_addr constant [9 x i8] c"nx_perms\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 362, i32 28 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 365, i32 11 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 373, i32 11 }
@___asan_gen_.105 = private constant [22 x i8] c"../arch/arm/mm/init.c\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 381, i32 11 }
@___asan_gen_.107 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.108 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 2500, i32 15 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__ksymtab_arm_dma_zone_size, ptr @__ksymtab_pfn_valid, ptr @__tagtable_parse_tag_initrd, ptr @__tagtable_parse_tag_initrd2, ptr @arm_initrd_init._entry, ptr @arm_initrd_init._entry.9, ptr @arm_initrd_init._entry_ptr, ptr @arm_initrd_init._entry_ptr.11, ptr @check_cpu_icache_size._entry, ptr @check_cpu_icache_size._entry_ptr, ptr @parse_tag_initrd._entry, ptr @parse_tag_initrd._entry_ptr, ptr @set_section_perms._entry, ptr @set_section_perms._entry_ptr, ptr @arm_dma_limit, ptr @arm_dma_pfn_limit, ptr @arm_memblock_steal_permitted, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @ro_perms, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @nx_perms, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_dma_limit to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_dma_pfn_limit to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_memblock_steal_permitted to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_cpu_icache_size._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_tag_initrd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_initrd_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_initrd_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ro_perms to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_section_perms._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nx_perms to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @__clear_cr(i32 noundef %mask) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cr_alignment to i32))
  %0 = load i32, ptr @cr_alignment, align 4
  %neg = xor i32 %mask, -1
  %and = and i32 %0, %neg
  store i32 %and, ptr @cr_alignment, align 4
  ret i32 %and
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @parse_tag_initrd(ptr nocapture noundef readonly %tag) #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #15
  %u = getelementptr inbounds %struct.tag, ptr %tag, i32 0, i32 1
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %u, align 4
  %call1 = tail call i32 @__virt_to_phys(i32 noundef %1) #12
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @phys_initrd_start to i32))
  store i32 %call1, ptr @phys_initrd_start, align 4
  %size = getelementptr inbounds %struct.tag, ptr %tag, i32 0, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @phys_initrd_size to i32))
  store i32 %3, ptr @phys_initrd_size, align 4
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @parse_tag_initrd2(ptr nocapture noundef readonly %tag) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.tag, ptr %tag, i32 0, i32 1
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %u, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @phys_initrd_start to i32))
  store i32 %1, ptr @phys_initrd_start, align 4
  %size = getelementptr inbounds %struct.tag, ptr %tag, i32 0, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @phys_initrd_size to i32))
  store i32 %3, ptr @phys_initrd_size, align 4
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @setup_dma_zone(ptr nocapture noundef readonly %mdesc) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_zone_size = getelementptr inbounds %struct.machine_desc, ptr %mdesc, i32 0, i32 5
  %0 = ptrtoint ptr %dma_zone_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dma_zone_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  store i32 %1, ptr @arm_dma_zone_size, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %2 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %shl = shl i32 %2, 12
  %add = add i32 %1, -1
  %sub = add i32 %add, %shl
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %storemerge = phi i32 [ %sub, %if.then ], [ -1, %entry.if.end_crit_edge ]
  store i32 %storemerge, ptr @arm_dma_limit, align 4
  %shr = lshr i32 %storemerge, 12
  store i32 %shr, ptr @arm_dma_pfn_limit, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pfn_valid(i32 noundef %pfn) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %pfn)
  %0 = icmp ult i32 %pfn, 1048576
  br i1 %0, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %shl = shl nuw i32 %pfn, 12
  %and = and i32 %shl, -8388608
  %call = tail call zeroext i1 @memblock_overlaps_region(ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), i32 noundef %and, i32 noundef 8388608) #12
  %. = zext i1 %call to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @memblock_overlaps_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @arm_memblock_steal(i32 noundef %size, i32 noundef %align) local_unnamed_addr #1 section ".init.text" align 64 {
entry:
  %size.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %size.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %size, ptr %size.addr, align 4
  %.b = load i1, ptr @arm_memblock_steal_permitted, align 1
  br i1 %.b, label %do.body4, label %do.end9, !prof !75

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/init.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 154, 0\0A.popsection", ""() #12, !srcloc !76
  unreachable

do.end9:                                          ; preds = %entry
  %call.i = tail call i32 @memblock_phys_alloc_range(i32 noundef %size, i32 noundef %align, i32 noundef 0, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool10.not = icmp eq i32 %call.i, 0
  br i1 %tobool10.not, label %if.then11, label %if.end12

if.then11:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #14
  %1 = tail call ptr @llvm.returnaddress(i32 0)
  call void @__asan_handle_no_return()
  call void (ptr, ...) @panic(ptr noundef nonnull @.str, ptr noundef nonnull %size.addr, ptr noundef %1) #16
  unreachable

if.end12:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %size.addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size.addr, align 4
  %call13 = tail call i32 @memblock_phys_free(i32 noundef %call.i, i32 noundef %3) #12
  %call14 = tail call i32 @memblock_remove(i32 noundef %call.i, i32 noundef %3) #12
  ret i32 %call.i
}

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_phys_free(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_remove(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @check_cpu_icache_size(i32 noundef %cpuid) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm "mrc p15, 0, $0, c0, c0, 1", "=r"() #17, !srcloc !77
  %and = and i32 %0, 15
  %shl = shl nuw nsw i32 4, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cpuid)
  %cmp.not = icmp eq i32 %cpuid, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @icache_size to i32))
  %1 = load i32, ptr @icache_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %shl)
  %cmp1.not = icmp eq i32 %1, %shl
  br i1 %cmp1.not, label %land.lhs.true.if.end_crit_edge, label %do.end

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %cpuid) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @icache_size to i32))
  %2 = load i32, ptr @icache_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %shl)
  %cmp2 = icmp ugt i32 %2, %shl
  br i1 %cmp2, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @icache_size to i32))
  store i32 %shl, ptr @icache_size, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @arm_memblock_init(ptr nocapture noundef readonly %mdesc) local_unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__virt_to_phys(i32 noundef ptrtoint (ptr @_stext to i32)) #12
  %call1 = tail call i32 @memblock_reserve(i32 noundef %call, i32 noundef sub (i32 ptrtoint (ptr @_end to i32), i32 ptrtoint (ptr @_stext to i32))) #12
  tail call fastcc void @arm_initrd_init() #18
  tail call void @arm_mm_memblock_reserve() #12
  %reserve = getelementptr inbounds %struct.machine_desc, ptr %mdesc, i32 0, i32 18
  %0 = ptrtoint ptr %reserve to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reserve, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %1() #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @early_init_fdt_scan_reserved_mem() #12
  %2 = load i32, ptr @arm_dma_limit, align 4
  tail call void @dma_contiguous_reserve(i32 noundef %2) #12
  store i1 true, ptr @arm_memblock_steal_permitted, align 1
  tail call void @memblock_dump_all() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_reserve(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @arm_initrd_init() unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @initrd_end to i32))
  store i32 0, ptr @initrd_end, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @initrd_start to i32))
  store i32 0, ptr @initrd_start, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @phys_initrd_size to i32))
  %0 = load i32, ptr @phys_initrd_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @phys_initrd_start to i32))
  %1 = load i32, ptr @phys_initrd_start, align 4
  %and = and i32 %1, -4096
  %sub = and i32 %1, 4095
  %add = add i32 %0, -1
  %sub1 = add i32 %add, %sub
  %or = or i32 %sub1, 4095
  %add2 = add i32 %or, 1
  %call = tail call zeroext i1 @memblock_is_region_memory(i32 noundef %and, i32 noundef %add2) #12
  br i1 %call, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i32 %and to i64
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %conv, i32 noundef %add2) #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call zeroext i1 @memblock_is_region_reserved(i32 noundef %and, i32 noundef %add2) #12
  br i1 %call6, label %do.end10, label %if.end14

do.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %conv12 = zext i32 %and to i64
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i64 noundef %conv12, i32 noundef %add2) #15
  br label %cleanup

if.end14:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %call15 = tail call i32 @memblock_reserve(i32 noundef %and, i32 noundef %add2) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @phys_initrd_start to i32))
  %2 = load i32, ptr @phys_initrd_start, align 4
  %3 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %2, i32 -2130706432, i32 8454144) #17, !srcloc !78
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @initrd_start to i32))
  store i32 %3, ptr @initrd_start, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @phys_initrd_size to i32))
  %4 = load i32, ptr @phys_initrd_size, align 4
  %add17 = add i32 %4, %3
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @initrd_end to i32))
  store i32 %add17, ptr @initrd_end, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %do.end10, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_mm_memblock_reserve() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @early_init_fdt_scan_reserved_mem() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_contiguous_reserve(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @memblock_dump_all() local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @bootmem_init() local_unnamed_addr #1 section ".init.text" align 64 {
entry:
  %max_zone_pfn.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @memblock_allow_resize() #12
  tail call fastcc void @find_limits() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @min_low_pfn to i32))
  %0 = load i32, ptr @min_low_pfn, align 4
  %shl = shl i32 %0, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @max_low_pfn to i32))
  %1 = load i32, ptr @max_low_pfn, align 4
  %shl1 = shl i32 %1, 12
  tail call void @early_memtest(i32 noundef %shl, i32 noundef %shl1) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @max_low_pfn to i32))
  %2 = load i32, ptr @max_low_pfn, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @max_pfn to i32))
  %3 = load i32, ptr @max_pfn, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %max_zone_pfn.i) #12
  %4 = getelementptr inbounds i8, ptr %max_zone_pfn.i, i32 12
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %4, align 4
  %6 = load i32, ptr @arm_dma_pfn_limit, align 4
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 %2) #12
  %8 = ptrtoint ptr %max_zone_pfn.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %max_zone_pfn.i, align 4
  %arrayidx1.i = getelementptr inbounds [4 x i32], ptr %max_zone_pfn.i, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %2, ptr %arrayidx1.i, align 4
  %arrayidx2.i = getelementptr inbounds [4 x i32], ptr %max_zone_pfn.i, i32 0, i32 2
  %10 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %3, ptr %arrayidx2.i, align 4
  call void @free_area_init(ptr noundef nonnull %max_zone_pfn.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %max_zone_pfn.i) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @memblock_allow_resize() local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @find_limits() unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @memblock_get_current_limit() #12
  %shr = lshr i32 %call, 12
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @max_low_pfn to i32))
  store i32 %shr, ptr @max_low_pfn, align 4
  %call1 = tail call i32 @memblock_start_of_DRAM() #12
  %sub = add i32 %call1, 4095
  %shr2 = lshr i32 %sub, 12
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @min_low_pfn to i32))
  store i32 %shr2, ptr @min_low_pfn, align 4
  %call3 = tail call i32 @memblock_end_of_DRAM() #12
  %shr4 = lshr i32 %call3, 12
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @max_pfn to i32))
  store i32 %shr4, ptr @max_pfn, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @early_memtest(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @mem_init() local_unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @max_pfn to i32))
  %0 = load i32, ptr @max_pfn, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %1 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub = sub i32 %0, %1
  %add.ptr.idx = mul i32 %sub, 36
  %sub.ptr.div = sdiv exact i32 %add.ptr.idx, 36
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @max_mapnr to i32))
  store i32 %sub.ptr.div, ptr @max_mapnr, align 4
  tail call void @memblock_free_all() #12
  tail call fastcc void @free_highpages() #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @memblock_free_all() local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_highpages() unnamed_addr #1 section ".init.text" align 64 {
entry:
  %range_start = alloca i32, align 4
  %range_end = alloca i32, align 4
  %i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @max_low_pfn to i32))
  %0 = load i32, ptr @max_low_pfn, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %range_start) #12
  %1 = ptrtoint ptr %range_start to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %range_start, align 4, !annotation !79
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %range_end) #12
  %2 = ptrtoint ptr %range_end to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %range_end, align 4, !annotation !79
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %i) #12
  %3 = ptrtoint ptr %i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %i, align 8
  call void @__next_mem_range(ptr noundef nonnull %i, i32 noundef -1, i32 noundef 0, ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3), ptr noundef nonnull %range_start, ptr noundef nonnull %range_end, ptr noundef null) #12
  %4 = ptrtoint ptr %i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %5)
  %cmp.not21 = icmp eq i64 %5, -1
  br i1 %cmp.not21, label %entry.for.end12_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end12

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %6 = ptrtoint ptr %range_end to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %range_end, align 4
  %shr1 = lshr i32 %7, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %shr1, i32 %0)
  %cmp2.not = icmp ugt i32 %shr1, %0
  br i1 %cmp2.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %for.body
  %8 = ptrtoint ptr %range_start to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %range_start, align 4
  %sub = add i32 %9, 4095
  %shr = lshr i32 %sub, 12
  %10 = call i32 @llvm.umax.i32(i32 %shr, i32 %0)
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %shr1)
  %cmp719 = icmp ult i32 %10, %shr1
  br i1 %cmp719, label %if.end.for.body8_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.for.body8_crit_edge:                       ; preds = %if.end
  br label %for.body8

for.body8:                                        ; preds = %for.body8.for.body8_crit_edge, %if.end.for.body8_crit_edge
  %start.120 = phi i32 [ %inc, %for.body8.for.body8_crit_edge ], [ %10, %if.end.for.body8_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %11 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %12 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub9 = sub i32 %start.120, %12
  %add.ptr = getelementptr %struct.page, ptr %11, i32 %sub9
  call fastcc void @free_reserved_page(ptr noundef %add.ptr)
  %inc = add nuw nsw i32 %start.120, 1
  %exitcond.not = icmp eq i32 %inc, %shr1
  br i1 %exitcond.not, label %for.body8.cleanup_crit_edge, label %for.body8.for.body8_crit_edge

for.body8.for.body8_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body8

for.body8.cleanup_crit_edge:                      ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.body8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  call void @__next_mem_range(ptr noundef nonnull %i, i32 noundef -1, i32 noundef 0, ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3), ptr noundef nonnull %range_start, ptr noundef nonnull %range_end, ptr noundef null) #12
  %13 = ptrtoint ptr %i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %i, align 8
  %cmp.not = icmp eq i64 %14, -1
  br i1 %cmp.not, label %cleanup.for.end12_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup.for.end12_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end12

for.end12:                                        ; preds = %cleanup.for.end12_crit_edge, %entry.for.end12_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %range_end) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %range_start) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mark_rodata_ro() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @stop_machine(ptr noundef nonnull @__mark_rodata_ro, ptr noundef null, ptr noundef null) #12
  tail call void @ptdump_check_wx() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stop_machine(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__mark_rodata_ro(ptr nocapture noundef readnone %unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @update_sections_early(ptr noundef nonnull @ro_perms, i32 noundef 1)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ptdump_check_wx() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @free_initmem() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @stop_machine(ptr noundef nonnull @__fix_kernmem_perms, ptr noundef null, ptr noundef null) #12
  br i1 icmp eq (i32 sub (i32 ptrtoint (ptr @__init_end to i32), i32 ptrtoint (ptr @__init_begin to i32)), i32 0), label %entry.poison_init_mem.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.poison_init_mem.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %poison_init_mem.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %p.04.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ @__init_begin, %entry.for.body.i_crit_edge ]
  %count.addr.03.i = phi i32 [ %sub.i, %for.body.i.for.body.i_crit_edge ], [ sub (i32 ptrtoint (ptr @__init_end to i32), i32 ptrtoint (ptr @__init_begin to i32)), %entry.for.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr i32, ptr %p.04.i, i32 1
  %0 = ptrtoint ptr %p.04.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -402792720, ptr %p.04.i, align 4
  %sub.i = add i32 %count.addr.03.i, -4
  %cmp.not.i = icmp eq i32 %sub.i, 0
  br i1 %cmp.not.i, label %for.body.i.poison_init_mem.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.poison_init_mem.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %poison_init_mem.exit

poison_init_mem.exit:                             ; preds = %for.body.i.poison_init_mem.exit_crit_edge, %entry.poison_init_mem.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__machine_arch_type to i32))
  %1 = load i32, ptr @__machine_arch_type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %if.then [
    i32 21, label %poison_init_mem.exit.if.end_crit_edge
    i32 275, label %poison_init_mem.exit.if.end_crit_edge3
  ]

poison_init_mem.exit.if.end_crit_edge3:           ; preds = %poison_init_mem.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

poison_init_mem.exit.if.end_crit_edge:            ; preds = %poison_init_mem.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %poison_init_mem.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call.i2 = tail call i32 @free_reserved_area(ptr noundef nonnull @__init_begin, ptr noundef nonnull @__init_end, i32 noundef -1, ptr noundef nonnull @.str.21) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %poison_init_mem.exit.if.end_crit_edge, %poison_init_mem.exit.if.end_crit_edge3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @free_initrd_mem(i32 noundef %start, i32 noundef %end) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @initrd_start to i32))
  %0 = load i32, ptr @initrd_start, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %start)
  %cmp = icmp eq i32 %0, %start
  %and = and i32 %start, -4096
  %spec.select = select i1 %cmp, i32 %and, i32 %start
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @initrd_end to i32))
  %1 = load i32, ptr @initrd_end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %end)
  %cmp1 = icmp eq i32 %1, %end
  %sub = add i32 %end, -1
  %or = or i32 %sub, 4095
  %add = add i32 %or, 1
  %end.addr.0 = select i1 %cmp1, i32 %add, i32 %end
  %2 = inttoptr i32 %spec.select to ptr
  %add4 = add i32 %end.addr.0, 4095
  %and5 = and i32 %add4, -4096
  %sub6 = sub i32 %and5, %spec.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub6)
  %cmp.not2.i = icmp eq i32 %sub6, 0
  br i1 %cmp.not2.i, label %entry.poison_init_mem.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.poison_init_mem.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %poison_init_mem.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %p.04.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %2, %entry.for.body.i_crit_edge ]
  %count.addr.03.i = phi i32 [ %sub.i, %for.body.i.for.body.i_crit_edge ], [ %sub6, %entry.for.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr i32, ptr %p.04.i, i32 1
  %3 = ptrtoint ptr %p.04.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -402792720, ptr %p.04.i, align 4
  %sub.i = add i32 %count.addr.03.i, -4
  %cmp.not.i = icmp eq i32 %sub.i, 0
  br i1 %cmp.not.i, label %for.body.i.poison_init_mem.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.poison_init_mem.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %poison_init_mem.exit

poison_init_mem.exit:                             ; preds = %for.body.i.poison_init_mem.exit_crit_edge, %entry.poison_init_mem.exit_crit_edge
  %4 = inttoptr i32 %end.addr.0 to ptr
  %call = tail call i32 @free_reserved_area(ptr noundef %2, ptr noundef %4, i32 noundef -1, ptr noundef nonnull @.str.4) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @free_reserved_area(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_phys_alloc_range(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @memblock_is_region_memory(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @memblock_is_region_reserved(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_get_current_limit() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_start_of_DRAM() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_end_of_DRAM() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_area_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__next_mem_range(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_reserved_page(ptr noundef %page) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %page, align 4
  %2 = and i32 %1, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i, label %PageCompound.exit.i, label %entry.if.then.i_crit_edge

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

PageCompound.exit.i:                              ; preds = %entry
  %3 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %3, align 4
  %and.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %PageCompound.exit.i.if.then.i_crit_edge, !prof !80

PageCompound.exit.i.if.then.i_crit_edge:          ; preds = %PageCompound.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.i:                                        ; preds = %PageCompound.exit.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.12) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 440, 0\0A.popsection", ""() #12, !srcloc !81
  unreachable

do.body7.i:                                       ; preds = %PageCompound.exit.i
  %6 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp.i.not.i = icmp eq i32 %7, -1
  br i1 %cmp.i.not.i, label %if.then16.i, label %ClearPageReserved.exit, !prof !75

if.then16.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.13) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 440, 0\0A.popsection", ""() #12, !srcloc !82
  unreachable

ClearPageReserved.exit:                           ; preds = %do.body7.i
  tail call void @_clear_bit(i32 noundef 12, ptr noundef %page) #12
  %_refcount.i.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i, i32 noundef 4) #12
  %8 = ptrtoint ptr %_refcount.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 1, ptr %_refcount.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_set, i32 0, i32 1), ptr blockaddress(@free_reserved_page, %if.then.i.i)) #12
          to label %init_page_count.exit [label %if.then.i.i], !srcloc !83

if.then.i.i:                                      ; preds = %ClearPageReserved.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__page_ref_set(ptr noundef %page, i32 noundef 1) #12
  br label %init_page_count.exit

init_page_count.exit:                             ; preds = %if.then.i.i, %ClearPageReserved.exit
  tail call void @__free_pages(ptr noundef %page, i32 noundef 0) #12
  tail call void @adjust_managed_page_count(ptr noundef %page, i32 noundef 1) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @adjust_managed_page_count(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_set(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @update_sections_early(ptr nocapture noundef readonly %perms, i32 noundef %n) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 50) to i32))
  %0 = load volatile ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 50), align 16
  %add.ptr55 = getelementptr i8, ptr %0, i32 -1136
  %cmp.not56 = icmp eq ptr %add.ptr55, @init_task
  br i1 %cmp.not56, label %entry.for.end38_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end38_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end38

for.body:                                         ; preds = %for.cond.backedge.for.body_crit_edge, %entry.for.body_crit_edge
  %1 = phi ptr [ %5, %for.cond.backedge.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %flags = getelementptr i8, ptr %1, i32 -1124
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body2, label %for.body.for.cond.backedge_crit_edge

for.body.for.cond.backedge_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %for.inc.for.cond.backedge_crit_edge, %do.end11.for.cond.backedge_crit_edge, %for.body.for.cond.backedge_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %1, align 16
  %add.ptr = getelementptr i8, ptr %5, i32 -1136
  %cmp.not = icmp eq ptr %add.ptr, @init_task
  br i1 %cmp.not, label %for.cond.backedge.for.end38_crit_edge, label %for.cond.backedge.for.body_crit_edge

for.cond.backedge.for.body_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.cond.backedge.for.end38_crit_edge:            ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end38

do.body2:                                         ; preds = %for.body
  %call = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %land.lhs.true, label %do.body2.do.end11_crit_edge

do.body2.do.end11_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end11

land.lhs.true:                                    ; preds = %do.body2
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end11_crit_edge, label %land.lhs.true6

land.lhs.true.do.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end11

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b50 = load i1, ptr @update_sections_early.__warned, align 1
  br i1 %.b50, label %land.lhs.true6.do.end11_crit_edge, label %if.then8

land.lhs.true6.do.end11_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end11

if.then8:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @update_sections_early.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 478, ptr noundef nonnull @.str.14) #12
  br label %do.end11

do.end11:                                         ; preds = %if.then8, %land.lhs.true6.do.end11_crit_edge, %land.lhs.true.do.end11_crit_edge, %do.body2.do.end11_crit_edge
  %signal = getelementptr i8, ptr %1, i32 544
  %6 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %signal, align 16
  %thread_head = getelementptr inbounds %struct.signal_struct, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %thread_head to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn51 = load volatile ptr, ptr %thread_head, align 4
  %cmp23.not53 = icmp eq ptr %.pn51, %thread_head
  br i1 %cmp23.not53, label %do.end11.for.cond.backedge_crit_edge, label %do.end11.for.body24_crit_edge

do.end11.for.body24_crit_edge:                    ; preds = %do.end11
  br label %for.body24

do.end11.for.cond.backedge_crit_edge:             ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.backedge

for.body24:                                       ; preds = %for.inc.for.body24_crit_edge, %do.end11.for.body24_crit_edge
  %.pn54 = phi ptr [ %.pn, %for.inc.for.body24_crit_edge ], [ %.pn51, %do.end11.for.body24_crit_edge ]
  %mm = getelementptr i8, ptr %.pn54, i32 -228
  %9 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mm, align 8
  %tobool25.not = icmp eq ptr %10, null
  br i1 %tobool25.not, label %for.body24.for.inc_crit_edge, label %if.then26

for.body24.for.inc_crit_edge:                     ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then26:                                        ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @set_section_perms(ptr noundef %perms, i32 noundef %n, ptr noundef nonnull %10)
  br label %for.inc

for.inc:                                          ; preds = %if.then26, %for.body24.for.inc_crit_edge
  %11 = ptrtoint ptr %.pn54 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load volatile ptr, ptr %.pn54, align 4
  %12 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %signal, align 16
  %thread_head22 = getelementptr inbounds %struct.signal_struct, ptr %13, i32 0, i32 3
  %cmp23.not = icmp eq ptr %.pn, %thread_head22
  br i1 %cmp23.not, label %for.inc.for.cond.backedge_crit_edge, label %for.inc.for.body24_crit_edge

for.inc.for.body24_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body24

for.inc.for.cond.backedge_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.backedge

for.end38:                                        ; preds = %for.cond.backedge.for.end38_crit_edge, %entry.for.end38_crit_edge
  %14 = tail call i32 @llvm.read_register.i32(metadata !65) #12
  %and.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task, align 8
  %active_mm = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 54
  %18 = ptrtoint ptr %active_mm to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %active_mm, align 4
  tail call fastcc void @set_section_perms(ptr noundef %perms, i32 noundef %n, ptr noundef %19)
  tail call fastcc void @set_section_perms(ptr noundef %perms, i32 noundef %n, ptr noundef nonnull @init_mm)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_section_perms(ptr nocapture noundef readonly %perms, i32 noundef %n, ptr nocapture noundef readonly %mm) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @cpu_architecture() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 8
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %arch_has_strict_perms.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

arch_has_strict_perms.exit:                       ; preds = %entry
  %0 = tail call i32 asm "mrc p15, 0, $0, c1, c0, 0\09@ get CR", "=r,~{cc}"() #17, !srcloc !84
  %and.i = and i32 %0, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %cmp5 = icmp ne i32 %n, 0
  %or.cond = and i1 %tobool.i.not, %cmp5
  br i1 %or.cond, label %for.body.lr.ph, label %arch_has_strict_perms.exit.cleanup_crit_edge

arch_has_strict_perms.exit.cleanup_crit_edge:     ; preds = %arch_has_strict_perms.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %arch_has_strict_perms.exit
  %pgd.i = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc23.for.body_crit_edge, %for.body.lr.ph
  %i.06 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc23.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.section_perm, ptr %perms, i32 %i.06
  %start = getelementptr %struct.section_perm, ptr %perms, i32 %i.06, i32 1
  %1 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %start, align 4
  %and = and i32 %2, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp1 = icmp eq i32 %and, 0
  br i1 %cmp1, label %lor.lhs.false, label %for.body.do.end_crit_edge

for.body.do.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

lor.lhs.false:                                    ; preds = %for.body
  %end = getelementptr %struct.section_perm, ptr %perms, i32 %i.06, i32 2
  %3 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %end, align 4
  %and3 = and i32 %4, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %cmp4 = icmp eq i32 %and3, 0
  br i1 %cmp4, label %for.cond15.preheader, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

for.cond15.preheader:                             ; preds = %lor.lhs.false
  %5 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %6)
  %cmp183 = icmp ult i32 %2, %6
  br i1 %cmp183, label %for.body19.lr.ph, label %for.cond15.preheader.for.inc23_crit_edge

for.cond15.preheader.for.inc23_crit_edge:         ; preds = %for.cond15.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc23

for.body19.lr.ph:                                 ; preds = %for.cond15.preheader
  %mask = getelementptr %struct.section_perm, ptr %perms, i32 %i.06, i32 3
  %prot = getelementptr %struct.section_perm, ptr %perms, i32 %i.06, i32 4
  br label %for.body19

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %for.body.do.end_crit_edge
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %end10 = getelementptr %struct.section_perm, ptr %perms, i32 %i.06, i32 2
  %9 = ptrtoint ptr %end10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %end10, align 4
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %8, i32 noundef %2, i32 noundef %10, i32 noundef 1048576) #15
  br label %for.inc23

for.body19:                                       ; preds = %for.body19.for.body19_crit_edge, %for.body19.lr.ph
  %addr.04 = phi i32 [ %2, %for.body19.lr.ph ], [ %add.i, %for.body19.for.body19_crit_edge ]
  %11 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mask, align 4
  %13 = ptrtoint ptr %prot to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %prot, align 4
  %15 = ptrtoint ptr %pgd.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pgd.i, align 4
  %shr.i.i = lshr i32 %addr.04, 21
  %add.ptr.i.i = getelementptr [2 x i32], ptr %16, i32 %shr.i.i
  %and.i1 = lshr i32 %addr.04, 20
  %and.lobit.i = and i32 %and.i1, 1
  %add.ptr.i.sink22.i = getelementptr i32, ptr %add.ptr.i.i, i32 %and.lobit.i
  %17 = ptrtoint ptr %add.ptr.i.sink22.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.i.sink22.i, align 4
  %and7.i = and i32 %18, %12
  %or8.i = or i32 %and7.i, %14
  store i32 %or8.i, ptr %add.ptr.i.sink22.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %19 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c7, c10, 1\09@ flush_pmd", "r,r,Ir,~{cc}"(ptr %add.ptr.i.i, i32 %19, i32 1073741824) #12, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !86
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 1), align 4
  %add.i = add i32 %addr.04, 1048576
  tail call void %20(i32 noundef %addr.04, i32 noundef %add.i) #12
  %21 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %end, align 4
  %cmp18 = icmp ult i32 %add.i, %22
  br i1 %cmp18, label %for.body19.for.body19_crit_edge, label %for.body19.for.inc23_crit_edge

for.body19.for.inc23_crit_edge:                   ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc23

for.body19.for.body19_crit_edge:                  ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body19

for.inc23:                                        ; preds = %for.body19.for.inc23_crit_edge, %do.end, %for.cond15.preheader.for.inc23_crit_edge
  %inc = add nuw i32 %i.06, 1
  %exitcond.not = icmp eq i32 %inc, %n
  br i1 %exitcond.not, label %for.inc23.cleanup_crit_edge, label %for.inc23.for.body_crit_edge

for.inc23.for.body_crit_edge:                     ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc23.cleanup_crit_edge:                      ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc23.cleanup_crit_edge, %arch_has_strict_perms.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpu_architecture() local_unnamed_addr #9

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__fix_kernmem_perms(ptr nocapture noundef readnone %unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @update_sections_early(ptr noundef nonnull @nx_perms, i32 noundef 3)
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind readonly }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { cold noreturn nounwind }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }
attributes #19 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !18, !20, !22, !24, !26, !27, !28, !29, !31, !33, !34, !35, !36, !38, !39, !40, !42, !43, !45, !46, !48, !49, !50, !51, !53, !55, !57, !59, !61, !63}
!llvm.named.register.sp = !{!65}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @__tagtable_parse_tag_initrd, !1, !"__tagtable_parse_tag_initrd", i1 false, i1 false}
!1 = !{!"../arch/arm/mm/init.c", i32 62, i32 1}
!2 = !{ptr @__tagtable_parse_tag_initrd2, !3, !"__tagtable_parse_tag_initrd2", i1 false, i1 false}
!3 = !{!"../arch/arm/mm/init.c", i32 71, i32 1}
!4 = !{ptr @__ksymtab_arm_dma_zone_size, !5, !"__ksymtab_arm_dma_zone_size", i1 false, i1 false}
!5 = !{!"../arch/arm/mm/init.c", i32 85, i32 1}
!6 = !{ptr @__ksymtab_pfn_valid, !7, !"__ksymtab_pfn_valid", i1 false, i1 false}
!7 = !{!"../arch/arm/mm/init.c", i32 145, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../arch/arm/mm/init.c", i32 158, i32 9}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../arch/arm/mm/init.c", i32 217, i32 3}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @check_cpu_icache_size._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @check_cpu_icache_size._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../arch/arm/mm/init.c", i32 531, i32 53}
!18 = !{ptr @arm_dma_zone_size, !19, !"arm_dma_zone_size", i1 false, i1 false}
!19 = !{!"../arch/arm/mm/init.c", i32 84, i32 13}
!20 = !{ptr @arm_dma_limit, !21, !"arm_dma_limit", i1 false, i1 false}
!21 = !{!"../arch/arm/mm/init.c", i32 93, i32 13}
!22 = !{ptr @arm_dma_pfn_limit, !23, !"arm_dma_pfn_limit", i1 false, i1 false}
!23 = !{!"../arch/arm/mm/init.c", i32 94, i32 15}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../arch/arm/mm/init.c", i32 55, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @parse_tag_initrd._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @parse_tag_initrd._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = distinct !{null, !30, !"arm_memblock_steal_permitted", i1 false, i1 false}
!30 = !{!"../arch/arm/mm/init.c", i32 148, i32 13}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../arch/arm/mm/init.c", i32 189, i32 3}
!33 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @arm_initrd_init._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @arm_initrd_init._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../arch/arm/mm/init.c", i32 195, i32 3}
!38 = !{ptr @arm_initrd_init._entry.9, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @arm_initrd_init._entry_ptr.11, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../include/linux/page-flags.h", i32 440, i32 1}
!42 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!43 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!44 = !{!"../arch/arm/mm/init.c", i32 478, i32 3}
!45 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../arch/arm/mm/init.c", i32 451, i32 4}
!48 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @set_section_perms._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @set_section_perms._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../arch/arm/mm/init.c", i32 392, i32 11}
!53 = !{ptr @ro_perms, !54, !"ro_perms", i1 false, i1 false}
!54 = !{!"../arch/arm/mm/init.c", i32 389, i32 28}
!55 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../arch/arm/mm/init.c", i32 365, i32 11}
!57 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../arch/arm/mm/init.c", i32 373, i32 11}
!59 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../arch/arm/mm/init.c", i32 381, i32 11}
!61 = !{ptr @nx_perms, !62, !"nx_perms", i1 false, i1 false}
!62 = !{!"../arch/arm/mm/init.c", i32 362, i32 28}
!63 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../include/linux/mm.h", i32 2500, i32 15}
!65 = !{!"sp"}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!75 = !{!"branch_weights", i32 1, i32 2000}
!76 = !{i64 2155288767, i64 2155289250, i64 2155288804, i64 2155288860, i64 2155288894, i64 2155288918, i64 2155288959, i64 2155288980, i64 2155289008, i64 2155289042}
!77 = !{i64 5320}
!78 = !{i64 2148956995, i64 2148957018, i64 2148957050, i64 2148957082, i64 2148957120, i64 2148957150}
!79 = !{!"auto-init"}
!80 = !{!"branch_weights", i32 2000, i32 1}
!81 = !{i64 2150533483, i64 2150533656, i64 2150533671, i64 2150533723, i64 2150533782, i64 2150533806, i64 2150533847, i64 2150533868, i64 2150533896, i64 2150533928}
!82 = !{i64 2150534254, i64 2150534427, i64 2150534442, i64 2150534494, i64 2150534553, i64 2150534577, i64 2150534618, i64 2150534639, i64 2150534667, i64 2150534699}
!83 = !{i64 2148702804, i64 2148702809, i64 2148702822, i64 2148702866, i64 2148702900, i64 2148702921}
!84 = !{i64 7500671}
!85 = !{i64 2153222078, i64 2153222091}
!86 = !{i64 2153228244}
