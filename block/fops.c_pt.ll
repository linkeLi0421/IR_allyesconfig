; ModuleID = '/llk/IR_all_yes/block/fops.c_pt.bc'
source_filename = "../block/fops.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.67 }
%struct.atomic_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.bio_list = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.page = type { i32, %union.anon, %union.anon.85, %struct.atomic_t, i32 }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.85 = type { %struct.atomic_t }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.72, %union.anon.73 }
%union.anon.72 = type { ptr }
%union.anon.73 = type { i64 }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.file = type { %union.anon.4, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.4 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
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
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.33, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.33 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.58, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.10 }
%struct.llist_node = type { ptr }
%union.anon.10 = type { i32 }
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
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.58 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.86, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.87, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.88, ptr, %struct.address_space, %struct.list_head, %union.anon.89, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.86 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.87 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.88 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.89 = type { ptr }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.blkdev_dio = type { %union.anon.92, i32, %struct.atomic_t, i32, [112 x i8], %struct.bio, [24 x i8] }
%union.anon.92 = type { ptr }

@def_blk_aops = dso_local constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr @blkdev_writepage, ptr @blkdev_readpage, ptr @blkdev_writepages, ptr @__set_page_dirty_buffers, ptr null, ptr @blkdev_readahead, ptr @blkdev_write_begin, ptr @blkdev_write_end, ptr null, ptr null, ptr null, ptr null, ptr @blkdev_direct_IO, ptr @buffer_migrate_page_norefs, ptr null, ptr null, ptr null, ptr null, ptr @buffer_check_dirty_writeback, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@def_blk_fops = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @blkdev_llseek, ptr null, ptr null, ptr @blkdev_read_iter, ptr @blkdev_write_iter, ptr @iocb_bio_iopoll, ptr null, ptr null, ptr null, ptr @blkdev_ioctl, ptr null, ptr @generic_file_mmap, i32 0, ptr @blkdev_open, ptr null, ptr @blkdev_close, ptr @blkdev_fsync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iter_file_splice_write, ptr @generic_file_splice_read, ptr null, ptr @blkdev_fallocate, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_fops__325_715_blkdev_init6 = internal global ptr @blkdev_init, section ".initcall6.init", align 4
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@blkdev_dio_pool = internal global { %struct.bio_set, [132 x i8] } zeroinitializer, align 32
@fs_bio_set = external dso_local global %struct.bio_set, align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 7, i64 16, i64 17]
@___asan_gen_.5 = private unnamed_addr constant [13 x i8] c"def_blk_aops\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 433, i32 39 }
@___asan_gen_.8 = private unnamed_addr constant [13 x i8] c"def_blk_fops\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 691, i32 30 }
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.12 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 717, i32 2 }
@___asan_gen_.14 = private unnamed_addr constant [16 x i8] c"blkdev_dio_pool\00", align 1
@___asan_gen_.15 = private constant [16 x i8] c"../block/fops.c\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 143, i32 23 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @__initcall__kmod_fops__325_715_blkdev_init6, ptr @def_blk_aops, ptr @def_blk_fops, ptr @.str, ptr @blkdev_dio_pool], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @def_blk_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @def_blk_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blkdev_dio_pool to i32), i32 604, i32 736, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blkdev_writepage(ptr noundef %page, ptr noundef %wbc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @block_write_full_page(ptr noundef %page, ptr noundef nonnull @blkdev_get_block, ptr noundef %wbc) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blkdev_readpage(ptr nocapture noundef readnone %file, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @block_read_full_page(ptr noundef %page, ptr noundef nonnull @blkdev_get_block) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blkdev_writepages(ptr noundef %mapping, ptr noundef %wbc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @generic_writepages(ptr noundef %mapping, ptr noundef %wbc) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__set_page_dirty_buffers(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @blkdev_readahead(ptr noundef %rac) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mpage_readahead(ptr noundef %rac, ptr noundef nonnull @blkdev_get_block) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blkdev_write_begin(ptr nocapture noundef readnone %file, ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %flags, ptr noundef %pagep, ptr nocapture noundef readnone %fsdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @block_write_begin(ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %flags, ptr noundef %pagep, ptr noundef nonnull @blkdev_get_block) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blkdev_write_end(ptr noundef %file, ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %copied, ptr noundef %page, ptr noundef %fsdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @block_write_end(ptr noundef %file, ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %copied, ptr noundef %page, ptr noundef %fsdata) #10
  tail call void @unlock_page(ptr noundef %page) #10
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !32

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %2, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %3, %if.end.i.i ]
  %4 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  %5 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.i.i.i = icmp eq i32 %6, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !33

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !34
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !35
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #10
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #10, !srcloc !36
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@blkdev_write_end, %if.then.i.i.i.i.i)) #10
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !38

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %4, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #10
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__put_page(ptr noundef %4) #10
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blkdev_direct_IO(ptr noundef %iocb, ptr noundef %iter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 4
  %0 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %iter to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %iter, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp.i.i = icmp eq i8 %3, 2
  br i1 %cmp.i.i, label %if.end.if.then4_crit_edge, label %bio_iov_vecs_to_alloc.exit

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4

bio_iov_vecs_to_alloc.exit:                       ; preds = %if.end
  %call1.i = tail call i32 @iov_iter_npages(ptr noundef %iter, i32 noundef 257) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 257, i32 %call1.i)
  %cmp = icmp ult i32 %call1.i, 257
  br i1 %cmp, label %bio_iov_vecs_to_alloc.exit.if.then4_crit_edge, label %if.end10, !prof !32

bio_iov_vecs_to_alloc.exit.if.then4_crit_edge:    ; preds = %bio_iov_vecs_to_alloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4

if.then4:                                         ; preds = %bio_iov_vecs_to_alloc.exit.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %retval.0.i29 = phi i32 [ %call1.i, %bio_iov_vecs_to_alloc.exit.if.then4_crit_edge ], [ 0, %if.end.if.then4_crit_edge ]
  %ki_complete.i = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 2
  %4 = ptrtoint ptr %ki_complete.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ki_complete.i, align 8
  %cmp.i = icmp eq ptr %5, null
  br i1 %cmp.i, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = tail call fastcc i32 @__blkdev_direct_IO_simple(ptr noundef %iocb, ptr noundef %iter, i32 noundef %retval.0.i29)
  br label %cleanup

if.end8:                                          ; preds = %if.then4
  %6 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iocb, align 8
  %private_data.i = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 16
  %8 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private_data.i, align 4
  %ki_pos.i = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %10 = ptrtoint ptr %ki_pos.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %ki_pos.i, align 8
  %call.i = tail call i32 @iov_iter_alignment(ptr noundef %iter) #10
  %conv.i = zext i32 %call.i to i64
  %or.i = or i64 %11, %conv.i
  %bd_queue.i.i.i = getelementptr inbounds %struct.block_device, ptr %9, i32 0, i32 18
  %12 = ptrtoint ptr %bd_queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bd_queue.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i.i, label %if.end8.bdev_logical_block_size.exit.i_crit_edge, label %land.lhs.true.i.i.i

if.end8.bdev_logical_block_size.exit.i_crit_edge: ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %bdev_logical_block_size.exit.i

land.lhs.true.i.i.i:                              ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %logical_block_size.i.i.i = getelementptr inbounds %struct.request_queue, ptr %13, i32 0, i32 37, i32 9
  %14 = ptrtoint ptr %logical_block_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %logical_block_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool2.not.i.i.i = icmp eq i32 %15, 0
  %.op.i = add i32 %15, -1
  %phi.bo.i = select i1 %tobool2.not.i.i.i, i32 511, i32 %.op.i
  br label %bdev_logical_block_size.exit.i

bdev_logical_block_size.exit.i:                   ; preds = %land.lhs.true.i.i.i, %if.end8.bdev_logical_block_size.exit.i_crit_edge
  %retval1.0.i.i.i = phi i32 [ 511, %if.end8.bdev_logical_block_size.exit.i_crit_edge ], [ %phi.bo.i, %land.lhs.true.i.i.i ]
  %conv2.i = zext i32 %retval1.0.i.i.i to i64
  %and.i = and i64 %or.i, %conv2.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i23, label %bdev_logical_block_size.exit.i.cleanup_crit_edge

bdev_logical_block_size.exit.i.cleanup_crit_edge: ; preds = %bdev_logical_block_size.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i23:                                       ; preds = %bdev_logical_block_size.exit.i
  %conv3.i = trunc i32 %retval.0.i29 to i16
  %call4.i = tail call ptr @bio_alloc_kiocb(ptr noundef %iocb, i16 noundef zeroext %conv3.i, ptr noundef nonnull @blkdev_dio_pool) #10
  %add.ptr.i = getelementptr i8, ptr %call4.i, i32 -128
  %flags.i = getelementptr i8, ptr %call4.i, i32 -116
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %flags.i, align 4
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %iocb, ptr %add.ptr.i, align 128
  %bi_flags.i.i.i = getelementptr inbounds %struct.bio, ptr %call4.i, i32 0, i32 3
  %18 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %bi_flags.i.i.i, align 4
  %conv1.i.i.i = and i16 %19, -2049
  store i16 %conv1.i.i.i, ptr %bi_flags.i.i.i, align 4
  %bi_bdev.i.i = getelementptr inbounds %struct.bio, ptr %call4.i, i32 0, i32 1
  %20 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bi_bdev.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %21, %9
  br i1 %cmp.not.i.i, label %if.end.i23.bio_set_dev.exit.i_crit_edge, label %if.then.i.i

if.end.i23.bio_set_dev.exit.i_crit_edge:          ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #12
  br label %bio_set_dev.exit.i

