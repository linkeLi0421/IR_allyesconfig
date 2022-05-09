; ModuleID = '/llk/IR_all_yes/fs/nilfs2/page.c_pt.bc'
source_filename = "../fs/nilfs2/page.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.57 }
%struct.atomic_t = type { i32 }
%union.anon.57 = type { i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.77 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.79 = type { ptr }
%struct.page = type { i32, %union.anon, %union.anon.75, %struct.atomic_t, i32 }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.75 = type { %struct.atomic_t }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.47, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.10 }
%struct.llist_node = type { ptr }
%union.anon.10 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.12 }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.47 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.pagevec = type { i8, i8, [15 x ptr] }

@nilfs_page_bug._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 159, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\012NILFS_PAGE_BUG(NULL)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nilfs_page_bug\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/nilfs2/page.c\00", [47 x i8] zeroinitializer }, align 32
@nilfs_page_bug._entry_ptr = internal global ptr @nilfs_page_bug._entry, section ".printk_index", align 4
@nilfs_page_bug._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\012NILFS_PAGE_BUG(%p): cnt=%d index#=%llu flags=0x%lx mapping=%p ino=%lu\0A\00", [55 x i8] zeroinitializer }, align 32
@nilfs_page_bug._entry_ptr.5 = internal global ptr @nilfs_page_bug._entry.3, section ".printk_index", align 4
@nilfs_page_bug._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\012 BH[%d] %p: cnt=%d block#=%llu state=0x%lx\0A\00", [50 x i8] zeroinitializer }, align 32
@nilfs_page_bug._entry_ptr.8 = internal global ptr @nilfs_page_bug._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014discard dirty page: offset=%lld, ino=%lu\00", [53 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014discard dirty block: blocknr=%llu, size=%zu\00", [50 x i8] zeroinitializer }, align 32
@empty_aops = external dso_local constant %struct.address_space_operations, align 4
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VM_BUG_ON_PAGE(1 && PageTail(page))\00", [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/pagemap.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 159, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 166, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 177, i32 4 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 393, i32 3 }
@___asan_gen_.47 = private constant [20 x i8] c"../fs/nilfs2/page.c\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 410, i32 5 }
@___asan_gen_.50 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 354, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 717, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 678, i32 1 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 260, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 452, i32 1 }
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [27 x i8] c"../include/linux/pagemap.h\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 788, i32 2 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @nilfs_page_bug._entry, ptr @nilfs_page_bug._entry.3, ptr @nilfs_page_bug._entry.6, ptr @nilfs_page_bug._entry_ptr, ptr @nilfs_page_bug._entry_ptr.5, ptr @nilfs_page_bug._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_page_bug._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_page_bug._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_page_bug._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nilfs_grab_buffer(ptr nocapture noundef readonly %inode, ptr noundef %mapping, i32 noundef %blkoff, i32 noundef %b_state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %0 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %i_blkbits, align 2
  %conv = zext i8 %1 to i32
  %sub = sub nsw i32 12, %conv
  %shr = lshr i32 %blkoff, %sub
  %gfp_mask.i.i = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 3
  %2 = ptrtoint ptr %gfp_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gfp_mask.i.i, align 4
  %call.i.i = tail call ptr @pagecache_get_page(ptr noundef %mapping, i32 noundef %shr, i32 noundef 7, i32 noundef %3) #8
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !43

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %call.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp.i.not.i.i = icmp eq i32 %5, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %PagePrivate.exit.i, !prof !43

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.17) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #8, !srcloc !44
  unreachable

PagePrivate.exit.i:                               ; preds = %if.end
  %6 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %call.i.i, align 4
  %8 = and i32 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.then.i, label %PagePrivate.exit.i.if.end.i_crit_edge

PagePrivate.exit.i.if.end.i_crit_edge:            ; preds = %PagePrivate.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %PagePrivate.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i = shl nuw i32 1, %conv
  tail call void @create_empty_buffers(ptr noundef nonnull %call.i.i, i32 noundef %shl.i, i32 noundef %b_state) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %PagePrivate.exit.i.if.end.i_crit_edge
  %shl1.i = shl i32 %shr, %sub
  %sub2.i = sub i32 %blkoff, %shl1.i
  %9 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %call.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp.i.not.i.i.i = icmp eq i32 %10, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i, label %PagePrivate.exit.i.i, !prof !43

if.then.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.17) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #8, !srcloc !44
  unreachable

PagePrivate.exit.i.i:                             ; preds = %if.end.i
  %11 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %call.i.i, align 4
  %13 = and i32 %12, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end9.i.i, !prof !43

do.body4.i.i:                                     ; preds = %PagePrivate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/page.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 59, 0\0A.popsection", ""() #8, !srcloc !45
  unreachable

do.end9.i.i:                                      ; preds = %PagePrivate.exit.i.i
  %private.i.i = getelementptr inbounds %struct.page, ptr %call.i.i, i32 0, i32 1, i32 0, i32 3
  %14 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %private.i.i, align 4
  %16 = inttoptr i32 %15 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub2.i)
  %cmp.not13.i.i = icmp eq i32 %sub2.i, 0
  br i1 %cmp.not13.i.i, label %do.end9.i.i.nilfs_page_get_nth_block.exit.i_crit_edge, label %do.end9.i.i.while.body.i.i_crit_edge

do.end9.i.i.while.body.i.i_crit_edge:             ; preds = %do.end9.i.i
  br label %while.body.i.i

do.end9.i.i.nilfs_page_get_nth_block.exit.i_crit_edge: ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nilfs_page_get_nth_block.exit.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %do.end9.i.i.while.body.i.i_crit_edge
  %count.addr.015.i.i = phi i32 [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %sub2.i, %do.end9.i.i.while.body.i.i_crit_edge ]
  %bh.014.i.i = phi ptr [ %18, %while.body.i.i.while.body.i.i_crit_edge ], [ %16, %do.end9.i.i.while.body.i.i_crit_edge ]
  %dec.i.i = add i32 %count.addr.015.i.i, -1
  %b_this_page.i.i = getelementptr inbounds %struct.buffer_head, ptr %bh.014.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %b_this_page.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %b_this_page.i.i, align 4
  %cmp.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp.not.i.i, label %while.body.i.i.nilfs_page_get_nth_block.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.body.i.i.nilfs_page_get_nth_block.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nilfs_page_get_nth_block.exit.i

nilfs_page_get_nth_block.exit.i:                  ; preds = %while.body.i.i.nilfs_page_get_nth_block.exit.i_crit_edge, %do.end9.i.i.nilfs_page_get_nth_block.exit.i_crit_edge
  %bh.0.lcssa.i.i = phi ptr [ %16, %do.end9.i.i.nilfs_page_get_nth_block.exit.i_crit_edge ], [ %18, %while.body.i.i.nilfs_page_get_nth_block.exit.i_crit_edge ]
  %b_count.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0.lcssa.i.i, i32 0, i32 11
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %b_count.i.i.i, i32 1, i32 3, i32 1) #8
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i.i.i, ptr %b_count.i.i.i, i32 1, ptr elementtype(i32) %b_count.i.i.i) #8, !srcloc !46
  tail call void @touch_buffer(ptr noundef %bh.0.lcssa.i.i) #8
  tail call void @__might_sleep(ptr noundef nonnull @.str.11, i32 noundef 354) #8
  %20 = ptrtoint ptr %bh.0.lcssa.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %bh.0.lcssa.i.i, align 4
  %22 = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i9.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i9.i, label %nilfs_page_get_nth_block.exit.i.__nilfs_get_page_block.exit_crit_edge, label %if.then.i10.i

nilfs_page_get_nth_block.exit.i.__nilfs_get_page_block.exit_crit_edge: ; preds = %nilfs_page_get_nth_block.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__nilfs_get_page_block.exit

if.then.i10.i:                                    ; preds = %nilfs_page_get_nth_block.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__wait_on_buffer(ptr noundef %bh.0.lcssa.i.i) #8
  br label %__nilfs_get_page_block.exit

__nilfs_get_page_block.exit:                      ; preds = %if.then.i10.i, %nilfs_page_get_nth_block.exit.i.__nilfs_get_page_block.exit_crit_edge
  %tobool5.not = icmp eq ptr %bh.0.lcssa.i.i, null
  br i1 %tobool5.not, label %if.then14, label %__nilfs_get_page_block.exit.cleanup_crit_edge, !prof !43

__nilfs_get_page_block.exit.cleanup_crit_edge:    ; preds = %__nilfs_get_page_block.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then14:                                        ; preds = %__nilfs_get_page_block.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @unlock_page(ptr noundef nonnull %call.i.i) #8
  tail call fastcc void @put_page(ptr noundef nonnull %call.i.i)
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %__nilfs_get_page_block.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then14 ], [ null, %entry.cleanup_crit_edge ], [ %bh.0.lcssa.i.i, %__nilfs_get_page_block.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_page(ptr noundef %page) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !47

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #8
  %5 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.i.i = icmp eq i32 %6, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %do.end5.i.i.i, !prof !43

if.then.i.i.i:                                    ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.12) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !48
  unreachable

do.end5.i.i.i:                                    ; preds = %_compound_head.exit
  %call.i.i.i10.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !49
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #8
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #8, !srcloc !50
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@put_page, %if.then.i.i.i.i)) #8
          to label %folio_put_testzero.exit.i [label %if.then.i.i.i.i], !srcloc !52

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %4, i32 noundef -1, i32 noundef %conv.i.i.i.i) #8
  br label %folio_put_testzero.exit.i

folio_put_testzero.exit.i:                        ; preds = %if.then.i.i.i.i, %do.end5.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i4, label %folio_put_testzero.exit.i.folio_put.exit_crit_edge

folio_put_testzero.exit.i.folio_put.exit_crit_edge: ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %folio_put.exit

if.then.i4:                                       ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__put_page(ptr noundef %4) #8
  br label %folio_put.exit

folio_put.exit:                                   ; preds = %if.then.i4, %folio_put_testzero.exit.i.folio_put.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nilfs_forget_buffer(ptr noundef %bh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 2
  %0 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_page, align 8
  tail call void @__might_sleep(ptr noundef nonnull @.str.11, i32 noundef 366) #8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bh, i32 noundef 4) #8
  %2 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %bh, align 4
  %and.i.i.i.i = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %entry.if.then.i64_crit_edge

entry.if.then.i64_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i64

trylock_buffer.exit.i:                            ; preds = %entry
  tail call void @llvm.prefetch.p0(ptr %bh, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bh, ptr %bh, i32 4, ptr elementtype(i32) %bh) #8, !srcloc !53
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !54
  %5 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.do.body.preheader_crit_edge, label %trylock_buffer.exit.i.if.then.i64_crit_edge

trylock_buffer.exit.i.if.then.i64_crit_edge:      ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i64

trylock_buffer.exit.i.do.body.preheader_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.preheader

if.then.i64:                                      ; preds = %trylock_buffer.exit.i.if.then.i64_crit_edge, %entry.if.then.i64_crit_edge
  tail call void @__lock_buffer(ptr noundef %bh) #8
  br label %do.body.preheader

do.body.preheader:                                ; preds = %if.then.i64, %trylock_buffer.exit.i.do.body.preheader_crit_edge
  br label %do.body

do.body:                                          ; preds = %__cmpxchg.exit.do.body_crit_edge, %do.body.preheader
  %6 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %bh, align 8
  %and = and i32 %7, -1835156
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bh, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !55
  tail call void @llvm.prefetch.p0(ptr %bh, i32 1, i32 3, i32 1) #8
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body
  %8 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %bh, i32 %7, i32 %and) #8, !srcloc !56
  %asmresult.i = extractvalue { i32, i32 } %8, 0
  %tobool.not.i65 = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i65, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  %asmresult1.i = extractvalue { i32, i32 } %8, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !57
  %cmp.not = icmp eq i32 %asmresult1.i, %7
  br i1 %cmp.not, label %do.end22, label %__cmpxchg.exit.do.body_crit_edge

__cmpxchg.exit.do.body_crit_edge:                 ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end22:                                         ; preds = %__cmpxchg.exit
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp.i.not.i.i = icmp eq i32 %10, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i66, label %PagePrivate.exit.i, !prof !43

if.then.i.i66:                                    ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %1, ptr noundef nonnull @.str.17) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #8, !srcloc !44
  unreachable

PagePrivate.exit.i:                               ; preds = %do.end22
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %1, align 4
  %13 = and i32 %12, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i67 = icmp eq i32 %13, 0
  br i1 %tobool.not.i67, label %do.body4.i, label %do.end9.i, !prof !43

do.body4.i:                                       ; preds = %PagePrivate.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/page.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #8, !srcloc !58
  unreachable

do.end9.i:                                        ; preds = %PagePrivate.exit.i
  %private.i = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 3
  %14 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %private.i, align 4
  %16 = inttoptr i32 %15 to ptr
  br label %do.body10.i

do.body10.i:                                      ; preds = %if.end14.i.do.body10.i_crit_edge, %do.end9.i
  %bh.0.i = phi ptr [ %16, %do.end9.i ], [ %21, %if.end14.i.do.body10.i_crit_edge ]
  %17 = ptrtoint ptr %bh.0.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %bh.0.i, align 4
  %19 = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool12.not.i = icmp eq i32 %19, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %do.body10.i.if.end_crit_edge

do.body10.i.if.end_crit_edge:                     ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end14.i:                                       ; preds = %do.body10.i
  %b_this_page.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0.i, i32 0, i32 1
  %20 = ptrtoint ptr %b_this_page.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %b_this_page.i, align 4
  %cmp.not.i = icmp eq ptr %21, %16
  br i1 %cmp.not.i, label %if.then, label %if.end14.i.do.body10.i_crit_edge

if.end14.i.do.body10.i_crit_edge:                 ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body10.i

if.then:                                          ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  %call25 = tail call i32 @__nilfs_clear_page_dirty(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body10.i.if.end_crit_edge
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %22 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 -1, ptr %b_blocknr, align 8
  %23 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %23, align 4
  %and.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i, !prof !47

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %1, ptr noundef nonnull @.str.13) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #8, !srcloc !59
  unreachable

do.body7.i:                                       ; preds = %if.end
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %23, align 4
  %and.i31.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !47

if.then.i.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %27, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %28, %if.end.i.i ]
  %29 = inttoptr i32 %retval.0.i.i to ptr
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %cmp.i.not.i = icmp eq i32 %31, -1
  %32 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %23, align 4
  %and.i32.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i, label %if.then17.i, label %do.end24.i, !prof !43

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !47

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i34.i = add i32 %33, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %34, %if.end.i36.i ]
  %35 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %35, ptr noundef nonnull @.str.14) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #8, !srcloc !60
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !47

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i41.i = add i32 %33, -1
  br label %ClearPageUptodate.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %1 to i32
  br label %ClearPageUptodate.exit

ClearPageUptodate.exit:                           ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %36, %if.end.i43.i ]
  %37 = inttoptr i32 %retval.0.i44.i to ptr
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %37) #8
  %38 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %23, align 4
  %and.i.i39 = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i39)
  %tobool.not.i40 = icmp eq i32 %and.i.i39, 0
  br i1 %tobool.not.i40, label %do.body7.i44, label %if.then.i41, !prof !47

if.then.i41:                                      ; preds = %ClearPageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %1, ptr noundef nonnull @.str.13) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 463, 0\0A.popsection", ""() #8, !srcloc !61
  unreachable

do.body7.i44:                                     ; preds = %ClearPageUptodate.exit
  %40 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %23, align 4
  %and.i31.i42 = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i42)
  %tobool.not.i.i43 = icmp eq i32 %and.i31.i42, 0
  br i1 %tobool.not.i.i43, label %if.end.i.i47, label %if.then.i.i46, !prof !47

if.then.i.i46:                                    ; preds = %do.body7.i44
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i45 = add i32 %41, -1
  br label %_compound_head.exit.i52

if.end.i.i47:                                     ; preds = %do.body7.i44
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit.i52

_compound_head.exit.i52:                          ; preds = %if.end.i.i47, %if.then.i.i46
  %retval.0.i.i48 = phi i32 [ %sub.i.i45, %if.then.i.i46 ], [ %42, %if.end.i.i47 ]
  %43 = inttoptr i32 %retval.0.i.i48 to ptr
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %45)
  %cmp.i.not.i49 = icmp eq i32 %45, -1
  %46 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %23, align 4
  %and.i32.i50 = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i50)
  %tobool.not.i33.i51 = icmp eq i32 %and.i32.i50, 0
  br i1 %cmp.i.not.i49, label %if.then17.i53, label %do.end24.i59, !prof !43

if.then17.i53:                                    ; preds = %_compound_head.exit.i52
  br i1 %tobool.not.i33.i51, label %if.end.i36.i56, label %if.then.i35.i55, !prof !47

if.then.i35.i55:                                  ; preds = %if.then17.i53
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i34.i54 = add i32 %47, -1
  br label %_compound_head.exit38.i58

if.end.i36.i56:                                   ; preds = %if.then17.i53
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit38.i58

_compound_head.exit38.i58:                        ; preds = %if.end.i36.i56, %if.then.i35.i55
  %retval.0.i37.i57 = phi i32 [ %sub.i34.i54, %if.then.i35.i55 ], [ %48, %if.end.i36.i56 ]
  %49 = inttoptr i32 %retval.0.i37.i57 to ptr
  tail call void @dump_page(ptr noundef %49, ptr noundef nonnull @.str.14) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 463, 0\0A.popsection", ""() #8, !srcloc !62
  unreachable

do.end24.i59:                                     ; preds = %_compound_head.exit.i52
  br i1 %tobool.not.i33.i51, label %if.end.i43.i62, label %if.then.i42.i61, !prof !47

if.then.i42.i61:                                  ; preds = %do.end24.i59
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i41.i60 = add i32 %47, -1
  br label %ClearPageMappedToDisk.exit

if.end.i43.i62:                                   ; preds = %do.end24.i59
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %1 to i32
  br label %ClearPageMappedToDisk.exit

ClearPageMappedToDisk.exit:                       ; preds = %if.end.i43.i62, %if.then.i42.i61
  %retval.0.i44.i63 = phi i32 [ %sub.i41.i60, %if.then.i42.i61 ], [ %50, %if.end.i43.i62 ]
  %51 = inttoptr i32 %retval.0.i44.i63 to ptr
  tail call void @_clear_bit(i32 noundef 17, ptr noundef %51) #8
  tail call void @unlock_buffer(ptr noundef %bh) #8
  %tobool.not.i68 = icmp eq ptr %bh, null
  br i1 %tobool.not.i68, label %ClearPageMappedToDisk.exit.brelse.exit_crit_edge, label %if.then.i69

ClearPageMappedToDisk.exit.brelse.exit_crit_edge: ; preds = %ClearPageMappedToDisk.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit

if.then.i69:                                      ; preds = %ClearPageMappedToDisk.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %bh) #8
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i69, %ClearPageMappedToDisk.exit.brelse.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_page_buffers_clean(ptr noundef %page) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.i.not.i = icmp eq i32 %1, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate.exit, !prof !43

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.17) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #8, !srcloc !44
  unreachable

PagePrivate.exit:                                 ; preds = %entry
  %2 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %page, align 4
  %4 = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !43

do.body4:                                         ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/page.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #8, !srcloc !58
  unreachable

do.end9:                                          ; preds = %PagePrivate.exit
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %5 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %private, align 4
  %7 = inttoptr i32 %6 to ptr
  br label %do.body10

do.body10:                                        ; preds = %if.end14.do.body10_crit_edge, %do.end9
  %bh.0 = phi ptr [ %7, %do.end9 ], [ %12, %if.end14.do.body10_crit_edge ]
  %8 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %bh.0, align 4
  %10 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool12.not = icmp eq i32 %10, 0
  br i1 %tobool12.not, label %if.end14, label %do.body10.cleanup_crit_edge

do.body10.cleanup_crit_edge:                      ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %do.body10
  %b_this_page = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 1
  %11 = ptrtoint ptr %b_this_page to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %b_this_page, align 4
  %cmp.not = icmp eq ptr %12, %7
  br i1 %cmp.not, label %if.end14.cleanup_crit_edge, label %if.end14.do.body10_crit_edge

