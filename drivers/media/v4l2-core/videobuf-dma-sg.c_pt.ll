; ModuleID = '/llk/IR_all_yes/drivers/media/v4l2-core/videobuf-dma-sg.c_pt.bc'
source_filename = "../drivers/media/v4l2-core/videobuf-dma-sg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+videobuf_to_dma\22, \22a\22\09"
module asm "\09.weak\09__crc_videobuf_to_dma\09\09\09\09"
module asm "\09.long\09__crc_videobuf_to_dma\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_videobuf_to_dma:\09\09\09\09\09"
module asm "\09.asciz \09\22videobuf_to_dma\22\09\09\09\09\09"
module asm "__kstrtabns_videobuf_to_dma:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+videobuf_dma_unmap\22, \22a\22\09"
module asm "\09.weak\09__crc_videobuf_dma_unmap\09\09\09\09"
module asm "\09.long\09__crc_videobuf_dma_unmap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_videobuf_dma_unmap:\09\09\09\09\09"
module asm "\09.asciz \09\22videobuf_dma_unmap\22\09\09\09\09\09"
module asm "__kstrtabns_videobuf_dma_unmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+videobuf_dma_free\22, \22a\22\09"
module asm "\09.weak\09__crc_videobuf_dma_free\09\09\09\09"
module asm "\09.long\09__crc_videobuf_dma_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_videobuf_dma_free:\09\09\09\09\09"
module asm "\09.asciz \09\22videobuf_dma_free\22\09\09\09\09\09"
module asm "__kstrtabns_videobuf_dma_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+videobuf_sg_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_videobuf_sg_alloc\09\09\09\09"
module asm "\09.long\09__crc_videobuf_sg_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_videobuf_sg_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22videobuf_sg_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_videobuf_sg_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+videobuf_queue_sg_init\22, \22a\22\09"
module asm "\09.weak\09__crc_videobuf_queue_sg_init\09\09\09\09"
module asm "\09.long\09__crc_videobuf_queue_sg_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_videobuf_queue_sg_init:\09\09\09\09\09"
module asm "\09.asciz \09\22videobuf_queue_sg_init\22\09\09\09\09\09"
module asm "__kstrtabns_videobuf_queue_sg_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.videobuf_qtype_ops = type { i32, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.66 }
%struct.atomic_t = type { i32 }
%union.anon.66 = type { i32 }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpu_user_fns = type { ptr, ptr }
%struct.videobuf_buffer = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.wait_queue_head, i32, i64, i32, i32, i32, i32, ptr, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.videobuf_dma_sg_memory = type { i32, %struct.videobuf_dmabuf }
%struct.videobuf_dmabuf = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32 }
%struct.videobuf_queue = type { %struct.mutex, ptr, ptr, ptr, %struct.wait_queue_head, i32, i32, i32, i32, [32 x ptr], ptr, ptr, i8, %struct.list_head, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.page = type { i32, %union.anon.2, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.v4l2_framebuffer = type { i32, i32, ptr, %struct.anon.73 }
%struct.anon.73 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.videobuf_mapping = type { i32, ptr }
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
%struct.videobuf_queue_ops = type { ptr, ptr, ptr, ptr }
%struct.anon.13 = type { ptr, i32, i32, i32 }
%struct.vm_fault = type { %struct.anon.13, i32, ptr, ptr, %union.anon.14, ptr, ptr, ptr, ptr, ptr }
%union.anon.14 = type { i32 }

@__param_str_debug = internal constant [22 x i8] c"videobuf_dma_sg.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype256 = internal constant [35 x i8] c"videobuf_dma_sg.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_description257 = internal constant [79 x i8] c"videobuf_dma_sg.description=helper module to manage video4linux dma sg buffers\00", section ".modinfo", align 1
@__UNIQUE_ID_author258 = internal constant [66 x i8] c"videobuf_dma_sg.author=Mauro Carvalho Chehab <mchehab@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file259 = internal constant [61 x i8] c"videobuf_dma_sg.file=drivers/media/v4l2-core/videobuf-dma-sg\00", section ".modinfo", align 1
@__UNIQUE_ID_license260 = internal constant [28 x i8] c"videobuf_dma_sg.license=GPL\00", section ".modinfo", align 1
@videobuf_to_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013magic mismatch: %x (expected %x)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"videobuf_to_dma\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/media/v4l2-core/videobuf-dma-sg.c\00", [54 x i8] zeroinitializer }, align 32
@videobuf_to_dma._entry_ptr = internal global ptr @videobuf_to_dma._entry, section ".printk_index", align 4
@__kstrtab_videobuf_to_dma = external dso_local constant [0 x i8], align 1
@__kstrtabns_videobuf_to_dma = external dso_local constant [0 x i8], align 1
@__ksymtab_videobuf_to_dma = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @videobuf_to_dma to i32), ptr @__kstrtab_videobuf_to_dma, ptr @__kstrtabns_videobuf_to_dma }, section "___ksymtab_gpl+videobuf_to_dma", align 4
@videobuf_dma_unmap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.3, ptr @.str.2, i32 330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"videobuf_dma_unmap\00", [45 x i8] zeroinitializer }, align 32
@videobuf_dma_unmap._entry_ptr = internal global ptr @videobuf_dma_unmap._entry, section ".printk_index", align 4
@__kstrtab_videobuf_dma_unmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_videobuf_dma_unmap = external dso_local constant [0 x i8], align 1
@__ksymtab_videobuf_dma_unmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @videobuf_dma_unmap to i32), ptr @__kstrtab_videobuf_dma_unmap, ptr @__kstrtabns_videobuf_dma_unmap }, section "___ksymtab_gpl+videobuf_dma_unmap", align 4
@videobuf_dma_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.4, ptr @.str.2, i32 348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"videobuf_dma_free\00", [46 x i8] zeroinitializer }, align 32
@videobuf_dma_free._entry_ptr = internal global ptr @videobuf_dma_free._entry, section ".printk_index", align 4
@__kstrtab_videobuf_dma_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_videobuf_dma_free = external dso_local constant [0 x i8], align 1
@__ksymtab_videobuf_dma_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @videobuf_dma_free to i32), ptr @__kstrtab_videobuf_dma_free, ptr @__kstrtabns_videobuf_dma_free }, section "___ksymtab_gpl+videobuf_dma_free", align 4
@sg_ops = internal global { %struct.videobuf_qtype_ops, [40 x i8] } { %struct.videobuf_qtype_ops { i32 304484355, ptr @__videobuf_alloc_vb, ptr @__videobuf_to_vaddr, ptr @__videobuf_iolock, ptr @__videobuf_sync, ptr @__videobuf_mmap_mapper }, [40 x i8] zeroinitializer }, align 32
@__kstrtab_videobuf_sg_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_videobuf_sg_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_videobuf_sg_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @videobuf_sg_alloc to i32), ptr @__kstrtab_videobuf_sg_alloc, ptr @__kstrtabns_videobuf_sg_alloc }, section "___ksymtab_gpl+videobuf_sg_alloc", align 4
@__kstrtab_videobuf_queue_sg_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_videobuf_queue_sg_init = external dso_local constant [0 x i8], align 1
@__ksymtab_videobuf_queue_sg_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @videobuf_queue_sg_init to i32), ptr @__kstrtab_videobuf_queue_sg_init, ptr @__kstrtabns_videobuf_queue_sg_init }, section "___ksymtab_gpl+videobuf_queue_sg_init", align 4
@__videobuf_alloc_vb._entry = internal constant %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 483, ptr null, ptr null }, align 1
@.str.5 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017vbuf-sg: %s: allocated at %p(%ld+%ld) & %p(%ld)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__videobuf_alloc_vb\00", [44 x i8] zeroinitializer }, align 32
@__videobuf_alloc_vb._entry_ptr = internal global ptr @__videobuf_alloc_vb._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__videobuf_to_vaddr._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.7, ptr @.str.2, i32 493, ptr null, ptr null }, align 1
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__videobuf_to_vaddr\00", [44 x i8] zeroinitializer }, align 32
@__videobuf_to_vaddr._entry_ptr = internal global ptr @__videobuf_to_vaddr._entry, section ".printk_index", align 4
@__videobuf_iolock._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.8, ptr @.str.2, i32 509, ptr null, ptr null }, align 1
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__videobuf_iolock\00", [46 x i8] zeroinitializer }, align 32
@__videobuf_iolock._entry_ptr = internal global ptr @__videobuf_iolock._entry, section ".printk_index", align 4
@videobuf_dma_init_kernel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017vbuf-sg: init kernel [%lu pages]\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"videobuf_dma_init_kernel\00", [39 x i8] zeroinitializer }, align 32
@videobuf_dma_init_kernel._entry_ptr = internal global ptr @videobuf_dma_init_kernel._entry, section ".printk_index", align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@videobuf_dma_init_kernel._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017vbuf-sg: vmalloc_32(%lu pages) failed\0A\00", [55 x i8] zeroinitializer }, align 32
@videobuf_dma_init_kernel._entry_ptr.13 = internal global ptr @videobuf_dma_init_kernel._entry.11, section ".printk_index", align 4
@videobuf_dma_init_kernel._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.2, i32 246, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017vbuf-sg: vmalloc is at addr %p, size=%lu\0A\00", [52 x i8] zeroinitializer }, align 32
@videobuf_dma_init_kernel._entry_ptr.16 = internal global ptr @videobuf_dma_init_kernel._entry.14, section ".printk_index", align 4
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@videobuf_dma_init_user_locked._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 184, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017vbuf-sg: init user [0x%lx+0x%lx => %lu pages]\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"videobuf_dma_init_user_locked\00", [34 x i8] zeroinitializer }, align 32
@videobuf_dma_init_user_locked._entry_ptr = internal global ptr @videobuf_dma_init_user_locked._entry, section ".printk_index", align 4
@videobuf_dma_init_user_locked._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017vbuf-sg: pin_user_pages: err=%d [%lu]\0A\00", [55 x i8] zeroinitializer }, align 32
@videobuf_dma_init_user_locked._entry_ptr.21 = internal global ptr @videobuf_dma_init_user_locked._entry.19, section ".printk_index", align 4
@videobuf_dma_init_overlay._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017vbuf-sg: init overlay [%lu pages @ bus 0x%lx]\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"videobuf_dma_init_overlay\00", [38 x i8] zeroinitializer }, align 32
@videobuf_dma_init_overlay._entry_ptr = internal global ptr @videobuf_dma_init_overlay._entry, section ".printk_index", align 4
@videobuf_dma_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.24, ptr @.str.2, i32 287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"videobuf_dma_map\00", [47 x i8] zeroinitializer }, align 32
@videobuf_dma_map._entry_ptr = internal global ptr @videobuf_dma_map._entry, section ".printk_index", align 4
@videobuf_dma_map._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.2, i32 309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017vbuf-sg: scatterlist is NULL\0A\00", [32 x i8] zeroinitializer }, align 32
@videobuf_dma_map._entry_ptr.27 = internal global ptr @videobuf_dma_map._entry.25, section ".printk_index", align 4
@videobuf_dma_map._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str.2, i32 317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014%s: videobuf_map_sg failed\0A\00", [34 x i8] zeroinitializer }, align 32
@videobuf_dma_map._entry_ptr.30 = internal global ptr @videobuf_dma_map._entry.28, section ".printk_index", align 4
@videobuf_pages_to_sg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017vbuf-sg: sgl: oops - no page\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"videobuf_pages_to_sg\00", [43 x i8] zeroinitializer }, align 32
@videobuf_pages_to_sg._entry_ptr = internal global ptr @videobuf_pages_to_sg._entry, section ".printk_index", align 4
@videobuf_pages_to_sg._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.2, i32 127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017vbuf-sg: sgl: oops - highmem page\0A\00", [59 x i8] zeroinitializer }, align 32
@videobuf_pages_to_sg._entry_ptr.35 = internal global ptr @videobuf_pages_to_sg._entry.33, section ".printk_index", align 4
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@__videobuf_sync._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.36, ptr @.str.2, i32 579, ptr null, ptr null }, align 1
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"__videobuf_sync\00", [16 x i8] zeroinitializer }, align 32
@__videobuf_sync._entry_ptr = internal global ptr @__videobuf_sync._entry, section ".printk_index", align 4
@__videobuf_sync._entry.37 = internal constant %struct.pi_entry { ptr @.str, ptr @.str.36, ptr @.str.2, i32 580, ptr null, ptr null }, align 1
@__videobuf_sync._entry_ptr.38 = internal global ptr @__videobuf_sync._entry.37, section ".printk_index", align 4
@__videobuf_mmap_mapper._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.39, ptr @.str.2, i32 600, ptr null, ptr null }, align 1
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"__videobuf_mmap_mapper\00", [41 x i8] zeroinitializer }, align 32
@__videobuf_mmap_mapper._entry_ptr = internal global ptr @__videobuf_mmap_mapper._entry, section ".printk_index", align 4
@__videobuf_mmap_mapper._entry.40 = internal constant %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.2, i32 613, ptr null, ptr null }, align 1
@.str.41 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\017vbuf-sg: mmap app bug: offset invalid [offset=0x%lx]\0A\00", [40 x i8] zeroinitializer }, align 32
@__videobuf_mmap_mapper._entry_ptr.42 = internal global ptr @__videobuf_mmap_mapper._entry.40, section ".printk_index", align 4
@videobuf_vm_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } { %struct.vm_operations_struct { ptr @videobuf_vm_open, ptr @videobuf_vm_close, ptr null, ptr null, ptr null, ptr @videobuf_vm_fault, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@__videobuf_mmap_mapper._entry.43 = internal constant %struct.pi_entry { ptr @.str.44, ptr @.str.39, ptr @.str.2, i32 641, ptr null, ptr null }, align 1
@.str.44 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\017vbuf-sg: mmap %p: q=%p %08lx-%08lx pgoff %08lx bufs %d-%d\0A\00", [35 x i8] zeroinitializer }, align 32
@__videobuf_mmap_mapper._entry_ptr.45 = internal global ptr @__videobuf_mmap_mapper._entry.43, section ".printk_index", align 4
@videobuf_vm_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 389, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017vbuf-sg: vm_open %p [count=%d,vma=%08lx-%08lx]\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"videobuf_vm_open\00", [47 x i8] zeroinitializer }, align 32
@videobuf_vm_open._entry_ptr = internal global ptr @videobuf_vm_open._entry, section ".printk_index", align 4
@videobuf_vm_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 402, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017vbuf-sg: vm_close %p [count=%d,vma=%08lx-%08lx]\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"videobuf_vm_close\00", [46 x i8] zeroinitializer }, align 32
@videobuf_vm_close._entry_ptr = internal global ptr @videobuf_vm_close._entry, section ".printk_index", align 4
@videobuf_vm_close._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.2, i32 406, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017vbuf-sg: munmap %p q=%p\0A\00", [37 x i8] zeroinitializer }, align 32
@videobuf_vm_close._entry_ptr.52 = internal global ptr @videobuf_vm_close._entry.50, section ".printk_index", align 4
@videobuf_vm_close._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.49, ptr @.str.2, i32 415, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@videobuf_vm_close._entry_ptr.54 = internal global ptr @videobuf_vm_close._entry.53, section ".printk_index", align 4
@videobuf_vm_fault._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 440, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017vbuf-sg: fault: fault @ %08lx [vma %08lx-%08lx]\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"videobuf_vm_fault\00", [46 x i8] zeroinitializer }, align 32
@videobuf_vm_fault._entry_ptr = internal global ptr @videobuf_vm_fault._entry, section ".printk_index", align 4
@cpu_user = external dso_local local_unnamed_addr global %struct.cpu_user_fns, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.61 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 44, i32 12 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 139, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 330, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 348, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [7 x i8] c"sg_ops\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 648, i32 34 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 481, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 493, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 509, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 215, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 241, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 245, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 183, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 191, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 272, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 287, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 309, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 316, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 122, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 127, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 579, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 600, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 612, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant [16 x i8] c"videobuf_vm_ops\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 451, i32 42 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 640, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 388, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 401, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 406, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 415, i32 4 }
@___asan_gen_.223 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.229 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.230 = private constant [45 x i8] c"../drivers/media/v4l2-core/videobuf-dma-sg.c\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 439, i32 2 }
@llvm.compiler.used = appending global [103 x ptr] [ptr @__UNIQUE_ID_author258, ptr @__UNIQUE_ID_debugtype256, ptr @__UNIQUE_ID_description257, ptr @__UNIQUE_ID_file259, ptr @__UNIQUE_ID_license260, ptr @__ksymtab_videobuf_dma_free, ptr @__ksymtab_videobuf_dma_unmap, ptr @__ksymtab_videobuf_queue_sg_init, ptr @__ksymtab_videobuf_sg_alloc, ptr @__ksymtab_videobuf_to_dma, ptr @__param_debug, ptr @__videobuf_alloc_vb._entry, ptr @__videobuf_alloc_vb._entry_ptr, ptr @__videobuf_iolock._entry, ptr @__videobuf_iolock._entry_ptr, ptr @__videobuf_mmap_mapper._entry, ptr @__videobuf_mmap_mapper._entry.40, ptr @__videobuf_mmap_mapper._entry.43, ptr @__videobuf_mmap_mapper._entry_ptr, ptr @__videobuf_mmap_mapper._entry_ptr.42, ptr @__videobuf_mmap_mapper._entry_ptr.45, ptr @__videobuf_sync._entry, ptr @__videobuf_sync._entry.37, ptr @__videobuf_sync._entry_ptr, ptr @__videobuf_sync._entry_ptr.38, ptr @__videobuf_to_vaddr._entry, ptr @__videobuf_to_vaddr._entry_ptr, ptr @videobuf_dma_free._entry, ptr @videobuf_dma_free._entry_ptr, ptr @videobuf_dma_init_kernel._entry, ptr @videobuf_dma_init_kernel._entry.11, ptr @videobuf_dma_init_kernel._entry.14, ptr @videobuf_dma_init_kernel._entry_ptr, ptr @videobuf_dma_init_kernel._entry_ptr.13, ptr @videobuf_dma_init_kernel._entry_ptr.16, ptr @videobuf_dma_init_overlay._entry, ptr @videobuf_dma_init_overlay._entry_ptr, ptr @videobuf_dma_init_user_locked._entry, ptr @videobuf_dma_init_user_locked._entry.19, ptr @videobuf_dma_init_user_locked._entry_ptr, ptr @videobuf_dma_init_user_locked._entry_ptr.21, ptr @videobuf_dma_map._entry, ptr @videobuf_dma_map._entry.25, ptr @videobuf_dma_map._entry.28, ptr @videobuf_dma_map._entry_ptr, ptr @videobuf_dma_map._entry_ptr.27, ptr @videobuf_dma_map._entry_ptr.30, ptr @videobuf_dma_unmap._entry, ptr @videobuf_dma_unmap._entry_ptr, ptr @videobuf_pages_to_sg._entry, ptr @videobuf_pages_to_sg._entry.33, ptr @videobuf_pages_to_sg._entry_ptr, ptr @videobuf_pages_to_sg._entry_ptr.35, ptr @videobuf_to_dma._entry, ptr @videobuf_to_dma._entry_ptr, ptr @videobuf_vm_close._entry, ptr @videobuf_vm_close._entry.50, ptr @videobuf_vm_close._entry.53, ptr @videobuf_vm_close._entry_ptr, ptr @videobuf_vm_close._entry_ptr.52, ptr @videobuf_vm_close._entry_ptr.54, ptr @videobuf_vm_fault._entry, ptr @videobuf_vm_fault._entry_ptr, ptr @videobuf_vm_open._entry, ptr @videobuf_vm_open._entry_ptr, ptr @debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @sg_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @videobuf_vm_ops, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.55, ptr @.str.56], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videobuf_to_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videobuf_dma_unmap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videobuf_dma_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sg_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videobuf_dma_init_kernel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videobuf_dma_init_kernel._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videobuf_dma_init_kernel._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videobuf_dma_init_user_locked._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videobuf_dma_init_user_locked._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videobuf_dma_init_overlay._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videobuf_dma_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videobuf_dma_map._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videobuf_dma_map._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videobuf_pages_to_sg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videobuf_pages_to_sg._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videobuf_vm_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videobuf_vm_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videobuf_vm_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videobuf_vm_close._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videobuf_vm_close._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videobuf_vm_fault._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @videobuf_to_dma(ptr nocapture noundef readonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.videobuf_buffer, ptr %buf, i32 0, i32 19
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !155

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/v4l2-core/videobuf-dma-sg.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 137, 0\0A.popsection", ""() #8, !srcloc !156
  unreachable

do.end9:                                          ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 394856212, i32 %3)
  %cmp.not = icmp eq i32 %3, 394856212
  br i1 %cmp.not, label %if.end27, label %do.end19, !prof !157