if.then.i.i:                                      ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #12
  %conv1.i8.i.i = and i16 %19, -2177
  %22 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv1.i8.i.i, ptr %bi_flags.i.i.i, align 4
  br label %bio_set_dev.exit.i

bio_set_dev.exit.i:                               ; preds = %if.then.i.i, %if.end.i23.bio_set_dev.exit.i_crit_edge
  %23 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %9, ptr %bi_bdev.i.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %call4.i) #10
  %shr.i = ashr i64 %11, 9
  %bi_iter.i = getelementptr inbounds %struct.bio, ptr %call4.i, i32 0, i32 8
  %24 = ptrtoint ptr %bi_iter.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %shr.i, ptr %bi_iter.i, align 8
  %ki_hint.i = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 5
  %25 = ptrtoint ptr %ki_hint.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %ki_hint.i, align 4
  %bi_write_hint.i = getelementptr inbounds %struct.bio, ptr %call4.i, i32 0, i32 5
  %27 = ptrtoint ptr %bi_write_hint.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %bi_write_hint.i, align 8
  %bi_end_io.i = getelementptr inbounds %struct.bio, ptr %call4.i, i32 0, i32 10
  %28 = ptrtoint ptr %bi_end_io.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @blkdev_bio_end_io_async, ptr %bi_end_io.i, align 8
  %ki_ioprio.i = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 6
  %29 = ptrtoint ptr %ki_ioprio.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %ki_ioprio.i, align 2
  %bi_ioprio.i = getelementptr inbounds %struct.bio, ptr %call4.i, i32 0, i32 4
  %31 = ptrtoint ptr %bi_ioprio.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %bi_ioprio.i, align 2
  %32 = ptrtoint ptr %iter to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %iter, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %33)
  %cmp.i.i24 = icmp eq i8 %33, 2
  br i1 %cmp.i.i24, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %bio_set_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @bio_iov_bvec_set(ptr noundef %call4.i, ptr noundef %iter) #10
  br label %if.end13.i

if.else.i:                                        ; preds = %bio_set_dev.exit.i
  %call7.i = tail call i32 @bio_iov_iter_get_pages(ptr noundef %call4.i, ptr noundef %iter) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.else.i.if.end13.i_crit_edge, label %if.then11.i, !prof !32

if.else.i.if.end13.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i

if.then11.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @bio_put(ptr noundef %call4.i) #10
  br label %cleanup

if.end13.i:                                       ; preds = %if.else.i.if.end13.i_crit_edge, %if.then6.i
  %bi_size.i = getelementptr inbounds %struct.bio, ptr %call4.i, i32 0, i32 8, i32 1
  %34 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bi_size.i, align 8
  %size.i = getelementptr i8, ptr %call4.i, i32 -124
  %36 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %size.i, align 4
  %data_source.i.i = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 2
  %37 = ptrtoint ptr %data_source.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %data_source.i.i, align 2, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp.i25 = icmp eq i8 %38, 0
  br i1 %cmp.i25, label %if.then18.i, label %if.else24.i

if.then18.i:                                      ; preds = %if.end13.i
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %call4.i, i32 0, i32 2
  %39 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %bi_opf.i, align 8
  %40 = ptrtoint ptr %iter to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %iter, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp.i96.i = icmp eq i8 %41, 0
  br i1 %cmp.i96.i, label %if.then20.i, label %if.then18.i.if.end29.i_crit_edge

if.then18.i.if.end29.i_crit_edge:                 ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.i

if.then20.i:                                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags.i, align 4
  %or22.i = or i32 %43, 1
  store i32 %or22.i, ptr %flags.i, align 4
  tail call void @bio_set_pages_dirty(ptr noundef %call4.i) #10
  br label %if.end29.i

if.else24.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  %ki_flags.i.i = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 4
  %44 = ptrtoint ptr %ki_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ki_flags.i.i, align 8
  %and.i.i = and i32 %45, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 34817, i32 165889
  %bi_opf26.i = getelementptr inbounds %struct.bio, ptr %call4.i, i32 0, i32 2
  %46 = ptrtoint ptr %bi_opf26.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %spec.select.i.i, ptr %bi_opf26.i, align 8
  %conv.i.i = zext i32 %35 to i64
  %47 = tail call i32 @llvm.read_register.i32(metadata !22) #10
  %and.i.i.i = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %task.i.i, align 8
  %write_bytes.i.i = getelementptr inbounds %struct.task_struct, ptr %50, i32 0, i32 155, i32 5
  %51 = ptrtoint ptr %write_bytes.i.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %write_bytes.i.i, align 8
  %add.i.i = add i64 %52, %conv.i.i
  store i64 %add.i.i, ptr %write_bytes.i.i, align 8
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.else24.i, %if.then20.i, %if.then18.i.if.end29.i_crit_edge
  %ki_flags.i = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 4
  %53 = ptrtoint ptr %ki_flags.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ki_flags.i, align 8
  %and30.i = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  br i1 %tobool31.not.i, label %if.else43.i, label %if.then32.i

if.then32.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  %bi_opf33.i = getelementptr inbounds %struct.bio, ptr %call4.i, i32 0, i32 2
  %55 = ptrtoint ptr %bi_opf33.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %bi_opf33.i, align 8
  %57 = or i32 %56, 18874368
  store i32 %57, ptr %bi_opf33.i, align 8
  tail call void @submit_bio(ptr noundef %call4.i) #10
  %private.i = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 3
  %58 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %call4.i, ptr %private.i, align 4
  br label %cleanup

if.else43.i:                                      ; preds = %if.end29.i
  %and45.i = and i32 %54, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i)
  %tobool46.not.i = icmp eq i32 %and45.i, 0
  br i1 %tobool46.not.i, label %if.else43.i.if.end52.i_crit_edge, label %if.then47.i

if.else43.i.if.end52.i_crit_edge:                 ; preds = %if.else43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52.i

if.then47.i:                                      ; preds = %if.else43.i
  call void @__sanitizer_cov_trace_pc() #12
  %bi_opf48.i = getelementptr inbounds %struct.bio, ptr %call4.i, i32 0, i32 2
  %59 = ptrtoint ptr %bi_opf48.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %bi_opf48.i, align 8
  %61 = or i32 %60, 2097152
  store i32 %61, ptr %bi_opf48.i, align 8
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.then47.i, %if.else43.i.if.end52.i_crit_edge
  tail call void @submit_bio(ptr noundef %call4.i) #10
  br label %cleanup

if.end10:                                         ; preds = %bio_iov_vecs_to_alloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call12 = tail call fastcc i32 @__blkdev_direct_IO(ptr noundef %iocb, ptr noundef %iter, i32 noundef 256)
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end52.i, %if.then32.i, %if.then11.i, %bdev_logical_block_size.exit.i.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.then6 ], [ %call12, %if.end10 ], [ 0, %entry.cleanup_crit_edge ], [ %call7.i, %if.then11.i ], [ -22, %bdev_logical_block_size.exit.i.cleanup_crit_edge ], [ -529, %if.end52.i ], [ -529, %if.then32.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @buffer_migrate_page_norefs(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @buffer_check_dirty_writeback(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @blkdev_llseek(ptr noundef %file, i64 noundef %offset, i32 noundef %whence) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mapping.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %0 = ptrtoint ptr %f_mapping.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_mapping.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #10
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 23
  %dep_map.c48.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 23, i32 1
  %i_size18.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %entry
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !40
  %and.i.i.i = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @trace_hardirqs_off() #10
  %5 = tail call ptr @llvm.returnaddress(i32 0) #10
  %6 = ptrtoint ptr %5 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %6) #10
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %6) #10
  tail call void @trace_hardirqs_on() #10
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %7 = tail call ptr @llvm.returnaddress(i32 0) #10
  %8 = ptrtoint ptr %7 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %8) #10
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %8) #10
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %9 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !41
  %and.i.i.i.i = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !33

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %4) #10, !srcloc !42
  %10 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and29.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !43
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !44
  %12 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and.i = and i32 %13, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %11, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge ], [ %13, %do.end.i.while.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !45
  %14 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %i_size18.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !46
  %16 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %17, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %i_size_read.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

i_size_read.exit:                                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call i64 @fixed_size_llseek(ptr noundef %file, i64 noundef %offset, i32 noundef %whence, i64 noundef %15) #10
  tail call void @up_write(ptr noundef %i_rwsem.i) #10
  ret i64 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blkdev_read_iter(ptr noundef %iocb, ptr noundef %to) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %bd_nr_sectors.i.i, align 8
  %shl.i = shl i64 %5, 9
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %6 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %ki_pos, align 8
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %to, i32 0, i32 4
  %8 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count.i, align 8
  %conv = zext i32 %9 to i64
  %add = add i64 %7, %conv
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %shl.i)
  %cmp = icmp sgt i64 %add, %shl.i
  br i1 %cmp, label %if.then, label %entry.if.end11_crit_edge, !prof !33

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i, i64 %7)
  %cmp4.not = icmp sgt i64 %shl.i, %7
  br i1 %cmp4.not, label %if.end, label %if.then.cleanup68_crit_edge

if.then.cleanup68_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup68

if.end:                                           ; preds = %if.then
  %sub = sub i64 %shl.i, %7
  %10 = trunc i64 %sub to i32
  %conv10 = sub i32 %9, %10
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %conv)
  %cmp.i = icmp ult i64 %sub, %conv
  br i1 %cmp.i, label %if.then.i, label %if.end11thread-pre-split

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %count.i, align 8
  br label %if.end11