if.end14.do.body10_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body10

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %if.end14.cleanup_crit_edge, %do.body10.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body10.cleanup_crit_edge ], [ 1, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__nilfs_clear_page_dirty(ptr noundef %page) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping1 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end11, label %if.then

if.then:                                          ; preds = %entry
  %i_pages = getelementptr inbounds %struct.address_space, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %i_pages) #8
  %2 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %page, align 4
  %4 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  br i1 %tobool2.not, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  %5 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !47

if.then.i.i.i:                                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i.i = add i32 %7, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %8, %if.end.i.i.i ]
  %9 = inttoptr i32 %retval.0.i.i.i to ptr
  %10 = getelementptr inbounds %struct.page, ptr %9, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %and.i.i.i.i.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %folio_test_swapbacked.exit.i.i.i, label %if.then.i.i.i.i.i, !prof !47

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %9, ptr noundef nonnull @.str.15) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !63
  unreachable

folio_test_swapbacked.exit.i.i.i:                 ; preds = %_compound_head.exit.i.i
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %9, align 4
  %15 = and i32 %14, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.not.i.i.i = icmp eq i32 %15, 0
  br i1 %tobool.i.not.i.i.i, label %folio_test_swapbacked.exit.i.i.i.if.end.i_crit_edge, label %land.rhs.i.i.i

folio_test_swapbacked.exit.i.i.i.if.end.i_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.rhs.i.i.i:                                   ; preds = %folio_test_swapbacked.exit.i.i.i
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %10, align 4
  %and.i.i.i.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %PageSwapCache.exit.i, label %if.then.i.i.i.i, !prof !47

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %9, ptr noundef nonnull @.str.15) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !63
  unreachable

PageSwapCache.exit.i:                             ; preds = %land.rhs.i.i.i
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %9, align 4
  %20 = and i32 %19, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.i.i.not.i = icmp eq i32 %20, 0
  br i1 %tobool.i.i.not.i, label %PageSwapCache.exit.i.if.end.i_crit_edge, label %if.then.i21, !prof !47

PageSwapCache.exit.i.if.end.i_crit_edge:          ; preds = %PageSwapCache.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i21:                                      ; preds = %PageSwapCache.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = tail call i32 @__page_file_index(ptr noundef %page) #8
  br label %page_index.exit

if.end.i:                                         ; preds = %PageSwapCache.exit.i.if.end.i_crit_edge, %folio_test_swapbacked.exit.i.i.i.if.end.i_crit_edge
  %index.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %21 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %index.i, align 4
  br label %page_index.exit

page_index.exit:                                  ; preds = %if.end.i, %if.then.i21
  %retval.0.i = phi i32 [ %call2.i, %if.then.i21 ], [ %22, %if.end.i ]
  tail call void @__xa_clear_mark(ptr noundef %i_pages, i32 noundef %retval.0.i, i32 noundef 0) #8
  tail call void @_raw_spin_unlock_irq(ptr noundef %i_pages) #8
  %call8 = tail call zeroext i1 @clear_page_dirty_for_io(ptr noundef %page) #8
  %conv = zext i1 %call8 to i32
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irq(ptr noundef %i_pages) #8
  br label %cleanup

if.end11:                                         ; preds = %entry
  %23 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %23, align 4
  %and.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !47

if.then.i.i:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %25, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %26, %if.end.i.i ]
  %27 = inttoptr i32 %retval.0.i.i to ptr
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %cmp.i.not.i = icmp eq i32 %29, -1
  %30 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %23, align 4
  %and.i13.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool.not.i14.i = icmp eq i32 %and.i13.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end8.i, !prof !43

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i17.i, label %if.then.i16.i, !prof !47

if.then.i16.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i15.i = add i32 %31, -1
  br label %_compound_head.exit19.i

if.end.i17.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %page to i32
  br label %_compound_head.exit19.i

_compound_head.exit19.i:                          ; preds = %if.end.i17.i, %if.then.i16.i
  %retval.0.i18.i = phi i32 [ %sub.i15.i, %if.then.i16.i ], [ %32, %if.end.i17.i ]
  %33 = inttoptr i32 %retval.0.i18.i to ptr
  tail call void @dump_page(ptr noundef %33, ptr noundef nonnull @.str.14) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 420, 0\0A.popsection", ""() #8, !srcloc !64
  unreachable

do.end8.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i24.i, label %if.then.i23.i, !prof !47

if.then.i23.i:                                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i22.i = add i32 %31, -1
  br label %TestClearPageDirty.exit

if.end.i24.i:                                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %page to i32
  br label %TestClearPageDirty.exit

TestClearPageDirty.exit:                          ; preds = %if.end.i24.i, %if.then.i23.i
  %retval.0.i25.i = phi i32 [ %sub.i22.i, %if.then.i23.i ], [ %34, %if.end.i24.i ]
  %35 = inttoptr i32 %retval.0.i25.i to ptr
  %call10.i = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %35) #8
  br label %cleanup

cleanup:                                          ; preds = %TestClearPageDirty.exit, %if.end, %page_index.exit
  %retval.0 = phi i32 [ %conv, %page_index.exit ], [ 0, %if.end ], [ %call10.i, %TestClearPageDirty.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nilfs_copy_buffer(ptr noundef %dbh, ptr nocapture noundef readonly %sbh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %sbh, i32 0, i32 2
  %0 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_page, align 8
  %b_page1 = getelementptr inbounds %struct.buffer_head, ptr %dbh, i32 0, i32 2
  %2 = ptrtoint ptr %b_page1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_page1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %4 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %4, 512
  %5 = tail call i32 @llvm.read_register.i32(metadata !33) #8
  %and.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !65
  %9 = tail call i32 @llvm.read_register.i32(metadata !33) #8
  %and.i.i.i1.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 213
  %13 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %14, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !66
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %1, i32 noundef %or.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %15 = load i32, ptr @pgprot_kernel, align 4
  %or.i102 = or i32 %15, 512
  %16 = tail call i32 @llvm.read_register.i32(metadata !33) #8
  %and.i.i.i.i.i103 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i103 to ptr
  %preempt_count.i.i.i.i104 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i104 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i104, align 4
  %add.i.i.i105 = add i32 %19, 1
  store volatile i32 %add.i.i.i105, ptr %preempt_count.i.i.i.i104, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !65
  %20 = tail call i32 @llvm.read_register.i32(metadata !33) #8
  %and.i.i.i1.i.i106 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i1.i.i106 to ptr
  %task.i.i.i.i107 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task.i.i.i.i107 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task.i.i.i.i107, align 8
  %pagefault_disabled.i.i.i.i108 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 213
  %24 = ptrtoint ptr %pagefault_disabled.i.i.i.i108 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pagefault_disabled.i.i.i.i108, align 8
  %inc.i.i.i.i109 = add i32 %25, 1
  store i32 %inc.i.i.i.i109, ptr %pagefault_disabled.i.i.i.i108, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !66
  %call.i.i110 = tail call ptr @__kmap_local_page_prot(ptr noundef %3, i32 noundef %or.i102) #8
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %dbh, i32 0, i32 5
  %26 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %b_data, align 4
  %28 = ptrtoint ptr %27 to i32
  %and = and i32 %28, 4095
  %add.ptr = getelementptr i8, ptr %call.i.i110, i32 %and
  %b_data3 = getelementptr inbounds %struct.buffer_head, ptr %sbh, i32 0, i32 5
  %29 = ptrtoint ptr %b_data3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %b_data3, align 4
  %31 = ptrtoint ptr %30 to i32
  %and4 = and i32 %31, 4095
  %add.ptr5 = getelementptr i8, ptr %call.i.i, i32 %and4
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %sbh, i32 0, i32 4
  %32 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %b_size, align 8
  %34 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr5, i32 %33)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i110) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !67
  %35 = tail call i32 @llvm.read_register.i32(metadata !33) #8
  %and.i.i.i1.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 213
  %39 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %40, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !68
  %41 = tail call i32 @llvm.read_register.i32(metadata !33) #8
  %and.i.i.i.i111 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i111 to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i112 = add i32 %44, -1
  store volatile i32 %sub.i.i112, ptr %preempt_count.i.i.i, align 4
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !67
  %45 = tail call i32 @llvm.read_register.i32(metadata !33) #8
  %and.i.i.i1.i113 = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i1.i113 to ptr
  %task.i.i.i114 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %task.i.i.i114 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %task.i.i.i114, align 8
  %pagefault_disabled.i.i.i115 = getelementptr inbounds %struct.task_struct, ptr %48, i32 0, i32 213
  %49 = ptrtoint ptr %pagefault_disabled.i.i.i115 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pagefault_disabled.i.i.i115, align 8
  %dec.i.i.i116 = add i32 %50, -1
  store i32 %dec.i.i.i116, ptr %pagefault_disabled.i.i.i115, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !68
  %51 = tail call i32 @llvm.read_register.i32(metadata !33) #8
  %and.i.i.i.i117 = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i.i117 to ptr
  %preempt_count.i.i.i118 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %preempt_count.i.i.i118 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %preempt_count.i.i.i118, align 4
  %sub.i.i119 = add i32 %54, -1
  store volatile i32 %sub.i.i119, ptr %preempt_count.i.i.i118, align 4
  %55 = ptrtoint ptr %sbh to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %sbh, align 8
  %and15 = and i32 %56, 917521
  %57 = ptrtoint ptr %dbh to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %and15, ptr %dbh, align 8
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %sbh, i32 0, i32 3
  %58 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %b_blocknr, align 8
  %b_blocknr17 = getelementptr inbounds %struct.buffer_head, ptr %dbh, i32 0, i32 3
  %60 = ptrtoint ptr %b_blocknr17 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %59, ptr %b_blocknr17, align 8
  %b_bdev = getelementptr inbounds %struct.buffer_head, ptr %sbh, i32 0, i32 6
  %61 = ptrtoint ptr %b_bdev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %b_bdev, align 8
  %b_bdev18 = getelementptr inbounds %struct.buffer_head, ptr %dbh, i32 0, i32 6
  %63 = ptrtoint ptr %b_bdev18 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %62, ptr %b_bdev18, align 8
  %64 = load i32, ptr %sbh, align 8
  %and20 = and i32 %64, 17
  %b_this_page122 = getelementptr inbounds %struct.buffer_head, ptr %dbh, i32 0, i32 1
  %65 = ptrtoint ptr %b_this_page122 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %b_this_page122, align 4
  %cmp.not123 = icmp eq ptr %66, %dbh
  br i1 %cmp.not123, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %lock_buffer.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %67 = phi ptr [ %75, %lock_buffer.exit.while.body_crit_edge ], [ %66, %entry.while.body_crit_edge ]
  %bits.0124 = phi i32 [ %and22, %lock_buffer.exit.while.body_crit_edge ], [ %and20, %entry.while.body_crit_edge ]
  tail call void @__might_sleep(ptr noundef nonnull @.str.11, i32 noundef 366) #8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %67, i32 noundef 4) #8
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %67, align 4
  %and.i.i.i.i120 = and i32 %69, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i120)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i120, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %while.body.if.then.i121_crit_edge

while.body.if.then.i121_crit_edge:                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i121

trylock_buffer.exit.i:                            ; preds = %while.body
  tail call void @llvm.prefetch.p0(ptr %67, i32 1, i32 3, i32 1) #8
  %70 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %67, ptr %67, i32 4, ptr elementtype(i32) %67) #8, !srcloc !53
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %70, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !54
  %71 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool.not.not.i = icmp eq i32 %71, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.lock_buffer.exit_crit_edge, label %trylock_buffer.exit.i.if.then.i121_crit_edge

trylock_buffer.exit.i.if.then.i121_crit_edge:     ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i121

trylock_buffer.exit.i.lock_buffer.exit_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lock_buffer.exit

if.then.i121:                                     ; preds = %trylock_buffer.exit.i.if.then.i121_crit_edge, %while.body.if.then.i121_crit_edge
  tail call void @__lock_buffer(ptr noundef %67) #8
  br label %lock_buffer.exit

lock_buffer.exit:                                 ; preds = %if.then.i121, %trylock_buffer.exit.i.lock_buffer.exit_crit_edge
  %72 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %67, align 8
  %and22 = and i32 %73, %bits.0124
  tail call void @unlock_buffer(ptr noundef %67) #8
  %b_this_page = getelementptr inbounds %struct.buffer_head, ptr %67, i32 0, i32 1
  %74 = ptrtoint ptr %b_this_page to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %b_this_page, align 4
  %cmp.not = icmp eq ptr %75, %dbh
  br i1 %cmp.not, label %lock_buffer.exit.while.end_crit_edge, label %lock_buffer.exit.while.body_crit_edge

lock_buffer.exit.while.body_crit_edge:            ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

lock_buffer.exit.while.end_crit_edge:             ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %lock_buffer.exit.while.end_crit_edge, %entry.while.end_crit_edge
  %bits.0.lcssa = phi i32 [ %and20, %entry.while.end_crit_edge ], [ %and22, %lock_buffer.exit.while.end_crit_edge ]
  %and23 = and i32 %bits.0.lcssa, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool.not = icmp eq i32 %and23, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %while.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !69
  %76 = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 1
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %76, align 4
  %and.i.i.i.i = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !47

if.then.i.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %3, ptr noundef nonnull @.str.15) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !63
  unreachable

SetPageUptodate.exit:                             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 2, ptr noundef %3) #8
  br label %if.end

if.else:                                          ; preds = %while.end
  %79 = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 1
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %79, align 4
  %and.i.i = and i32 %81, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i, !prof !47

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %3, ptr noundef nonnull @.str.13) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #8, !srcloc !59
  unreachable

do.body7.i:                                       ; preds = %if.else
  %82 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %79, align 4
  %and.i31.i = and i32 %83, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !47

if.then.i.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %83, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  %84 = ptrtoint ptr %3 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %84, %if.end.i.i ]
  %85 = inttoptr i32 %retval.0.i.i to ptr
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %87)
  %cmp.i.not.i = icmp eq i32 %87, -1
  %88 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %79, align 4
  %and.i32.i = and i32 %89, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i, label %if.then17.i, label %do.end24.i, !prof !43

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !47

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i34.i = add i32 %89, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  %90 = ptrtoint ptr %3 to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %90, %if.end.i36.i ]
  %91 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %91, ptr noundef nonnull @.str.14) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #8, !srcloc !60
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !47

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i41.i = add i32 %89, -1
  br label %ClearPageUptodate.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %92 = ptrtoint ptr %3 to i32
  br label %ClearPageUptodate.exit

ClearPageUptodate.exit:                           ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %92, %if.end.i43.i ]
  %93 = inttoptr i32 %retval.0.i44.i to ptr
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %93) #8
  br label %if.end

if.end:                                           ; preds = %ClearPageUptodate.exit, %SetPageUptodate.exit
  %and24 = and i32 %bits.0.lcssa, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  %94 = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 1
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %94, align 4
  %and.i.i77 = and i32 %96, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i77)
  %tobool.not.i78 = icmp eq i32 %and.i.i77, 0
  br i1 %tobool25.not, label %if.else27, label %if.then26

if.then26:                                        ; preds = %if.end
  br i1 %tobool.not.i78, label %do.body7.i57, label %if.then.i54, !prof !47

if.then.i54:                                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %3, ptr noundef nonnull @.str.13) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 463, 0\0A.popsection", ""() #8, !srcloc !70
  unreachable

do.body7.i57:                                     ; preds = %if.then26
  %97 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %94, align 4
  %and.i31.i55 = and i32 %98, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i55)
  %tobool.not.i.i56 = icmp eq i32 %and.i31.i55, 0
  br i1 %tobool.not.i.i56, label %if.end.i.i60, label %if.then.i.i59, !prof !47

if.then.i.i59:                                    ; preds = %do.body7.i57
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i58 = add i32 %98, -1
  br label %_compound_head.exit.i65

if.end.i.i60:                                     ; preds = %do.body7.i57
  call void @__sanitizer_cov_trace_pc() #10
  %99 = ptrtoint ptr %3 to i32
  br label %_compound_head.exit.i65

_compound_head.exit.i65:                          ; preds = %if.end.i.i60, %if.then.i.i59
  %retval.0.i.i61 = phi i32 [ %sub.i.i58, %if.then.i.i59 ], [ %99, %if.end.i.i60 ]
  %100 = inttoptr i32 %retval.0.i.i61 to ptr
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %100, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %102)
  %cmp.i.not.i62 = icmp eq i32 %102, -1
  %103 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %94, align 4
  %and.i32.i63 = and i32 %104, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i63)
  %tobool.not.i33.i64 = icmp eq i32 %and.i32.i63, 0
  br i1 %cmp.i.not.i62, label %if.then17.i66, label %do.end24.i72, !prof !43

if.then17.i66:                                    ; preds = %_compound_head.exit.i65
  br i1 %tobool.not.i33.i64, label %if.end.i36.i69, label %if.then.i35.i68, !prof !47

if.then.i35.i68:                                  ; preds = %if.then17.i66
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i34.i67 = add i32 %104, -1
  br label %_compound_head.exit38.i71

if.end.i36.i69:                                   ; preds = %if.then17.i66
  call void @__sanitizer_cov_trace_pc() #10
  %105 = ptrtoint ptr %3 to i32
  br label %_compound_head.exit38.i71

_compound_head.exit38.i71:                        ; preds = %if.end.i36.i69, %if.then.i35.i68
  %retval.0.i37.i70 = phi i32 [ %sub.i34.i67, %if.then.i35.i68 ], [ %105, %if.end.i36.i69 ]
  %106 = inttoptr i32 %retval.0.i37.i70 to ptr
  tail call void @dump_page(ptr noundef %106, ptr noundef nonnull @.str.14) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 463, 0\0A.popsection", ""() #8, !srcloc !71
  unreachable

do.end24.i72:                                     ; preds = %_compound_head.exit.i65
  br i1 %tobool.not.i33.i64, label %if.end.i43.i75, label %if.then.i42.i74, !prof !47

if.then.i42.i74:                                  ; preds = %do.end24.i72
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i41.i73 = add i32 %104, -1
  br label %SetPageMappedToDisk.exit

if.end.i43.i75:                                   ; preds = %do.end24.i72
  call void @__sanitizer_cov_trace_pc() #10
  %107 = ptrtoint ptr %3 to i32
  br label %SetPageMappedToDisk.exit

SetPageMappedToDisk.exit:                         ; preds = %if.end.i43.i75, %if.then.i42.i74
  %retval.0.i44.i76 = phi i32 [ %sub.i41.i73, %if.then.i42.i74 ], [ %107, %if.end.i43.i75 ]
  %108 = inttoptr i32 %retval.0.i44.i76 to ptr
  tail call void @_set_bit(i32 noundef 17, ptr noundef %108) #8
  br label %if.end28

if.else27:                                        ; preds = %if.end
  br i1 %tobool.not.i78, label %do.body7.i82, label %if.then.i79, !prof !47

if.then.i79:                                      ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %3, ptr noundef nonnull @.str.13) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 463, 0\0A.popsection", ""() #8, !srcloc !61
  unreachable

do.body7.i82:                                     ; preds = %if.else27
  %109 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile i32, ptr %94, align 4
  %and.i31.i80 = and i32 %110, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i80)
  %tobool.not.i.i81 = icmp eq i32 %and.i31.i80, 0
  br i1 %tobool.not.i.i81, label %if.end.i.i85, label %if.then.i.i84, !prof !47

if.then.i.i84:                                    ; preds = %do.body7.i82
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i83 = add i32 %110, -1
  br label %_compound_head.exit.i90

if.end.i.i85:                                     ; preds = %do.body7.i82
  call void @__sanitizer_cov_trace_pc() #10
  %111 = ptrtoint ptr %3 to i32
  br label %_compound_head.exit.i90

_compound_head.exit.i90:                          ; preds = %if.end.i.i85, %if.then.i.i84
  %retval.0.i.i86 = phi i32 [ %sub.i.i83, %if.then.i.i84 ], [ %111, %if.end.i.i85 ]
  %112 = inttoptr i32 %retval.0.i.i86 to ptr
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load volatile i32, ptr %112, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %114)
  %cmp.i.not.i87 = icmp eq i32 %114, -1
  %115 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile i32, ptr %94, align 4
  %and.i32.i88 = and i32 %116, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i88)
  %tobool.not.i33.i89 = icmp eq i32 %and.i32.i88, 0
  br i1 %cmp.i.not.i87, label %if.then17.i91, label %do.end24.i97, !prof !43