do.end19:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %3, i32 noundef 394856212) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/v4l2-core/videobuf-dma-sg.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 139, 0\0A.popsection", ""() #8, !srcloc !158
  unreachable

if.end27:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  %dma = getelementptr inbounds %struct.videobuf_dma_sg_memory, ptr %1, i32 0, i32 1
  ret ptr %dma
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @videobuf_dma_unmap(ptr noundef %dev, ptr nocapture noundef %dma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 426905874, i32 %1)
  %cmp.not = icmp eq i32 %1, 426905874
  br i1 %cmp.not, label %if.end, label %do.end, !prof !157

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %1, i32 noundef 426905874) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/v4l2-core/videobuf-dma-sg.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 330, 0\0A.popsection", ""() #8, !srcloc !159
  unreachable

if.end:                                           ; preds = %entry
  %sglen = getelementptr inbounds %struct.videobuf_dmabuf, ptr %dma, i32 0, i32 10
  %2 = ptrtoint ptr %sglen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sglen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool7.not = icmp eq i32 %3, 0
  br i1 %tobool7.not, label %if.end.return_crit_edge, label %if.end9

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %sglist = getelementptr inbounds %struct.videobuf_dmabuf, ptr %dma, i32 0, i32 9
  %4 = ptrtoint ptr %sglist to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sglist, align 4
  %nr_pages = getelementptr inbounds %struct.videobuf_dmabuf, ptr %dma, i32 0, i32 11
  %6 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_pages, align 4
  %direction = getelementptr inbounds %struct.videobuf_dmabuf, ptr %dma, i32 0, i32 12
  %8 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %direction, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev, ptr noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef 0) #8
  %10 = ptrtoint ptr %sglist to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sglist, align 4
  tail call void @vfree(ptr noundef %11) #8
  %12 = ptrtoint ptr %sglist to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %sglist, align 4
  %13 = ptrtoint ptr %sglen to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %sglen, align 4
  br label %return

return:                                           ; preds = %if.end9, %if.end.return_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @videobuf_dma_free(ptr nocapture noundef %dma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 426905874, i32 %1)
  %cmp.not = icmp eq i32 %1, 426905874
  br i1 %cmp.not, label %do.body9, label %do.end, !prof !157

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %1, i32 noundef 426905874) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/v4l2-core/videobuf-dma-sg.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 348, 0\0A.popsection", ""() #8, !srcloc !160
  unreachable

do.body9:                                         ; preds = %entry
  %sglen = getelementptr inbounds %struct.videobuf_dmabuf, ptr %dma, i32 0, i32 10
  %2 = ptrtoint ptr %sglen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sglen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool10.not = icmp eq i32 %3, 0
  br i1 %tobool10.not, label %do.end26, label %do.body18, !prof !157

do.body18:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/v4l2-core/videobuf-dma-sg.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 349, 0\0A.popsection", ""() #8, !srcloc !161
  unreachable

do.end26:                                         ; preds = %do.body9
  %pages = getelementptr inbounds %struct.videobuf_dmabuf, ptr %dma, i32 0, i32 3
  %4 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pages, align 4
  %tobool27.not = icmp eq ptr %5, null
  br i1 %tobool27.not, label %do.end26.if.end33_crit_edge, label %if.then28

do.end26.if.end33_crit_edge:                      ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then28:                                        ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #10
  %nr_pages = getelementptr inbounds %struct.videobuf_dmabuf, ptr %dma, i32 0, i32 11
  %6 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_pages, align 4
  %direction = getelementptr inbounds %struct.videobuf_dmabuf, ptr %dma, i32 0, i32 12
  %8 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp30 = icmp eq i32 %9, 2
  tail call void @unpin_user_pages_dirty_lock(ptr noundef nonnull %5, i32 noundef %7, i1 noundef zeroext %cmp30) #8
  %10 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pages, align 4
  tail call void @kfree(ptr noundef %11) #8
  %12 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %pages, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then28, %do.end26.if.end33_crit_edge
  %dma_addr = getelementptr inbounds %struct.videobuf_dmabuf, ptr %dma, i32 0, i32 6
  %13 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dma_addr, align 4
  %tobool34.not = icmp eq ptr %14, null
  br i1 %tobool34.not, label %if.end33.if.end46_crit_edge, label %for.cond.preheader

if.end33.if.end46_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

for.cond.preheader:                               ; preds = %if.end33
  %nr_pages36 = getelementptr inbounds %struct.videobuf_dmabuf, ptr %dma, i32 0, i32 11
  %15 = ptrtoint ptr %nr_pages36 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nr_pages36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp3778.not = icmp eq i32 %16, 0
  br i1 %cmp3778.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %vaddr_pages = getelementptr inbounds %struct.videobuf_dmabuf, ptr %dma, i32 0, i32 5
  %dev = getelementptr inbounds %struct.videobuf_dmabuf, ptr %dma, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.079 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %17 = ptrtoint ptr %vaddr_pages to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vaddr_pages, align 4
  %arrayidx = getelementptr ptr, ptr %18, i32 %i.079
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  %call38 = tail call ptr @page_address(ptr noundef %20) #8
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  %23 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dma_addr, align 4
  %arrayidx40 = getelementptr i32, ptr %24, i32 %i.079
  %25 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx40, align 4
  tail call void @dma_free_attrs(ptr noundef %22, i32 noundef 4096, ptr noundef %call38, i32 noundef %26, i32 noundef 0) #8
  %inc = add nuw i32 %i.079, 1
  %27 = ptrtoint ptr %nr_pages36 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nr_pages36, align 4
  %cmp37 = icmp ult i32 %inc, %28
  br i1 %cmp37, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %29 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dma_addr, align 4
  tail call void @kfree(ptr noundef %30) #8
  %31 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %dma_addr, align 4
  %vaddr_pages43 = getelementptr inbounds %struct.videobuf_dmabuf, ptr %dma, i32 0, i32 5
  %32 = ptrtoint ptr %vaddr_pages43 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vaddr_pages43, align 4
  tail call void @kfree(ptr noundef %33) #8
  %34 = ptrtoint ptr %vaddr_pages43 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %vaddr_pages43, align 4
  %vaddr = getelementptr inbounds %struct.videobuf_dmabuf, ptr %dma, i32 0, i32 4
  %35 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %vaddr, align 4
  tail call void @vunmap(ptr noundef %36) #8
  %37 = ptrtoint ptr %vaddr to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %vaddr, align 4
  br label %if.end46

