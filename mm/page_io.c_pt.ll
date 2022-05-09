; ModuleID = '/llk/IR_all_yes/mm/page_io.c_pt.bc'
source_filename = "../mm/page_io.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.73 }
%struct.atomic_t = type { i32 }
%union.anon.73 = type { i32 }
%struct.vm_event_state = type { [76 x i32] }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.bio_list = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.cgroup_subsys = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, %struct.idr, %struct.list_head, ptr, ptr, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.81, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.81 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.page = type { i32, %union.anon.6, %union.anon.71, %struct.atomic_t, i32 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.71 = type { %struct.atomic_t }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.file = type { %union.anon.19, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.19 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.77, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.78, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.79, ptr, %struct.address_space, %struct.list_head, %union.anon.80, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.77 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.78 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.79 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.80 = type { ptr }
%struct.swap_info_struct = type { %struct.percpu_ref, i32, i16, %struct.plist_node, i8, i32, ptr, ptr, %struct.swap_cluster_list, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.rb_root, ptr, ptr, i32, %struct.completion, ptr, %struct.atomic_t, %struct.spinlock, %struct.spinlock, %struct.work_struct, %struct.swap_cluster_list, [0 x %struct.plist_node] }
%struct.percpu_ref = type { i32, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.swap_cluster_list = type { %struct.swap_cluster_info, %struct.swap_cluster_info }
%struct.swap_cluster_info = type { %struct.spinlock, i32 }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.20, %union.anon.21 }
%union.anon.20 = type { ptr }
%union.anon.21 = type { i64 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.63, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.38 }
%struct.llist_node = type { ptr }
%union.anon.38 = type { i32 }
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
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.40 }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.63 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.io_context = type { %struct.atomic_t, %struct.atomic_t, i16, %struct.spinlock, %struct.xarray, ptr, %struct.hlist_head, %struct.work_struct }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.writeback_control = type { i32, i32, i64, i64, i32, i16, ptr, ptr, i32, i32, i32, i32, i32, i32 }
%struct.anon.83 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t, i32 }
%struct.obj_cgroup = type { %struct.percpu_ref, ptr, %struct.atomic_t, %union.anon.65 }
%union.anon.65 = type { %struct.list_head }
%struct.block_device_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@end_swap_bio_write._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.end_swap_bio_write = private unnamed_addr constant [19 x i8] c"end_swap_bio_write\00", align 1
@end_swap_bio_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.end_swap_bio_write, ptr @.str.2, i32 47, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\011Write-error on swap-device (%u:%u:%llu)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mm/page_io.c\00", [19 x i8] zeroinitializer }, align 32
@end_swap_bio_write._entry_ptr = internal global ptr @end_swap_bio_write._entry, section ".printk_index", align 4
@generic_swapfile_activate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 220, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013swapon: swapfile has holes\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"generic_swapfile_activate\00", [38 x i8] zeroinitializer }, align 32
@generic_swapfile_activate._entry_ptr = internal global ptr @generic_swapfile_activate._entry, section ".printk_index", align 4
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"VM_BUG_ON_PAGE(!PageSwapCache(page))\00", [59 x i8] zeroinitializer }, align 32
@__swap_writepage._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.__swap_writepage = private unnamed_addr constant [17 x i8] c"__swap_writepage\00", align 1
@__swap_writepage._entry = internal constant %struct.pi_entry { ptr @.str.6, ptr @__func__.__swap_writepage, ptr @.str.2, i32 329, ptr null, ptr null }, align 1
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013Write error on dio swapfile (%llu)\0A\00", [58 x i8] zeroinitializer }, align 32
@__swap_writepage._entry_ptr = internal global ptr @__swap_writepage._entry, section ".printk_index", align 4
@.str.7 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"VM_BUG_ON_PAGE(!PageSwapCache(page) && !synchronous)\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"VM_BUG_ON_PAGE(!PageLocked(page))\00", [62 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PageUptodate(page))\00", [61 x i8] zeroinitializer }, align 32
@bio_first_bvec_all.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"include/linux/bio.h\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VM_BUG_ON_PAGE(1 && PageTail(page))\00", [60 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@frontswap_enabled_key = external dso_local global %struct.static_key_false, align 4
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@vm_event_states = external dso_local global %struct.vm_event_state, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@fs_bio_set = external dso_local global %struct.bio_set, align 4
@io_cgrp_subsys = external dso_local global %struct.cgroup_subsys, align 4
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"VM_BUG_ON_PAGE(PageTail(&folio->page))\00", [57 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"VM_BUG_ON_FOLIO(folio->memcg_data & MEMCG_DATA_OBJCGS)\00", [41 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"VM_BUG_ON_FOLIO(folio_test_slab(folio))\00", [56 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@delayacct_key = external dso_local global %struct.static_key_false, align 4
@end_swap_bio_read._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.end_swap_bio_read = private unnamed_addr constant [18 x i8] c"end_swap_bio_read\00", align 1
@end_swap_bio_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @__func__.end_swap_bio_read, ptr @.str.2, i32 112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\011Read-error on swap-device (%u:%u:%llu)\0A\00", [54 x i8] zeroinitializer }, align 32
@end_swap_bio_read._entry_ptr = internal global ptr @end_swap_bio_read._entry, section ".printk_index", align 4
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 45, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 220, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 293, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 328, i32 4 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 364, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 365, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 366, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant [23 x i8] c"../include/linux/bio.h\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 248, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 416, i32 1 }
@___asan_gen_.76 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 260, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 537, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 538, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant [30 x i8] c"../include/linux/memcontrol.h\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 417, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 695, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 723, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.103 = private constant [16 x i8] c"../mm/page_io.c\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 110, i32 3 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__swap_writepage._entry, ptr @__swap_writepage._entry_ptr, ptr @end_swap_bio_read._entry, ptr @end_swap_bio_read._entry_ptr, ptr @end_swap_bio_write._entry, ptr @end_swap_bio_write._entry_ptr, ptr @generic_swapfile_activate._entry, ptr @generic_swapfile_activate._entry_ptr, ptr @end_swap_bio_write._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @end_swap_bio_read._rs, ptr @.str.25], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @end_swap_bio_write._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @end_swap_bio_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generic_swapfile_activate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @end_swap_bio_read._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @end_swap_bio_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @end_swap_bio_write(ptr noundef %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_flags.i.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 3
  %0 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %bi_flags.i.i.i, align 4
  %2 = and i16 %1, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %cmp.i.not.i.i = icmp eq i16 %2, 0
  br i1 %cmp.i.not.i.i, label %entry.bio_first_page_all.exit_crit_edge, label %land.rhs.i.i

entry.bio_first_page_all.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bio_first_page_all.exit

land.rhs.i.i:                                     ; preds = %entry
  %.b38.i.i = load i1, ptr @bio_first_bvec_all.__already_done, align 1
  br i1 %.b38.i.i, label %land.rhs.i.i.bio_first_page_all.exit_crit_edge, label %if.then.i.i44, !prof !79

land.rhs.i.i.bio_first_page_all.exit_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bio_first_page_all.exit

if.then.i.i44:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @bio_first_bvec_all.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 248, i32 noundef 9, ptr noundef null) #9
  br label %bio_first_page_all.exit

bio_first_page_all.exit:                          ; preds = %if.then.i.i44, %land.rhs.i.i.bio_first_page_all.exit_crit_edge, %entry.bio_first_page_all.exit_crit_edge
  %bi_io_vec.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 20
  %3 = ptrtoint ptr %bi_io_vec.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bi_io_vec.i.i, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %7 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bi_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %bio_first_page_all.exit.if.end10_crit_edge, label %if.then

bio_first_page_all.exit.if.end10_crit_edge:       ; preds = %bio_first_page_all.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then:                                          ; preds = %bio_first_page_all.exit
  %9 = getelementptr inbounds %struct.page, ptr %6, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %and.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i, !prof !79

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %6, ptr noundef nonnull @.str.12) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #9, !srcloc !80
  unreachable

do.body7.i:                                       ; preds = %if.then
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %9, align 4
  %and.i31.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !79

if.then.i.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %13, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %6 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %14, %if.end.i.i ]
  %15 = inttoptr i32 %retval.0.i.i to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp.i.not.i = icmp eq i32 %17, -1
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %9, align 4
  %and.i32.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i, label %if.then17.i, label %do.end24.i, !prof !81

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !79

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i34.i = add i32 %19, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %6 to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %20, %if.end.i36.i ]
  %21 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %21, ptr noundef nonnull @.str.13) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #9, !srcloc !82
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !79

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i41.i = add i32 %19, -1
  br label %SetPageError.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %6 to i32
  br label %SetPageError.exit

SetPageError.exit:                                ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %22, %if.end.i43.i ]
  %23 = inttoptr i32 %retval.0.i44.i to ptr
  tail call void @_set_bit(i32 noundef 8, ptr noundef %23) #9
  %call1 = tail call zeroext i1 @set_page_dirty(ptr noundef %6) #9
  %call2 = tail call i32 @___ratelimit(ptr noundef nonnull @end_swap_bio_write._rs, ptr noundef nonnull @__func__.end_swap_bio_write) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %SetPageError.exit.if.end_crit_edge, label %do.end

SetPageError.exit.if.end_crit_edge:               ; preds = %SetPageError.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %SetPageError.exit
  call void @__sanitizer_cov_trace_pc() #11
  %bi_bdev = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %24 = ptrtoint ptr %bi_bdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bi_bdev, align 4
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %25, i32 0, i32 17
  %26 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bd_disk, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 8
  %shl.i = shl i32 %29, 20
  %first_minor.i = getelementptr inbounds %struct.gendisk, ptr %27, i32 0, i32 1
  %30 = ptrtoint ptr %first_minor.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %first_minor.i, align 4
  %or.i = or i32 %shl.i, %31
  %shr = lshr i32 %or.i, 20
  %and = and i32 %31, 1048575
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %32 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %bi_iter, align 8
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %shr, i32 noundef %and, i64 noundef %33) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %SetPageError.exit.if.end_crit_edge
  %34 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %9, align 4
  %and.i.i19 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i19)
  %tobool.not.i20 = icmp eq i32 %and.i.i19, 0
  br i1 %tobool.not.i20, label %do.body7.i24, label %if.then.i21, !prof !79

if.then.i21:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %6, ptr noundef nonnull @.str.12) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 466, 0\0A.popsection", ""() #9, !srcloc !83
  unreachable

do.body7.i24:                                     ; preds = %if.end
  %36 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %9, align 4
  %and.i31.i22 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i22)
  %tobool.not.i.i23 = icmp eq i32 %and.i31.i22, 0
  br i1 %tobool.not.i.i23, label %if.end.i.i27, label %if.then.i.i26, !prof !79

if.then.i.i26:                                    ; preds = %do.body7.i24
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i25 = add i32 %37, -1
  br label %_compound_head.exit.i32

if.end.i.i27:                                     ; preds = %do.body7.i24
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %6 to i32
  br label %_compound_head.exit.i32

_compound_head.exit.i32:                          ; preds = %if.end.i.i27, %if.then.i.i26
  %retval.0.i.i28 = phi i32 [ %sub.i.i25, %if.then.i.i26 ], [ %38, %if.end.i.i27 ]
  %39 = inttoptr i32 %retval.0.i.i28 to ptr
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %41)
  %cmp.i.not.i29 = icmp eq i32 %41, -1
  %42 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %9, align 4
  %and.i32.i30 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i30)
  %tobool.not.i33.i31 = icmp eq i32 %and.i32.i30, 0
  br i1 %cmp.i.not.i29, label %if.then17.i33, label %do.end24.i39, !prof !81

if.then17.i33:                                    ; preds = %_compound_head.exit.i32
  br i1 %tobool.not.i33.i31, label %if.end.i36.i36, label %if.then.i35.i35, !prof !79

if.then.i35.i35:                                  ; preds = %if.then17.i33
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i34.i34 = add i32 %43, -1
  br label %_compound_head.exit38.i38

if.end.i36.i36:                                   ; preds = %if.then17.i33
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %6 to i32
  br label %_compound_head.exit38.i38

_compound_head.exit38.i38:                        ; preds = %if.end.i36.i36, %if.then.i35.i35
  %retval.0.i37.i37 = phi i32 [ %sub.i34.i34, %if.then.i35.i35 ], [ %44, %if.end.i36.i36 ]
  %45 = inttoptr i32 %retval.0.i37.i37 to ptr
  tail call void @dump_page(ptr noundef %45, ptr noundef nonnull @.str.13) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 466, 0\0A.popsection", ""() #9, !srcloc !84
  unreachable

do.end24.i39:                                     ; preds = %_compound_head.exit.i32
  br i1 %tobool.not.i33.i31, label %if.end.i43.i42, label %if.then.i42.i41, !prof !79

if.then.i42.i41:                                  ; preds = %do.end24.i39
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i41.i40 = add i32 %43, -1
  br label %ClearPageReclaim.exit

if.end.i43.i42:                                   ; preds = %do.end24.i39
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %6 to i32
  br label %ClearPageReclaim.exit

ClearPageReclaim.exit:                            ; preds = %if.end.i43.i42, %if.then.i42.i41
  %retval.0.i44.i43 = phi i32 [ %sub.i41.i40, %if.then.i42.i41 ], [ %46, %if.end.i43.i42 ]
  %47 = inttoptr i32 %retval.0.i44.i43 to ptr
  tail call void @_clear_bit(i32 noundef 18, ptr noundef %47) #9
  br label %if.end10

if.end10:                                         ; preds = %ClearPageReclaim.exit, %bio_first_page_all.exit.if.end10_crit_edge
  tail call void @end_page_writeback(ptr noundef %6) #9
  tail call void @bio_put(ptr noundef %bio) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @end_page_writeback(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @generic_swapfile_activate(ptr noundef %sis, ptr nocapture noundef readonly %swap_file, ptr nocapture noundef writeonly %span) local_unnamed_addr #0 align 64 {
entry:
  %first_block = alloca i64, align 8
  %block = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mapping = getelementptr inbounds %struct.file, ptr %swap_file, i32 0, i32 18
  %0 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %i_blkbits, align 2
  %conv = zext i8 %5 to i32
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 23
  %dep_map.c48.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 23, i32 1
  %i_size18.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %entry
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !85
  %and.i.i.i = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_off() #9
  %7 = tail call ptr @llvm.returnaddress(i32 0) #9
  %8 = ptrtoint ptr %7 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %8) #9
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %8) #9
  tail call void @trace_hardirqs_on() #9
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call ptr @llvm.returnaddress(i32 0) #9
  %10 = ptrtoint ptr %9 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %10) #9
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %10) #9
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %11 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !86
  %and.i.i.i.i = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !81

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #9, !srcloc !87
  %12 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and29.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !88
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !89
  %14 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and.i = and i32 %15, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %13, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge ], [ %15, %do.end.i.while.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !90
  %16 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %i_size18.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !91
  %18 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %19, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %i_size_read.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

i_size_read.exit:                                 ; preds = %while.end.i
  %shr = lshr i32 4096, %conv
  %sh_prom = zext i8 %5 to i64
  %shr1 = ashr i64 %17, %sh_prom
  %conv2 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shr1, i64 %conv2)
  %cmp.not155 = icmp ult i64 %shr1, %conv2
  br i1 %cmp.not155, label %while.end.thread, label %land.rhs.lr.ph

