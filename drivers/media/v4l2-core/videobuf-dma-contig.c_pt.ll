; ModuleID = '/llk/IR_all_yes/drivers/media/v4l2-core/videobuf-dma-contig.c_pt.bc'
source_filename = "../drivers/media/v4l2-core/videobuf-dma-contig.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+videobuf_queue_dma_contig_init\22, \22a\22\09"
module asm "\09.weak\09__crc_videobuf_queue_dma_contig_init\09\09\09\09"
module asm "\09.long\09__crc_videobuf_queue_dma_contig_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_videobuf_queue_dma_contig_init:\09\09\09\09\09"
module asm "\09.asciz \09\22videobuf_queue_dma_contig_init\22\09\09\09\09\09"
module asm "__kstrtabns_videobuf_queue_dma_contig_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+videobuf_to_dma_contig\22, \22a\22\09"
module asm "\09.weak\09__crc_videobuf_to_dma_contig\09\09\09\09"
module asm "\09.long\09__crc_videobuf_to_dma_contig\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_videobuf_to_dma_contig:\09\09\09\09\09"
module asm "\09.asciz \09\22videobuf_to_dma_contig\22\09\09\09\09\09"
module asm "__kstrtabns_videobuf_to_dma_contig:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+videobuf_dma_contig_free\22, \22a\22\09"
module asm "\09.weak\09__crc_videobuf_dma_contig_free\09\09\09\09"
module asm "\09.long\09__crc_videobuf_dma_contig_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_videobuf_dma_contig_free:\09\09\09\09\09"
module asm "\09.asciz \09\22videobuf_dma_contig_free\22\09\09\09\09\09"
module asm "__kstrtabns_videobuf_dma_contig_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.videobuf_qtype_ops = type { i32, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.66 }
%union.anon.66 = type { i32 }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.videobuf_buffer = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.wait_queue_head, i32, i64, i32, i32, i32, i32, ptr, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.videobuf_dma_contig_memory = type { i32, ptr, i32, i32 }
%struct.videobuf_queue = type { %struct.mutex, ptr, ptr, ptr, %struct.wait_queue_head, i32, i32, i32, i32, [32 x ptr], ptr, ptr, i8, %struct.list_head, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.videobuf_mapping = type { i32, ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.53 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.anon.10 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }

@qops = internal global { %struct.videobuf_qtype_ops, [40 x i8] } { %struct.videobuf_qtype_ops { i32 304484355, ptr @__videobuf_alloc, ptr @__videobuf_to_vaddr, ptr @__videobuf_iolock, ptr null, ptr @__videobuf_mmap_mapper }, [40 x i8] zeroinitializer }, align 32
@__kstrtab_videobuf_queue_dma_contig_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_videobuf_queue_dma_contig_init = external dso_local constant [0 x i8], align 1
@__ksymtab_videobuf_queue_dma_contig_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @videobuf_queue_dma_contig_init to i32), ptr @__kstrtab_videobuf_queue_dma_contig_init, ptr @__kstrtabns_videobuf_queue_dma_contig_init }, section "___ksymtab_gpl+videobuf_queue_dma_contig_init", align 4
@videobuf_to_dma_contig._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 367, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013magic mismatch: %x expected %x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"videobuf_to_dma_contig\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/media/v4l2-core/videobuf-dma-contig.c\00", [50 x i8] zeroinitializer }, align 32
@videobuf_to_dma_contig._entry_ptr = internal global ptr @videobuf_to_dma_contig._entry, section ".printk_index", align 4
@__kstrtab_videobuf_to_dma_contig = external dso_local constant [0 x i8], align 1
@__kstrtabns_videobuf_to_dma_contig = external dso_local constant [0 x i8], align 1
@__ksymtab_videobuf_to_dma_contig = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @videobuf_to_dma_contig to i32), ptr @__kstrtab_videobuf_to_dma_contig, ptr @__kstrtabns_videobuf_to_dma_contig }, section "___ksymtab_gpl+videobuf_to_dma_contig", align 4
@videobuf_dma_contig_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.3, ptr @.str.2, i32 390, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"videobuf_dma_contig_free\00", [39 x i8] zeroinitializer }, align 32
@videobuf_dma_contig_free._entry_ptr = internal global ptr @videobuf_dma_contig_free._entry, section ".printk_index", align 4
@__kstrtab_videobuf_dma_contig_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_videobuf_dma_contig_free = external dso_local constant [0 x i8], align 1
@__ksymtab_videobuf_dma_contig_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @videobuf_dma_contig_free to i32), ptr @__kstrtab_videobuf_dma_contig_free, ptr @__kstrtabns_videobuf_dma_contig_free }, section "___ksymtab_gpl+videobuf_dma_contig_free", align 4
@__UNIQUE_ID_description254 = internal constant [87 x i8] c"videobuf_dma_contig.description=helper module to manage video4linux dma contig buffers\00", section ".modinfo", align 1
@__UNIQUE_ID_author255 = internal constant [39 x i8] c"videobuf_dma_contig.author=Magnus Damm\00", section ".modinfo", align 1
@__UNIQUE_ID_file256 = internal constant [69 x i8] c"videobuf_dma_contig.file=drivers/media/v4l2-core/videobuf-dma-contig\00", section ".modinfo", align 1
@__UNIQUE_ID_license257 = internal constant [32 x i8] c"videobuf_dma_contig.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__videobuf_to_vaddr._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.4, ptr @.str.2, i32 229, ptr null, ptr null }, align 1
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__videobuf_to_vaddr\00", [44 x i8] zeroinitializer }, align 32
@__videobuf_to_vaddr._entry_ptr = internal global ptr @__videobuf_to_vaddr._entry, section ".printk_index", align 4
@__videobuf_iolock._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.5, ptr @.str.2, i32 241, ptr null, ptr null }, align 1
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__videobuf_iolock\00", [46 x i8] zeroinitializer }, align 32
@__videobuf_iolock._entry_ptr = internal global ptr @__videobuf_iolock._entry, section ".printk_index", align 4
@__videobuf_iolock.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.5, ptr @.str.2, ptr @.str.7, i8 0, i8 61, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"videobuf_dma_contig\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s memory method MMAP\0A\00", [41 x i8] zeroinitializer }, align 32
@__videobuf_iolock._entry.8 = internal constant %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str.2, i32 249, ptr @.str.10, ptr @.str.11 }, align 1
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"memory is not allocated/mmapped.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@__videobuf_iolock._entry_ptr.12 = internal global ptr @__videobuf_iolock._entry.8, section ".printk_index", align 4
@__videobuf_iolock.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.5, ptr @.str.2, ptr @.str.13, i8 0, i8 63, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s memory method USERPTR\0A\00", [38 x i8] zeroinitializer }, align 32
@__videobuf_iolock.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.5, ptr @.str.2, ptr @.str.14, i8 0, i8 66, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s memory method OVERLAY/unknown\0A\00", [62 x i8] zeroinitializer }, align 32
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@__videobuf_dc_alloc._entry = internal constant %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 46, ptr @.str.10, ptr @.str.11 }, align 1
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"memory alloc size %ld failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__videobuf_dc_alloc\00", [44 x i8] zeroinitializer }, align 32
@__videobuf_dc_alloc._entry_ptr = internal global ptr @__videobuf_dc_alloc._entry, section ".printk_index", align 4
@__videobuf_dc_alloc.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 12, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"dma mapped data is at %p (%ld)\0A\00", [32 x i8] zeroinitializer }, align 32
@__videobuf_mmap_mapper.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"__videobuf_mmap_mapper\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@__videobuf_mmap_mapper._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.18, ptr @.str.2, i32 296, ptr null, ptr null }, align 1
@__videobuf_mmap_mapper._entry_ptr = internal global ptr @__videobuf_mmap_mapper._entry, section ".printk_index", align 4
@__videobuf_mmap_mapper._entry.20 = internal constant %struct.pi_entry { ptr @.str.21, ptr @.str.18, ptr @.str.2, i32 316, ptr @.str.10, ptr @.str.11 }, align 1
@.str.21 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"mmap: remap failed with error %d. \00", [61 x i8] zeroinitializer }, align 32
@__videobuf_mmap_mapper._entry_ptr.22 = internal global ptr @__videobuf_mmap_mapper._entry.20, section ".printk_index", align 4
@videobuf_vm_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } { %struct.vm_operations_struct { ptr @videobuf_vm_open, ptr @videobuf_vm_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@__videobuf_mmap_mapper.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.18, ptr @.str.2, ptr @.str.23, i8 0, i8 82, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"mmap %p: q=%p %08lx-%08lx (%lx) pgoff %08lx buf %d\0A\00", [44 x i8] zeroinitializer }, align 32
@videobuf_vm_close.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 0, i8 20, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"videobuf_vm_close\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"vm_close %p [count=%u,vma=%08lx-%08lx]\0A\00", [56 x i8] zeroinitializer }, align 32
@videobuf_vm_close.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.24, ptr @.str.2, ptr @.str.26, i8 0, i8 21, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"munmap %p q=%p\0A\00", [16 x i8] zeroinitializer }, align 32
@videobuf_vm_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.24, ptr @.str.2, i32 108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@videobuf_vm_close._entry_ptr = internal global ptr @videobuf_vm_close._entry, section ".printk_index", align 4
@videobuf_vm_close.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.24, ptr @.str.2, ptr @.str.27, i8 0, i8 28, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"buf[%d] freeing %p\0A\00", [44 x i8] zeroinitializer }, align 32
@videobuf_vm_open.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 0, i8 17, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"videobuf_vm_open\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"vm_open %p [count=%u,vma=%08lx-%08lx]\0A\00", [57 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.30 = private unnamed_addr constant [5 x i8] c"qops\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 339, i32 34 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 367, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 390, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 229, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 241, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 245, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 249, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 254, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 267, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 46, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 50, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 282, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 315, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant [16 x i8] c"videobuf_vm_ops\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 130, i32 42 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 326, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 79, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 86, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 108, i32 5 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 113, i32 5 }
@___asan_gen_.120 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.121 = private constant [49 x i8] c"../drivers/media/v4l2-core/videobuf-dma-contig.c\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 67, i32 2 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @__UNIQUE_ID_author255, ptr @__UNIQUE_ID_description254, ptr @__UNIQUE_ID_file256, ptr @__UNIQUE_ID_license257, ptr @__ksymtab_videobuf_dma_contig_free, ptr @__ksymtab_videobuf_queue_dma_contig_init, ptr @__ksymtab_videobuf_to_dma_contig, ptr @__videobuf_dc_alloc._entry, ptr @__videobuf_dc_alloc._entry_ptr, ptr @__videobuf_iolock._entry, ptr @__videobuf_iolock._entry.8, ptr @__videobuf_iolock._entry_ptr, ptr @__videobuf_iolock._entry_ptr.12, ptr @__videobuf_mmap_mapper._entry, ptr @__videobuf_mmap_mapper._entry.20, ptr @__videobuf_mmap_mapper._entry_ptr, ptr @__videobuf_mmap_mapper._entry_ptr.22, ptr @__videobuf_to_vaddr._entry, ptr @__videobuf_to_vaddr._entry_ptr, ptr @videobuf_dma_contig_free._entry, ptr @videobuf_dma_contig_free._entry_ptr, ptr @videobuf_to_dma_contig._entry, ptr @videobuf_to_dma_contig._entry_ptr, ptr @videobuf_vm_close._entry, ptr @videobuf_vm_close._entry_ptr, ptr @qops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @videobuf_vm_ops, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videobuf_to_dma_contig._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videobuf_dma_contig_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videobuf_vm_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videobuf_vm_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @videobuf_queue_dma_contig_init(ptr noundef %q, ptr noundef %ops, ptr noundef %dev, ptr noundef %irqlock, i32 noundef %type, i32 noundef %field, i32 noundef %msize, ptr noundef %priv, ptr noundef %ext_lock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @videobuf_queue_core_init(ptr noundef %q, ptr noundef %ops, ptr noundef %dev, ptr noundef %irqlock, i32 noundef %type, i32 noundef %field, i32 noundef %msize, ptr noundef %priv, ptr noundef nonnull @qops, ptr noundef %ext_lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @videobuf_queue_core_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @videobuf_to_dma_contig(ptr nocapture noundef readonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.videobuf_buffer, ptr %buf, i32 0, i32 19
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !100

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/v4l2-core/videobuf-dma-contig.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 366, 0\0A.popsection", ""() #7, !srcloc !101
  unreachable