if.end11thread-pre-split:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr = load i32, ptr %count.i, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.end11thread-pre-split, %if.then.i, %entry.if.end11_crit_edge
  %13 = phi i32 [ %.pr, %if.end11thread-pre-split ], [ %10, %if.then.i ], [ %9, %entry.if.end11_crit_edge ]
  %shorted.0 = phi i32 [ %conv10, %if.end11thread-pre-split ], [ %conv10, %if.then.i ], [ 0, %entry.if.end11_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool13.not = icmp eq i32 %13, 0
  br i1 %tobool13.not, label %if.end11.reexpand_crit_edge, label %if.end15

if.end11.reexpand_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %reexpand

if.end15:                                         ; preds = %if.end11
  %ki_flags = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 4
  %14 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ki_flags, align 8
  %and = and i32 %15, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.end15.if.end55_crit_edge, label %if.then17

if.end15.if.end55_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then17:                                        ; preds = %if.end15
  %16 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iocb, align 8
  %f_mapping = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 18
  %18 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %f_mapping, align 4
  %and20 = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  %conv29 = zext i32 %13 to i64
  %add30 = add i64 %7, -1
  %sub31 = add i64 %add30, %conv29
  br i1 %tobool21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.then17
  %nrpages.i = getelementptr inbounds %struct.address_space, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %nrpages.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nrpages.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %if.then22.if.end37_crit_edge, label %if.end.i

if.then22.if.end37_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.end.i:                                         ; preds = %if.then22
  %xa_flags.i.i.i = getelementptr inbounds %struct.address_space, ptr %19, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %xa_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %xa_flags.i.i.i, align 4
  %24 = and i32 %23, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %.not.i = icmp eq i32 %24, 0
  br i1 %.not.i, label %if.end.i.if.end37_crit_edge, label %filemap_range_needs_writeback.exit

if.end.i.if.end37_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

filemap_range_needs_writeback.exit:               ; preds = %if.end.i
  %call4.i = tail call zeroext i1 @filemap_range_has_writeback(ptr noundef %19, i64 noundef %7, i64 noundef %sub31) #10
  br i1 %call4.i, label %filemap_range_needs_writeback.exit.reexpand_crit_edge, label %filemap_range_needs_writeback.exit.if.end37_crit_edge

filemap_range_needs_writeback.exit.if.end37_crit_edge: ; preds = %filemap_range_needs_writeback.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

filemap_range_needs_writeback.exit.reexpand_crit_edge: ; preds = %filemap_range_needs_writeback.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %reexpand

if.else:                                          ; preds = %if.then17
  %call32 = tail call i32 @filemap_write_and_wait_range(ptr noundef %19, i64 noundef %7, i64 noundef %sub31) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.else.reexpand_crit_edge, label %if.else.if.end37_crit_edge

if.else.if.end37_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.else.reexpand_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %reexpand

if.end37:                                         ; preds = %if.else.if.end37_crit_edge, %filemap_range_needs_writeback.exit.if.end37_crit_edge, %if.end.i.if.end37_crit_edge, %if.then22.if.end37_crit_edge
  %25 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %iocb, align 8
  %f_flags.i = getelementptr inbounds %struct.file, ptr %26, i32 0, i32 7
  %27 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %f_flags.i, align 4
  %and.i = and i32 %28, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i117 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i117, label %if.then.i118, label %if.end37.file_accessed.exit_crit_edge

if.end37.file_accessed.exit_crit_edge:            ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %file_accessed.exit

if.then.i118:                                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  %f_path.i = getelementptr inbounds %struct.file, ptr %26, i32 0, i32 1
  tail call void @touch_atime(ptr noundef %f_path.i) #10
  br label %file_accessed.exit

file_accessed.exit:                               ; preds = %if.then.i118, %if.end37.file_accessed.exit_crit_edge
  %call39 = tail call i32 @blkdev_direct_IO(ptr noundef %iocb, ptr noundef %to)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call39)
  %cmp40 = icmp sgt i32 %call39, -1
  br i1 %cmp40, label %if.then42, label %file_accessed.exit.if.end47_crit_edge

file_accessed.exit.if.end47_crit_edge:            ; preds = %file_accessed.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then42:                                        ; preds = %file_accessed.exit
  call void @__sanitizer_cov_trace_pc() #12
  %conv43127 = zext i32 %call39 to i64
  %29 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %ki_pos, align 8
  %add45 = add i64 %30, %conv43127
  store i64 %add45, ptr %ki_pos, align 8
  %sub46 = sub i32 %13, %call39
  br label %if.end47

if.end47:                                         ; preds = %if.then42, %file_accessed.exit.if.end47_crit_edge
  %count.0 = phi i32 [ %sub46, %if.then42 ], [ %13, %file_accessed.exit.if.end47_crit_edge ]
  %31 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %count.i, align 8
  %sub49 = sub i32 %count.0, %32
  tail call void @iov_iter_revert(ptr noundef %to, i32 noundef %sub49) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp50 = icmp slt i32 %call39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0)
  %tobool52.not = icmp eq i32 %count.0, 0
  %or.cond = select i1 %cmp50, i1 true, i1 %tobool52.not
  br i1 %or.cond, label %if.end47.reexpand_crit_edge, label %if.end47.if.end55_crit_edge

if.end47.if.end55_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.end47.reexpand_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %reexpand

if.end55:                                         ; preds = %if.end47.if.end55_crit_edge, %if.end15.if.end55_crit_edge
  %ret.1 = phi i32 [ 0, %if.end15.if.end55_crit_edge ], [ %call39, %if.end47.if.end55_crit_edge ]
  %call56 = tail call i32 @filemap_read(ptr noundef %iocb, ptr noundef %to, i32 noundef %ret.1) #10
  br label %reexpand

reexpand:                                         ; preds = %if.end55, %if.end47.reexpand_crit_edge, %if.else.reexpand_crit_edge, %filemap_range_needs_writeback.exit.reexpand_crit_edge, %if.end11.reexpand_crit_edge
  %ret.2 = phi i32 [ %call56, %if.end55 ], [ 0, %if.end11.reexpand_crit_edge ], [ %call32, %if.else.reexpand_crit_edge ], [ -11, %filemap_range_needs_writeback.exit.reexpand_crit_edge ], [ %call39, %if.end47.reexpand_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shorted.0)
  %tobool57.not = icmp eq i32 %shorted.0, 0
  br i1 %tobool57.not, label %reexpand.cleanup68_crit_edge, label %if.then64, !prof !32

reexpand.cleanup68_crit_edge:                     ; preds = %reexpand
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup68

if.then64:                                        ; preds = %reexpand
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %count.i, align 8
  %add66 = add i32 %34, %shorted.0
  store i32 %add66, ptr %count.i, align 8
  br label %cleanup68

cleanup68:                                        ; preds = %if.then64, %reexpand.cleanup68_crit_edge, %if.then.cleanup68_crit_edge
  %retval.0 = phi i32 [ 0, %if.then.cleanup68_crit_edge ], [ %ret.2, %if.then64 ], [ %ret.2, %reexpand.cleanup68_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blkdev_write_iter(ptr noundef %iocb, ptr noundef %from) #0 align 64 {
entry:
  %plug = alloca %struct.blk_plug, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %bd_inode1 = getelementptr inbounds %struct.block_device, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %bd_inode1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bd_inode1, align 4
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %bd_nr_sectors.i.i, align 8
  %shl.i = shl i64 %7, 9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %plug) #10
  %8 = call ptr @memset(ptr %plug, i32 255, i32 24)
  %bd_read_only.i = getelementptr inbounds %struct.block_device, ptr %3, i32 0, i32 4
  %9 = ptrtoint ptr %bd_read_only.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bd_read_only.i, align 8, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %lor.rhs.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.rhs.i:                                        ; preds = %entry
  %bd_disk.i = getelementptr inbounds %struct.block_device, ptr %3, i32 0, i32 17
  %11 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bd_disk.i, align 8
  %part0.i.i = getelementptr inbounds %struct.gendisk, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %part0.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %part0.i.i, align 4
  %bd_read_only.i.i = getelementptr inbounds %struct.block_device, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %bd_read_only.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bd_read_only.i.i, align 8, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i.i, label %bdev_read_only.exit, label %lor.rhs.i.cleanup_crit_edge

lor.rhs.i.cleanup_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

bdev_read_only.exit:                              ; preds = %lor.rhs.i
  %state.i.i = getelementptr inbounds %struct.gendisk, ptr %12, i32 0, i32 12
  %17 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %state.i.i, align 4
  %19 = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %if.end, label %bdev_read_only.exit.cleanup_crit_edge

bdev_read_only.exit.cleanup_crit_edge:            ; preds = %bdev_read_only.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %bdev_read_only.exit
  %i_flags = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 4
  %20 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i_flags, align 4
  %and = and i32 %21, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %land.lhs.true

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %i_rdev = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 13
  %22 = ptrtoint ptr %i_rdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %i_rdev, align 8
  %call4 = tail call i32 @is_hibernate_resume_dev(i32 noundef %23) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %from, i32 0, i32 4
  %24 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool9.not = icmp eq i32 %25, 0
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %26 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %ki_pos, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i, i64 %27)
  %cmp.not = icmp sgt i64 %shl.i, %27
  br i1 %cmp.not, label %if.end13, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %if.end11
  %ki_flags = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 4
  %28 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ki_flags, align 8
  %and14 = and i32 %29, 131080
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and14)
  %cmp15 = icmp eq i32 %and14, 8
  br i1 %cmp15, label %if.end13.cleanup_crit_edge, label %if.end17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %sub = sub i64 %shl.i, %27
  %conv = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %conv)
  %cmp20 = icmp slt i64 %sub, %conv
  br i1 %cmp20, label %if.then22, label %if.end17.if.end27_crit_edge

