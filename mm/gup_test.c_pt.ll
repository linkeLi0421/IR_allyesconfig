; ModuleID = '/llk/IR_all_yes/mm/gup_test.c_pt.bc'
source_filename = "../mm/gup_test.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.68 }
%struct.atomic_t = type { i32 }
%union.anon.68 = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.gup_test = type { i64, i64, i64, i64, i32, i32, i32, [8 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.54, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.14 }
%struct.llist_node = type { ptr }
%union.anon.14 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.32 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%union.anon.54 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.anon.16 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.page = type { i32, %union.anon.21, %union.anon.31, %struct.atomic_t, i32 }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.31 = type { %struct.atomic_t }
%struct.anon.25 = type { i32, i8, i8, %struct.atomic_t, i32 }

@__initcall__kmod_gup_test__217_250_gup_test_init7 = internal global ptr @gup_test_init, section ".initcall7.init", align 4
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gup_test\00", [23 x i8] zeroinitializer }, align 32
@gup_test_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gup_test_ioctl, ptr null, ptr null, i32 0, ptr @nonseekable_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mm/gup_test.c\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"pages[%lu] is NOT dma-pinned\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gup_test failure\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"pages[%lu] is NOT pinnable but pinned\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"VM_BUG_ON_PAGE(!hpage_pincount_available(page))\00", [48 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@zero_pfn = external dso_local local_unnamed_addr global i32, align 4
@dump_pages_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 80, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014ZEROING due to out of range: .which_pages[%u]: %u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dump_pages_test\00", [16 x i8] zeroinitializer }, align 32
@dump_pages_test._entry_ptr = internal global ptr @dump_pages_test._entry, section ".printk_index", align 4
@dump_pages_test._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.4, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016---- page #%u, starting from user virt addr: 0x%llx\0A\00", [41 x i8] zeroinitializer }, align 32
@dump_pages_test._entry_ptr.14 = internal global ptr @dump_pages_test._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"gup_test: dump_pages() test\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 3226494721, i64 3226494722, i64 3226494723, i64 3226494724, i64 3226494725, i64 3226494726]
@__sancov_gen_cov_switch_values.17 = internal global [6 x i64] [i64 4, i64 32, i64 3226494722, i64 3226494723, i64 3226494725, i64 3226494726]
@__sancov_gen_cov_switch_values.18 = internal global [8 x i64] [i64 6, i64 32, i64 3226494721, i64 3226494722, i64 3226494723, i64 3226494724, i64 3226494725, i64 3226494726]
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 244, i32 29 }
@___asan_gen_.22 = private unnamed_addr constant [14 x i8] c"gup_test_fops\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 237, i32 37 }
@___asan_gen_.26 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 156, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 50, i32 8 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 53, i32 21 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 56, i32 5 }
@___asan_gen_.41 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 698, i32 1 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 910, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 79, i32 4 }
@___asan_gen_.55 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 90, i32 4 }
@___asan_gen_.62 = private constant [17 x i8] c"../mm/gup_test.c\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 93, i32 7 }
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 717, i32 2 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__initcall__kmod_gup_test__217_250_gup_test_init7, ptr @dump_pages_test._entry, ptr @dump_pages_test._entry.12, ptr @dump_pages_test._entry_ptr, ptr @dump_pages_test._entry_ptr.14, ptr @.str, ptr @gup_test_fops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gup_test_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_pages_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_pages_test._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gup_test_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str, i16 noundef zeroext 384, ptr noundef null, ptr noundef null, ptr noundef nonnull @gup_test_fops) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file_unsafe(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gup_test_ioctl(ptr nocapture noundef readnone %filep, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  %gup = alloca %struct.gup_test, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %gup) #9
  %0 = call ptr @memset(ptr %gup, i32 255, i32 80)
  %cmd.off = add i32 %cmd, 1068472575
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %cmd.off)
  %switch = icmp ult i32 %cmd.off, 6
  br i1 %switch, label %sw.epilog, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %1 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 156) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %sw.epilog.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

sw.epilog.if.then11.i.i_crit_edge:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %sw.epilog
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 80, i32 -1226833920) #12
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !47

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %gup, i32 noundef 80) #9
  %3 = call i32 @llvm.read_register.i32(metadata !37) #9
  %and.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !48
  %and.i.i.i.i = and i32 %5, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !50
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %gup, ptr noundef %1, i32 noundef 80) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #9, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !47

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %sw.epilog.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 80, %sw.epilog.if.then11.i.i_crit_edge ], [ 80, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 80, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %gup, i32 %sub.i.i
  %6 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %call1 = call fastcc i32 @__gup_test_ioctl(i32 noundef %cmd, ptr noundef nonnull %gup)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then.i16, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i16:                                      ; preds = %if.end
  call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 174) #9
  %call.i.i15 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i15, label %if.then.i16.cleanup_crit_edge, label %copy_to_user.exit

if.then.i16.cleanup_crit_edge:                    ; preds = %if.then.i16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.then.i16
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i20 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %gup, i32 noundef 80) #9
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %gup, i32 noundef 80) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool6.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool6.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.then.i16.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then.i16.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %gup) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nonseekable_open(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__gup_test_ioctl(i32 noundef %cmd, ptr noundef %gup) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %cmd, 1068472573
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %0)
  %1 = icmp ult i32 %0, -2
  %size = getelementptr inbounds %struct.gup_test, ptr %gup, i32 0, i32 3
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %3)
  %cmp2 = icmp ugt i64 %3, 4294967295
  br i1 %cmp2, label %entry.cleanup_crit_edge, label %kvcalloc.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

kvcalloc.exit:                                    ; preds = %entry
  %sh.diff = lshr i64 %3, 10
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %4 = and i32 %tr.sh.diff, -4
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %4, i32 noundef 3520, i32 noundef -1) #13
  %tobool.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not, label %kvcalloc.exit.cleanup_crit_edge, label %if.end5

kvcalloc.exit.cleanup_crit_edge:                  ; preds = %kvcalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %kvcalloc.exit
  br i1 %1, label %land.lhs.true, label %if.end5.if.end12_crit_edge

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end5
  %5 = tail call i32 @llvm.read_register.i32(metadata !37) #9
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %mm = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 53
  %9 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mm, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@__gup_test_ioctl, %if.then.i.i)) #9
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !51

if.then.i.i:                                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %10, i1 noundef zeroext false) #9
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %land.lhs.true
  %mmap_lock.i = getelementptr inbounds %struct.anon.16, ptr %10, i32 0, i32 15
  %call.i = tail call i32 @down_read_killable(ptr noundef %mmap_lock.i) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@__gup_test_ioctl, %if.then.i4.i)) #9
          to label %mmap_read_lock_killable.exit [label %if.then.i4.i], !srcloc !51

if.then.i4.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %10, i1 noundef zeroext false, i1 noundef zeroext %cmp.i) #9
  br label %mmap_read_lock_killable.exit

mmap_read_lock_killable.exit:                     ; preds = %if.then.i4.i, %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool10.not = icmp eq i32 %call.i, 0
  br i1 %tobool10.not, label %mmap_read_lock_killable.exit.if.end12_crit_edge, label %mmap_read_lock_killable.exit.free_pages_crit_edge

mmap_read_lock_killable.exit.free_pages_crit_edge: ; preds = %mmap_read_lock_killable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_pages