do.end9:                                          ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 120826977, i32 %3)
  %cmp.not = icmp eq i32 %3, 120826977
  br i1 %cmp.not, label %if.end27, label %do.end19, !prof !102

do.end19:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %3, i32 noundef 120826977) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/v4l2-core/videobuf-dma-contig.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 367, 0\0A.popsection", ""() #7, !srcloc !103
  unreachable

if.end27:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  %dma_handle = getelementptr inbounds %struct.videobuf_dma_contig_memory, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_handle, align 4
  ret i32 %5
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @videobuf_dma_contig_free(ptr nocapture noundef readonly %q, ptr nocapture noundef readonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.videobuf_buffer, ptr %buf, i32 0, i32 19
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %memory = getelementptr inbounds %struct.videobuf_buffer, ptr %buf, i32 0, i32 13
  %2 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %memory, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp ne i32 %3, 2
  %tobool.not = icmp eq ptr %1, null
  %or.cond = select i1 %cmp.not, i1 true, i1 %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2:                                          ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 120826977, i32 %5)
  %cmp3.not = icmp eq i32 %5, 120826977
  br i1 %cmp3.not, label %if.end14, label %do.end, !prof !102

do.end:                                           ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %5, i32 noundef 120826977) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/v4l2-core/videobuf-dma-contig.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 390, 0\0A.popsection", ""() #7, !srcloc !104
  unreachable