if.end17.if.end27_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then22:                                        ; preds = %if.end17
  %30 = trunc i64 %sub to i32
  %conv26 = sub i32 %25, %30
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %conv)
  %cmp.i = icmp ult i64 %sub, %conv
  br i1 %cmp.i, label %if.then.i, label %if.then22.if.end27_crit_edge

if.then22.if.end27_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then.i:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %count.i, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then.i, %if.then22.if.end27_crit_edge, %if.end17.if.end27_crit_edge
  %shorted.0 = phi i32 [ 0, %if.end17.if.end27_crit_edge ], [ %conv26, %if.then22.if.end27_crit_edge ], [ %conv26, %if.then.i ]
  call void @blk_start_plug(ptr noundef nonnull %plug) #10
  %call28 = call i32 @__generic_file_write_iter(ptr noundef %iocb, ptr noundef %from) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp sgt i32 %call28, 0
  br i1 %cmp29, label %if.then31, label %if.end27.if.end33_crit_edge

if.end27.if.end33_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then31:                                        ; preds = %if.end27
  %32 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ki_flags, align 8
  %and.i = and i32 %33, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i62 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i62, label %if.then31.if.end8.i_crit_edge, label %if.then.i64

if.then31.if.end8.i_crit_edge:                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

if.then.i64:                                      ; preds = %if.then31
  %34 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %iocb, align 8
  %36 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %ki_pos, align 8
  %conv.i6368 = zext i32 %call28 to i64
  %sub.i = sub i64 %37, %conv.i6368
  %sub2.i = add i64 %37, -1
  %and4.i = lshr i32 %33, 2
  %and4.lobit.i = and i32 %and4.i, 1
  %38 = xor i32 %and4.lobit.i, 1
  %call.i = call i32 @vfs_fsync_range(ptr noundef %35, i64 noundef %sub.i, i64 noundef %sub2.i, i32 noundef %38) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %if.then.i64.if.end8.i_crit_edge, label %if.then.i64.if.end33_crit_edge

if.then.i64.if.end33_crit_edge:                   ; preds = %if.then.i64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then.i64.if.end8.i_crit_edge:                  ; preds = %if.then.i64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then.i64.if.end8.i_crit_edge, %if.then31.if.end8.i_crit_edge
  br label %if.end33