mmap_read_lock_killable.exit.if.end12_crit_edge:  ; preds = %mmap_read_lock_killable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end12:                                         ; preds = %mmap_read_lock_killable.exit.if.end12_crit_edge, %if.end5.if.end12_crit_edge
  %nr_pages_per_call = getelementptr inbounds %struct.gup_test, ptr %gup, i32 0, i32 4
  %11 = ptrtoint ptr %nr_pages_per_call to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr_pages_per_call, align 8
  %call13 = tail call i64 @ktime_get() #9
  %addr14 = getelementptr inbounds %struct.gup_test, ptr %gup, i32 0, i32 2
  %13 = ptrtoint ptr %addr14 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %addr14, align 8
  %conv16222 = and i64 %14, 4294967295
  %15 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %size, align 8
  %add223 = add i64 %16, %14
  call void @__sanitizer_cov_trace_cmp8(i64 %add223, i64 %conv16222)
  %cmp19224 = icmp ugt i64 %add223, %conv16222
  br i1 %cmp19224, label %for.body.lr.ph, label %if.end12.for.end_crit_edge

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end12
  %test_flags = getelementptr inbounds %struct.gup_test, ptr %gup, i32 0, i32 6
  %gup_flags60 = getelementptr inbounds %struct.gup_test, ptr %gup, i32 0, i32 5
  %17 = ptrtoint ptr %nr_pages_per_call to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nr_pages_per_call, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %18)
  %cmp22.not285 = icmp eq i32 %12, %18
  br i1 %cmp22.not285, label %if.end25.lr.ph, label %for.body.lr.ph.for.end_crit_edge

for.body.lr.ph.for.end_crit_edge:                 ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end25.lr.ph:                                   ; preds = %for.body.lr.ph
  %conv15 = trunc i64 %14 to i32
  br label %if.end25

for.cond:                                         ; preds = %sw.epilog
  %add71 = add i32 %nr.2, %i.0225290
  %conv16 = zext i32 %next.0 to i64
  %19 = ptrtoint ptr %addr14 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %addr14, align 8
  %21 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %size, align 8
  %add = add i64 %22, %20
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv16)
  %cmp19 = icmp ugt i64 %add, %conv16
  br i1 %cmp19, label %for.body, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.cond
  %23 = ptrtoint ptr %nr_pages_per_call to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nr_pages_per_call, align 8
  %cmp22.not = icmp eq i32 %nr.2, %24
  br i1 %cmp22.not, label %for.body.if.end25_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.if.end25_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.end25:                                         ; preds = %for.body.if.end25_crit_edge, %if.end25.lr.ph
  %i.0225290 = phi i32 [ 0, %if.end25.lr.ph ], [ %add71, %for.body.if.end25_crit_edge ]
  %addr.0226289 = phi i32 [ %conv15, %if.end25.lr.ph ], [ %next.0, %for.body.if.end25_crit_edge ]
  %nr.0227288 = phi i32 [ %12, %if.end25.lr.ph ], [ %nr.2, %for.body.if.end25_crit_edge ]
  %conv16228287 = phi i64 [ %conv16222, %if.end25.lr.ph ], [ %conv16, %for.body.if.end25_crit_edge ]
  %add229286 = phi i64 [ %add223, %if.end25.lr.ph ], [ %add, %for.body.if.end25_crit_edge ]
  %mul = shl i32 %nr.0227288, 12
  %add26 = add i32 %mul, %addr.0226289
  %conv27 = zext i32 %add26 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add229286, i64 %conv27)
  %cmp31 = icmp ult i64 %add229286, %conv27
  %conv37 = trunc i64 %add229286 to i32
  %sub = sub i32 %conv37, %addr.0226289
  %div38178 = lshr i32 %sub, 12
  %next.0 = select i1 %cmp31, i32 %conv37, i32 %add26
  %nr.1 = select i1 %cmp31, i32 %div38178, i32 %nr.0227288
  %25 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %if.end25.unlock_crit_edge [
    i32 -1068472575, label %sw.bb
    i32 -1068472572, label %sw.bb41
    i32 -1068472574, label %sw.bb45
    i32 -1068472571, label %sw.bb49
    i32 -1068472573, label %sw.bb53
    i32 -1068472570, label %sw.bb57
  ]

if.end25.unlock_crit_edge:                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

sw.bb:                                            ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %gup_flags60 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %gup_flags60, align 4
  %add.ptr = getelementptr ptr, ptr %call.i.i.i, i32 %i.0225290
  %call40 = tail call i32 @get_user_pages_fast(i32 noundef %addr.0226289, i32 noundef %nr.1, i32 noundef %27, ptr noundef %add.ptr) #9
  br label %sw.epilog

sw.bb41:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %gup_flags60 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %gup_flags60, align 4
  %add.ptr43 = getelementptr ptr, ptr %call.i.i.i, i32 %i.0225290
  %call44 = tail call i32 @get_user_pages(i32 noundef %addr.0226289, i32 noundef %nr.1, i32 noundef %29, ptr noundef %add.ptr43, ptr noundef null) #9
  br label %sw.epilog

sw.bb45:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %gup_flags60 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %gup_flags60, align 4
  %add.ptr47 = getelementptr ptr, ptr %call.i.i.i, i32 %i.0225290
  %call48 = tail call i32 @pin_user_pages_fast(i32 noundef %addr.0226289, i32 noundef %nr.1, i32 noundef %31, ptr noundef %add.ptr47) #9
  br label %sw.epilog

sw.bb49:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %gup_flags60 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %gup_flags60, align 4
  %add.ptr51 = getelementptr ptr, ptr %call.i.i.i, i32 %i.0225290
  %call52 = tail call i32 @pin_user_pages(i32 noundef %addr.0226289, i32 noundef %nr.1, i32 noundef %33, ptr noundef %add.ptr51, ptr noundef null) #9
  br label %sw.epilog

sw.bb53:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %gup_flags60 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %gup_flags60, align 4
  %or = or i32 %35, 65536
  %add.ptr55 = getelementptr ptr, ptr %call.i.i.i, i32 %i.0225290
  %call56 = tail call i32 @pin_user_pages(i32 noundef %addr.0226289, i32 noundef %nr.1, i32 noundef %or, ptr noundef %add.ptr55, ptr noundef null) #9
  br label %sw.epilog

sw.bb57:                                          ; preds = %if.end25
  %36 = ptrtoint ptr %test_flags to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %test_flags, align 8
  %and = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool58.not = icmp eq i32 %and, 0
  %38 = ptrtoint ptr %gup_flags60 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %gup_flags60, align 4
  %add.ptr64 = getelementptr ptr, ptr %call.i.i.i, i32 %i.0225290
  br i1 %tobool58.not, label %if.else, label %if.then59

if.then59:                                        ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #11
  %call62 = tail call i32 @pin_user_pages(i32 noundef %addr.0226289, i32 noundef %nr.1, i32 noundef %39, ptr noundef %add.ptr64, ptr noundef null) #9
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #11
  %call65 = tail call i32 @get_user_pages(i32 noundef %addr.0226289, i32 noundef %nr.1, i32 noundef %39, ptr noundef %add.ptr64, ptr noundef null) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %if.then59, %sw.bb53, %sw.bb49, %sw.bb45, %sw.bb41, %sw.bb
  %nr.2 = phi i32 [ %call62, %if.then59 ], [ %call65, %if.else ], [ %call56, %sw.bb53 ], [ %call52, %sw.bb49 ], [ %call48, %sw.bb45 ], [ %call44, %sw.bb41 ], [ %call40, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nr.2)
  %cmp67 = icmp slt i32 %nr.2, 1
  br i1 %cmp67, label %sw.epilog.for.end_crit_edge, label %for.cond

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %sw.epilog.for.end_crit_edge, %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge, %for.body.lr.ph.for.end_crit_edge, %if.end12.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.end12.for.end_crit_edge ], [ 0, %for.body.lr.ph.for.end_crit_edge ], [ %add71, %for.cond.for.end_crit_edge ], [ %add71, %for.body.for.end_crit_edge ], [ %i.0225290, %sw.epilog.for.end_crit_edge ]
  %conv16.lcssa = phi i64 [ %conv16222, %if.end12.for.end_crit_edge ], [ %conv16222, %for.body.lr.ph.for.end_crit_edge ], [ %conv16, %for.cond.for.end_crit_edge ], [ %conv16, %for.body.for.end_crit_edge ], [ %conv16228287, %sw.epilog.for.end_crit_edge ]
  %call72 = tail call i64 @ktime_get() #9
  %sub.i = sub i64 %call72, %call13
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp8.i.i.i = icmp slt i64 %sub.i, 0
  %40 = tail call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #9
  %41 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %40, i32 0) #12, !srcloc !52
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %41, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %41, 1
  %42 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %40, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #12, !srcloc !53
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %42, 0
  %div1811.i.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %sub210.i.i.i = sub nsw i64 0, %div1811.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div1811.i.i.i
  %43 = ptrtoint ptr %gup to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %cond213.i.i.i, ptr %gup, align 8
  %44 = ptrtoint ptr %addr14 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %addr14, align 8
  %sub76 = sub i64 %conv16.lcssa, %45
  %46 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %sub76, ptr %size, align 8
  %47 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %cmd, label %for.end.if.end81_crit_edge [
    i32 -1068472574, label %for.end.sw.bb.i_crit_edge
    i32 -1068472571, label %for.end.sw.bb.i_crit_edge328
    i32 -1068472573, label %for.end.sw.bb.i_crit_edge329
    i32 -1068472570, label %for.end.if.then80_crit_edge
  ]