if.then17.i91:                                    ; preds = %_compound_head.exit.i90
  br i1 %tobool.not.i33.i89, label %if.end.i36.i94, label %if.then.i35.i93, !prof !47

if.then.i35.i93:                                  ; preds = %if.then17.i91
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i34.i92 = add i32 %116, -1
  br label %_compound_head.exit38.i96

if.end.i36.i94:                                   ; preds = %if.then17.i91
  call void @__sanitizer_cov_trace_pc() #10
  %117 = ptrtoint ptr %3 to i32
  br label %_compound_head.exit38.i96

_compound_head.exit38.i96:                        ; preds = %if.end.i36.i94, %if.then.i35.i93
  %retval.0.i37.i95 = phi i32 [ %sub.i34.i92, %if.then.i35.i93 ], [ %117, %if.end.i36.i94 ]
  %118 = inttoptr i32 %retval.0.i37.i95 to ptr
  tail call void @dump_page(ptr noundef %118, ptr noundef nonnull @.str.14) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 463, 0\0A.popsection", ""() #8, !srcloc !62
  unreachable

do.end24.i97:                                     ; preds = %_compound_head.exit.i90
  br i1 %tobool.not.i33.i89, label %if.end.i43.i100, label %if.then.i42.i99, !prof !47

if.then.i42.i99:                                  ; preds = %do.end24.i97
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i41.i98 = add i32 %116, -1
  br label %ClearPageMappedToDisk.exit

if.end.i43.i100:                                  ; preds = %do.end24.i97
  call void @__sanitizer_cov_trace_pc() #10
  %119 = ptrtoint ptr %3 to i32
  br label %ClearPageMappedToDisk.exit

ClearPageMappedToDisk.exit:                       ; preds = %if.end.i43.i100, %if.then.i42.i99
  %retval.0.i44.i101 = phi i32 [ %sub.i41.i98, %if.then.i42.i99 ], [ %119, %if.end.i43.i100 ]
  %120 = inttoptr i32 %retval.0.i44.i101 to ptr
  tail call void @_clear_bit(i32 noundef 17, ptr noundef %120) #8
  br label %if.end28

if.end28:                                         ; preds = %ClearPageMappedToDisk.exit, %SetPageMappedToDisk.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nilfs_page_bug(ptr noundef %page) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %page, null
  br i1 %tobool.not, label %do.end, label %if.end, !prof !43

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %if.end.cond.end_crit_edge, label %cond.true

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_ino, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %5, %cond.true ], [ 0, %if.end.cond.end_crit_edge ]
  %_refcount.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i, i32 noundef 4) #8
  %6 = ptrtoint ptr %_refcount.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %_refcount.i, align 4
  %index = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  %conv = zext i32 %9 to i64
  %10 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %page, align 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull %page, i32 noundef %7, i64 noundef %conv, i32 noundef %11, ptr noundef %1, i32 noundef %cond) #11
  %12 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp.i.not.i = icmp eq i32 %13, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate.exit, !prof !43

if.then.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef nonnull %page, ptr noundef nonnull @.str.17) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #8, !srcloc !44
  unreachable

PagePrivate.exit:                                 ; preds = %cond.end
  %14 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %page, align 4
  %16 = and i32 %15, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool12.not = icmp eq i32 %16, 0
  br i1 %tobool12.not, label %PagePrivate.exit.cleanup_crit_edge, label %if.then13

PagePrivate.exit.cleanup_crit_edge:               ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then13:                                        ; preds = %PagePrivate.exit
  %17 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp.i.not.i63 = icmp eq i32 %18, -1
  br i1 %cmp.i.not.i63, label %if.then.i64, label %PagePrivate.exit67, !prof !43

if.then.i64:                                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef nonnull %page, ptr noundef nonnull @.str.17) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #8, !srcloc !44
  unreachable

PagePrivate.exit67:                               ; preds = %if.then13
  %19 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %page, align 4
  %21 = and i32 %20, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool16.not = icmp eq i32 %21, 0
  br i1 %tobool16.not, label %do.body26, label %do.end34, !prof !43

do.body26:                                        ; preds = %PagePrivate.exit67
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/page.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 175, 0\0A.popsection", ""() #8, !srcloc !72
  unreachable

do.end34:                                         ; preds = %PagePrivate.exit67
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %22 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %private, align 4
  %24 = inttoptr i32 %23 to ptr
  br label %do.body36

do.body36:                                        ; preds = %do.body36.do.body36_crit_edge, %do.end34
  %bh.0 = phi ptr [ %24, %do.end34 ], [ %32, %do.body36.do.body36_crit_edge ]
  %i.0 = phi i32 [ 0, %do.end34 ], [ %inc, %do.body36.do.body36_crit_edge ]
  %inc = add i32 %i.0, 1
  %b_count = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %b_count, i32 noundef 4) #8
  %25 = ptrtoint ptr %b_count to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %b_count, align 4
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 3
  %27 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %b_blocknr, align 8
  %29 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bh.0, align 8
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %i.0, ptr noundef %bh.0, i32 noundef %26, i64 noundef %28, i32 noundef %30) #11
  %b_this_page = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 1
  %31 = ptrtoint ptr %b_this_page to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %b_this_page, align 4
  %cmp.not = icmp eq ptr %32, %24
  br i1 %cmp.not, label %do.body36.cleanup_crit_edge, label %do.body36.do.body36_crit_edge

do.body36.do.body36_crit_edge:                    ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body36

do.body36.cleanup_crit_edge:                      ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %do.body36.cleanup_crit_edge, %PagePrivate.exit.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_copy_dirty_pages(ptr noundef %dmap, ptr noundef %smap) local_unnamed_addr #0 align 64 {
entry:
  %pvec = alloca %struct.pagevec, align 4
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %pvec) #8
  %0 = call ptr @memset(ptr %pvec, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #8
  %1 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %index, align 4
  %2 = ptrtoint ptr %pvec to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %pvec, align 4
  %percpu_pvec_drained.i = getelementptr inbounds %struct.pagevec, ptr %pvec, i32 0, i32 1
  %3 = ptrtoint ptr %percpu_pvec_drained.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %percpu_pvec_drained.i, align 1
  %gfp_mask.i.i = getelementptr inbounds %struct.address_space, ptr %dmap, i32 0, i32 3
  br label %repeat

repeat:                                           ; preds = %pagevec_release.exit.repeat_crit_edge, %entry
  %call.i = call i32 @pagevec_lookup_range_tag(ptr noundef nonnull %pvec, ptr noundef %smap, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %repeat.cleanup63_crit_edge, label %for.cond.preheader

repeat.cleanup63_crit_edge:                       ; preds = %repeat
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup63

for.cond.preheader:                               ; preds = %repeat
  %4 = ptrtoint ptr %pvec to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pvec, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp149.not = icmp eq i8 %5, 0
  br i1 %cmp149.not, label %for.cond.preheader.pagevec_release.exit_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.pagevec_release.exit_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %pagevec_release.exit

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0150 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.pagevec, ptr %pvec, i32 0, i32 2, i32 %i.0150
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.18, i32 noundef 788) #8
  %8 = getelementptr inbounds %struct.page, ptr %7, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  %and.i.i86 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i86)
  %tobool.not.i.i87 = icmp eq i32 %and.i.i86, 0
  br i1 %tobool.not.i.i87, label %if.end.i.i90, label %if.then.i.i89, !prof !47

if.then.i.i89:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i88 = add i32 %10, -1
  br label %_compound_head.exit.i92

if.end.i.i90:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %7 to i32
  br label %_compound_head.exit.i92

_compound_head.exit.i92:                          ; preds = %if.end.i.i90, %if.then.i.i89
  %retval.0.i.i91 = phi i32 [ %sub.i.i88, %if.then.i.i89 ], [ %11, %if.end.i.i90 ]
  %12 = inttoptr i32 %retval.0.i.i91 to ptr
  %13 = getelementptr inbounds %struct.page, ptr %12, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  %and.i.i.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !47

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i92
  call void @__sanitizer_cov_trace_pc() #10
  %16 = inttoptr i32 %retval.0.i.i91 to ptr
  call void @dump_page(ptr noundef %16, ptr noundef nonnull @.str.15) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !63
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i92
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %12, i32 noundef 4) #8
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %12, align 4
  %and.i.i4.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i93_crit_edge

folio_flags.exit.i.i.if.then.i93_crit_edge:       ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i93

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  call void @llvm.prefetch.p0(ptr %12, i32 1, i32 3, i32 1) #8
  %19 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #8, !srcloc !53
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !54
  %20 = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %phi.cmp.i.i.i = icmp eq i32 %20, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i93_crit_edge

folio_trylock.exit.i.if.then.i93_crit_edge:       ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i93

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lock_page.exit

if.then.i93:                                      ; preds = %folio_trylock.exit.i.if.then.i93_crit_edge, %folio_flags.exit.i.i.if.then.i93_crit_edge
  call void @__folio_lock(ptr noundef %12) #8
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i93, %folio_trylock.exit.i.lock_page.exit_crit_edge
  %21 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %8, align 4
  %and.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !47

if.then.i.i:                                      ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %22, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %7 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %23, %if.end.i.i ]
  %24 = inttoptr i32 %retval.0.i.i to ptr
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %cmp.i.not.i = icmp eq i32 %26, -1
  %27 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %8, align 4
  %and.i13.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool.not.i14.i = icmp eq i32 %and.i13.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end8.i, !prof !43

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i17.i, label %if.then.i16.i, !prof !47

if.then.i16.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i15.i = add i32 %28, -1
  br label %_compound_head.exit19.i

if.end.i17.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %7 to i32
  br label %_compound_head.exit19.i

_compound_head.exit19.i:                          ; preds = %if.end.i17.i, %if.then.i16.i
  %retval.0.i18.i = phi i32 [ %sub.i15.i, %if.then.i16.i ], [ %29, %if.end.i17.i ]
  %30 = inttoptr i32 %retval.0.i18.i to ptr
  call void @dump_page(ptr noundef %30, ptr noundef nonnull @.str.14) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 420, 0\0A.popsection", ""() #8, !srcloc !73
  unreachable

do.end8.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i24.i, label %if.then.i23.i, !prof !47

if.then.i23.i:                                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i22.i = add i32 %28, -1
  br label %PageDirty.exit

if.end.i24.i:                                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %7 to i32
  br label %PageDirty.exit

PageDirty.exit:                                   ; preds = %if.end.i24.i, %if.then.i23.i
  %retval.0.i25.i = phi i32 [ %sub.i22.i, %if.then.i23.i ], [ %31, %if.end.i24.i ]
  %32 = inttoptr i32 %retval.0.i25.i to ptr
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %32, align 4
  %35 = and i32 %34, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool3.not = icmp eq i32 %35, 0
  br i1 %tobool3.not, label %do.body, label %if.end14, !prof !43

do.body:                                          ; preds = %PageDirty.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @nilfs_page_bug(ptr noundef %7)
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/page.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 258, 0\0A.popsection", ""() #8, !srcloc !74
  unreachable

if.end14:                                         ; preds = %PageDirty.exit
  %index15 = getelementptr inbounds %struct.page, ptr %7, i32 0, i32 1, i32 0, i32 2
  %36 = ptrtoint ptr %index15 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %index15, align 4
  %38 = ptrtoint ptr %gfp_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %gfp_mask.i.i, align 4
  %call.i.i = call ptr @pagecache_get_page(ptr noundef %dmap, i32 noundef %37, i32 noundef 7, i32 noundef %39) #8
  %tobool17.not = icmp eq ptr %call.i.i, null
  br i1 %tobool17.not, label %cleanup, label %if.end27, !prof !43

if.end27:                                         ; preds = %if.end14
  %40 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %41)
  %cmp.i.not.i82 = icmp eq i32 %41, -1
  br i1 %cmp.i.not.i82, label %if.then.i83, label %PagePrivate.exit, !prof !43

if.then.i83:                                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_page(ptr noundef %7, ptr noundef nonnull @.str.17) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #8, !srcloc !44
  unreachable

PagePrivate.exit:                                 ; preds = %if.end27
  %42 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %7, align 4
  %44 = and i32 %43, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool29.not = icmp eq i32 %44, 0
  br i1 %tobool29.not, label %do.body39, label %if.end48, !prof !43

do.body39:                                        ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @nilfs_page_bug(ptr noundef %7)
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/page.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 269, 0\0A.popsection", ""() #8, !srcloc !75
  unreachable

if.end48:                                         ; preds = %PagePrivate.exit
  call fastcc void @nilfs_copy_page(ptr noundef nonnull %call.i.i, ptr noundef %7, i32 noundef 1)
  %call49 = call i32 @__set_page_dirty_nobuffers(ptr noundef nonnull %call.i.i) #8
  call void @unlock_page(ptr noundef nonnull %call.i.i) #8
  %45 = getelementptr inbounds %struct.page, ptr %call.i.i, i32 0, i32 1
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %45, align 4
  %and.i.i94 = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i94)
  %tobool.not.i.i95 = icmp eq i32 %and.i.i94, 0
  br i1 %tobool.not.i.i95, label %if.end.i.i98, label %if.then.i.i97, !prof !47

if.then.i.i97:                                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i96 = add i32 %47, -1
  br label %_compound_head.exit.i100

if.end.i.i98:                                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %call.i.i to i32
  br label %_compound_head.exit.i100

_compound_head.exit.i100:                         ; preds = %if.end.i.i98, %if.then.i.i97
  %retval.0.i.i99 = phi i32 [ %sub.i.i96, %if.then.i.i97 ], [ %48, %if.end.i.i98 ]
  %49 = inttoptr i32 %retval.0.i.i99 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %49, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  %50 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp.i.i.i.i = icmp eq i32 %51, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !43

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i100
  call void @__sanitizer_cov_trace_pc() #10
  %52 = inttoptr i32 %retval.0.i.i99 to ptr
  call void @dump_page(ptr noundef %52, ptr noundef nonnull @.str.12) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !48
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i100
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !49
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #8
  %53 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #8, !srcloc !50
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %53, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@nilfs_copy_dirty_pages, %if.then.i.i.i.i.i)) #8
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !52

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %49, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #8
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.for.inc_crit_edge

folio_put_testzero.exit.i.i.for.inc_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__put_page(ptr noundef %49) #8
  br label %for.inc

cleanup:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  call void @unlock_page(ptr noundef %7) #8
  %54 = ptrtoint ptr %pvec to i32
  call void @__asan_load1_noabort(i32 %54)
  %.pr = load i8, ptr %pvec, align 4
  br label %for.end

for.inc:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.for.inc_crit_edge
  call void @unlock_page(ptr noundef %7) #8
  %inc = add nuw nsw i32 %i.0150, 1
  %55 = ptrtoint ptr %pvec to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %pvec, align 4
  %conv.i = zext i8 %56 to i32
  %cmp = icmp ult i32 %inc, %conv.i
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup
  %57 = phi i8 [ %.pr, %cleanup ], [ %56, %for.inc.for.end_crit_edge ]
  %err.3 = phi i32 [ -12, %cleanup ], [ 0, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i = icmp eq i8 %57, 0
  br i1 %tobool.not.i, label %for.end.pagevec_release.exit_crit_edge, label %if.then.i101

for.end.pagevec_release.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %pagevec_release.exit

if.then.i101:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__pagevec_release(ptr noundef nonnull %pvec) #8
  br label %pagevec_release.exit

pagevec_release.exit:                             ; preds = %if.then.i101, %for.end.pagevec_release.exit_crit_edge, %for.cond.preheader.pagevec_release.exit_crit_edge
  %err.3193 = phi i32 [ %err.3, %for.end.pagevec_release.exit_crit_edge ], [ %err.3, %if.then.i101 ], [ 0, %for.cond.preheader.pagevec_release.exit_crit_edge ]
  %cmp114192 = phi i1 [ %tobool17.not, %for.end.pagevec_release.exit_crit_edge ], [ %tobool17.not, %if.then.i101 ], [ false, %for.cond.preheader.pagevec_release.exit_crit_edge ]
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 279, i32 noundef 0) #8
  %call.i102 = call i32 @__cond_resched() #8
  br i1 %cmp114192, label %pagevec_release.exit.cleanup63_crit_edge, label %pagevec_release.exit.repeat_crit_edge, !prof !43

pagevec_release.exit.repeat_crit_edge:            ; preds = %pagevec_release.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %repeat

pagevec_release.exit.cleanup63_crit_edge:         ; preds = %pagevec_release.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup63

cleanup63:                                        ; preds = %pagevec_release.exit.cleanup63_crit_edge, %repeat.cleanup63_crit_edge
  %retval.0 = phi i32 [ 0, %repeat.cleanup63_crit_edge ], [ %err.3193, %pagevec_release.exit.cleanup63_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pvec) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nilfs_copy_page(ptr noundef %dst, ptr noundef %src, i32 noundef %copy_dirty) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %dst, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !47

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %2, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %dst to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %3, %if.end.i.i ]
  %4 = inttoptr i32 %retval.0.i.i to ptr
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp.i.not.i = icmp eq i32 %6, -1
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %0, align 4
  %and.i16.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !43

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !47

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i18.i = add i32 %8, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %dst to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %9, %if.end.i20.i ]
  %10 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %10, ptr noundef nonnull @.str.14) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 461, 0\0A.popsection", ""() #8, !srcloc !76
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !47

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i25.i = add i32 %8, -1
  br label %PageWriteback.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %dst to i32
  br label %PageWriteback.exit

PageWriteback.exit:                               ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %11, %if.end.i27.i ]
  %12 = inttoptr i32 %retval.0.i28.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %15 = and i32 %14, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %do.body9, label %do.body3, !prof !47

do.body3:                                         ; preds = %PageWriteback.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/page.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 201, 0\0A.popsection", ""() #8, !srcloc !77
  unreachable

do.body9:                                         ; preds = %PageWriteback.exit
  %16 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp.i.not.i138 = icmp eq i32 %17, -1
  br i1 %cmp.i.not.i138, label %if.then.i139, label %PagePrivate.exit, !prof !43

if.then.i139:                                     ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %src, ptr noundef nonnull @.str.17) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #8, !srcloc !44
  unreachable

PagePrivate.exit:                                 ; preds = %do.body9
  %18 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %src, align 4
  %20 = and i32 %19, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool11.not = icmp eq i32 %20, 0
  br i1 %tobool11.not, label %do.body21, label %do.end29, !prof !43

do.body21:                                        ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/page.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 203, 0\0A.popsection", ""() #8, !srcloc !78
  unreachable

do.end29:                                         ; preds = %PagePrivate.exit
  %private = getelementptr inbounds %struct.page, ptr %src, i32 0, i32 1, i32 0, i32 3
  %21 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %private, align 4
  %23 = inttoptr i32 %22 to ptr
  %24 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %dst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp.i.not.i142 = icmp eq i32 %25, -1
  br i1 %cmp.i.not.i142, label %if.then.i143, label %PagePrivate.exit146, !prof !43

if.then.i143:                                     ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %dst, ptr noundef nonnull @.str.17) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #8, !srcloc !44
  unreachable

PagePrivate.exit146:                              ; preds = %do.end29
  %26 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %dst, align 4
  %28 = and i32 %27, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool31.not = icmp eq i32 %28, 0
  br i1 %tobool31.not, label %if.then32, label %PagePrivate.exit146.if.end33_crit_edge

PagePrivate.exit146.if.end33_crit_edge:           ; preds = %PagePrivate.exit146
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then32:                                        ; preds = %PagePrivate.exit146
  call void @__sanitizer_cov_trace_pc() #10
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %23, i32 0, i32 4
  %29 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %b_size, align 8
  tail call void @create_empty_buffers(ptr noundef %dst, i32 noundef %30, i32 noundef 0) #8
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %PagePrivate.exit146.if.end33_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copy_dirty)
  %tobool34.not = icmp eq i32 %copy_dirty, 0
  %spec.select = select i1 %tobool34.not, i32 917521, i32 917523
  %31 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %dst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %cmp.i.not.i147 = icmp eq i32 %32, -1
  br i1 %cmp.i.not.i147, label %if.then.i148, label %PagePrivate.exit151, !prof !43