if.end33:                                         ; preds = %if.end8.i, %if.then.i64.if.end33_crit_edge, %if.end27.if.end33_crit_edge
  %ret.0 = phi i32 [ %call28, %if.end27.if.end33_crit_edge ], [ %call.i, %if.then.i64.if.end33_crit_edge ], [ %call28, %if.end8.i ]
  %39 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %count.i, align 8
  %add = add i32 %40, %shorted.0
  store i32 %add, ptr %count.i, align 8
  call void @blk_finish_plug(ptr noundef nonnull %plug) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.end13.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %bdev_read_only.exit.cleanup_crit_edge, %lor.rhs.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end33 ], [ -1, %bdev_read_only.exit.cleanup_crit_edge ], [ -26, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ -28, %if.end11.cleanup_crit_edge ], [ -95, %if.end13.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ], [ -1, %lor.rhs.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %plug) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iocb_bio_iopoll(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_ioctl(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blkdev_open(ptr nocapture noundef readonly %inode, ptr noundef %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %f_flags = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7
  %0 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f_flags, align 4
  %or = or i32 %1, 131072
  store i32 %or, ptr %f_flags, align 4
  %f_mode = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 8
  %2 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f_mode, align 8
  %and = and i32 %1, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select.v = select i1 %tobool.not, i32 1207959552, i32 1207959616
  %spec.select = or i32 %spec.select.v, %3
  %and6 = and i32 %1, 128
  %4 = or i32 %and6, %spec.select
  %5 = ptrtoint ptr %f_mode to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %f_mode, align 8
  %and13 = and i32 %1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and13)
  %cmp = icmp eq i32 %and13, 3
  br i1 %cmp, label %if.then14, label %entry.if.end17_crit_edge

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then14:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f_mode, align 8
  %or16 = or i32 %7, 256
  store i32 %or16, ptr %f_mode, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %entry.if.end17_crit_edge
  %i_rdev = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %8 = ptrtoint ptr %i_rdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_rdev, align 8
  %10 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %f_mode, align 8
  %call = tail call ptr @blkdev_get_by_dev(i32 noundef %9, i32 noundef %11, ptr noundef %filp) #10
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %call to i32
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %13 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call, ptr %private_data, align 4
  %bd_inode = getelementptr inbounds %struct.block_device, ptr %call, i32 0, i32 7
  %14 = ptrtoint ptr %bd_inode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bd_inode, align 4
  %i_mapping = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_mapping, align 8
  %f_mapping = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 18
  %18 = ptrtoint ptr %f_mapping to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %f_mapping, align 4
  %wb_err.i = getelementptr inbounds %struct.address_space, ptr %17, i32 0, i32 11
  %call.i = tail call i32 @errseq_sample(ptr noundef %wb_err.i) #10
  %f_wb_err = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 19
  %19 = ptrtoint ptr %f_wb_err to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call.i, ptr %f_wb_err, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then20
  %retval.0 = phi i32 [ %12, %if.then20 ], [ 0, %if.end22 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blkdev_close(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %f_mode = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 8
  %2 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f_mode, align 8
  tail call void @blkdev_put(ptr noundef %1, i32 noundef %3) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blkdev_fsync(ptr noundef %filp, i64 noundef %start, i64 noundef %end, i32 noundef %datasync) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call i32 @file_write_and_wait_range(ptr noundef %filp, i64 noundef %start, i64 noundef %end) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @blkdev_issue_flush(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %call1)
  %cmp = icmp eq i32 %call1, -95
  %spec.store.select = select i1 %cmp, i32 0, i32 %call1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.store.select, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iter_file_splice_write(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_splice_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blkdev_fallocate(ptr nocapture noundef readonly %file, i32 noundef %mode, i64 noundef %start, i64 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mapping.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %0 = ptrtoint ptr %f_mapping.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_mapping.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1 = tail call ptr @I_BDEV(ptr noundef %3) #10
  %add = add i64 %start, -1
  %sub = add i64 %add, %len
  %and = and i32 %mode, -24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %call1, i32 0, i32 1
  %4 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %bd_nr_sectors.i.i, align 8
  %shl.i = shl i64 %5, 9
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i, i64 %start)
  %cmp.not = icmp sgt i64 %shl.i, %start
  br i1 %cmp.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %shl.i)
  %cmp5.not = icmp slt i64 %sub, %shl.i
  br i1 %cmp5.not, label %if.end4.if.end14_crit_edge, label %if.then6

if.end4.if.end14_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then6:                                         ; preds = %if.end4
  %and7 = and i32 %mode, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.then6.cleanup_crit_edge, label %if.then9

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  %sub10 = sub i64 %shl.i, %start
  %sub12 = add i64 %shl.i, -1
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %if.end4.if.end14_crit_edge
  %len.addr.0 = phi i64 [ %sub10, %if.then9 ], [ %len, %if.end4.if.end14_crit_edge ]
  %end.0 = phi i64 [ %sub12, %if.then9 ], [ %sub, %if.end4.if.end14_crit_edge ]
  %or = or i64 %len.addr.0, %start
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %call1, i32 0, i32 18
  %6 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bd_queue.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end14.bdev_logical_block_size.exit_crit_edge, label %land.lhs.true.i.i

if.end14.bdev_logical_block_size.exit_crit_edge:  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %bdev_logical_block_size.exit

land.lhs.true.i.i:                                ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %logical_block_size.i.i = getelementptr inbounds %struct.request_queue, ptr %7, i32 0, i32 37, i32 9
  %8 = ptrtoint ptr %logical_block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %logical_block_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not.i.i = icmp eq i32 %9, 0
  %.op = add i32 %9, -1
  %phi.bo = select i1 %tobool2.not.i.i, i32 511, i32 %.op
  br label %bdev_logical_block_size.exit

bdev_logical_block_size.exit:                     ; preds = %land.lhs.true.i.i, %if.end14.bdev_logical_block_size.exit_crit_edge
  %retval1.0.i.i = phi i32 [ 511, %if.end14.bdev_logical_block_size.exit_crit_edge ], [ %phi.bo, %land.lhs.true.i.i ]
  %conv = zext i32 %retval1.0.i.i to i64
  %and17 = and i64 %or, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and17)
  %tobool18.not = icmp eq i64 %and17, 0
  br i1 %tobool18.not, label %if.end20, label %bdev_logical_block_size.exit.cleanup_crit_edge

bdev_logical_block_size.exit.cleanup_crit_edge:   ; preds = %bdev_logical_block_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end20:                                         ; preds = %bdev_logical_block_size.exit
  %i_mapping = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 9
  %10 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_mapping, align 8
  %invalidate_lock.i = getelementptr inbounds %struct.address_space, ptr %11, i32 0, i32 2
  tail call void @down_write(ptr noundef %invalidate_lock.i) #10
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %12 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %f_mode, align 8
  %call21 = tail call i32 @truncate_bdev_range(ptr noundef %call1, i32 noundef %13, i64 noundef %start, i64 noundef %end.0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.fail_crit_edge

if.end20.fail_crit_edge:                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end24:                                         ; preds = %if.end20
  %14 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mode, label %if.end24.fail_crit_edge [
    i32 16, label %if.end24.sw.bb_crit_edge
    i32 17, label %if.end24.sw.bb_crit_edge68
    i32 3, label %sw.bb27
    i32 7, label %sw.bb31
  ]

if.end24.sw.bb_crit_edge68:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end24.sw.bb_crit_edge:                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end24.fail_crit_edge:                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

sw.bb:                                            ; preds = %if.end24.sw.bb_crit_edge, %if.end24.sw.bb_crit_edge68
  %shr = ashr i64 %start, 9
  %shr25 = ashr i64 %len.addr.0, 9
  %call26 = tail call i32 @blkdev_issue_zeroout(ptr noundef %call1, i64 noundef %shr, i64 noundef %shr25, i32 noundef 3264, i32 noundef 1) #10
  br label %fail

sw.bb27:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %shr28 = ashr i64 %start, 9
  %shr29 = ashr i64 %len.addr.0, 9
  %call30 = tail call i32 @blkdev_issue_zeroout(ptr noundef %call1, i64 noundef %shr28, i64 noundef %shr29, i32 noundef 3264, i32 noundef 2) #10
  br label %fail

sw.bb31:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %shr32 = ashr i64 %start, 9
  %shr33 = ashr i64 %len.addr.0, 9
  %call34 = tail call i32 @blkdev_issue_discard(ptr noundef %call1, i64 noundef %shr32, i64 noundef %shr33, i32 noundef 3264, i32 noundef 0) #10
  br label %fail

fail:                                             ; preds = %sw.bb31, %sw.bb27, %sw.bb, %if.end24.fail_crit_edge, %if.end20.fail_crit_edge
  %error.0 = phi i32 [ %call21, %if.end20.fail_crit_edge ], [ %call34, %sw.bb31 ], [ %call30, %sw.bb27 ], [ %call26, %sw.bb ], [ -95, %if.end24.fail_crit_edge ]
  %15 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_mapping, align 8
  %invalidate_lock.i67 = getelementptr inbounds %struct.address_space, ptr %16, i32 0, i32 2
  tail call void @up_write(ptr noundef %invalidate_lock.i67) #10
  br label %cleanup

cleanup:                                          ; preds = %fail, %bdev_logical_block_size.exit.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %fail ], [ -95, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.then6.cleanup_crit_edge ], [ -22, %bdev_logical_block_size.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @blkdev_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @bioset_init(ptr noundef nonnull @blkdev_dio_pool, i32 noundef 4, i32 noundef 128, i32 noundef 5) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_write_full_page(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blkdev_get_block(ptr noundef %inode, i64 noundef %iblock, ptr noundef %bh, i32 noundef %create) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @I_BDEV(ptr noundef %inode) #10
  %b_bdev = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 6
  %0 = ptrtoint ptr %b_bdev to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %b_bdev, align 8
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %1 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %iblock, ptr %b_blocknr, align 8
  %2 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %bh, align 4
  %4 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.set_buffer_mapped.exit_crit_edge

entry.set_buffer_mapped.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %set_buffer_mapped.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 4, ptr noundef %bh) #10
  br label %set_buffer_mapped.exit

set_buffer_mapped.exit:                           ; preds = %if.then.i, %entry.set_buffer_mapped.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @I_BDEV(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_read_full_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_writepages(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpage_readahead(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_write_begin(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_write_end(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__blkdev_direct_IO_simple(ptr nocapture noundef readonly %iocb, ptr noundef %iter, i32 noundef %nr_pages) #0 align 64 {
entry:
  %inline_vecs = alloca [4 x %struct.bio_vec], align 4
  %bio = alloca %struct.bio, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %inline_vecs) #10
  %4 = call ptr @memset(ptr %inline_vecs, i32 255, i32 48)
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %5 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %ki_pos, align 8
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %bio) #10
  %7 = call ptr @memset(ptr %bio, i32 255, i32 104)
  %call = tail call i32 @iov_iter_alignment(ptr noundef %iter) #10
  %conv = zext i32 %call to i64
  %or = or i64 %6, %conv
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %3, i32 0, i32 18
  %8 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bd_queue.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %entry.bdev_logical_block_size.exit_crit_edge, label %land.lhs.true.i.i

entry.bdev_logical_block_size.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %bdev_logical_block_size.exit

land.lhs.true.i.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %logical_block_size.i.i = getelementptr inbounds %struct.request_queue, ptr %9, i32 0, i32 37, i32 9
  %10 = ptrtoint ptr %logical_block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %logical_block_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool2.not.i.i = icmp eq i32 %11, 0
  %.op = add i32 %11, -1
  %phi.bo = select i1 %tobool2.not.i.i, i32 511, i32 %.op
  br label %bdev_logical_block_size.exit

bdev_logical_block_size.exit:                     ; preds = %land.lhs.true.i.i, %entry.bdev_logical_block_size.exit_crit_edge
  %retval1.0.i.i = phi i32 [ 511, %entry.bdev_logical_block_size.exit_crit_edge ], [ %phi.bo, %land.lhs.true.i.i ]
  %conv2 = zext i32 %retval1.0.i.i to i64
  %and = and i64 %or, %conv2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %bdev_logical_block_size.exit.cleanup_crit_edge

bdev_logical_block_size.exit.cleanup_crit_edge:   ; preds = %bdev_logical_block_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %bdev_logical_block_size.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %nr_pages)
  %cmp = icmp ult i32 %nr_pages, 5
  br i1 %cmp, label %if.end.if.end9_crit_edge, label %if.else

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.else:                                          ; preds = %if.end
  %12 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nr_pages, i32 12) #10
  %13 = extractvalue { i32, i1 } %12, 1
  br i1 %13, label %if.else.cleanup_crit_edge, label %if.end7.i, !prof !33

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7.i:                                        ; preds = %if.else
  %14 = extractvalue { i32, i1 } %12, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %14, i32 noundef 3264) #13
  %tobool6.not = icmp eq ptr %call8.i, null
  br i1 %tobool6.not, label %if.end7.i.cleanup_crit_edge, label %if.end7.i.if.end9_crit_edge

if.end7.i.if.end9_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.end7.i.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %vecs.0 = phi ptr [ %call8.i, %if.end7.i.if.end9_crit_edge ], [ %inline_vecs, %if.end.if.end9_crit_edge ]
  %conv10 = trunc i32 %nr_pages to i16
  call void @bio_init(ptr noundef nonnull %bio, ptr noundef nonnull %vecs.0, i16 noundef zeroext %conv10) #10
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 3
  %15 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %16, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %17 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %18, %3
  br i1 %cmp.not.i, label %if.end9.bio_set_dev.exit_crit_edge, label %if.then.i

if.end9.bio_set_dev.exit_crit_edge:               ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %bio_set_dev.exit

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %conv1.i8.i = and i16 %16, -2177
  %19 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i, %if.end9.bio_set_dev.exit_crit_edge
  %20 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %3, ptr %bi_bdev.i, align 4
  call void @bio_associate_blkg(ptr noundef nonnull %bio) #10
  %shr = ashr i64 %6, 9
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %21 = ptrtoint ptr %bi_iter to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %shr, ptr %bi_iter, align 8
  %ki_hint = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 5
  %22 = ptrtoint ptr %ki_hint to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %ki_hint, align 4
  %bi_write_hint = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 5
  %24 = ptrtoint ptr %bi_write_hint to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %bi_write_hint, align 8
  %25 = call i32 @llvm.read_register.i32(metadata !22) #10
  %and.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task, align 8
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %29 = ptrtoint ptr %bi_private to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %bi_private, align 4
  %bi_end_io = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 10
  %30 = ptrtoint ptr %bi_end_io to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @blkdev_bio_end_io_simple, ptr %bi_end_io, align 8
  %ki_ioprio = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 6
  %31 = ptrtoint ptr %ki_ioprio to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %ki_ioprio, align 2
  %bi_ioprio = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 4
  %33 = ptrtoint ptr %bi_ioprio to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %bi_ioprio, align 2
  %call12 = call i32 @bio_iov_iter_get_pages(ptr noundef nonnull %bio, ptr noundef %iter) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end17, label %bio_set_dev.exit.out_crit_edge, !prof !32

bio_set_dev.exit.out_crit_edge:                   ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end17:                                         ; preds = %bio_set_dev.exit
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %34 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bi_size, align 8
  %data_source.i = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 2
  %36 = ptrtoint ptr %data_source.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %data_source.i, align 2, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp21 = icmp eq i8 %37, 0
  br i1 %cmp21, label %if.then23, label %if.else27

if.then23:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %38 = ptrtoint ptr %bi_opf to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %bi_opf, align 8
  %39 = ptrtoint ptr %iter to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %iter, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp.i = icmp eq i8 %40, 0
  br label %if.end30

if.else27:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %ki_flags.i = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 4
  %41 = ptrtoint ptr %ki_flags.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ki_flags.i, align 8
  %and.i249 = and i32 %42, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i249)
  %tobool.not.i = icmp eq i32 %and.i249, 0
  %spec.select.i = select i1 %tobool.not.i, i32 34817, i32 165889
  %bi_opf29 = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %43 = ptrtoint ptr %bi_opf29 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %spec.select.i, ptr %bi_opf29, align 8
  %conv.i = zext i32 %35 to i64
  %44 = call i32 @llvm.read_register.i32(metadata !22) #10
  %and.i.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %task.i, align 8
  %write_bytes.i = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 155, i32 5
  %48 = ptrtoint ptr %write_bytes.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %write_bytes.i, align 8
  %add.i = add i64 %49, %conv.i
  store i64 %add.i, ptr %write_bytes.i, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.else27, %if.then23
  %should_dirty.0.off0 = phi i1 [ false, %if.else27 ], [ %cmp.i, %if.then23 ]
  %ki_flags = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 4
  %50 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ki_flags, align 8
  %and31 = and i32 %51, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end30.if.end38_crit_edge, label %if.then33

if.end30.if.end38_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %bi_opf34 = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %52 = ptrtoint ptr %bi_opf34 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bi_opf34, align 8
  %54 = or i32 %53, 2097152
  store i32 %54, ptr %bi_opf34, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.then33, %if.end30.if.end38_crit_edge
  %and40 = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end38.if.end43_crit_edge, label %if.then42

if.end38.if.end43_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then42:                                        ; preds = %if.end38
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %55 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %bi_opf.i, align 8
  %57 = or i32 %56, 16777216
  store i32 %57, ptr %bi_opf.i, align 8
  %ki_complete.i.i = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 2
  %58 = ptrtoint ptr %ki_complete.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ki_complete.i.i, align 8
  %cmp.i.i250 = icmp eq ptr %59, null
  br i1 %cmp.i.i250, label %if.then42.if.end43_crit_edge, label %if.then.i251

if.then42.if.end43_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then.i251:                                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  %60 = or i32 %56, 18874368
  %61 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %bi_opf.i, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.then.i251, %if.then42.if.end43_crit_edge, %if.end38.if.end43_crit_edge
  call void @submit_bio(ptr noundef nonnull %bio) #10
  br label %__here

__here:                                           ; preds = %__here.backedge, %if.end43
  %62 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %63, i32 0, i32 212
  %64 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 ptrtoint (ptr blockaddress(@__blkdev_direct_IO_simple, %__here) to i32), ptr %task_state_change, align 4
  %65 = load ptr, ptr %task, align 8
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile i32 2, ptr %65, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !47
  %67 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile ptr, ptr %bi_private, align 4
  %tobool119.not = icmp eq ptr %68, null
  br i1 %tobool119.not, label %__here180, label %if.end121

if.end121:                                        ; preds = %__here
  %69 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %ki_flags, align 8
  %and123 = and i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123)
  %tobool124.not = icmp eq i32 %and123, 0
  br i1 %tobool124.not, label %if.end121.if.then127_crit_edge, label %lor.lhs.false

if.end121.if.then127_crit_edge:                   ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then127

lor.lhs.false:                                    ; preds = %if.end121
  %call125 = call i32 @bio_poll(ptr noundef nonnull %bio, ptr noundef null, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %lor.lhs.false.if.then127_crit_edge, label %lor.lhs.false.__here.backedge_crit_edge

lor.lhs.false.__here.backedge_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here.backedge

lor.lhs.false.if.then127_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then127

if.then127:                                       ; preds = %lor.lhs.false.if.then127_crit_edge, %if.end121.if.then127_crit_edge
  call void @blk_io_schedule() #10
  br label %__here.backedge

__here.backedge:                                  ; preds = %if.then127, %lor.lhs.false.__here.backedge_crit_edge
  br label %__here

__here180:                                        ; preds = %__here
  %71 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %task, align 8
  %task_state_change184 = getelementptr inbounds %struct.task_struct, ptr %72, i32 0, i32 212
  %73 = ptrtoint ptr %task_state_change184 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 ptrtoint (ptr blockaddress(@__blkdev_direct_IO_simple, %__here180) to i32), ptr %task_state_change184, align 4
  %74 = load ptr, ptr %task, align 8
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile i32 0, ptr %74, align 128
  %76 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %bi_flags.i.i, align 4
  %78 = and i16 %77, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %78)
  %cmp.i.not.i = icmp eq i16 %78, 0
  br i1 %cmp.i.not.i, label %if.then.i254, label %__here180.bio_release_pages.exit_crit_edge

__here180.bio_release_pages.exit_crit_edge:       ; preds = %__here180
  call void @__sanitizer_cov_trace_pc() #12
  br label %bio_release_pages.exit

if.then.i254:                                     ; preds = %__here180
  call void @__sanitizer_cov_trace_pc() #12
  call void @__bio_release_pages(ptr noundef nonnull %bio, i1 noundef zeroext %should_dirty.0.off0) #10
  br label %bio_release_pages.exit

bio_release_pages.exit:                           ; preds = %if.then.i254, %__here180.bio_release_pages.exit_crit_edge
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %79 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %bi_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool202.not = icmp eq i8 %80, 0
  br i1 %tobool202.not, label %bio_release_pages.exit.out_crit_edge, label %if.then209, !prof !32

bio_release_pages.exit.out_crit_edge:             ; preds = %bio_release_pages.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then209:                                       ; preds = %bio_release_pages.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call211 = call i32 @blk_status_to_errno(i8 noundef zeroext %80) #10
  br label %out

out:                                              ; preds = %if.then209, %bio_release_pages.exit.out_crit_edge, %bio_set_dev.exit.out_crit_edge
  %ret.0 = phi i32 [ %call12, %bio_set_dev.exit.out_crit_edge ], [ %call211, %if.then209 ], [ %35, %bio_release_pages.exit.out_crit_edge ]
  %cmp214.not = icmp eq ptr %vecs.0, %inline_vecs
  br i1 %cmp214.not, label %out.if.end217_crit_edge, label %if.then216

out.if.end217_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end217

if.then216:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef %vecs.0) #10
  br label %if.end217

if.end217:                                        ; preds = %if.then216, %out.if.end217_crit_edge
  call void @bio_uninit(ptr noundef nonnull %bio) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end217, %if.end7.i.cleanup_crit_edge, %if.else.cleanup_crit_edge, %bdev_logical_block_size.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end217 ], [ -22, %bdev_logical_block_size.exit.cleanup_crit_edge ], [ -12, %if.end7.i.cleanup_crit_edge ], [ -12, %if.else.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %bio) #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %inline_vecs) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__blkdev_direct_IO(ptr noundef %iocb, ptr noundef %iter, i32 noundef %nr_pages) #0 align 64 {