for.end.if.then80_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then80

for.end.sw.bb.i_crit_edge329:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

for.end.sw.bb.i_crit_edge328:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

for.end.sw.bb.i_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

for.end.if.end81_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

sw.bb.i:                                          ; preds = %for.end.sw.bb.i_crit_edge, %for.end.sw.bb.i_crit_edge328, %for.end.sw.bb.i_crit_edge329
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.lcssa)
  %cmp87.not.i = icmp eq i32 %i.0.lcssa, 0
  br i1 %cmp87.not.i, label %sw.bb.i.if.end81_crit_edge, label %for.body.lr.ph.i

sw.bb.i.if.end81_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

for.body.lr.ph.i:                                 ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1068472573, i32 %cmd)
  %cmp22.i = icmp eq i32 %cmd, -1068472573
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.088.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %call.i.i.i, i32 %i.088.i
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i, align 4
  %50 = getelementptr inbounds %struct.page, ptr %49, i32 0, i32 1
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %50, align 4
  %and.i.i.i.i = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i5.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i5.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.i, !prof !47

if.then.i.i.i.i:                                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i.i = add i32 %52, -1
  br label %_compound_head.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %49 to i32
  br label %_compound_head.exit.i.i.i

_compound_head.exit.i.i.i:                        ; preds = %if.end.i.i.i.i, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi i32 [ %sub.i.i.i.i, %if.then.i.i.i.i ], [ %53, %if.end.i.i.i.i ]
  %54 = inttoptr i32 %retval.0.i.i.i.i to ptr
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %54, align 4
  %57 = and i32 %56, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i.i.i.i = icmp eq i32 %57, 0
  br i1 %tobool.not.i.i.i.i, label %PageCompound.exit.i.i.i, label %_compound_head.exit.i.i.i.land.rhs.i.i.i_crit_edge

_compound_head.exit.i.i.i.land.rhs.i.i.i_crit_edge: ; preds = %_compound_head.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i.i.i

PageCompound.exit.i.i.i:                          ; preds = %_compound_head.exit.i.i.i
  %58 = getelementptr inbounds %struct.page, ptr %54, i32 0, i32 1
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %58, align 4
  %and.i.i.i.i.i = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %PageCompound.exit.i.i.i.if.end.i.i180_crit_edge, label %PageCompound.exit.i.i.i.land.rhs.i.i.i_crit_edge

PageCompound.exit.i.i.i.land.rhs.i.i.i_crit_edge: ; preds = %PageCompound.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i.i.i

PageCompound.exit.i.i.i.if.end.i.i180_crit_edge:  ; preds = %PageCompound.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i180

land.rhs.i.i.i:                                   ; preds = %PageCompound.exit.i.i.i.land.rhs.i.i.i_crit_edge, %_compound_head.exit.i.i.i.land.rhs.i.i.i_crit_edge
  %61 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %62)
  %cmp.i.not.i.i.i.i.i = icmp eq i32 %62, -1
  br i1 %cmp.i.not.i.i.i.i.i, label %if.then.i.i.i.i.i, label %PageHead.exit.i.i.i.i, !prof !54

if.then.i.i.i.i.i:                                ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %63 = inttoptr i32 %retval.0.i.i.i.i to ptr
  tail call void @dump_page(ptr noundef %63, ptr noundef nonnull @.str.8) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #9, !srcloc !55
  unreachable

PageHead.exit.i.i.i.i:                            ; preds = %land.rhs.i.i.i
  %64 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %54, align 4
  %66 = and i32 %65, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool.not.i6.i.i.i = icmp eq i32 %66, 0
  br i1 %tobool.not.i6.i.i.i, label %PageHead.exit.i.i.i.i.if.end.i.i180_crit_edge, label %hpage_pincount_available.exit.i.i

PageHead.exit.i.i.i.i.if.end.i.i180_crit_edge:    ; preds = %PageHead.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i180

hpage_pincount_available.exit.i.i:                ; preds = %PageHead.exit.i.i.i.i
  %67 = getelementptr %struct.page, ptr %54, i32 1, i32 1
  %compound_order.i.i.i.i = getelementptr inbounds %struct.anon.25, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %compound_order.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %compound_order.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %69)
  %phi.cmp.i.i.i = icmp ugt i8 %69, 1
  br i1 %phi.cmp.i.i.i, label %if.then.i.i179, label %hpage_pincount_available.exit.i.i.if.end.i.i180_crit_edge

hpage_pincount_available.exit.i.i.if.end.i.i180_crit_edge: ; preds = %hpage_pincount_available.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i180

if.then.i.i179:                                   ; preds = %hpage_pincount_available.exit.i.i
  %70 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %50, align 4
  %and.i.i.i7.i.i = and i32 %71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i7.i.i)
  %tobool.not.i5.i.i.i.i = icmp eq i32 %and.i.i.i7.i.i, 0
  br i1 %tobool.not.i5.i.i.i.i, label %if.end.i.i.i.i.i, label %if.then.i.i.i8.i.i, !prof !47

if.then.i.i.i8.i.i:                               ; preds = %if.then.i.i179
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i.i.i = add i32 %71, -1
  br label %_compound_head.exit.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.then.i.i179
  call void @__sanitizer_cov_trace_pc() #11
  %72 = ptrtoint ptr %49 to i32
  br label %_compound_head.exit.i.i.i.i

_compound_head.exit.i.i.i.i:                      ; preds = %if.end.i.i.i.i.i, %if.then.i.i.i8.i.i
  %retval.0.i.i.i.i.i = phi i32 [ %sub.i.i.i.i.i, %if.then.i.i.i8.i.i ], [ %72, %if.end.i.i.i.i.i ]
  %73 = inttoptr i32 %retval.0.i.i.i.i.i to ptr
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %73, align 4
  %76 = and i32 %75, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool.not.i.i.i.i.i = icmp eq i32 %76, 0
  br i1 %tobool.not.i.i.i.i.i, label %PageCompound.exit.i.i.i.i, label %_compound_head.exit.i.i.i.i.land.rhs.i.i.i.i_crit_edge

_compound_head.exit.i.i.i.i.land.rhs.i.i.i.i_crit_edge: ; preds = %_compound_head.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i.i.i.i

PageCompound.exit.i.i.i.i:                        ; preds = %_compound_head.exit.i.i.i.i
  %77 = getelementptr inbounds %struct.page, ptr %73, i32 0, i32 1
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %77, align 4
  %and.i.i.i.i.i.i = and i32 %79, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.not.i.i9.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i9.i.i, label %PageCompound.exit.i.i.i.i.if.then.i.i.i_crit_edge, label %PageCompound.exit.i.i.i.i.land.rhs.i.i.i.i_crit_edge, !prof !56

PageCompound.exit.i.i.i.i.land.rhs.i.i.i.i_crit_edge: ; preds = %PageCompound.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i.i.i.i