if.end46:                                         ; preds = %for.end, %if.end33.if.end46_crit_edge
  %bus_addr = getelementptr inbounds %struct.videobuf_dmabuf, ptr %dma, i32 0, i32 8
  %38 = ptrtoint ptr %bus_addr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bus_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool47.not = icmp eq i32 %39, 0
  br i1 %tobool47.not, label %if.end46.if.end50_crit_edge, label %if.then48

if.end46.if.end50_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.then48:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %bus_addr to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %bus_addr, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %if.end46.if.end50_crit_edge
  %direction51 = getelementptr inbounds %struct.videobuf_dmabuf, ptr %dma, i32 0, i32 12
  %41 = ptrtoint ptr %direction51 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 3, ptr %direction51, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unpin_user_pages_dirty_lock(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vunmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @videobuf_sg_alloc(i32 noundef %size) #0 align 64 {
entry:
  %q = alloca %struct.videobuf_queue, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 332, ptr nonnull %q) #8
  %0 = call ptr @memset(ptr %q, i32 255, i32 332)
  %int_ops = getelementptr inbounds %struct.videobuf_queue, ptr %q, i32 0, i32 11
  %1 = ptrtoint ptr %int_ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @sg_ops, ptr %int_ops, align 4
  %msize = getelementptr inbounds %struct.videobuf_queue, ptr %q, i32 0, i32 6
  %2 = ptrtoint ptr %msize to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %size, ptr %msize, align 4
  %call = call ptr @videobuf_alloc_vb(ptr noundef nonnull %q) #8
  call void @llvm.lifetime.end.p0(i64 332, ptr nonnull %q) #8
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @videobuf_alloc_vb(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @videobuf_queue_sg_init(ptr noundef %q, ptr noundef %ops, ptr noundef %dev, ptr noundef %irqlock, i32 noundef %type, i32 noundef %field, i32 noundef %msize, ptr noundef %priv, ptr noundef %ext_lock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @videobuf_queue_core_init(ptr noundef %q, ptr noundef %ops, ptr noundef %dev, ptr noundef %irqlock, i32 noundef %type, i32 noundef %field, i32 noundef %msize, ptr noundef %priv, ptr noundef nonnull @sg_ops, ptr noundef %ext_lock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @videobuf_queue_core_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @__videobuf_alloc_vb(i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %size, 56
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #12
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %call9.i.i, i32 %size
  %priv = getelementptr inbounds %struct.videobuf_buffer, ptr %call9.i.i, i32 0, i32 19
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %add.ptr, ptr %priv, align 8
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 394856212, ptr %add.ptr, align 4
  %dma = getelementptr inbounds %struct.videobuf_dma_sg_memory, ptr %add.ptr, i32 0, i32 1
  %2 = getelementptr inbounds i8, ptr %dma, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 48)
  %4 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 426905874, ptr %dma, align 4
  %5 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %sub = add i32 %size, -144
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %call9.i.i, i32 noundef 144, i32 noundef %sub, ptr noundef %add.ptr, i32 noundef 56) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.1.i.i17 = phi ptr [ %call9.i.i, %if.end.cleanup_crit_edge ], [ %call9.i.i, %do.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.1.i.i17
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @__videobuf_to_vaddr(ptr nocapture noundef readonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.videobuf_buffer, ptr %buf, i32 0, i32 19
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !155

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/v4l2-core/videobuf-dma-sg.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 491, 0\0A.popsection", ""() #8, !srcloc !162
  unreachable

do.end9:                                          ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 394856212, i32 %3)
  %cmp.not = icmp eq i32 %3, 394856212
  br i1 %cmp.not, label %if.end27, label %do.end19, !prof !157

do.end19:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %3, i32 noundef 394856212) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/v4l2-core/videobuf-dma-sg.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 493, 0\0A.popsection", ""() #8, !srcloc !163
  unreachable

if.end27:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  %vaddr = getelementptr inbounds %struct.videobuf_dma_sg_memory, ptr %1, i32 0, i32 1, i32 4
  %4 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vaddr, align 4
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__videobuf_iolock(ptr nocapture noundef readonly %q, ptr nocapture noundef readonly %vb, ptr noundef readonly %fbuf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 19
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !155

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/v4l2-core/videobuf-dma-sg.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 507, 0\0A.popsection", ""() #8, !srcloc !164
  unreachable

do.end9:                                          ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 394856212, i32 %3)
  %cmp.not = icmp eq i32 %3, 394856212
  br i1 %cmp.not, label %if.end27, label %do.end19, !prof !157

do.end19:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %3, i32 noundef 394856212) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/v4l2-core/videobuf-dma-sg.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 509, 0\0A.popsection", ""() #8, !srcloc !165
  unreachable

if.end27:                                         ; preds = %do.end9
  %dma = getelementptr inbounds %struct.videobuf_dma_sg_memory, ptr %1, i32 0, i32 1
  %dev = getelementptr inbounds %struct.videobuf_dma_sg_memory, ptr %1, i32 0, i32 1, i32 7
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %tobool28.not = icmp eq ptr %5, null
  %dev30 = getelementptr inbounds %struct.videobuf_queue, ptr %q, i32 0, i32 3
  %6 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev30, align 4
  br i1 %tobool28.not, label %if.then29, label %if.else

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %dev, align 4
  br label %if.end66

if.else:                                          ; preds = %if.end27
  %cmp36.not = icmp eq ptr %5, %7
  br i1 %cmp36.not, label %if.else.if.end66_crit_edge, label %do.end52, !prof !157

if.else.if.end66_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

do.end52:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 514, i32 noundef 9, ptr noundef null) #8
  br label %if.end66

if.end66:                                         ; preds = %do.end52, %if.else.if.end66_crit_edge, %if.then29
  %memory = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 13
  %9 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %memory, align 8
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %do.body108 [
    i32 1, label %if.end66.sw.bb_crit_edge
    i32 2, label %if.end66.sw.bb_crit_edge210
    i32 3, label %sw.bb94
  ]

if.end66.sw.bb_crit_edge210:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end66.sw.bb_crit_edge:                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

sw.bb:                                            ; preds = %if.end66.sw.bb_crit_edge, %if.end66.sw.bb_crit_edge210
  %baddr = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 16
  %12 = ptrtoint ptr %baddr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %baddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp67 = icmp eq i32 %13, 0
  br i1 %cmp67, label %if.then68, label %if.else74

if.then68:                                        ; preds = %sw.bb
  %size = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 5
  %14 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size, align 4
  %add = add i32 %15, 4095
  %shr = lshr i32 %add, 12
  %16 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i = icmp sgt i32 %16, 0
  br i1 %cmp.i, label %do.end.i, label %if.then68.if.end.i_crit_edge

if.then68.if.end.i_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %shr) #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then68.if.end.i_crit_edge
  %direction1.i = getelementptr inbounds %struct.videobuf_dma_sg_memory, ptr %1, i32 0, i32 1, i32 12
  %17 = ptrtoint ptr %direction1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %direction1.i, align 4
  %18 = shl nuw nsw i32 %shr, 2
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %18, i32 noundef 3520) #12
  %vaddr_pages58.i = getelementptr inbounds %struct.videobuf_dma_sg_memory, ptr %1, i32 0, i32 1, i32 5
  %19 = ptrtoint ptr %vaddr_pages58.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call8.i.i.i, ptr %vaddr_pages58.i, align 4
  %tobool.not59.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not59.i, label %if.end.i.cleanup_crit_edge, label %if.end7.i.i31.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7.i.i31.i:                                  ; preds = %if.end.i
  %call8.i.i30.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %18, i32 noundef 3520) #12
  %dma_addr.i = getelementptr inbounds %struct.videobuf_dma_sg_memory, ptr %1, i32 0, i32 1, i32 6
  %20 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call8.i.i30.i, ptr %dma_addr.i, align 4
  %tobool8.not.i = icmp eq ptr %call8.i.i30.i, null
  br i1 %tobool8.not.i, label %if.then9.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end7.i.i31.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add)
  %cmp1246.not.i = icmp ult i32 %add, 4096
  br i1 %cmp1246.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.then9.i:                                       ; preds = %if.end7.i.i31.i
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %vaddr_pages58.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vaddr_pages58.i, align 4
  tail call void @kfree(ptr noundef %22) #8
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.047.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %25 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dma_addr.i, align 4
  %arrayidx.i = getelementptr i32, ptr %26, i32 %i.047.i
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %24, i32 noundef 4096, ptr noundef %arrayidx.i, i32 noundef 3264, i32 noundef 0) #8
  %cmp15.i = icmp eq ptr %call.i.i, null
  br i1 %cmp15.i, label %for.body.i.out_free_pages.i_crit_edge, label %for.inc.i

for.body.i.out_free_pages.i_crit_edge:            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_pages.i

for.inc.i:                                        ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %27 = load ptr, ptr @mem_map, align 4
  %28 = ptrtoint ptr %call.i.i to i32
  %sub.i = add i32 %28, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %27, i32 %shr.i
  %29 = ptrtoint ptr %vaddr_pages58.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vaddr_pages58.i, align 4
  %arrayidx20.i = getelementptr ptr, ptr %30, i32 %i.047.i
  %31 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %add.ptr.i, ptr %arrayidx20.i, align 4
  %inc.i = add nuw nsw i32 %i.047.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %shr
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %32 = ptrtoint ptr %vaddr_pages58.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vaddr_pages58.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %34 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %34, 512
  %call22.i = tail call ptr @vmap(ptr noundef %33, i32 noundef %shr, i32 noundef 5, i32 noundef %or.i) #8
  %vaddr.i = getelementptr inbounds %struct.videobuf_dma_sg_memory, ptr %1, i32 0, i32 1, i32 4
  %35 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call22.i, ptr %vaddr.i, align 4
  %cmp24.i = icmp eq ptr %call22.i, null
  %36 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp26.i = icmp sgt i32 %36, 0
  br i1 %cmp24.i, label %if.then25.i, label %if.end34.i

if.then25.i:                                      ; preds = %for.end.i
  br i1 %cmp26.i, label %do.end30.i, label %if.then25.i.out_free_pages.i_crit_edge

if.then25.i.out_free_pages.i_crit_edge:           ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_pages.i

do.end30.i:                                       ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #10
  %call32.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %shr) #11
  br label %out_free_pages.i

if.end34.i:                                       ; preds = %for.end.i
  %shl.i = and i32 %add, -4096
  br i1 %cmp26.i, label %do.end39.i, label %if.end34.i.videobuf_dma_init_kernel.exit_crit_edge

if.end34.i.videobuf_dma_init_kernel.exit_crit_edge: ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %videobuf_dma_init_kernel.exit

do.end39.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  %call42.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull %call22.i, i32 noundef %shl.i) #11
  br label %videobuf_dma_init_kernel.exit

out_free_pages.i:                                 ; preds = %do.end30.i, %if.then25.i.out_free_pages.i_crit_edge, %for.body.i.out_free_pages.i_crit_edge
  %i.045.i = phi i32 [ %shr, %if.then25.i.out_free_pages.i_crit_edge ], [ %shr, %do.end30.i ], [ %i.047.i, %for.body.i.out_free_pages.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.045.i)
  %cmp4748.i.not = icmp eq i32 %i.045.i, 0
  br i1 %cmp4748.i.not, label %out_free_pages.i.while.end.i_crit_edge, label %out_free_pages.i.while.body.i_crit_edge

out_free_pages.i.while.body.i_crit_edge:          ; preds = %out_free_pages.i
  br label %while.body.i

out_free_pages.i.while.end.i_crit_edge:           ; preds = %out_free_pages.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %out_free_pages.i.while.body.i_crit_edge
  %i.149.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %i.045.i, %out_free_pages.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %i.149.i, -1
  %37 = ptrtoint ptr %vaddr_pages58.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %vaddr_pages58.i, align 4
  %arrayidx50.i = getelementptr ptr, ptr %38, i32 %dec.i
  %39 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx50.i, align 4
  %call51.i = tail call ptr @page_address(ptr noundef %40) #8
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 4
  %43 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dma_addr.i, align 4
  %arrayidx54.i = getelementptr i32, ptr %44, i32 %dec.i
  %45 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx54.i, align 4
  tail call void @dma_free_attrs(ptr noundef %42, i32 noundef 4096, ptr noundef %call51.i, i32 noundef %46, i32 noundef 0) #8
  %cmp47.i = icmp ugt i32 %i.149.i, 1
  br i1 %cmp47.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %out_free_pages.i.while.end.i_crit_edge
  %47 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dma_addr.i, align 4
  tail call void @kfree(ptr noundef %48) #8
  %49 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %dma_addr.i, align 4
  %50 = ptrtoint ptr %vaddr_pages58.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %vaddr_pages58.i, align 4
  tail call void @kfree(ptr noundef %51) #8
  %52 = ptrtoint ptr %vaddr_pages58.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %vaddr_pages58.i, align 4
  br label %cleanup