if.end14:                                         ; preds = %if.end2
  %baddr = getelementptr inbounds %struct.videobuf_buffer, ptr %buf, i32 0, i32 16
  %6 = ptrtoint ptr %baddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %baddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool15.not = icmp eq i32 %7, 0
  br i1 %tobool15.not, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %dma_handle.i = getelementptr inbounds %struct.videobuf_dma_contig_memory, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %dma_handle.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %dma_handle.i, align 4
  %size.i = getelementptr inbounds %struct.videobuf_dma_contig_memory, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %size.i, align 4
  br label %cleanup

if.end17:                                         ; preds = %if.end14
  %vaddr = getelementptr inbounds %struct.videobuf_dma_contig_memory, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vaddr, align 4
  %tobool18.not = icmp eq ptr %11, null
  br i1 %tobool18.not, label %if.end17.cleanup_crit_edge, label %if.then19

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.videobuf_queue, ptr %q, i32 0, i32 3
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %size.i31 = getelementptr inbounds %struct.videobuf_dma_contig_memory, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %size.i31 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size.i31, align 4
  %dma_handle.i32 = getelementptr inbounds %struct.videobuf_dma_contig_memory, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %dma_handle.i32 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_handle.i32, align 4
  tail call void @dma_free_attrs(ptr noundef %13, i32 noundef %15, ptr noundef nonnull %11, i32 noundef %17, i32 noundef 0) #7
  %18 = ptrtoint ptr %vaddr to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %vaddr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.end17.cleanup_crit_edge, %if.then16, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @__videobuf_alloc(i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %size, 16
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %call9.i.i, i32 %size
  %priv = getelementptr inbounds %struct.videobuf_buffer, ptr %call9.i.i, i32 0, i32 19
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %add.ptr, ptr %priv, align 8
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 120826977, ptr %add.ptr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %retval.1.i.i10 = phi ptr [ %call9.i.i, %if.then ], [ null, %entry.if.end_crit_edge ]
  ret ptr %retval.1.i.i10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @__videobuf_to_vaddr(ptr nocapture noundef readonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.videobuf_buffer, ptr %buf, i32 0, i32 19
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !100

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/v4l2-core/videobuf-dma-contig.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 228, 0\0A.popsection", ""() #7, !srcloc !105
  unreachable

do.end9:                                          ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 120826977, i32 %3)
  %cmp.not = icmp eq i32 %3, 120826977
  br i1 %cmp.not, label %if.end27, label %do.end19, !prof !102

do.end19:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %3, i32 noundef 120826977) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/v4l2-core/videobuf-dma-contig.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 229, 0\0A.popsection", ""() #7, !srcloc !106
  unreachable

if.end27:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  %vaddr = getelementptr inbounds %struct.videobuf_dma_contig_memory, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vaddr, align 4
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__videobuf_iolock(ptr nocapture noundef readonly %q, ptr nocapture noundef readonly %vb, ptr nocapture noundef readnone %fbuf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 19
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !100

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/v4l2-core/videobuf-dma-contig.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 240, 0\0A.popsection", ""() #7, !srcloc !107
  unreachable

do.end9:                                          ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 120826977, i32 %3)
  %cmp.not = icmp eq i32 %3, 120826977
  br i1 %cmp.not, label %if.end27, label %do.end19, !prof !102

do.end19:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %3, i32 noundef 120826977) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/v4l2-core/videobuf-dma-contig.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 241, 0\0A.popsection", ""() #7, !srcloc !108
  unreachable

if.end27:                                         ; preds = %do.end9
  %memory = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 13
  %4 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %memory, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %do.body77 [
    i32 1, label %do.body28
    i32 2, label %do.body50
  ]

do.body28:                                        ; preds = %if.end27
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__videobuf_iolock.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__videobuf_iolock, %if.then38)) #7
          to label %do.end41 [label %if.then38], !srcloc !109

if.then38:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.videobuf_queue, ptr %q, i32 0, i32 3
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__videobuf_iolock.__UNIQUE_ID_ddebug249, ptr noundef %8, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5) #7
  br label %do.end41

do.end41:                                         ; preds = %if.then38, %do.body28
  %vaddr = getelementptr inbounds %struct.videobuf_dma_contig_memory, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vaddr, align 4
  %tobool42.not = icmp eq ptr %10, null
  br i1 %tobool42.not, label %do.end46, label %do.end41.cleanup_crit_edge

do.end41.cleanup_crit_edge:                       ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end46:                                         ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #9
  %dev47 = getelementptr inbounds %struct.videobuf_queue, ptr %q, i32 0, i32 3
  %11 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev47, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.9) #10
  br label %cleanup

do.body50:                                        ; preds = %if.end27
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__videobuf_iolock.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__videobuf_iolock, %if.then62)) #7
          to label %do.end66 [label %if.then62], !srcloc !109

if.then62:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #9
  %dev63 = getelementptr inbounds %struct.videobuf_queue, ptr %q, i32 0, i32 3
  %13 = ptrtoint ptr %dev63 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev63, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__videobuf_iolock.__UNIQUE_ID_ddebug250, ptr noundef %14, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.5) #7
  br label %do.end66

do.end66:                                         ; preds = %if.then62, %do.body50
  %baddr = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 16
  %15 = ptrtoint ptr %baddr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %baddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool67.not = icmp eq i32 %16, 0
  br i1 %tobool67.not, label %if.end70, label %if.then68

if.then68:                                        ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #9
  %call69 = tail call fastcc i32 @videobuf_dma_contig_user_get(ptr noundef nonnull %1, ptr noundef %vb)
  br label %cleanup