while.end.thread:                                 ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %span to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 2, ptr %span, align 8
  br label %37

land.rhs.lr.ph:                                   ; preds = %i_size_read.exit
  %max = getelementptr inbounds %struct.swap_info_struct, ptr %sis, i32 0, i32 5
  %sub = add nsw i32 %shr, -1
  %conv9 = zext i32 %sub to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr)
  %cmp13153 = icmp ugt i32 %shr, 1
  %sub31 = sub nsw i32 12, %conv
  %sh_prom32 = zext i32 %sub31 to i64
  br label %land.rhs

land.rhs:                                         ; preds = %cleanup54.land.rhs_crit_edge, %land.rhs.lr.ph
  %nr_extents.0162 = phi i32 [ 0, %land.rhs.lr.ph ], [ %nr_extents.2, %cleanup54.land.rhs_crit_edge ]
  %highest_block.0161 = phi i64 [ 0, %land.rhs.lr.ph ], [ %highest_block.3, %cleanup54.land.rhs_crit_edge ]
  %lowest_block.0160 = phi i64 [ -1, %land.rhs.lr.ph ], [ %lowest_block.4, %cleanup54.land.rhs_crit_edge ]
  %probe_block.0158 = phi i64 [ 0, %land.rhs.lr.ph ], [ %probe_block.4, %cleanup54.land.rhs_crit_edge ]
  %page_no.0156 = phi i32 [ 0, %land.rhs.lr.ph ], [ %page_no.2, %cleanup54.land.rhs_crit_edge ]
  %21 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %page_no.0156, i32 %22)
  %cmp4 = icmp ult i32 %page_no.0156, %22
  br i1 %cmp4, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %land.rhs
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %first_block) #9
  %23 = ptrtoint ptr %first_block to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 -1, ptr %first_block, align 8, !annotation !92
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 159, i32 noundef 0) #9
  %call.i = call i32 @__cond_resched() #9
  %24 = ptrtoint ptr %first_block to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %probe_block.0158, ptr %first_block, align 8
  %call7 = call i32 @bmap(ptr noundef %3, ptr noundef nonnull %first_block) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %lor.lhs.false, label %while.body.do.end_crit_edge

while.body.do.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false:                                    ; preds = %while.body
  %25 = ptrtoint ptr %first_block to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %first_block, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %26)
  %tobool8.not = icmp eq i64 %26, 0
  br i1 %tobool8.not, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end:                                           ; preds = %lor.lhs.false
  %and = and i64 %26, %conv9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool10.not = icmp eq i64 %and, 0
  br i1 %tobool10.not, label %for.cond.preheader, label %if.then11

for.cond.preheader:                               ; preds = %if.end
  br i1 %cmp13153, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %inc = add i64 %probe_block.0158, 1
  br label %cleanup54

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %block_in_page.0154 = phi i32 [ %inc30, %for.inc.for.body_crit_edge ], [ 1, %for.cond.preheader.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %block) #9
  %conv15 = zext i32 %block_in_page.0154 to i64
  %add16 = add i64 %probe_block.0158, %conv15
  %27 = ptrtoint ptr %block to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %add16, ptr %block, align 8
  %call17 = call i32 @bmap(ptr noundef %3, ptr noundef nonnull %block) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %lor.lhs.false19, label %for.body.cleanup.thread_crit_edge

for.body.cleanup.thread_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

lor.lhs.false19:                                  ; preds = %for.body
  %28 = ptrtoint ptr %block to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %block, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %29)
  %tobool20.not = icmp eq i64 %29, 0
  br i1 %tobool20.not, label %lor.lhs.false19.cleanup.thread_crit_edge, label %if.end22

lor.lhs.false19.cleanup.thread_crit_edge:         ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

if.end22:                                         ; preds = %lor.lhs.false19
  %30 = ptrtoint ptr %first_block to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %first_block, align 8
  %add24 = add i64 %31, %conv15
  call void @__sanitizer_cov_trace_cmp8(i64 %29, i64 %add24)
  %cmp25.not = icmp eq i64 %29, %add24
  br i1 %cmp25.not, label %for.inc, label %cleanup

cleanup.thread:                                   ; preds = %lor.lhs.false19.cleanup.thread_crit_edge, %for.body.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %block) #9
  br label %do.end

cleanup:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %inc28 = add i64 %probe_block.0158, 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %block) #9
  br label %cleanup54

for.inc:                                          ; preds = %if.end22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %block) #9
  %inc30 = add nuw nsw i32 %block_in_page.0154, 1
  %exitcond.not = icmp eq i32 %inc30, %shr
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %32 = ptrtoint ptr %first_block to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %first_block, align 8
  %shr33 = lshr i64 %33, %sh_prom32
  store i64 %shr33, ptr %first_block, align 8
  %call45 = call i32 @add_swap_extent(ptr noundef %sis, i32 noundef %page_no.0156, i32 noundef 1, i64 noundef %shr33) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %cleanup54.thread132, label %if.end49

cleanup54.thread132:                              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %first_block) #9
  br label %cleanup68

if.end49:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %page_no.0156)
  %tobool34.not = icmp eq i32 %page_no.0156, 0
  %34 = call i64 @llvm.umax.i64(i64 %shr33, i64 %highest_block.0161)
  %highest_block.1 = select i1 %tobool34.not, i64 %highest_block.0161, i64 %34
  %35 = call i64 @llvm.umin.i64(i64 %shr33, i64 %lowest_block.0160)
  %lowest_block.2 = select i1 %tobool34.not, i64 %lowest_block.0160, i64 %35
  %add50 = add i32 %call45, %nr_extents.0162
  %inc51 = add i32 %page_no.0156, 1
  %add53 = add i64 %probe_block.0158, %conv2
  br label %cleanup54

cleanup54:                                        ; preds = %if.end49, %cleanup, %if.then11
  %page_no.2 = phi i32 [ %page_no.0156, %if.then11 ], [ %page_no.0156, %cleanup ], [ %inc51, %if.end49 ]
  %probe_block.4 = phi i64 [ %inc, %if.then11 ], [ %inc28, %cleanup ], [ %add53, %if.end49 ]
  %lowest_block.4 = phi i64 [ %lowest_block.0160, %if.then11 ], [ %lowest_block.0160, %cleanup ], [ %lowest_block.2, %if.end49 ]
  %highest_block.3 = phi i64 [ %highest_block.0161, %if.then11 ], [ %highest_block.0161, %cleanup ], [ %highest_block.1, %if.end49 ]
  %nr_extents.2 = phi i32 [ %nr_extents.0162, %if.then11 ], [ %nr_extents.0162, %cleanup ], [ %add50, %if.end49 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %first_block) #9
  %add = add i64 %probe_block.4, %conv2
  %cmp.not = icmp ugt i64 %add, %shr1
  br i1 %cmp.not, label %cleanup54.while.end_crit_edge, label %cleanup54.land.rhs_crit_edge

cleanup54.land.rhs_crit_edge:                     ; preds = %cleanup54
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

cleanup54.while.end_crit_edge:                    ; preds = %cleanup54
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %cleanup54.while.end_crit_edge, %land.rhs.while.end_crit_edge
  %page_no.0.lcssa = phi i32 [ %page_no.0156, %land.rhs.while.end_crit_edge ], [ %page_no.2, %cleanup54.while.end_crit_edge ]
  %lowest_block.0.lcssa = phi i64 [ %lowest_block.0160, %land.rhs.while.end_crit_edge ], [ %lowest_block.4, %cleanup54.while.end_crit_edge ]
  %highest_block.0.lcssa = phi i64 [ %highest_block.0161, %land.rhs.while.end_crit_edge ], [ %highest_block.3, %cleanup54.while.end_crit_edge ]
  %nr_extents.0.lcssa = phi i32 [ %nr_extents.0162, %land.rhs.while.end_crit_edge ], [ %nr_extents.2, %cleanup54.while.end_crit_edge ]
  %add57 = sub i64 1, %lowest_block.0.lcssa
  %sub58 = add i64 %add57, %highest_block.0.lcssa
  %36 = ptrtoint ptr %span to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %sub58, ptr %span, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %page_no.0.lcssa)
  %cmp59 = icmp eq i32 %page_no.0.lcssa, 0
  br i1 %cmp59, label %while.end._crit_edge, label %while.end._crit_edge185

while.end._crit_edge185:                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %38

while.end._crit_edge:                             ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %37

37:                                               ; preds = %while.end._crit_edge, %while.end.thread
  %nr_extents.0.lcssa180 = phi i32 [ 0, %while.end.thread ], [ %nr_extents.0.lcssa, %while.end._crit_edge ]
  br label %38

38:                                               ; preds = %37, %while.end._crit_edge185
  %nr_extents.0.lcssa179 = phi i32 [ %nr_extents.0.lcssa180, %37 ], [ %nr_extents.0.lcssa, %while.end._crit_edge185 ]
  %39 = phi i32 [ 1, %37 ], [ %page_no.0.lcssa, %while.end._crit_edge185 ]
  %max63 = getelementptr inbounds %struct.swap_info_struct, ptr %sis, i32 0, i32 5
  %40 = ptrtoint ptr %max63 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %max63, align 4
  %sub64 = add i32 %39, -1
  %pages = getelementptr inbounds %struct.swap_info_struct, ptr %sis, i32 0, i32 11
  %41 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %sub64, ptr %pages, align 4
  %highest_bit = getelementptr inbounds %struct.swap_info_struct, ptr %sis, i32 0, i32 10
  %42 = ptrtoint ptr %highest_bit to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %sub64, ptr %highest_bit, align 4
  br label %cleanup68

do.end:                                           ; preds = %cleanup.thread, %lor.lhs.false.do.end_crit_edge, %while.body.do.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %first_block) #9
  %call67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #12
  br label %cleanup68

cleanup68:                                        ; preds = %do.end, %38, %cleanup54.thread132
  %retval.0 = phi i32 [ -22, %do.end ], [ %nr_extents.0.lcssa179, %38 ], [ %call45, %cleanup54.thread132 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_swap_extent(ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @swap_writepage(ptr noundef %page, ptr noundef %wbc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @try_to_free_swap(ptr noundef %page) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @unlock_page(ptr noundef %page) #9
  br label %out

if.end:                                           ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @frontswap_enabled_key, ptr blockaddress(@swap_writepage, %if.then.i)) #9
          to label %if.end9 [label %if.then.i], !srcloc !93

if.then.i:                                        ; preds = %if.end
  %call1.i = tail call i32 @__frontswap_store(ptr noundef %page) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %phi.cmp = icmp eq i32 %call1.i, 0
  br i1 %phi.cmp, label %if.then7, label %if.then.i.if.end9_crit_edge

if.then.i.if.end9_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then7:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = tail call zeroext i1 @set_page_writeback(ptr noundef %page) #9
  tail call void @unlock_page(ptr noundef %page) #9
  tail call void @end_page_writeback(ptr noundef %page) #9
  br label %out

if.end9:                                          ; preds = %if.then.i.if.end9_crit_edge, %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = tail call i32 @__swap_writepage(ptr noundef %page, ptr noundef %wbc, ptr noundef nonnull @end_swap_bio_write)
  br label %out

out:                                              ; preds = %if.end9, %if.then7, %if.then
  %ret.0 = phi i32 [ 0, %if.then ], [ 0, %if.then7 ], [ %call10, %if.end9 ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @try_to_free_swap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_writeback(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__swap_writepage(ptr noundef %page, ptr noundef %wbc, ptr noundef %end_write_func) local_unnamed_addr #0 align 64 {
entry:
  %kiocb = alloca %struct.kiocb, align 8
  %bv = alloca %struct.bio_vec, align 4
  %from = alloca %struct.iov_iter, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @page_swap_info(ptr noundef %page) #9
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !79

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %2, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %3, %if.end.i.i ]
  %4 = inttoptr i32 %retval.0.i.i to ptr
  %5 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and.i.i.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_test_swapbacked.exit.i.i, label %if.then.i.i.i.i, !prof !79

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.14) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !94
  unreachable

folio_test_swapbacked.exit.i.i:                   ; preds = %_compound_head.exit.i
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %4, align 4
  %10 = and i32 %9, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not.i.i = icmp eq i32 %10, 0
  br i1 %tobool.i.not.i.i, label %folio_test_swapbacked.exit.i.i.if.then_crit_edge, label %land.rhs.i.i, !prof !95

folio_test_swapbacked.exit.i.i.if.then_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

land.rhs.i.i:                                     ; preds = %folio_test_swapbacked.exit.i.i
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %5, align 4
  %and.i.i.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %PageSwapCache.exit, label %if.then.i.i.i, !prof !79

if.then.i.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.14) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !94
  unreachable

PageSwapCache.exit:                               ; preds = %land.rhs.i.i
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %4, align 4
  %15 = and i32 %14, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.i.not = icmp eq i32 %15, 0
  br i1 %tobool.i.i.not, label %PageSwapCache.exit.if.then_crit_edge, label %do.end9, !prof !81

PageSwapCache.exit.if.then_crit_edge:             ; preds = %PageSwapCache.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %PageSwapCache.exit.if.then_crit_edge, %folio_test_swapbacked.exit.i.i.if.then_crit_edge
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.5) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/page_io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 293, 0\0A.popsection", ""() #9, !srcloc !96
  unreachable

do.end9:                                          ; preds = %PageSwapCache.exit
  %flags = getelementptr inbounds %struct.swap_info_struct, ptr %call, i32 0, i32 1
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 4
  %and = and i32 %17, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.end30, label %if.then12

if.then12:                                        ; preds = %do.end9
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %kiocb) #9
  %18 = call ptr @memset(ptr %kiocb, i32 255, i32 40)
  %swap_file13 = getelementptr inbounds %struct.swap_info_struct, ptr %call, i32 0, i32 19
  %19 = ptrtoint ptr %swap_file13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %swap_file13, align 4
  %f_mapping = getelementptr inbounds %struct.file, ptr %20, i32 0, i32 18
  %21 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %f_mapping, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %bv) #9
  %23 = getelementptr inbounds %struct.bio_vec, ptr %bv, i32 0, i32 1
  %24 = getelementptr inbounds %struct.bio_vec, ptr %bv, i32 0, i32 2
  %25 = ptrtoint ptr %bv to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %page, ptr %bv, align 4
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 4096, ptr %23, align 4
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %24, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %from) #9
  %28 = call ptr @memset(ptr %from, i32 255, i32 24)
  call void @iov_iter_bvec(ptr noundef nonnull %from, i32 noundef 1, ptr noundef nonnull %bv, i32 noundef 1, i32 noundef 4096) #9
  %f_flags.i.i = getelementptr inbounds %struct.file, ptr %20, i32 0, i32 7
  %29 = ptrtoint ptr %f_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %f_flags.i.i, align 4
  %and.i.i86 = lshr i32 %30, 6
  %31 = and i32 %and.i.i86, 16
  %and2.i.i = shl i32 %30, 1
  %32 = and i32 %and2.i.i, 131072
  %33 = or i32 %32, %31
  %and8.i.i = and i32 %30, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %tobool9.not.i.i = icmp eq i32 %and8.i.i, 0
  br i1 %tobool9.not.i.i, label %lor.lhs.false.i.i, label %if.then12.if.then17.i.i_crit_edge