videobuf_dma_init_kernel.exit:                    ; preds = %do.end39.i, %if.end34.i.videobuf_dma_init_kernel.exit_crit_edge
  %53 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %vaddr.i, align 4
  %55 = call ptr @memset(ptr %54, i32 0, i32 %shl.i)
  br label %sw.epilog.sink.split

if.else74:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp76 = icmp eq i32 %10, 2
  %bsize = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 14
  %56 = ptrtoint ptr %bsize to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %bsize, align 4
  br i1 %cmp76, label %if.then77, label %if.else84

if.then77:                                        ; preds = %if.else74
  %call80 = tail call fastcc i32 @videobuf_dma_init_user(ptr noundef %dma, i32 noundef %13, i32 noundef %57)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %cmp81.not = icmp eq i32 %call80, 0
  br i1 %cmp81.not, label %if.then77.sw.epilog_crit_edge, label %if.then77.cleanup_crit_edge

if.then77.cleanup_crit_edge:                      ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then77.sw.epilog_crit_edge:                    ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.else84:                                        ; preds = %if.else74
  %call88 = tail call fastcc i32 @videobuf_dma_init_user_locked(ptr noundef %dma, i32 noundef %13, i32 noundef %57)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %cmp89.not = icmp eq i32 %call88, 0
  br i1 %cmp89.not, label %if.else84.sw.epilog_crit_edge, label %if.else84.cleanup_crit_edge

if.else84.cleanup_crit_edge:                      ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else84.sw.epilog_crit_edge:                    ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb94:                                          ; preds = %if.end66
  %cmp95 = icmp eq ptr %fbuf, null
  br i1 %cmp95, label %sw.bb94.cleanup_crit_edge, label %if.end97

sw.bb94.cleanup_crit_edge:                        ; preds = %sw.bb94
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end97:                                         ; preds = %sw.bb94
  %base = getelementptr inbounds %struct.v4l2_framebuffer, ptr %fbuf, i32 0, i32 2
  %58 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base, align 4
  %60 = ptrtoint ptr %59 to i32
  %boff = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 15
  %61 = ptrtoint ptr %boff to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %boff, align 8
  %add98 = add i32 %62, %60
  %size99 = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 5
  %63 = ptrtoint ptr %size99 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %size99, align 4
  %add100 = add i32 %64, 4095
  %shr102 = lshr i32 %add100, 12
  %65 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp.i159 = icmp sgt i32 %65, 0
  br i1 %cmp.i159, label %do.end.i161, label %if.end97.if.end.i163_crit_edge

if.end97.if.end.i163_crit_edge:                   ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i163

do.end.i161:                                      ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  %call.i160 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %shr102, i32 noundef %add98) #11
  br label %if.end.i163

if.end.i163:                                      ; preds = %do.end.i161, %if.end97.if.end.i163_crit_edge
  %direction1.i162 = getelementptr inbounds %struct.videobuf_dma_sg_memory, ptr %1, i32 0, i32 1, i32 12
  %66 = ptrtoint ptr %direction1.i162 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 2, ptr %direction1.i162, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add98)
  %cmp2.i = icmp eq i32 %add98, 0
  br i1 %cmp2.i, label %if.end.i163.cleanup_crit_edge, label %videobuf_dma_init_overlay.exit.thread

if.end.i163.cleanup_crit_edge:                    ; preds = %if.end.i163
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

videobuf_dma_init_overlay.exit.thread:            ; preds = %if.end.i163
  call void @__sanitizer_cov_trace_pc() #10
  %bus_addr.i = getelementptr inbounds %struct.videobuf_dma_sg_memory, ptr %1, i32 0, i32 1, i32 8
  %67 = ptrtoint ptr %bus_addr.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %add98, ptr %bus_addr.i, align 4
  br label %sw.epilog.sink.split

do.body108:                                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/v4l2-core/videobuf-dma-sg.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 564, 0\0A.popsection", ""() #8, !srcloc !166
  unreachable

sw.epilog.sink.split:                             ; preds = %videobuf_dma_init_overlay.exit.thread, %videobuf_dma_init_kernel.exit
  %shr102.sink = phi i32 [ %shr102, %videobuf_dma_init_overlay.exit.thread ], [ %shr, %videobuf_dma_init_kernel.exit ]
  %nr_pages5.i = getelementptr inbounds %struct.videobuf_dma_sg_memory, ptr %1, i32 0, i32 1, i32 11
  %68 = ptrtoint ptr %nr_pages5.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %shr102.sink, ptr %nr_pages5.i, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.else84.sw.epilog_crit_edge, %if.then77.sw.epilog_crit_edge
  %dev114 = getelementptr inbounds %struct.videobuf_queue, ptr %q, i32 0, i32 3
  %69 = ptrtoint ptr %dev114 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev114, align 4
  %71 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 426905874, i32 %72)
  %cmp.not.i = icmp eq i32 %72, 426905874
  br i1 %cmp.not.i, label %do.body7.i, label %do.end.i166, !prof !157

do.end.i166:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %call.i165 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %72, i32 noundef 426905874) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/v4l2-core/videobuf-dma-sg.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 287, 0\0A.popsection", ""() #8, !srcloc !167
  unreachable

do.body7.i:                                       ; preds = %sw.epilog
  %nr_pages.i = getelementptr inbounds %struct.videobuf_dma_sg_memory, ptr %1, i32 0, i32 1, i32 11
  %73 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %nr_pages.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp8.i = icmp eq i32 %74, 0
  br i1 %cmp8.i, label %do.body16.i, label %do.end21.i, !prof !155

do.body16.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/v4l2-core/videobuf-dma-sg.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 288, 0\0A.popsection", ""() #8, !srcloc !168
  unreachable

do.end21.i:                                       ; preds = %do.body7.i
  %pages.i = getelementptr inbounds %struct.videobuf_dma_sg_memory, ptr %1, i32 0, i32 1, i32 3
  %75 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pages.i, align 4
  %tobool22.not.i = icmp eq ptr %76, null
  br i1 %tobool22.not.i, label %do.end21.i.if.end27.i_crit_edge, label %if.then23.i

do.end21.i.if.end27.i_crit_edge:                  ; preds = %do.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.i

if.then23.i:                                      ; preds = %do.end21.i
  %offset.i = getelementptr inbounds %struct.videobuf_dma_sg_memory, ptr %1, i32 0, i32 1, i32 1
  %77 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %offset.i, align 4
  %size.i = getelementptr inbounds %struct.videobuf_dma_sg_memory, ptr %1, i32 0, i32 1, i32 2
  %79 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %size.i, align 4
  %81 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %76, align 4
  %cmp.i.i = icmp eq ptr %82, null
  br i1 %cmp.i.i, label %if.then23.i.videobuf_pages_to_sg.exit.i_crit_edge, label %if.end.i.i

if.then23.i.videobuf_pages_to_sg.exit.i_crit_edge: ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %videobuf_pages_to_sg.exit.i

if.end.i.i:                                       ; preds = %if.then23.i
  %83 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %74, i32 20) #8
  %84 = extractvalue { i32, i1 } %83, 1
  %85 = extractvalue { i32, i1 } %83, 0
  %retval.0.i.i.i167 = select i1 %84, i32 -1, i32 %85
  %call1.i.i = tail call noalias ptr @vmalloc(i32 noundef %retval.0.i.i.i167) #12
  %cmp2.i.i = icmp eq ptr %call1.i.i, null
  br i1 %cmp2.i.i, label %if.end.i.i.videobuf_pages_to_sg.exit.i_crit_edge, label %if.end4.i.i

if.end.i.i.videobuf_pages_to_sg.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %videobuf_pages_to_sg.exit.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  tail call void @sg_init_table(ptr noundef nonnull %call1.i.i, i32 noundef %74) #8
  %86 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %76, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %87, align 4
  %shr.i.i.i = lshr i32 %89, 30
  %90 = zext i32 %shr.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %90, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %shr.i.i.i, label %if.end4.i.i.if.end9.i.i_crit_edge [
    i32 2, label %if.end4.i.i.highmem.i.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i.i
  ]

if.end4.i.i.highmem.i.i_crit_edge:                ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %highmem.i.i

if.end4.i.i.if.end9.i.i_crit_edge:                ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i.i

is_highmem_idx.exit.i.i:                          ; preds = %if.end4.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %91 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %91)
  %cmp2.i.not.i.i = icmp eq i32 %91, 2
  br i1 %cmp2.i.not.i.i, label %is_highmem_idx.exit.i.i.highmem.i.i_crit_edge, label %is_highmem_idx.exit.i.i.if.end9.i.i_crit_edge

is_highmem_idx.exit.i.i.if.end9.i.i_crit_edge:    ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i.i

is_highmem_idx.exit.i.i.highmem.i.i_crit_edge:    ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %highmem.i.i

if.end9.i.i:                                      ; preds = %is_highmem_idx.exit.i.i.if.end9.i.i_crit_edge, %if.end4.i.i.if.end9.i.i_crit_edge
  %sub.i.i = sub i32 4096, %78
  %92 = tail call i32 @llvm.umin.i32(i32 %sub.i.i, i32 %80) #8
  %93 = ptrtoint ptr %call1.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %call1.i.i, align 4
  %95 = ptrtoint ptr %87 to i32
  %and2.i.i.i.i = and i32 %95, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and2.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %do.body11.i.i.i.i, label %do.body5.i.i.i.i, !prof !157

do.body5.i.i.i.i:                                 ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #8, !srcloc !169
  unreachable

do.body11.i.i.i.i:                                ; preds = %if.end9.i.i
  %and.i.i.i.i.i = and i32 %94, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.i.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %sg_set_page.exit.i.i, label %do.body19.i.i.i.i, !prof !157

do.body19.i.i.i.i:                                ; preds = %do.body11.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #8, !srcloc !170
  unreachable

sg_set_page.exit.i.i:                             ; preds = %do.body11.i.i.i.i
  %and.i.i.i.i = and i32 %94, 3
  %or.i.i.i.i = or i32 %and.i.i.i.i, %95
  %96 = ptrtoint ptr %call1.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %or.i.i.i.i, ptr %call1.i.i, align 4
  %offset1.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %call1.i.i, i32 0, i32 1
  %97 = ptrtoint ptr %offset1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %78, ptr %offset1.i.i.i, align 4
  %length.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %call1.i.i, i32 0, i32 2
  %98 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %92, ptr %length.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %74)
  %cmp21118.i.i = icmp sgt i32 %74, 1
  br i1 %cmp21118.i.i, label %for.body.preheader.i.i, label %sg_set_page.exit.i.i.videobuf_pages_to_sg.exit.i_crit_edge

sg_set_page.exit.i.i.videobuf_pages_to_sg.exit.i_crit_edge: ; preds = %sg_set_page.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %videobuf_pages_to_sg.exit.i

for.body.preheader.i.i:                           ; preds = %sg_set_page.exit.i.i
  %sub20.i.i = sub i32 %80, %92
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %sg_set_page.exit111.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %size.addr.0120.i.i = phi i32 [ %sub46.i.i, %sg_set_page.exit111.i.i.for.body.i.i_crit_edge ], [ %sub20.i.i, %for.body.preheader.i.i ]
  %i.0119.i.i = phi i32 [ %inc.i.i, %sg_set_page.exit111.i.i.for.body.i.i_crit_edge ], [ 1, %for.body.preheader.i.i ]
  %arrayidx22.i.i = getelementptr ptr, ptr %76, i32 %i.0119.i.i
  %99 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx22.i.i, align 4
  %cmp23.i.i = icmp eq ptr %100, null
  br i1 %cmp23.i.i, label %nopage.i.i, label %if.end25.i.i

if.end25.i.i:                                     ; preds = %for.body.i.i
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %100, align 4
  %shr.i94.i.i = lshr i32 %102, 30
  %103 = zext i32 %shr.i94.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %103, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %shr.i94.i.i, label %if.end25.i.i.if.end31.i.i_crit_edge [
    i32 2, label %if.end25.i.i.highmem.i.i_crit_edge
    i32 3, label %is_highmem_idx.exit99.i.i
  ]

if.end25.i.i.highmem.i.i_crit_edge:               ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %highmem.i.i

if.end25.i.i.if.end31.i.i_crit_edge:              ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i.i

is_highmem_idx.exit99.i.i:                        ; preds = %if.end25.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %104 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %104)
  %cmp2.i95.not.i.i = icmp eq i32 %104, 2
  br i1 %cmp2.i95.not.i.i, label %is_highmem_idx.exit99.i.i.highmem.i.i_crit_edge, label %is_highmem_idx.exit99.i.i.if.end31.i.i_crit_edge

is_highmem_idx.exit99.i.i.if.end31.i.i_crit_edge: ; preds = %is_highmem_idx.exit99.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i.i

is_highmem_idx.exit99.i.i.highmem.i.i_crit_edge:  ; preds = %is_highmem_idx.exit99.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %highmem.i.i