if.end70:                                         ; preds = %do.end66
  %dev71 = getelementptr inbounds %struct.videobuf_queue, ptr %q, i32 0, i32 3
  %17 = ptrtoint ptr %dev71 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev71, align 4
  %size = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 5
  %19 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size, align 4
  %add = add i32 %20, 4095
  %and = and i32 %add, -4096
  %size1.i = getelementptr inbounds %struct.videobuf_dma_contig_memory, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %size1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and, ptr %size1.i, align 4
  %dma_handle.i = getelementptr inbounds %struct.videobuf_dma_contig_memory, ptr %1, i32 0, i32 2
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %18, i32 noundef %and, ptr noundef %dma_handle.i, i32 noundef 3264, i32 noundef 0) #7
  %vaddr.i = getelementptr inbounds %struct.videobuf_dma_contig_memory, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i.i, ptr %vaddr.i, align 4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %__videobuf_dc_alloc.exit.thread118, label %do.body5.i

__videobuf_dc_alloc.exit.thread118:               ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %size1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size1.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.15, i32 noundef %24) #10
  br label %cleanup

do.body5.i:                                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__videobuf_dc_alloc.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__videobuf_iolock, %__videobuf_dc_alloc.exit.thread)) #7
          to label %cleanup [label %__videobuf_dc_alloc.exit.thread], !srcloc !109

__videobuf_dc_alloc.exit.thread:                  ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vaddr.i, align 4
  %27 = ptrtoint ptr %size1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %size1.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__videobuf_dc_alloc.__UNIQUE_ID_ddebug244, ptr noundef %18, ptr noundef nonnull @.str.17, ptr noundef %26, i32 noundef %28) #7
  br label %cleanup

do.body77:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__videobuf_iolock.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__videobuf_iolock, %if.then89)) #7
          to label %cleanup [label %if.then89], !srcloc !109

if.then89:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #9
  %dev90 = getelementptr inbounds %struct.videobuf_queue, ptr %q, i32 0, i32 3
  %29 = ptrtoint ptr %dev90 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev90, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__videobuf_iolock.__UNIQUE_ID_ddebug251, ptr noundef %30, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.5) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then89, %do.body77, %__videobuf_dc_alloc.exit.thread, %do.body5.i, %__videobuf_dc_alloc.exit.thread118, %if.then68, %do.end46, %do.end41.cleanup_crit_edge
  %retval.0 = phi i32 [ %call69, %if.then68 ], [ -22, %do.end46 ], [ -22, %if.then89 ], [ -12, %__videobuf_dc_alloc.exit.thread118 ], [ -22, %do.body77 ], [ 0, %do.body5.i ], [ 0, %__videobuf_dc_alloc.exit.thread ], [ 0, %do.end41.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__videobuf_mmap_mapper(ptr noundef %q, ptr nocapture noundef %buf, ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__videobuf_mmap_mapper.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__videobuf_mmap_mapper, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !109

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.videobuf_queue, ptr %q, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__videobuf_mmap_mapper.__UNIQUE_ID_ddebug252, ptr noundef %1, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.18) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 8) #12
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %map8 = getelementptr inbounds %struct.videobuf_buffer, ptr %buf, i32 0, i32 17
  %3 = ptrtoint ptr %map8 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %map8, align 8
  %q9 = getelementptr inbounds %struct.videobuf_mapping, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %q9 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %q, ptr %q9, align 4
  %5 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vma, align 4
  %baddr = getelementptr inbounds %struct.videobuf_buffer, ptr %buf, i32 0, i32 16
  %7 = ptrtoint ptr %baddr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %baddr, align 4
  %priv = getelementptr inbounds %struct.videobuf_buffer, ptr %buf, i32 0, i32 19
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 8
  %tobool11.not = icmp eq ptr %9, null
  br i1 %tobool11.not, label %do.body21, label %do.end29, !prof !100

do.body21:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/v4l2-core/videobuf-dma-contig.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 295, 0\0A.popsection", ""() #7, !srcloc !110
  unreachable

do.end29:                                         ; preds = %if.end7
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 120826977, i32 %11)
  %cmp.not = icmp eq i32 %11, 120826977
  br i1 %cmp.not, label %if.end49, label %do.end39, !prof !102

do.end39:                                         ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #9
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %11, i32 noundef 120826977) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/v4l2-core/videobuf-dma-contig.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 296, 0\0A.popsection", ""() #7, !srcloc !111
  unreachable

if.end49:                                         ; preds = %do.end29
  %dev50 = getelementptr inbounds %struct.videobuf_queue, ptr %q, i32 0, i32 3
  %12 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev50, align 4
  %bsize = getelementptr inbounds %struct.videobuf_buffer, ptr %buf, i32 0, i32 14
  %14 = ptrtoint ptr %bsize to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bsize, align 4
  %add = add i32 %15, 4095
  %and = and i32 %add, -4096
  %size1.i = getelementptr inbounds %struct.videobuf_dma_contig_memory, ptr %9, i32 0, i32 3
  %16 = ptrtoint ptr %size1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and, ptr %size1.i, align 4
  %dma_handle.i = getelementptr inbounds %struct.videobuf_dma_contig_memory, ptr %9, i32 0, i32 2
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %13, i32 noundef %and, ptr noundef %dma_handle.i, i32 noundef 265408, i32 noundef 0) #7
  %vaddr.i = getelementptr inbounds %struct.videobuf_dma_contig_memory, ptr %9, i32 0, i32 1
  %17 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i.i, ptr %vaddr.i, align 4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %__videobuf_dc_alloc.exit.thread135, label %do.body5.i

__videobuf_dc_alloc.exit.thread135:               ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %size1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size1.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.15, i32 noundef %19) #10
  br label %error

do.body5.i:                                       ; preds = %if.end49
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__videobuf_dc_alloc.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__videobuf_mmap_mapper, %__videobuf_dc_alloc.exit.thread)) #7
          to label %if.end54 [label %__videobuf_dc_alloc.exit.thread], !srcloc !109

__videobuf_dc_alloc.exit.thread:                  ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vaddr.i, align 4
  %22 = ptrtoint ptr %size1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %size1.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__videobuf_dc_alloc.__UNIQUE_ID_ddebug244, ptr noundef %13, ptr noundef nonnull @.str.17, ptr noundef %21, i32 noundef %23) #7
  br label %if.end54