if.then12.if.then17.i.i_crit_edge:                ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then17.i.i

lor.lhs.false.i.i:                                ; preds = %if.then12
  %34 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %f_mapping, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %37, i32 0, i32 8
  %38 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i_sb.i.i, align 4
  %s_flags.i.i = getelementptr inbounds %struct.super_block, ptr %39, i32 0, i32 10
  %40 = ptrtoint ptr %s_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %s_flags.i.i, align 4
  %and10.i.i = and i32 %41, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i)
  %tobool11.not.i.i = icmp eq i32 %and10.i.i, 0
  br i1 %tobool11.not.i.i, label %lor.lhs.false12.i.i, label %lor.lhs.false.i.i.if.then17.i.i_crit_edge

lor.lhs.false.i.i.if.then17.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then17.i.i

lor.lhs.false12.i.i:                              ; preds = %lor.lhs.false.i.i
  %i_flags.i.i = getelementptr inbounds %struct.inode, ptr %37, i32 0, i32 4
  %42 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %i_flags.i.i, align 4
  %and15.i.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i.i)
  %tobool16.not.i.i = icmp eq i32 %and15.i.i, 0
  br i1 %tobool16.not.i.i, label %lor.lhs.false12.i.i.iocb_flags.exit.i_crit_edge, label %lor.lhs.false12.i.i.if.then17.i.i_crit_edge

lor.lhs.false12.i.i.if.then17.i.i_crit_edge:      ; preds = %lor.lhs.false12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then17.i.i

lor.lhs.false12.i.i.iocb_flags.exit.i_crit_edge:  ; preds = %lor.lhs.false12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iocb_flags.exit.i

if.then17.i.i:                                    ; preds = %lor.lhs.false12.i.i.if.then17.i.i_crit_edge, %lor.lhs.false.i.i.if.then17.i.i_crit_edge, %if.then12.if.then17.i.i_crit_edge
  %or18.i.i = or i32 %33, 2
  br label %iocb_flags.exit.i

iocb_flags.exit.i:                                ; preds = %if.then17.i.i, %lor.lhs.false12.i.i.iocb_flags.exit.i_crit_edge
  %res.2.i.i = phi i32 [ %or18.i.i, %if.then17.i.i ], [ %33, %lor.lhs.false12.i.i.iocb_flags.exit.i_crit_edge ]
  %f_write_hint.i.i = getelementptr inbounds %struct.file, ptr %20, i32 0, i32 5
  %44 = ptrtoint ptr %f_write_hint.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %f_write_hint.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp.not.i.i = icmp eq i32 %45, 0
  br i1 %cmp.not.i.i, label %if.end.i.i87, label %iocb_flags.exit.i.file_write_hint.exit.i_crit_edge

iocb_flags.exit.i.file_write_hint.exit.i_crit_edge: ; preds = %iocb_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %file_write_hint.exit.i

if.end.i.i87:                                     ; preds = %iocb_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %f_inode.i.i.i = getelementptr inbounds %struct.file, ptr %20, i32 0, i32 2
  %46 = ptrtoint ptr %f_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %f_inode.i.i.i, align 8
  %i_write_hint.i.i = getelementptr inbounds %struct.inode, ptr %47, i32 0, i32 21
  %48 = ptrtoint ptr %i_write_hint.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %i_write_hint.i.i, align 1
  %conv.i.i = zext i8 %49 to i32
  br label %file_write_hint.exit.i

file_write_hint.exit.i:                           ; preds = %if.end.i.i87, %iocb_flags.exit.i.file_write_hint.exit.i_crit_edge
  %retval.0.i.i88 = phi i32 [ %conv.i.i, %if.end.i.i87 ], [ %45, %iocb_flags.exit.i.file_write_hint.exit.i_crit_edge ]
  %50 = call i32 @llvm.read_register.i32(metadata !69) #9
  %and.i.i.i = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %task.i.i, align 8
  %io_context.i.i = getelementptr inbounds %struct.task_struct, ptr %53, i32 0, i32 151
  %54 = ptrtoint ptr %io_context.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %io_context.i.i, align 8
  %tobool.not.i.i89 = icmp eq ptr %55, null
  br i1 %tobool.not.i.i89, label %file_write_hint.exit.i.init_sync_kiocb.exit_crit_edge, label %if.then.i.i90

file_write_hint.exit.i.init_sync_kiocb.exit_crit_edge: ; preds = %file_write_hint.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %init_sync_kiocb.exit

if.then.i.i90:                                    ; preds = %file_write_hint.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %ioprio.i.i = getelementptr inbounds %struct.io_context, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %ioprio.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %ioprio.i.i, align 4
  br label %init_sync_kiocb.exit

init_sync_kiocb.exit:                             ; preds = %if.then.i.i90, %file_write_hint.exit.i.init_sync_kiocb.exit_crit_edge
  %retval.0.i8.i = phi i16 [ %57, %if.then.i.i90 ], [ 16388, %file_write_hint.exit.i.init_sync_kiocb.exit_crit_edge ]
  %58 = call i32 @llvm.umin.i32(i32 %retval.0.i.i88, i32 65536) #9
  %59 = trunc i32 %58 to i16
  %and21.i.i = lshr i32 %30, 18
  %60 = and i32 %and21.i.i, 4
  %61 = or i32 %res.2.i.i, %60
  %62 = ptrtoint ptr %kiocb to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %20, ptr %kiocb, align 8
  %.compoundliteral.sroa.24.0..sroa_idx.i = getelementptr inbounds i8, ptr %kiocb, i32 8
  %.compoundliteral.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %kiocb, i32 24
  %63 = getelementptr inbounds i8, ptr %kiocb, i32 16
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 0, ptr %63, align 8
  %65 = ptrtoint ptr %.compoundliteral.sroa.5.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %61, ptr %.compoundliteral.sroa.5.0..sroa_idx.i, align 8
  %.compoundliteral.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %kiocb, i32 28
  %66 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %59, ptr %.compoundliteral.sroa.6.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.7.0..sroa_idx.i = getelementptr inbounds i8, ptr %kiocb, i32 30
  %67 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %retval.0.i8.i, ptr %.compoundliteral.sroa.7.0..sroa_idx.i, align 2
  %.compoundliteral.sroa.8.0..sroa_idx.i = getelementptr inbounds i8, ptr %kiocb, i32 32
  %68 = ptrtoint ptr %.compoundliteral.sroa.8.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %.compoundliteral.sroa.8.0..sroa_idx.i, align 8
  %69 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %0, align 4
  %and.i.i.i.i91 = and i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i91)
  %tobool.not.i.i.i.i92 = icmp eq i32 %and.i.i.i.i91, 0
  br i1 %tobool.not.i.i.i.i92, label %if.end.i.i.i.i, label %if.then.i.i.i.i93, !prof !79

if.then.i.i.i.i93:                                ; preds = %init_sync_kiocb.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i.i = add i32 %70, -1
  br label %_compound_head.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %init_sync_kiocb.exit
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i.i.i

_compound_head.exit.i.i.i:                        ; preds = %if.end.i.i.i.i, %if.then.i.i.i.i93
  %retval.0.i.i.i.i = phi i32 [ %sub.i.i.i.i, %if.then.i.i.i.i93 ], [ %71, %if.end.i.i.i.i ]
  %72 = inttoptr i32 %retval.0.i.i.i.i to ptr
  %73 = getelementptr inbounds %struct.page, ptr %72, i32 0, i32 1
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %73, align 4
  %and.i.i.i.i.i.i.i = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %folio_test_swapbacked.exit.i.i.i.i, label %if.then.i.i.i.i.i.i, !prof !79

if.then.i.i.i.i.i.i:                              ; preds = %_compound_head.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %72, ptr noundef nonnull @.str.14) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !94
  unreachable

folio_test_swapbacked.exit.i.i.i.i:               ; preds = %_compound_head.exit.i.i.i
  %76 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %72, align 4
  %78 = and i32 %77, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool.i.not.i.i.i.i = icmp eq i32 %78, 0
  br i1 %tobool.i.not.i.i.i.i, label %folio_test_swapbacked.exit.i.i.i.i.if.end.i.i95_crit_edge, label %land.rhs.i.i.i.i

folio_test_swapbacked.exit.i.i.i.i.if.end.i.i95_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i95

land.rhs.i.i.i.i:                                 ; preds = %folio_test_swapbacked.exit.i.i.i.i
  %79 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %73, align 4
  %and.i.i.i.i.i.i = and i32 %80, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %PageSwapCache.exit.i.i, label %if.then.i.i.i.i.i, !prof !79

if.then.i.i.i.i.i:                                ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %72, ptr noundef nonnull @.str.14) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !94
  unreachable

PageSwapCache.exit.i.i:                           ; preds = %land.rhs.i.i.i.i
  %81 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %72, align 4
  %83 = and i32 %82, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool.i.i.not.i.i = icmp eq i32 %83, 0
  br i1 %tobool.i.i.not.i.i, label %PageSwapCache.exit.i.i.if.end.i.i95_crit_edge, label %if.then.i.i94, !prof !79

PageSwapCache.exit.i.i.if.end.i.i95_crit_edge:    ; preds = %PageSwapCache.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i95

if.then.i.i94:                                    ; preds = %PageSwapCache.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i.i = call i32 @__page_file_index(ptr noundef %page) #9
  br label %page_file_offset.exit

if.end.i.i95:                                     ; preds = %PageSwapCache.exit.i.i.if.end.i.i95_crit_edge, %folio_test_swapbacked.exit.i.i.i.i.if.end.i.i95_crit_edge
  %index.i.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %84 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %index.i.i, align 4
  br label %page_file_offset.exit

page_file_offset.exit:                            ; preds = %if.end.i.i95, %if.then.i.i94
  %retval.0.i.i96 = phi i32 [ %call2.i.i, %if.then.i.i94 ], [ %85, %if.end.i.i95 ]
  %conv.i = zext i32 %retval.0.i.i96 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 12
  %86 = ptrtoint ptr %.compoundliteral.sroa.24.0..sroa_idx.i to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %shl.i, ptr %.compoundliteral.sroa.24.0..sroa_idx.i, align 8
  %call15 = call zeroext i1 @set_page_writeback(ptr noundef %page) #9
  call void @unlock_page(ptr noundef %page) #9
  %a_ops = getelementptr inbounds %struct.address_space, ptr %22, i32 0, i32 9
  %87 = ptrtoint ptr %a_ops to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %a_ops, align 4
  %direct_IO = getelementptr inbounds %struct.address_space_operations, ptr %88, i32 0, i32 12
  %89 = ptrtoint ptr %direct_IO to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %direct_IO, align 4
  %call16 = call i32 %90(ptr noundef nonnull %kiocb, ptr noundef nonnull %from) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %call16)
  %cmp = icmp eq i32 %call16, 4096
  br i1 %cmp, label %if.then17, label %if.else

if.then17:                                        ; preds = %page_file_offset.exit
  %91 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !85
  %92 = call i32 @llvm.read_register.i32(metadata !69) #9
  %and.i.i97 = and i32 %92, -16384
  %93 = inttoptr i32 %and.i.i97 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %93, i32 0, i32 3
  %94 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %cpu.i, align 4
  %arrayidx13.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %95
  %96 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx13.i, align 4
  %add.i = add i32 %97, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 3) to i32)
  %98 = inttoptr i32 %add.i to ptr
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %98, align 4
  %add14.i = add i32 %100, 1
  store i32 %add14.i, ptr %98, align 4
  %101 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !86
  %and.i.i.i98 = and i32 %101, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i98)
  %tobool.not.i99 = icmp eq i32 %and.i.i.i98, 0
  br i1 %tobool.not.i99, label %if.then.i100, label %if.then17.count_vm_event.exit_crit_edge, !prof !81

if.then17.count_vm_event.exit_crit_edge:          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %count_vm_event.exit

if.then.i100:                                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  call void @warn_bogus_irq_restore() #9
  br label %count_vm_event.exit

count_vm_event.exit:                              ; preds = %if.then.i100, %if.then17.count_vm_event.exit_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %91) #9, !srcloc !87
  br label %if.end29

if.else:                                          ; preds = %page_file_offset.exit
  %call18 = call zeroext i1 @set_page_dirty(ptr noundef %page) #9
  %102 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile i32, ptr %0, align 4
  %and.i.i79 = and i32 %103, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i79)
  %tobool.not.i = icmp eq i32 %and.i.i79, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i, !prof !79

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.12) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 466, 0\0A.popsection", ""() #9, !srcloc !83
  unreachable

do.body7.i:                                       ; preds = %if.else
  %104 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %0, align 4
  %and.i31.i = and i32 %105, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i80 = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i80, label %if.end.i.i83, label %if.then.i.i82, !prof !79

if.then.i.i82:                                    ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i81 = add i32 %105, -1
  br label %_compound_head.exit.i85

if.end.i.i83:                                     ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  %106 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i85

_compound_head.exit.i85:                          ; preds = %if.end.i.i83, %if.then.i.i82
  %retval.0.i.i84 = phi i32 [ %sub.i.i81, %if.then.i.i82 ], [ %106, %if.end.i.i83 ]
  %107 = inttoptr i32 %retval.0.i.i84 to ptr
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile i32, ptr %107, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %109)
  %cmp.i.not.i = icmp eq i32 %109, -1
  %110 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load volatile i32, ptr %0, align 4
  %and.i32.i = and i32 %111, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i, label %if.then17.i, label %do.end24.i, !prof !81

if.then17.i:                                      ; preds = %_compound_head.exit.i85
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !79

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i34.i = add i32 %111, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  %112 = ptrtoint ptr %page to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %112, %if.end.i36.i ]
  %113 = inttoptr i32 %retval.0.i37.i to ptr
  call void @dump_page(ptr noundef %113, ptr noundef nonnull @.str.13) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 466, 0\0A.popsection", ""() #9, !srcloc !84
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i85
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !79

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i41.i = add i32 %111, -1
  br label %ClearPageReclaim.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  %114 = ptrtoint ptr %page to i32
  br label %ClearPageReclaim.exit

ClearPageReclaim.exit:                            ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %114, %if.end.i43.i ]
  %115 = inttoptr i32 %retval.0.i44.i to ptr
  call void @_clear_bit(i32 noundef 18, ptr noundef %115) #9
  %call19 = call i32 @___ratelimit(ptr noundef nonnull @__swap_writepage._rs, ptr noundef nonnull @__func__.__swap_writepage) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %ClearPageReclaim.exit.if.end29_crit_edge, label %do.end24