PageCompound.exit.i.i.i.i.if.then.i.i.i_crit_edge: ; preds = %PageCompound.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %PageCompound.exit.i.i.i.i.land.rhs.i.i.i.i_crit_edge, %_compound_head.exit.i.i.i.i.land.rhs.i.i.i.i_crit_edge
  %80 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %73, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %81)
  %cmp.i.not.i.i.i.i.i.i = icmp eq i32 %81, -1
  br i1 %cmp.i.not.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i, label %PageHead.exit.i.i.i.i.i, !prof !54

if.then.i.i.i.i.i.i:                              ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %82 = inttoptr i32 %retval.0.i.i.i.i.i to ptr
  tail call void @dump_page(ptr noundef %82, ptr noundef nonnull @.str.8) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #9, !srcloc !55
  unreachable

PageHead.exit.i.i.i.i.i:                          ; preds = %land.rhs.i.i.i.i
  %83 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %73, align 4
  %85 = and i32 %84, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool.not.i6.i.i.i.i = icmp eq i32 %85, 0
  br i1 %tobool.not.i6.i.i.i.i, label %PageHead.exit.i.i.i.i.i.if.then.i.i.i_crit_edge, label %hpage_pincount_available.exit.i.i.i, !prof !56

PageHead.exit.i.i.i.i.i.if.then.i.i.i_crit_edge:  ; preds = %PageHead.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i

hpage_pincount_available.exit.i.i.i:              ; preds = %PageHead.exit.i.i.i.i.i
  %86 = getelementptr %struct.page, ptr %73, i32 1, i32 1
  %compound_order.i.i.i.i.i = getelementptr inbounds %struct.anon.25, ptr %86, i32 0, i32 2
  %87 = ptrtoint ptr %compound_order.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %compound_order.i.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %88)
  %phi.cmp.i.i.i.i = icmp ugt i8 %88, 1
  br i1 %phi.cmp.i.i.i.i, label %do.end6.i.i.i, label %hpage_pincount_available.exit.i.i.i.if.then.i.i.i_crit_edge, !prof !47

hpage_pincount_available.exit.i.i.i.if.then.i.i.i_crit_edge: ; preds = %hpage_pincount_available.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %hpage_pincount_available.exit.i.i.i.if.then.i.i.i_crit_edge, %PageHead.exit.i.i.i.i.i.if.then.i.i.i_crit_edge, %PageCompound.exit.i.i.i.i.if.then.i.i.i_crit_edge
  tail call void @dump_page(ptr noundef %49, ptr noundef nonnull @.str.9) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 910, 0\0A.popsection", ""() #9, !srcloc !57
  unreachable

do.end6.i.i.i:                                    ; preds = %hpage_pincount_available.exit.i.i.i
  %89 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %50, align 4
  %and.i.i10.i.i = and i32 %90, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i10.i.i)
  %tobool.not.i12.i.i.i = icmp eq i32 %and.i.i10.i.i, 0
  br i1 %tobool.not.i12.i.i.i, label %if.end.i.i13.i.i, label %if.then.i.i12.i.i, !prof !47

if.then.i.i12.i.i:                                ; preds = %do.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i11.i.i = add i32 %90, -1
  br label %compound_pincount.exit.i.i

if.end.i.i13.i.i:                                 ; preds = %do.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %91 = ptrtoint ptr %49 to i32
  br label %compound_pincount.exit.i.i

compound_pincount.exit.i.i:                       ; preds = %if.end.i.i13.i.i, %if.then.i.i12.i.i
  %retval.0.i.i14.i.i = phi i32 [ %sub.i.i11.i.i, %if.then.i.i12.i.i ], [ %91, %if.end.i.i13.i.i ]
  %92 = inttoptr i32 %retval.0.i.i14.i.i to ptr
  %hpage_pinned_refcount.i.i.i.i.i = getelementptr %struct.page, ptr %92, i32 2, i32 1, i32 0, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %hpage_pinned_refcount.i.i.i.i.i, i32 noundef 4) #9
  %93 = ptrtoint ptr %hpage_pinned_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %hpage_pinned_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp.i.i = icmp sgt i32 %94, 0
  br i1 %cmp.i.i, label %compound_pincount.exit.i.i.if.else.i_crit_edge, label %compound_pincount.exit.i.i.do.end.i_crit_edge, !prof !47

compound_pincount.exit.i.i.do.end.i_crit_edge:    ; preds = %compound_pincount.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

compound_pincount.exit.i.i.if.else.i_crit_edge:   ; preds = %compound_pincount.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.end.i.i180:                                    ; preds = %hpage_pincount_available.exit.i.i.if.end.i.i180_crit_edge, %PageHead.exit.i.i.i.i.if.end.i.i180_crit_edge, %PageCompound.exit.i.i.i.if.end.i.i180_crit_edge
  %95 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %50, align 4
  %and.i.i.i = and i32 %96, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i16.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i16.i.i, label %if.end.i.i.i, label %if.then.i17.i.i, !prof !47

if.then.i17.i.i:                                  ; preds = %if.end.i.i180
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i = add i32 %96, -1
  br label %page_maybe_dma_pinned.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i.i180
  call void @__sanitizer_cov_trace_pc() #11
  %97 = ptrtoint ptr %49 to i32
  br label %page_maybe_dma_pinned.exit.i

page_maybe_dma_pinned.exit.i:                     ; preds = %if.end.i.i.i, %if.then.i17.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i17.i.i ], [ %97, %if.end.i.i.i ]
  %98 = inttoptr i32 %retval.0.i.i.i to ptr
  %_refcount.i.i.i = getelementptr inbounds %struct.page, ptr %98, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i, i32 noundef 4) #9
  %99 = ptrtoint ptr %_refcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %_refcount.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %100)
  %cmp4.i.i = icmp ugt i32 %100, 1023
  br i1 %cmp4.i.i, label %page_maybe_dma_pinned.exit.i.if.else.i_crit_edge, label %page_maybe_dma_pinned.exit.i.do.end.i_crit_edge, !prof !47

page_maybe_dma_pinned.exit.i.do.end.i_crit_edge:  ; preds = %page_maybe_dma_pinned.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

page_maybe_dma_pinned.exit.i.if.else.i_crit_edge: ; preds = %page_maybe_dma_pinned.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

do.end.i:                                         ; preds = %page_maybe_dma_pinned.exit.i.do.end.i_crit_edge, %compound_pincount.exit.i.i.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 51, i32 noundef 9, ptr noundef nonnull @.str.5, i32 noundef %i.088.i) #9
  br label %sw.epilog.sink.split.i

if.else.i:                                        ; preds = %page_maybe_dma_pinned.exit.i.if.else.i_crit_edge, %compound_pincount.exit.i.i.if.else.i_crit_edge
  br i1 %cmp22.i, label %land.lhs.true.i, label %if.else.i.for.inc.i_crit_edge

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %101 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073741825, i32 %102)
  %cmp.i.i.i = icmp ugt i32 %102, -1073741825
  br i1 %cmp.i.i.i, label %entry.lor.rhs_crit_edge.i.i, label %lor.lhs.false.i.i

entry.lor.rhs_crit_edge.i.i:                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %.pre.i.i = ptrtoint ptr %49 to i32
  br label %is_pinnable_page.exit.i

lor.lhs.false.i.i:                                ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %103 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %49 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %103 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = sdiv exact i32 %sub.ptr.sub.i.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %104 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i = add i32 %sub.ptr.div.i.i, %104
  %call1.i.i = tail call i32 @get_pfnblock_flags_mask(ptr noundef %49, i32 noundef %add.i.i, i32 noundef 7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call1.i.i)
  %cmp.i70.i = icmp eq i32 %call1.i.i, 4
  br i1 %cmp.i70.i, label %lor.lhs.false.i.i.is_pinnable_page.exit.i_crit_edge, label %lor.lhs.false.i.i.for.inc.i_crit_edge

lor.lhs.false.i.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

lor.lhs.false.i.i.is_pinnable_page.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %is_pinnable_page.exit.i