if.end54:                                         ; preds = %__videobuf_dc_alloc.exit.thread, %do.body5.i
  %vm_page_prot = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %24 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vm_page_prot, align 4
  %and55 = and i32 %25, -61
  store i32 %and55, ptr %vm_page_prot, align 4
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %26 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %vm_pgoff, align 4
  %27 = ptrtoint ptr %dma_handle.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dma_handle.i, align 4
  %29 = ptrtoint ptr %size1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %size1.i, align 4
  %call57 = tail call i32 @vm_iomap_memory(ptr noundef %vma, i32 noundef %28, i32 noundef %30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end67, label %do.end62

do.end62:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev50, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.21, i32 noundef %call57) #10
  %33 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev50, align 4
  %35 = ptrtoint ptr %size1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %size1.i, align 4
  %37 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %vaddr.i, align 4
  %39 = ptrtoint ptr %dma_handle.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dma_handle.i, align 4
  tail call void @dma_free_attrs(ptr noundef %34, i32 noundef %36, ptr noundef %38, i32 noundef %40, i32 noundef 0) #7
  br label %error

if.end67:                                         ; preds = %if.end54
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %41 = ptrtoint ptr %vm_ops to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @videobuf_vm_ops, ptr %vm_ops, align 4
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %42 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %vm_flags, align 4
  %or68 = or i32 %43, 262144
  store i32 %or68, ptr %vm_flags, align 4
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 15
  %44 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call7.i.i, ptr %vm_private_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__videobuf_mmap_mapper.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__videobuf_mmap_mapper, %if.then81)) #7
          to label %do.end88 [label %if.then81], !srcloc !109

if.then81:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev50, align 4
  %47 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %vma, align 4
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %49 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %vm_end, align 4
  %51 = ptrtoint ptr %bsize to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %bsize, align 4
  %53 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %vm_pgoff, align 4
  %55 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %buf, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__videobuf_mmap_mapper.__UNIQUE_ID_ddebug253, ptr noundef %46, ptr noundef nonnull @.str.23, ptr noundef nonnull %call7.i.i, ptr noundef %q, i32 noundef %48, i32 noundef %50, i32 noundef %52, i32 noundef %54, i32 noundef %56) #7
  br label %do.end88

do.end88:                                         ; preds = %if.then81, %if.end67
  %57 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %vm_private_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @videobuf_vm_open.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__videobuf_mmap_mapper, %if.then.i)) #7
          to label %videobuf_vm_open.exit [label %if.then.i], !srcloc !109

if.then.i:                                        ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #9
  %q.i = getelementptr inbounds %struct.videobuf_mapping, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %q.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %q.i, align 4
  %dev.i = getelementptr inbounds %struct.videobuf_queue, ptr %60, i32 0, i32 3
  %61 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev.i, align 4
  %63 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %58, align 4
  %65 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %vma, align 4
  %vm_end.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %67 = ptrtoint ptr %vm_end.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %vm_end.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @videobuf_vm_open.__UNIQUE_ID_ddebug245, ptr noundef %62, ptr noundef nonnull @.str.29, ptr noundef %58, i32 noundef %64, i32 noundef %66, i32 noundef %68) #7
  br label %videobuf_vm_open.exit

videobuf_vm_open.exit:                            ; preds = %if.then.i, %do.end88
  %69 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %58, align 4
  %inc.i = add i32 %70, 1
  store i32 %inc.i, ptr %58, align 4
  br label %cleanup

error:                                            ; preds = %do.end62, %__videobuf_dc_alloc.exit.thread135
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %error, %videobuf_vm_open.exit, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %error ], [ 0, %videobuf_vm_open.exit ], [ -12, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @videobuf_dma_contig_user_get(ptr nocapture noundef %mem, ptr nocapture noundef readonly %vb) unnamed_addr #0 align 64 {
entry:
  %this_pfn = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %baddr = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 16
  %0 = ptrtoint ptr %baddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %baddr, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !90) #7
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %mm1 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 53
  %6 = ptrtoint ptr %mm1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mm1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %this_pfn) #7
  %8 = ptrtoint ptr %this_pfn to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %this_pfn, align 4, !annotation !112
  %and = and i32 %1, 4095
  %size = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 5
  %9 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size, align 4
  %add = add nuw nsw i32 %and, 4095
  %add2 = add i32 %add, %10
  %and3 = and i32 %add2, -4096
  %size4 = getelementptr inbounds %struct.videobuf_dma_contig_memory, ptr %mem, i32 0, i32 3
  %11 = ptrtoint ptr %size4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and3, ptr %size4, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@videobuf_dma_contig_user_get, %if.then.i.i)) #7
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !109

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %7, i1 noundef zeroext false) #7
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %entry
  %mmap_lock.i = getelementptr inbounds %struct.anon.10, ptr %7, i32 0, i32 15
  tail call void @down_read(ptr noundef %mmap_lock.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@videobuf_dma_contig_user_get, %if.then.i3.i)) #7
          to label %mmap_read_lock.exit [label %if.then.i3.i], !srcloc !109

if.then.i3.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %7, i1 noundef zeroext false, i1 noundef zeroext true) #7
  br label %mmap_read_lock.exit

mmap_read_lock.exit:                              ; preds = %if.then.i3.i, %__mmap_lock_trace_start_locking.exit.i
  %call5 = tail call ptr @find_vma(ptr noundef %7, i32 noundef %1) #7
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %mmap_read_lock.exit.out_up_crit_edge, label %if.end

mmap_read_lock.exit.out_up_crit_edge:             ; preds = %mmap_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_up

if.end:                                           ; preds = %mmap_read_lock.exit
  %12 = ptrtoint ptr %size4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size4, align 4
  %add7 = add i32 %13, %1
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %call5, i32 0, i32 1
  %14 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vm_end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add7, i32 %15)
  %cmp = icmp ugt i32 %add7, %15
  br i1 %cmp, label %if.end.out_up_crit_edge, label %while.cond.preheader

if.end.out_up_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_up

while.cond.preheader:                             ; preds = %if.end
  %16 = ptrtoint ptr %size4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %17)
  %cmp1153.not = icmp ult i32 %17, 4096
  br i1 %cmp1153.not, label %while.cond.preheader.out_up_crit_edge, label %while.body.lr.ph

while.cond.preheader.out_up_crit_edge:            ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_up

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %dma_handle = getelementptr inbounds %struct.videobuf_dma_contig_memory, ptr %mem, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %if.end26.while.body_crit_edge, %while.body.lr.ph
  %user_address.056 = phi i32 [ %1, %while.body.lr.ph ], [ %add27, %if.end26.while.body_crit_edge ]
  %pages_done.055 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %if.end26.while.body_crit_edge ]
  %prev_pfn.054 = phi i32 [ 0, %while.body.lr.ph ], [ %22, %if.end26.while.body_crit_edge ]
  %call12 = call i32 @follow_pfn(ptr noundef nonnull %call5, i32 noundef %user_address.056, ptr noundef nonnull %this_pfn) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %while.body.out_up_crit_edge