if.then.i148:                                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %dst, ptr noundef nonnull @.str.17) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #8, !srcloc !44
  unreachable

PagePrivate.exit151:                              ; preds = %if.end33
  %33 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %dst, align 4
  %35 = and i32 %34, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool39.not = icmp eq i32 %35, 0
  br i1 %tobool39.not, label %do.body49, label %do.end57, !prof !43

do.body49:                                        ; preds = %PagePrivate.exit151
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/page.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 210, 0\0A.popsection", ""() #8, !srcloc !79
  unreachable

do.end57:                                         ; preds = %PagePrivate.exit151
  %private59 = getelementptr inbounds %struct.page, ptr %dst, i32 0, i32 1, i32 0, i32 3
  %36 = ptrtoint ptr %private59 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %private59, align 4
  %38 = inttoptr i32 %37 to ptr
  br label %do.body60

do.body60:                                        ; preds = %lock_buffer.exit315.do.body60_crit_edge, %do.end57
  %sbh.0 = phi ptr [ %23, %do.end57 ], [ %57, %lock_buffer.exit315.do.body60_crit_edge ]
  %dbh.0 = phi ptr [ %38, %do.end57 ], [ %59, %lock_buffer.exit315.do.body60_crit_edge ]
  tail call void @__might_sleep(ptr noundef nonnull @.str.11, i32 noundef 366) #8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sbh.0, i32 noundef 4) #8
  %39 = ptrtoint ptr %sbh.0 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %sbh.0, align 4
  %and.i.i.i.i306 = and i32 %40, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i306)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i306, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %do.body60.if.then.i307_crit_edge

do.body60.if.then.i307_crit_edge:                 ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i307

trylock_buffer.exit.i:                            ; preds = %do.body60
  tail call void @llvm.prefetch.p0(ptr %sbh.0, i32 1, i32 3, i32 1) #8
  %41 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sbh.0, ptr %sbh.0, i32 4, ptr elementtype(i32) %sbh.0) #8, !srcloc !53
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %41, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !54
  %42 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.not.i = icmp eq i32 %42, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.lock_buffer.exit_crit_edge, label %trylock_buffer.exit.i.if.then.i307_crit_edge

trylock_buffer.exit.i.if.then.i307_crit_edge:     ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i307

trylock_buffer.exit.i.lock_buffer.exit_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lock_buffer.exit

if.then.i307:                                     ; preds = %trylock_buffer.exit.i.if.then.i307_crit_edge, %do.body60.if.then.i307_crit_edge
  tail call void @__lock_buffer(ptr noundef %sbh.0) #8
  br label %lock_buffer.exit

lock_buffer.exit:                                 ; preds = %if.then.i307, %trylock_buffer.exit.i.lock_buffer.exit_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.11, i32 noundef 366) #8
  %call.i.i.i.i308 = tail call zeroext i1 @__kasan_check_write(ptr noundef %dbh.0, i32 noundef 4) #8
  %43 = ptrtoint ptr %dbh.0 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %dbh.0, align 4
  %and.i.i.i.i309 = and i32 %44, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i309)
  %tobool.not.i.i.i.i310 = icmp eq i32 %and.i.i.i.i309, 0
  br i1 %tobool.not.i.i.i.i310, label %trylock_buffer.exit.i313, label %lock_buffer.exit.if.then.i314_crit_edge

lock_buffer.exit.if.then.i314_crit_edge:          ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i314

trylock_buffer.exit.i313:                         ; preds = %lock_buffer.exit
  tail call void @llvm.prefetch.p0(ptr %dbh.0, i32 1, i32 3, i32 1) #8
  %45 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dbh.0, ptr %dbh.0, i32 4, ptr elementtype(i32) %dbh.0) #8, !srcloc !53
  %asmresult.i.i.i.i.i.i.i311 = extractvalue { i32, i32, i32 } %45, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !54
  %46 = and i32 %asmresult.i.i.i.i.i.i.i311, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.not.i312 = icmp eq i32 %46, 0
  br i1 %tobool.not.not.i312, label %trylock_buffer.exit.i313.lock_buffer.exit315_crit_edge, label %trylock_buffer.exit.i313.if.then.i314_crit_edge

trylock_buffer.exit.i313.if.then.i314_crit_edge:  ; preds = %trylock_buffer.exit.i313
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i314

trylock_buffer.exit.i313.lock_buffer.exit315_crit_edge: ; preds = %trylock_buffer.exit.i313
  call void @__sanitizer_cov_trace_pc() #10
  br label %lock_buffer.exit315

if.then.i314:                                     ; preds = %trylock_buffer.exit.i313.if.then.i314_crit_edge, %lock_buffer.exit.if.then.i314_crit_edge
  tail call void @__lock_buffer(ptr noundef %dbh.0) #8
  br label %lock_buffer.exit315

lock_buffer.exit315:                              ; preds = %if.then.i314, %trylock_buffer.exit.i313.lock_buffer.exit315_crit_edge
  %47 = ptrtoint ptr %sbh.0 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sbh.0, align 8
  %and = and i32 %48, %spec.select
  %49 = ptrtoint ptr %dbh.0 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %and, ptr %dbh.0, align 8
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %sbh.0, i32 0, i32 3
  %50 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %b_blocknr, align 8
  %b_blocknr62 = getelementptr inbounds %struct.buffer_head, ptr %dbh.0, i32 0, i32 3
  %52 = ptrtoint ptr %b_blocknr62 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %51, ptr %b_blocknr62, align 8
  %b_bdev = getelementptr inbounds %struct.buffer_head, ptr %sbh.0, i32 0, i32 6
  %53 = ptrtoint ptr %b_bdev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %b_bdev, align 8
  %b_bdev63 = getelementptr inbounds %struct.buffer_head, ptr %dbh.0, i32 0, i32 6
  %55 = ptrtoint ptr %b_bdev63 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %b_bdev63, align 8
  %b_this_page = getelementptr inbounds %struct.buffer_head, ptr %sbh.0, i32 0, i32 1
  %56 = ptrtoint ptr %b_this_page to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %b_this_page, align 4
  %b_this_page64 = getelementptr inbounds %struct.buffer_head, ptr %dbh.0, i32 0, i32 1
  %58 = ptrtoint ptr %b_this_page64 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %b_this_page64, align 4
  %cmp.not = icmp eq ptr %59, %38
  br i1 %cmp.not, label %do.end66, label %lock_buffer.exit315.do.body60_crit_edge

lock_buffer.exit315.do.body60_crit_edge:          ; preds = %lock_buffer.exit315
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body60

do.end66:                                         ; preds = %lock_buffer.exit315
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %60 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %60, 512
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %src, i32 noundef %or.i.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %61 = load i32, ptr @pgprot_kernel, align 4
  %or.i13.i = or i32 %61, 512
  %call.i14.i = tail call ptr @__kmap_local_page_prot(ptr noundef %dst, i32 noundef %or.i13.i) #8
  tail call void @copy_page(ptr noundef %call.i14.i, ptr noundef %call.i.i) #8
  tail call void @kunmap_local_indexed(ptr noundef %call.i14.i) #8
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #8
  %62 = getelementptr inbounds %struct.page, ptr %src, i32 0, i32 1
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %62, align 4
  %and.i.i316 = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i316)
  %tobool.not.i.i317 = icmp eq i32 %and.i.i316, 0
  br i1 %tobool.not.i.i317, label %if.end.i.i320, label %if.then.i.i319, !prof !47

if.then.i.i319:                                   ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i318 = add i32 %64, -1
  br label %_compound_head.exit.i324

if.end.i.i320:                                    ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %src to i32
  br label %_compound_head.exit.i324

_compound_head.exit.i324:                         ; preds = %if.end.i.i320, %if.then.i.i319
  %retval.0.i.i321 = phi i32 [ %sub.i.i318, %if.then.i.i319 ], [ %65, %if.end.i.i320 ]
  %66 = inttoptr i32 %retval.0.i.i321 to ptr
  %67 = getelementptr inbounds %struct.page, ptr %66, i32 0, i32 1
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %67, align 4
  %and.i.i.i.i322 = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i322)
  %tobool.not.i.i.i323 = icmp eq i32 %and.i.i.i.i322, 0
  br i1 %tobool.not.i.i.i323, label %folio_flags.exit.i.i, label %if.then.i.i.i325, !prof !47

if.then.i.i.i325:                                 ; preds = %_compound_head.exit.i324
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %66, ptr noundef nonnull @.str.15) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !63
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i324
  %70 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %66, align 4
  %72 = and i32 %71, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool.i.not.i = icmp eq i32 %72, 0
  br i1 %tobool.i.not.i, label %folio_flags.exit.i.i.if.else_crit_edge, label %PageUptodate.exit

folio_flags.exit.i.i.if.else_crit_edge:           ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !80
  %73 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %0, align 4
  %and.i.i326 = and i32 %74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i326)
  %tobool.not.i.i327 = icmp eq i32 %and.i.i326, 0
  br i1 %tobool.not.i.i327, label %if.end.i.i330, label %if.then.i.i329, !prof !47

if.then.i.i329:                                   ; preds = %PageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i328 = add i32 %74, -1
  br label %_compound_head.exit.i334

if.end.i.i330:                                    ; preds = %PageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #10
  %75 = ptrtoint ptr %dst to i32
  br label %_compound_head.exit.i334

_compound_head.exit.i334:                         ; preds = %if.end.i.i330, %if.then.i.i329
  %retval.0.i.i331 = phi i32 [ %sub.i.i328, %if.then.i.i329 ], [ %75, %if.end.i.i330 ]
  %76 = inttoptr i32 %retval.0.i.i331 to ptr
  %77 = getelementptr inbounds %struct.page, ptr %76, i32 0, i32 1
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %77, align 4
  %and.i.i.i.i332 = and i32 %79, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i332)
  %tobool.not.i.i.i333 = icmp eq i32 %and.i.i.i.i332, 0
  br i1 %tobool.not.i.i.i333, label %folio_flags.exit.i.i337, label %if.then.i.i.i335, !prof !47

if.then.i.i.i335:                                 ; preds = %_compound_head.exit.i334
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %76, ptr noundef nonnull @.str.15) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !63
  unreachable

folio_flags.exit.i.i337:                          ; preds = %_compound_head.exit.i334
  %80 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %76, align 4
  %82 = and i32 %81, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool.i.not.i336 = icmp eq i32 %82, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8
  br i1 %tobool.i.not.i336, label %if.then71, label %folio_flags.exit.i.i337.if.else_crit_edge

folio_flags.exit.i.i337.if.else_crit_edge:        ; preds = %folio_flags.exit.i.i337
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then71:                                        ; preds = %folio_flags.exit.i.i337
  %83 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %0, align 4
  %and.i.i.i.i = and i32 %84, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !47

if.then.i.i.i:                                    ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %dst, ptr noundef nonnull @.str.15) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !63
  unreachable

SetPageUptodate.exit:                             ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 2, ptr noundef %dst) #8
  br label %if.end79

if.else:                                          ; preds = %folio_flags.exit.i.i337.if.else_crit_edge, %folio_flags.exit.i.i.if.else_crit_edge
  %85 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %62, align 4
  %and.i.i341 = and i32 %86, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i341)
  %tobool.not.i.i342 = icmp eq i32 %and.i.i341, 0
  br i1 %tobool.not.i.i342, label %if.end.i.i345, label %if.then.i.i344, !prof !47

if.then.i.i344:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i343 = add i32 %86, -1
  br label %_compound_head.exit.i349

if.end.i.i345:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %87 = ptrtoint ptr %src to i32
  br label %_compound_head.exit.i349

_compound_head.exit.i349:                         ; preds = %if.end.i.i345, %if.then.i.i344
  %retval.0.i.i346 = phi i32 [ %sub.i.i343, %if.then.i.i344 ], [ %87, %if.end.i.i345 ]
  %88 = inttoptr i32 %retval.0.i.i346 to ptr
  %89 = getelementptr inbounds %struct.page, ptr %88, i32 0, i32 1
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %89, align 4
  %and.i.i.i.i347 = and i32 %91, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i347)
  %tobool.not.i.i.i348 = icmp eq i32 %and.i.i.i.i347, 0
  br i1 %tobool.not.i.i.i348, label %folio_flags.exit.i.i352, label %if.then.i.i.i350, !prof !47

if.then.i.i.i350:                                 ; preds = %_compound_head.exit.i349
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %88, ptr noundef nonnull @.str.15) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !63
  unreachable

folio_flags.exit.i.i352:                          ; preds = %_compound_head.exit.i349
  %92 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %88, align 4
  %94 = and i32 %93, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool.i.not.i351 = icmp eq i32 %94, 0
  br i1 %tobool.i.not.i351, label %land.lhs.true74, label %PageUptodate.exit355

PageUptodate.exit355:                             ; preds = %folio_flags.exit.i.i352
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !80
  br label %if.end79

land.lhs.true74:                                  ; preds = %folio_flags.exit.i.i352
  %95 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %0, align 4
  %and.i.i356 = and i32 %96, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i356)
  %tobool.not.i.i357 = icmp eq i32 %and.i.i356, 0
  br i1 %tobool.not.i.i357, label %if.end.i.i360, label %if.then.i.i359, !prof !47

if.then.i.i359:                                   ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i358 = add i32 %96, -1
  br label %_compound_head.exit.i364

if.end.i.i360:                                    ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #10
  %97 = ptrtoint ptr %dst to i32
  br label %_compound_head.exit.i364

_compound_head.exit.i364:                         ; preds = %if.end.i.i360, %if.then.i.i359
  %retval.0.i.i361 = phi i32 [ %sub.i.i358, %if.then.i.i359 ], [ %97, %if.end.i.i360 ]
  %98 = inttoptr i32 %retval.0.i.i361 to ptr
  %99 = getelementptr inbounds %struct.page, ptr %98, i32 0, i32 1
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load volatile i32, ptr %99, align 4
  %and.i.i.i.i362 = and i32 %101, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i362)
  %tobool.not.i.i.i363 = icmp eq i32 %and.i.i.i.i362, 0
  br i1 %tobool.not.i.i.i363, label %folio_flags.exit.i.i367, label %if.then.i.i.i365, !prof !47

if.then.i.i.i365:                                 ; preds = %_compound_head.exit.i364
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %98, ptr noundef nonnull @.str.15) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !63
  unreachable

folio_flags.exit.i.i367:                          ; preds = %_compound_head.exit.i364
  %102 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile i32, ptr %98, align 4
  %104 = and i32 %103, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool.i.not.i366 = icmp eq i32 %104, 0
  br i1 %tobool.i.not.i366, label %folio_flags.exit.i.i367.if.end79_crit_edge, label %PageUptodate.exit370

folio_flags.exit.i.i367.if.end79_crit_edge:       ; preds = %folio_flags.exit.i.i367
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

PageUptodate.exit370:                             ; preds = %folio_flags.exit.i.i367
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !80
  %105 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %0, align 4
  %and.i.i152 = and i32 %106, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i152)
  %tobool.not.i = icmp eq i32 %and.i.i152, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i153, !prof !47

if.then.i153:                                     ; preds = %PageUptodate.exit370
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %dst, ptr noundef nonnull @.str.13) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #8, !srcloc !59
  unreachable

do.body7.i:                                       ; preds = %PageUptodate.exit370
  %107 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %0, align 4
  %and.i31.i = and i32 %108, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i154 = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i154, label %if.end.i.i157, label %if.then.i.i156, !prof !47

if.then.i.i156:                                   ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i155 = add i32 %108, -1
  br label %_compound_head.exit.i160

if.end.i.i157:                                    ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  %109 = ptrtoint ptr %dst to i32
  br label %_compound_head.exit.i160

_compound_head.exit.i160:                         ; preds = %if.end.i.i157, %if.then.i.i156
  %retval.0.i.i158 = phi i32 [ %sub.i.i155, %if.then.i.i156 ], [ %109, %if.end.i.i157 ]
  %110 = inttoptr i32 %retval.0.i.i158 to ptr
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile i32, ptr %110, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %112)
  %cmp.i.not.i159 = icmp eq i32 %112, -1
  %113 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load volatile i32, ptr %0, align 4
  %and.i32.i = and i32 %114, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i159, label %if.then17.i, label %do.end24.i, !prof !43

if.then17.i:                                      ; preds = %_compound_head.exit.i160
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !47

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i34.i = add i32 %114, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  %115 = ptrtoint ptr %dst to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %115, %if.end.i36.i ]
  %116 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %116, ptr noundef nonnull @.str.14) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #8, !srcloc !60
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i160
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !47

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i41.i = add i32 %114, -1
  br label %ClearPageUptodate.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %117 = ptrtoint ptr %dst to i32
  br label %ClearPageUptodate.exit

ClearPageUptodate.exit:                           ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %117, %if.end.i43.i ]
  %118 = inttoptr i32 %retval.0.i44.i to ptr
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %118) #8
  br label %if.end79

if.end79:                                         ; preds = %ClearPageUptodate.exit, %folio_flags.exit.i.i367.if.end79_crit_edge, %PageUptodate.exit355, %SetPageUptodate.exit
  %119 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load volatile i32, ptr %62, align 4
  %and.i.i161 = and i32 %120, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i161)
  %tobool.not.i.i162 = icmp eq i32 %and.i.i161, 0
  br i1 %tobool.not.i.i162, label %if.end.i.i165, label %if.then.i.i164, !prof !47

if.then.i.i164:                                   ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i163 = add i32 %120, -1
  br label %_compound_head.exit.i170

if.end.i.i165:                                    ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  %121 = ptrtoint ptr %src to i32
  br label %_compound_head.exit.i170

_compound_head.exit.i170:                         ; preds = %if.end.i.i165, %if.then.i.i164
  %retval.0.i.i166 = phi i32 [ %sub.i.i163, %if.then.i.i164 ], [ %121, %if.end.i.i165 ]
  %122 = inttoptr i32 %retval.0.i.i166 to ptr
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load volatile i32, ptr %122, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %124)
  %cmp.i.not.i167 = icmp eq i32 %124, -1
  %125 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load volatile i32, ptr %62, align 4
  %and.i16.i168 = and i32 %126, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i168)
  %tobool.not.i17.i169 = icmp eq i32 %and.i16.i168, 0
  br i1 %cmp.i.not.i167, label %if.then.i171, label %do.end10.i177, !prof !43

if.then.i171:                                     ; preds = %_compound_head.exit.i170
  br i1 %tobool.not.i17.i169, label %if.end.i20.i174, label %if.then.i19.i173, !prof !47

if.then.i19.i173:                                 ; preds = %if.then.i171
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i18.i172 = add i32 %126, -1
  br label %_compound_head.exit22.i176

if.end.i20.i174:                                  ; preds = %if.then.i171
  call void @__sanitizer_cov_trace_pc() #10
  %127 = ptrtoint ptr %src to i32
  br label %_compound_head.exit22.i176

_compound_head.exit22.i176:                       ; preds = %if.end.i20.i174, %if.then.i19.i173
  %retval.0.i21.i175 = phi i32 [ %sub.i18.i172, %if.then.i19.i173 ], [ %127, %if.end.i20.i174 ]
  %128 = inttoptr i32 %retval.0.i21.i175 to ptr
  tail call void @dump_page(ptr noundef %128, ptr noundef nonnull @.str.14) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 463, 0\0A.popsection", ""() #8, !srcloc !81
  unreachable

do.end10.i177:                                    ; preds = %_compound_head.exit.i170
  br i1 %tobool.not.i17.i169, label %if.end.i27.i180, label %if.then.i26.i179, !prof !47

if.then.i26.i179:                                 ; preds = %do.end10.i177
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i25.i178 = add i32 %126, -1
  br label %PageMappedToDisk.exit

if.end.i27.i180:                                  ; preds = %do.end10.i177
  call void @__sanitizer_cov_trace_pc() #10
  %129 = ptrtoint ptr %src to i32
  br label %PageMappedToDisk.exit

PageMappedToDisk.exit:                            ; preds = %if.end.i27.i180, %if.then.i26.i179
  %retval.0.i28.i181 = phi i32 [ %sub.i25.i178, %if.then.i26.i179 ], [ %129, %if.end.i27.i180 ]
  %130 = inttoptr i32 %retval.0.i28.i181 to ptr
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load volatile i32, ptr %130, align 4
  %133 = and i32 %132, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool81.not = icmp eq i32 %133, 0
  br i1 %tobool81.not, label %PageMappedToDisk.exit.if.else86_crit_edge, label %land.lhs.true82