is_pinnable_page.exit.i:                          ; preds = %lor.lhs.false.i.i.is_pinnable_page.exit.i_crit_edge, %entry.lor.rhs_crit_edge.i.i
  %sub.ptr.lhs.cast2.pre-phi.i.i = phi i32 [ %.pre.i.i, %entry.lor.rhs_crit_edge.i.i ], [ %sub.ptr.lhs.cast.i.i, %lor.lhs.false.i.i.is_pinnable_page.exit.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %105 = load ptr, ptr @mem_map, align 4
  %sub.ptr.rhs.cast3.i.i = ptrtoint ptr %105 to i32
  %sub.ptr.sub4.i.i = sub i32 %sub.ptr.lhs.cast2.pre-phi.i.i, %sub.ptr.rhs.cast3.i.i
  %sub.ptr.div5.i.i = sdiv exact i32 %sub.ptr.sub4.i.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %106 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add6.i.i = add i32 %sub.ptr.div5.i.i, %106
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @zero_pfn to i32))
  %107 = load i32, ptr @zero_pfn, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %107, i32 %add6.i.i)
  %cmp.i11.i.i = icmp eq i32 %107, %add6.i.i
  br i1 %cmp.i11.i.i, label %is_pinnable_page.exit.i.for.inc.i_crit_edge, label %do.end42.i, !prof !47

is_pinnable_page.exit.i.for.inc.i_crit_edge:      ; preds = %is_pinnable_page.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

do.end42.i:                                       ; preds = %is_pinnable_page.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 58, i32 noundef 9, ptr noundef nonnull @.str.7, i32 noundef %i.088.i) #9
  br label %sw.epilog.sink.split.i

for.inc.i:                                        ; preds = %is_pinnable_page.exit.i.for.inc.i_crit_edge, %lor.lhs.false.i.i.for.inc.i_crit_edge, %if.else.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.088.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %i.0.lcssa
  br i1 %exitcond.not.i, label %for.inc.i.verify_dma_pinned.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.verify_dma_pinned.exit_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %verify_dma_pinned.exit

sw.epilog.sink.split.i:                           ; preds = %do.end42.i, %do.end.i
  tail call void @dump_page(ptr noundef %49, ptr noundef nonnull @.str.6) #9
  br label %verify_dma_pinned.exit

verify_dma_pinned.exit:                           ; preds = %sw.epilog.sink.split.i, %for.inc.i.verify_dma_pinned.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1068472570, i32 %cmd)
  %cmp78 = icmp eq i32 %cmd, -1068472570
  br i1 %cmp78, label %verify_dma_pinned.exit.if.then80_crit_edge, label %verify_dma_pinned.exit.if.end81_crit_edge

verify_dma_pinned.exit.if.end81_crit_edge:        ; preds = %verify_dma_pinned.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

verify_dma_pinned.exit.if.then80_crit_edge:       ; preds = %verify_dma_pinned.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then80

if.then80:                                        ; preds = %verify_dma_pinned.exit.if.then80_crit_edge, %for.end.if.then80_crit_edge
  %arrayidx.i181 = getelementptr %struct.gup_test, ptr %gup, i32 0, i32 7, i32 0
  %108 = ptrtoint ptr %arrayidx.i181 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx.i181, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %109, i32 %i.0.lcssa)
  %cmp1.i = icmp ugt i32 %109, %i.0.lcssa
  br i1 %cmp1.i, label %do.end.i183, label %if.then80.for.inc.i184_crit_edge

if.then80.for.inc.i184_crit_edge:                 ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i184

do.end.i183:                                      ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #11
  %call.i182 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 0, i32 noundef %109) #14
  %110 = ptrtoint ptr %arrayidx.i181 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %arrayidx.i181, align 4
  br label %for.inc.i184

for.inc.i184:                                     ; preds = %do.end.i183, %if.then80.for.inc.i184_crit_edge
  %arrayidx.1.i = getelementptr %struct.gup_test, ptr %gup, i32 0, i32 7, i32 1
  %111 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %112, i32 %i.0.lcssa)
  %cmp1.1.i = icmp ugt i32 %112, %i.0.lcssa
  br i1 %cmp1.1.i, label %do.end.1.i, label %for.inc.i184.for.inc.1.i_crit_edge

for.inc.i184.for.inc.1.i_crit_edge:               ; preds = %for.inc.i184
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1.i

do.end.1.i:                                       ; preds = %for.inc.i184
  call void @__sanitizer_cov_trace_pc() #11
  %call.1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 1, i32 noundef %112) #14
  %113 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %arrayidx.1.i, align 4
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %do.end.1.i, %for.inc.i184.for.inc.1.i_crit_edge
  %arrayidx.2.i = getelementptr %struct.gup_test, ptr %gup, i32 0, i32 7, i32 2
  %114 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %115, i32 %i.0.lcssa)
  %cmp1.2.i = icmp ugt i32 %115, %i.0.lcssa
  br i1 %cmp1.2.i, label %do.end.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2.i

do.end.2.i:                                       ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 2, i32 noundef %115) #14
  %116 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 0, ptr %arrayidx.2.i, align 4
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %do.end.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %arrayidx.3.i = getelementptr %struct.gup_test, ptr %gup, i32 0, i32 7, i32 3
  %117 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx.3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %118, i32 %i.0.lcssa)
  %cmp1.3.i = icmp ugt i32 %118, %i.0.lcssa
  br i1 %cmp1.3.i, label %do.end.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3.i

do.end.3.i:                                       ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 3, i32 noundef %118) #14
  %119 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 0, ptr %arrayidx.3.i, align 4
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %do.end.3.i, %for.inc.2.i.for.inc.3.i_crit_edge
  %arrayidx.4.i = getelementptr %struct.gup_test, ptr %gup, i32 0, i32 7, i32 4
  %120 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx.4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %121, i32 %i.0.lcssa)
  %cmp1.4.i = icmp ugt i32 %121, %i.0.lcssa
  br i1 %cmp1.4.i, label %do.end.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.4.i

do.end.4.i:                                       ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 4, i32 noundef %121) #14
  %122 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 0, ptr %arrayidx.4.i, align 4
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %do.end.4.i, %for.inc.3.i.for.inc.4.i_crit_edge
  %arrayidx.5.i = getelementptr %struct.gup_test, ptr %gup, i32 0, i32 7, i32 5
  %123 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx.5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %124, i32 %i.0.lcssa)
  %cmp1.5.i = icmp ugt i32 %124, %i.0.lcssa
  br i1 %cmp1.5.i, label %do.end.5.i, label %for.inc.4.i.for.inc.5.i_crit_edge

for.inc.4.i.for.inc.5.i_crit_edge:                ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.5.i

do.end.5.i:                                       ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 5, i32 noundef %124) #14
  %125 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 0, ptr %arrayidx.5.i, align 4
  br label %for.inc.5.i

for.inc.5.i:                                      ; preds = %do.end.5.i, %for.inc.4.i.for.inc.5.i_crit_edge
  %arrayidx.6.i = getelementptr %struct.gup_test, ptr %gup, i32 0, i32 7, i32 6
  %126 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx.6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %127, i32 %i.0.lcssa)
  %cmp1.6.i = icmp ugt i32 %127, %i.0.lcssa
  br i1 %cmp1.6.i, label %do.end.6.i, label %for.inc.5.i.for.inc.6.i_crit_edge

for.inc.5.i.for.inc.6.i_crit_edge:                ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.6.i

do.end.6.i:                                       ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 6, i32 noundef %127) #14
  %128 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 0, ptr %arrayidx.6.i, align 4
  br label %for.inc.6.i

for.inc.6.i:                                      ; preds = %do.end.6.i, %for.inc.5.i.for.inc.6.i_crit_edge
  %arrayidx.7.i = getelementptr %struct.gup_test, ptr %gup, i32 0, i32 7, i32 7
  %129 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx.7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %130, i32 %i.0.lcssa)
  %cmp1.7.i = icmp ugt i32 %130, %i.0.lcssa
  br i1 %cmp1.7.i, label %do.end.7.i, label %for.inc.6.i.for.inc.7.i_crit_edge

for.inc.6.i.for.inc.7.i_crit_edge:                ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.7.i