if.end31.i.i:                                     ; preds = %is_highmem_idx.exit99.i.i.if.end31.i.i_crit_edge, %if.end25.i.i.if.end31.i.i_crit_edge
  %arrayidx32.i.i = getelementptr %struct.scatterlist, ptr %call1.i.i, i32 %i.0119.i.i
  %105 = tail call i32 @llvm.umin.i32(i32 %size.addr.0120.i.i, i32 4096) #8
  %106 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx32.i.i, align 4
  %108 = ptrtoint ptr %100 to i32
  %and2.i.i100.i.i = and i32 %108, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i100.i.i)
  %tobool.not.i.i101.i.i = icmp eq i32 %and2.i.i100.i.i, 0
  br i1 %tobool.not.i.i101.i.i, label %do.body11.i.i105.i.i, label %do.body5.i.i102.i.i, !prof !157

do.body5.i.i102.i.i:                              ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #8, !srcloc !169
  unreachable

do.body11.i.i105.i.i:                             ; preds = %if.end31.i.i
  %and.i.i.i103.i.i = and i32 %107, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i103.i.i)
  %tobool.i.not.i.i104.i.i = icmp eq i32 %and.i.i.i103.i.i, 0
  br i1 %tobool.i.not.i.i104.i.i, label %sg_set_page.exit111.i.i, label %do.body19.i.i106.i.i, !prof !157

do.body19.i.i106.i.i:                             ; preds = %do.body11.i.i105.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #8, !srcloc !170
  unreachable

sg_set_page.exit111.i.i:                          ; preds = %do.body11.i.i105.i.i
  %and.i.i107.i.i = and i32 %107, 3
  %or.i.i108.i.i = or i32 %and.i.i107.i.i, %108
  %109 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %or.i.i108.i.i, ptr %arrayidx32.i.i, align 4
  %offset1.i109.i.i = getelementptr %struct.scatterlist, ptr %call1.i.i, i32 %i.0119.i.i, i32 1
  %110 = ptrtoint ptr %offset1.i109.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %offset1.i109.i.i, align 4
  %length.i110.i.i = getelementptr %struct.scatterlist, ptr %call1.i.i, i32 %i.0119.i.i, i32 2
  %111 = ptrtoint ptr %length.i110.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %105, ptr %length.i110.i.i, align 4
  %sub46.i.i = sub i32 %size.addr.0120.i.i, %105
  %inc.i.i = add nuw nsw i32 %i.0119.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %74
  br i1 %exitcond.not.i.i, label %sg_set_page.exit111.i.i.videobuf_pages_to_sg.exit.i_crit_edge, label %sg_set_page.exit111.i.i.for.body.i.i_crit_edge

sg_set_page.exit111.i.i.for.body.i.i_crit_edge:   ; preds = %sg_set_page.exit111.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

sg_set_page.exit111.i.i.videobuf_pages_to_sg.exit.i_crit_edge: ; preds = %sg_set_page.exit111.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %videobuf_pages_to_sg.exit.i

nopage.i.i:                                       ; preds = %for.body.i.i
  %112 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %112)
  %cmp47.i.i = icmp sgt i32 %112, 1
  br i1 %cmp47.i.i, label %nopage.i.i.cleanup.sink.split.sink.split.i.i_crit_edge, label %nopage.i.i.cleanup.sink.split.i.i_crit_edge

nopage.i.i.cleanup.sink.split.i.i_crit_edge:      ; preds = %nopage.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i.i

nopage.i.i.cleanup.sink.split.sink.split.i.i_crit_edge: ; preds = %nopage.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.sink.split.i.i

highmem.i.i:                                      ; preds = %is_highmem_idx.exit99.i.i.highmem.i.i_crit_edge, %if.end25.i.i.highmem.i.i_crit_edge, %is_highmem_idx.exit.i.i.highmem.i.i_crit_edge, %if.end4.i.i.highmem.i.i_crit_edge
  %113 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %113)
  %cmp52.i.i = icmp sgt i32 %113, 1
  br i1 %cmp52.i.i, label %highmem.i.i.cleanup.sink.split.sink.split.i.i_crit_edge, label %highmem.i.i.cleanup.sink.split.i.i_crit_edge

highmem.i.i.cleanup.sink.split.i.i_crit_edge:     ; preds = %highmem.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i.i

highmem.i.i.cleanup.sink.split.sink.split.i.i_crit_edge: ; preds = %highmem.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.sink.split.i.i

cleanup.sink.split.sink.split.i.i:                ; preds = %highmem.i.i.cleanup.sink.split.sink.split.i.i_crit_edge, %nopage.i.i.cleanup.sink.split.sink.split.i.i_crit_edge
  %.str.34.sink.i.i = phi ptr [ @.str.31, %nopage.i.i.cleanup.sink.split.sink.split.i.i_crit_edge ], [ @.str.34, %highmem.i.i.cleanup.sink.split.sink.split.i.i_crit_edge ]
  %call58.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.34.sink.i.i) #11
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %cleanup.sink.split.sink.split.i.i, %highmem.i.i.cleanup.sink.split.i.i_crit_edge, %nopage.i.i.cleanup.sink.split.i.i_crit_edge
  tail call void @vfree(ptr noundef nonnull %call1.i.i) #8
  br label %videobuf_pages_to_sg.exit.i

videobuf_pages_to_sg.exit.i:                      ; preds = %cleanup.sink.split.i.i, %sg_set_page.exit111.i.i.videobuf_pages_to_sg.exit.i_crit_edge, %sg_set_page.exit.i.i.videobuf_pages_to_sg.exit.i_crit_edge, %if.end.i.i.videobuf_pages_to_sg.exit.i_crit_edge, %if.then23.i.videobuf_pages_to_sg.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ null, %if.then23.i.videobuf_pages_to_sg.exit.i_crit_edge ], [ null, %if.end.i.i.videobuf_pages_to_sg.exit.i_crit_edge ], [ %call1.i.i, %sg_set_page.exit.i.i.videobuf_pages_to_sg.exit.i_crit_edge ], [ null, %cleanup.sink.split.i.i ], [ %call1.i.i, %sg_set_page.exit111.i.i.videobuf_pages_to_sg.exit.i_crit_edge ]
  %sglist.i = getelementptr inbounds %struct.videobuf_dma_sg_memory, ptr %1, i32 0, i32 1, i32 9
  %114 = ptrtoint ptr %sglist.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %retval.0.i.i, ptr %sglist.i, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %videobuf_pages_to_sg.exit.i, %do.end21.i.if.end27.i_crit_edge
  %vaddr.i168 = getelementptr inbounds %struct.videobuf_dma_sg_memory, ptr %1, i32 0, i32 1, i32 4
  %115 = ptrtoint ptr %vaddr.i168 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %vaddr.i168, align 4
  %tobool28.not.i = icmp eq ptr %116, null
  br i1 %tobool28.not.i, label %if.end27.i.if.end34.i170_crit_edge, label %if.then29.i

if.end27.i.if.end34.i170_crit_edge:               ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i170

if.then29.i:                                      ; preds = %if.end27.i
  %117 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %nr_pages.i, align 4
  %119 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %118, i32 20) #8
  %120 = extractvalue { i32, i1 } %119, 1
  %121 = extractvalue { i32, i1 } %119, 0
  %retval.0.i.i120.i = select i1 %120, i32 -1, i32 %121
  %call1.i121.i = tail call noalias ptr @vzalloc(i32 noundef %retval.0.i.i120.i) #12
  %cmp.i122.i = icmp eq ptr %call1.i121.i, null
  br i1 %cmp.i122.i, label %if.then29.i.videobuf_vmalloc_to_sg.exit.i_crit_edge, label %if.end.i123.i

if.then29.i.videobuf_vmalloc_to_sg.exit.i_crit_edge: ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %videobuf_vmalloc_to_sg.exit.i

if.end.i123.i:                                    ; preds = %if.then29.i
  tail call void @sg_init_table(ptr noundef nonnull %call1.i121.i, i32 noundef %118) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %cmp235.i.i = icmp sgt i32 %118, 0
  br i1 %cmp235.i.i, label %if.end.i123.i.for.body.i124.i_crit_edge, label %if.end.i123.i.videobuf_vmalloc_to_sg.exit.i_crit_edge

if.end.i123.i.videobuf_vmalloc_to_sg.exit.i_crit_edge: ; preds = %if.end.i123.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %videobuf_vmalloc_to_sg.exit.i

if.end.i123.i.for.body.i124.i_crit_edge:          ; preds = %if.end.i123.i
  br label %for.body.i124.i

for.body.i124.i:                                  ; preds = %sg_set_page.exit.i141.i.for.body.i124.i_crit_edge, %if.end.i123.i.for.body.i124.i_crit_edge
  %i.037.i.i = phi i32 [ %inc.i139.i, %sg_set_page.exit.i141.i.for.body.i124.i_crit_edge ], [ 0, %if.end.i123.i.for.body.i124.i_crit_edge ]
  %virt.addr.036.i.i = phi ptr [ %add.ptr.i.i, %sg_set_page.exit.i141.i.for.body.i124.i_crit_edge ], [ %116, %if.end.i123.i.for.body.i124.i_crit_edge ]
  %call3.i.i = tail call ptr @vmalloc_to_page(ptr noundef %virt.addr.036.i.i) #8
  %cmp4.i.i = icmp eq ptr %call3.i.i, null
  br i1 %cmp4.i.i, label %err.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %for.body.i124.i
  %122 = ptrtoint ptr %call3.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %call3.i.i, align 4
  %shr.i.i125.i = lshr i32 %123, 30
  %124 = zext i32 %shr.i.i125.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %124, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %shr.i.i125.i, label %do.body.i.i.do.end18.i.i_crit_edge [
    i32 2, label %do.body.i.i.do.body12.i.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i127.i
  ]

do.body.i.i.do.body12.i.i_crit_edge:              ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body12.i.i

do.body.i.i.do.end18.i.i_crit_edge:               ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18.i.i

is_highmem_idx.exit.i127.i:                       ; preds = %do.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %125 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %125)
  %cmp2.i.not.i126.i = icmp eq i32 %125, 2
  br i1 %cmp2.i.not.i126.i, label %is_highmem_idx.exit.i127.i.do.body12.i.i_crit_edge, label %is_highmem_idx.exit.i127.i.do.end18.i.i_crit_edge, !prof !155

is_highmem_idx.exit.i127.i.do.end18.i.i_crit_edge: ; preds = %is_highmem_idx.exit.i127.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18.i.i

is_highmem_idx.exit.i127.i.do.body12.i.i_crit_edge: ; preds = %is_highmem_idx.exit.i127.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body12.i.i

do.body12.i.i:                                    ; preds = %is_highmem_idx.exit.i127.i.do.body12.i.i_crit_edge, %do.body.i.i.do.body12.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/v4l2-core/videobuf-dma-sg.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #8, !srcloc !171
  unreachable

do.end18.i.i:                                     ; preds = %is_highmem_idx.exit.i127.i.do.end18.i.i_crit_edge, %do.body.i.i.do.end18.i.i_crit_edge
  %arrayidx.i.i = getelementptr %struct.scatterlist, ptr %call1.i121.i, i32 %i.037.i.i
  %126 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx.i.i, align 4
  %128 = ptrtoint ptr %call3.i.i to i32
  %and2.i.i.i128.i = and i32 %128, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i128.i)
  %tobool.not.i.i.i129.i = icmp eq i32 %and2.i.i.i128.i, 0
  br i1 %tobool.not.i.i.i129.i, label %do.body11.i.i.i133.i, label %do.body5.i.i.i130.i, !prof !157

do.body5.i.i.i130.i:                              ; preds = %do.end18.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #8, !srcloc !169
  unreachable

do.body11.i.i.i133.i:                             ; preds = %do.end18.i.i
  %and.i.i.i.i131.i = and i32 %127, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i131.i)
  %tobool.i.not.i.i.i132.i = icmp eq i32 %and.i.i.i.i131.i, 0
  br i1 %tobool.i.not.i.i.i132.i, label %sg_set_page.exit.i141.i, label %do.body19.i.i.i134.i, !prof !157

do.body19.i.i.i134.i:                             ; preds = %do.body11.i.i.i133.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #8, !srcloc !170
  unreachable

sg_set_page.exit.i141.i:                          ; preds = %do.body11.i.i.i133.i
  %and.i.i.i135.i = and i32 %127, 3
  %or.i.i.i136.i = or i32 %and.i.i.i135.i, %128
  %129 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %or.i.i.i136.i, ptr %arrayidx.i.i, align 4
  %offset1.i.i137.i = getelementptr %struct.scatterlist, ptr %call1.i121.i, i32 %i.037.i.i, i32 1
  %130 = ptrtoint ptr %offset1.i.i137.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 0, ptr %offset1.i.i137.i, align 4
  %length.i.i138.i = getelementptr %struct.scatterlist, ptr %call1.i121.i, i32 %i.037.i.i, i32 2
  %131 = ptrtoint ptr %length.i.i138.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 4096, ptr %length.i.i138.i, align 4
  %inc.i139.i = add nuw nsw i32 %i.037.i.i, 1
  %add.ptr.i.i = getelementptr i8, ptr %virt.addr.036.i.i, i32 4096
  %exitcond.not.i140.i = icmp eq i32 %inc.i139.i, %118
  br i1 %exitcond.not.i140.i, label %sg_set_page.exit.i141.i.videobuf_vmalloc_to_sg.exit.i_crit_edge, label %sg_set_page.exit.i141.i.for.body.i124.i_crit_edge

sg_set_page.exit.i141.i.for.body.i124.i_crit_edge: ; preds = %sg_set_page.exit.i141.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i124.i