PageMappedToDisk.exit.if.else86_crit_edge:        ; preds = %PageMappedToDisk.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else86

land.lhs.true82:                                  ; preds = %PageMappedToDisk.exit
  %134 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load volatile i32, ptr %0, align 4
  %and.i.i184 = and i32 %135, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i184)
  %tobool.not.i.i185 = icmp eq i32 %and.i.i184, 0
  br i1 %tobool.not.i.i185, label %if.end.i.i188, label %if.then.i.i187, !prof !47

if.then.i.i187:                                   ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i186 = add i32 %135, -1
  br label %_compound_head.exit.i193

if.end.i.i188:                                    ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #10
  %136 = ptrtoint ptr %dst to i32
  br label %_compound_head.exit.i193

_compound_head.exit.i193:                         ; preds = %if.end.i.i188, %if.then.i.i187
  %retval.0.i.i189 = phi i32 [ %sub.i.i186, %if.then.i.i187 ], [ %136, %if.end.i.i188 ]
  %137 = inttoptr i32 %retval.0.i.i189 to ptr
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load volatile i32, ptr %137, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %139)
  %cmp.i.not.i190 = icmp eq i32 %139, -1
  %140 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load volatile i32, ptr %0, align 4
  %and.i16.i191 = and i32 %141, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i191)
  %tobool.not.i17.i192 = icmp eq i32 %and.i16.i191, 0
  br i1 %cmp.i.not.i190, label %if.then.i194, label %do.end10.i200, !prof !43

if.then.i194:                                     ; preds = %_compound_head.exit.i193
  br i1 %tobool.not.i17.i192, label %if.end.i20.i197, label %if.then.i19.i196, !prof !47

if.then.i19.i196:                                 ; preds = %if.then.i194
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i18.i195 = add i32 %141, -1
  br label %_compound_head.exit22.i199

if.end.i20.i197:                                  ; preds = %if.then.i194
  call void @__sanitizer_cov_trace_pc() #10
  %142 = ptrtoint ptr %dst to i32
  br label %_compound_head.exit22.i199

_compound_head.exit22.i199:                       ; preds = %if.end.i20.i197, %if.then.i19.i196
  %retval.0.i21.i198 = phi i32 [ %sub.i18.i195, %if.then.i19.i196 ], [ %142, %if.end.i20.i197 ]
  %143 = inttoptr i32 %retval.0.i21.i198 to ptr
  tail call void @dump_page(ptr noundef %143, ptr noundef nonnull @.str.14) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 463, 0\0A.popsection", ""() #8, !srcloc !81
  unreachable

do.end10.i200:                                    ; preds = %_compound_head.exit.i193
  br i1 %tobool.not.i17.i192, label %if.end.i27.i203, label %if.then.i26.i202, !prof !47

if.then.i26.i202:                                 ; preds = %do.end10.i200
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i25.i201 = add i32 %141, -1
  br label %PageMappedToDisk.exit207

if.end.i27.i203:                                  ; preds = %do.end10.i200
  call void @__sanitizer_cov_trace_pc() #10
  %144 = ptrtoint ptr %dst to i32
  br label %PageMappedToDisk.exit207

PageMappedToDisk.exit207:                         ; preds = %if.end.i27.i203, %if.then.i26.i202
  %retval.0.i28.i204 = phi i32 [ %sub.i25.i201, %if.then.i26.i202 ], [ %144, %if.end.i27.i203 ]
  %145 = inttoptr i32 %retval.0.i28.i204 to ptr
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load volatile i32, ptr %145, align 4
  %148 = and i32 %147, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool84.not = icmp eq i32 %148, 0
  br i1 %tobool84.not, label %if.then85, label %PageMappedToDisk.exit207.if.else86_crit_edge

PageMappedToDisk.exit207.if.else86_crit_edge:     ; preds = %PageMappedToDisk.exit207
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else86

if.then85:                                        ; preds = %PageMappedToDisk.exit207
  %149 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load volatile i32, ptr %0, align 4
  %and.i.i208 = and i32 %150, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i208)
  %tobool.not.i209 = icmp eq i32 %and.i.i208, 0
  br i1 %tobool.not.i209, label %do.body7.i213, label %if.then.i210, !prof !47

if.then.i210:                                     ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %dst, ptr noundef nonnull @.str.13) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 463, 0\0A.popsection", ""() #8, !srcloc !70
  unreachable

do.body7.i213:                                    ; preds = %if.then85
  %151 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load volatile i32, ptr %0, align 4
  %and.i31.i211 = and i32 %152, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i211)
  %tobool.not.i.i212 = icmp eq i32 %and.i31.i211, 0
  br i1 %tobool.not.i.i212, label %if.end.i.i216, label %if.then.i.i215, !prof !47

if.then.i.i215:                                   ; preds = %do.body7.i213
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i214 = add i32 %152, -1
  br label %_compound_head.exit.i221

if.end.i.i216:                                    ; preds = %do.body7.i213
  call void @__sanitizer_cov_trace_pc() #10
  %153 = ptrtoint ptr %dst to i32
  br label %_compound_head.exit.i221

_compound_head.exit.i221:                         ; preds = %if.end.i.i216, %if.then.i.i215
  %retval.0.i.i217 = phi i32 [ %sub.i.i214, %if.then.i.i215 ], [ %153, %if.end.i.i216 ]
  %154 = inttoptr i32 %retval.0.i.i217 to ptr
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load volatile i32, ptr %154, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %156)
  %cmp.i.not.i218 = icmp eq i32 %156, -1
  %157 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load volatile i32, ptr %0, align 4
  %and.i32.i219 = and i32 %158, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i219)
  %tobool.not.i33.i220 = icmp eq i32 %and.i32.i219, 0
  br i1 %cmp.i.not.i218, label %if.then17.i222, label %do.end24.i228, !prof !43

if.then17.i222:                                   ; preds = %_compound_head.exit.i221
  br i1 %tobool.not.i33.i220, label %if.end.i36.i225, label %if.then.i35.i224, !prof !47

if.then.i35.i224:                                 ; preds = %if.then17.i222
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i34.i223 = add i32 %158, -1
  br label %_compound_head.exit38.i227

if.end.i36.i225:                                  ; preds = %if.then17.i222
  call void @__sanitizer_cov_trace_pc() #10
  %159 = ptrtoint ptr %dst to i32
  br label %_compound_head.exit38.i227

_compound_head.exit38.i227:                       ; preds = %if.end.i36.i225, %if.then.i35.i224
  %retval.0.i37.i226 = phi i32 [ %sub.i34.i223, %if.then.i35.i224 ], [ %159, %if.end.i36.i225 ]
  %160 = inttoptr i32 %retval.0.i37.i226 to ptr
  tail call void @dump_page(ptr noundef %160, ptr noundef nonnull @.str.14) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 463, 0\0A.popsection", ""() #8, !srcloc !71
  unreachable

do.end24.i228:                                    ; preds = %_compound_head.exit.i221
  br i1 %tobool.not.i33.i220, label %if.end.i43.i231, label %if.then.i42.i230, !prof !47

if.then.i42.i230:                                 ; preds = %do.end24.i228
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i41.i229 = add i32 %158, -1
  br label %SetPageMappedToDisk.exit

if.end.i43.i231:                                  ; preds = %do.end24.i228
  call void @__sanitizer_cov_trace_pc() #10
  %161 = ptrtoint ptr %dst to i32
  br label %SetPageMappedToDisk.exit

SetPageMappedToDisk.exit:                         ; preds = %if.end.i43.i231, %if.then.i42.i230
  %retval.0.i44.i232 = phi i32 [ %sub.i41.i229, %if.then.i42.i230 ], [ %161, %if.end.i43.i231 ]
  %162 = inttoptr i32 %retval.0.i44.i232 to ptr
  tail call void @_set_bit(i32 noundef 17, ptr noundef %162) #8
  br label %do.body95.preheader

if.else86:                                        ; preds = %PageMappedToDisk.exit207.if.else86_crit_edge, %PageMappedToDisk.exit.if.else86_crit_edge
  %163 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load volatile i32, ptr %62, align 4
  %and.i.i233 = and i32 %164, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i233)
  %tobool.not.i.i234 = icmp eq i32 %and.i.i233, 0
  br i1 %tobool.not.i.i234, label %if.end.i.i237, label %if.then.i.i236, !prof !47

if.then.i.i236:                                   ; preds = %if.else86
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i235 = add i32 %164, -1
  br label %_compound_head.exit.i242

if.end.i.i237:                                    ; preds = %if.else86
  call void @__sanitizer_cov_trace_pc() #10
  %165 = ptrtoint ptr %src to i32
  br label %_compound_head.exit.i242

_compound_head.exit.i242:                         ; preds = %if.end.i.i237, %if.then.i.i236
  %retval.0.i.i238 = phi i32 [ %sub.i.i235, %if.then.i.i236 ], [ %165, %if.end.i.i237 ]
  %166 = inttoptr i32 %retval.0.i.i238 to ptr
  %167 = ptrtoint ptr %166 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load volatile i32, ptr %166, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %168)
  %cmp.i.not.i239 = icmp eq i32 %168, -1
  %169 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load volatile i32, ptr %62, align 4
  %and.i16.i240 = and i32 %170, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i240)
  %tobool.not.i17.i241 = icmp eq i32 %and.i16.i240, 0
  br i1 %cmp.i.not.i239, label %if.then.i243, label %do.end10.i249, !prof !43

if.then.i243:                                     ; preds = %_compound_head.exit.i242
  br i1 %tobool.not.i17.i241, label %if.end.i20.i246, label %if.then.i19.i245, !prof !47

if.then.i19.i245:                                 ; preds = %if.then.i243
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i18.i244 = add i32 %170, -1
  br label %_compound_head.exit22.i248

if.end.i20.i246:                                  ; preds = %if.then.i243
  call void @__sanitizer_cov_trace_pc() #10
  %171 = ptrtoint ptr %src to i32
  br label %_compound_head.exit22.i248

_compound_head.exit22.i248:                       ; preds = %if.end.i20.i246, %if.then.i19.i245
  %retval.0.i21.i247 = phi i32 [ %sub.i18.i244, %if.then.i19.i245 ], [ %171, %if.end.i20.i246 ]
  %172 = inttoptr i32 %retval.0.i21.i247 to ptr
  tail call void @dump_page(ptr noundef %172, ptr noundef nonnull @.str.14) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 463, 0\0A.popsection", ""() #8, !srcloc !81
  unreachable

do.end10.i249:                                    ; preds = %_compound_head.exit.i242
  br i1 %tobool.not.i17.i241, label %if.end.i27.i252, label %if.then.i26.i251, !prof !47

if.then.i26.i251:                                 ; preds = %do.end10.i249
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i25.i250 = add i32 %170, -1
  br label %PageMappedToDisk.exit256

if.end.i27.i252:                                  ; preds = %do.end10.i249
  call void @__sanitizer_cov_trace_pc() #10
  %173 = ptrtoint ptr %src to i32
  br label %PageMappedToDisk.exit256

PageMappedToDisk.exit256:                         ; preds = %if.end.i27.i252, %if.then.i26.i251
  %retval.0.i28.i253 = phi i32 [ %sub.i25.i250, %if.then.i26.i251 ], [ %173, %if.end.i27.i252 ]
  %174 = inttoptr i32 %retval.0.i28.i253 to ptr
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load volatile i32, ptr %174, align 4
  %177 = and i32 %176, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %177)
  %tobool88.not = icmp eq i32 %177, 0
  br i1 %tobool88.not, label %land.lhs.true89, label %PageMappedToDisk.exit256.do.body95.preheader_crit_edge

PageMappedToDisk.exit256.do.body95.preheader_crit_edge: ; preds = %PageMappedToDisk.exit256
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body95.preheader

land.lhs.true89:                                  ; preds = %PageMappedToDisk.exit256
  %178 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load volatile i32, ptr %0, align 4
  %and.i.i257 = and i32 %179, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i257)
  %tobool.not.i.i258 = icmp eq i32 %and.i.i257, 0
  br i1 %tobool.not.i.i258, label %if.end.i.i261, label %if.then.i.i260, !prof !47

if.then.i.i260:                                   ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i259 = add i32 %179, -1
  br label %_compound_head.exit.i266

if.end.i.i261:                                    ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #10
  %180 = ptrtoint ptr %dst to i32
  br label %_compound_head.exit.i266

_compound_head.exit.i266:                         ; preds = %if.end.i.i261, %if.then.i.i260
  %retval.0.i.i262 = phi i32 [ %sub.i.i259, %if.then.i.i260 ], [ %180, %if.end.i.i261 ]
  %181 = inttoptr i32 %retval.0.i.i262 to ptr
  %182 = ptrtoint ptr %181 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load volatile i32, ptr %181, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %183)
  %cmp.i.not.i263 = icmp eq i32 %183, -1
  %184 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load volatile i32, ptr %0, align 4
  %and.i16.i264 = and i32 %185, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i264)
  %tobool.not.i17.i265 = icmp eq i32 %and.i16.i264, 0
  br i1 %cmp.i.not.i263, label %if.then.i267, label %do.end10.i273, !prof !43

if.then.i267:                                     ; preds = %_compound_head.exit.i266
  br i1 %tobool.not.i17.i265, label %if.end.i20.i270, label %if.then.i19.i269, !prof !47

if.then.i19.i269:                                 ; preds = %if.then.i267
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i18.i268 = add i32 %185, -1
  br label %_compound_head.exit22.i272

if.end.i20.i270:                                  ; preds = %if.then.i267
  call void @__sanitizer_cov_trace_pc() #10
  %186 = ptrtoint ptr %dst to i32
  br label %_compound_head.exit22.i272

_compound_head.exit22.i272:                       ; preds = %if.end.i20.i270, %if.then.i19.i269
  %retval.0.i21.i271 = phi i32 [ %sub.i18.i268, %if.then.i19.i269 ], [ %186, %if.end.i20.i270 ]
  %187 = inttoptr i32 %retval.0.i21.i271 to ptr
  tail call void @dump_page(ptr noundef %187, ptr noundef nonnull @.str.14) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 463, 0\0A.popsection", ""() #8, !srcloc !81
  unreachable

do.end10.i273:                                    ; preds = %_compound_head.exit.i266
  br i1 %tobool.not.i17.i265, label %if.end.i27.i276, label %if.then.i26.i275, !prof !47

if.then.i26.i275:                                 ; preds = %do.end10.i273
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i25.i274 = add i32 %185, -1
  br label %PageMappedToDisk.exit280

if.end.i27.i276:                                  ; preds = %do.end10.i273
  call void @__sanitizer_cov_trace_pc() #10
  %188 = ptrtoint ptr %dst to i32
  br label %PageMappedToDisk.exit280

PageMappedToDisk.exit280:                         ; preds = %if.end.i27.i276, %if.then.i26.i275
  %retval.0.i28.i277 = phi i32 [ %sub.i25.i274, %if.then.i26.i275 ], [ %188, %if.end.i27.i276 ]
  %189 = inttoptr i32 %retval.0.i28.i277 to ptr
  %190 = ptrtoint ptr %189 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load volatile i32, ptr %189, align 4
  %192 = and i32 %191, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %192)
  %tobool91.not = icmp eq i32 %192, 0
  br i1 %tobool91.not, label %PageMappedToDisk.exit280.do.body95.preheader_crit_edge, label %if.then92

PageMappedToDisk.exit280.do.body95.preheader_crit_edge: ; preds = %PageMappedToDisk.exit280
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body95.preheader

if.then92:                                        ; preds = %PageMappedToDisk.exit280
  %193 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load volatile i32, ptr %0, align 4
  %and.i.i281 = and i32 %194, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i281)
  %tobool.not.i282 = icmp eq i32 %and.i.i281, 0
  br i1 %tobool.not.i282, label %do.body7.i286, label %if.then.i283, !prof !47

if.then.i283:                                     ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %dst, ptr noundef nonnull @.str.13) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 463, 0\0A.popsection", ""() #8, !srcloc !61
  unreachable

do.body7.i286:                                    ; preds = %if.then92
  %195 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load volatile i32, ptr %0, align 4
  %and.i31.i284 = and i32 %196, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i284)
  %tobool.not.i.i285 = icmp eq i32 %and.i31.i284, 0
  br i1 %tobool.not.i.i285, label %if.end.i.i289, label %if.then.i.i288, !prof !47

if.then.i.i288:                                   ; preds = %do.body7.i286
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i287 = add i32 %196, -1
  br label %_compound_head.exit.i294

if.end.i.i289:                                    ; preds = %do.body7.i286
  call void @__sanitizer_cov_trace_pc() #10
  %197 = ptrtoint ptr %dst to i32
  br label %_compound_head.exit.i294

_compound_head.exit.i294:                         ; preds = %if.end.i.i289, %if.then.i.i288
  %retval.0.i.i290 = phi i32 [ %sub.i.i287, %if.then.i.i288 ], [ %197, %if.end.i.i289 ]
  %198 = inttoptr i32 %retval.0.i.i290 to ptr
  %199 = ptrtoint ptr %198 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load volatile i32, ptr %198, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %200)
  %cmp.i.not.i291 = icmp eq i32 %200, -1
  %201 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load volatile i32, ptr %0, align 4
  %and.i32.i292 = and i32 %202, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i292)
  %tobool.not.i33.i293 = icmp eq i32 %and.i32.i292, 0
  br i1 %cmp.i.not.i291, label %if.then17.i295, label %do.end24.i301, !prof !43

if.then17.i295:                                   ; preds = %_compound_head.exit.i294
  br i1 %tobool.not.i33.i293, label %if.end.i36.i298, label %if.then.i35.i297, !prof !47

if.then.i35.i297:                                 ; preds = %if.then17.i295
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i34.i296 = add i32 %202, -1
  br label %_compound_head.exit38.i300

if.end.i36.i298:                                  ; preds = %if.then17.i295
  call void @__sanitizer_cov_trace_pc() #10
  %203 = ptrtoint ptr %dst to i32
  br label %_compound_head.exit38.i300

_compound_head.exit38.i300:                       ; preds = %if.end.i36.i298, %if.then.i35.i297
  %retval.0.i37.i299 = phi i32 [ %sub.i34.i296, %if.then.i35.i297 ], [ %203, %if.end.i36.i298 ]
  %204 = inttoptr i32 %retval.0.i37.i299 to ptr
  tail call void @dump_page(ptr noundef %204, ptr noundef nonnull @.str.14) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 463, 0\0A.popsection", ""() #8, !srcloc !62
  unreachable

do.end24.i301:                                    ; preds = %_compound_head.exit.i294
  br i1 %tobool.not.i33.i293, label %if.end.i43.i304, label %if.then.i42.i303, !prof !47

if.then.i42.i303:                                 ; preds = %do.end24.i301
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i41.i302 = add i32 %202, -1
  br label %ClearPageMappedToDisk.exit

if.end.i43.i304:                                  ; preds = %do.end24.i301
  call void @__sanitizer_cov_trace_pc() #10
  %205 = ptrtoint ptr %dst to i32
  br label %ClearPageMappedToDisk.exit

ClearPageMappedToDisk.exit:                       ; preds = %if.end.i43.i304, %if.then.i42.i303
  %retval.0.i44.i305 = phi i32 [ %sub.i41.i302, %if.then.i42.i303 ], [ %205, %if.end.i43.i304 ]
  %206 = inttoptr i32 %retval.0.i44.i305 to ptr
  tail call void @_clear_bit(i32 noundef 17, ptr noundef %206) #8
  br label %do.body95.preheader

do.body95.preheader:                              ; preds = %ClearPageMappedToDisk.exit, %PageMappedToDisk.exit280.do.body95.preheader_crit_edge, %PageMappedToDisk.exit256.do.body95.preheader_crit_edge, %SetPageMappedToDisk.exit
  br label %do.body95