do.end.7.i:                                       ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 7, i32 noundef %130) #14
  %131 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 0, ptr %arrayidx.7.i, align 4
  br label %for.inc.7.i

for.inc.7.i:                                      ; preds = %do.end.7.i, %for.inc.6.i.for.inc.7.i_crit_edge
  %132 = ptrtoint ptr %arrayidx.i181 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx.i181, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool.not.i = icmp eq i32 %133, 0
  br i1 %tobool.not.i, label %for.inc.7.i.for.inc19.i_crit_edge, label %if.then11.i

for.inc.7.i.for.inc19.i_crit_edge:                ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc19.i

if.then11.i:                                      ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #11
  %dec.i = add i32 %133, -1
  %134 = ptrtoint ptr %addr14 to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %addr14, align 8
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %dec.i, i64 noundef %135) #14
  %arrayidx17.i = getelementptr ptr, ptr %call.i.i.i, i32 %dec.i
  %136 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %arrayidx17.i, align 4
  tail call void @dump_page(ptr noundef %137, ptr noundef nonnull @.str.15) #9
  br label %for.inc19.i

for.inc19.i:                                      ; preds = %if.then11.i, %for.inc.7.i.for.inc19.i_crit_edge
  %138 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %tobool.not.1.i = icmp eq i32 %139, 0
  br i1 %tobool.not.1.i, label %for.inc19.i.for.inc19.1.i_crit_edge, label %if.then11.1.i

for.inc19.i.for.inc19.1.i_crit_edge:              ; preds = %for.inc19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc19.1.i

if.then11.1.i:                                    ; preds = %for.inc19.i
  call void @__sanitizer_cov_trace_pc() #11
  %dec.1.i = add i32 %139, -1
  %140 = ptrtoint ptr %addr14 to i32
  call void @__asan_load8_noabort(i32 %140)
  %141 = load i64, ptr %addr14, align 8
  %call16.1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %dec.1.i, i64 noundef %141) #14
  %arrayidx17.1.i = getelementptr ptr, ptr %call.i.i.i, i32 %dec.1.i
  %142 = ptrtoint ptr %arrayidx17.1.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %arrayidx17.1.i, align 4
  tail call void @dump_page(ptr noundef %143, ptr noundef nonnull @.str.15) #9
  br label %for.inc19.1.i

for.inc19.1.i:                                    ; preds = %if.then11.1.i, %for.inc19.i.for.inc19.1.i_crit_edge
  %144 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %tobool.not.2.i = icmp eq i32 %145, 0
  br i1 %tobool.not.2.i, label %for.inc19.1.i.for.inc19.2.i_crit_edge, label %if.then11.2.i

for.inc19.1.i.for.inc19.2.i_crit_edge:            ; preds = %for.inc19.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc19.2.i

if.then11.2.i:                                    ; preds = %for.inc19.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %dec.2.i = add i32 %145, -1
  %146 = ptrtoint ptr %addr14 to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %addr14, align 8
  %call16.2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %dec.2.i, i64 noundef %147) #14
  %arrayidx17.2.i = getelementptr ptr, ptr %call.i.i.i, i32 %dec.2.i
  %148 = ptrtoint ptr %arrayidx17.2.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %arrayidx17.2.i, align 4
  tail call void @dump_page(ptr noundef %149, ptr noundef nonnull @.str.15) #9
  br label %for.inc19.2.i

for.inc19.2.i:                                    ; preds = %if.then11.2.i, %for.inc19.1.i.for.inc19.2.i_crit_edge
  %150 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %tobool.not.3.i = icmp eq i32 %151, 0
  br i1 %tobool.not.3.i, label %for.inc19.2.i.for.inc19.3.i_crit_edge, label %if.then11.3.i

for.inc19.2.i.for.inc19.3.i_crit_edge:            ; preds = %for.inc19.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc19.3.i

if.then11.3.i:                                    ; preds = %for.inc19.2.i
  call void @__sanitizer_cov_trace_pc() #11
  %dec.3.i = add i32 %151, -1
  %152 = ptrtoint ptr %addr14 to i32
  call void @__asan_load8_noabort(i32 %152)
  %153 = load i64, ptr %addr14, align 8
  %call16.3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %dec.3.i, i64 noundef %153) #14
  %arrayidx17.3.i = getelementptr ptr, ptr %call.i.i.i, i32 %dec.3.i
  %154 = ptrtoint ptr %arrayidx17.3.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %arrayidx17.3.i, align 4
  tail call void @dump_page(ptr noundef %155, ptr noundef nonnull @.str.15) #9
  br label %for.inc19.3.i

for.inc19.3.i:                                    ; preds = %if.then11.3.i, %for.inc19.2.i.for.inc19.3.i_crit_edge
  %156 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx.4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %tobool.not.4.i = icmp eq i32 %157, 0
  br i1 %tobool.not.4.i, label %for.inc19.3.i.for.inc19.4.i_crit_edge, label %if.then11.4.i

for.inc19.3.i.for.inc19.4.i_crit_edge:            ; preds = %for.inc19.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc19.4.i

if.then11.4.i:                                    ; preds = %for.inc19.3.i
  call void @__sanitizer_cov_trace_pc() #11
  %dec.4.i = add i32 %157, -1
  %158 = ptrtoint ptr %addr14 to i32
  call void @__asan_load8_noabort(i32 %158)
  %159 = load i64, ptr %addr14, align 8
  %call16.4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %dec.4.i, i64 noundef %159) #14
  %arrayidx17.4.i = getelementptr ptr, ptr %call.i.i.i, i32 %dec.4.i
  %160 = ptrtoint ptr %arrayidx17.4.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %arrayidx17.4.i, align 4
  tail call void @dump_page(ptr noundef %161, ptr noundef nonnull @.str.15) #9
  br label %for.inc19.4.i

for.inc19.4.i:                                    ; preds = %if.then11.4.i, %for.inc19.3.i.for.inc19.4.i_crit_edge
  %162 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %arrayidx.5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %tobool.not.5.i = icmp eq i32 %163, 0
  br i1 %tobool.not.5.i, label %for.inc19.4.i.for.inc19.5.i_crit_edge, label %if.then11.5.i

for.inc19.4.i.for.inc19.5.i_crit_edge:            ; preds = %for.inc19.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc19.5.i

if.then11.5.i:                                    ; preds = %for.inc19.4.i
  call void @__sanitizer_cov_trace_pc() #11
  %dec.5.i = add i32 %163, -1
  %164 = ptrtoint ptr %addr14 to i32
  call void @__asan_load8_noabort(i32 %164)
  %165 = load i64, ptr %addr14, align 8
  %call16.5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %dec.5.i, i64 noundef %165) #14
  %arrayidx17.5.i = getelementptr ptr, ptr %call.i.i.i, i32 %dec.5.i
  %166 = ptrtoint ptr %arrayidx17.5.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %arrayidx17.5.i, align 4
  tail call void @dump_page(ptr noundef %167, ptr noundef nonnull @.str.15) #9
  br label %for.inc19.5.i

for.inc19.5.i:                                    ; preds = %if.then11.5.i, %for.inc19.4.i.for.inc19.5.i_crit_edge
  %168 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %arrayidx.6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %169)
  %tobool.not.6.i = icmp eq i32 %169, 0
  br i1 %tobool.not.6.i, label %for.inc19.5.i.for.inc19.6.i_crit_edge, label %if.then11.6.i

for.inc19.5.i.for.inc19.6.i_crit_edge:            ; preds = %for.inc19.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc19.6.i

if.then11.6.i:                                    ; preds = %for.inc19.5.i
  call void @__sanitizer_cov_trace_pc() #11
  %dec.6.i = add i32 %169, -1
  %170 = ptrtoint ptr %addr14 to i32
  call void @__asan_load8_noabort(i32 %170)
  %171 = load i64, ptr %addr14, align 8
  %call16.6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %dec.6.i, i64 noundef %171) #14
  %arrayidx17.6.i = getelementptr ptr, ptr %call.i.i.i, i32 %dec.6.i
  %172 = ptrtoint ptr %arrayidx17.6.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %arrayidx17.6.i, align 4
  tail call void @dump_page(ptr noundef %173, ptr noundef nonnull @.str.15) #9
  br label %for.inc19.6.i