entry:
  %plug = alloca %struct.blk_plug, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %plug) #10
  %4 = call ptr @memset(ptr %plug, i32 255, i32 24)
  %data_source.i = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 2
  %5 = ptrtoint ptr %data_source.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %data_source.i, align 2, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp = icmp eq i8 %6, 0
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %7 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %ki_pos, align 8
  %call2 = tail call i32 @iov_iter_alignment(ptr noundef %iter) #10
  %conv3 = zext i32 %call2 to i64
  %or = or i64 %8, %conv3
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %3, i32 0, i32 18
  %9 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bd_queue.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %entry.bdev_logical_block_size.exit_crit_edge, label %land.lhs.true.i.i

entry.bdev_logical_block_size.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %bdev_logical_block_size.exit

land.lhs.true.i.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %logical_block_size.i.i = getelementptr inbounds %struct.request_queue, ptr %10, i32 0, i32 37, i32 9
  %11 = ptrtoint ptr %logical_block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %logical_block_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool2.not.i.i = icmp eq i32 %12, 0
  %.op = add i32 %12, -1
  %phi.bo = select i1 %tobool2.not.i.i, i32 511, i32 %.op
  br label %bdev_logical_block_size.exit

bdev_logical_block_size.exit:                     ; preds = %land.lhs.true.i.i, %entry.bdev_logical_block_size.exit_crit_edge
  %retval1.0.i.i = phi i32 [ 511, %entry.bdev_logical_block_size.exit_crit_edge ], [ %phi.bo, %land.lhs.true.i.i ]
  %conv5 = zext i32 %retval1.0.i.i to i64
  %and = and i64 %or, %conv5
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %bdev_logical_block_size.exit.cleanup_crit_edge

bdev_logical_block_size.exit.cleanup_crit_edge:   ; preds = %bdev_logical_block_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %bdev_logical_block_size.exit
  %call7 = tail call ptr @bio_alloc_kiocb(ptr noundef %iocb, i16 noundef zeroext 256, ptr noundef nonnull @blkdev_dio_pool) #10
  %add.ptr = getelementptr i8, ptr %call7, i32 -128
  %ref = getelementptr i8, ptr %call7, i32 -120
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #10
  %13 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 1, ptr %ref, align 4
  %bi_flags.i = getelementptr inbounds %struct.bio, ptr %call7, i32 0, i32 3
  %14 = ptrtoint ptr %bi_flags.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %bi_flags.i, align 4
  %16 = or i16 %15, 64
  store i16 %16, ptr %bi_flags.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !48
  %__bi_cnt.i = getelementptr inbounds %struct.bio, ptr %call7, i32 0, i32 19
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %__bi_cnt.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %__bi_cnt.i, i32 1, i32 3, i32 1) #10
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %__bi_cnt.i, ptr %__bi_cnt.i, i32 1, ptr elementtype(i32) %__bi_cnt.i) #10, !srcloc !49
  %ki_complete.i = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 2
  %18 = ptrtoint ptr %ki_complete.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ki_complete.i, align 8
  %cmp.i = icmp eq ptr %19, null
  %flags = getelementptr i8, ptr %call7, i32 -116
  br i1 %cmp.i, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %flags, align 4
  %21 = tail call i32 @llvm.read_register.i32(metadata !22) #10
  %and.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task, align 8
  br label %if.end14

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %flags, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then11
  %storemerge = phi ptr [ %iocb, %if.else ], [ %24, %if.then11 ]
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %storemerge, ptr %add.ptr, align 128
  %size = getelementptr i8, ptr %call7, i32 -124
  %27 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %size, align 4
  br i1 %cmp, label %land.lhs.true, label %if.end14.if.end22_crit_edge

if.end14.if.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