do.body95:                                        ; preds = %do.body95.do.body95_crit_edge, %do.body95.preheader
  %sbh.1 = phi ptr [ %208, %do.body95.do.body95_crit_edge ], [ %57, %do.body95.preheader ]
  %dbh.1 = phi ptr [ %210, %do.body95.do.body95_crit_edge ], [ %38, %do.body95.preheader ]
  tail call void @unlock_buffer(ptr noundef %sbh.1) #8
  tail call void @unlock_buffer(ptr noundef %dbh.1) #8
  %b_this_page96 = getelementptr inbounds %struct.buffer_head, ptr %sbh.1, i32 0, i32 1
  %207 = ptrtoint ptr %b_this_page96 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %b_this_page96, align 4
  %b_this_page97 = getelementptr inbounds %struct.buffer_head, ptr %dbh.1, i32 0, i32 1
  %209 = ptrtoint ptr %b_this_page97 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %b_this_page97, align 4
  %cmp99.not = icmp eq ptr %210, %38
  br i1 %cmp99.not, label %do.end100, label %do.body95.do.body95_crit_edge

do.body95.do.body95_crit_edge:                    ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body95

do.end100:                                        ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__set_page_dirty_nobuffers(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nilfs_copy_back_pages(ptr noundef %dmap, ptr noundef %smap) local_unnamed_addr #0 align 64 {
entry:
  %pvec = alloca %struct.pagevec, align 4
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %pvec) #8
  %0 = call ptr @memset(ptr %pvec, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #8
  %1 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %index, align 4
  %2 = ptrtoint ptr %pvec to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %pvec, align 4
  %percpu_pvec_drained.i = getelementptr inbounds %struct.pagevec, ptr %pvec, i32 0, i32 1
  %3 = ptrtoint ptr %percpu_pvec_drained.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %percpu_pvec_drained.i, align 1
  %call.i211 = call i32 @pagevec_lookup_range(ptr noundef nonnull %pvec, ptr noundef %smap, ptr noundef nonnull %index, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i211)
  %tobool.not212 = icmp eq i32 %call.i211, 0
  br i1 %tobool.not212, label %entry.if.then_crit_edge, label %for.cond.preheader.lr.ph

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.cond.preheader.lr.ph:                         ; preds = %entry
  %i_pages = getelementptr inbounds %struct.address_space, ptr %smap, i32 0, i32 1
  %nrpages = getelementptr inbounds %struct.address_space, ptr %smap, i32 0, i32 7
  %i_pages64 = getelementptr inbounds %struct.address_space, ptr %dmap, i32 0, i32 1
  %nrpages78 = getelementptr inbounds %struct.address_space, ptr %dmap, i32 0, i32 7
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %pagevec_release.exit.for.cond.preheader_crit_edge, %for.cond.preheader.lr.ph
  %4 = ptrtoint ptr %pvec to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pvec, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp209.not = icmp eq i8 %5, 0
  br i1 %cmp209.not, label %for.cond.preheader.pagevec_release.exit_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.pagevec_release.exit_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %pagevec_release.exit

if.then:                                          ; preds = %pagevec_release.exit.if.then_crit_edge, %entry.if.then_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pvec) #8
  ret void

for.body:                                         ; preds = %if.end87.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0210 = phi i32 [ %inc88, %if.end87.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.pagevec, ptr %pvec, i32 0, i32 2, i32 %i.0210
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %index2 = getelementptr inbounds %struct.page, ptr %7, i32 0, i32 1, i32 0, i32 2
  %8 = ptrtoint ptr %index2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index2, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.18, i32 noundef 788) #8
  %10 = getelementptr inbounds %struct.page, ptr %7, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %and.i.i146 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i146)
  %tobool.not.i.i147 = icmp eq i32 %and.i.i146, 0
  br i1 %tobool.not.i.i147, label %if.end.i.i150, label %if.then.i.i149, !prof !47

if.then.i.i149:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i148 = add i32 %12, -1
  br label %_compound_head.exit.i152

if.end.i.i150:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %7 to i32
  br label %_compound_head.exit.i152

_compound_head.exit.i152:                         ; preds = %if.end.i.i150, %if.then.i.i149
  %retval.0.i.i151 = phi i32 [ %sub.i.i148, %if.then.i.i149 ], [ %13, %if.end.i.i150 ]
  %14 = inttoptr i32 %retval.0.i.i151 to ptr
  %15 = getelementptr inbounds %struct.page, ptr %14, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  %and.i.i.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !47

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i152
  call void @__sanitizer_cov_trace_pc() #10
  %18 = inttoptr i32 %retval.0.i.i151 to ptr
  call void @dump_page(ptr noundef %18, ptr noundef nonnull @.str.15) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !63
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i152
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %14, i32 noundef 4) #8
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %14, align 4
  %and.i.i4.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i153_crit_edge

folio_flags.exit.i.i.if.then.i153_crit_edge:      ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i153

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  call void @llvm.prefetch.p0(ptr %14, i32 1, i32 3, i32 1) #8
  %21 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #8, !srcloc !53
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !54
  %22 = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %phi.cmp.i.i.i = icmp eq i32 %22, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i153_crit_edge

folio_trylock.exit.i.if.then.i153_crit_edge:      ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i153

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lock_page.exit

if.then.i153:                                     ; preds = %folio_trylock.exit.i.if.then.i153_crit_edge, %folio_flags.exit.i.i.if.then.i153_crit_edge
  call void @__folio_lock(ptr noundef %14) #8
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i153, %folio_trylock.exit.i.lock_page.exit_crit_edge
  %call.i154 = call ptr @pagecache_get_page(ptr noundef %dmap, i32 noundef %9, i32 noundef 2, i32 noundef 0) #8
  %tobool4.not = icmp eq ptr %call.i154, null
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %lock_page.exit
  %23 = getelementptr inbounds %struct.page, ptr %call.i154, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %23, align 4
  %and.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !47

if.then.i.i:                                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %25, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %call.i154 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %26, %if.end.i.i ]
  %27 = inttoptr i32 %retval.0.i.i to ptr
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %cmp.i.not.i = icmp eq i32 %29, -1
  %30 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %23, align 4
  %and.i13.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool.not.i14.i = icmp eq i32 %and.i13.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end8.i, !prof !43

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i17.i, label %if.then.i16.i, !prof !47

if.then.i16.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i15.i = add i32 %31, -1
  br label %_compound_head.exit19.i

if.end.i17.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %call.i154 to i32
  br label %_compound_head.exit19.i

_compound_head.exit19.i:                          ; preds = %if.end.i17.i, %if.then.i16.i
  %retval.0.i18.i = phi i32 [ %sub.i15.i, %if.then.i16.i ], [ %32, %if.end.i17.i ]
  %33 = inttoptr i32 %retval.0.i18.i to ptr
  call void @dump_page(ptr noundef %33, ptr noundef nonnull @.str.14) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 420, 0\0A.popsection", ""() #8, !srcloc !73
  unreachable

do.end8.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i24.i, label %if.then.i23.i, !prof !47

if.then.i23.i:                                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i22.i = add i32 %31, -1
  br label %PageDirty.exit

if.end.i24.i:                                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %call.i154 to i32
  br label %PageDirty.exit

PageDirty.exit:                                   ; preds = %if.end.i24.i, %if.then.i23.i
  %retval.0.i25.i = phi i32 [ %sub.i22.i, %if.then.i23.i ], [ %34, %if.end.i24.i ]
  %35 = inttoptr i32 %retval.0.i25.i to ptr
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %35, align 4
  %38 = and i32 %37, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool7.not = icmp eq i32 %38, 0
  br i1 %tobool7.not, label %PageDirty.exit.if.end22_crit_edge, label %do.end, !prof !47

PageDirty.exit.if.end22_crit_edge:                ; preds = %PageDirty.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

do.end:                                           ; preds = %PageDirty.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 315, i32 noundef 9, ptr noundef null) #8
  br label %if.end22

if.end22:                                         ; preds = %do.end, %PageDirty.exit.if.end22_crit_edge
  call fastcc void @nilfs_copy_page(ptr noundef nonnull %call.i154, ptr noundef %7, i32 noundef 0)
  call void @unlock_page(ptr noundef nonnull %call.i154) #8
  %39 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %23, align 4
  %and.i.i155 = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i155)
  %tobool.not.i.i156 = icmp eq i32 %and.i.i155, 0
  br i1 %tobool.not.i.i156, label %if.end.i.i159, label %if.then.i.i158, !prof !47

if.then.i.i158:                                   ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i157 = add i32 %40, -1
  br label %_compound_head.exit.i161

if.end.i.i159:                                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %call.i154 to i32
  br label %_compound_head.exit.i161

_compound_head.exit.i161:                         ; preds = %if.end.i.i159, %if.then.i.i158
  %retval.0.i.i160 = phi i32 [ %sub.i.i157, %if.then.i.i158 ], [ %41, %if.end.i.i159 ]
  %42 = inttoptr i32 %retval.0.i.i160 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %42, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  %43 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp.i.i.i.i = icmp eq i32 %44, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !43

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i161
  call void @__sanitizer_cov_trace_pc() #10
  %45 = inttoptr i32 %retval.0.i.i160 to ptr
  call void @dump_page(ptr noundef %45, ptr noundef nonnull @.str.12) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !48
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i161
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !49
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #8
  %46 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #8, !srcloc !50
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %46, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@nilfs_copy_back_pages, %if.then.i.i.i.i.i)) #8
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !52

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %42, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #8
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.if.end87_crit_edge

folio_put_testzero.exit.i.i.if.end87_crit_edge:   ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__put_page(ptr noundef %42) #8
  br label %if.end87

if.else:                                          ; preds = %lock_page.exit
  call void @_raw_spin_lock_irq(ptr noundef %i_pages) #8
  %call30 = call ptr @__xa_erase(ptr noundef %i_pages, i32 noundef %9) #8
  %cmp32.not = icmp eq ptr %7, %call30
  br i1 %cmp32.not, label %if.else.if.end54_crit_edge, label %do.end48, !prof !47

if.else.if.end54_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

do.end48:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 326, i32 noundef 9, ptr noundef null) #8
  br label %if.end54

if.end54:                                         ; preds = %do.end48, %if.else.if.end54_crit_edge
  %47 = ptrtoint ptr %nrpages to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %nrpages, align 4
  %dec = add i32 %48, -1
  store i32 %dec, ptr %nrpages, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %i_pages) #8
  call void @_raw_spin_lock_irq(ptr noundef %i_pages64) #8
  %call67 = call ptr @__xa_store(ptr noundef %i_pages64, i32 noundef %9, ptr noundef %7, i32 noundef 3136) #8
  %tobool68.not = icmp eq ptr %call67, null
  %mapping77 = getelementptr inbounds %struct.page, ptr %7, i32 0, i32 1, i32 0, i32 1
  br i1 %tobool68.not, label %if.else76, label %if.then75, !prof !47

if.then75:                                        ; preds = %if.end54
  %49 = ptrtoint ptr %mapping77 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %mapping77, align 4
  %50 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %10, align 4
  %and.i.i162 = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i162)
  %tobool.not.i.i163 = icmp eq i32 %and.i.i162, 0
  br i1 %tobool.not.i.i163, label %if.end.i.i166, label %if.then.i.i165, !prof !47

if.then.i.i165:                                   ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i164 = add i32 %51, -1
  br label %_compound_head.exit.i171

if.end.i.i166:                                    ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %7 to i32
  br label %_compound_head.exit.i171

_compound_head.exit.i171:                         ; preds = %if.end.i.i166, %if.then.i.i165
  %retval.0.i.i167 = phi i32 [ %sub.i.i164, %if.then.i.i165 ], [ %52, %if.end.i.i166 ]
  %53 = inttoptr i32 %retval.0.i.i167 to ptr
  %_refcount.i.i.i.i.i168 = getelementptr inbounds %struct.page, ptr %53, i32 0, i32 3
  %call.i.i.i.i.i.i.i169 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i168, i32 noundef 4) #8
  %54 = ptrtoint ptr %_refcount.i.i.i.i.i168 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %_refcount.i.i.i.i.i168, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp.i.i.i.i170 = icmp eq i32 %55, 0
  br i1 %cmp.i.i.i.i170, label %if.then.i.i.i.i172, label %do.end5.i.i.i.i176, !prof !43

if.then.i.i.i.i172:                               ; preds = %_compound_head.exit.i171
  call void @__sanitizer_cov_trace_pc() #10
  %56 = inttoptr i32 %retval.0.i.i167 to ptr
  call void @dump_page(ptr noundef %56, ptr noundef nonnull @.str.12) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !48
  unreachable

do.end5.i.i.i.i176:                               ; preds = %_compound_head.exit.i171
  %call.i.i.i10.i.i.i.i173 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i168, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !49
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i168, i32 1, i32 3, i32 1) #8
  %57 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i168, ptr %_refcount.i.i.i.i.i168, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i168) #8, !srcloc !50
  %asmresult.i.i.i.i.i.i.i.i.i.i174 = extractvalue { i32, i32 } %57, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i174)
  %cmp.i.i.i.i.i.i.i175 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i174, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@nilfs_copy_back_pages, %if.then.i.i.i.i.i178)) #8
          to label %folio_put_testzero.exit.i.i179 [label %if.then.i.i.i.i.i178], !srcloc !52

if.then.i.i.i.i.i178:                             ; preds = %do.end5.i.i.i.i176
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i177 = zext i1 %cmp.i.i.i.i.i.i.i175 to i32
  call void @__page_ref_mod_and_test(ptr noundef %53, i32 noundef -1, i32 noundef %conv.i.i.i.i.i177) #8
  br label %folio_put_testzero.exit.i.i179

folio_put_testzero.exit.i.i179:                   ; preds = %if.then.i.i.i.i.i178, %do.end5.i.i.i.i176
  br i1 %cmp.i.i.i.i.i.i.i175, label %if.then.i4.i180, label %folio_put_testzero.exit.i.i179.if.end84_crit_edge

folio_put_testzero.exit.i.i179.if.end84_crit_edge: ; preds = %folio_put_testzero.exit.i.i179
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

if.then.i4.i180:                                  ; preds = %folio_put_testzero.exit.i.i179
  call void @__sanitizer_cov_trace_pc() #10
  call void @__put_page(ptr noundef %53) #8
  br label %if.end84

if.else76:                                        ; preds = %if.end54
  %58 = ptrtoint ptr %mapping77 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %dmap, ptr %mapping77, align 4
  %59 = ptrtoint ptr %nrpages78 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %nrpages78, align 4
  %inc = add i32 %60, 1
  store i32 %inc, ptr %nrpages78, align 4
  %61 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %10, align 4
  %and.i.i122 = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i122)
  %tobool.not.i.i123 = icmp eq i32 %and.i.i122, 0
  br i1 %tobool.not.i.i123, label %if.end.i.i126, label %if.then.i.i125, !prof !47

if.then.i.i125:                                   ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i124 = add i32 %62, -1
  br label %_compound_head.exit.i131

if.end.i.i126:                                    ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %7 to i32
  br label %_compound_head.exit.i131

_compound_head.exit.i131:                         ; preds = %if.end.i.i126, %if.then.i.i125
  %retval.0.i.i127 = phi i32 [ %sub.i.i124, %if.then.i.i125 ], [ %63, %if.end.i.i126 ]
  %64 = inttoptr i32 %retval.0.i.i127 to ptr
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %66)
  %cmp.i.not.i128 = icmp eq i32 %66, -1
  %67 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %10, align 4
  %and.i13.i129 = and i32 %68, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i129)
  %tobool.not.i14.i130 = icmp eq i32 %and.i13.i129, 0
  br i1 %cmp.i.not.i128, label %if.then.i132, label %do.end8.i138, !prof !43

if.then.i132:                                     ; preds = %_compound_head.exit.i131
  br i1 %tobool.not.i14.i130, label %if.end.i17.i135, label %if.then.i16.i134, !prof !47

if.then.i16.i134:                                 ; preds = %if.then.i132
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i15.i133 = add i32 %68, -1
  br label %_compound_head.exit19.i137

if.end.i17.i135:                                  ; preds = %if.then.i132
  call void @__sanitizer_cov_trace_pc() #10
  %69 = ptrtoint ptr %7 to i32
  br label %_compound_head.exit19.i137

_compound_head.exit19.i137:                       ; preds = %if.end.i17.i135, %if.then.i16.i134
  %retval.0.i18.i136 = phi i32 [ %sub.i15.i133, %if.then.i16.i134 ], [ %69, %if.end.i17.i135 ]
  %70 = inttoptr i32 %retval.0.i18.i136 to ptr
  call void @dump_page(ptr noundef %70, ptr noundef nonnull @.str.14) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 420, 0\0A.popsection", ""() #8, !srcloc !73
  unreachable

do.end8.i138:                                     ; preds = %_compound_head.exit.i131
  br i1 %tobool.not.i14.i130, label %if.end.i24.i141, label %if.then.i23.i140, !prof !47

if.then.i23.i140:                                 ; preds = %do.end8.i138
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i22.i139 = add i32 %68, -1
  br label %PageDirty.exit145

if.end.i24.i141:                                  ; preds = %do.end8.i138
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %7 to i32
  br label %PageDirty.exit145

PageDirty.exit145:                                ; preds = %if.end.i24.i141, %if.then.i23.i140
  %retval.0.i25.i142 = phi i32 [ %sub.i22.i139, %if.then.i23.i140 ], [ %71, %if.end.i24.i141 ]
  %72 = inttoptr i32 %retval.0.i25.i142 to ptr
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %72, align 4
  %75 = and i32 %74, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool80.not = icmp eq i32 %75, 0
  br i1 %tobool80.not, label %PageDirty.exit145.if.end84_crit_edge, label %if.then81

PageDirty.exit145.if.end84_crit_edge:             ; preds = %PageDirty.exit145
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

if.then81:                                        ; preds = %PageDirty.exit145
  call void @__sanitizer_cov_trace_pc() #10
  call void @__xa_set_mark(ptr noundef %i_pages64, i32 noundef %9, i32 noundef 0) #8
  br label %if.end84

if.end84:                                         ; preds = %if.then81, %PageDirty.exit145.if.end84_crit_edge, %if.then.i4.i180, %folio_put_testzero.exit.i.i179.if.end84_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %i_pages64) #8
  br label %if.end87

if.end87:                                         ; preds = %if.end84, %if.then.i4.i, %folio_put_testzero.exit.i.i.if.end87_crit_edge
  call void @unlock_page(ptr noundef %7) #8
  %inc88 = add nuw nsw i32 %i.0210, 1
  %76 = ptrtoint ptr %pvec to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %pvec, align 4
  %conv.i = zext i8 %77 to i32
  %cmp = icmp ult i32 %inc88, %conv.i
  br i1 %cmp, label %if.end87.for.body_crit_edge, label %for.end

if.end87.for.body_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %if.end87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool.not.i = icmp eq i8 %77, 0
  br i1 %tobool.not.i, label %for.end.pagevec_release.exit_crit_edge, label %if.then.i182

for.end.pagevec_release.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %pagevec_release.exit

if.then.i182:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__pagevec_release(ptr noundef nonnull %pvec) #8
  br label %pagevec_release.exit

pagevec_release.exit:                             ; preds = %if.then.i182, %for.end.pagevec_release.exit_crit_edge, %for.cond.preheader.pagevec_release.exit_crit_edge
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 348, i32 noundef 0) #8
  %call.i183 = call i32 @__cond_resched() #8
  %call.i = call i32 @pagevec_lookup_range(ptr noundef nonnull %pvec, ptr noundef %smap, ptr noundef nonnull %index, i32 noundef -1) #8
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %pagevec_release.exit.if.then_crit_edge, label %pagevec_release.exit.for.cond.preheader_crit_edge

pagevec_release.exit.for.cond.preheader_crit_edge: ; preds = %pagevec_release.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.preheader