for.inc19.6.i:                                    ; preds = %if.then11.6.i, %for.inc19.5.i.for.inc19.6.i_crit_edge
  %174 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %arrayidx.7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %tobool.not.7.i = icmp eq i32 %175, 0
  br i1 %tobool.not.7.i, label %for.inc19.6.i.if.end81_crit_edge, label %if.then11.7.i

for.inc19.6.i.if.end81_crit_edge:                 ; preds = %for.inc19.6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

if.then11.7.i:                                    ; preds = %for.inc19.6.i
  call void @__sanitizer_cov_trace_pc() #11
  %dec.7.i = add i32 %175, -1
  %176 = ptrtoint ptr %addr14 to i32
  call void @__asan_load8_noabort(i32 %176)
  %177 = load i64, ptr %addr14, align 8
  %call16.7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %dec.7.i, i64 noundef %177) #14
  %arrayidx17.7.i = getelementptr ptr, ptr %call.i.i.i, i32 %dec.7.i
  %178 = ptrtoint ptr %arrayidx17.7.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %arrayidx17.7.i, align 4
  tail call void @dump_page(ptr noundef %179, ptr noundef nonnull @.str.15) #9
  br label %if.end81

if.end81:                                         ; preds = %if.then11.7.i, %for.inc19.6.i.if.end81_crit_edge, %verify_dma_pinned.exit.if.end81_crit_edge, %sw.bb.i.if.end81_crit_edge, %for.end.if.end81_crit_edge
  %call82 = tail call i64 @ktime_get() #9
  %test_flags83 = getelementptr inbounds %struct.gup_test, ptr %gup, i32 0, i32 6
  %180 = ptrtoint ptr %test_flags83 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %test_flags83, align 8
  tail call fastcc void @put_back_pages(i32 noundef %cmd, ptr noundef nonnull %call.i.i.i, i32 noundef %i.0.lcssa, i32 noundef %181)
  %call84 = tail call i64 @ktime_get() #9
  %sub.i185 = sub i64 %call84, %call82
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i185)
  %cmp8.i.i.i186 = icmp slt i64 %sub.i185, 0
  %182 = tail call i64 @llvm.abs.i64(i64 %sub.i185, i1 false) #9
  %183 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %182, i32 0) #12, !srcloc !52
  %asmresult.i.i.i.i187 = extractvalue { i64, i32 } %183, 0
  %asmresult4.i.i.i.i188 = extractvalue { i64, i32 } %183, 1
  %184 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %182, i64 %asmresult.i.i.i.i187, i32 %asmresult4.i.i.i.i188) #12, !srcloc !53
  %asmresult10.i.i.i.i189 = extractvalue { i64, i32 } %184, 0
  %div1811.i.i.i190 = lshr i64 %asmresult10.i.i.i.i189, 9
  %sub210.i.i.i191 = sub nsw i64 0, %div1811.i.i.i190
  %cond213.i.i.i192 = select i1 %cmp8.i.i.i186, i64 %sub210.i.i.i191, i64 %div1811.i.i.i190
  %put_delta_usec = getelementptr inbounds %struct.gup_test, ptr %gup, i32 0, i32 1
  %185 = ptrtoint ptr %put_delta_usec to i32
  call void @__asan_store8_noabort(i32 %185)
  store i64 %cond213.i.i.i192, ptr %put_delta_usec, align 8
  br label %unlock

unlock:                                           ; preds = %if.end81, %if.end25.unlock_crit_edge
  %ret.0 = phi i32 [ 0, %if.end81 ], [ -22, %if.end25.unlock_crit_edge ]
  br i1 %1, label %if.then87, label %unlock.free_pages_crit_edge

unlock.free_pages_crit_edge:                      ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_pages

if.then87:                                        ; preds = %unlock
  %186 = tail call i32 @llvm.read_register.i32(metadata !37) #9
  %and.i193 = and i32 %186, -16384
  %187 = inttoptr i32 %and.i193 to ptr
  %task89 = getelementptr inbounds %struct.thread_info, ptr %187, i32 0, i32 2
  %188 = ptrtoint ptr %task89 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %task89, align 8
  %mm90 = getelementptr inbounds %struct.task_struct, ptr %189, i32 0, i32 53
  %190 = ptrtoint ptr %mm90 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %mm90, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@__gup_test_ioctl, %if.then.i.i194)) #9
          to label %mmap_read_unlock.exit [label %if.then.i.i194], !srcloc !51

if.then.i.i194:                                   ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__mmap_lock_do_trace_released(ptr noundef %191, i1 noundef zeroext false) #9
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i194, %if.then87
  %mmap_lock.i195 = getelementptr inbounds %struct.anon.16, ptr %191, i32 0, i32 15
  tail call void @up_read(ptr noundef %mmap_lock.i195) #9
  br label %free_pages

free_pages:                                       ; preds = %mmap_read_unlock.exit, %unlock.free_pages_crit_edge, %mmap_read_lock_killable.exit.free_pages_crit_edge
  %ret.1 = phi i32 [ %ret.0, %mmap_read_unlock.exit ], [ %ret.0, %unlock.free_pages_crit_edge ], [ -4, %mmap_read_lock_killable.exit.free_pages_crit_edge ]
  tail call void @kvfree(ptr noundef nonnull %call.i.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %free_pages, %kvcalloc.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %free_pages ], [ -22, %entry.cleanup_crit_edge ], [ -12, %kvcalloc.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_user_pages_fast(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_user_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pin_user_pages_fast(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pin_user_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_back_pages(i32 noundef %cmd, ptr noundef %pages, i32 noundef %nr_pages, i32 noundef %gup_test_flags) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 -1068472575, label %entry.sw.bb_crit_edge
    i32 -1068472572, label %entry.sw.bb_crit_edge63
    i32 -1068472574, label %entry.sw.epilog.sink.split_crit_edge
    i32 -1068472571, label %entry.sw.epilog.sink.split_crit_edge64
    i32 -1068472573, label %entry.sw.epilog.sink.split_crit_edge65
    i32 -1068472570, label %sw.bb2
  ]

entry.sw.epilog.sink.split_crit_edge65:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

entry.sw.epilog.sink.split_crit_edge64:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

entry.sw.bb_crit_edge63:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_pages)
  %cmp45.not = icmp eq i32 %nr_pages, 0
  br i1 %cmp45.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.for.body_crit_edge

sw.bb.for.body_crit_edge:                         ; preds = %sw.bb
  br label %for.body

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body:                                         ; preds = %put_page.exit.for.body_crit_edge, %sw.bb.for.body_crit_edge
  %i.046 = phi i32 [ %inc, %put_page.exit.for.body_crit_edge ], [ 0, %sw.bb.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %pages, i32 %i.046
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %3 = getelementptr inbounds %struct.page, ptr %2, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %3, align 4
  %and.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !47

if.then.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %5, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %2 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %6, %if.end.i.i ]
  %7 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %7, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %8 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i.i.i.i = icmp eq i32 %9, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !54

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %10 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %10, ptr noundef nonnull @.str.16) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !58
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !60
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@put_back_pages, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !51

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %7, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %7) #9
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %inc = add nuw i32 %i.046, 1
  %exitcond50.not = icmp eq i32 %inc, %nr_pages
  br i1 %exitcond50.not, label %put_page.exit.sw.epilog_crit_edge, label %put_page.exit.for.body_crit_edge

put_page.exit.for.body_crit_edge:                 ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

put_page.exit.sw.epilog_crit_edge:                ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %and = and i32 %gup_test_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.cond3.preheader, label %sw.bb2.sw.epilog.sink.split_crit_edge

sw.bb2.sw.epilog.sink.split_crit_edge:            ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

for.cond3.preheader:                              ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_pages)
  %cmp443.not = icmp eq i32 %nr_pages, 0
  br i1 %cmp443.not, label %for.cond3.preheader.sw.epilog_crit_edge, label %for.cond3.preheader.for.body5_crit_edge