while.body.out_up_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_up

if.end15:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pages_done.055)
  %cmp16 = icmp eq i32 %pages_done.055, 0
  %18 = ptrtoint ptr %this_pfn to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %this_pfn, align 4
  br i1 %cmp16, label %if.end23.thread, label %if.end23

if.end23.thread:                                  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %shl = shl i32 %19, 12
  %add18 = or i32 %shl, %and
  %20 = ptrtoint ptr %dma_handle to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add18, ptr %dma_handle, align 4
  br label %if.end26

if.end23:                                         ; preds = %if.end15
  %add19 = add i32 %prev_pfn.054, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %add19)
  %cmp20.not = icmp eq i32 %19, %add19
  br i1 %cmp20.not, label %if.end23.if.end26_crit_edge, label %if.end23.out_up_crit_edge

if.end23.out_up_crit_edge:                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_up

if.end23.if.end26_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.end26:                                         ; preds = %if.end23.if.end26_crit_edge, %if.end23.thread
  %21 = ptrtoint ptr %this_pfn to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %this_pfn, align 4
  %add27 = add i32 %user_address.056, 4096
  %inc = add nuw nsw i32 %pages_done.055, 1
  %23 = ptrtoint ptr %size4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size4, align 4
  %shr = lshr i32 %24, 12
  %cmp11 = icmp ult i32 %inc, %shr
  br i1 %cmp11, label %if.end26.while.body_crit_edge, label %if.end26.out_up_crit_edge

if.end26.out_up_crit_edge:                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_up

if.end26.while.body_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

out_up:                                           ; preds = %if.end26.out_up_crit_edge, %if.end23.out_up_crit_edge, %while.body.out_up_crit_edge, %while.cond.preheader.out_up_crit_edge, %if.end.out_up_crit_edge, %mmap_read_lock.exit.out_up_crit_edge
  %ret.2 = phi i32 [ -22, %if.end.out_up_crit_edge ], [ -22, %mmap_read_lock.exit.out_up_crit_edge ], [ -22, %while.cond.preheader.out_up_crit_edge ], [ -14, %if.end23.out_up_crit_edge ], [ %call12, %while.body.out_up_crit_edge ], [ 0, %if.end26.out_up_crit_edge ]
  %25 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task, align 8
  %mm30 = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 53
  %27 = ptrtoint ptr %mm30 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mm30, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@videobuf_dma_contig_user_get, %if.then.i.i48)) #7
          to label %mmap_read_unlock.exit [label %if.then.i.i48], !srcloc !109

if.then.i.i48:                                    ; preds = %out_up
  call void @__sanitizer_cov_trace_pc() #9
  call void @__mmap_lock_do_trace_released(ptr noundef %28, i1 noundef zeroext false) #7
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i48, %out_up
  %mmap_lock.i49 = getelementptr inbounds %struct.anon.10, ptr %28, i32 0, i32 15
  call void @up_read(ptr noundef %mmap_lock.i49) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %this_pfn) #7
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vma(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @follow_pfn(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_iomap_memory(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @videobuf_vm_open(ptr nocapture noundef readonly %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 15
  %0 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_private_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @videobuf_vm_open.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@videobuf_vm_open, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !109

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %q = getelementptr inbounds %struct.videobuf_mapping, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %q, align 4
  %dev = getelementptr inbounds %struct.videobuf_queue, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %8 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vma, align 4
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %10 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vm_end, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @videobuf_vm_open.__UNIQUE_ID_ddebug245, ptr noundef %5, ptr noundef nonnull @.str.29, ptr noundef %1, i32 noundef %7, i32 noundef %9, i32 noundef %11) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %1, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @videobuf_vm_close(ptr nocapture noundef readonly %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 15
  %0 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_private_data, align 4
  %q1 = getelementptr inbounds %struct.videobuf_mapping, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %q1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %q1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @videobuf_vm_close.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@videobuf_vm_close, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !109

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.videobuf_queue, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %8 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vma, align 4
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %10 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vm_end, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @videobuf_vm_close.__UNIQUE_ID_ddebug246, ptr noundef %5, ptr noundef nonnull @.str.25, ptr noundef %1, i32 noundef %7, i32 noundef %9, i32 noundef %11) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 4
  %dec = add i32 %13, -1
  store i32 %dec, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then6, label %do.end.if.end87_crit_edge

do.end.if.end87_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end87

if.then6:                                         ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @videobuf_vm_close.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@videobuf_vm_close, %if.then19)) #7
          to label %do.end23 [label %if.then19], !srcloc !109

if.then19:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  %dev20 = getelementptr inbounds %struct.videobuf_queue, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev20, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @videobuf_vm_close.__UNIQUE_ID_ddebug247, ptr noundef %15, ptr noundef nonnull @.str.26, ptr noundef %1, ptr noundef %3) #7
  br label %do.end23

do.end23:                                         ; preds = %if.then19, %if.then6
  %ext_lock.i = getelementptr inbounds %struct.videobuf_queue, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %ext_lock.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ext_lock.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.then.i, label %do.end23.videobuf_queue_lock.exit_crit_edge

do.end23.videobuf_queue_lock.exit_crit_edge:      ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %videobuf_queue_lock.exit

if.then.i:                                        ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #7
  br label %videobuf_queue_lock.exit

videobuf_queue_lock.exit:                         ; preds = %if.then.i, %do.end23.videobuf_queue_lock.exit_crit_edge
  %streaming = getelementptr inbounds %struct.videobuf_queue, ptr %3, i32 0, i32 12
  %18 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %streaming, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool24.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool24.not, label %videobuf_queue_lock.exit.if.end26_crit_edge, label %if.then25

videobuf_queue_lock.exit.if.end26_crit_edge:      ; preds = %videobuf_queue_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then25:                                        ; preds = %videobuf_queue_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @videobuf_queue_cancel(ptr noundef %3) #7
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %videobuf_queue_lock.exit.if.end26_crit_edge
  %dev75 = getelementptr inbounds %struct.videobuf_queue, ptr %3, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end26
  %i.0136 = phi i32 [ 0, %if.end26 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.videobuf_queue, ptr %3, i32 0, i32 9, i32 %i.0136
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  %cmp28 = icmp eq ptr %20, null
  br i1 %cmp28, label %for.body.for.inc_crit_edge, label %if.end30

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end30:                                         ; preds = %for.body
  %map33 = getelementptr inbounds %struct.videobuf_buffer, ptr %20, i32 0, i32 17
  %21 = ptrtoint ptr %map33 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %map33, align 8
  %cmp34.not = icmp eq ptr %22, %1
  br i1 %cmp34.not, label %if.end36, label %if.end30.for.inc_crit_edge

if.end30.for.inc_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end36:                                         ; preds = %if.end30
  %priv = getelementptr inbounds %struct.videobuf_buffer, ptr %20, i32 0, i32 19
  %23 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %priv, align 8
  %tobool39.not = icmp eq ptr %24, null
  br i1 %tobool39.not, label %if.end36.if.end81_crit_edge, label %if.then40

if.end36.if.end81_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

if.then40:                                        ; preds = %if.end36
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 120826977, i32 %26)
  %cmp41.not = icmp eq i32 %26, 120826977
  br i1 %cmp41.not, label %do.body62, label %do.end51, !prof !102