ClearPageReclaim.exit.if.end29_crit_edge:         ; preds = %ClearPageReclaim.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

do.end24:                                         ; preds = %ClearPageReclaim.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call26 = call fastcc i64 @page_file_offset(ptr noundef %page), !range !97
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i64 noundef %call26) #12
  br label %if.end29

if.end29:                                         ; preds = %do.end24, %ClearPageReclaim.exit.if.end29_crit_edge, %count_vm_event.exit
  %ret.0 = phi i32 [ 0, %count_vm_event.exit ], [ %call16, %do.end24 ], [ %call16, %ClearPageReclaim.exit.if.end29_crit_edge ]
  call void @end_page_writeback(ptr noundef %page) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %from) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %bv) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %kiocb) #9
  br label %cleanup

if.end30:                                         ; preds = %do.end9
  %bdev = getelementptr inbounds %struct.swap_info_struct, ptr %call, i32 0, i32 18
  %116 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %bdev, align 4
  %call31 = tail call i64 @swap_page_sector(ptr noundef %page) #9
  %call32 = tail call i32 @bdev_write_page(ptr noundef %117, i64 noundef %call31, ptr noundef %page, ptr noundef %wbc) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end30
  %118 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load volatile i32, ptr %0, align 4
  %and.i.i.i101 = and i32 %119, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i101)
  %tobool.not.i.i102 = icmp eq i32 %and.i.i.i101, 0
  br i1 %tobool.not.i.i102, label %thp_nr_pages.exit.i, label %if.then.i.i103, !prof !79

if.then.i.i103:                                   ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.14) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/huge_mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 347, 0\0A.popsection", ""() #9, !srcloc !98
  unreachable

thp_nr_pages.exit.i:                              ; preds = %if.then34
  %120 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !85
  %121 = tail call i32 @llvm.read_register.i32(metadata !69) #9
  %and.i.i1.i = and i32 %121, -16384
  %122 = inttoptr i32 %and.i.i1.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %122, i32 0, i32 3
  %123 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %cpu.i.i, align 4
  %arrayidx13.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %124
  %125 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx13.i.i, align 4
  %add.i.i = add i32 %126, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 3) to i32)
  %127 = inttoptr i32 %add.i.i to ptr
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %127, align 4
  %add14.i.i = add i32 %129, 1
  store i32 %add14.i.i, ptr %127, align 4
  %130 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !86
  %and.i.i.i.i104 = and i32 %130, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i104)
  %tobool.not.i2.i = icmp eq i32 %and.i.i.i.i104, 0
  br i1 %tobool.not.i2.i, label %if.then.i3.i, label %thp_nr_pages.exit.i.count_swpout_vm_event.exit_crit_edge, !prof !81

thp_nr_pages.exit.i.count_swpout_vm_event.exit_crit_edge: ; preds = %thp_nr_pages.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %count_swpout_vm_event.exit

if.then.i3.i:                                     ; preds = %thp_nr_pages.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %count_swpout_vm_event.exit

count_swpout_vm_event.exit:                       ; preds = %if.then.i3.i, %thp_nr_pages.exit.i.count_swpout_vm_event.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %120) #9, !srcloc !87
  br label %cleanup

if.end35:                                         ; preds = %if.end30
  %call.i = tail call ptr @bio_alloc_bioset(i32 noundef 3072, i16 noundef zeroext 1, ptr noundef nonnull @fs_bio_set) #9
  %131 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %bdev, align 4
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 3
  %133 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %134, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 1
  %135 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %136, %132
  br i1 %cmp.not.i, label %if.end35.bio_set_dev.exit_crit_edge, label %if.then.i105

if.end35.bio_set_dev.exit_crit_edge:              ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %bio_set_dev.exit

if.then.i105:                                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %conv1.i8.i = and i16 %134, -2177
  %137 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i105, %if.end35.bio_set_dev.exit_crit_edge
  %138 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %132, ptr %bi_bdev.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %call.i) #9
  %call38 = tail call i64 @swap_page_sector(ptr noundef %page) #9
  %bi_iter = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 8
  %139 = ptrtoint ptr %bi_iter to i32
  call void @__asan_store8_noabort(i32 %139)
  store i64 %call38, ptr %bi_iter, align 8
  %punt_to_cgroup.i = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 5
  %140 = ptrtoint ptr %punt_to_cgroup.i to i32
  call void @__asan_load2_noabort(i32 %140)
  %bf.load.i = load i16, ptr %punt_to_cgroup.i, align 4
  %141 = and i16 %bf.load.i, 128
  %142 = zext i16 %141 to i32
  %143 = shl nuw nsw i32 %142, 15
  %sync_mode.i = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 4
  %144 = ptrtoint ptr %sync_mode.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %sync_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %145)
  %cmp.i = icmp eq i32 %145, 1
  %146 = or i32 %143, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %bf.load.i)
  %147 = icmp ult i16 %bf.load.i, 16384
  %148 = or i32 %143, 1048576
  %spec.select.i = select i1 %147, i32 %143, i32 %148
  %flags.0.i = select i1 %cmp.i, i32 %146, i32 %spec.select.i
  %149 = or i32 %flags.0.i, 67108865
  %bi_opf = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 2
  %150 = ptrtoint ptr %bi_opf to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %149, ptr %bi_opf, align 8
  %bi_end_io = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 10
  %151 = ptrtoint ptr %bi_end_io to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %end_write_func, ptr %bi_end_io, align 8
  %152 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load volatile i32, ptr %0, align 4
  %and.i.i.i106 = and i32 %153, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i106)
  %tobool.not.i.i107 = icmp eq i32 %and.i.i.i106, 0
  br i1 %tobool.not.i.i107, label %thp_size.exit, label %if.then.i.i108, !prof !79

if.then.i.i108:                                   ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.14) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/huge_mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 341, 0\0A.popsection", ""() #9, !srcloc !99
  unreachable

thp_size.exit:                                    ; preds = %bio_set_dev.exit
  %call42 = tail call i32 @bio_add_page(ptr noundef %call.i, ptr noundef %page, i32 noundef 4096, i32 noundef 0) #9
  %154 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load volatile i32, ptr %0, align 4
  %and.i.i.i109 = and i32 %155, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i109)
  %tobool.not.i.i.i110 = icmp eq i32 %and.i.i.i109, 0
  br i1 %tobool.not.i.i.i110, label %if.end.i.i.i, label %if.then.i.i.i111, !prof !79

if.then.i.i.i111:                                 ; preds = %thp_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i = add i32 %155, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %thp_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  %156 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i111
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i111 ], [ %156, %if.end.i.i.i ]
  %157 = inttoptr i32 %retval.0.i.i.i to ptr
  %158 = getelementptr inbounds %struct.page, ptr %157, i32 0, i32 1
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load volatile i32, ptr %158, align 4
  %and.i.i.i.i.i112 = and i32 %160, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i112)
  %tobool.not.i.i.i.i113 = icmp eq i32 %and.i.i.i.i.i112, 0
  br i1 %tobool.not.i.i.i.i113, label %do.body7.i.i.i.i, label %if.then.i.i.i.i114, !prof !79

if.then.i.i.i.i114:                               ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %157, ptr noundef nonnull @.str.16) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/memcontrol.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 537, 0\0A.popsection", ""() #9, !srcloc !100
  unreachable

do.body7.i.i.i.i:                                 ; preds = %_compound_head.exit.i.i
  %memcg_data.i.i.i.i = getelementptr inbounds %struct.anon.83, ptr %157, i32 0, i32 7
  %161 = ptrtoint ptr %memcg_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %memcg_data.i.i.i.i, align 4
  %and.i.i.i.i115 = and i32 %162, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i115)
  %tobool8.not.i.i.i.i = icmp eq i32 %and.i.i.i.i115, 0
  br i1 %tobool8.not.i.i.i.i, label %folio_memcg_kmem.exit.i.i.i, label %if.then15.i.i.i.i, !prof !79

if.then15.i.i.i.i:                                ; preds = %do.body7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %157, ptr noundef nonnull @.str.17) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/memcontrol.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 538, 0\0A.popsection", ""() #9, !srcloc !101
  unreachable

folio_memcg_kmem.exit.i.i.i:                      ; preds = %do.body7.i.i.i.i
  %and23.i.i.i.i = and i32 %162, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i.i.i.i)
  %tobool24.i.not.i.i.i = icmp eq i32 %and23.i.i.i.i, 0
  %163 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load volatile i32, ptr %158, align 4
  %and.i.i.i.i9.i.i.i = and i32 %164, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i9.i.i.i)
  %tobool.not.i.i.i10.i.i.i = icmp eq i32 %and.i.i.i.i9.i.i.i, 0
  br i1 %tobool24.i.not.i.i.i, label %if.end.i3.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %folio_memcg_kmem.exit.i.i.i
  br i1 %tobool.not.i.i.i10.i.i.i, label %folio_test_slab.exit.i.i.i.i, label %if.then.i.i.i.i.i.i116, !prof !79

if.then.i.i.i.i.i.i116:                           ; preds = %if.then.i2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %157, ptr noundef nonnull @.str.14) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !94
  unreachable

folio_test_slab.exit.i.i.i.i:                     ; preds = %if.then.i2.i.i
  %165 = ptrtoint ptr %157 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load volatile i32, ptr %157, align 4
  %167 = and i32 %166, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %167)
  %tobool.i.not.i.i.i.i117 = icmp eq i32 %167, 0
  br i1 %tobool.i.not.i.i.i.i117, label %__folio_objcg.exit.i.i.i, label %if.then.i6.i.i.i, !prof !79

if.then.i6.i.i.i:                                 ; preds = %folio_test_slab.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %157, ptr noundef nonnull @.str.18) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/memcontrol.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 417, 0\0A.popsection", ""() #9, !srcloc !102
  unreachable

__folio_objcg.exit.i.i.i:                         ; preds = %folio_test_slab.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and48.i.i.i.i = and i32 %162, -4
  %168 = inttoptr i32 %and48.i.i.i.i to ptr
  %memcg.i.i.i.i = getelementptr inbounds %struct.obj_cgroup, ptr %168, i32 0, i32 1
  %169 = ptrtoint ptr %memcg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load volatile ptr, ptr %memcg.i.i.i.i, align 4
  br label %page_memcg.exit.i

if.end.i3.i.i:                                    ; preds = %folio_memcg_kmem.exit.i.i.i
  br i1 %tobool.not.i.i.i10.i.i.i, label %folio_test_slab.exit.i13.i.i.i, label %if.then.i.i.i11.i.i.i, !prof !79

if.then.i.i.i11.i.i.i:                            ; preds = %if.end.i3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %157, ptr noundef nonnull @.str.14) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !94
  unreachable

folio_test_slab.exit.i13.i.i.i:                   ; preds = %if.end.i3.i.i
  %171 = ptrtoint ptr %157 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load volatile i32, ptr %157, align 4
  %173 = and i32 %172, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %173)
  %tobool.i.not.i12.i.i.i = icmp eq i32 %173, 0
  br i1 %tobool.i.not.i12.i.i.i, label %__folio_memcg.exit.i.i.i, label %if.then.i14.i.i.i, !prof !79

if.then.i14.i.i.i:                                ; preds = %folio_test_slab.exit.i13.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %157, ptr noundef nonnull @.str.18) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/memcontrol.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 396, 0\0A.popsection", ""() #9, !srcloc !103
  unreachable

__folio_memcg.exit.i.i.i:                         ; preds = %folio_test_slab.exit.i13.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and46.i.i.i.i = and i32 %162, -4
  %174 = inttoptr i32 %and46.i.i.i.i to ptr
  br label %page_memcg.exit.i

page_memcg.exit.i:                                ; preds = %__folio_memcg.exit.i.i.i, %__folio_objcg.exit.i.i.i
  %retval.0.i4.i.i = phi ptr [ %170, %__folio_objcg.exit.i.i.i ], [ %174, %__folio_memcg.exit.i.i.i ]
  %tobool.not.i118 = icmp eq ptr %retval.0.i4.i.i, null
  br i1 %tobool.not.i118, label %page_memcg.exit.i.bio_associate_blkg_from_page.exit_crit_edge, label %if.end.i

page_memcg.exit.i.bio_associate_blkg_from_page.exit_crit_edge: ; preds = %page_memcg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bio_associate_blkg_from_page.exit

if.end.i:                                         ; preds = %page_memcg.exit.i
  %175 = tail call i32 @llvm.read_register.i32(metadata !69) #9
  %and.i.i.i.i.i.i119 = and i32 %175, -16384
  %176 = inttoptr i32 %and.i.i.i.i.i.i119 to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %176, i32 0, i32 1
  %177 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %178, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !104
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i, label %if.end.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i120 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i120, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i121

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

if.then.i.i121:                                   ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 696, ptr noundef nonnull @.str.23) #9
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i121, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end.i.rcu_read_lock.exit.i_crit_edge
  %179 = ptrtoint ptr %retval.0.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %retval.0.i4.i.i, align 128
  %call2.i = tail call ptr @cgroup_e_css(ptr noundef %180, ptr noundef nonnull @io_cgrp_subsys) #9
  tail call void @bio_associate_blkg_from_css(ptr noundef %call.i, ptr noundef %call2.i) #9
  %call.i5.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i5.i, label %rcu_read_lock.exit.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i8.i

rcu_read_lock.exit.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

land.lhs.true.i8.i:                               ; preds = %rcu_read_lock.exit.i
  %call1.i6.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i6.i)
  %tobool.not.i7.i = icmp eq i32 %call1.i6.i, 0
  br i1 %tobool.not.i7.i, label %land.lhs.true.i8.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i10.i

land.lhs.true.i8.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i10.i:                             ; preds = %land.lhs.true.i8.i
  %.b4.i9.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i9.i, label %land.lhs.true2.i10.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i11.i

land.lhs.true2.i10.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

if.then.i11.i:                                    ; preds = %land.lhs.true2.i10.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.24) #9
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i11.i, %land.lhs.true2.i10.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i8.i.rcu_read_unlock.exit.i_crit_edge, %rcu_read_lock.exit.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !105
  %181 = tail call i32 @llvm.read_register.i32(metadata !69) #9
  %and.i.i.i.i.i12.i = and i32 %181, -16384
  %182 = inttoptr i32 %and.i.i.i.i.i12.i to ptr
  %preempt_count.i.i.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %182, i32 0, i32 1
  %183 = ptrtoint ptr %preempt_count.i.i.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load volatile i32, ptr %preempt_count.i.i.i.i13.i, align 4
  %sub.i.i.i.i122 = add i32 %184, -1
  store volatile i32 %sub.i.i.i.i122, ptr %preempt_count.i.i.i.i13.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br label %bio_associate_blkg_from_page.exit