land.lhs.true:                                    ; preds = %if.end14
  %28 = ptrtoint ptr %iter to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %iter, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp.i304 = icmp eq i8 %29, 0
  br i1 %cmp.i304, label %if.then19, label %land.lhs.true.if.end22_crit_edge

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %flags20 = getelementptr i8, ptr %call7, i32 -116
  %30 = ptrtoint ptr %flags20 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags20, align 4
  %or21 = or i32 %31, 1
  store i32 %or21, ptr %flags20, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %land.lhs.true.if.end22_crit_edge, %if.end14.if.end22_crit_edge
  call void @blk_start_plug(ptr noundef nonnull %plug) #10
  %ki_hint = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 5
  %ki_ioprio = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 6
  %ki_flags.i = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 4
  %flags31 = getelementptr i8, ptr %call7, i32 -116
  br label %for.cond

for.cond:                                         ; preds = %if.end59, %if.end22
  %pos.0 = phi i64 [ %8, %if.end22 ], [ %add55, %if.end59 ]
  %bio.0 = phi ptr [ %call7, %if.end22 ], [ %call.i, %if.end59 ]
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %bio.0, i32 0, i32 3
  %32 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %33, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %bio.0, i32 0, i32 1
  %34 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %35, %3
  br i1 %cmp.not.i, label %for.cond.bio_set_dev.exit_crit_edge, label %if.then.i

for.cond.bio_set_dev.exit_crit_edge:              ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %bio_set_dev.exit

if.then.i:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  %conv1.i8.i = and i16 %33, -2177
  %36 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i, %for.cond.bio_set_dev.exit_crit_edge
  %37 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %3, ptr %bi_bdev.i, align 4
  call void @bio_associate_blkg(ptr noundef %bio.0) #10
  %shr = ashr i64 %pos.0, 9
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio.0, i32 0, i32 8
  %38 = ptrtoint ptr %bi_iter to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %shr, ptr %bi_iter, align 8
  %39 = ptrtoint ptr %ki_hint to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %ki_hint, align 4
  %bi_write_hint = getelementptr inbounds %struct.bio, ptr %bio.0, i32 0, i32 5
  %41 = ptrtoint ptr %bi_write_hint to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %bi_write_hint, align 8
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio.0, i32 0, i32 11
  %42 = ptrtoint ptr %bi_private to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %add.ptr, ptr %bi_private, align 4
  %bi_end_io = getelementptr inbounds %struct.bio, ptr %bio.0, i32 0, i32 10
  %43 = ptrtoint ptr %bi_end_io to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @blkdev_bio_end_io, ptr %bi_end_io, align 8
  %44 = ptrtoint ptr %ki_ioprio to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %ki_ioprio, align 2
  %bi_ioprio = getelementptr inbounds %struct.bio, ptr %bio.0, i32 0, i32 4
  %46 = ptrtoint ptr %bi_ioprio to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %bi_ioprio, align 2
  %call23 = call i32 @bio_iov_iter_get_pages(ptr noundef %bio.0, ptr noundef %iter) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end28, label %if.then27, !prof !32

if.then27:                                        ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #12
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio.0, i32 0, i32 6
  %47 = ptrtoint ptr %bi_status to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 10, ptr %bi_status, align 2
  call void @bio_endio(ptr noundef %bio.0) #10
  br label %for.end

if.end28:                                         ; preds = %bio_set_dev.exit
  br i1 %cmp, label %if.then30, label %if.else36

if.then30:                                        ; preds = %if.end28
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio.0, i32 0, i32 2
  %48 = ptrtoint ptr %bi_opf to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %bi_opf, align 8
  %49 = ptrtoint ptr %flags31 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags31, align 4
  %and32 = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.then30.if.end40_crit_edge, label %if.then34

if.then30.if.end40_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then34:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  call void @bio_set_pages_dirty(ptr noundef %bio.0) #10
  br label %if.end40

if.else36:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %ki_flags.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ki_flags.i, align 8
  %and.i305 = and i32 %52, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i305)
  %tobool.not.i = icmp eq i32 %and.i305, 0
  %spec.select.i = select i1 %tobool.not.i, i32 34817, i32 165889
  %bi_opf38 = getelementptr inbounds %struct.bio, ptr %bio.0, i32 0, i32 2
  %53 = ptrtoint ptr %bi_opf38 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %spec.select.i, ptr %bi_opf38, align 8
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio.0, i32 0, i32 8, i32 1
  %54 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %bi_size, align 8
  %conv.i = zext i32 %55 to i64
  %56 = call i32 @llvm.read_register.i32(metadata !22) #10
  %and.i.i = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %task.i, align 8
  %write_bytes.i = getelementptr inbounds %struct.task_struct, ptr %59, i32 0, i32 155, i32 5
  %60 = ptrtoint ptr %write_bytes.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %write_bytes.i, align 8
  %add.i = add i64 %61, %conv.i
  store i64 %add.i, ptr %write_bytes.i, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.else36, %if.then34, %if.then30.if.end40_crit_edge
  %62 = ptrtoint ptr %ki_flags.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %ki_flags.i, align 8
  %and41 = and i32 %63, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end40.if.end48_crit_edge, label %if.then43

if.end40.if.end48_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  %bi_opf44 = getelementptr inbounds %struct.bio, ptr %bio.0, i32 0, i32 2
  %64 = ptrtoint ptr %bi_opf44 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %bi_opf44, align 8
  %66 = or i32 %65, 2097152
  store i32 %66, ptr %bi_opf44, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.then43, %if.end40.if.end48_crit_edge
  %bi_size50 = getelementptr inbounds %struct.bio, ptr %bio.0, i32 0, i32 8, i32 1
  %67 = ptrtoint ptr %bi_size50 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %bi_size50, align 8
  %69 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %size, align 4
  %add = add i32 %70, %68
  store i32 %add, ptr %size, align 4
  %71 = load i32, ptr %bi_size50, align 8
  %72 = ptrtoint ptr %iter to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %iter, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %73)
  %cmp.i.i = icmp eq i8 %73, 2
  br i1 %cmp.i.i, label %if.end48.if.then58_crit_edge, label %bio_iov_vecs_to_alloc.exit

if.end48.if.then58_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then58

bio_iov_vecs_to_alloc.exit:                       ; preds = %if.end48
  %call1.i = call i32 @iov_iter_npages(ptr noundef %iter, i32 noundef 256) #10
  %tobool57.not = icmp eq i32 %call1.i, 0
  br i1 %tobool57.not, label %bio_iov_vecs_to_alloc.exit.if.then58_crit_edge, label %if.end59

bio_iov_vecs_to_alloc.exit.if.then58_crit_edge:   ; preds = %bio_iov_vecs_to_alloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then58

if.then58:                                        ; preds = %bio_iov_vecs_to_alloc.exit.if.then58_crit_edge, %if.end48.if.then58_crit_edge
  call void @submit_bio(ptr noundef %bio.0) #10
  br label %for.end

if.end59:                                         ; preds = %bio_iov_vecs_to_alloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %conv54 = zext i32 %71 to i64
  %add55 = add i64 %pos.0, %conv54
  %call.i.i303 = call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #10
  %74 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #10, !srcloc !49
  call void @submit_bio(ptr noundef %bio.0) #10
  %conv61 = trunc i32 %call1.i to i16
  %call.i = call ptr @bio_alloc_bioset(i32 noundef 3264, i16 noundef zeroext %conv61, ptr noundef nonnull @fs_bio_set) #10
  br label %for.cond

for.end:                                          ; preds = %if.then58, %if.then27
  call void @blk_finish_plug(ptr noundef nonnull %plug) #10
  br i1 %cmp.i, label %for.end.__here_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.end.__here_crit_edge:                         ; preds = %for.end
  br label %__here

__here:                                           ; preds = %if.end144, %for.end.__here_crit_edge
  %75 = call i32 @llvm.read_register.i32(metadata !22) #10
  %and.i306 = and i32 %75, -16384
  %76 = inttoptr i32 %and.i306 to ptr
  %task113 = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %task113 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %task113, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %78, i32 0, i32 212
  %79 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 ptrtoint (ptr blockaddress(@__blkdev_direct_IO, %__here) to i32), ptr %task_state_change, align 4
  %80 = load ptr, ptr %task113, align 8
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile i32 2, ptr %80, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !50
  %82 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile ptr, ptr %add.ptr, align 128
  %tobool142.not = icmp eq ptr %83, null
  br i1 %tobool142.not, label %__here197, label %if.end144

if.end144:                                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #12
  call void @blk_io_schedule() #10
  br label %__here

__here197:                                        ; preds = %__here
  %84 = inttoptr i32 %and.i306 to ptr
  %task113.le = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %task113.le to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %task113.le, align 8
  %task_state_change201 = getelementptr inbounds %struct.task_struct, ptr %86, i32 0, i32 212
  %87 = ptrtoint ptr %task_state_change201 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 ptrtoint (ptr blockaddress(@__blkdev_direct_IO, %__here197) to i32), ptr %task_state_change201, align 4
  %88 = load ptr, ptr %task113.le, align 8
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile i32 0, ptr %88, align 128
  br i1 %tobool24.not, label %if.end223, label %__here197.if.end235_crit_edge

__here197.if.end235_crit_edge:                    ; preds = %__here197
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end235

if.end223:                                        ; preds = %__here197
  %bi_status221 = getelementptr inbounds %struct.bio, ptr %call7, i32 0, i32 6
  %90 = ptrtoint ptr %bi_status221 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %bi_status221, align 2
  %call222 = call i32 @blk_status_to_errno(i8 noundef zeroext %91) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call222)
  %tobool224.not = icmp eq i32 %call222, 0
  br i1 %tobool224.not, label %if.then233, label %if.end223.if.end235_crit_edge, !prof !32