do.end51:                                         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %26, i32 noundef 120826977) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/v4l2-core/videobuf-dma-contig.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 108, 0\0A.popsection", ""() #7, !srcloc !113
  unreachable

do.body62:                                        ; preds = %if.then40
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @videobuf_vm_close.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@videobuf_vm_close, %if.then74)) #7
          to label %do.end78 [label %if.then74], !srcloc !109

if.then74:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %dev75 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev75, align 4
  %vaddr = getelementptr inbounds %struct.videobuf_dma_contig_memory, ptr %24, i32 0, i32 1
  %29 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vaddr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @videobuf_vm_close.__UNIQUE_ID_ddebug248, ptr noundef %28, ptr noundef nonnull @.str.27, i32 noundef %i.0136, ptr noundef %30) #7
  br label %do.end78

do.end78:                                         ; preds = %if.then74, %do.body62
  %31 = ptrtoint ptr %dev75 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev75, align 4
  %size.i = getelementptr inbounds %struct.videobuf_dma_contig_memory, ptr %24, i32 0, i32 3
  %33 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %size.i, align 4
  %vaddr.i = getelementptr inbounds %struct.videobuf_dma_contig_memory, ptr %24, i32 0, i32 1
  %35 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %vaddr.i, align 4
  %dma_handle.i = getelementptr inbounds %struct.videobuf_dma_contig_memory, ptr %24, i32 0, i32 2
  %37 = ptrtoint ptr %dma_handle.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dma_handle.i, align 4
  tail call void @dma_free_attrs(ptr noundef %32, i32 noundef %34, ptr noundef %36, i32 noundef %38, i32 noundef 0) #7
  %39 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %vaddr.i, align 4
  br label %if.end81

if.end81:                                         ; preds = %do.end78, %if.end36.if.end81_crit_edge
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx, align 4
  %map84 = getelementptr inbounds %struct.videobuf_buffer, ptr %41, i32 0, i32 17
  %42 = ptrtoint ptr %map84 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %map84, align 8
  %43 = load ptr, ptr %arrayidx, align 4
  %baddr = getelementptr inbounds %struct.videobuf_buffer, ptr %43, i32 0, i32 16
  %44 = ptrtoint ptr %baddr to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %baddr, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end81, %if.end30.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0136, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  tail call void @kfree(ptr noundef %1) #7
  %45 = ptrtoint ptr %ext_lock.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ext_lock.i, align 4
  %tobool.not.i131 = icmp eq ptr %46, null
  br i1 %tobool.not.i131, label %if.then.i132, label %for.end.if.end87_crit_edge

for.end.if.end87_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end87

if.then.i132:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %3) #7
  br label %if.end87

if.end87:                                         ; preds = %if.then.i132, %for.end.if.end87_crit_edge, %do.end.if.end87_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @videobuf_queue_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !13, !14, !16, !18, !20, !22, !23, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !42, !43, !45, !46, !48, !49, !51, !52, !53, !54, !56, !57, !59, !60, !61, !63, !64, !66, !67, !68, !70, !71, !73, !75, !76, !77, !79, !80, !82, !83, !85, !86, !88, !89}
!llvm.named.register.sp = !{!90}
!llvm.module.flags = !{!91, !92, !93, !94, !95, !96, !97, !98}
!llvm.ident = !{!99}