bio_associate_blkg_from_page.exit:                ; preds = %rcu_read_unlock.exit.i, %page_memcg.exit.i.bio_associate_blkg_from_page.exit_crit_edge
  %185 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load volatile i32, ptr %0, align 4
  %and.i.i.i123 = and i32 %186, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i123)
  %tobool.not.i.i124 = icmp eq i32 %and.i.i.i123, 0
  br i1 %tobool.not.i.i124, label %thp_nr_pages.exit.i133, label %if.then.i.i125, !prof !79

if.then.i.i125:                                   ; preds = %bio_associate_blkg_from_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.14) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/huge_mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 347, 0\0A.popsection", ""() #9, !srcloc !98
  unreachable

thp_nr_pages.exit.i133:                           ; preds = %bio_associate_blkg_from_page.exit
  %187 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !85
  %188 = tail call i32 @llvm.read_register.i32(metadata !69) #9
  %and.i.i1.i126 = and i32 %188, -16384
  %189 = inttoptr i32 %and.i.i1.i126 to ptr
  %cpu.i.i127 = getelementptr inbounds %struct.thread_info, ptr %189, i32 0, i32 3
  %190 = ptrtoint ptr %cpu.i.i127 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %cpu.i.i127, align 4
  %arrayidx13.i.i128 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %191
  %192 = ptrtoint ptr %arrayidx13.i.i128 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %arrayidx13.i.i128, align 4
  %add.i.i129 = add i32 %193, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 3) to i32)
  %194 = inttoptr i32 %add.i.i129 to ptr
  %195 = ptrtoint ptr %194 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %194, align 4
  %add14.i.i130 = add i32 %196, 1
  store i32 %add14.i.i130, ptr %194, align 4
  %197 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !86
  %and.i.i.i.i131 = and i32 %197, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i131)
  %tobool.not.i2.i132 = icmp eq i32 %and.i.i.i.i131, 0
  br i1 %tobool.not.i2.i132, label %if.then.i3.i134, label %thp_nr_pages.exit.i133.count_swpout_vm_event.exit135_crit_edge, !prof !81

thp_nr_pages.exit.i133.count_swpout_vm_event.exit135_crit_edge: ; preds = %thp_nr_pages.exit.i133
  call void @__sanitizer_cov_trace_pc() #11
  br label %count_swpout_vm_event.exit135

if.then.i3.i134:                                  ; preds = %thp_nr_pages.exit.i133
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %count_swpout_vm_event.exit135

count_swpout_vm_event.exit135:                    ; preds = %if.then.i3.i134, %thp_nr_pages.exit.i133.count_swpout_vm_event.exit135_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %187) #9, !srcloc !87
  %call43 = tail call zeroext i1 @set_page_writeback(ptr noundef %page) #9
  tail call void @unlock_page(ptr noundef %page) #9
  tail call void @submit_bio(ptr noundef %call.i) #9
  br label %cleanup

cleanup:                                          ; preds = %count_swpout_vm_event.exit135, %count_swpout_vm_event.exit, %if.end29
  %retval.0 = phi i32 [ %ret.0, %if.end29 ], [ 0, %count_swpout_vm_event.exit135 ], [ 0, %count_swpout_vm_event.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_swap_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_bvec(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @page_file_offset(ptr noundef %page) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !79

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i = add i32 %2, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %3, %if.end.i.i.i ]
  %4 = inttoptr i32 %retval.0.i.i.i to ptr
  %5 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and.i.i.i.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %folio_test_swapbacked.exit.i.i.i, label %if.then.i.i.i.i.i, !prof !79

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.14) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !94
  unreachable

folio_test_swapbacked.exit.i.i.i:                 ; preds = %_compound_head.exit.i.i
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %4, align 4
  %10 = and i32 %9, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not.i.i.i = icmp eq i32 %10, 0
  br i1 %tobool.i.not.i.i.i, label %folio_test_swapbacked.exit.i.i.i.if.end.i_crit_edge, label %land.rhs.i.i.i

folio_test_swapbacked.exit.i.i.i.if.end.i_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.rhs.i.i.i:                                   ; preds = %folio_test_swapbacked.exit.i.i.i
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %5, align 4
  %and.i.i.i.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %PageSwapCache.exit.i, label %if.then.i.i.i.i, !prof !79

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.14) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !94
  unreachable

PageSwapCache.exit.i:                             ; preds = %land.rhs.i.i.i
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %4, align 4
  %15 = and i32 %14, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.i.not.i = icmp eq i32 %15, 0
  br i1 %tobool.i.i.not.i, label %PageSwapCache.exit.i.if.end.i_crit_edge, label %if.then.i, !prof !79

PageSwapCache.exit.i.if.end.i_crit_edge:          ; preds = %PageSwapCache.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %PageSwapCache.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i = tail call i32 @__page_file_index(ptr noundef %page) #9
  br label %page_index.exit

if.end.i:                                         ; preds = %PageSwapCache.exit.i.if.end.i_crit_edge, %folio_test_swapbacked.exit.i.i.i.if.end.i_crit_edge
  %index.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %16 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %index.i, align 4
  br label %page_index.exit

page_index.exit:                                  ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call2.i, %if.then.i ], [ %17, %if.end.i ]
  %conv = zext i32 %retval.0.i to i64
  %shl = shl nuw nsw i64 %conv, 12
  ret i64 %shl
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdev_write_page(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @swap_page_sector(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_add_page(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @swap_readpage(ptr noundef %page, i1 noundef zeroext %synchronous) #0 align 64 {
entry:
  %pflags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @page_swap_info(ptr noundef %page) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pflags) #9
  %0 = ptrtoint ptr %pflags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %pflags, align 4, !annotation !92
  %1 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %1, align 4
  %and.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !79

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %3, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %4, %if.end.i.i ]
  %5 = inttoptr i32 %retval.0.i.i to ptr
  %6 = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  %and.i.i.i.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_test_swapbacked.exit.i.i, label %if.then.i.i.i.i, !prof !79

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %5, ptr noundef nonnull @.str.14) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !94
  unreachable

folio_test_swapbacked.exit.i.i:                   ; preds = %_compound_head.exit.i
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %5, align 4
  %11 = and i32 %10, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool.i.not.i.i, label %PageSwapCache.exit.thread, label %land.rhs.i.i

PageSwapCache.exit.thread:                        ; preds = %folio_test_swapbacked.exit.i.i
  br i1 %synchronous, label %PageSwapCache.exit.thread.do.body11_crit_edge, label %PageSwapCache.exit.thread.if.then_crit_edge, !prof !79

PageSwapCache.exit.thread.if.then_crit_edge:      ; preds = %PageSwapCache.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

PageSwapCache.exit.thread.do.body11_crit_edge:    ; preds = %PageSwapCache.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body11

land.rhs.i.i:                                     ; preds = %folio_test_swapbacked.exit.i.i
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %6, align 4
  %and.i.i.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %PageSwapCache.exit, label %if.then.i.i.i, !prof !79

if.then.i.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %5, ptr noundef nonnull @.str.14) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !94
  unreachable

PageSwapCache.exit:                               ; preds = %land.rhs.i.i
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %5, align 4
  %16 = and i32 %15, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.i.i = icmp ne i32 %16, 0
  %brmerge = or i1 %tobool.i.i, %synchronous
  br i1 %brmerge, label %PageSwapCache.exit.do.body11_crit_edge, label %PageSwapCache.exit.if.then_crit_edge, !prof !106

PageSwapCache.exit.if.then_crit_edge:             ; preds = %PageSwapCache.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

PageSwapCache.exit.do.body11_crit_edge:           ; preds = %PageSwapCache.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body11

if.then:                                          ; preds = %PageSwapCache.exit.if.then_crit_edge, %PageSwapCache.exit.thread.if.then_crit_edge
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.7) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/page_io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 364, 0\0A.popsection", ""() #9, !srcloc !107
  unreachable

do.body11:                                        ; preds = %PageSwapCache.exit.do.body11_crit_edge, %PageSwapCache.exit.thread.do.body11_crit_edge
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %1, align 4
  %and.i.i298 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i298)
  %tobool.not.i.i299 = icmp eq i32 %and.i.i298, 0
  br i1 %tobool.not.i.i299, label %if.end.i.i302, label %if.then.i.i301, !prof !79

if.then.i.i301:                                   ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i300 = add i32 %18, -1
  br label %_compound_head.exit.i304

if.end.i.i302:                                    ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i304

_compound_head.exit.i304:                         ; preds = %if.end.i.i302, %if.then.i.i301
  %retval.0.i.i303 = phi i32 [ %sub.i.i300, %if.then.i.i301 ], [ %19, %if.end.i.i302 ]
  %20 = inttoptr i32 %retval.0.i.i303 to ptr
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %cmp.i.not.i = icmp eq i32 %22, -1
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %1, align 4
  %and.i16.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !81

if.then.i:                                        ; preds = %_compound_head.exit.i304
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !79

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i18.i = add i32 %24, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %25, %if.end.i20.i ]
  %26 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %26, ptr noundef nonnull @.str.13) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #9, !srcloc !108
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i304
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !79

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i25.i = add i32 %24, -1
  br label %PageLocked.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %page to i32
  br label %PageLocked.exit

PageLocked.exit:                                  ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %27, %if.end.i27.i ]
  %28 = inttoptr i32 %retval.0.i28.i to ptr
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %28, align 4
  %and1.i.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool13.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool13.not, label %if.then22, label %do.body32, !prof !81

if.then22:                                        ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.8) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/page_io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 365, 0\0A.popsection", ""() #9, !srcloc !109
  unreachable

do.body32:                                        ; preds = %PageLocked.exit
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %1, align 4
  %and.i.i308 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i308)
  %tobool.not.i.i309 = icmp eq i32 %and.i.i308, 0
  br i1 %tobool.not.i.i309, label %if.end.i.i312, label %if.then.i.i311, !prof !79

if.then.i.i311:                                   ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i310 = add i32 %32, -1
  br label %_compound_head.exit.i316

if.end.i.i312:                                    ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i316

_compound_head.exit.i316:                         ; preds = %if.end.i.i312, %if.then.i.i311
  %retval.0.i.i313 = phi i32 [ %sub.i.i310, %if.then.i.i311 ], [ %33, %if.end.i.i312 ]
  %34 = inttoptr i32 %retval.0.i.i313 to ptr
  %35 = getelementptr inbounds %struct.page, ptr %34, i32 0, i32 1
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %35, align 4
  %and.i.i.i.i314 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i314)
  %tobool.not.i.i.i315 = icmp eq i32 %and.i.i.i.i314, 0
  br i1 %tobool.not.i.i.i315, label %folio_flags.exit.i.i318, label %if.then.i.i.i317, !prof !79

if.then.i.i.i317:                                 ; preds = %_compound_head.exit.i316
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %34, ptr noundef nonnull @.str.14) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !94
  unreachable

folio_flags.exit.i.i318:                          ; preds = %_compound_head.exit.i316
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %34, align 4
  %40 = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.i.not.i = icmp eq i32 %40, 0
  br i1 %tobool.i.not.i, label %do.end50, label %PageUptodate.exit

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i318
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !110
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.9) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/page_io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 366, 0\0A.popsection", ""() #9, !srcloc !111
  unreachable

do.end50:                                         ; preds = %folio_flags.exit.i.i318
  call void @psi_memstall_enter(ptr noundef nonnull %pflags) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @delayacct_key, ptr blockaddress(@swap_readpage, %if.end.i)) #9
          to label %delayacct_swapin_start.exit [label %if.end.i], !srcloc !93

if.end.i:                                         ; preds = %do.end50
  %41 = call i32 @llvm.read_register.i32(metadata !69) #9
  %and.i.i319 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i319 to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %task.i, align 8
  %delays.i = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 181
  %45 = ptrtoint ptr %delays.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %delays.i, align 8
  %tobool4.not.i = icmp eq ptr %46, null
  br i1 %tobool4.not.i, label %if.end.i.delayacct_swapin_start.exit_crit_edge, label %if.then5.i

if.end.i.delayacct_swapin_start.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %delayacct_swapin_start.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__delayacct_swapin_start() #9
  br label %delayacct_swapin_start.exit

delayacct_swapin_start.exit:                      ; preds = %if.then5.i, %if.end.i.delayacct_swapin_start.exit_crit_edge, %do.end50
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @frontswap_enabled_key, ptr blockaddress(@swap_readpage, %if.then.i320)) #9
          to label %frontswap_load.exit [label %if.then.i320], !srcloc !93

if.then.i320:                                     ; preds = %delayacct_swapin_start.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i = call i32 @__frontswap_load(ptr noundef %page) #9
  br label %frontswap_load.exit

frontswap_load.exit:                              ; preds = %if.then.i320, %delayacct_swapin_start.exit
  %retval.0.i = phi i32 [ %call1.i, %if.then.i320 ], [ -1, %delayacct_swapin_start.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp eq i32 %retval.0.i, 0
  br i1 %cmp, label %if.then52, label %if.end53

if.then52:                                        ; preds = %frontswap_load.exit
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !112
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %1, align 4
  %and.i.i.i.i305 = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i305)
  %tobool.not.i.i.i306 = icmp eq i32 %and.i.i.i.i305, 0
  br i1 %tobool.not.i.i.i306, label %SetPageUptodate.exit, label %if.then.i.i.i307, !prof !79

if.then.i.i.i307:                                 ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.14) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !94
  unreachable

SetPageUptodate.exit:                             ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  call void @_set_bit(i32 noundef 2, ptr noundef %page) #9
  call void @unlock_page(ptr noundef %page) #9
  br label %out

if.end53:                                         ; preds = %frontswap_load.exit
  %flags = getelementptr inbounds %struct.swap_info_struct, ptr %call, i32 0, i32 1
  %49 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags, align 4
  %and = and i32 %50, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool55.not = icmp eq i32 %and, 0
  br i1 %tobool55.not, label %if.end62, label %if.then56

if.then56:                                        ; preds = %if.end53
  %swap_file57 = getelementptr inbounds %struct.swap_info_struct, ptr %call, i32 0, i32 19
  %51 = ptrtoint ptr %swap_file57 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %swap_file57, align 4
  %f_mapping = getelementptr inbounds %struct.file, ptr %52, i32 0, i32 18
  %53 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %f_mapping, align 4
  %a_ops = getelementptr inbounds %struct.address_space, ptr %54, i32 0, i32 9
  %55 = ptrtoint ptr %a_ops to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %a_ops, align 4
  %readpage = getelementptr inbounds %struct.address_space_operations, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %readpage to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %readpage, align 4
  %call58 = call i32 %58(ptr noundef %52, ptr noundef %page) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.then60, label %if.then56.out_crit_edge

if.then56.out_crit_edge:                          ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then60:                                        ; preds = %if.then56
  %59 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !85
  %60 = call i32 @llvm.read_register.i32(metadata !69) #9
  %and.i.i321 = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i321 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cpu.i, align 4
  %arrayidx13.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %63
  %64 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx13.i, align 4
  %add.i = add i32 %65, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 2) to i32)
  %66 = inttoptr i32 %add.i to ptr
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 4
  %add14.i = add i32 %68, 1
  store i32 %add14.i, ptr %66, align 4
  %69 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !86
  %and.i.i.i = and i32 %69, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %if.then.i322, label %if.then60.count_vm_event.exit_crit_edge, !prof !81