if.end223.if.end235_crit_edge:                    ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end235

if.then233:                                       ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #12
  %92 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %size, align 4
  br label %if.end235

if.end235:                                        ; preds = %if.then233, %if.end223.if.end235_crit_edge, %__here197.if.end235_crit_edge
  %ret.1 = phi i32 [ %93, %if.then233 ], [ %call222, %if.end223.if.end235_crit_edge ], [ %call23, %__here197.if.end235_crit_edge ]
  call void @bio_put(ptr noundef %call7) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end235, %for.end.cleanup_crit_edge, %bdev_logical_block_size.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %if.end235 ], [ -22, %bdev_logical_block_size.exit.cleanup_crit_edge ], [ -529, %for.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %plug) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iov_iter_npages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iov_iter_alignment(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_init(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @blkdev_bio_end_io_simple(ptr noundef %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  store volatile ptr null, ptr %bi_private, align 4
  tail call fastcc void @blk_wake_io_task(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_iov_iter_get_pages(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_poll(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_io_schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_status_to_errno(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_uninit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @blk_wake_io_task(ptr noundef %waiter) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = tail call i32 @llvm.read_register.i32(metadata !22) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %cmp = icmp eq ptr %3, %waiter
  br i1 %cmp, label %__here, label %if.else

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  %call54 = tail call i32 @wake_up_process(ptr noundef %waiter) #10
  br label %if.end55

if.end55:                                         ; preds = %if.else, %__here
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bio_release_pages(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_alloc_kiocb(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @blkdev_bio_end_io_async(ptr noundef %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %bio, i32 -128
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 128
  %private = getelementptr inbounds %struct.kiocb, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr null, ptr %private, align 4
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %3 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bi_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.then, label %if.else, !prof !32

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %size = getelementptr i8, ptr %bio, i32 -124
  %5 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size, align 4
  %conv = sext i32 %6 to i64
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %ki_pos, align 8
  %add = add i64 %8, %conv
  store i64 %add, ptr %ki_pos, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @blk_status_to_errno(i8 noundef zeroext %4) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %6, %if.then ], [ %call, %if.else ]
  %ki_complete = getelementptr inbounds %struct.kiocb, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %ki_complete to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ki_complete, align 8
  tail call void %10(ptr noundef %1, i32 noundef %ret.0) #10
  %flags = getelementptr i8, ptr %bio, i32 -116
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %and = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.else13, label %if.then12

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @bio_check_pages_dirty(ptr noundef %bio) #10
  br label %if.end14

if.else13:                                        ; preds = %if.end
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 3
  %13 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %bi_flags.i.i, align 4
  %15 = and i16 %14, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp.i.not.i = icmp eq i16 %15, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %if.else13.bio_release_pages.exit_crit_edge

if.else13.bio_release_pages.exit_crit_edge:       ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #12
  br label %bio_release_pages.exit

if.then.i:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__bio_release_pages(ptr noundef %bio, i1 noundef zeroext false) #10
  br label %bio_release_pages.exit

bio_release_pages.exit:                           ; preds = %if.then.i, %if.else13.bio_release_pages.exit_crit_edge
  tail call void @bio_put(ptr noundef %bio) #10
  br label %if.end14

if.end14:                                         ; preds = %bio_release_pages.exit, %if.then12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_iov_bvec_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_set_pages_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_check_pages_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @blkdev_bio_end_io(ptr noundef %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %flags = getelementptr inbounds %struct.blkdev_dio, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %4 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bi_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %bi_status3 = getelementptr inbounds %struct.blkdev_dio, ptr %1, i32 0, i32 5, i32 6
  %6 = ptrtoint ptr %bi_status3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bi_status3, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %bi_status3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %5, ptr %bi_status3, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %ref = getelementptr inbounds %struct.blkdev_dio, ptr %1, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !35
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #10
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #10, !srcloc !36
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %9, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then8, label %if.end.if.end43_crit_edge

if.end.if.end43_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then8:                                         ; preds = %if.end
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and10 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 128
  br i1 %tobool11.not, label %if.then12, label %if.else32

if.then12:                                        ; preds = %if.then8
  %private = getelementptr inbounds %struct.kiocb, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr null, ptr %private, align 4
  %bio19 = getelementptr inbounds %struct.blkdev_dio, ptr %1, i32 0, i32 5
  %bi_status20 = getelementptr inbounds %struct.blkdev_dio, ptr %1, i32 0, i32 5, i32 6
  %15 = ptrtoint ptr %bi_status20 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bi_status20, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool21.not = icmp eq i8 %16, 0
  br i1 %tobool21.not, label %if.then25, label %if.else, !prof !32

if.then25:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  %size = getelementptr inbounds %struct.blkdev_dio, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size, align 4
  %conv26 = sext i32 %18 to i64
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %13, i32 0, i32 1
  %19 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %ki_pos, align 8
  %add = add i64 %20, %conv26
  store i64 %add, ptr %ki_pos, align 8
  br label %if.end30

if.else:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  %call29 = tail call i32 @blk_status_to_errno(i8 noundef zeroext %16) #10
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then25
  %ret.0 = phi i32 [ %18, %if.then25 ], [ %call29, %if.else ]
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 128
  %ki_complete = getelementptr inbounds %struct.kiocb, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %ki_complete to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ki_complete, align 8
  tail call void %24(ptr noundef %13, i32 noundef %ret.0) #10
  tail call void @bio_put(ptr noundef %bio19) #10
  br label %if.end43

if.else32:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr null, ptr %1, align 128
  tail call fastcc void @blk_wake_io_task(ptr noundef %13)
  br label %if.end43

if.end43:                                         ; preds = %if.else32, %if.end30, %if.end.if.end43_crit_edge
  br i1 %tobool.not, label %if.else46, label %if.then45

if.then45:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @bio_check_pages_dirty(ptr noundef %bio) #10
  br label %if.end47

if.else46:                                        ; preds = %if.end43
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 3
  %26 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %bi_flags.i.i, align 4
  %28 = and i16 %27, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %cmp.i.not.i = icmp eq i16 %28, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %if.else46.bio_release_pages.exit_crit_edge

if.else46.bio_release_pages.exit_crit_edge:       ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #12
  br label %bio_release_pages.exit

if.then.i:                                        ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__bio_release_pages(ptr noundef %bio, i1 noundef zeroext false) #10
  br label %bio_release_pages.exit

bio_release_pages.exit:                           ; preds = %if.then.i, %if.else46.bio_release_pages.exit_crit_edge
  tail call void @bio_put(ptr noundef %bio) #10
  br label %if.end47

if.end47:                                         ; preds = %bio_release_pages.exit, %if.then45
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_endio(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_alloc_bioset(i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @fixed_size_llseek(ptr noundef, i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @filemap_range_has_writeback(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touch_atime(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @is_hibernate_resume_dev(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__generic_file_write_iter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fsync_range(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blkdev_get_by_dev(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_sample(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blkdev_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_flush(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @truncate_bdev_range(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_zeroout(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_discard(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bioset_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !16, !18, !20}
!llvm.named.register.sp = !{!22}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @def_blk_aops, !1, !"def_blk_aops", i1 false, i1 false}
!1 = !{!"../block/fops.c", i32 433, i32 39}
!2 = !{ptr @def_blk_fops, !3, !"def_blk_fops", i1 false, i1 false}
!3 = !{!"../block/fops.c", i32 691, i32 30}
!4 = !{ptr @__initcall__kmod_fops__325_715_blkdev_init6, !5, !"__initcall__kmod_fops__325_715_blkdev_init6", i1 false, i1 false}
!5 = !{!"../block/fops.c", i32 715, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../include/linux/mm.h", i32 717, i32 2}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../block/fops.c", i32 106, i32 3}
!10 = distinct !{null, !9, !"<string literal>", i1 false, i1 false}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../block/fops.c", i32 112, i32 2}
!13 = distinct !{null, !14, !"__already_done", i1 false, i1 false}
!14 = !{!"../include/linux/blkdev.h", i32 1252, i32 3}
!15 = distinct !{null, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @blkdev_dio_pool, !17, !"blkdev_dio_pool", i1 false, i1 false}
!17 = !{!"../block/fops.c", i32 143, i32 23}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../block/fops.c", i32 270, i32 3}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../block/fops.c", i32 275, i32 2}
!22 = !{!"sp"}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{!"branch_weights", i32 2000, i32 1}
!33 = !{!"branch_weights", i32 1, i32 2000}
!34 = !{i64 2153126614, i64 2153127097, i64 2153126651, i64 2153126707, i64 2153126741, i64 2153126765, i64 2153126806, i64 2153126827, i64 2153126855, i64 2153126889}
!35 = !{i64 2148769094}
!36 = !{i64 2148683803, i64 2148683835, i64 2148683864, i64 2148683898, i64 2148683929, i64 2148683952}
!37 = !{i64 2148769323}
!38 = !{i64 2148281295, i64 2148281300, i64 2148281313, i64 2148281357, i64 2148281391, i64 2148281412}
!39 = !{i8 0, i8 2}
!40 = !{i64 1085298, i64 1085359}
!41 = !{i64 1088030}
!42 = !{i64 1088315}
!43 = !{i64 2153071200}
!44 = !{i64 2153071042}
!45 = !{i64 2153071370}
!46 = !{i64 2149858479}
!47 = !{i64 2155228194}
!48 = !{i64 2154176306}
!49 = !{i64 2148680618, i64 2148680644, i64 2148680673, i64 2148680707, i64 2148680738, i64 2148680761}
!50 = !{i64 2155246235}