sg_set_page.exit.i141.i.videobuf_vmalloc_to_sg.exit.i_crit_edge: ; preds = %sg_set_page.exit.i141.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %videobuf_vmalloc_to_sg.exit.i

err.i.i:                                          ; preds = %for.body.i124.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @vfree(ptr noundef nonnull %call1.i121.i) #8
  br label %videobuf_vmalloc_to_sg.exit.i

videobuf_vmalloc_to_sg.exit.i:                    ; preds = %err.i.i, %sg_set_page.exit.i141.i.videobuf_vmalloc_to_sg.exit.i_crit_edge, %if.end.i123.i.videobuf_vmalloc_to_sg.exit.i_crit_edge, %if.then29.i.videobuf_vmalloc_to_sg.exit.i_crit_edge
  %retval.0.i142.i = phi ptr [ null, %err.i.i ], [ null, %if.then29.i.videobuf_vmalloc_to_sg.exit.i_crit_edge ], [ %call1.i121.i, %if.end.i123.i.videobuf_vmalloc_to_sg.exit.i_crit_edge ], [ %call1.i121.i, %sg_set_page.exit.i141.i.videobuf_vmalloc_to_sg.exit.i_crit_edge ]
  %sglist33.i = getelementptr inbounds %struct.videobuf_dma_sg_memory, ptr %1, i32 0, i32 1, i32 9
  %132 = ptrtoint ptr %sglist33.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %retval.0.i142.i, ptr %sglist33.i, align 4
  br label %if.end34.i170

if.end34.i170:                                    ; preds = %videobuf_vmalloc_to_sg.exit.i, %if.end27.i.if.end34.i170_crit_edge
  %bus_addr.i169 = getelementptr inbounds %struct.videobuf_dma_sg_memory, ptr %1, i32 0, i32 1, i32 8
  %133 = ptrtoint ptr %bus_addr.i169 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %bus_addr.i169, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool35.not.i = icmp eq i32 %134, 0
  br i1 %tobool35.not.i, label %if.end34.i170.if.end53.i_crit_edge, label %if.then36.i

if.end34.i170.if.end53.i_crit_edge:               ; preds = %if.end34.i170
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53.i

if.then36.i:                                      ; preds = %if.end34.i170
  %call37.i = tail call noalias ptr @vmalloc(i32 noundef 20) #12
  %sglist38.i = getelementptr inbounds %struct.videobuf_dma_sg_memory, ptr %1, i32 0, i32 1, i32 9
  %135 = ptrtoint ptr %sglist38.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %call37.i, ptr %sglist38.i, align 4
  %cmp40.not.i = icmp eq ptr %call37.i, null
  br i1 %cmp40.not.i, label %if.then36.i.if.end53.i_crit_edge, label %if.then41.i

if.then36.i.if.end53.i_crit_edge:                 ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53.i

if.then41.i:                                      ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #10
  %sglen.i = getelementptr inbounds %struct.videobuf_dma_sg_memory, ptr %1, i32 0, i32 1, i32 10
  %136 = ptrtoint ptr %sglen.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 1, ptr %sglen.i, align 4
  %137 = ptrtoint ptr %bus_addr.i169 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %bus_addr.i169, align 4
  %and.i = and i32 %138, -4096
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %call37.i, i32 0, i32 3
  %139 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %and.i, ptr %dma_address.i, align 4
  %and45.i = and i32 %138, 4095
  %offset48.i = getelementptr inbounds %struct.scatterlist, ptr %call37.i, i32 0, i32 1
  %140 = ptrtoint ptr %offset48.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %and45.i, ptr %offset48.i, align 4
  %141 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %nr_pages.i, align 4
  %mul.i = shl i32 %142, 12
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %call37.i, i32 0, i32 4
  %143 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %mul.i, ptr %dma_length.i, align 4
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.then41.i, %if.then36.i.if.end53.i_crit_edge, %if.end34.i170.if.end53.i_crit_edge
  %sglist54.i = getelementptr inbounds %struct.videobuf_dma_sg_memory, ptr %1, i32 0, i32 1, i32 9
  %144 = ptrtoint ptr %sglist54.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %sglist54.i, align 4
  %cmp55.i = icmp eq ptr %145, null
  br i1 %cmp55.i, label %if.then56.i, label %if.end64.i

if.then56.i:                                      ; preds = %if.end53.i
  %146 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %cmp57.i = icmp sgt i32 %146, 0
  br i1 %cmp57.i, label %do.end60.i, label %if.then56.i.cleanup_crit_edge

if.then56.i.cleanup_crit_edge:                    ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end60.i:                                       ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #10
  %call62.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #11
  br label %cleanup

if.end64.i:                                       ; preds = %if.end53.i
  %147 = ptrtoint ptr %bus_addr.i169 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %bus_addr.i169, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool66.not.i = icmp eq i32 %148, 0
  br i1 %tobool66.not.i, label %if.then67.i, label %if.end64.i.cleanup_crit_edge

if.end64.i.cleanup_crit_edge:                     ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then67.i:                                      ; preds = %if.end64.i
  %149 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %nr_pages.i, align 4
  %direction.i = getelementptr inbounds %struct.videobuf_dma_sg_memory, ptr %1, i32 0, i32 1, i32 12
  %151 = ptrtoint ptr %direction.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %direction.i, align 4
  %call70.i = tail call i32 @dma_map_sg_attrs(ptr noundef %70, ptr noundef nonnull %145, i32 noundef %150, i32 noundef %152, i32 noundef 0) #8
  %sglen71.i = getelementptr inbounds %struct.videobuf_dma_sg_memory, ptr %1, i32 0, i32 1, i32 10
  %153 = ptrtoint ptr %sglen71.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %call70.i, ptr %sglen71.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70.i)
  %cmp73.i = icmp eq i32 %call70.i, 0
  br i1 %cmp73.i, label %do.end76.i, label %if.then67.i.cleanup_crit_edge

if.then67.i.cleanup_crit_edge:                    ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end76.i:                                       ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #10
  %call78.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.24) #11
  %154 = ptrtoint ptr %sglist54.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %sglist54.i, align 4
  tail call void @vfree(ptr noundef %155) #8
  %156 = ptrtoint ptr %sglist54.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr null, ptr %sglist54.i, align 4
  %157 = ptrtoint ptr %sglen71.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 0, ptr %sglen71.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end76.i, %if.then67.i.cleanup_crit_edge, %if.end64.i.cleanup_crit_edge, %do.end60.i, %if.then56.i.cleanup_crit_edge, %if.end.i163.cleanup_crit_edge, %sw.bb94.cleanup_crit_edge, %if.else84.cleanup_crit_edge, %if.then77.cleanup_crit_edge, %while.end.i, %if.then9.i, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call80, %if.then77.cleanup_crit_edge ], [ %call88, %if.else84.cleanup_crit_edge ], [ -22, %sw.bb94.cleanup_crit_edge ], [ -22, %if.end.i163.cleanup_crit_edge ], [ -12, %while.end.i ], [ -12, %if.then9.i ], [ -12, %if.end.i.cleanup_crit_edge ], [ -12, %do.end76.i ], [ -12, %do.end60.i ], [ -12, %if.then56.i.cleanup_crit_edge ], [ 0, %if.then67.i.cleanup_crit_edge ], [ 0, %if.end64.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__videobuf_sync(ptr nocapture noundef readonly %q, ptr nocapture noundef readonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.videobuf_buffer, ptr %buf, i32 0, i32 19
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.body5_crit_edge, label %lor.rhs, !prof !155

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body5

lor.rhs:                                          ; preds = %entry
  %sglen = getelementptr inbounds %struct.videobuf_dma_sg_memory, ptr %1, i32 0, i32 1, i32 10
  %2 = ptrtoint ptr %sglen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sglen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %lor.rhs.do.body5_crit_edge, label %do.end10, !prof !155

lor.rhs.do.body5_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body5

do.body5:                                         ; preds = %lor.rhs.do.body5_crit_edge, %entry.do.body5_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/v4l2-core/videobuf-dma-sg.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 577, 0\0A.popsection", ""() #8, !srcloc !172
  unreachable

do.end10:                                         ; preds = %lor.rhs
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 394856212, i32 %5)
  %cmp.not = icmp eq i32 %5, 394856212
  br i1 %cmp.not, label %if.end28, label %do.end20, !prof !157

do.end20:                                         ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %5, i32 noundef 394856212) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/v4l2-core/videobuf-dma-sg.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 579, 0\0A.popsection", ""() #8, !srcloc !173
  unreachable

if.end28:                                         ; preds = %do.end10
  %dma29 = getelementptr inbounds %struct.videobuf_dma_sg_memory, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dma29 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 426905874, i32 %7)
  %cmp31.not = icmp eq i32 %7, 426905874
  br i1 %cmp31.not, label %if.end52, label %do.end41, !prof !157

do.end41:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %7, i32 noundef 426905874) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/v4l2-core/videobuf-dma-sg.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 580, 0\0A.popsection", ""() #8, !srcloc !174
  unreachable

if.end52:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.videobuf_queue, ptr %q, i32 0, i32 3
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %sglist = getelementptr inbounds %struct.videobuf_dma_sg_memory, ptr %1, i32 0, i32 1, i32 9
  %10 = ptrtoint ptr %sglist to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sglist, align 4
  %nr_pages = getelementptr inbounds %struct.videobuf_dma_sg_memory, ptr %1, i32 0, i32 1, i32 11
  %12 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr_pages, align 4
  %direction = getelementptr inbounds %struct.videobuf_dma_sg_memory, ptr %1, i32 0, i32 1, i32 12
  %14 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %direction, align 4
  tail call void @dma_sync_sg_for_cpu(ptr noundef %9, ptr noundef %11, i32 noundef %13, i32 noundef %15) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__videobuf_mmap_mapper(ptr noundef %q, ptr noundef readonly %buf, ptr nocapture noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.videobuf_buffer, ptr %buf, i32 0, i32 19
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body5, label %do.end10, !prof !155

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/v4l2-core/videobuf-dma-sg.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 599, 0\0A.popsection", ""() #8, !srcloc !175
  unreachable

do.end10:                                         ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 394856212, i32 %3)
  %cmp.not = icmp eq i32 %3, 394856212
  br i1 %cmp.not, label %do.end10.for.body_crit_edge, label %do.end20, !prof !157

do.end10.for.body_crit_edge:                      ; preds = %do.end10
  br label %for.body

do.end20:                                         ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %3, i32 noundef 394856212) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/v4l2-core/videobuf-dma-sg.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 600, 0\0A.popsection", ""() #8, !srcloc !176
  unreachable

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end10.for.body_crit_edge
  %first.0126 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %do.end10.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.videobuf_queue, ptr %q, i32 0, i32 9, i32 %first.0126
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %cmp30 = icmp eq ptr %5, %buf
  br i1 %cmp30, label %if.then31, label %for.inc

if.then31:                                        ; preds = %for.body
  %bsize = getelementptr inbounds %struct.videobuf_buffer, ptr %buf, i32 0, i32 14
  %6 = ptrtoint ptr %bsize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bsize, align 4
  %add = add i32 %7, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add)
  %phi.cmp = icmp ult i32 %add, 4096
  br i1 %phi.cmp, label %if.then31.if.then36_crit_edge, label %if.end45

if.then31.if.then36_crit_edge:                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then36

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %first.0126, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.inc.if.then36_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.if.then36_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then36

if.then36:                                        ; preds = %for.inc.if.then36_crit_edge, %if.then31.if.then36_crit_edge
  %8 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp37 = icmp sgt i32 %8, 0
  br i1 %cmp37, label %do.end41, label %if.then36.done_crit_edge

if.then36.done_crit_edge:                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

do.end41:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %9 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vm_pgoff, align 4
  %shl = shl i32 %10, 12
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %shl) #11
  br label %done

if.end45:                                         ; preds = %if.then31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3264, i32 noundef 8) #13
  %cmp47 = icmp eq ptr %call7.i, null
  br i1 %cmp47, label %if.end45.done_crit_edge, label %for.body52.preheader

if.end45.done_crit_edge:                          ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

for.body52.preheader:                             ; preds = %if.end45
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %cmp55 = icmp eq ptr %13, null
  br i1 %cmp55, label %for.body52.preheader.for.inc70_crit_edge, label %if.end57

for.body52.preheader.for.inc70_crit_edge:         ; preds = %for.body52.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc70

if.end57:                                         ; preds = %for.body52.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %map60 = getelementptr inbounds %struct.videobuf_buffer, ptr %13, i32 0, i32 17
  %14 = ptrtoint ptr %map60 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i, ptr %map60, align 8
  %15 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vma, align 4
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  %baddr = getelementptr inbounds %struct.videobuf_buffer, ptr %18, i32 0, i32 16
  %19 = ptrtoint ptr %baddr to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %16, ptr %baddr, align 4
  br label %for.inc70

for.inc70:                                        ; preds = %if.end57, %for.body52.preheader.for.inc70_crit_edge
  %20 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %call7.i, align 8
  %q73 = getelementptr inbounds %struct.videobuf_mapping, ptr %call7.i, i32 0, i32 1
  %21 = ptrtoint ptr %q73 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %q, ptr %q73, align 4
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %22 = ptrtoint ptr %vm_ops to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @videobuf_vm_ops, ptr %vm_ops, align 4
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %23 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vm_flags, align 4
  %or = and i32 %24, -67387393
  %and75 = or i32 %or, 67371008
  store i32 %and75, ptr %vm_flags, align 4
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 15
  %25 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i, ptr %vm_private_data, align 4
  %26 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp76 = icmp sgt i32 %26, 0
  br i1 %cmp76, label %do.end80, label %for.inc70.done_crit_edge