if.then60.count_vm_event.exit_crit_edge:          ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #11
  br label %count_vm_event.exit

if.then.i322:                                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #11
  call void @warn_bogus_irq_restore() #9
  br label %count_vm_event.exit

count_vm_event.exit:                              ; preds = %if.then.i322, %if.then60.count_vm_event.exit_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %59) #9, !srcloc !87
  br label %out

if.end62:                                         ; preds = %if.end53
  %and64 = and i32 %50, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.end62.if.end76_crit_edge, label %if.then66

if.end62.if.end76_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76

if.then66:                                        ; preds = %if.end62
  %bdev = getelementptr inbounds %struct.swap_info_struct, ptr %call, i32 0, i32 18
  %70 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %bdev, align 4
  %call67 = call i64 @swap_page_sector(ptr noundef %page) #9
  %call68 = call i32 @bdev_read_page(ptr noundef %71, i64 noundef %call67, ptr noundef %page) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.then70, label %if.then66.if.end76_crit_edge

if.then66.if.end76_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76

if.then70:                                        ; preds = %if.then66
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %1, align 4
  %and.i.i323 = and i32 %73, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i323)
  %tobool.not.i.i324 = icmp eq i32 %and.i.i323, 0
  br i1 %tobool.not.i.i324, label %if.end.i.i327, label %if.then.i.i326, !prof !79

if.then.i.i326:                                   ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i325 = add i32 %73, -1
  br label %_compound_head.exit.i331

if.end.i.i327:                                    ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #11
  %74 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i331

_compound_head.exit.i331:                         ; preds = %if.end.i.i327, %if.then.i.i326
  %retval.0.i.i328 = phi i32 [ %sub.i.i325, %if.then.i.i326 ], [ %74, %if.end.i.i327 ]
  %75 = inttoptr i32 %retval.0.i.i328 to ptr
  %76 = getelementptr inbounds %struct.page, ptr %75, i32 0, i32 1
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %76, align 4
  %and.i.i.i.i329 = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i329)
  %tobool.not.i.i.i330 = icmp eq i32 %and.i.i.i.i329, 0
  br i1 %tobool.not.i.i.i330, label %folio_flags.exit.i.i334, label %if.then.i.i.i332, !prof !79

if.then.i.i.i332:                                 ; preds = %_compound_head.exit.i331
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %75, ptr noundef nonnull @.str.14) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !94
  unreachable

folio_flags.exit.i.i334:                          ; preds = %_compound_head.exit.i331
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %75, i32 noundef 4) #9
  %79 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %75, align 4
  %and.i.i4.i.i = and i32 %80, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i333 = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i333, label %trylock_page.exit, label %folio_flags.exit.i.i334.if.end74_crit_edge

folio_flags.exit.i.i334.if.end74_crit_edge:       ; preds = %folio_flags.exit.i.i334
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

trylock_page.exit:                                ; preds = %folio_flags.exit.i.i334
  call void @llvm.prefetch.p0(ptr %75, i32 1, i32 3, i32 1) #9
  %81 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %75, ptr %75, i32 1, ptr elementtype(i32) %75) #9, !srcloc !113
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %81, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !114
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool72.not.not = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool72.not.not, label %if.then73, label %trylock_page.exit.if.end74_crit_edge

trylock_page.exit.if.end74_crit_edge:             ; preds = %trylock_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

if.then73:                                        ; preds = %trylock_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @swap_slot_free_notify(ptr noundef %page)
  call void @unlock_page(ptr noundef %page) #9
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %trylock_page.exit.if.end74_crit_edge, %folio_flags.exit.i.i334.if.end74_crit_edge
  %82 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !85
  %83 = call i32 @llvm.read_register.i32(metadata !69) #9
  %and.i.i335 = and i32 %83, -16384
  %84 = inttoptr i32 %and.i.i335 to ptr
  %cpu.i336 = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 3
  %85 = ptrtoint ptr %cpu.i336 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %cpu.i336, align 4
  %arrayidx13.i337 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %86
  %87 = ptrtoint ptr %arrayidx13.i337 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx13.i337, align 4
  %add.i338 = add i32 %88, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 2) to i32)
  %89 = inttoptr i32 %add.i338 to ptr
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %89, align 4
  %add14.i339 = add i32 %91, 1
  store i32 %add14.i339, ptr %89, align 4
  %92 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !86
  %and.i.i.i340 = and i32 %92, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i340)
  %tobool.not.i341 = icmp eq i32 %and.i.i.i340, 0
  br i1 %tobool.not.i341, label %if.then.i342, label %if.end74.count_vm_event.exit343_crit_edge, !prof !81

if.end74.count_vm_event.exit343_crit_edge:        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %count_vm_event.exit343

if.then.i342:                                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  call void @warn_bogus_irq_restore() #9
  br label %count_vm_event.exit343

count_vm_event.exit343:                           ; preds = %if.then.i342, %if.end74.count_vm_event.exit343_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %82) #9, !srcloc !87
  br label %out

if.end76:                                         ; preds = %if.then66.if.end76_crit_edge, %if.end62.if.end76_crit_edge
  %call.i = call ptr @bio_alloc_bioset(i32 noundef 3264, i16 noundef zeroext 1, ptr noundef nonnull @fs_bio_set) #9
  %bdev78 = getelementptr inbounds %struct.swap_info_struct, ptr %call, i32 0, i32 18
  %93 = ptrtoint ptr %bdev78 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %bdev78, align 4
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 3
  %95 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %96, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 1
  %97 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %98, %94
  br i1 %cmp.not.i, label %if.end76.bio_set_dev.exit_crit_edge, label %if.then.i344

if.end76.bio_set_dev.exit_crit_edge:              ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %bio_set_dev.exit

if.then.i344:                                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  %conv1.i8.i = and i16 %96, -2177
  %99 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i344, %if.end76.bio_set_dev.exit_crit_edge
  %100 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %94, ptr %bi_bdev.i, align 4
  call void @bio_associate_blkg(ptr noundef %call.i) #9
  %bi_opf = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 2
  %101 = ptrtoint ptr %bi_opf to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %bi_opf, align 8
  %call79 = call i64 @swap_page_sector(ptr noundef %page) #9
  %bi_iter = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 8
  %102 = ptrtoint ptr %bi_iter to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %call79, ptr %bi_iter, align 8
  %bi_end_io = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 10
  %103 = ptrtoint ptr %bi_end_io to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @end_swap_bio_read, ptr %bi_end_io, align 8
  %104 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %1, align 4
  %and.i.i.i346 = and i32 %105, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i346)
  %tobool.not.i.i347 = icmp eq i32 %and.i.i.i346, 0
  br i1 %tobool.not.i.i347, label %thp_size.exit, label %if.then.i.i348, !prof !79

if.then.i.i348:                                   ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.14) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/huge_mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 341, 0\0A.popsection", ""() #9, !srcloc !99
  unreachable

thp_size.exit:                                    ; preds = %bio_set_dev.exit
  %call81 = call i32 @bio_add_page(ptr noundef %call.i, ptr noundef %page, i32 noundef 4096, i32 noundef 0) #9
  br i1 %synchronous, label %if.then83, label %__here231.critedge

if.then83:                                        ; preds = %thp_size.exit
  %106 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %bi_opf, align 8
  %108 = or i32 %107, 16777216
  store i32 %108, ptr %bi_opf, align 8
  %109 = call i32 @llvm.read_register.i32(metadata !69) #9
  %and.i = and i32 %109, -16384
  %110 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %110, i32 0, i32 2
  %111 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %task, align 8
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %112, i32 0, i32 2
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #9
  %113 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #9, !srcloc !115
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %113, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then83.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !81

if.then83.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then83
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %114 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %114)
  %.not.i.i.i.i = icmp sgt i32 %114, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_task_struct.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !79

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_task_struct.exit_crit_edge:   ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_task_struct.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then83.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then83.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef %.sink.i.i.i.i) #9
  br label %get_task_struct.exit

get_task_struct.exit:                             ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_task_struct.exit_crit_edge
  %115 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %task, align 8
  %bi_private = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 11
  %117 = ptrtoint ptr %bi_private to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %116, ptr %bi_private, align 4
  %118 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !85
  %119 = call i32 @llvm.read_register.i32(metadata !69) #9
  %and.i.i349 = and i32 %119, -16384
  %120 = inttoptr i32 %and.i.i349 to ptr
  %cpu.i350 = getelementptr inbounds %struct.thread_info, ptr %120, i32 0, i32 3
  %121 = ptrtoint ptr %cpu.i350 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %cpu.i350, align 4
  %arrayidx13.i351 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %122
  %123 = ptrtoint ptr %arrayidx13.i351 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx13.i351, align 4
  %add.i352 = add i32 %124, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 2) to i32)
  %125 = inttoptr i32 %add.i352 to ptr
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %125, align 4
  %add14.i353 = add i32 %127, 1
  store i32 %add14.i353, ptr %125, align 4
  %128 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !86
  %and.i.i.i354 = and i32 %128, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i354)
  %tobool.not.i355 = icmp eq i32 %and.i.i.i354, 0
  br i1 %tobool.not.i355, label %if.then.i356, label %get_task_struct.exit.count_vm_event.exit357_crit_edge, !prof !81

get_task_struct.exit.count_vm_event.exit357_crit_edge: ; preds = %get_task_struct.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %count_vm_event.exit357

if.then.i356:                                     ; preds = %get_task_struct.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @warn_bogus_irq_restore() #9
  br label %count_vm_event.exit357

count_vm_event.exit357:                           ; preds = %if.then.i356, %get_task_struct.exit.count_vm_event.exit357_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %118) #9, !srcloc !87
  %129 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %bi_flags.i.i, align 4
  %131 = or i16 %130, 64
  store i16 %131, ptr %bi_flags.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !116
  %__bi_cnt.i = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 19
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %__bi_cnt.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %__bi_cnt.i, i32 1, i32 3, i32 1) #9
  %132 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %__bi_cnt.i, ptr %__bi_cnt.i, i32 1, ptr elementtype(i32) %__bi_cnt.i) #9, !srcloc !117
  call void @submit_bio(ptr noundef %call.i) #9
  %133 = call i32 @llvm.read_register.i32(metadata !69) #9
  %and.i358383 = and i32 %133, -16384
  %134 = inttoptr i32 %and.i358383 to ptr
  %task143384 = getelementptr inbounds %struct.thread_info, ptr %134, i32 0, i32 2
  %135 = ptrtoint ptr %task143384 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %task143384, align 8
  %task_state_change385 = getelementptr inbounds %struct.task_struct, ptr %136, i32 0, i32 212
  %137 = ptrtoint ptr %task_state_change385 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 ptrtoint (ptr blockaddress(@swap_readpage, %__here) to i32), ptr %task_state_change385, align 4
  %138 = load ptr, ptr %task143384, align 8
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_store4_noabort(i32 %139)
  store volatile i32 2, ptr %138, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !118
  %140 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load volatile ptr, ptr %bi_private, align 4
  %tobool173.not386 = icmp eq ptr %141, null
  br i1 %tobool173.not386, label %count_vm_event.exit357.__here231_crit_edge, label %count_vm_event.exit357.if.end175_crit_edge

count_vm_event.exit357.if.end175_crit_edge:       ; preds = %count_vm_event.exit357
  br label %if.end175

count_vm_event.exit357.__here231_crit_edge:       ; preds = %count_vm_event.exit357
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here231

__here:                                           ; preds = %if.then178, %if.end175.__here_crit_edge
  %142 = call i32 @llvm.read_register.i32(metadata !69) #9
  %and.i358 = and i32 %142, -16384
  %143 = inttoptr i32 %and.i358 to ptr
  %task143 = getelementptr inbounds %struct.thread_info, ptr %143, i32 0, i32 2
  %144 = ptrtoint ptr %task143 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %task143, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %145, i32 0, i32 212
  %146 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 ptrtoint (ptr blockaddress(@swap_readpage, %__here) to i32), ptr %task_state_change, align 4
  %147 = load ptr, ptr %task143, align 8
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_store4_noabort(i32 %148)
  store volatile i32 2, ptr %147, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !118
  %149 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load volatile ptr, ptr %bi_private, align 4
  %tobool173.not = icmp eq ptr %150, null
  br i1 %tobool173.not, label %__here.__here231_crit_edge, label %__here.if.end175_crit_edge

__here.if.end175_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end175

__here.__here231_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here231

if.end175:                                        ; preds = %__here.if.end175_crit_edge, %count_vm_event.exit357.if.end175_crit_edge
  %call176 = call i32 @bio_poll(ptr noundef %call.i, ptr noundef null, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call176)
  %tobool177.not = icmp eq i32 %call176, 0
  br i1 %tobool177.not, label %if.then178, label %if.end175.__here_crit_edge

if.end175.__here_crit_edge:                       ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

if.then178:                                       ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #11
  call void @blk_io_schedule() #9
  br label %__here

__here231.critedge:                               ; preds = %thp_size.exit
  %151 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !85
  %152 = call i32 @llvm.read_register.i32(metadata !69) #9
  %and.i.i359 = and i32 %152, -16384
  %153 = inttoptr i32 %and.i.i359 to ptr
  %cpu.i360 = getelementptr inbounds %struct.thread_info, ptr %153, i32 0, i32 3
  %154 = ptrtoint ptr %cpu.i360 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %cpu.i360, align 4
  %arrayidx13.i361 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %155
  %156 = ptrtoint ptr %arrayidx13.i361 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx13.i361, align 4
  %add.i362 = add i32 %157, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 2) to i32)
  %158 = inttoptr i32 %add.i362 to ptr
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %158, align 4
  %add14.i363 = add i32 %160, 1
  store i32 %add14.i363, ptr %158, align 4
  %161 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !86
  %and.i.i.i364 = and i32 %161, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i364)
  %tobool.not.i365 = icmp eq i32 %and.i.i.i364, 0
  br i1 %tobool.not.i365, label %if.then.i366, label %__here231.critedge.count_vm_event.exit367_crit_edge, !prof !81

__here231.critedge.count_vm_event.exit367_crit_edge: ; preds = %__here231.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %count_vm_event.exit367

if.then.i366:                                     ; preds = %__here231.critedge
  call void @__sanitizer_cov_trace_pc() #11
  call void @warn_bogus_irq_restore() #9
  br label %count_vm_event.exit367

count_vm_event.exit367:                           ; preds = %if.then.i366, %__here231.critedge.count_vm_event.exit367_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %151) #9, !srcloc !87
  %162 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %bi_flags.i.i, align 4
  %164 = or i16 %163, 64
  store i16 %164, ptr %bi_flags.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !116
  %__bi_cnt.i369 = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 19
  %call.i.i.i370 = call zeroext i1 @__kasan_check_write(ptr noundef %__bi_cnt.i369, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %__bi_cnt.i369, i32 1, i32 3, i32 1) #9
  %165 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %__bi_cnt.i369, ptr %__bi_cnt.i369, i32 1, ptr elementtype(i32) %__bi_cnt.i369) #9, !srcloc !117
  call void @submit_bio(ptr noundef %call.i) #9
  br label %__here231