!0 = !{ptr @__ksymtab_videobuf_queue_dma_contig_init, !1, !"__ksymtab_videobuf_queue_dma_contig_init", i1 false, i1 false}
!1 = !{!"../drivers/media/v4l2-core/videobuf-dma-contig.c", i32 360, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/v4l2-core/videobuf-dma-contig.c", i32 367, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @videobuf_to_dma_contig._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @videobuf_to_dma_contig._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__ksymtab_videobuf_to_dma_contig, !9, !"__ksymtab_videobuf_to_dma_contig", i1 false, i1 false}
!9 = !{!"../drivers/media/v4l2-core/videobuf-dma-contig.c", i32 371, i32 1}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/v4l2-core/videobuf-dma-contig.c", i32 390, i32 2}
!12 = !{ptr @videobuf_dma_contig_free._entry, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @videobuf_dma_contig_free._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @__ksymtab_videobuf_dma_contig_free, !15, !"__ksymtab_videobuf_dma_contig_free", i1 false, i1 false}
!15 = !{!"../drivers/media/v4l2-core/videobuf-dma-contig.c", i32 404, i32 1}
!16 = !{ptr @__UNIQUE_ID_description254, !17, !"__UNIQUE_ID_description254", i1 false, i1 false}
!17 = !{!"../drivers/media/v4l2-core/videobuf-dma-contig.c", i32 406, i32 1}
!18 = !{ptr @__UNIQUE_ID_author255, !19, !"__UNIQUE_ID_author255", i1 false, i1 false}
!19 = !{!"../drivers/media/v4l2-core/videobuf-dma-contig.c", i32 407, i32 1}
!20 = !{ptr @__UNIQUE_ID_file256, !21, !"__UNIQUE_ID_file256", i1 false, i1 false}
!21 = !{!"../drivers/media/v4l2-core/videobuf-dma-contig.c", i32 408, i32 1}
!22 = !{ptr @__UNIQUE_ID_license257, !21, !"__UNIQUE_ID_license257", i1 false, i1 false}
!23 = !{ptr @qops, !24, !"qops", i1 false, i1 false}
!24 = !{!"../drivers/media/v4l2-core/videobuf-dma-contig.c", i32 339, i32 34}
!25 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/v4l2-core/videobuf-dma-contig.c", i32 229, i32 2}
!27 = !{ptr @__videobuf_to_vaddr._entry, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @__videobuf_to_vaddr._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/v4l2-core/videobuf-dma-contig.c", i32 241, i32 2}
!31 = !{ptr @__videobuf_iolock._entry, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @__videobuf_iolock._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/v4l2-core/videobuf-dma-contig.c", i32 245, i32 3}
!35 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @__videobuf_iolock.__UNIQUE_ID_ddebug249, !34, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/v4l2-core/videobuf-dma-contig.c", i32 249, i32 4}
!39 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @__videobuf_iolock._entry.8, !38, !"_entry", i1 false, i1 false}
!42 = !{ptr @__videobuf_iolock._entry_ptr.12, !38, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/v4l2-core/videobuf-dma-contig.c", i32 254, i32 3}
!45 = !{ptr @__videobuf_iolock.__UNIQUE_ID_ddebug250, !44, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/v4l2-core/videobuf-dma-contig.c", i32 267, i32 3}
!48 = !{ptr @__videobuf_iolock.__UNIQUE_ID_ddebug251, !47, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!49 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/v4l2-core/videobuf-dma-contig.c", i32 46, i32 3}
!51 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @__videobuf_dc_alloc._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @__videobuf_dc_alloc._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/v4l2-core/videobuf-dma-contig.c", i32 50, i32 2}
!56 = !{ptr @__videobuf_dc_alloc.__UNIQUE_ID_ddebug244, !55, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!57 = !{ptr @.str.18, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/v4l2-core/videobuf-dma-contig.c", i32 282, i32 2}
!59 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @__videobuf_mmap_mapper.__UNIQUE_ID_ddebug252, !58, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!61 = !{ptr @__videobuf_mmap_mapper._entry, !62, !"_entry", i1 false, i1 false}
!62 = !{!"../drivers/media/v4l2-core/videobuf-dma-contig.c", i32 296, i32 2}
!63 = !{ptr @__videobuf_mmap_mapper._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.21, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/v4l2-core/videobuf-dma-contig.c", i32 315, i32 3}
!66 = !{ptr @__videobuf_mmap_mapper._entry.20, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @__videobuf_mmap_mapper._entry_ptr.22, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.23, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/v4l2-core/videobuf-dma-contig.c", i32 326, i32 2}
!70 = !{ptr @__videobuf_mmap_mapper.__UNIQUE_ID_ddebug253, !69, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!71 = !{ptr @videobuf_vm_ops, !72, !"videobuf_vm_ops", i1 false, i1 false}
!72 = !{!"../drivers/media/v4l2-core/videobuf-dma-contig.c", i32 130, i32 42}
!73 = !{ptr @.str.24, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/v4l2-core/videobuf-dma-contig.c", i32 79, i32 2}
!75 = !{ptr @.str.25, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @videobuf_vm_close.__UNIQUE_ID_ddebug246, !74, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!77 = !{ptr @.str.26, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/v4l2-core/videobuf-dma-contig.c", i32 86, i32 3}
!79 = !{ptr @videobuf_vm_close.__UNIQUE_ID_ddebug247, !78, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!80 = !{ptr @videobuf_vm_close._entry, !81, !"_entry", i1 false, i1 false}
!81 = !{!"../drivers/media/v4l2-core/videobuf-dma-contig.c", i32 108, i32 5}
!82 = !{ptr @videobuf_vm_close._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.27, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/v4l2-core/videobuf-dma-contig.c", i32 113, i32 5}
!85 = !{ptr @videobuf_vm_close.__UNIQUE_ID_ddebug248, !84, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!86 = !{ptr @.str.28, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/v4l2-core/videobuf-dma-contig.c", i32 67, i32 2}
!88 = !{ptr @.str.29, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @videobuf_vm_open.__UNIQUE_ID_ddebug245, !87, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!90 = !{!"sp"}
!91 = !{i32 1, !"wchar_size", i32 2}
!92 = !{i32 1, !"min_enum_size", i32 4}
!93 = !{i32 8, !"branch-target-enforcement", i32 0}
!94 = !{i32 8, !"sign-return-address", i32 0}
!95 = !{i32 8, !"sign-return-address-all", i32 0}
!96 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!97 = !{i32 7, !"uwtable", i32 1}
!98 = !{i32 7, !"frame-pointer", i32 2}
!99 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!100 = !{!"branch_weights", i32 1, i32 2000}
!101 = !{i64 2154440546, i64 2154441056, i64 2154440583, i64 2154440639, i64 2154440673, i64 2154440697, i64 2154440738, i64 2154440759, i64 2154440787, i64 2154440821}
!102 = !{!"branch_weights", i32 2000, i32 1}
!103 = !{i64 2154444037, i64 2154444547, i64 2154444074, i64 2154444130, i64 2154444164, i64 2154444188, i64 2154444229, i64 2154444250, i64 2154444278, i64 2154444312}
!104 = !{i64 2154449148, i64 2154449658, i64 2154449185, i64 2154449241, i64 2154449275, i64 2154449299, i64 2154449340, i64 2154449361, i64 2154449389, i64 2154449423}
!105 = !{i64 2154402033, i64 2154402543, i64 2154402070, i64 2154402126, i64 2154402160, i64 2154402184, i64 2154402225, i64 2154402246, i64 2154402274, i64 2154402308}
!106 = !{i64 2154405524, i64 2154406034, i64 2154405561, i64 2154405617, i64 2154405651, i64 2154405675, i64 2154405716, i64 2154405737, i64 2154405765, i64 2154405799}
!107 = !{i64 2154407166, i64 2154407676, i64 2154407203, i64 2154407259, i64 2154407293, i64 2154407317, i64 2154407358, i64 2154407379, i64 2154407407, i64 2154407441}
!108 = !{i64 2154414718, i64 2154415228, i64 2154414755, i64 2154414811, i64 2154414845, i64 2154414869, i64 2154414910, i64 2154414931, i64 2154414959, i64 2154414993}
!109 = !{i64 2148961325, i64 2148961330, i64 2148961343, i64 2148961387, i64 2148961421, i64 2148961442}
!110 = !{i64 2154427963, i64 2154428473, i64 2154428000, i64 2154428056, i64 2154428090, i64 2154428114, i64 2154428155, i64 2154428176, i64 2154428204, i64 2154428238}
!111 = !{i64 2154431454, i64 2154431964, i64 2154431491, i64 2154431547, i64 2154431581, i64 2154431605, i64 2154431646, i64 2154431667, i64 2154431695, i64 2154431729}
!112 = !{!"auto-init"}
!113 = !{i64 2154397230, i64 2154397740, i64 2154397267, i64 2154397323, i64 2154397357, i64 2154397381, i64 2154397422, i64 2154397443, i64 2154397471, i64 2154397505}