pagevec_release.exit.if.then_crit_edge:           ; preds = %pagevec_release.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__xa_erase(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__xa_store(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__xa_set_mark(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nilfs_clear_dirty_pages(ptr noundef %mapping, i1 noundef zeroext %silent) local_unnamed_addr #0 align 64 {
entry:
  %pvec = alloca %struct.pagevec, align 4
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %pvec) #8
  %0 = call ptr @memset(ptr %pvec, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #8
  %1 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %index, align 4
  %2 = ptrtoint ptr %pvec to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %pvec, align 4
  %percpu_pvec_drained.i = getelementptr inbounds %struct.pagevec, ptr %pvec, i32 0, i32 1
  %3 = ptrtoint ptr %percpu_pvec_drained.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %percpu_pvec_drained.i, align 1
  %call.i15 = call i32 @pagevec_lookup_range_tag(ptr noundef nonnull %pvec, ptr noundef %mapping, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15)
  %tobool.not16 = icmp eq i32 %call.i15, 0
  br i1 %tobool.not16, label %entry.while.end_crit_edge, label %entry.for.cond.preheader_crit_edge

entry.for.cond.preheader_crit_edge:               ; preds = %entry
  br label %for.cond.preheader

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

for.cond.preheader:                               ; preds = %pagevec_release.exit.for.cond.preheader_crit_edge, %entry.for.cond.preheader_crit_edge
  %4 = ptrtoint ptr %pvec to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pvec, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp13.not = icmp eq i8 %5, 0
  br i1 %cmp13.not, label %for.cond.preheader.pagevec_release.exit_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.pagevec_release.exit_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %pagevec_release.exit

for.body:                                         ; preds = %lock_page.exit.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.014 = phi i32 [ %inc, %lock_page.exit.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.pagevec, ptr %pvec, i32 0, i32 2, i32 %i.014
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.18, i32 noundef 788) #8
  %8 = getelementptr inbounds %struct.page, ptr %7, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  %and.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !47

if.then.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %10, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %7 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %11, %if.end.i.i ]
  %12 = inttoptr i32 %retval.0.i.i to ptr
  %13 = getelementptr inbounds %struct.page, ptr %12, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  %and.i.i.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !47

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %16 = inttoptr i32 %retval.0.i.i to ptr
  call void @dump_page(ptr noundef %16, ptr noundef nonnull @.str.15) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !63
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %12, i32 noundef 4) #8
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %12, align 4
  %and.i.i4.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i_crit_edge

folio_flags.exit.i.i.if.then.i_crit_edge:         ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  call void @llvm.prefetch.p0(ptr %12, i32 1, i32 3, i32 1) #8
  %19 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #8, !srcloc !53
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !54
  %20 = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %phi.cmp.i.i.i = icmp eq i32 %20, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i_crit_edge

folio_trylock.exit.i.if.then.i_crit_edge:         ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lock_page.exit

if.then.i:                                        ; preds = %folio_trylock.exit.i.if.then.i_crit_edge, %folio_flags.exit.i.i.if.then.i_crit_edge
  call void @__folio_lock(ptr noundef %12) #8
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i, %folio_trylock.exit.i.lock_page.exit_crit_edge
  call void @nilfs_clear_dirty_page(ptr noundef %7, i1 noundef zeroext %silent)
  call void @unlock_page(ptr noundef %7) #8
  %inc = add nuw nsw i32 %i.014, 1
  %21 = ptrtoint ptr %pvec to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %pvec, align 4
  %conv.i = zext i8 %22 to i32
  %cmp = icmp ult i32 %inc, %conv.i
  br i1 %cmp, label %lock_page.exit.for.body_crit_edge, label %for.end

lock_page.exit.for.body_crit_edge:                ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i, label %for.end.pagevec_release.exit_crit_edge, label %if.then.i8

for.end.pagevec_release.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %pagevec_release.exit

if.then.i8:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__pagevec_release(ptr noundef nonnull %pvec) #8
  br label %pagevec_release.exit

pagevec_release.exit:                             ; preds = %if.then.i8, %for.end.pagevec_release.exit_crit_edge, %for.cond.preheader.pagevec_release.exit_crit_edge
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 376, i32 noundef 0) #8
  %call.i9 = call i32 @__cond_resched() #8
  %call.i = call i32 @pagevec_lookup_range_tag(ptr noundef nonnull %pvec, ptr noundef %mapping, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 0) #8
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %pagevec_release.exit.while.end_crit_edge, label %pagevec_release.exit.for.cond.preheader_crit_edge

pagevec_release.exit.for.cond.preheader_crit_edge: ; preds = %pagevec_release.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.preheader

pagevec_release.exit.while.end_crit_edge:         ; preds = %pagevec_release.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %pagevec_release.exit.while.end_crit_edge, %entry.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pvec) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nilfs_clear_dirty_page(ptr noundef %page, i1 noundef zeroext %silent) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %6 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  %and.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !47

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %8, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %9, %if.end.i.i ]
  %10 = inttoptr i32 %retval.0.i.i to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp.i.not.i = icmp eq i32 %12, -1
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %6, align 4
  %and.i16.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !43

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !47

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i18.i = add i32 %14, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %15, %if.end.i20.i ]
  %16 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %16, ptr noundef nonnull @.str.14) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #8, !srcloc !82
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !47

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i25.i = add i32 %14, -1
  br label %PageLocked.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %page to i32
  br label %PageLocked.exit

PageLocked.exit:                                  ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %17, %if.end.i27.i ]
  %18 = inttoptr i32 %retval.0.i28.i to ptr
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %18, align 4
  %and1.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !43

do.body4:                                         ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/page.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 390, 0\0A.popsection", ""() #8, !srcloc !83
  unreachable

do.end9:                                          ; preds = %PageLocked.exit
  br i1 %silent, label %do.end9.if.end13_crit_edge, label %if.then11

do.end9.if.end13_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then11:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  %index.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %21 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %index.i, align 4
  %conv.i = zext i32 %22 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 12
  %i_ino = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 11
  %23 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %5, ptr noundef nonnull @.str.9, i64 noundef %shl.i, i32 noundef %24) #8
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %do.end9.if.end13_crit_edge
  %25 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %6, align 4
  %and.i.i97 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i97)
  %tobool.not.i = icmp eq i32 %and.i.i97, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i98, !prof !47

if.then.i98:                                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.13) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #8, !srcloc !59
  unreachable

do.body7.i:                                       ; preds = %if.end13
  %27 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %6, align 4
  %and.i31.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i99 = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i99, label %if.end.i.i102, label %if.then.i.i101, !prof !47

if.then.i.i101:                                   ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i100 = add i32 %28, -1
  br label %_compound_head.exit.i105

if.end.i.i102:                                    ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i105

_compound_head.exit.i105:                         ; preds = %if.end.i.i102, %if.then.i.i101
  %retval.0.i.i103 = phi i32 [ %sub.i.i100, %if.then.i.i101 ], [ %29, %if.end.i.i102 ]
  %30 = inttoptr i32 %retval.0.i.i103 to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %cmp.i.not.i104 = icmp eq i32 %32, -1
  %33 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %6, align 4
  %and.i32.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i104, label %if.then17.i, label %do.end24.i, !prof !43

if.then17.i:                                      ; preds = %_compound_head.exit.i105
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !47

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i34.i = add i32 %34, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %page to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %35, %if.end.i36.i ]
  %36 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %36, ptr noundef nonnull @.str.14) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #8, !srcloc !60
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i105
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !47

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i41.i = add i32 %34, -1
  br label %ClearPageUptodate.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %page to i32
  br label %ClearPageUptodate.exit

ClearPageUptodate.exit:                           ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %37, %if.end.i43.i ]
  %38 = inttoptr i32 %retval.0.i44.i to ptr
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %38) #8
  %39 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %6, align 4
  %and.i.i106 = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i106)
  %tobool.not.i107 = icmp eq i32 %and.i.i106, 0
  br i1 %tobool.not.i107, label %do.body7.i111, label %if.then.i108, !prof !47

if.then.i108:                                     ; preds = %ClearPageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.13) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 463, 0\0A.popsection", ""() #8, !srcloc !61
  unreachable

do.body7.i111:                                    ; preds = %ClearPageUptodate.exit
  %41 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %6, align 4
  %and.i31.i109 = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i109)
  %tobool.not.i.i110 = icmp eq i32 %and.i31.i109, 0
  br i1 %tobool.not.i.i110, label %if.end.i.i114, label %if.then.i.i113, !prof !47

if.then.i.i113:                                   ; preds = %do.body7.i111
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i112 = add i32 %42, -1
  br label %_compound_head.exit.i119

if.end.i.i114:                                    ; preds = %do.body7.i111
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i119

_compound_head.exit.i119:                         ; preds = %if.end.i.i114, %if.then.i.i113
  %retval.0.i.i115 = phi i32 [ %sub.i.i112, %if.then.i.i113 ], [ %43, %if.end.i.i114 ]
  %44 = inttoptr i32 %retval.0.i.i115 to ptr
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %46)
  %cmp.i.not.i116 = icmp eq i32 %46, -1
  %47 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %6, align 4
  %and.i32.i117 = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i117)
  %tobool.not.i33.i118 = icmp eq i32 %and.i32.i117, 0
  br i1 %cmp.i.not.i116, label %if.then17.i120, label %do.end24.i126, !prof !43

if.then17.i120:                                   ; preds = %_compound_head.exit.i119
  br i1 %tobool.not.i33.i118, label %if.end.i36.i123, label %if.then.i35.i122, !prof !47

if.then.i35.i122:                                 ; preds = %if.then17.i120
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i34.i121 = add i32 %48, -1
  br label %_compound_head.exit38.i125

if.end.i36.i123:                                  ; preds = %if.then17.i120
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %page to i32
  br label %_compound_head.exit38.i125

_compound_head.exit38.i125:                       ; preds = %if.end.i36.i123, %if.then.i35.i122
  %retval.0.i37.i124 = phi i32 [ %sub.i34.i121, %if.then.i35.i122 ], [ %49, %if.end.i36.i123 ]
  %50 = inttoptr i32 %retval.0.i37.i124 to ptr
  tail call void @dump_page(ptr noundef %50, ptr noundef nonnull @.str.14) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 463, 0\0A.popsection", ""() #8, !srcloc !62
  unreachable

do.end24.i126:                                    ; preds = %_compound_head.exit.i119
  br i1 %tobool.not.i33.i118, label %if.end.i43.i129, label %if.then.i42.i128, !prof !47

if.then.i42.i128:                                 ; preds = %do.end24.i126
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i41.i127 = add i32 %48, -1
  br label %ClearPageMappedToDisk.exit

if.end.i43.i129:                                  ; preds = %do.end24.i126
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %page to i32
  br label %ClearPageMappedToDisk.exit

ClearPageMappedToDisk.exit:                       ; preds = %if.end.i43.i129, %if.then.i42.i128
  %retval.0.i44.i130 = phi i32 [ %sub.i41.i127, %if.then.i42.i128 ], [ %51, %if.end.i43.i129 ]
  %52 = inttoptr i32 %retval.0.i44.i130 to ptr
  tail call void @_clear_bit(i32 noundef 17, ptr noundef %52) #8
  %53 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %54)
  %cmp.i.not.i131 = icmp eq i32 %54, -1
  br i1 %cmp.i.not.i131, label %if.then.i132, label %PagePrivate.exit, !prof !43

if.then.i132:                                     ; preds = %ClearPageMappedToDisk.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.17) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #8, !srcloc !44
  unreachable

PagePrivate.exit:                                 ; preds = %ClearPageMappedToDisk.exit
  %55 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %page, align 4
  %57 = and i32 %56, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool15.not = icmp eq i32 %57, 0
  br i1 %tobool15.not, label %PagePrivate.exit.if.end73_crit_edge, label %if.then16

PagePrivate.exit.if.end73_crit_edge:              ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73

if.then16:                                        ; preds = %PagePrivate.exit
  %58 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %59)
  %cmp.i.not.i134 = icmp eq i32 %59, -1
  br i1 %cmp.i.not.i134, label %if.then.i135, label %PagePrivate.exit138, !prof !43

if.then.i135:                                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.17) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #8, !srcloc !44
  unreachable

PagePrivate.exit138:                              ; preds = %if.then16
  %60 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %page, align 4
  %62 = and i32 %61, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool19.not = icmp eq i32 %62, 0
  br i1 %tobool19.not, label %do.body29, label %do.end37, !prof !43

do.body29:                                        ; preds = %PagePrivate.exit138
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/page.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 406, 0\0A.popsection", ""() #8, !srcloc !84
  unreachable

do.end37:                                         ; preds = %PagePrivate.exit138
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %63 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %private, align 4
  %65 = inttoptr i32 %64 to ptr
  br label %do.body38

do.body38:                                        ; preds = %do.end68.do.body38_crit_edge, %do.end37
  %bh.0 = phi ptr [ %65, %do.end37 ], [ %78, %do.end68.do.body38_crit_edge ]
  tail call void @__might_sleep(ptr noundef nonnull @.str.11, i32 noundef 366) #8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bh.0, i32 noundef 4) #8
  %66 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %bh.0, align 4
  %and.i.i.i.i = and i32 %67, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %do.body38.if.then.i139_crit_edge

do.body38.if.then.i139_crit_edge:                 ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i139

trylock_buffer.exit.i:                            ; preds = %do.body38
  tail call void @llvm.prefetch.p0(ptr %bh.0, i32 1, i32 3, i32 1) #8
  %68 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bh.0, ptr %bh.0, i32 4, ptr elementtype(i32) %bh.0) #8, !srcloc !53
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %68, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !54
  %69 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.not.not.i = icmp eq i32 %69, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.lock_buffer.exit_crit_edge, label %trylock_buffer.exit.i.if.then.i139_crit_edge

trylock_buffer.exit.i.if.then.i139_crit_edge:     ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i139

trylock_buffer.exit.i.lock_buffer.exit_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lock_buffer.exit

if.then.i139:                                     ; preds = %trylock_buffer.exit.i.if.then.i139_crit_edge, %do.body38.if.then.i139_crit_edge
  tail call void @__lock_buffer(ptr noundef %bh.0) #8
  br label %lock_buffer.exit

lock_buffer.exit:                                 ; preds = %if.then.i139, %trylock_buffer.exit.i.lock_buffer.exit_crit_edge
  br i1 %silent, label %lock_buffer.exit.do.body42.preheader_crit_edge, label %if.then40

lock_buffer.exit.do.body42.preheader_crit_edge:   ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body42.preheader

if.then40:                                        ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #10
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 3
  %70 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %b_blocknr, align 8
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 4
  %72 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %b_size, align 8
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %5, ptr noundef nonnull @.str.10, i64 noundef %71, i32 noundef %73) #8
  br label %do.body42.preheader

do.body42.preheader:                              ; preds = %if.then40, %lock_buffer.exit.do.body42.preheader_crit_edge
  br label %do.body42

do.body42:                                        ; preds = %__cmpxchg.exit.do.body42_crit_edge, %do.body42.preheader
  %74 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %bh.0, align 8
  %and = and i32 %75, -1835156
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bh.0, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !85
  tail call void @llvm.prefetch.p0(ptr %bh.0, i32 1, i32 3, i32 1) #8
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body42
  %76 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %bh.0, i32 %75, i32 %and) #8, !srcloc !56
  %asmresult.i = extractvalue { i32, i32 } %76, 0
  %tobool.not.i140 = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i140, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  %asmresult1.i = extractvalue { i32, i32 } %76, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !86
  %cmp.not = icmp eq i32 %asmresult1.i, %75
  br i1 %cmp.not, label %do.end68, label %__cmpxchg.exit.do.body42_crit_edge

__cmpxchg.exit.do.body42_crit_edge:               ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body42

do.end68:                                         ; preds = %__cmpxchg.exit
  tail call void @unlock_buffer(ptr noundef %bh.0) #8
  %b_this_page = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 1
  %77 = ptrtoint ptr %b_this_page to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %b_this_page, align 4
  %cmp71.not = icmp eq ptr %78, %65
  br i1 %cmp71.not, label %do.end68.if.end73_crit_edge, label %do.end68.do.body38_crit_edge

do.end68.do.body38_crit_edge:                     ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body38

do.end68.if.end73_crit_edge:                      ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73

if.end73:                                         ; preds = %do.end68.if.end73_crit_edge, %PagePrivate.exit.if.end73_crit_edge
  %call74 = tail call i32 @__nilfs_clear_page_dirty(ptr noundef %page)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__nilfs_msg(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_page_count_clean_buffers(ptr noundef %page, i32 noundef %from, i32 noundef %to) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.i.not.i = icmp eq i32 %1, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate.exit, !prof !43

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.17) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #8, !srcloc !44
  unreachable

PagePrivate.exit:                                 ; preds = %entry
  %2 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %page, align 4
  %4 = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !43

do.body4:                                         ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/page.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 429, 0\0A.popsection", ""() #8, !srcloc !87
  unreachable

do.end9:                                          ; preds = %PagePrivate.exit
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %5 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %private, align 4
  %7 = inttoptr i32 %6 to ptr
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end9
  %block_start.034 = phi i32 [ 0, %do.end9 ], [ %add, %for.inc.for.body_crit_edge ]
  %nc.033 = phi i32 [ 0, %do.end9 ], [ %nc.1, %for.inc.for.body_crit_edge ]
  %bh.031 = phi ptr [ %7, %do.end9 ], [ %15, %for.inc.for.body_crit_edge ]
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %bh.031, i32 0, i32 4
  %8 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %b_size, align 8
  %add = add i32 %9, %block_start.034
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %from)
  %cmp13 = icmp ugt i32 %add, %from
  call void @__sanitizer_cov_trace_cmp4(i32 %block_start.034, i32 %to)
  %cmp14 = icmp ult i32 %block_start.034, %to
  %or.cond28 = and i1 %cmp14, %cmp13
  br i1 %or.cond28, label %land.lhs.true15, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true15:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %bh.031 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %bh.031, align 4
  %12 = lshr i32 %11, 1
  %.lobit = and i32 %12, 1
  %13 = xor i32 %.lobit, 1
  %spec.select = add i32 %13, %nc.033
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true15, %for.body.for.inc_crit_edge
  %nc.1 = phi i32 [ %nc.033, %for.body.for.inc_crit_edge ], [ %spec.select, %land.lhs.true15 ]
  %b_this_page = getelementptr inbounds %struct.buffer_head, ptr %bh.031, i32 0, i32 1
  %14 = ptrtoint ptr %b_this_page to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %b_this_page, align 4
  %cmp.not = icmp ne ptr %15, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool10.not = icmp eq i32 %add, 0
  %or.cond = select i1 %cmp.not, i1 true, i1 %tobool10.not
  br i1 %or.cond, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  ret i32 %nc.1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @nilfs_mapping_init(ptr nocapture noundef writeonly %mapping, ptr noundef %inode) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %inode, ptr %mapping, align 4
  %flags = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 10
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %flags, align 4
  %gfp_mask.i = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 3
  %2 = ptrtoint ptr %gfp_mask.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3136, ptr %gfp_mask.i, align 4
  %private_data = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 14
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %private_data, align 4
  %a_ops = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 9
  %4 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @empty_aops, ptr %a_ops, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__xa_clear_mark(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @clear_page_dirty_for_io(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_find_uncommitted_extent(ptr nocapture noundef readonly %inode, i64 noundef %start_blk, ptr nocapture noundef writeonly %blkoff) local_unnamed_addr #0 align 64 {
entry:
  %pvec = alloca %struct.pagevec, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %pvec) #8
  %0 = call ptr @memset(ptr %pvec, i32 255, i32 64)
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %1 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_mapping, align 8
  %nrpages = getelementptr inbounds %struct.address_space, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %nrpages to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nrpages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %entry.cleanup87_crit_edge, label %if.end

entry.cleanup87_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup87

if.end:                                           ; preds = %entry
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %5 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %i_blkbits, align 2
  %conv = zext i8 %6 to i32
  %sub = sub nsw i32 12, %conv
  %sh_prom = zext i32 %sub to i64
  %shr = lshr i64 %start_blk, %sh_prom
  %conv1 = trunc i64 %shr to i32
  %7 = ptrtoint ptr %pvec to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %pvec, align 4
  %percpu_pvec_drained.i = getelementptr inbounds %struct.pagevec, ptr %pvec, i32 0, i32 1
  %8 = ptrtoint ptr %percpu_pvec_drained.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %percpu_pvec_drained.i, align 1
  %pages = getelementptr inbounds %struct.pagevec, ptr %pvec, i32 0, i32 2
  %9 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_mapping, align 8
  %call162 = call i32 @find_get_pages_contig(ptr noundef %10, i32 noundef %conv1, i32 noundef 15, ptr noundef %pages) #8
  %conv6163 = trunc i32 %call162 to i8
  %11 = ptrtoint ptr %pvec to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv6163, ptr %pvec, align 4
  %conv8164 = and i32 %call162, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv8164)
  %cmp9165 = icmp eq i32 %conv8164, 0
  br i1 %cmp9165, label %if.end.cleanup87_crit_edge, label %if.end12.lr.ph