__here231:                                        ; preds = %count_vm_event.exit367, %__here.__here231_crit_edge, %count_vm_event.exit357.__here231_crit_edge
  %166 = call i32 @llvm.read_register.i32(metadata !69) #9
  %and.i371 = and i32 %166, -16384
  %167 = inttoptr i32 %and.i371 to ptr
  %task234 = getelementptr inbounds %struct.thread_info, ptr %167, i32 0, i32 2
  %168 = ptrtoint ptr %task234 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %task234, align 8
  %task_state_change235 = getelementptr inbounds %struct.task_struct, ptr %169, i32 0, i32 212
  %170 = ptrtoint ptr %task_state_change235 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 ptrtoint (ptr blockaddress(@swap_readpage, %__here231) to i32), ptr %task_state_change235, align 4
  %171 = load ptr, ptr %task234, align 8
  %172 = ptrtoint ptr %171 to i32
  call void @__asan_store4_noabort(i32 %172)
  store volatile i32 0, ptr %171, align 128
  call void @bio_put(ptr noundef %call.i) #9
  br label %out

out:                                              ; preds = %__here231, %count_vm_event.exit343, %count_vm_event.exit, %if.then56.out_crit_edge, %SetPageUptodate.exit
  %ret.0 = phi i32 [ 0, %SetPageUptodate.exit ], [ 0, %__here231 ], [ 0, %count_vm_event.exit343 ], [ 0, %count_vm_event.exit ], [ %call58, %if.then56.out_crit_edge ]
  call void @psi_memstall_leave(ptr noundef nonnull %pflags) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @delayacct_key, ptr blockaddress(@swap_readpage, %if.end.i376)) #9
          to label %delayacct_swapin_end.exit [label %if.end.i376], !srcloc !93

if.end.i376:                                      ; preds = %out
  %173 = call i32 @llvm.read_register.i32(metadata !69) #9
  %and.i.i372 = and i32 %173, -16384
  %174 = inttoptr i32 %and.i.i372 to ptr
  %task.i373 = getelementptr inbounds %struct.thread_info, ptr %174, i32 0, i32 2
  %175 = ptrtoint ptr %task.i373 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %task.i373, align 8
  %delays.i374 = getelementptr inbounds %struct.task_struct, ptr %176, i32 0, i32 181
  %177 = ptrtoint ptr %delays.i374 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %delays.i374, align 8
  %tobool4.not.i375 = icmp eq ptr %178, null
  br i1 %tobool4.not.i375, label %if.end.i376.delayacct_swapin_end.exit_crit_edge, label %if.then5.i377

if.end.i376.delayacct_swapin_end.exit_crit_edge:  ; preds = %if.end.i376
  call void @__sanitizer_cov_trace_pc() #11
  br label %delayacct_swapin_end.exit

if.then5.i377:                                    ; preds = %if.end.i376
  call void @__sanitizer_cov_trace_pc() #11
  call void @__delayacct_swapin_end() #9
  br label %delayacct_swapin_end.exit

delayacct_swapin_end.exit:                        ; preds = %if.then5.i377, %if.end.i376.delayacct_swapin_end.exit_crit_edge, %out
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pflags) #9
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @psi_memstall_enter(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdev_read_page(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @swap_slot_free_notify(ptr noundef %page) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !79

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %2, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %3, %if.end.i.i ]
  %4 = inttoptr i32 %retval.0.i.i to ptr
  %5 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and.i.i.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_test_swapbacked.exit.i.i, label %if.then.i.i.i.i, !prof !79

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.14) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !94
  unreachable

folio_test_swapbacked.exit.i.i:                   ; preds = %_compound_head.exit.i
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %4, align 4
  %10 = and i32 %9, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not.i.i = icmp eq i32 %10, 0
  br i1 %tobool.i.not.i.i, label %folio_test_swapbacked.exit.i.i.cleanup_crit_edge, label %land.rhs.i.i, !prof !95

folio_test_swapbacked.exit.i.i.cleanup_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.rhs.i.i:                                     ; preds = %folio_test_swapbacked.exit.i.i
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %5, align 4
  %and.i.i.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %PageSwapCache.exit, label %if.then.i.i.i, !prof !79

if.then.i.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.14) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !94
  unreachable

PageSwapCache.exit:                               ; preds = %land.rhs.i.i
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %4, align 4
  %15 = and i32 %14, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.i.not = icmp eq i32 %15, 0
  br i1 %tobool.i.i.not, label %PageSwapCache.exit.cleanup_crit_edge, label %if.end, !prof !81

PageSwapCache.exit.cleanup_crit_edge:             ; preds = %PageSwapCache.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %PageSwapCache.exit
  %call4 = tail call ptr @page_swap_info(ptr noundef %page) #9
  %flags = getelementptr inbounds %struct.swap_info_struct, ptr %call4, i32 0, i32 1
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 4
  %and = and i32 %17, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %bdev = getelementptr inbounds %struct.swap_info_struct, ptr %call4, i32 0, i32 18
  %18 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bdev, align 4
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %19, i32 0, i32 17
  %20 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bd_disk, align 8
  %fops = getelementptr inbounds %struct.gendisk, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fops, align 8
  %swap_slot_free_notify = getelementptr inbounds %struct.block_device_operations, ptr %23, i32 0, i32 10
  %24 = ptrtoint ptr %swap_slot_free_notify to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %swap_slot_free_notify, align 4
  %tobool12.not = icmp eq ptr %25, null
  br i1 %tobool12.not, label %if.end11.cleanup_crit_edge, label %land.lhs.true

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end11
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %26 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %private, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %27, 0
  %call13 = tail call i32 @__swap_count([1 x i32] %.fca.0.insert) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call13)
  %cmp = icmp eq i32 %call13, 1
  br i1 %cmp, label %if.then14, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then14:                                        ; preds = %land.lhs.true
  %and.i = and i32 %27, 67108863
  %28 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %0, align 4
  %and.i.i33 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i33)
  %tobool.not.i.i34 = icmp eq i32 %and.i.i33, 0
  br i1 %tobool.not.i.i34, label %if.end.i.i37, label %if.then.i.i36, !prof !79

if.then.i.i36:                                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i35 = add i32 %29, -1
  br label %_compound_head.exit.i39

if.end.i.i37:                                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i39

_compound_head.exit.i39:                          ; preds = %if.end.i.i37, %if.then.i.i36
  %retval.0.i.i38 = phi i32 [ %sub.i.i35, %if.then.i.i36 ], [ %30, %if.end.i.i37 ]
  %31 = inttoptr i32 %retval.0.i.i38 to ptr
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %cmp.i.not.i = icmp eq i32 %33, -1
  %34 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %0, align 4
  %and.i12.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i12.i)
  %tobool.not.i13.i = icmp eq i32 %and.i12.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end8.i, !prof !81

if.then.i:                                        ; preds = %_compound_head.exit.i39
  br i1 %tobool.not.i13.i, label %if.end.i16.i, label %if.then.i15.i, !prof !79

if.then.i15.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i14.i = add i32 %35, -1
  br label %_compound_head.exit18.i

if.end.i16.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %page to i32
  br label %_compound_head.exit18.i

_compound_head.exit18.i:                          ; preds = %if.end.i16.i, %if.then.i15.i
  %retval.0.i17.i = phi i32 [ %sub.i14.i, %if.then.i15.i ], [ %36, %if.end.i16.i ]
  %37 = inttoptr i32 %retval.0.i17.i to ptr
  tail call void @dump_page(ptr noundef %37, ptr noundef nonnull @.str.13) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 420, 0\0A.popsection", ""() #9, !srcloc !119
  unreachable

do.end8.i:                                        ; preds = %_compound_head.exit.i39
  br i1 %tobool.not.i13.i, label %if.end.i23.i, label %if.then.i22.i, !prof !79

if.then.i22.i:                                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i21.i = add i32 %35, -1
  br label %SetPageDirty.exit

if.end.i23.i:                                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %page to i32
  br label %SetPageDirty.exit

SetPageDirty.exit:                                ; preds = %if.end.i23.i, %if.then.i22.i
  %retval.0.i24.i = phi i32 [ %sub.i21.i, %if.then.i22.i ], [ %38, %if.end.i23.i ]
  %39 = inttoptr i32 %retval.0.i24.i to ptr
  tail call void @_set_bit(i32 noundef 3, ptr noundef %39) #9
  %40 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fops, align 8
  %swap_slot_free_notify18 = getelementptr inbounds %struct.block_device_operations, ptr %41, i32 0, i32 10
  %42 = ptrtoint ptr %swap_slot_free_notify18 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %swap_slot_free_notify18, align 4
  %44 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bdev, align 4
  tail call void %43(ptr noundef %45, i32 noundef %and.i) #9
  br label %cleanup

cleanup:                                          ; preds = %SetPageDirty.exit, %land.lhs.true.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %PageSwapCache.exit.cleanup_crit_edge, %folio_test_swapbacked.exit.i.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @end_swap_bio_read(ptr noundef %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_flags.i.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 3
  %0 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %bi_flags.i.i.i, align 4
  %2 = and i16 %1, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %cmp.i.not.i.i = icmp eq i16 %2, 0
  br i1 %cmp.i.not.i.i, label %entry.bio_first_page_all.exit_crit_edge, label %land.rhs.i.i

entry.bio_first_page_all.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bio_first_page_all.exit

land.rhs.i.i:                                     ; preds = %entry
  %.b38.i.i = load i1, ptr @bio_first_bvec_all.__already_done, align 1
  br i1 %.b38.i.i, label %land.rhs.i.i.bio_first_page_all.exit_crit_edge, label %if.then.i.i61, !prof !79

land.rhs.i.i.bio_first_page_all.exit_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bio_first_page_all.exit

if.then.i.i61:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @bio_first_bvec_all.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 248, i32 noundef 9, ptr noundef null) #9
  br label %bio_first_page_all.exit

bio_first_page_all.exit:                          ; preds = %if.then.i.i61, %land.rhs.i.i.bio_first_page_all.exit_crit_edge, %entry.bio_first_page_all.exit_crit_edge
  %bi_io_vec.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 20
  %3 = ptrtoint ptr %bi_io_vec.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bi_io_vec.i.i, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %7 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bi_private, align 4
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %9 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bi_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %if.end9, label %if.then

if.then:                                          ; preds = %bio_first_page_all.exit
  %11 = getelementptr inbounds %struct.page, ptr %6, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  %and.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i, !prof !79

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %6, ptr noundef nonnull @.str.12) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #9, !srcloc !80
  unreachable

do.body7.i:                                       ; preds = %if.then
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %11, align 4
  %and.i31.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !79

if.then.i.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %15, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %6 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %16, %if.end.i.i ]
  %17 = inttoptr i32 %retval.0.i.i to ptr
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %cmp.i.not.i = icmp eq i32 %19, -1
  %20 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %11, align 4
  %and.i32.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i, label %if.then17.i, label %do.end24.i, !prof !81

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !79

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i34.i = add i32 %21, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %6 to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %22, %if.end.i36.i ]
  %23 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %23, ptr noundef nonnull @.str.13) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #9, !srcloc !82
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !79

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i41.i = add i32 %21, -1
  br label %SetPageError.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %6 to i32
  br label %SetPageError.exit

SetPageError.exit:                                ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %24, %if.end.i43.i ]
  %25 = inttoptr i32 %retval.0.i44.i to ptr
  tail call void @_set_bit(i32 noundef 8, ptr noundef %25) #9
  %26 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %11, align 4
  %and.i.i36 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i36)
  %tobool.not.i37 = icmp eq i32 %and.i.i36, 0
  br i1 %tobool.not.i37, label %do.body7.i41, label %if.then.i38, !prof !79

if.then.i38:                                      ; preds = %SetPageError.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %6, ptr noundef nonnull @.str.12) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #9, !srcloc !120
  unreachable

do.body7.i41:                                     ; preds = %SetPageError.exit
  %28 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %11, align 4
  %and.i31.i39 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i39)
  %tobool.not.i.i40 = icmp eq i32 %and.i31.i39, 0
  br i1 %tobool.not.i.i40, label %if.end.i.i44, label %if.then.i.i43, !prof !79

if.then.i.i43:                                    ; preds = %do.body7.i41
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i42 = add i32 %29, -1
  br label %_compound_head.exit.i49

if.end.i.i44:                                     ; preds = %do.body7.i41
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %6 to i32
  br label %_compound_head.exit.i49

_compound_head.exit.i49:                          ; preds = %if.end.i.i44, %if.then.i.i43
  %retval.0.i.i45 = phi i32 [ %sub.i.i42, %if.then.i.i43 ], [ %30, %if.end.i.i44 ]
  %31 = inttoptr i32 %retval.0.i.i45 to ptr
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %cmp.i.not.i46 = icmp eq i32 %33, -1
  %34 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %11, align 4
  %and.i32.i47 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i47)
  %tobool.not.i33.i48 = icmp eq i32 %and.i32.i47, 0
  br i1 %cmp.i.not.i46, label %if.then17.i50, label %do.end24.i56, !prof !81

if.then17.i50:                                    ; preds = %_compound_head.exit.i49
  br i1 %tobool.not.i33.i48, label %if.end.i36.i53, label %if.then.i35.i52, !prof !79

if.then.i35.i52:                                  ; preds = %if.then17.i50
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i34.i51 = add i32 %35, -1
  br label %_compound_head.exit38.i55

if.end.i36.i53:                                   ; preds = %if.then17.i50
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %6 to i32
  br label %_compound_head.exit38.i55

_compound_head.exit38.i55:                        ; preds = %if.end.i36.i53, %if.then.i35.i52
  %retval.0.i37.i54 = phi i32 [ %sub.i34.i51, %if.then.i35.i52 ], [ %36, %if.end.i36.i53 ]
  %37 = inttoptr i32 %retval.0.i37.i54 to ptr
  tail call void @dump_page(ptr noundef %37, ptr noundef nonnull @.str.13) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #9, !srcloc !121
  unreachable

do.end24.i56:                                     ; preds = %_compound_head.exit.i49
  br i1 %tobool.not.i33.i48, label %if.end.i43.i59, label %if.then.i42.i58, !prof !79

if.then.i42.i58:                                  ; preds = %do.end24.i56
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i41.i57 = add i32 %35, -1
  br label %ClearPageUptodate.exit

if.end.i43.i59:                                   ; preds = %do.end24.i56
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %6 to i32
  br label %ClearPageUptodate.exit

ClearPageUptodate.exit:                           ; preds = %if.end.i43.i59, %if.then.i42.i58
  %retval.0.i44.i60 = phi i32 [ %sub.i41.i57, %if.then.i42.i58 ], [ %38, %if.end.i43.i59 ]
  %39 = inttoptr i32 %retval.0.i44.i60 to ptr
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %39) #9
  %call1 = tail call i32 @___ratelimit(ptr noundef nonnull @end_swap_bio_read._rs, ptr noundef nonnull @__func__.end_swap_bio_read) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %ClearPageUptodate.exit.out_crit_edge, label %do.end