for.cond3.preheader.for.body5_crit_edge:          ; preds = %for.cond3.preheader
  br label %for.body5

for.cond3.preheader.sw.epilog_crit_edge:          ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body5:                                        ; preds = %put_page.exit40.for.body5_crit_edge, %for.cond3.preheader.for.body5_crit_edge
  %i.144 = phi i32 [ %inc8, %put_page.exit40.for.body5_crit_edge ], [ 0, %for.cond3.preheader.for.body5_crit_edge ]
  %arrayidx6 = getelementptr ptr, ptr %pages, i32 %i.144
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx6, align 4
  %14 = getelementptr inbounds %struct.page, ptr %13, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 4
  %and.i.i21 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i21)
  %tobool.not.i.i22 = icmp eq i32 %and.i.i21, 0
  br i1 %tobool.not.i.i22, label %if.end.i.i25, label %if.then.i.i24, !prof !47

if.then.i.i24:                                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i23 = add i32 %16, -1
  br label %_compound_head.exit.i30

if.end.i.i25:                                     ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %13 to i32
  br label %_compound_head.exit.i30

_compound_head.exit.i30:                          ; preds = %if.end.i.i25, %if.then.i.i24
  %retval.0.i.i26 = phi i32 [ %sub.i.i23, %if.then.i.i24 ], [ %17, %if.end.i.i25 ]
  %18 = inttoptr i32 %retval.0.i.i26 to ptr
  %_refcount.i.i.i.i.i27 = getelementptr inbounds %struct.page, ptr %18, i32 0, i32 3
  %call.i.i.i.i.i.i.i28 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i27, i32 noundef 4) #9
  %19 = ptrtoint ptr %_refcount.i.i.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %_refcount.i.i.i.i.i27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i.i.i.i29 = icmp eq i32 %20, 0
  br i1 %cmp.i.i.i.i29, label %if.then.i.i.i.i31, label %do.end5.i.i.i.i35, !prof !54

if.then.i.i.i.i31:                                ; preds = %_compound_head.exit.i30
  call void @__sanitizer_cov_trace_pc() #11
  %21 = inttoptr i32 %retval.0.i.i26 to ptr
  tail call void @dump_page(ptr noundef %21, ptr noundef nonnull @.str.16) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !58
  unreachable

do.end5.i.i.i.i35:                                ; preds = %_compound_head.exit.i30
  %call.i.i.i10.i.i.i.i32 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i27, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i27, i32 1, i32 3, i32 1) #9
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i27, ptr %_refcount.i.i.i.i.i27, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i27) #9, !srcloc !60
  %asmresult.i.i.i.i.i.i.i.i.i.i33 = extractvalue { i32, i32 } %22, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i33)
  %cmp.i.i.i.i.i.i.i34 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i33, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@put_back_pages, %if.then.i.i.i.i.i37)) #9
          to label %folio_put_testzero.exit.i.i38 [label %if.then.i.i.i.i.i37], !srcloc !51

if.then.i.i.i.i.i37:                              ; preds = %do.end5.i.i.i.i35
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i36 = zext i1 %cmp.i.i.i.i.i.i.i34 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %18, i32 noundef -1, i32 noundef %conv.i.i.i.i.i36) #9
  br label %folio_put_testzero.exit.i.i38

folio_put_testzero.exit.i.i38:                    ; preds = %if.then.i.i.i.i.i37, %do.end5.i.i.i.i35
  br i1 %cmp.i.i.i.i.i.i.i34, label %if.then.i4.i39, label %folio_put_testzero.exit.i.i38.put_page.exit40_crit_edge

folio_put_testzero.exit.i.i38.put_page.exit40_crit_edge: ; preds = %folio_put_testzero.exit.i.i38
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_page.exit40

if.then.i4.i39:                                   ; preds = %folio_put_testzero.exit.i.i38
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %18) #9
  br label %put_page.exit40

put_page.exit40:                                  ; preds = %if.then.i4.i39, %folio_put_testzero.exit.i.i38.put_page.exit40_crit_edge
  %inc8 = add nuw i32 %i.144, 1
  %exitcond.not = icmp eq i32 %inc8, %nr_pages
  br i1 %exitcond.not, label %put_page.exit40.sw.epilog_crit_edge, label %put_page.exit40.for.body5_crit_edge

put_page.exit40.for.body5_crit_edge:              ; preds = %put_page.exit40
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body5

put_page.exit40.sw.epilog_crit_edge:              ; preds = %put_page.exit40
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %sw.bb2.sw.epilog.sink.split_crit_edge, %entry.sw.epilog.sink.split_crit_edge, %entry.sw.epilog.sink.split_crit_edge64, %entry.sw.epilog.sink.split_crit_edge65
  tail call void @unpin_user_pages(ptr noundef %pages, i32 noundef %nr_pages) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %put_page.exit40.sw.epilog_crit_edge, %for.cond3.preheader.sw.epilog_crit_edge, %put_page.exit.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_killable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_pfnblock_flags_mask(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @unpin_user_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind readnone }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !16, !18, !20, !22, !24, !26, !27, !28, !29, !31, !32, !33, !35}
!llvm.named.register.sp = !{!37}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @__initcall__kmod_gup_test__217_250_gup_test_init7, !1, !"__initcall__kmod_gup_test__217_250_gup_test_init7", i1 false, i1 false}
!1 = !{!"../mm/gup_test.c", i32 250, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../mm/gup_test.c", i32 244, i32 29}
!4 = !{ptr @gup_test_fops, !5, !"gup_test_fops", i1 false, i1 false}
!5 = !{!"../mm/gup_test.c", i32 237, i32 37}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!8 = distinct !{null, !7, !"<string literal>", i1 false, i1 false}
!9 = distinct !{null, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../mm/gup_test.c", i32 50, i32 8}
!15 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../mm/gup_test.c", i32 53, i32 21}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../mm/gup_test.c", i32 56, i32 5}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../include/linux/page-flags.h", i32 698, i32 1}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../include/linux/mm.h", i32 910, i32 2}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../mm/gup_test.c", i32 79, i32 4}
!26 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @dump_pages_test._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @dump_pages_test._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../mm/gup_test.c", i32 90, i32 4}
!31 = !{ptr @dump_pages_test._entry.12, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @dump_pages_test._entry_ptr.14, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../mm/gup_test.c", i32 93, i32 7}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../include/linux/mm.h", i32 717, i32 2}
!37 = !{!"sp"}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{!"branch_weights", i32 2000, i32 1}
!48 = !{i64 5224774}
!49 = !{i64 5224971}
!50 = !{i64 2152710204}
!51 = !{i64 2148695299, i64 2148695304, i64 2148695317, i64 2148695361, i64 2148695395, i64 2148695416}
!52 = !{i64 1118474, i64 1118501, i64 1118523, i64 1118551}
!53 = !{i64 1118882, i64 1118909, i64 1118942, i64 1118963, i64 1118990, i64 1119016}
!54 = !{!"branch_weights", i32 1, i32 2000}
!55 = !{i64 2150990773, i64 2150991264, i64 2150990810, i64 2150990866, i64 2150990900, i64 2150990924, i64 2150990965, i64 2150990986, i64 2150991014, i64 2150991048}
!56 = !{!"branch_weights", i32 1073205, i32 2146410443}
!57 = !{i64 2153130187, i64 2153130670, i64 2153130224, i64 2153130280, i64 2153130314, i64 2153130338, i64 2153130379, i64 2153130400, i64 2153130428, i64 2153130462}
!58 = !{i64 2153114985, i64 2153115468, i64 2153115022, i64 2153115078, i64 2153115112, i64 2153115136, i64 2153115177, i64 2153115198, i64 2153115226, i64 2153115260}
!59 = !{i64 2148301936}
!60 = !{i64 2148216669, i64 2148216701, i64 2148216730, i64 2148216764, i64 2148216795, i64 2148216818}
!61 = !{i64 2148302165}