for.inc70.done_crit_edge:                         ; preds = %for.inc70
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

do.end80:                                         ; preds = %for.inc70
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %vma, align 4
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %29 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %vm_end, align 4
  %vm_pgoff83 = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %31 = ptrtoint ptr %vm_pgoff83 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vm_pgoff83, align 4
  %call84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull %call7.i, ptr noundef %q, i32 noundef %28, i32 noundef %30, i32 noundef %32, i32 noundef %first.0126, i32 noundef %first.0126) #11
  br label %done

done:                                             ; preds = %do.end80, %for.inc70.done_crit_edge, %if.end45.done_crit_edge, %do.end41, %if.then36.done_crit_edge
  %retval1.0 = phi i32 [ -12, %if.end45.done_crit_edge ], [ -22, %do.end41 ], [ -22, %if.then36.done_crit_edge ], [ 0, %do.end80 ], [ 0, %for.inc70.done_crit_edge ]
  ret i32 %retval1.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @videobuf_dma_init_user(ptr nocapture noundef %dma, i32 noundef %data, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !145) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %mm = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mm, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@videobuf_dma_init_user, %if.then.i.i)) #8
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !177

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %5, i1 noundef zeroext false) #8
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %entry
  %mmap_lock.i = getelementptr inbounds %struct.anon.10, ptr %5, i32 0, i32 15
  tail call void @down_read(ptr noundef %mmap_lock.i) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@videobuf_dma_init_user, %if.then.i3.i)) #8
          to label %mmap_read_lock.exit [label %if.then.i3.i], !srcloc !177

if.then.i3.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %5, i1 noundef zeroext false, i1 noundef zeroext true) #8
  br label %mmap_read_lock.exit

mmap_read_lock.exit:                              ; preds = %if.then.i3.i, %__mmap_lock_trace_start_locking.exit.i
  %call1 = tail call fastcc i32 @videobuf_dma_init_user_locked(ptr noundef %dma, i32 noundef %data, i32 noundef %size)
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %mm4 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 53
  %8 = ptrtoint ptr %mm4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mm4, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@videobuf_dma_init_user, %if.then.i.i1)) #8
          to label %mmap_read_unlock.exit [label %if.then.i.i1], !srcloc !177

if.then.i.i1:                                     ; preds = %mmap_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__mmap_lock_do_trace_released(ptr noundef %9, i1 noundef zeroext false) #8
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i1, %mmap_read_lock.exit
  %mmap_lock.i2 = getelementptr inbounds %struct.anon.10, ptr %9, i32 0, i32 15
  tail call void @up_read(ptr noundef %mmap_lock.i2) #8
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @videobuf_dma_init_user_locked(ptr nocapture noundef %dma, i32 noundef %data, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %direction1 = getelementptr inbounds %struct.videobuf_dmabuf, ptr %dma, i32 0, i32 12
  %0 = ptrtoint ptr %direction1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %direction1, align 4
  %and = and i32 %data, -4096
  %shr = lshr i32 %data, 12
  %add = add i32 %data, -1
  %sub = add i32 %add, %size
  %shr8 = lshr i32 %sub, 12
  %and9 = and i32 %data, 4095
  %offset = getelementptr inbounds %struct.videobuf_dmabuf, ptr %dma, i32 0, i32 1
  %1 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %and9, ptr %offset, align 4
  %size10 = getelementptr inbounds %struct.videobuf_dmabuf, ptr %dma, i32 0, i32 2
  %2 = ptrtoint ptr %size10 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %size, ptr %size10, align 4
  %sub11 = sub nsw i32 %shr8, %shr
  %add12 = add nsw i32 %sub11, 1
  %nr_pages = getelementptr inbounds %struct.videobuf_dmabuf, ptr %dma, i32 0, i32 11
  %3 = ptrtoint ptr %nr_pages to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %add12, ptr %nr_pages, align 4
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add12, i32 4) #8
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !155

kmalloc_array.exit.thread:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pages3 = getelementptr inbounds %struct.videobuf_dmabuf, ptr %dma, i32 0, i32 3
  %6 = ptrtoint ptr %pages3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %pages3, align 4
  br label %cleanup

if.end7.i:                                        ; preds = %entry
  %7 = extractvalue { i32, i1 } %4, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3264) #12
  %pages = getelementptr inbounds %struct.videobuf_dmabuf, ptr %dma, i32 0, i32 3
  %8 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call8.i, ptr %pages, align 4
  %cmp = icmp eq ptr %call8.i, null
  br i1 %cmp, label %if.end7.i.cleanup_crit_edge, label %if.end17

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %if.end7.i
  %9 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp18 = icmp sgt i32 %9, 0
  br i1 %cmp18, label %do.end22, label %if.end17.if.end25_crit_edge

if.end17.if.end25_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

do.end22:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr_pages, align 4
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %data, i32 noundef %size, i32 noundef %11) #11
  br label %if.end25

if.end25:                                         ; preds = %do.end22, %if.end17.if.end25_crit_edge
  %12 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr_pages, align 4
  %14 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pages, align 4
  %call30 = tail call i32 @pin_user_pages(i32 noundef %and, i32 noundef %13, i32 noundef 65553, ptr noundef %15, ptr noundef null) #8
  %16 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr_pages, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call30, i32 %17)
  %cmp32.not = icmp eq i32 %call30, %17
  br i1 %cmp32.not, label %if.end25.cleanup_crit_edge, label %if.then33

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then33:                                        ; preds = %if.end25
  %18 = tail call i32 @llvm.smax.i32(i32 %call30, i32 0)
  %19 = ptrtoint ptr %nr_pages to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %nr_pages, align 4
  %20 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp36 = icmp sgt i32 %20, 0
  br i1 %cmp36, label %do.end40, label %if.then33.if.end44_crit_edge

if.then33.if.end44_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

do.end40:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %call30, i32 noundef %18) #11
  br label %if.end44

if.end44:                                         ; preds = %do.end40, %if.then33.if.end44_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp45 = icmp slt i32 %call30, 0
  %spec.select1 = select i1 %cmp45, i32 %call30, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.end25.cleanup_crit_edge, %if.end7.i.cleanup_crit_edge, %kmalloc_array.exit.thread
  %retval.0 = phi i32 [ %spec.select1, %if.end44 ], [ -12, %if.end7.i.cleanup_crit_edge ], [ 0, %if.end25.cleanup_crit_edge ], [ -12, %kmalloc_array.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmap(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pin_user_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmalloc_to_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_sg_for_cpu(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @videobuf_vm_open(ptr nocapture noundef readonly %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 15
  %0 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_private_data, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp sgt i32 %2, 1
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %1, align 4
  %5 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vma, align 4
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %7 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vm_end, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %1, i32 noundef %4, i32 noundef %6, i32 noundef %8) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %1, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %1, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @videobuf_vm_close(ptr nocapture noundef readonly %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 15
  %0 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_private_data, align 4
  %q1 = getelementptr inbounds %struct.videobuf_mapping, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %q1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %q1, align 4
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp sgt i32 %4, 1
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 4
  %7 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vma, align 4
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %9 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vm_end, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %1, i32 noundef %6, i32 noundef %8, i32 noundef %10) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %1, align 4
  %dec = add i32 %12, -1
  store i32 %dec, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp4 = icmp eq i32 %dec, 0
  br i1 %cmp4, label %if.then5, label %if.end.if.end52_crit_edge

if.end.if.end52_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.then5:                                         ; preds = %if.end
  %13 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp6 = icmp sgt i32 %13, 0
  br i1 %cmp6, label %do.end10, label %if.then5.if.end13_crit_edge

if.then5.if.end13_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

do.end10:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %1, ptr noundef %3) #11
  br label %if.end13

if.end13:                                         ; preds = %do.end10, %if.then5.if.end13_crit_edge
  %ext_lock.i = getelementptr inbounds %struct.videobuf_queue, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %ext_lock.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ext_lock.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end13.videobuf_queue_lock.exit_crit_edge

if.end13.videobuf_queue_lock.exit_crit_edge:      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %videobuf_queue_lock.exit

if.then.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #8
  br label %videobuf_queue_lock.exit

videobuf_queue_lock.exit:                         ; preds = %if.then.i, %if.end13.videobuf_queue_lock.exit_crit_edge
  %ops = getelementptr inbounds %struct.videobuf_queue, ptr %3, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %videobuf_queue_lock.exit
  %i.086 = phi i32 [ 0, %videobuf_queue_lock.exit ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.videobuf_queue, ptr %3, i32 0, i32 9, i32 %i.086
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %cmp15 = icmp eq ptr %17, null
  br i1 %cmp15, label %for.body.for.inc_crit_edge, label %if.end17

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end17:                                         ; preds = %for.body
  %priv = getelementptr inbounds %struct.videobuf_buffer, ptr %17, i32 0, i32 19
  %18 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv, align 8
  %tobool.not = icmp eq ptr %19, null
  br i1 %tobool.not, label %if.end17.for.inc_crit_edge, label %if.end21

if.end17.for.inc_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end21:                                         ; preds = %if.end17
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 394856212, i32 %21)
  %cmp22.not = icmp eq i32 %21, 394856212
  br i1 %cmp22.not, label %if.end38, label %do.end28, !prof !157

do.end28:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %21, i32 noundef 394856212) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/v4l2-core/videobuf-dma-sg.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 415, 0\0A.popsection", ""() #8, !srcloc !178
  unreachable

if.end38:                                         ; preds = %if.end21
  %map41 = getelementptr inbounds %struct.videobuf_buffer, ptr %17, i32 0, i32 17
  %22 = ptrtoint ptr %map41 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %map41, align 8
  %cmp42.not = icmp eq ptr %23, %1
  br i1 %cmp42.not, label %if.end44, label %if.end38.for.inc_crit_edge

if.end38.for.inc_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end44:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %map41 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %map41, align 8
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx, align 4
  %baddr = getelementptr inbounds %struct.videobuf_buffer, ptr %26, i32 0, i32 16
  %27 = ptrtoint ptr %baddr to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %baddr, align 4
  %28 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops, align 4
  %buf_release = getelementptr inbounds %struct.videobuf_queue_ops, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %buf_release to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %buf_release, align 4
  %32 = load ptr, ptr %arrayidx, align 4
  tail call void %31(ptr noundef %3, ptr noundef %32) #8
  br label %for.inc

for.inc:                                          ; preds = %if.end44, %if.end38.for.inc_crit_edge, %if.end17.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.086, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  %33 = ptrtoint ptr %ext_lock.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ext_lock.i, align 4
  %tobool.not.i84 = icmp eq ptr %34, null
  br i1 %tobool.not.i84, label %if.then.i85, label %for.end.videobuf_queue_unlock.exit_crit_edge

for.end.videobuf_queue_unlock.exit_crit_edge:     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %videobuf_queue_unlock.exit

if.then.i85:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %3) #8
  br label %videobuf_queue_unlock.exit

videobuf_queue_unlock.exit:                       ; preds = %if.then.i85, %for.end.videobuf_queue_unlock.exit_crit_edge
  tail call void @kfree(ptr noundef %1) #8
  br label %if.end52

if.end52:                                         ; preds = %videobuf_queue_unlock.exit, %if.end.if.end52_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @videobuf_vm_fault(ptr nocapture noundef %vmf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp sgt i32 %0, 2
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vmf, align 4
  %address = getelementptr inbounds %struct.anon.13, ptr %vmf, i32 0, i32 3
  %3 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %address, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %2, align 4
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 1
  %7 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vm_end, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, i32 noundef %4, i32 noundef %6, i32 noundef %8) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 1051844, i32 noundef 0, i32 noundef 0, ptr noundef null) #8
  %tobool.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpu_user to i32))
  %9 = load ptr, ptr @cpu_user, align 4
  %address5 = getelementptr inbounds %struct.anon.13, ptr %vmf, i32 0, i32 3
  %10 = ptrtoint ptr %address5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %address5, align 4
  tail call void %9(ptr noundef nonnull %call38.i.i.i, i32 noundef %11) #8
  %page6 = getelementptr inbounds %struct.vm_fault, ptr %vmf, i32 0, i32 6
  %12 = ptrtoint ptr %page6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call38.i.i.i, ptr %page6, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ 1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !14, !15, !16, !18, !20, !21, !22, !24, !26, !27, !28, !30, !32, !34, !36, !37, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !123, !124, !125, !126, !128, !129, !130, !131, !133, !134, !135, !137, !138, !140, !141, !142, !143}