ClearPageUptodate.exit.out_crit_edge:             ; preds = %ClearPageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.end:                                           ; preds = %ClearPageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #11
  %bi_bdev = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %40 = ptrtoint ptr %bi_bdev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bi_bdev, align 4
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %41, i32 0, i32 17
  %42 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bd_disk, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 8
  %shl.i = shl i32 %45, 20
  %first_minor.i = getelementptr inbounds %struct.gendisk, ptr %43, i32 0, i32 1
  %46 = ptrtoint ptr %first_minor.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %first_minor.i, align 4
  %or.i = or i32 %shl.i, %47
  %shr = lshr i32 %or.i, 20
  %and = and i32 %47, 1048575
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %48 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %bi_iter, align 8
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %shr, i32 noundef %and, i64 noundef %49) #12
  br label %out

if.end9:                                          ; preds = %bio_first_page_all.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !112
  %50 = getelementptr inbounds %struct.page, ptr %6, i32 0, i32 1
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %50, align 4
  %and.i.i.i.i = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !79

if.then.i.i.i:                                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %6, ptr noundef nonnull @.str.14) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !94
  unreachable

SetPageUptodate.exit:                             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 2, ptr noundef %6) #9
  tail call fastcc void @swap_slot_free_notify(ptr noundef %6)
  br label %out

out:                                              ; preds = %SetPageUptodate.exit, %do.end, %ClearPageUptodate.exit.out_crit_edge
  tail call void @unlock_page(ptr noundef %6) #9
  %53 = ptrtoint ptr %bi_private to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr null, ptr %bi_private, align 4
  tail call void @bio_put(ptr noundef %bio) #9
  %tobool20.not = icmp eq ptr %8, null
  br i1 %tobool20.not, label %out.if.end22_crit_edge, label %if.then21

out.if.end22_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then21:                                        ; preds = %out
  tail call fastcc void @blk_wake_io_task(ptr noundef nonnull %8)
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #9
  %54 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #9, !srcloc !123
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %54, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i65, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end22_crit_edge, label %if.then10.i.i.i.i, !prof !79

if.end5.i.i.i.i.if.end22_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #9
  br label %if.end22

if.then.i65:                                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !124
  tail call void @__put_task_struct(ptr noundef nonnull %8) #9
  br label %if.end22

if.end22:                                         ; preds = %if.then.i65, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end22_crit_edge, %out.if.end22_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_poll(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_io_schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @psi_memstall_leave(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @swap_set_page_dirty(ptr noundef %page) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @page_swap_info(ptr noundef %page) #9
  %flags = getelementptr inbounds %struct.swap_info_struct, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %swap_file = getelementptr inbounds %struct.swap_info_struct, ptr %call, i32 0, i32 19
  %2 = ptrtoint ptr %swap_file to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %swap_file, align 4
  %f_mapping = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_mapping, align 4
  %6 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  %and.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !79

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %8, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %9, %if.end.i.i ]
  %10 = inttoptr i32 %retval.0.i.i to ptr
  %11 = getelementptr inbounds %struct.page, ptr %10, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  %and.i.i.i.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_test_swapbacked.exit.i.i, label %if.then.i.i.i.i, !prof !79

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %10, ptr noundef nonnull @.str.14) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !94
  unreachable

folio_test_swapbacked.exit.i.i:                   ; preds = %_compound_head.exit.i
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %10, align 4
  %16 = and i32 %15, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.i.not.i.i = icmp eq i32 %16, 0
  br i1 %tobool.i.not.i.i, label %folio_test_swapbacked.exit.i.i.if.then6_crit_edge, label %land.rhs.i.i, !prof !95

folio_test_swapbacked.exit.i.i.if.then6_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

land.rhs.i.i:                                     ; preds = %folio_test_swapbacked.exit.i.i
  %17 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %11, align 4
  %and.i.i.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %PageSwapCache.exit, label %if.then.i.i.i, !prof !79

if.then.i.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %10, ptr noundef nonnull @.str.14) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !94
  unreachable

PageSwapCache.exit:                               ; preds = %land.rhs.i.i
  %19 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %10, align 4
  %21 = and i32 %20, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.i.i.not = icmp eq i32 %21, 0
  br i1 %tobool.i.i.not, label %PageSwapCache.exit.if.then6_crit_edge, label %do.end12, !prof !81

PageSwapCache.exit.if.then6_crit_edge:            ; preds = %PageSwapCache.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

if.then6:                                         ; preds = %PageSwapCache.exit.if.then6_crit_edge, %folio_test_swapbacked.exit.i.i.if.then6_crit_edge
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.5) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/page_io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 448, 0\0A.popsection", ""() #9, !srcloc !125
  unreachable

do.end12:                                         ; preds = %PageSwapCache.exit
  call void @__sanitizer_cov_trace_pc() #11
  %a_ops = getelementptr inbounds %struct.address_space, ptr %5, i32 0, i32 9
  %22 = ptrtoint ptr %a_ops to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %a_ops, align 4
  %set_page_dirty = getelementptr inbounds %struct.address_space_operations, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %set_page_dirty to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %set_page_dirty, align 4
  %call13 = tail call i32 %25(ptr noundef %page) #9
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call14 = tail call i32 @__set_page_dirty_no_writeback(ptr noundef %page) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.end12
  %retval.0 = phi i32 [ %call13, %do.end12 ], [ %call14, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__set_page_dirty_no_writeback(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__frontswap_store(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__page_file_index(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_alloc_bioset(i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cgroup_e_css(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg_from_css(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__delayacct_swapin_start() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__frontswap_load(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__swap_count([1 x i32]) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @blk_wake_io_task(ptr noundef %waiter) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = tail call i32 @llvm.read_register.i32(metadata !69) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %cmp = icmp eq ptr %3, %waiter
  br i1 %cmp, label %__here, label %if.else

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %waiter, i32 0, i32 212
  %4 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 ptrtoint (ptr blockaddress(@blk_wake_io_task, %__here) to i32), ptr %task_state_change, align 4
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 0, ptr %6, align 128
  br label %if.end55

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call54 = tail call i32 @wake_up_process(ptr noundef %waiter) #9
  br label %if.end55

if.end55:                                         ; preds = %if.else, %__here
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__delayacct_swapin_end() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !17, !18, !19, !20, !21, !23, !25, !27, !29, !31, !33, !34, !36, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !56, !57, !59, !60, !62, !63, !64, !65, !66, !68}
!llvm.named.register.sp = !{!69}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../mm/page_io.c", i32 45, i32 3}
!2 = !{ptr @end_swap_bio_write._rs, !1, !"_rs", i1 false, i1 false}
!3 = !{ptr @__func__.end_swap_bio_write, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @end_swap_bio_write._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @end_swap_bio_write._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../mm/page_io.c", i32 220, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @generic_swapfile_activate._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @generic_swapfile_activate._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../mm/page_io.c", i32 293, i32 2}
!15 = !{ptr @__swap_writepage._rs, !16, !"_rs", i1 false, i1 false}
!16 = !{!"../mm/page_io.c", i32 328, i32 4}
!17 = !{ptr @__func__.__swap_writepage, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @__swap_writepage._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @__swap_writepage._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../mm/page_io.c", i32 364, i32 2}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../mm/page_io.c", i32 365, i32 2}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../mm/page_io.c", i32 366, i32 2}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../mm/page_io.c", i32 425, i32 3}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../mm/page_io.c", i32 432, i32 2}
!31 = distinct !{null, !32, !"__already_done", i1 false, i1 false}
!32 = !{!"../include/linux/bio.h", i32 248, i32 2}
!33 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../include/linux/page-flags.h", i32 416, i32 1}
!36 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!39 = distinct !{null, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../include/linux/memcontrol.h", i32 537, i32 2}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../include/linux/memcontrol.h", i32 538, i32 2}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../include/linux/memcontrol.h", i32 417, i32 2}
!47 = distinct !{null, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../include/linux/memcontrol.h", i32 418, i32 2}
!49 = distinct !{null, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../include/linux/memcontrol.h", i32 419, i32 2}
!51 = distinct !{null, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../include/linux/memcontrol.h", i32 398, i32 2}
!53 = distinct !{null, !54, !"__warned", i1 false, i1 false}
!54 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!55 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!57 = distinct !{null, !58, !"__warned", i1 false, i1 false}
!58 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!59 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @end_swap_bio_read._rs, !61, !"_rs", i1 false, i1 false}
!61 = !{!"../mm/page_io.c", i32 110, i32 3}
!62 = !{ptr @__func__.end_swap_bio_read, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @end_swap_bio_read._entry, !61, !"_entry", i1 false, i1 false}
!65 = !{ptr @end_swap_bio_read._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!66 = distinct !{null, !67, !"__already_done", i1 false, i1 false}
!67 = !{!"../include/linux/blkdev.h", i32 1252, i32 3}
!68 = distinct !{null, !67, !"<string literal>", i1 false, i1 false}
!69 = !{!"sp"}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{!"branch_weights", i32 2000, i32 1}
!80 = !{i64 2150295377, i64 2150295550, i64 2150295565, i64 2150295617, i64 2150295676, i64 2150295700, i64 2150295741, i64 2150295762, i64 2150295790, i64 2150295822}
!81 = !{!"branch_weights", i32 1, i32 2000}
!82 = !{i64 2150296252, i64 2150296425, i64 2150296440, i64 2150296492, i64 2150296551, i64 2150296575, i64 2150296616, i64 2150296637, i64 2150296665, i64 2150296697}
!83 = !{i64 2150817760, i64 2150817933, i64 2150817948, i64 2150818000, i64 2150818059, i64 2150818083, i64 2150818124, i64 2150818145, i64 2150818173, i64 2150818205}
!84 = !{i64 2150818635, i64 2150818808, i64 2150818823, i64 2150818875, i64 2150818934, i64 2150818958, i64 2150818999, i64 2150819020, i64 2150819048, i64 2150819080}
!85 = !{i64 1079408, i64 1079469}
!86 = !{i64 1082140}
!87 = !{i64 1082425}
!88 = !{i64 2153065310}
!89 = !{i64 2153065152}
!90 = !{i64 2153065480}
!91 = !{i64 2149852589}
!92 = !{!"auto-init"}
!93 = !{i64 2148275405, i64 2148275410, i64 2148275423, i64 2148275467, i64 2148275501, i64 2148275522}
!94 = !{i64 2150229726, i64 2150230217, i64 2150229763, i64 2150229819, i64 2150229853, i64 2150229877, i64 2150229918, i64 2150229939, i64 2150229967, i64 2150230001}
!95 = !{!"branch_weights", i32 1073205, i32 2146410443}
!96 = !{i64 2155039306, i64 2155039783, i64 2155039343, i64 2155039399, i64 2155039433, i64 2155039457, i64 2155039498, i64 2155039519, i64 2155039547, i64 2155039581}
!97 = !{i64 0, i64 17592186040321}
!98 = !{i64 2153111714, i64 2153112202, i64 2153111751, i64 2153111807, i64 2153111841, i64 2153111865, i64 2153111906, i64 2153111927, i64 2153111955, i64 2153111989}
!99 = !{i64 2153109732, i64 2153110220, i64 2153109769, i64 2153109825, i64 2153109859, i64 2153109883, i64 2153109924, i64 2153109945, i64 2153109973, i64 2153110007}
!100 = !{i64 2154707888, i64 2154708379, i64 2154707925, i64 2154707981, i64 2154708015, i64 2154708039, i64 2154708080, i64 2154708101, i64 2154708129, i64 2154708163}
!101 = !{i64 2154709788, i64 2154710279, i64 2154709825, i64 2154709881, i64 2154709915, i64 2154709939, i64 2154709980, i64 2154710001, i64 2154710029, i64 2154710063}
!102 = !{i64 2154688327, i64 2154688818, i64 2154688364, i64 2154688420, i64 2154688454, i64 2154688478, i64 2154688519, i64 2154688540, i64 2154688568, i64 2154688602}
!103 = !{i64 2154682585, i64 2154683076, i64 2154682622, i64 2154682678, i64 2154682712, i64 2154682736, i64 2154682777, i64 2154682798, i64 2154682826, i64 2154682860}
!104 = !{i64 2150010061}
!105 = !{i64 2150010327}
!106 = !{!"branch_weights", i32 4001, i32 1}
!107 = !{i64 2155045176, i64 2155045653, i64 2155045213, i64 2155045269, i64 2155045303, i64 2155045327, i64 2155045368, i64 2155045389, i64 2155045417, i64 2155045451}
!108 = !{i64 2150241220, i64 2150241711, i64 2150241257, i64 2150241313, i64 2150241347, i64 2150241371, i64 2150241412, i64 2150241433, i64 2150241461, i64 2150241495}
!109 = !{i64 2155046924, i64 2155047401, i64 2155046961, i64 2155047017, i64 2155047051, i64 2155047075, i64 2155047116, i64 2155047137, i64 2155047165, i64 2155047199}
!110 = !{i64 2150979618}
!111 = !{i64 2155052738, i64 2155053215, i64 2155052775, i64 2155052831, i64 2155052865, i64 2155052889, i64 2155052930, i64 2155052951, i64 2155052979, i64 2155053013}
!112 = !{i64 2150980689}
!113 = !{i64 2148683586, i64 2148683618, i64 2148683647, i64 2148683681, i64 2148683712, i64 2148683735}
!114 = !{i64 2148772691}
!115 = !{i64 2148676258, i64 2148676290, i64 2148676319, i64 2148676353, i64 2148676384, i64 2148676407}
!116 = !{i64 2154663965}
!117 = !{i64 2148674728, i64 2148674754, i64 2148674783, i64 2148674817, i64 2148674848, i64 2148674871}
!118 = !{i64 2155060024}
!119 = !{i64 2150349624, i64 2150349797, i64 2150349812, i64 2150349864, i64 2150349923, i64 2150349947, i64 2150349988, i64 2150350009, i64 2150350037, i64 2150350069}
!120 = !{i64 2150988602, i64 2150988775, i64 2150988790, i64 2150988842, i64 2150988901, i64 2150988925, i64 2150988966, i64 2150988987, i64 2150989015, i64 2150989047}
!121 = !{i64 2150989477, i64 2150989650, i64 2150989665, i64 2150989717, i64 2150989776, i64 2150989800, i64 2150989841, i64 2150989862, i64 2150989890, i64 2150989922}
!122 = !{i64 2148764283}
!123 = !{i64 2148678723, i64 2148678755, i64 2148678784, i64 2148678818, i64 2148678849, i64 2148678872}
!124 = !{i64 2149960518}
!125 = !{i64 2155068897, i64 2155069374, i64 2155068934, i64 2155068990, i64 2155069024, i64 2155069048, i64 2155069089, i64 2155069110, i64 2155069138, i64 2155069172}