if.end.cleanup87_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup87

if.end12.lr.ph:                                   ; preds = %if.end
  %shl = shl nuw nsw i32 1, %sub
  %conv75 = zext i32 %shl to i64
  br label %if.end12

if.end12:                                         ; preds = %pagevec_release.exit.if.end12_crit_edge, %if.end12.lr.ph
  %length.0167 = phi i32 [ 0, %if.end12.lr.ph ], [ %length.5, %pagevec_release.exit.if.end12_crit_edge ]
  %index.0166 = phi i32 [ %conv1, %if.end12.lr.ph ], [ %add84, %pagevec_release.exit.if.end12_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length.0167)
  %cmp13.not = icmp eq i32 %length.0167, 0
  br i1 %cmp13.not, label %if.end12.if.end20_crit_edge, label %land.lhs.true

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

land.lhs.true:                                    ; preds = %if.end12
  %12 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pages, align 4
  %index16 = getelementptr inbounds %struct.page, ptr %13, i32 0, i32 1, i32 0, i32 2
  %14 = ptrtoint ptr %index16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %index.0166)
  %cmp17 = icmp ugt i32 %15, %index.0166
  br i1 %cmp17, label %land.lhs.true.out_crit_edge, label %land.lhs.true.if.end20_crit_edge

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end20:                                         ; preds = %land.lhs.true.if.end20_crit_edge, %if.end12.if.end20_crit_edge
  %16 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pages, align 4
  %index23 = getelementptr inbounds %struct.page, ptr %17, i32 0, i32 1, i32 0, i32 2
  %18 = ptrtoint ptr %index23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index23, align 4
  %20 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %i_blkbits, align 2
  %conv25 = zext i8 %21 to i32
  %sub26 = sub nsw i32 12, %conv25
  %shl27 = shl i32 %19, %sub26
  %conv28 = zext i32 %shl27 to i64
  br label %do.body

do.body:                                          ; preds = %if.end76.do.body_crit_edge, %if.end20
  %length.1 = phi i32 [ %length.0167, %if.end20 ], [ %length.5, %if.end76.do.body_crit_edge ]
  %b.0 = phi i64 [ %conv28, %if.end20 ], [ %b.3, %if.end76.do.body_crit_edge ]
  %i.0 = phi i32 [ 0, %if.end20 ], [ %inc78, %if.end76.do.body_crit_edge ]
  %arrayidx30 = getelementptr %struct.pagevec, ptr %pvec, i32 0, i32 2, i32 %i.0
  %22 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx30, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.18, i32 noundef 788) #8
  %24 = getelementptr inbounds %struct.page, ptr %23, i32 0, i32 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %24, align 4
  %and.i.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !47

if.then.i.i:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %26, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %23 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %27, %if.end.i.i ]
  %28 = inttoptr i32 %retval.0.i.i to ptr
  %29 = getelementptr inbounds %struct.page, ptr %28, i32 0, i32 1
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %29, align 4
  %and.i.i.i.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !47

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %32 = inttoptr i32 %retval.0.i.i to ptr
  call void @dump_page(ptr noundef %32, ptr noundef nonnull @.str.15) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !63
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %28, i32 noundef 4) #8
  %33 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %28, align 4
  %and.i.i4.i.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i125_crit_edge

folio_flags.exit.i.i.if.then.i125_crit_edge:      ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i125

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  call void @llvm.prefetch.p0(ptr %28, i32 1, i32 3, i32 1) #8
  %35 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %28, ptr %28, i32 1, ptr elementtype(i32) %28) #8, !srcloc !53
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %35, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !54
  %36 = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %phi.cmp.i.i.i = icmp eq i32 %36, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i125_crit_edge

folio_trylock.exit.i.if.then.i125_crit_edge:      ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i125

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lock_page.exit

if.then.i125:                                     ; preds = %folio_trylock.exit.i.if.then.i125_crit_edge, %folio_flags.exit.i.i.if.then.i125_crit_edge
  call void @__folio_lock(ptr noundef %28) #8
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i125, %folio_trylock.exit.i.lock_page.exit_crit_edge
  %37 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %38)
  %cmp.i.not.i = icmp eq i32 %38, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate.exit, !prof !43

if.then.i:                                        ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_page(ptr noundef %23, ptr noundef nonnull @.str.17) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #8, !srcloc !44
  unreachable

PagePrivate.exit:                                 ; preds = %lock_page.exit
  %39 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %23, align 4
  %41 = and i32 %40, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not = icmp eq i32 %41, 0
  br i1 %tobool.not, label %if.else70, label %if.then32

if.then32:                                        ; preds = %PagePrivate.exit
  %42 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %43)
  %cmp.i.not.i118 = icmp eq i32 %43, -1
  br i1 %cmp.i.not.i118, label %if.then.i119, label %PagePrivate.exit122, !prof !43

if.then.i119:                                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_page(ptr noundef %23, ptr noundef nonnull @.str.17) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #8, !srcloc !44
  unreachable

PagePrivate.exit122:                              ; preds = %if.then32
  %44 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %23, align 4
  %46 = and i32 %45, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool35.not = icmp eq i32 %46, 0
  br i1 %tobool35.not, label %do.body40, label %do.end46, !prof !43

do.body40:                                        ; preds = %PagePrivate.exit122
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/page.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 527, 0\0A.popsection", ""() #8, !srcloc !88
  unreachable

do.end46:                                         ; preds = %PagePrivate.exit122
  %private = getelementptr inbounds %struct.page, ptr %23, i32 0, i32 1, i32 0, i32 3
  %47 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %private, align 4
  %49 = inttoptr i32 %48 to ptr
  br label %do.body47

do.body47:                                        ; preds = %do.cond64.do.body47_crit_edge, %do.end46
  %length.2 = phi i32 [ %length.1, %do.end46 ], [ %length.3, %do.cond64.do.body47_crit_edge ]
  %b.1 = phi i64 [ %b.0, %do.end46 ], [ %inc65, %do.cond64.do.body47_crit_edge ]
  %bh.0 = phi ptr [ %49, %do.end46 ], [ %55, %do.cond64.do.body47_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %b.1, i64 %start_blk)
  %cmp48 = icmp ult i64 %b.1, %start_blk
  br i1 %cmp48, label %do.body47.do.cond64_crit_edge, label %if.end51

do.body47.do.cond64_crit_edge:                    ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond64

if.end51:                                         ; preds = %do.body47
  %50 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %bh.0, align 4
  %52 = and i32 %51, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool53.not = icmp eq i32 %52, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length.2)
  %cmp59.not = icmp eq i32 %length.2, 0
  br i1 %tobool53.not, label %if.else, label %if.then54

if.then54:                                        ; preds = %if.end51
  br i1 %cmp59.not, label %if.then57, label %if.then54.if.end58_crit_edge

if.then54.if.end58_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.then57:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %blkoff to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %b.1, ptr %blkoff, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %if.then54.if.end58_crit_edge
  %inc = add i32 %length.2, 1
  br label %do.cond64

if.else:                                          ; preds = %if.end51
  br i1 %cmp59.not, label %if.else.do.cond64_crit_edge, label %if.else.out_locked_crit_edge

if.else.out_locked_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_locked

if.else.do.cond64_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond64

do.cond64:                                        ; preds = %if.else.do.cond64_crit_edge, %if.end58, %do.body47.do.cond64_crit_edge
  %length.3 = phi i32 [ %length.2, %do.body47.do.cond64_crit_edge ], [ %inc, %if.end58 ], [ 0, %if.else.do.cond64_crit_edge ]
  %inc65 = add i64 %b.1, 1
  %b_this_page = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 1
  %54 = ptrtoint ptr %b_this_page to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %b_this_page, align 4
  %cmp66.not = icmp eq ptr %55, %49
  br i1 %cmp66.not, label %do.cond64.if.end76_crit_edge, label %do.cond64.do.body47_crit_edge

do.cond64.do.body47_crit_edge:                    ; preds = %do.cond64
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body47

do.cond64.if.end76_crit_edge:                     ; preds = %do.cond64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

if.else70:                                        ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length.1)
  %cmp71.not = icmp eq i32 %length.1, 0
  br i1 %cmp71.not, label %if.end74, label %if.else70.out_locked_crit_edge

if.else70.out_locked_crit_edge:                   ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_locked

if.end74:                                         ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #10
  %add = add i64 %b.0, %conv75
  br label %if.end76

if.end76:                                         ; preds = %if.end74, %do.cond64.if.end76_crit_edge
  %length.5 = phi i32 [ 0, %if.end74 ], [ %length.3, %do.cond64.if.end76_crit_edge ]
  %b.3 = phi i64 [ %add, %if.end74 ], [ %inc65, %do.cond64.if.end76_crit_edge ]
  call void @unlock_page(ptr noundef %23) #8
  %inc78 = add nuw nsw i32 %i.0, 1
  %56 = ptrtoint ptr %pvec to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %pvec, align 4
  %conv.i = zext i8 %57 to i32
  %cmp80 = icmp ult i32 %inc78, %conv.i
  br i1 %cmp80, label %if.end76.do.body_crit_edge, label %do.end82

if.end76.do.body_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end82:                                         ; preds = %if.end76
  %index83 = getelementptr inbounds %struct.page, ptr %23, i32 0, i32 1, i32 0, i32 2
  %58 = ptrtoint ptr %index83 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %index83, align 4
  %add84 = add i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i = icmp eq i8 %57, 0
  br i1 %tobool.not.i, label %do.end82.pagevec_release.exit_crit_edge, label %if.then.i126

do.end82.pagevec_release.exit_crit_edge:          ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %pagevec_release.exit

if.then.i126:                                     ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #10
  call void @__pagevec_release(ptr noundef nonnull %pvec) #8
  br label %pagevec_release.exit

pagevec_release.exit:                             ; preds = %if.then.i126, %do.end82.pagevec_release.exit_crit_edge
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 551, i32 noundef 0) #8
  %call.i = call i32 @__cond_resched() #8
  %60 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %i_mapping, align 8
  %call = call i32 @find_get_pages_contig(ptr noundef %61, i32 noundef %add84, i32 noundef 15, ptr noundef %pages) #8
  %conv6 = trunc i32 %call to i8
  %62 = ptrtoint ptr %pvec to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv6, ptr %pvec, align 4
  %conv8 = and i32 %call, 255
  %cmp9 = icmp eq i32 %conv8, 0
  br i1 %cmp9, label %pagevec_release.exit.cleanup87_crit_edge, label %pagevec_release.exit.if.end12_crit_edge

pagevec_release.exit.if.end12_crit_edge:          ; preds = %pagevec_release.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

pagevec_release.exit.cleanup87_crit_edge:         ; preds = %pagevec_release.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup87

out_locked:                                       ; preds = %if.else70.out_locked_crit_edge, %if.else.out_locked_crit_edge
  %length.6 = phi i32 [ %length.2, %if.else.out_locked_crit_edge ], [ %length.1, %if.else70.out_locked_crit_edge ]
  call void @unlock_page(ptr noundef %23) #8
  br label %out

out:                                              ; preds = %out_locked, %land.lhs.true.out_crit_edge
  %length.7 = phi i32 [ %length.6, %out_locked ], [ %length.0167, %land.lhs.true.out_crit_edge ]
  %63 = ptrtoint ptr %pvec to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %pvec, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool.not.i127 = icmp eq i8 %64, 0
  br i1 %tobool.not.i127, label %out.cleanup87_crit_edge, label %if.then.i128

out.cleanup87_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup87

if.then.i128:                                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  call void @__pagevec_release(ptr noundef nonnull %pvec) #8
  br label %cleanup87

cleanup87:                                        ; preds = %if.then.i128, %out.cleanup87_crit_edge, %pagevec_release.exit.cleanup87_crit_edge, %if.end.cleanup87_crit_edge, %entry.cleanup87_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup87_crit_edge ], [ %length.7, %out.cleanup87_crit_edge ], [ %length.7, %if.then.i128 ], [ 0, %if.end.cleanup87_crit_edge ], [ %length.5, %pagevec_release.exit.cleanup87_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pvec) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @find_get_pages_contig(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @create_empty_buffers(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @touch_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wait_on_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pagevec_lookup_range_tag(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @copy_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pagevec_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pagevec_lookup_range(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__page_file_index(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !18, !20, !22, !24, !25, !27, !29, !31}
!llvm.named.register.sp = !{!33}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/nilfs2/page.c", i32 159, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @nilfs_page_bug._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @nilfs_page_bug._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/nilfs2/page.c", i32 166, i32 2}
!8 = !{ptr @nilfs_page_bug._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @nilfs_page_bug._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/nilfs2/page.c", i32 177, i32 4}
!12 = !{ptr @nilfs_page_bug._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @nilfs_page_bug._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/nilfs2/page.c", i32 393, i32 3}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/nilfs2/page.c", i32 410, i32 5}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../include/linux/buffer_head.h", i32 354, i32 2}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../include/linux/mm.h", i32 717, i32 2}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../include/linux/page-flags.h", i32 678, i32 1}
!24 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!27 = distinct !{null, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!29 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../include/linux/page-flags.h", i32 452, i32 1}
!31 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../include/linux/pagemap.h", i32 788, i32 2}
!33 = !{!"sp"}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{!"branch_weights", i32 1, i32 2000}
!44 = !{i64 2150733690, i64 2150734181, i64 2150733727, i64 2150733783, i64 2150733817, i64 2150733841, i64 2150733882, i64 2150733903, i64 2150733931, i64 2150733965}
!45 = !{i64 2155126073, i64 2155126553, i64 2155126110, i64 2155126166, i64 2155126200, i64 2155126224, i64 2155126265, i64 2155126286, i64 2155126314, i64 2155126348}
!46 = !{i64 2148715925, i64 2148715951, i64 2148715980, i64 2148716014, i64 2148716045, i64 2148716068}
!47 = !{!"branch_weights", i32 2000, i32 1}
!48 = !{i64 2153161921, i64 2153162404, i64 2153161958, i64 2153162014, i64 2153162048, i64 2153162072, i64 2153162113, i64 2153162134, i64 2153162162, i64 2153162196}
!49 = !{i64 2148804401}
!50 = !{i64 2148719110, i64 2148719142, i64 2148719171, i64 2148719205, i64 2148719236, i64 2148719259}
!51 = !{i64 2148804630}
!52 = !{i64 2148316602, i64 2148316607, i64 2148316620, i64 2148316664, i64 2148316698, i64 2148316719}
!53 = !{i64 2148724783, i64 2148724815, i64 2148724844, i64 2148724878, i64 2148724909, i64 2148724932}
!54 = !{i64 2148813888}
!55 = !{i64 2155139882}
!56 = !{i64 1225417, i64 1225438, i64 1225461, i64 1225480, i64 1225499}
!57 = !{i64 2155140291}
!58 = !{i64 2155145236, i64 2155145717, i64 2155145273, i64 2155145329, i64 2155145363, i64 2155145387, i64 2155145428, i64 2155145449, i64 2155145477, i64 2155145511}
!59 = !{i64 2151029799, i64 2151029972, i64 2151029987, i64 2151030039, i64 2151030098, i64 2151030122, i64 2151030163, i64 2151030184, i64 2151030212, i64 2151030244}
!60 = !{i64 2151030674, i64 2151030847, i64 2151030862, i64 2151030914, i64 2151030973, i64 2151030997, i64 2151031038, i64 2151031059, i64 2151031087, i64 2151031119}
!61 = !{i64 2150835920, i64 2150836093, i64 2150836108, i64 2150836160, i64 2150836219, i64 2150836243, i64 2150836284, i64 2150836305, i64 2150836333, i64 2150836365}
!62 = !{i64 2150836795, i64 2150836968, i64 2150836983, i64 2150837035, i64 2150837094, i64 2150837118, i64 2150837159, i64 2150837180, i64 2150837208, i64 2150837240}
!63 = !{i64 2150270923, i64 2150271414, i64 2150270960, i64 2150271016, i64 2150271050, i64 2150271074, i64 2150271115, i64 2150271136, i64 2150271164, i64 2150271198}
!64 = !{i64 2150406984, i64 2150407157, i64 2150407172, i64 2150407224, i64 2150407283, i64 2150407307, i64 2150407348, i64 2150407369, i64 2150407397, i64 2150407429}
!65 = !{i64 2153685857}
!66 = !{i64 2152778972}
!67 = !{i64 2152779179}
!68 = !{i64 2153688628}
!69 = !{i64 2151021886}
!70 = !{i64 2150827034, i64 2150827207, i64 2150827222, i64 2150827274, i64 2150827333, i64 2150827357, i64 2150827398, i64 2150827419, i64 2150827447, i64 2150827479}
!71 = !{i64 2150827909, i64 2150828082, i64 2150828097, i64 2150828149, i64 2150828208, i64 2150828232, i64 2150828273, i64 2150828294, i64 2150828322, i64 2150828354}
!72 = !{i64 2155150277, i64 2155150758, i64 2155150314, i64 2155150370, i64 2155150404, i64 2155150428, i64 2155150469, i64 2155150490, i64 2155150518, i64 2155150552}
!73 = !{i64 2150384893, i64 2150385384, i64 2150384930, i64 2150384986, i64 2150385020, i64 2150385044, i64 2150385085, i64 2150385106, i64 2150385134, i64 2150385168}
!74 = !{i64 2155159276, i64 2155159757, i64 2155159313, i64 2155159369, i64 2155159403, i64 2155159427, i64 2155159468, i64 2155159489, i64 2155159517, i64 2155159551}
!75 = !{i64 2155164966, i64 2155165447, i64 2155165003, i64 2155165059, i64 2155165093, i64 2155165117, i64 2155165158, i64 2155165179, i64 2155165207, i64 2155165241}
!76 = !{i64 2150790838, i64 2150791329, i64 2150790875, i64 2150790931, i64 2150790965, i64 2150790989, i64 2150791030, i64 2150791051, i64 2150791079, i64 2150791113}
!77 = !{i64 2155154136, i64 2155154617, i64 2155154173, i64 2155154229, i64 2155154263, i64 2155154287, i64 2155154328, i64 2155154349, i64 2155154377, i64 2155154411}
!78 = !{i64 2155155826, i64 2155156307, i64 2155155863, i64 2155155919, i64 2155155953, i64 2155155977, i64 2155156018, i64 2155156039, i64 2155156067, i64 2155156101}
!79 = !{i64 2155157642, i64 2155158123, i64 2155157679, i64 2155157735, i64 2155157769, i64 2155157793, i64 2155157834, i64 2155157855, i64 2155157883, i64 2155157917}
!80 = !{i64 2151020815}
!81 = !{i64 2150814331, i64 2150814822, i64 2150814368, i64 2150814424, i64 2150814458, i64 2150814482, i64 2150814523, i64 2150814544, i64 2150814572, i64 2150814606}
!82 = !{i64 2150282417, i64 2150282908, i64 2150282454, i64 2150282510, i64 2150282544, i64 2150282568, i64 2150282609, i64 2150282630, i64 2150282658, i64 2150282692}
!83 = !{i64 2155168330, i64 2155168811, i64 2155168367, i64 2155168423, i64 2155168457, i64 2155168481, i64 2155168522, i64 2155168543, i64 2155168571, i64 2155168605}
!84 = !{i64 2155170936, i64 2155171417, i64 2155170973, i64 2155171029, i64 2155171063, i64 2155171087, i64 2155171128, i64 2155171149, i64 2155171177, i64 2155171211}
!85 = !{i64 2155176729}
!86 = !{i64 2155177138}
!87 = !{i64 2155177591, i64 2155178072, i64 2155177628, i64 2155177684, i64 2155177718, i64 2155177742, i64 2155177783, i64 2155177804, i64 2155177832, i64 2155177866}
!88 = !{i64 2155179702, i64 2155180183, i64 2155179739, i64 2155179795, i64 2155179829, i64 2155179853, i64 2155179894, i64 2155179915, i64 2155179943, i64 2155179977}