!llvm.named.register.sp = !{!145}
!llvm.module.flags = !{!146, !147, !148, !149, !150, !151, !152, !153}
!llvm.ident = !{!154}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/v4l2-core/videobuf-dma-sg.c", i32 45, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype256, !1, !"__UNIQUE_ID_debugtype256", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description257, !4, !"__UNIQUE_ID_description257", i1 false, i1 false}
!4 = !{!"../drivers/media/v4l2-core/videobuf-dma-sg.c", i32 47, i32 1}
!5 = !{ptr @__UNIQUE_ID_author258, !6, !"__UNIQUE_ID_author258", i1 false, i1 false}
!6 = !{!"../drivers/media/v4l2-core/videobuf-dma-sg.c", i32 48, i32 1}
!7 = !{ptr @__UNIQUE_ID_file259, !8, !"__UNIQUE_ID_file259", i1 false, i1 false}
!8 = !{!"../drivers/media/v4l2-core/videobuf-dma-sg.c", i32 49, i32 1}
!9 = !{ptr @__UNIQUE_ID_license260, !8, !"__UNIQUE_ID_license260", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/v4l2-core/videobuf-dma-sg.c", i32 139, i32 2}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @videobuf_to_dma._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @videobuf_to_dma._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @__ksymtab_videobuf_to_dma, !17, !"__ksymtab_videobuf_to_dma", i1 false, i1 false}
!17 = !{!"../drivers/media/v4l2-core/videobuf-dma-sg.c", i32 143, i32 1}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/v4l2-core/videobuf-dma-sg.c", i32 330, i32 2}
!20 = !{ptr @videobuf_dma_unmap._entry, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @videobuf_dma_unmap._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @__ksymtab_videobuf_dma_unmap, !23, !"__ksymtab_videobuf_dma_unmap", i1 false, i1 false}
!23 = !{!"../drivers/media/v4l2-core/videobuf-dma-sg.c", i32 343, i32 1}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/v4l2-core/videobuf-dma-sg.c", i32 348, i32 2}
!26 = !{ptr @videobuf_dma_free._entry, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @videobuf_dma_free._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @__ksymtab_videobuf_dma_free, !29, !"__ksymtab_videobuf_dma_free", i1 false, i1 false}
!29 = !{!"../drivers/media/v4l2-core/videobuf-dma-sg.c", i32 380, i32 1}
!30 = !{ptr @__ksymtab_videobuf_sg_alloc, !31, !"__ksymtab_videobuf_sg_alloc", i1 false, i1 false}
!31 = !{!"../drivers/media/v4l2-core/videobuf-dma-sg.c", i32 669, i32 1}
!32 = !{ptr @__ksymtab_videobuf_queue_sg_init, !33, !"__ksymtab_videobuf_queue_sg_init", i1 false, i1 false}
!33 = !{!"../drivers/media/v4l2-core/videobuf-dma-sg.c", i32 684, i32 1}
!34 = !{ptr @debug, !35, !"debug", i1 false, i1 false}
!35 = !{!"../drivers/media/v4l2-core/videobuf-dma-sg.c", i32 44, i32 12}
!36 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!37 = !{ptr @sg_ops, !38, !"sg_ops", i1 false, i1 false}
!38 = !{!"../drivers/media/v4l2-core/videobuf-dma-sg.c", i32 648, i32 34}
!39 = !{ptr @.str.5, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/v4l2-core/videobuf-dma-sg.c", i32 481, i32 2}
!41 = !{ptr @.str.6, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @__videobuf_alloc_vb._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @__videobuf_alloc_vb._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.7, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/v4l2-core/videobuf-dma-sg.c", i32 493, i32 2}
!46 = !{ptr @__videobuf_to_vaddr._entry, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @__videobuf_to_vaddr._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.8, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/v4l2-core/videobuf-dma-sg.c", i32 509, i32 2}
!50 = !{ptr @__videobuf_iolock._entry, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @__videobuf_iolock._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.9, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/v4l2-core/videobuf-dma-sg.c", i32 215, i32 2}
!54 = !{ptr @.str.10, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @videobuf_dma_init_kernel._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @videobuf_dma_init_kernel._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.12, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/v4l2-core/videobuf-dma-sg.c", i32 241, i32 3}
!59 = !{ptr @videobuf_dma_init_kernel._entry.11, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @videobuf_dma_init_kernel._entry_ptr.13, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.15, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/v4l2-core/videobuf-dma-sg.c", i32 245, i32 2}
!63 = !{ptr @videobuf_dma_init_kernel._entry.14, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @videobuf_dma_init_kernel._entry_ptr.16, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.17, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/v4l2-core/videobuf-dma-sg.c", i32 183, i32 2}
!67 = !{ptr @.str.18, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @videobuf_dma_init_user_locked._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @videobuf_dma_init_user_locked._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.20, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/v4l2-core/videobuf-dma-sg.c", i32 191, i32 3}
!72 = !{ptr @videobuf_dma_init_user_locked._entry.19, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @videobuf_dma_init_user_locked._entry_ptr.21, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.22, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/v4l2-core/videobuf-dma-sg.c", i32 272, i32 2}
!76 = !{ptr @.str.23, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @videobuf_dma_init_overlay._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @videobuf_dma_init_overlay._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.24, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/v4l2-core/videobuf-dma-sg.c", i32 287, i32 2}
!81 = !{ptr @videobuf_dma_map._entry, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @videobuf_dma_map._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.26, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/v4l2-core/videobuf-dma-sg.c", i32 309, i32 3}
!85 = !{ptr @videobuf_dma_map._entry.25, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @videobuf_dma_map._entry_ptr.27, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.29, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/v4l2-core/videobuf-dma-sg.c", i32 316, i32 4}
!89 = !{ptr @videobuf_dma_map._entry.28, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @videobuf_dma_map._entry_ptr.30, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.31, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/v4l2-core/videobuf-dma-sg.c", i32 122, i32 2}
!93 = !{ptr @.str.32, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @videobuf_pages_to_sg._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @videobuf_pages_to_sg._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.34, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/v4l2-core/videobuf-dma-sg.c", i32 127, i32 2}
!98 = !{ptr @videobuf_pages_to_sg._entry.33, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @videobuf_pages_to_sg._entry_ptr.35, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.36, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/v4l2-core/videobuf-dma-sg.c", i32 579, i32 2}
!102 = !{ptr @__videobuf_sync._entry, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @__videobuf_sync._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @__videobuf_sync._entry.37, !105, !"_entry", i1 false, i1 false}
!105 = !{!"../drivers/media/v4l2-core/videobuf-dma-sg.c", i32 580, i32 2}
!106 = !{ptr @__videobuf_sync._entry_ptr.38, !105, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.39, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/v4l2-core/videobuf-dma-sg.c", i32 600, i32 2}
!109 = !{ptr @__videobuf_mmap_mapper._entry, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @__videobuf_mmap_mapper._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.41, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/v4l2-core/videobuf-dma-sg.c", i32 612, i32 3}
!113 = !{ptr @__videobuf_mmap_mapper._entry.40, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @__videobuf_mmap_mapper._entry_ptr.42, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.44, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/v4l2-core/videobuf-dma-sg.c", i32 640, i32 2}
!117 = !{ptr @__videobuf_mmap_mapper._entry.43, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @__videobuf_mmap_mapper._entry_ptr.45, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @videobuf_vm_ops, !120, !"videobuf_vm_ops", i1 false, i1 false}
!120 = !{!"../drivers/media/v4l2-core/videobuf-dma-sg.c", i32 451, i32 42}
!121 = !{ptr @.str.46, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/v4l2-core/videobuf-dma-sg.c", i32 388, i32 2}
!123 = !{ptr @.str.47, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @videobuf_vm_open._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @videobuf_vm_open._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.48, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/v4l2-core/videobuf-dma-sg.c", i32 401, i32 2}
!128 = !{ptr @.str.49, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @videobuf_vm_close._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @videobuf_vm_close._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.51, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/v4l2-core/videobuf-dma-sg.c", i32 406, i32 3}
!133 = !{ptr @videobuf_vm_close._entry.50, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @videobuf_vm_close._entry_ptr.52, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @videobuf_vm_close._entry.53, !136, !"_entry", i1 false, i1 false}
!136 = !{!"../drivers/media/v4l2-core/videobuf-dma-sg.c", i32 415, i32 4}
!137 = !{ptr @videobuf_vm_close._entry_ptr.54, !136, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.55, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/v4l2-core/videobuf-dma-sg.c", i32 439, i32 2}
!140 = !{ptr @.str.56, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @videobuf_vm_fault._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @videobuf_vm_fault._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = distinct !{null, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!145 = !{!"sp"}
!146 = !{i32 1, !"wchar_size", i32 2}
!147 = !{i32 1, !"min_enum_size", i32 4}
!148 = !{i32 8, !"branch-target-enforcement", i32 0}
!149 = !{i32 8, !"sign-return-address", i32 0}
!150 = !{i32 8, !"sign-return-address-all", i32 0}
!151 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!152 = !{i32 7, !"uwtable", i32 1}
!153 = !{i32 7, !"frame-pointer", i32 2}
!154 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!155 = !{!"branch_weights", i32 1, i32 2000}
!156 = !{i64 2154653205, i64 2154653711, i64 2154653242, i64 2154653298, i64 2154653332, i64 2154653356, i64 2154653397, i64 2154653418, i64 2154653446, i64 2154653480}
!157 = !{!"branch_weights", i32 2000, i32 1}
!158 = !{i64 2154656537, i64 2154657043, i64 2154656574, i64 2154656630, i64 2154656664, i64 2154656688, i64 2154656729, i64 2154656750, i64 2154656778, i64 2154656812}
!159 = !{i64 2154683449, i64 2154683955, i64 2154683486, i64 2154683542, i64 2154683576, i64 2154683600, i64 2154683641, i64 2154683662, i64 2154683690, i64 2154683724}
!160 = !{i64 2154688392, i64 2154692959, i64 2154688429, i64 2154688485, i64 2154688519, i64 2154688543, i64 2154688584, i64 2154688605, i64 2154688633, i64 2154688667}
!161 = !{i64 2154694095, i64 2154694601, i64 2154694132, i64 2154694188, i64 2154694222, i64 2154694246, i64 2154694287, i64 2154694308, i64 2154694336, i64 2154694370}
!162 = !{i64 2154710484, i64 2154710990, i64 2154710521, i64 2154710577, i64 2154710611, i64 2154710635, i64 2154710676, i64 2154710697, i64 2154710725, i64 2154710759}
!163 = !{i64 2154713816, i64 2154714322, i64 2154713853, i64 2154713909, i64 2154713943, i64 2154713967, i64 2154714008, i64 2154714029, i64 2154714057, i64 2154714091}
!164 = !{i64 2154715446, i64 2154715952, i64 2154715483, i64 2154715539, i64 2154715573, i64 2154715597, i64 2154715638, i64 2154715659, i64 2154715687, i64 2154715721}
!165 = !{i64 2154718778, i64 2154719284, i64 2154718815, i64 2154718871, i64 2154718905, i64 2154718929, i64 2154718970, i64 2154718991, i64 2154719019, i64 2154719053}
!166 = !{i64 2154721636, i64 2154722142, i64 2154721673, i64 2154721729, i64 2154721763, i64 2154721787, i64 2154721828, i64 2154721849, i64 2154721877, i64 2154721911}
!167 = !{i64 2154675102, i64 2154675608, i64 2154675139, i64 2154675195, i64 2154675229, i64 2154675253, i64 2154675294, i64 2154675315, i64 2154675343, i64 2154675377}
!168 = !{i64 2154676760, i64 2154677266, i64 2154676797, i64 2154676853, i64 2154676887, i64 2154676911, i64 2154676952, i64 2154676973, i64 2154677001, i64 2154677035}
!169 = !{i64 2154192565, i64 2154193057, i64 2154192602, i64 2154192658, i64 2154192692, i64 2154192716, i64 2154192757, i64 2154192778, i64 2154192806, i64 2154192840}
!170 = !{i64 2154194175, i64 2154194667, i64 2154194212, i64 2154194268, i64 2154194302, i64 2154194326, i64 2154194367, i64 2154194388, i64 2154194416, i64 2154194450}
!171 = !{i64 2154640407, i64 2154640912, i64 2154640444, i64 2154640500, i64 2154640534, i64 2154640558, i64 2154640599, i64 2154640620, i64 2154640648, i64 2154640682}
!172 = !{i64 2154723304, i64 2154723810, i64 2154723341, i64 2154723397, i64 2154723431, i64 2154723455, i64 2154723496, i64 2154723517, i64 2154723545, i64 2154723579}
!173 = !{i64 2154726636, i64 2154727142, i64 2154726673, i64 2154726729, i64 2154726763, i64 2154726787, i64 2154726828, i64 2154726849, i64 2154726877, i64 2154726911}
!174 = !{i64 2154729988, i64 2154730494, i64 2154730025, i64 2154730081, i64 2154730115, i64 2154730139, i64 2154730180, i64 2154730201, i64 2154730229, i64 2154730263}
!175 = !{i64 2154731621, i64 2154732127, i64 2154731658, i64 2154731714, i64 2154731748, i64 2154731772, i64 2154731813, i64 2154731834, i64 2154731862, i64 2154731896}
!176 = !{i64 2154734953, i64 2154739520, i64 2154734990, i64 2154735046, i64 2154735080, i64 2154735104, i64 2154735145, i64 2154735166, i64 2154735194, i64 2154735228}
!177 = !{i64 2148968164, i64 2148968169, i64 2148968182, i64 2148968226, i64 2148968260, i64 2148968281}
!178 = !{i64 2154704303, i64 2154704809, i64 2154704340, i64 2154704396, i64 2154704430, i64 2154704454, i64 2154704495, i64 2154704516, i64 2154704544, i64 2154704578}
