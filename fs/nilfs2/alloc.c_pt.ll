; ModuleID = '/llk/IR_all_yes/fs/nilfs2/alloc.c_pt.bc'
source_filename = "../fs/nilfs2/alloc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%union.anon.77 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.79 = type { ptr }
%struct.nilfs_mdt_info = type { %struct.rw_semaphore, ptr, i32, i32, i32, ptr, ptr, i32, i32 }
%struct.bgl_lock = type { %struct.spinlock, [84 x i8] }
%struct.nilfs_palloc_cache = type { %struct.spinlock, %struct.nilfs_bh_assoc, %struct.nilfs_bh_assoc, %struct.nilfs_bh_assoc }
%struct.nilfs_bh_assoc = type { i32, ptr }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.nilfs_palloc_group_desc = type { i32 }
%struct.nilfs_palloc_req = type { i64, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.64, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.38 }
%struct.llist_node = type { ptr }
%union.anon.38 = type { i32 }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.64 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014%s (ino=%lu): entry number %llu already freed\00", [48 x i8] zeroinitializer }, align 32
@__func__.nilfs_palloc_commit_free_entry = private unnamed_addr constant [31 x i8] c"nilfs_palloc_commit_free_entry\00", align 1
@__func__.nilfs_palloc_abort_alloc_entry = private unnamed_addr constant [31 x i8] c"nilfs_palloc_abort_alloc_entry\00", align 1
@__func__.nilfs_palloc_freev = private unnamed_addr constant [19 x i8] c"nilfs_palloc_freev\00", align 1
@.str.1 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\014error %d deleting block that object (entry=%llu, ino=%lu) belongs to\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014error %d deleting bitmap block of group=%lu, ino=%lu\00", [41 x i8] zeroinitializer }, align 32
@nilfs_palloc_setup_cache.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&cache->lock\00", [19 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@bgl_lock_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&bgl->locks[i].lock\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 616, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 811, i32 5 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 829, i32 5 }
@___asan_gen_.37 = private constant [21 x i8] c"../fs/nilfs2/alloc.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 841, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [35 x i8] c"../include/linux/blockgroup_lock.h\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 32, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 44, i32 2 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @nilfs_palloc_setup_cache.__key, ptr @.str.3, ptr @bgl_lock_init.__key, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_palloc_setup_cache.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bgl_lock_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_palloc_init_blockgroup(ptr noundef %inode, i32 noundef %entry_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3136, i32 noundef 2048) #12
  %mi_bgl = getelementptr inbounds %struct.nilfs_mdt_info, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %mi_bgl to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i, ptr %mi_bgl, align 4
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @bgl_lock_init.__key, i16 noundef signext 3) #9
  %arrayidx.1.i = getelementptr [16 x %struct.bgl_lock], ptr %call7.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx.1.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @bgl_lock_init.__key, i16 noundef signext 3) #9
  %arrayidx.2.i = getelementptr [16 x %struct.bgl_lock], ptr %call7.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx.2.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @bgl_lock_init.__key, i16 noundef signext 3) #9
  %arrayidx.3.i = getelementptr [16 x %struct.bgl_lock], ptr %call7.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx.3.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @bgl_lock_init.__key, i16 noundef signext 3) #9
  %arrayidx.4.i = getelementptr [16 x %struct.bgl_lock], ptr %call7.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx.4.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @bgl_lock_init.__key, i16 noundef signext 3) #9
  %arrayidx.5.i = getelementptr [16 x %struct.bgl_lock], ptr %call7.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx.5.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @bgl_lock_init.__key, i16 noundef signext 3) #9
  %arrayidx.6.i = getelementptr [16 x %struct.bgl_lock], ptr %call7.i, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx.6.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @bgl_lock_init.__key, i16 noundef signext 3) #9
  %arrayidx.7.i = getelementptr [16 x %struct.bgl_lock], ptr %call7.i, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx.7.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @bgl_lock_init.__key, i16 noundef signext 3) #9
  %arrayidx.8.i = getelementptr [16 x %struct.bgl_lock], ptr %call7.i, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx.8.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @bgl_lock_init.__key, i16 noundef signext 3) #9
  %arrayidx.9.i = getelementptr [16 x %struct.bgl_lock], ptr %call7.i, i32 0, i32 9
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx.9.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @bgl_lock_init.__key, i16 noundef signext 3) #9
  %arrayidx.10.i = getelementptr [16 x %struct.bgl_lock], ptr %call7.i, i32 0, i32 10
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx.10.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @bgl_lock_init.__key, i16 noundef signext 3) #9
  %arrayidx.11.i = getelementptr [16 x %struct.bgl_lock], ptr %call7.i, i32 0, i32 11
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx.11.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @bgl_lock_init.__key, i16 noundef signext 3) #9
  %arrayidx.12.i = getelementptr [16 x %struct.bgl_lock], ptr %call7.i, i32 0, i32 12
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx.12.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @bgl_lock_init.__key, i16 noundef signext 3) #9
  %arrayidx.13.i = getelementptr [16 x %struct.bgl_lock], ptr %call7.i, i32 0, i32 13
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx.13.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @bgl_lock_init.__key, i16 noundef signext 3) #9
  %arrayidx.14.i = getelementptr [16 x %struct.bgl_lock], ptr %call7.i, i32 0, i32 14
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx.14.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @bgl_lock_init.__key, i16 noundef signext 3) #9
  %arrayidx.15.i = getelementptr [16 x %struct.bgl_lock], ptr %call7.i, i32 0, i32 15
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx.15.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @bgl_lock_init.__key, i16 noundef signext 3) #9
  tail call void @nilfs_mdt_set_entry_size(ptr noundef %inode, i32 noundef %entry_size, i32 noundef 0) #9
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %4 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %i_blkbits.i, align 2
  %conv.i = zext i8 %5 to i32
  %shl.i = shl i32 8, %conv.i
  %mi_entries_per_block = getelementptr inbounds %struct.nilfs_mdt_info, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %mi_entries_per_block to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mi_entries_per_block, align 4
  %add = add i32 %7, -1
  %sub = add i32 %add, %shl.i
  %div = udiv i32 %sub, %7
  %add6 = add i32 %div, 1
  %mi_blocks_per_group = getelementptr inbounds %struct.nilfs_mdt_info, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %mi_blocks_per_group to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add6, ptr %mi_blocks_per_group, align 4
  %9 = load i8, ptr %i_blkbits.i, align 2
  %conv.i.i = zext i8 %9 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %div1.i = lshr i32 %shl.i.i, 2
  %mul = mul i32 %div1.i, %add6
  %add9 = add i32 %mul, 1
  %mi_blocks_per_desc_block = getelementptr inbounds %struct.nilfs_mdt_info, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %mi_blocks_per_desc_block to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add9, ptr %mi_blocks_per_desc_block, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_mdt_set_entry_size(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_palloc_get_entry_block(ptr noundef %inode, i64 noundef %nr, i32 noundef %create, ptr noundef %bhp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private.i, align 4
  %mi_palloc_cache = getelementptr inbounds %struct.nilfs_mdt_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %mi_palloc_cache to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mi_palloc_cache, align 4
  %i_blkbits.i.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %4 = ptrtoint ptr %i_blkbits.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %i_blkbits.i.i.i, align 2
  %conv.i.i.i = zext i8 %5 to i32
  %shl.i.i.i = shl i32 8, %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %nr)
  %cmp165.i.i = icmp ult i64 %nr, 4294967296
  br i1 %cmp165.i.i, label %if.then169.i.i, label %if.else175.i.i, !prof !29

if.then169.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv170.i.i = trunc i64 %nr to i32
  %6 = add i32 %shl.i.i.i, -1
  %rem171.i.i = and i32 %6, %conv170.i.i
  %7 = add nuw nsw i32 %conv.i.i.i, 3
  %div173274.i.i = lshr i32 %conv170.i.i, %7
  br label %nilfs_palloc_entry_blkoff.exit

if.else175.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %shl.i.i.i, i64 %nr) #13, !srcloc !30
  %asmresult.i263.i.i = extractvalue { i64, i64 } %8, 0
  %asmresult1.i.i.i = extractvalue { i64, i64 } %8, 1
  %shr.i.i.i = lshr i64 %asmresult.i263.i.i, 32
  %conv.i264.i.i = trunc i64 %shr.i.i.i to i32
  %extract.t272.i.i = trunc i64 %asmresult1.i.i.i to i32
  br label %nilfs_palloc_entry_blkoff.exit

nilfs_palloc_entry_blkoff.exit:                   ; preds = %if.else175.i.i, %if.then169.i.i
  %group.0.off0.i.i = phi i32 [ %div173274.i.i, %if.then169.i.i ], [ %extract.t272.i.i, %if.else175.i.i ]
  %__rem.0.i.i = phi i32 [ %rem171.i.i, %if.then169.i.i ], [ %conv.i264.i.i, %if.else175.i.i ]
  %9 = add nsw i32 %conv.i.i.i, -2
  %notmask.i.i = shl nsw i32 -1, %9
  %10 = xor i32 %notmask.i.i, -1
  %rem.i.i = and i32 %group.0.off0.i.i, %10
  %div3.i.i.i = lshr i32 %group.0.off0.i.i, %9
  %mi_blocks_per_desc_block.i.i.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %mi_blocks_per_desc_block.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mi_blocks_per_desc_block.i.i.i, align 4
  %mul.i.i.i = mul i32 %12, %div3.i.i.i
  %mi_blocks_per_group.i.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %mi_blocks_per_group.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mi_blocks_per_group.i.i, align 4
  %mul.i.i = mul i32 %14, %rem.i.i
  %mi_entries_per_block.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %mi_entries_per_block.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mi_entries_per_block.i, align 4
  %div.i = udiv i32 %__rem.0.i.i, %16
  %add3.i.i = add i32 %mul.i.i.i, 2
  %add.i = add i32 %add3.i.i, %mul.i.i
  %add3.i = add i32 %add.i, %div.i
  %prev_entry = getelementptr inbounds %struct.nilfs_palloc_cache, ptr %3, i32 0, i32 3
  %call2 = tail call fastcc i32 @nilfs_palloc_get_block(ptr noundef %inode, i32 noundef %add3.i, i32 noundef %create, ptr noundef null, ptr noundef %bhp, ptr noundef %prev_entry, ptr noundef %3)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nilfs_palloc_get_block(ptr noundef %inode, i32 noundef %blkoff, i32 noundef %create, ptr noundef %init_block, ptr noundef %bhp, ptr nocapture noundef %prev, ptr noundef %lock) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %bh = getelementptr inbounds %struct.nilfs_bh_assoc, ptr %prev, i32 0, i32 1
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bh, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %prev, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %blkoff)
  %cmp = icmp eq i32 %3, %blkoff
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #9, !srcloc !31
  %5 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bh, align 4
  %7 = ptrtoint ptr %bhp to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %bhp, align 4
  br label %cleanup.sink.split

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  %call = tail call i32 @nilfs_mdt_get_block(ptr noundef %inode, i32 noundef %blkoff, i32 noundef %create, ptr noundef %init_block, ptr noundef %bhp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.then5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then5:                                         ; preds = %if.end
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %8 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bh, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.then5.brelse.exit_crit_edge, label %if.then.i

if.then5.brelse.exit_crit_edge:                   ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit

if.then.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__brelse(ptr noundef nonnull %9) #9
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.then5.brelse.exit_crit_edge
  %10 = ptrtoint ptr %bhp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bhp, align 4
  %b_count.i26 = getelementptr inbounds %struct.buffer_head, ptr %11, i32 0, i32 11
  %call.i.i.i27 = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i26, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %b_count.i26, i32 1, i32 3, i32 1) #9
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i26, ptr %b_count.i26, i32 1, ptr elementtype(i32) %b_count.i26) #9, !srcloc !31
  %13 = ptrtoint ptr %bhp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bhp, align 4
  %15 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %bh, align 4
  %16 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %blkoff, ptr %prev, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %brelse.exit, %if.then
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nilfs_palloc_block_get_entry(ptr nocapture noundef readonly %inode, i64 noundef %nr, ptr nocapture noundef readonly %bh, ptr noundef readnone %kaddr) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_blkbits.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %0 = ptrtoint ptr %i_blkbits.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %i_blkbits.i.i, align 2
  %conv.i.i = zext i8 %1 to i32
  %shl.i.i = shl i32 8, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %nr)
  %cmp165.i = icmp ult i64 %nr, 4294967296
  br i1 %cmp165.i, label %if.then169.i, label %if.else175.i, !prof !29

if.then169.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv170.i = trunc i64 %nr to i32
  %2 = add i32 %shl.i.i, -1
  %rem171.i = and i32 %2, %conv170.i
  br label %nilfs_palloc_group.exit

if.else175.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %shl.i.i, i64 %nr) #13, !srcloc !30
  %asmresult.i263.i = extractvalue { i64, i64 } %3, 0
  %shr.i.i = lshr i64 %asmresult.i263.i, 32
  %conv.i264.i = trunc i64 %shr.i.i to i32
  br label %nilfs_palloc_group.exit

nilfs_palloc_group.exit:                          ; preds = %if.else175.i, %if.then169.i
  %__rem.0.i = phi i32 [ %rem171.i, %if.then169.i ], [ %conv.i264.i, %if.else175.i ]
  %i_private.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %4 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_private.i, align 4
  %mi_entries_per_block = getelementptr inbounds %struct.nilfs_mdt_info, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %mi_entries_per_block to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mi_entries_per_block, align 4
  %rem = urem i32 %__rem.0.i, %7
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 5
  %8 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %b_data, align 4
  %10 = ptrtoint ptr %9 to i32
  %and = and i32 %10, 4095
  %add.ptr = getelementptr i8, ptr %kaddr, i32 %and
  %mi_entry_size = getelementptr inbounds %struct.nilfs_mdt_info, ptr %5, i32 0, i32 2
  %11 = ptrtoint ptr %mi_entry_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mi_entry_size, align 4
  %mul = mul i32 %12, %rem
  %add.ptr3 = getelementptr i8, ptr %add.ptr, i32 %mul
  ret ptr %add.ptr3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_palloc_count_max_entries(ptr nocapture noundef readonly %inode, i64 noundef %nused, ptr nocapture noundef writeonly %nmaxp) local_unnamed_addr #0 align 64 {
entry:
  %blknum.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %blknum.i) #9
  %0 = ptrtoint ptr %blknum.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %blknum.i, align 8, !annotation !32
  %i_bmap.i = getelementptr i8, ptr %inode, i32 -584
  %1 = ptrtoint ptr %i_bmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_bmap.i, align 8
  %call1.i = call i32 @nilfs_bmap_last_key(ptr noundef %2, ptr noundef nonnull %blknum.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end, label %nilfs_palloc_count_desc_blocks.exit, !prof !29

nilfs_palloc_count_desc_blocks.exit:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %blknum.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %blknum.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %blknum.i, align 8
  %conv.i = trunc i64 %4 to i32
  %i_private.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %5 = ptrtoint ptr %i_private.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_private.i.i, align 4
  %mi_blocks_per_desc_block.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %mi_blocks_per_desc_block.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mi_blocks_per_desc_block.i, align 4
  %add.i = add i32 %conv.i, -1
  %sub.i = add i32 %add.i, %8
  %div.i = udiv i32 %sub.i, %8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %blknum.i) #9
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %9 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %i_blkbits.i, align 2
  %conv.i29 = zext i8 %10 to i32
  %shl.i = shl i32 8, %conv.i29
  %conv = zext i32 %shl.i to i64
  %shl.i.i = shl nuw i32 1, %conv.i29
  %div1.i = lshr i32 %shl.i.i, 2
  %conv5 = zext i32 %div1.i to i64
  %mul = mul nuw nsw i64 %conv5, %conv
  %conv6 = zext i32 %div.i to i64
  %mul7 = mul i64 %mul, %conv6
  call void @__sanitizer_cov_trace_cmp8(i64 %mul7, i64 %nused)
  %cmp = icmp eq i64 %mul7, %nused
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i = mul i32 %div1.i, %div.i
  %sub.i.i = sub nsw i32 29, %conv.i29
  %mul.highbits.i = lshr i32 %mul.i, %sub.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.highbits.i)
  %cmp.i = icmp eq i32 %mul.highbits.i, 0
  %add = select i1 %cmp.i, i64 %mul, i64 0
  %spec.select = add i64 %add, %nused
  br label %if.end12

if.end12:                                         ; preds = %land.lhs.true, %if.end.if.end12_crit_edge
  %nmax.0 = phi i64 [ %mul7, %if.end.if.end12_crit_edge ], [ %spec.select, %land.lhs.true ]
  call void @__sanitizer_cov_trace_cmp8(i64 %nmax.0, i64 %nused)
  %cmp13 = icmp ult i64 %nmax.0, %nused
  br i1 %cmp13, label %if.end12.cleanup_crit_edge, label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %nmaxp to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %nmax.0, ptr %nmaxp, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end12.cleanup_crit_edge, %nilfs_palloc_count_desc_blocks.exit
  %retval.0 = phi i32 [ 0, %if.end16 ], [ %call1.i, %nilfs_palloc_count_desc_blocks.exit ], [ -34, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_palloc_prepare_alloc_entry(ptr noundef %inode, ptr nocapture noundef %req) local_unnamed_addr #0 align 64 {
entry:
  %desc_bh = alloca ptr, align 4
  %bitmap_bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %desc_bh) #9
  %0 = ptrtoint ptr %desc_bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %desc_bh, align 4, !annotation !32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bitmap_bh) #9
  %1 = ptrtoint ptr %bitmap_bh to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %bitmap_bh, align 4, !annotation !32
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %2 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %i_blkbits.i, align 2
  %conv.i = zext i8 %3 to i32
  %sub.i = sub nsw i32 29, %conv.i
  %shl.i = shl nuw nsw i32 1, %sub.i
  %sub = add i32 %shl.i, -1
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %req, align 8
  %shl.i.i = shl i32 8, %conv.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %5)
  %cmp165.i = icmp ult i64 %5, 4294967296
  br i1 %cmp165.i, label %if.then169.i, label %if.else175.i, !prof !29

if.then169.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv170.i = trunc i64 %5 to i32
  %6 = add i32 %shl.i.i, -1
  %rem171.i = and i32 %6, %conv170.i
  %7 = add nuw nsw i32 %conv.i, 3
  %div173274.i = lshr i32 %conv170.i, %7
  br label %nilfs_palloc_group.exit

if.else175.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %shl.i.i, i64 %5) #13, !srcloc !30
  %asmresult.i263.i = extractvalue { i64, i64 } %8, 0
  %asmresult1.i.i = extractvalue { i64, i64 } %8, 1
  %shr.i.i = lshr i64 %asmresult.i263.i, 32
  %conv.i264.i = trunc i64 %shr.i.i to i32
  %extract.t272.i = trunc i64 %asmresult1.i.i to i32
  br label %nilfs_palloc_group.exit

nilfs_palloc_group.exit:                          ; preds = %if.else175.i, %if.then169.i
  %group.0.off0.i = phi i32 [ %div173274.i, %if.then169.i ], [ %extract.t272.i, %if.else175.i ]
  %__rem.0.i = phi i32 [ %rem171.i, %if.then169.i ], [ %conv.i264.i, %if.else175.i ]
  %i_private.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  br label %for.body

for.body:                                         ; preds = %brelse.exit182.for.body_crit_edge, %nilfs_palloc_group.exit
  %i.0220 = phi i32 [ 0, %nilfs_palloc_group.exit ], [ %add40, %brelse.exit182.for.body_crit_edge ]
  %maxgroup.0219 = phi i32 [ %sub, %nilfs_palloc_group.exit ], [ %maxgroup.1, %brelse.exit182.for.body_crit_edge ]
  %group.0218 = phi i32 [ %group.0.off0.i, %nilfs_palloc_group.exit ], [ %group.2.lcssa, %brelse.exit182.for.body_crit_edge ]
  %group_offset.0217 = phi i32 [ %__rem.0.i, %nilfs_palloc_group.exit ], [ %group_offset.1.lcssa, %brelse.exit182.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %group.0218, i32 %shl.i)
  %cmp3.not = icmp ult i32 %group.0218, %shl.i
  br i1 %cmp3.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %for.body
  %9 = ptrtoint ptr %req to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %req, align 8
  %11 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %i_blkbits.i, align 2
  %conv.i.i98 = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %10)
  %cmp165.i120 = icmp ult i64 %10, 4294967296
  br i1 %cmp165.i120, label %if.then169.i125, label %if.else175.i131, !prof !29

if.then169.i125:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %conv170.i122 = trunc i64 %10 to i32
  %13 = add nuw nsw i32 %conv.i.i98, 3
  %div173274.i124 = lshr i32 %conv170.i122, %13
  br label %nilfs_palloc_group.exit134

if.else175.i131:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i.i99 = shl i32 8, %conv.i.i98
  %14 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %shl.i.i99, i64 %10) #13, !srcloc !30
  %asmresult1.i.i127 = extractvalue { i64, i64 } %14, 1
  %extract.t272.i130 = trunc i64 %asmresult1.i.i127 to i32
  br label %nilfs_palloc_group.exit134

nilfs_palloc_group.exit134:                       ; preds = %if.else175.i131, %if.then169.i125
  %group.0.off0.i132 = phi i32 [ %div173274.i124, %if.then169.i125 ], [ %extract.t272.i130, %if.else175.i131 ]
  %sub6 = add i32 %group.0.off0.i132, -1
  br label %if.end

if.end:                                           ; preds = %nilfs_palloc_group.exit134, %for.body.if.end_crit_edge
  %group.1 = phi i32 [ 0, %nilfs_palloc_group.exit134 ], [ %group.0218, %for.body.if.end_crit_edge ]
  %maxgroup.1 = phi i32 [ %sub6, %nilfs_palloc_group.exit134 ], [ %maxgroup.0219, %for.body.if.end_crit_edge ]
  %15 = ptrtoint ptr %i_private.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_private.i.i, align 4
  %mi_palloc_cache.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %mi_palloc_cache.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mi_palloc_cache.i, align 4
  %19 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %i_blkbits.i, align 2
  %conv.i.i.i.i = zext i8 %20 to i32
  %21 = add nsw i32 %conv.i.i.i.i, -2
  %div3.i.i = lshr i32 %group.1, %21
  %mi_blocks_per_desc_block.i.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %16, i32 0, i32 8
  %22 = ptrtoint ptr %mi_blocks_per_desc_block.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mi_blocks_per_desc_block.i.i, align 4
  %mul.i.i = mul i32 %div3.i.i, %23
  %prev_desc.i = getelementptr inbounds %struct.nilfs_palloc_cache, ptr %18, i32 0, i32 1
  %call2.i = call fastcc i32 @nilfs_palloc_get_block(ptr noundef %inode, i32 noundef %mul.i.i, i32 noundef 1, ptr noundef nonnull @nilfs_palloc_desc_block_init, ptr noundef nonnull %desc_bh, ptr noundef %prev_desc.i, ptr noundef %18) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp8 = icmp slt i32 %call2.i, 0
  br i1 %cmp8, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %24 = ptrtoint ptr %desc_bh to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %desc_bh, align 4
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %b_page, align 8
  call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 44) #9
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %shr.i.i135 = lshr i32 %29, 30
  %30 = zext i32 %shr.i.i135 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i.i135, label %if.end10.if.then.i136_crit_edge [
    i32 2, label %if.end10.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.end10.if.else.i_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.end10.if.then.i136_crit_edge:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i136

is_highmem_idx.exit.i:                            ; preds = %if.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %31 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp2.i.not.i = icmp eq i32 %31, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i136_crit_edge

is_highmem_idx.exit.i.if.then.i136_crit_edge:     ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i136

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then.i136:                                     ; preds = %is_highmem_idx.exit.i.if.then.i136_crit_edge, %if.end10.if.then.i136_crit_edge
  %call5.i = call ptr @page_address(ptr noundef %27) #9
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %if.end10.if.else.i_crit_edge
  %call6.i = call ptr @kmap_high(ptr noundef %27) #9
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i136
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i136 ]
  %32 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %i_blkbits.i, align 2
  %conv.i.i.i = zext i8 %33 to i32
  %shl.i.i.i = shl nuw i32 1, %conv.i.i.i
  %div1.i.i = lshr i32 %shl.i.i.i, 2
  %34 = add nsw i32 %div1.i.i, -1
  %rem.i139 = and i32 %34, %group.1
  %sub.i140 = sub nsw i32 %div1.i.i, %rem.i139
  %sub2.i = sub i32 1, %group.1
  %add.i = add i32 %sub2.i, %maxgroup.1
  %35 = call i32 @llvm.umin.i32(i32 %sub.i140, i32 %add.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp15205.not = icmp eq i32 %35, 0
  br i1 %cmp15205.not, label %kmap.exit.for.end_crit_edge, label %for.body16.preheader

kmap.exit.for.end_crit_edge:                      ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body16.preheader:                             ; preds = %kmap.exit
  %36 = ptrtoint ptr %desc_bh to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %desc_bh, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %b_data.i, align 4
  %40 = ptrtoint ptr %39 to i32
  %and.i = and i32 %40, 4095
  %add.ptr.i = getelementptr i8, ptr %addr.0.i, i32 %and.i
  %41 = add nsw i32 %conv.i.i.i, -2
  %notmask.i = shl nsw i32 -1, %41
  %42 = xor i32 %notmask.i, -1
  %rem.i = and i32 %group.1, %42
  %add.ptr1.i = getelementptr %struct.nilfs_palloc_group_desc, ptr %add.ptr.i, i32 %rem.i
  br label %for.body16

for.body16:                                       ; preds = %if.end36.for.body16_crit_edge, %for.body16.preheader
  %j.0215 = phi i32 [ %inc, %if.end36.for.body16_crit_edge ], [ 0, %for.body16.preheader ]
  %group.2211 = phi i32 [ %inc37, %if.end36.for.body16_crit_edge ], [ %group.1, %for.body16.preheader ]
  %desc.0207 = phi ptr [ %incdec.ptr, %if.end36.for.body16_crit_edge ], [ %add.ptr1.i, %for.body16.preheader ]
  %group_offset.1206 = phi i32 [ 0, %if.end36.for.body16_crit_edge ], [ %group_offset.0217, %for.body16.preheader ]
  %43 = ptrtoint ptr %i_private.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i_private.i.i, align 4
  %mi_bgl.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %mi_bgl.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mi_bgl.i, align 4
  %and.i.i = and i32 %group.2211, 15
  %arrayidx.i.i = getelementptr [16 x %struct.bgl_lock], ptr %46, i32 0, i32 %and.i.i
  call void @_raw_spin_lock(ptr noundef %arrayidx.i.i) #9
  %47 = ptrtoint ptr %desc.0207 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %desc.0207, align 4
  call void @_raw_spin_unlock(ptr noundef %arrayidx.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp19.not = icmp eq i32 %48, 0
  br i1 %cmp19.not, label %for.body16.if.end36_crit_edge, label %if.then20

for.body16.if.end36_crit_edge:                    ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then20:                                        ; preds = %for.body16
  %49 = ptrtoint ptr %i_private.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %i_private.i.i, align 4
  %mi_palloc_cache.i143 = getelementptr inbounds %struct.nilfs_mdt_info, ptr %50, i32 0, i32 5
  %51 = ptrtoint ptr %mi_palloc_cache.i143 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mi_palloc_cache.i143, align 4
  %53 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %i_blkbits.i, align 2
  %conv.i.i.i.i145 = zext i8 %54 to i32
  %55 = add nsw i32 %conv.i.i.i.i145, -2
  %notmask.i.i = shl nsw i32 -1, %55
  %56 = xor i32 %notmask.i.i, -1
  %rem.i.i = and i32 %group.2211, %56
  %div3.i.i.i = lshr i32 %group.2211, %55
  %mi_blocks_per_desc_block.i.i.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %50, i32 0, i32 8
  %57 = ptrtoint ptr %mi_blocks_per_desc_block.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %mi_blocks_per_desc_block.i.i.i, align 4
  %mul.i.i.i = mul i32 %div3.i.i.i, %58
  %add.i.i = add i32 %mul.i.i.i, 1
  %mi_blocks_per_group.i.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %50, i32 0, i32 7
  %59 = ptrtoint ptr %mi_blocks_per_group.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %mi_blocks_per_group.i.i, align 4
  %mul.i.i146 = mul i32 %rem.i.i, %60
  %add3.i.i = add i32 %add.i.i, %mul.i.i146
  %prev_bitmap.i = getelementptr inbounds %struct.nilfs_palloc_cache, ptr %52, i32 0, i32 2
  %call2.i147 = call fastcc i32 @nilfs_palloc_get_block(ptr noundef %inode, i32 noundef %add3.i.i, i32 noundef 1, ptr noundef null, ptr noundef nonnull %bitmap_bh, ptr noundef %prev_bitmap.i, ptr noundef %52) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i147)
  %cmp22 = icmp slt i32 %call2.i147, 0
  br i1 %cmp22, label %out_desc, label %if.end24

if.end24:                                         ; preds = %if.then20
  %61 = ptrtoint ptr %bitmap_bh to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bitmap_bh, align 4
  %b_page25 = getelementptr inbounds %struct.buffer_head, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %b_page25 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %b_page25, align 8
  call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 44) #9
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 4
  %shr.i.i148 = lshr i32 %66, 30
  %67 = zext i32 %shr.i.i148 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %shr.i.i148, label %if.end24.if.then.i152_crit_edge [
    i32 2, label %if.end24.if.else.i154_crit_edge
    i32 3, label %is_highmem_idx.exit.i150
  ]

if.end24.if.else.i154_crit_edge:                  ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i154

if.end24.if.then.i152_crit_edge:                  ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i152

is_highmem_idx.exit.i150:                         ; preds = %if.end24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %68 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %68)
  %cmp2.i.not.i149 = icmp eq i32 %68, 2
  br i1 %cmp2.i.not.i149, label %is_highmem_idx.exit.i150.if.else.i154_crit_edge, label %is_highmem_idx.exit.i150.if.then.i152_crit_edge

is_highmem_idx.exit.i150.if.then.i152_crit_edge:  ; preds = %is_highmem_idx.exit.i150
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i152

is_highmem_idx.exit.i150.if.else.i154_crit_edge:  ; preds = %is_highmem_idx.exit.i150
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i154

if.then.i152:                                     ; preds = %is_highmem_idx.exit.i150.if.then.i152_crit_edge, %if.end24.if.then.i152_crit_edge
  %call5.i151 = call ptr @page_address(ptr noundef %64) #9
  br label %kmap.exit156

if.else.i154:                                     ; preds = %is_highmem_idx.exit.i150.if.else.i154_crit_edge, %if.end24.if.else.i154_crit_edge
  %call6.i153 = call ptr @kmap_high(ptr noundef %64) #9
  br label %kmap.exit156

kmap.exit156:                                     ; preds = %if.else.i154, %if.then.i152
  %addr.0.i155 = phi ptr [ %call6.i153, %if.else.i154 ], [ %call5.i151, %if.then.i152 ]
  %69 = ptrtoint ptr %bitmap_bh to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %bitmap_bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %70, i32 0, i32 5
  %71 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %b_data, align 4
  %73 = ptrtoint ptr %72 to i32
  %and = and i32 %73, 4095
  %add.ptr = getelementptr i8, ptr %addr.0.i155, i32 %and
  call void @__sanitizer_cov_trace_cmp4(i32 %group_offset.1206, i32 %shl.i.i)
  %cmp.i = icmp ult i32 %group_offset.1206, %shl.i.i
  br i1 %cmp.i, label %kmap.exit156.do.body.i_crit_edge, label %kmap.exit156.if.end9.i_crit_edge, !prof !29

kmap.exit156.if.end9.i_crit_edge:                 ; preds = %kmap.exit156
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i

kmap.exit156.do.body.i_crit_edge:                 ; preds = %kmap.exit156
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %kmap.exit156.do.body.i_crit_edge
  %pos.0.i = phi i32 [ %inc.i, %do.cond.i.do.body.i_crit_edge ], [ %group_offset.1206, %kmap.exit156.do.body.i_crit_edge ]
  %call.i.i = call i32 @_find_next_zero_bit_le(ptr noundef %add.ptr, i32 noundef %shl.i.i, i32 noundef %pos.0.i) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %shl.i.i)
  %cmp2.not.i = icmp slt i32 %call.i.i, %shl.i.i
  br i1 %cmp2.not.i, label %if.end.i, label %do.body.i.if.end9.i_crit_edge

do.body.i.if.end9.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i

if.end.i:                                         ; preds = %do.body.i
  %xor.i.i = xor i32 %call.i.i, 24
  %call.i1.i = call i32 @_test_and_set_bit(i32 noundef %xor.i.i, ptr noundef %add.ptr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %tobool5.not.i = icmp eq i32 %call.i1.i, 0
  br i1 %tobool5.not.i, label %if.end.i.nilfs_palloc_find_available_slot.exit_crit_edge, label %do.cond.i

if.end.i.nilfs_palloc_find_available_slot.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_palloc_find_available_slot.exit

do.cond.i:                                        ; preds = %if.end.i
  %inc.i = add nsw i32 %call.i.i, 1
  %cmp8.i = icmp slt i32 %inc.i, %shl.i.i
  br i1 %cmp8.i, label %do.cond.i.do.body.i_crit_edge, label %do.cond.i.if.end9.i_crit_edge

do.cond.i.if.end9.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

if.end9.i:                                        ; preds = %do.cond.i.if.end9.i_crit_edge, %do.body.i.if.end9.i_crit_edge, %kmap.exit156.if.end9.i_crit_edge
  %end.0.i = phi i32 [ %shl.i.i, %kmap.exit156.if.end9.i_crit_edge ], [ %group_offset.1206, %do.body.i.if.end9.i_crit_edge ], [ %group_offset.1206, %do.cond.i.if.end9.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %end.0.i)
  %cmp107.i = icmp sgt i32 %end.0.i, 0
  br i1 %cmp107.i, label %if.end9.i.for.body.i_crit_edge, label %if.end9.i.if.end34_crit_edge

if.end9.i.if.end34_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.end9.i.for.body.i_crit_edge:                   ; preds = %if.end9.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end9.i.for.body.i_crit_edge
  %pos.18.i = phi i32 [ %inc19.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end9.i.for.body.i_crit_edge ]
  %call.i2.i = call i32 @_find_next_zero_bit_le(ptr noundef %add.ptr, i32 noundef %end.0.i, i32 noundef %pos.18.i) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i2.i, i32 %end.0.i)
  %cmp12.not.i = icmp slt i32 %call.i2.i, %end.0.i
  br i1 %cmp12.not.i, label %if.end14.i, label %for.body.i.if.end34_crit_edge

for.body.i.if.end34_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.end14.i:                                       ; preds = %for.body.i
  %xor.i3.i = xor i32 %call.i2.i, 24
  %call.i4.i = call i32 @_test_and_set_bit(i32 noundef %xor.i3.i, ptr noundef %add.ptr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i)
  %tobool16.not.i = icmp eq i32 %call.i4.i, 0
  br i1 %tobool16.not.i, label %if.end14.i.nilfs_palloc_find_available_slot.exit_crit_edge, label %for.inc.i

if.end14.i.nilfs_palloc_find_available_slot.exit_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_palloc_find_available_slot.exit

for.inc.i:                                        ; preds = %if.end14.i
  %inc19.i = add nsw i32 %call.i2.i, 1
  %cmp10.i = icmp slt i32 %inc19.i, %end.0.i
  br i1 %cmp10.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end34_crit_edge

for.inc.i.if.end34_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

nilfs_palloc_find_available_slot.exit:            ; preds = %if.end14.i.nilfs_palloc_find_available_slot.exit_crit_edge, %if.end.i.nilfs_palloc_find_available_slot.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i2.i, %if.end14.i.nilfs_palloc_find_available_slot.exit_crit_edge ], [ %call.i.i, %if.end.i.nilfs_palloc_find_available_slot.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp28 = icmp sgt i32 %retval.0.i, -1
  br i1 %cmp28, label %if.then29, label %nilfs_palloc_find_available_slot.exit.if.end34_crit_edge

nilfs_palloc_find_available_slot.exit.if.end34_crit_edge: ; preds = %nilfs_palloc_find_available_slot.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then29:                                        ; preds = %nilfs_palloc_find_available_slot.exit
  call void @_raw_spin_lock(ptr noundef %arrayidx.i.i) #9
  %74 = ptrtoint ptr %desc.0207 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %desc.0207, align 4
  %76 = call i32 @llvm.bswap.i32(i32 %75) #9
  %add.i.i157 = add i32 %76, -1
  %77 = call i32 @llvm.bswap.i32(i32 %add.i.i157) #9
  %78 = ptrtoint ptr %desc.0207 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %desc.0207, align 4
  call void @_raw_spin_unlock(ptr noundef %arrayidx.i.i) #9
  %mul = mul i32 %group.2211, %shl.i.i
  %add = add i32 %retval.0.i, %mul
  %conv = zext i32 %add to i64
  %79 = ptrtoint ptr %req to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %conv, ptr %req, align 8
  %80 = ptrtoint ptr %desc_bh to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %desc_bh, align 4
  %b_page32 = getelementptr inbounds %struct.buffer_head, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %b_page32 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %b_page32, align 8
  call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 55) #9
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %83, align 4
  %shr.i.i158 = lshr i32 %85, 30
  %86 = zext i32 %shr.i.i158 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %shr.i.i158, label %if.then29.kunmap.exit_crit_edge [
    i32 2, label %if.then29.if.end.i161_crit_edge
    i32 3, label %is_highmem_idx.exit.i160
  ]

if.then29.if.end.i161_crit_edge:                  ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i161

if.then29.kunmap.exit_crit_edge:                  ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit

is_highmem_idx.exit.i160:                         ; preds = %if.then29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %87 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %87)
  %cmp2.i.not.i159 = icmp eq i32 %87, 2
  br i1 %cmp2.i.not.i159, label %is_highmem_idx.exit.i160.if.end.i161_crit_edge, label %is_highmem_idx.exit.i160.kunmap.exit_crit_edge

is_highmem_idx.exit.i160.kunmap.exit_crit_edge:   ; preds = %is_highmem_idx.exit.i160
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit

is_highmem_idx.exit.i160.if.end.i161_crit_edge:   ; preds = %is_highmem_idx.exit.i160
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i161

if.end.i161:                                      ; preds = %is_highmem_idx.exit.i160.if.end.i161_crit_edge, %if.then29.if.end.i161_crit_edge
  call void @kunmap_high(ptr noundef %83) #9
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i161, %is_highmem_idx.exit.i160.kunmap.exit_crit_edge, %if.then29.kunmap.exit_crit_edge
  %88 = ptrtoint ptr %bitmap_bh to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %bitmap_bh, align 4
  %b_page33 = getelementptr inbounds %struct.buffer_head, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %b_page33 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %b_page33, align 8
  call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 55) #9
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %91, align 4
  %shr.i.i162 = lshr i32 %93, 30
  %94 = zext i32 %shr.i.i162 to i64
  call void @__sanitizer_cov_trace_switch(i64 %94, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %shr.i.i162, label %kunmap.exit.kunmap.exit166_crit_edge [
    i32 2, label %kunmap.exit.if.end.i165_crit_edge
    i32 3, label %is_highmem_idx.exit.i164
  ]

kunmap.exit.if.end.i165_crit_edge:                ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i165

kunmap.exit.kunmap.exit166_crit_edge:             ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit166

is_highmem_idx.exit.i164:                         ; preds = %kunmap.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %95 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %95)
  %cmp2.i.not.i163 = icmp eq i32 %95, 2
  br i1 %cmp2.i.not.i163, label %is_highmem_idx.exit.i164.if.end.i165_crit_edge, label %is_highmem_idx.exit.i164.kunmap.exit166_crit_edge

is_highmem_idx.exit.i164.kunmap.exit166_crit_edge: ; preds = %is_highmem_idx.exit.i164
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit166

is_highmem_idx.exit.i164.if.end.i165_crit_edge:   ; preds = %is_highmem_idx.exit.i164
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i165

if.end.i165:                                      ; preds = %is_highmem_idx.exit.i164.if.end.i165_crit_edge, %kunmap.exit.if.end.i165_crit_edge
  call void @kunmap_high(ptr noundef %91) #9
  br label %kunmap.exit166

kunmap.exit166:                                   ; preds = %if.end.i165, %is_highmem_idx.exit.i164.kunmap.exit166_crit_edge, %kunmap.exit.kunmap.exit166_crit_edge
  %96 = ptrtoint ptr %desc_bh to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %desc_bh, align 4
  %pr_desc_bh = getelementptr inbounds %struct.nilfs_palloc_req, ptr %req, i32 0, i32 1
  %98 = ptrtoint ptr %pr_desc_bh to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %97, ptr %pr_desc_bh, align 8
  %99 = ptrtoint ptr %bitmap_bh to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %bitmap_bh, align 4
  %pr_bitmap_bh = getelementptr inbounds %struct.nilfs_palloc_req, ptr %req, i32 0, i32 2
  %101 = ptrtoint ptr %pr_bitmap_bh to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %100, ptr %pr_bitmap_bh, align 4
  br label %cleanup

if.end34:                                         ; preds = %nilfs_palloc_find_available_slot.exit.if.end34_crit_edge, %for.inc.i.if.end34_crit_edge, %for.body.i.if.end34_crit_edge, %if.end9.i.if.end34_crit_edge
  %102 = ptrtoint ptr %bitmap_bh to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %bitmap_bh, align 4
  %b_page35 = getelementptr inbounds %struct.buffer_head, ptr %103, i32 0, i32 2
  %104 = ptrtoint ptr %b_page35 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %b_page35, align 8
  call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 55) #9
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %105, align 4
  %shr.i.i167 = lshr i32 %107, 30
  %108 = zext i32 %shr.i.i167 to i64
  call void @__sanitizer_cov_trace_switch(i64 %108, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %shr.i.i167, label %if.end34.kunmap.exit171_crit_edge [
    i32 2, label %if.end34.if.end.i170_crit_edge
    i32 3, label %is_highmem_idx.exit.i169
  ]

if.end34.if.end.i170_crit_edge:                   ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i170

if.end34.kunmap.exit171_crit_edge:                ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit171

is_highmem_idx.exit.i169:                         ; preds = %if.end34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %109 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %109)
  %cmp2.i.not.i168 = icmp eq i32 %109, 2
  br i1 %cmp2.i.not.i168, label %is_highmem_idx.exit.i169.if.end.i170_crit_edge, label %is_highmem_idx.exit.i169.kunmap.exit171_crit_edge

is_highmem_idx.exit.i169.kunmap.exit171_crit_edge: ; preds = %is_highmem_idx.exit.i169
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit171

is_highmem_idx.exit.i169.if.end.i170_crit_edge:   ; preds = %is_highmem_idx.exit.i169
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i170

if.end.i170:                                      ; preds = %is_highmem_idx.exit.i169.if.end.i170_crit_edge, %if.end34.if.end.i170_crit_edge
  call void @kunmap_high(ptr noundef %105) #9
  br label %kunmap.exit171

kunmap.exit171:                                   ; preds = %if.end.i170, %is_highmem_idx.exit.i169.kunmap.exit171_crit_edge, %if.end34.kunmap.exit171_crit_edge
  %110 = ptrtoint ptr %bitmap_bh to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %bitmap_bh, align 4
  %tobool.not.i = icmp eq ptr %111, null
  br i1 %tobool.not.i, label %kunmap.exit171.if.end36_crit_edge, label %if.then.i172

kunmap.exit171.if.end36_crit_edge:                ; preds = %kunmap.exit171
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then.i172:                                     ; preds = %kunmap.exit171
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %111) #9
  br label %if.end36

if.end36:                                         ; preds = %if.then.i172, %kunmap.exit171.if.end36_crit_edge, %for.body16.if.end36_crit_edge
  %inc = add nuw i32 %j.0215, 1
  %incdec.ptr = getelementptr %struct.nilfs_palloc_group_desc, ptr %desc.0207, i32 1
  %inc37 = add i32 %group.2211, 1
  %exitcond.not = icmp eq i32 %inc, %35
  br i1 %exitcond.not, label %if.end36.for.end_crit_edge, label %if.end36.for.body16_crit_edge

if.end36.for.body16_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body16

if.end36.for.end_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end36.for.end_crit_edge, %kmap.exit.for.end_crit_edge
  %group_offset.1.lcssa = phi i32 [ %group_offset.0217, %kmap.exit.for.end_crit_edge ], [ 0, %if.end36.for.end_crit_edge ]
  %group.2.lcssa = phi i32 [ %group.1, %kmap.exit.for.end_crit_edge ], [ %inc37, %if.end36.for.end_crit_edge ]
  %112 = ptrtoint ptr %desc_bh to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %desc_bh, align 4
  %b_page38 = getelementptr inbounds %struct.buffer_head, ptr %113, i32 0, i32 2
  %114 = ptrtoint ptr %b_page38 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %b_page38, align 8
  call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 55) #9
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %115, align 4
  %shr.i.i174 = lshr i32 %117, 30
  %118 = zext i32 %shr.i.i174 to i64
  call void @__sanitizer_cov_trace_switch(i64 %118, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %shr.i.i174, label %for.end.kunmap.exit178_crit_edge [
    i32 2, label %for.end.if.end.i177_crit_edge
    i32 3, label %is_highmem_idx.exit.i176
  ]

for.end.if.end.i177_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i177

for.end.kunmap.exit178_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit178

is_highmem_idx.exit.i176:                         ; preds = %for.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %119 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %119)
  %cmp2.i.not.i175 = icmp eq i32 %119, 2
  br i1 %cmp2.i.not.i175, label %is_highmem_idx.exit.i176.if.end.i177_crit_edge, label %is_highmem_idx.exit.i176.kunmap.exit178_crit_edge

is_highmem_idx.exit.i176.kunmap.exit178_crit_edge: ; preds = %is_highmem_idx.exit.i176
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit178

is_highmem_idx.exit.i176.if.end.i177_crit_edge:   ; preds = %is_highmem_idx.exit.i176
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i177

if.end.i177:                                      ; preds = %is_highmem_idx.exit.i176.if.end.i177_crit_edge, %for.end.if.end.i177_crit_edge
  call void @kunmap_high(ptr noundef %115) #9
  br label %kunmap.exit178

kunmap.exit178:                                   ; preds = %if.end.i177, %is_highmem_idx.exit.i176.kunmap.exit178_crit_edge, %for.end.kunmap.exit178_crit_edge
  %120 = ptrtoint ptr %desc_bh to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %desc_bh, align 4
  %tobool.not.i179 = icmp eq ptr %121, null
  br i1 %tobool.not.i179, label %kunmap.exit178.brelse.exit182_crit_edge, label %if.then.i180

kunmap.exit178.brelse.exit182_crit_edge:          ; preds = %kunmap.exit178
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit182

if.then.i180:                                     ; preds = %kunmap.exit178
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %121) #9
  br label %brelse.exit182

brelse.exit182:                                   ; preds = %if.then.i180, %kunmap.exit178.brelse.exit182_crit_edge
  %add40 = add i32 %35, %i.0220
  %cmp = icmp ult i32 %add40, %shl.i
  br i1 %cmp, label %brelse.exit182.for.body_crit_edge, label %brelse.exit182.cleanup_crit_edge

brelse.exit182.cleanup_crit_edge:                 ; preds = %brelse.exit182
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

brelse.exit182.for.body_crit_edge:                ; preds = %brelse.exit182
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

out_desc:                                         ; preds = %if.then20
  %122 = ptrtoint ptr %desc_bh to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %desc_bh, align 4
  %b_page42 = getelementptr inbounds %struct.buffer_head, ptr %123, i32 0, i32 2
  %124 = ptrtoint ptr %b_page42 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %b_page42, align 8
  call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 55) #9
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %125, align 4
  %shr.i.i183 = lshr i32 %127, 30
  %128 = zext i32 %shr.i.i183 to i64
  call void @__sanitizer_cov_trace_switch(i64 %128, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %shr.i.i183, label %out_desc.kunmap.exit187_crit_edge [
    i32 2, label %out_desc.if.end.i186_crit_edge
    i32 3, label %is_highmem_idx.exit.i185
  ]

out_desc.if.end.i186_crit_edge:                   ; preds = %out_desc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i186

out_desc.kunmap.exit187_crit_edge:                ; preds = %out_desc
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit187

is_highmem_idx.exit.i185:                         ; preds = %out_desc
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %129 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %129)
  %cmp2.i.not.i184 = icmp eq i32 %129, 2
  br i1 %cmp2.i.not.i184, label %is_highmem_idx.exit.i185.if.end.i186_crit_edge, label %is_highmem_idx.exit.i185.kunmap.exit187_crit_edge

is_highmem_idx.exit.i185.kunmap.exit187_crit_edge: ; preds = %is_highmem_idx.exit.i185
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit187

is_highmem_idx.exit.i185.if.end.i186_crit_edge:   ; preds = %is_highmem_idx.exit.i185
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i186

if.end.i186:                                      ; preds = %is_highmem_idx.exit.i185.if.end.i186_crit_edge, %out_desc.if.end.i186_crit_edge
  call void @kunmap_high(ptr noundef %125) #9
  br label %kunmap.exit187

kunmap.exit187:                                   ; preds = %if.end.i186, %is_highmem_idx.exit.i185.kunmap.exit187_crit_edge, %out_desc.kunmap.exit187_crit_edge
  %130 = ptrtoint ptr %desc_bh to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %desc_bh, align 4
  %tobool.not.i188 = icmp eq ptr %131, null
  br i1 %tobool.not.i188, label %kunmap.exit187.cleanup_crit_edge, label %if.then.i189

kunmap.exit187.cleanup_crit_edge:                 ; preds = %kunmap.exit187
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i189:                                     ; preds = %kunmap.exit187
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %131) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i189, %kunmap.exit187.cleanup_crit_edge, %brelse.exit182.cleanup_crit_edge, %kunmap.exit166, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %kunmap.exit166 ], [ %call2.i147, %kunmap.exit187.cleanup_crit_edge ], [ %call2.i147, %if.then.i189 ], [ -28, %brelse.exit182.cleanup_crit_edge ], [ %call2.i, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bitmap_bh) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %desc_bh) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nilfs_palloc_commit_alloc_entry(ptr noundef %inode, ptr nocapture noundef readonly %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pr_bitmap_bh = getelementptr inbounds %struct.nilfs_palloc_req, ptr %req, i32 0, i32 2
  %0 = ptrtoint ptr %pr_bitmap_bh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pr_bitmap_bh, align 4
  tail call void @mark_buffer_dirty(ptr noundef %1) #9
  %pr_desc_bh = getelementptr inbounds %struct.nilfs_palloc_req, ptr %req, i32 0, i32 1
  %2 = ptrtoint ptr %pr_desc_bh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pr_desc_bh, align 8
  tail call void @mark_buffer_dirty(ptr noundef %3) #9
  %i_state.i = getelementptr i8, ptr %inode, i32 -588
  %4 = ptrtoint ptr %i_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %i_state.i, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.nilfs_mdt_mark_dirty.exit_crit_edge

entry.nilfs_mdt_mark_dirty.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_mdt_mark_dirty.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 1, ptr noundef %i_state.i) #9
  br label %nilfs_mdt_mark_dirty.exit

nilfs_mdt_mark_dirty.exit:                        ; preds = %if.then.i, %entry.nilfs_mdt_mark_dirty.exit_crit_edge
  %7 = ptrtoint ptr %pr_bitmap_bh to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pr_bitmap_bh, align 4
  %tobool.not.i6 = icmp eq ptr %8, null
  br i1 %tobool.not.i6, label %nilfs_mdt_mark_dirty.exit.brelse.exit_crit_edge, label %if.then.i7

nilfs_mdt_mark_dirty.exit.brelse.exit_crit_edge:  ; preds = %nilfs_mdt_mark_dirty.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit

if.then.i7:                                       ; preds = %nilfs_mdt_mark_dirty.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__brelse(ptr noundef nonnull %8) #9
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i7, %nilfs_mdt_mark_dirty.exit.brelse.exit_crit_edge
  %9 = ptrtoint ptr %pr_desc_bh to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pr_desc_bh, align 8
  %tobool.not.i8 = icmp eq ptr %10, null
  br i1 %tobool.not.i8, label %brelse.exit.brelse.exit10_crit_edge, label %if.then.i9

brelse.exit.brelse.exit10_crit_edge:              ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit10

if.then.i9:                                       ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__brelse(ptr noundef nonnull %10) #9
  br label %brelse.exit10

brelse.exit10:                                    ; preds = %if.then.i9, %brelse.exit.brelse.exit10_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nilfs_palloc_commit_free_entry(ptr noundef %inode, ptr nocapture noundef readonly %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %req, align 8
  %i_blkbits.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %2 = ptrtoint ptr %i_blkbits.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %i_blkbits.i.i, align 2
  %conv.i.i = zext i8 %3 to i32
  %shl.i.i = shl i32 8, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %1)
  %cmp165.i = icmp ult i64 %1, 4294967296
  br i1 %cmp165.i, label %if.then169.i, label %if.else175.i, !prof !29

if.then169.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv170.i = trunc i64 %1 to i32
  %4 = add i32 %shl.i.i, -1
  %rem171.i = and i32 %4, %conv170.i
  %5 = add nuw nsw i32 %conv.i.i, 3
  %div173274.i = lshr i32 %conv170.i, %5
  br label %nilfs_palloc_group.exit

if.else175.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %shl.i.i, i64 %1) #13, !srcloc !30
  %asmresult.i263.i = extractvalue { i64, i64 } %6, 0
  %asmresult1.i.i = extractvalue { i64, i64 } %6, 1
  %shr.i.i = lshr i64 %asmresult.i263.i, 32
  %conv.i264.i = trunc i64 %shr.i.i to i32
  %extract.t272.i = trunc i64 %asmresult1.i.i to i32
  br label %nilfs_palloc_group.exit

nilfs_palloc_group.exit:                          ; preds = %if.else175.i, %if.then169.i
  %group.0.off0.i = phi i32 [ %div173274.i, %if.then169.i ], [ %extract.t272.i, %if.else175.i ]
  %__rem.0.i = phi i32 [ %rem171.i, %if.then169.i ], [ %conv.i264.i, %if.else175.i ]
  %pr_desc_bh = getelementptr inbounds %struct.nilfs_palloc_req, ptr %req, i32 0, i32 1
  %7 = ptrtoint ptr %pr_desc_bh to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pr_desc_bh, align 8
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %b_page, align 8
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 44) #9
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %shr.i.i36 = lshr i32 %12, 30
  %13 = zext i32 %shr.i.i36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %shr.i.i36, label %nilfs_palloc_group.exit.if.then.i37_crit_edge [
    i32 2, label %nilfs_palloc_group.exit.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

nilfs_palloc_group.exit.if.else.i_crit_edge:      ; preds = %nilfs_palloc_group.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

nilfs_palloc_group.exit.if.then.i37_crit_edge:    ; preds = %nilfs_palloc_group.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i37

is_highmem_idx.exit.i:                            ; preds = %nilfs_palloc_group.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %14 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp2.i.not.i = icmp eq i32 %14, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i37_crit_edge

is_highmem_idx.exit.i.if.then.i37_crit_edge:      ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i37

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then.i37:                                      ; preds = %is_highmem_idx.exit.i.if.then.i37_crit_edge, %nilfs_palloc_group.exit.if.then.i37_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %10) #9
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %nilfs_palloc_group.exit.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %10) #9
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i37
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i37 ]
  %15 = ptrtoint ptr %pr_desc_bh to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pr_desc_bh, align 8
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %b_data.i, align 4
  %19 = ptrtoint ptr %18 to i32
  %and.i = and i32 %19, 4095
  %add.ptr.i = getelementptr i8, ptr %addr.0.i, i32 %and.i
  %20 = ptrtoint ptr %i_blkbits.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %i_blkbits.i.i, align 2
  %conv.i.i.i = zext i8 %21 to i32
  %22 = add nsw i32 %conv.i.i.i, -2
  %notmask.i = shl nsw i32 -1, %22
  %23 = xor i32 %notmask.i, -1
  %rem.i = and i32 %group.0.off0.i, %23
  %add.ptr1.i = getelementptr %struct.nilfs_palloc_group_desc, ptr %add.ptr.i, i32 %rem.i
  %pr_bitmap_bh = getelementptr inbounds %struct.nilfs_palloc_req, ptr %req, i32 0, i32 2
  %24 = ptrtoint ptr %pr_bitmap_bh to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pr_bitmap_bh, align 4
  %b_page4 = getelementptr inbounds %struct.buffer_head, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %b_page4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %b_page4, align 8
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 44) #9
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %shr.i.i38 = lshr i32 %29, 30
  %30 = zext i32 %shr.i.i38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %shr.i.i38, label %kmap.exit.if.then.i42_crit_edge [
    i32 2, label %kmap.exit.if.else.i44_crit_edge
    i32 3, label %is_highmem_idx.exit.i40
  ]

kmap.exit.if.else.i44_crit_edge:                  ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i44

kmap.exit.if.then.i42_crit_edge:                  ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i42

is_highmem_idx.exit.i40:                          ; preds = %kmap.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %31 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp2.i.not.i39 = icmp eq i32 %31, 2
  br i1 %cmp2.i.not.i39, label %is_highmem_idx.exit.i40.if.else.i44_crit_edge, label %is_highmem_idx.exit.i40.if.then.i42_crit_edge

is_highmem_idx.exit.i40.if.then.i42_crit_edge:    ; preds = %is_highmem_idx.exit.i40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i42

is_highmem_idx.exit.i40.if.else.i44_crit_edge:    ; preds = %is_highmem_idx.exit.i40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i44

if.then.i42:                                      ; preds = %is_highmem_idx.exit.i40.if.then.i42_crit_edge, %kmap.exit.if.then.i42_crit_edge
  %call5.i41 = tail call ptr @page_address(ptr noundef %27) #9
  br label %kmap.exit46

if.else.i44:                                      ; preds = %is_highmem_idx.exit.i40.if.else.i44_crit_edge, %kmap.exit.if.else.i44_crit_edge
  %call6.i43 = tail call ptr @kmap_high(ptr noundef %27) #9
  br label %kmap.exit46

kmap.exit46:                                      ; preds = %if.else.i44, %if.then.i42
  %addr.0.i45 = phi ptr [ %call6.i43, %if.else.i44 ], [ %call5.i41, %if.then.i42 ]
  %32 = ptrtoint ptr %pr_bitmap_bh to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pr_bitmap_bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %b_data, align 4
  %36 = ptrtoint ptr %35 to i32
  %and = and i32 %36, 4095
  %add.ptr = getelementptr i8, ptr %addr.0.i45, i32 %and
  %i_private.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %37 = ptrtoint ptr %i_private.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %i_private.i.i, align 4
  %mi_bgl.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %mi_bgl.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mi_bgl.i, align 4
  %xor.i = xor i32 %__rem.0.i, 24
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef %xor.i, ptr noundef %add.ptr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %kmap.exit46
  call void @__sanitizer_cov_trace_pc() #11
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %41 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i_sb, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %43 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %i_ino, align 8
  %45 = ptrtoint ptr %req to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %req, align 8
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %42, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.nilfs_palloc_commit_free_entry, i32 noundef %44, i64 noundef %46) #9
  br label %if.end

if.else:                                          ; preds = %kmap.exit46
  call void @__sanitizer_cov_trace_pc() #11
  %and.i.i = and i32 %group.0.off0.i, 15
  %arrayidx.i.i = getelementptr [16 x %struct.bgl_lock], ptr %40, i32 0, i32 %and.i.i
  tail call void @_raw_spin_lock(ptr noundef %arrayidx.i.i) #9
  %47 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %add.ptr1.i, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #9
  %add.i.i = add i32 %49, 1
  %50 = tail call i32 @llvm.bswap.i32(i32 %add.i.i) #9
  %51 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %add.ptr1.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx.i.i) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %52 = ptrtoint ptr %pr_bitmap_bh to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pr_bitmap_bh, align 4
  %b_page12 = getelementptr inbounds %struct.buffer_head, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %b_page12 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %b_page12, align 8
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 55) #9
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 4
  %shr.i.i47 = lshr i32 %57, 30
  %58 = zext i32 %shr.i.i47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %shr.i.i47, label %if.end.kunmap.exit_crit_edge [
    i32 2, label %if.end.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i49
  ]

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.kunmap.exit_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit

is_highmem_idx.exit.i49:                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %59 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %59)
  %cmp2.i.not.i48 = icmp eq i32 %59, 2
  br i1 %cmp2.i.not.i48, label %is_highmem_idx.exit.i49.if.end.i_crit_edge, label %is_highmem_idx.exit.i49.kunmap.exit_crit_edge

is_highmem_idx.exit.i49.kunmap.exit_crit_edge:    ; preds = %is_highmem_idx.exit.i49
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit

is_highmem_idx.exit.i49.if.end.i_crit_edge:       ; preds = %is_highmem_idx.exit.i49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i49.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  tail call void @kunmap_high(ptr noundef %55) #9
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i49.kunmap.exit_crit_edge, %if.end.kunmap.exit_crit_edge
  %60 = ptrtoint ptr %pr_desc_bh to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pr_desc_bh, align 8
  %b_page14 = getelementptr inbounds %struct.buffer_head, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %b_page14 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %b_page14, align 8
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 55) #9
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 4
  %shr.i.i50 = lshr i32 %65, 30
  %66 = zext i32 %shr.i.i50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %shr.i.i50, label %kunmap.exit.kunmap.exit54_crit_edge [
    i32 2, label %kunmap.exit.if.end.i53_crit_edge
    i32 3, label %is_highmem_idx.exit.i52
  ]

kunmap.exit.if.end.i53_crit_edge:                 ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i53

kunmap.exit.kunmap.exit54_crit_edge:              ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit54

is_highmem_idx.exit.i52:                          ; preds = %kunmap.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %67 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %67)
  %cmp2.i.not.i51 = icmp eq i32 %67, 2
  br i1 %cmp2.i.not.i51, label %is_highmem_idx.exit.i52.if.end.i53_crit_edge, label %is_highmem_idx.exit.i52.kunmap.exit54_crit_edge

is_highmem_idx.exit.i52.kunmap.exit54_crit_edge:  ; preds = %is_highmem_idx.exit.i52
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit54

is_highmem_idx.exit.i52.if.end.i53_crit_edge:     ; preds = %is_highmem_idx.exit.i52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i53

if.end.i53:                                       ; preds = %is_highmem_idx.exit.i52.if.end.i53_crit_edge, %kunmap.exit.if.end.i53_crit_edge
  tail call void @kunmap_high(ptr noundef %63) #9
  br label %kunmap.exit54

kunmap.exit54:                                    ; preds = %if.end.i53, %is_highmem_idx.exit.i52.kunmap.exit54_crit_edge, %kunmap.exit.kunmap.exit54_crit_edge
  %68 = ptrtoint ptr %pr_desc_bh to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pr_desc_bh, align 8
  tail call void @mark_buffer_dirty(ptr noundef %69) #9
  %70 = ptrtoint ptr %pr_bitmap_bh to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pr_bitmap_bh, align 4
  tail call void @mark_buffer_dirty(ptr noundef %71) #9
  %i_state.i = getelementptr i8, ptr %inode, i32 -588
  %72 = ptrtoint ptr %i_state.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %i_state.i, align 4
  %74 = and i32 %73, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.not.i = icmp eq i32 %74, 0
  br i1 %tobool.not.i, label %if.then.i55, label %kunmap.exit54.nilfs_mdt_mark_dirty.exit_crit_edge

kunmap.exit54.nilfs_mdt_mark_dirty.exit_crit_edge: ; preds = %kunmap.exit54
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_mdt_mark_dirty.exit

if.then.i55:                                      ; preds = %kunmap.exit54
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 1, ptr noundef %i_state.i) #9
  br label %nilfs_mdt_mark_dirty.exit

nilfs_mdt_mark_dirty.exit:                        ; preds = %if.then.i55, %kunmap.exit54.nilfs_mdt_mark_dirty.exit_crit_edge
  %75 = ptrtoint ptr %pr_bitmap_bh to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pr_bitmap_bh, align 4
  %tobool.not.i57 = icmp eq ptr %76, null
  br i1 %tobool.not.i57, label %nilfs_mdt_mark_dirty.exit.brelse.exit_crit_edge, label %if.then.i58

nilfs_mdt_mark_dirty.exit.brelse.exit_crit_edge:  ; preds = %nilfs_mdt_mark_dirty.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit

if.then.i58:                                      ; preds = %nilfs_mdt_mark_dirty.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__brelse(ptr noundef nonnull %76) #9
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i58, %nilfs_mdt_mark_dirty.exit.brelse.exit_crit_edge
  %77 = ptrtoint ptr %pr_desc_bh to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pr_desc_bh, align 8
  %tobool.not.i60 = icmp eq ptr %78, null
  br i1 %tobool.not.i60, label %brelse.exit.brelse.exit63_crit_edge, label %if.then.i61

brelse.exit.brelse.exit63_crit_edge:              ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit63

if.then.i61:                                      ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__brelse(ptr noundef nonnull %78) #9
  br label %brelse.exit63

brelse.exit63:                                    ; preds = %if.then.i61, %brelse.exit.brelse.exit63_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__nilfs_msg(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nilfs_palloc_abort_alloc_entry(ptr nocapture noundef readonly %inode, ptr nocapture noundef %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %req, align 8
  %i_blkbits.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %2 = ptrtoint ptr %i_blkbits.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %i_blkbits.i.i, align 2
  %conv.i.i = zext i8 %3 to i32
  %shl.i.i = shl i32 8, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %1)
  %cmp165.i = icmp ult i64 %1, 4294967296
  br i1 %cmp165.i, label %if.then169.i, label %if.else175.i, !prof !29

if.then169.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv170.i = trunc i64 %1 to i32
  %4 = add i32 %shl.i.i, -1
  %rem171.i = and i32 %4, %conv170.i
  %5 = add nuw nsw i32 %conv.i.i, 3
  %div173274.i = lshr i32 %conv170.i, %5
  br label %nilfs_palloc_group.exit

if.else175.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %shl.i.i, i64 %1) #13, !srcloc !30
  %asmresult.i263.i = extractvalue { i64, i64 } %6, 0
  %asmresult1.i.i = extractvalue { i64, i64 } %6, 1
  %shr.i.i = lshr i64 %asmresult.i263.i, 32
  %conv.i264.i = trunc i64 %shr.i.i to i32
  %extract.t272.i = trunc i64 %asmresult1.i.i to i32
  br label %nilfs_palloc_group.exit

nilfs_palloc_group.exit:                          ; preds = %if.else175.i, %if.then169.i
  %group.0.off0.i = phi i32 [ %div173274.i, %if.then169.i ], [ %extract.t272.i, %if.else175.i ]
  %__rem.0.i = phi i32 [ %rem171.i, %if.then169.i ], [ %conv.i264.i, %if.else175.i ]
  %pr_desc_bh = getelementptr inbounds %struct.nilfs_palloc_req, ptr %req, i32 0, i32 1
  %7 = ptrtoint ptr %pr_desc_bh to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pr_desc_bh, align 8
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %b_page, align 8
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 44) #9
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %shr.i.i37 = lshr i32 %12, 30
  %13 = zext i32 %shr.i.i37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %shr.i.i37, label %nilfs_palloc_group.exit.if.then.i38_crit_edge [
    i32 2, label %nilfs_palloc_group.exit.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

nilfs_palloc_group.exit.if.else.i_crit_edge:      ; preds = %nilfs_palloc_group.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

nilfs_palloc_group.exit.if.then.i38_crit_edge:    ; preds = %nilfs_palloc_group.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i38

is_highmem_idx.exit.i:                            ; preds = %nilfs_palloc_group.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %14 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp2.i.not.i = icmp eq i32 %14, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i38_crit_edge

is_highmem_idx.exit.i.if.then.i38_crit_edge:      ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i38

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then.i38:                                      ; preds = %is_highmem_idx.exit.i.if.then.i38_crit_edge, %nilfs_palloc_group.exit.if.then.i38_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %10) #9
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %nilfs_palloc_group.exit.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %10) #9
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i38
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i38 ]
  %15 = ptrtoint ptr %pr_desc_bh to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pr_desc_bh, align 8
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %b_data.i, align 4
  %19 = ptrtoint ptr %18 to i32
  %and.i = and i32 %19, 4095
  %add.ptr.i = getelementptr i8, ptr %addr.0.i, i32 %and.i
  %20 = ptrtoint ptr %i_blkbits.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %i_blkbits.i.i, align 2
  %conv.i.i.i = zext i8 %21 to i32
  %22 = add nsw i32 %conv.i.i.i, -2
  %notmask.i = shl nsw i32 -1, %22
  %23 = xor i32 %notmask.i, -1
  %rem.i = and i32 %group.0.off0.i, %23
  %add.ptr1.i = getelementptr %struct.nilfs_palloc_group_desc, ptr %add.ptr.i, i32 %rem.i
  %pr_bitmap_bh = getelementptr inbounds %struct.nilfs_palloc_req, ptr %req, i32 0, i32 2
  %24 = ptrtoint ptr %pr_bitmap_bh to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pr_bitmap_bh, align 4
  %b_page4 = getelementptr inbounds %struct.buffer_head, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %b_page4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %b_page4, align 8
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 44) #9
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %shr.i.i39 = lshr i32 %29, 30
  %30 = zext i32 %shr.i.i39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %shr.i.i39, label %kmap.exit.if.then.i43_crit_edge [
    i32 2, label %kmap.exit.if.else.i45_crit_edge
    i32 3, label %is_highmem_idx.exit.i41
  ]

kmap.exit.if.else.i45_crit_edge:                  ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i45

kmap.exit.if.then.i43_crit_edge:                  ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i43

is_highmem_idx.exit.i41:                          ; preds = %kmap.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %31 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp2.i.not.i40 = icmp eq i32 %31, 2
  br i1 %cmp2.i.not.i40, label %is_highmem_idx.exit.i41.if.else.i45_crit_edge, label %is_highmem_idx.exit.i41.if.then.i43_crit_edge

is_highmem_idx.exit.i41.if.then.i43_crit_edge:    ; preds = %is_highmem_idx.exit.i41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i43

is_highmem_idx.exit.i41.if.else.i45_crit_edge:    ; preds = %is_highmem_idx.exit.i41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i45

if.then.i43:                                      ; preds = %is_highmem_idx.exit.i41.if.then.i43_crit_edge, %kmap.exit.if.then.i43_crit_edge
  %call5.i42 = tail call ptr @page_address(ptr noundef %27) #9
  br label %kmap.exit47

if.else.i45:                                      ; preds = %is_highmem_idx.exit.i41.if.else.i45_crit_edge, %kmap.exit.if.else.i45_crit_edge
  %call6.i44 = tail call ptr @kmap_high(ptr noundef %27) #9
  br label %kmap.exit47

kmap.exit47:                                      ; preds = %if.else.i45, %if.then.i43
  %addr.0.i46 = phi ptr [ %call6.i44, %if.else.i45 ], [ %call5.i42, %if.then.i43 ]
  %32 = ptrtoint ptr %pr_bitmap_bh to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pr_bitmap_bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %b_data, align 4
  %36 = ptrtoint ptr %35 to i32
  %and = and i32 %36, 4095
  %add.ptr = getelementptr i8, ptr %addr.0.i46, i32 %and
  %i_private.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %37 = ptrtoint ptr %i_private.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %i_private.i.i, align 4
  %mi_bgl.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %mi_bgl.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mi_bgl.i, align 4
  %xor.i = xor i32 %__rem.0.i, 24
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef %xor.i, ptr noundef %add.ptr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %kmap.exit47
  call void @__sanitizer_cov_trace_pc() #11
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %41 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i_sb, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %43 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %i_ino, align 8
  %45 = ptrtoint ptr %req to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %req, align 8
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %42, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.nilfs_palloc_abort_alloc_entry, i32 noundef %44, i64 noundef %46) #9
  br label %if.end

if.else:                                          ; preds = %kmap.exit47
  call void @__sanitizer_cov_trace_pc() #11
  %and.i.i = and i32 %group.0.off0.i, 15
  %arrayidx.i.i = getelementptr [16 x %struct.bgl_lock], ptr %40, i32 0, i32 %and.i.i
  tail call void @_raw_spin_lock(ptr noundef %arrayidx.i.i) #9
  %47 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %add.ptr1.i, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #9
  %add.i.i = add i32 %49, 1
  %50 = tail call i32 @llvm.bswap.i32(i32 %add.i.i) #9
  %51 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %add.ptr1.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx.i.i) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %52 = ptrtoint ptr %pr_bitmap_bh to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pr_bitmap_bh, align 4
  %b_page12 = getelementptr inbounds %struct.buffer_head, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %b_page12 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %b_page12, align 8
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 55) #9
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 4
  %shr.i.i48 = lshr i32 %57, 30
  %58 = zext i32 %shr.i.i48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %shr.i.i48, label %if.end.kunmap.exit_crit_edge [
    i32 2, label %if.end.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i50
  ]

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.kunmap.exit_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit

is_highmem_idx.exit.i50:                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %59 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %59)
  %cmp2.i.not.i49 = icmp eq i32 %59, 2
  br i1 %cmp2.i.not.i49, label %is_highmem_idx.exit.i50.if.end.i_crit_edge, label %is_highmem_idx.exit.i50.kunmap.exit_crit_edge

is_highmem_idx.exit.i50.kunmap.exit_crit_edge:    ; preds = %is_highmem_idx.exit.i50
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit

is_highmem_idx.exit.i50.if.end.i_crit_edge:       ; preds = %is_highmem_idx.exit.i50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i50.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  tail call void @kunmap_high(ptr noundef %55) #9
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i50.kunmap.exit_crit_edge, %if.end.kunmap.exit_crit_edge
  %60 = ptrtoint ptr %pr_desc_bh to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pr_desc_bh, align 8
  %b_page14 = getelementptr inbounds %struct.buffer_head, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %b_page14 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %b_page14, align 8
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 55) #9
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 4
  %shr.i.i51 = lshr i32 %65, 30
  %66 = zext i32 %shr.i.i51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %shr.i.i51, label %kunmap.exit.kunmap.exit55_crit_edge [
    i32 2, label %kunmap.exit.if.end.i54_crit_edge
    i32 3, label %is_highmem_idx.exit.i53
  ]

kunmap.exit.if.end.i54_crit_edge:                 ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i54

kunmap.exit.kunmap.exit55_crit_edge:              ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit55

is_highmem_idx.exit.i53:                          ; preds = %kunmap.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %67 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %67)
  %cmp2.i.not.i52 = icmp eq i32 %67, 2
  br i1 %cmp2.i.not.i52, label %is_highmem_idx.exit.i53.if.end.i54_crit_edge, label %is_highmem_idx.exit.i53.kunmap.exit55_crit_edge

is_highmem_idx.exit.i53.kunmap.exit55_crit_edge:  ; preds = %is_highmem_idx.exit.i53
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit55

is_highmem_idx.exit.i53.if.end.i54_crit_edge:     ; preds = %is_highmem_idx.exit.i53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i54

if.end.i54:                                       ; preds = %is_highmem_idx.exit.i53.if.end.i54_crit_edge, %kunmap.exit.if.end.i54_crit_edge
  tail call void @kunmap_high(ptr noundef %63) #9
  br label %kunmap.exit55

kunmap.exit55:                                    ; preds = %if.end.i54, %is_highmem_idx.exit.i53.kunmap.exit55_crit_edge, %kunmap.exit.kunmap.exit55_crit_edge
  %68 = ptrtoint ptr %pr_bitmap_bh to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pr_bitmap_bh, align 4
  %tobool.not.i = icmp eq ptr %69, null
  br i1 %tobool.not.i, label %kunmap.exit55.brelse.exit_crit_edge, label %if.then.i56

kunmap.exit55.brelse.exit_crit_edge:              ; preds = %kunmap.exit55
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit

if.then.i56:                                      ; preds = %kunmap.exit55
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__brelse(ptr noundef nonnull %69) #9
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i56, %kunmap.exit55.brelse.exit_crit_edge
  %70 = ptrtoint ptr %pr_desc_bh to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pr_desc_bh, align 8
  %tobool.not.i58 = icmp eq ptr %71, null
  br i1 %tobool.not.i58, label %brelse.exit.brelse.exit61_crit_edge, label %if.then.i59

brelse.exit.brelse.exit61_crit_edge:              ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit61

if.then.i59:                                      ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__brelse(ptr noundef nonnull %71) #9
  br label %brelse.exit61

brelse.exit61:                                    ; preds = %if.then.i59, %brelse.exit.brelse.exit61_crit_edge
  %72 = call ptr @memset(ptr %req, i32 0, i32 16)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_palloc_prepare_free_entry(ptr noundef %inode, ptr nocapture noundef %req) local_unnamed_addr #0 align 64 {
entry:
  %desc_bh = alloca ptr, align 4
  %bitmap_bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %desc_bh) #9
  %0 = ptrtoint ptr %desc_bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %desc_bh, align 4, !annotation !32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bitmap_bh) #9
  %1 = ptrtoint ptr %bitmap_bh to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %bitmap_bh, align 4, !annotation !32
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %req, align 8
  %i_blkbits.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %4 = ptrtoint ptr %i_blkbits.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %i_blkbits.i.i, align 2
  %conv.i.i = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %3)
  %cmp165.i = icmp ult i64 %3, 4294967296
  br i1 %cmp165.i, label %if.then169.i, label %if.else175.i, !prof !29

if.then169.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv170.i = trunc i64 %3 to i32
  %6 = add nuw nsw i32 %conv.i.i, 3
  %div173274.i = lshr i32 %conv170.i, %6
  br label %nilfs_palloc_group.exit

if.else175.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i.i = shl i32 8, %conv.i.i
  %7 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %shl.i.i, i64 %3) #13, !srcloc !30
  %asmresult1.i.i = extractvalue { i64, i64 } %7, 1
  %extract.t272.i = trunc i64 %asmresult1.i.i to i32
  br label %nilfs_palloc_group.exit

nilfs_palloc_group.exit:                          ; preds = %if.else175.i, %if.then169.i
  %group.0.off0.i = phi i32 [ %div173274.i, %if.then169.i ], [ %extract.t272.i, %if.else175.i ]
  %i_private.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %8 = ptrtoint ptr %i_private.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_private.i.i, align 4
  %mi_palloc_cache.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %mi_palloc_cache.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mi_palloc_cache.i, align 4
  %12 = add nsw i32 %conv.i.i, -2
  %div3.i.i = lshr i32 %group.0.off0.i, %12
  %mi_blocks_per_desc_block.i.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %9, i32 0, i32 8
  %13 = ptrtoint ptr %mi_blocks_per_desc_block.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mi_blocks_per_desc_block.i.i, align 4
  %mul.i.i = mul i32 %14, %div3.i.i
  %prev_desc.i = getelementptr inbounds %struct.nilfs_palloc_cache, ptr %11, i32 0, i32 1
  %call2.i = call fastcc i32 @nilfs_palloc_get_block(ptr noundef %inode, i32 noundef %mul.i.i, i32 noundef 1, ptr noundef nonnull @nilfs_palloc_desc_block_init, ptr noundef nonnull %desc_bh, ptr noundef %prev_desc.i, ptr noundef %11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %nilfs_palloc_group.exit.cleanup_crit_edge, label %if.end

nilfs_palloc_group.exit.cleanup_crit_edge:        ; preds = %nilfs_palloc_group.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %nilfs_palloc_group.exit
  %15 = ptrtoint ptr %i_private.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_private.i.i, align 4
  %mi_palloc_cache.i19 = getelementptr inbounds %struct.nilfs_mdt_info, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %mi_palloc_cache.i19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mi_palloc_cache.i19, align 4
  %19 = ptrtoint ptr %i_blkbits.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %i_blkbits.i.i, align 2
  %conv.i.i.i.i21 = zext i8 %20 to i32
  %21 = add nsw i32 %conv.i.i.i.i21, -2
  %notmask.i.i = shl nsw i32 -1, %21
  %22 = xor i32 %notmask.i.i, -1
  %rem.i.i = and i32 %group.0.off0.i, %22
  %div3.i.i.i = lshr i32 %group.0.off0.i, %21
  %mi_blocks_per_desc_block.i.i.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %16, i32 0, i32 8
  %23 = ptrtoint ptr %mi_blocks_per_desc_block.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mi_blocks_per_desc_block.i.i.i, align 4
  %mul.i.i.i = mul i32 %div3.i.i.i, %24
  %add.i.i = add i32 %mul.i.i.i, 1
  %mi_blocks_per_group.i.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %16, i32 0, i32 7
  %25 = ptrtoint ptr %mi_blocks_per_group.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mi_blocks_per_group.i.i, align 4
  %mul.i.i22 = mul i32 %rem.i.i, %26
  %add3.i.i = add i32 %add.i.i, %mul.i.i22
  %prev_bitmap.i = getelementptr inbounds %struct.nilfs_palloc_cache, ptr %18, i32 0, i32 2
  %call2.i23 = call fastcc i32 @nilfs_palloc_get_block(ptr noundef %inode, i32 noundef %add3.i.i, i32 noundef 1, ptr noundef null, ptr noundef nonnull %bitmap_bh, ptr noundef %prev_bitmap.i, ptr noundef %18) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i23)
  %cmp3 = icmp slt i32 %call2.i23, 0
  %27 = ptrtoint ptr %desc_bh to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %desc_bh, align 4
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %if.then4.cleanup_crit_edge, label %if.then.i24

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i24:                                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %28) #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %pr_desc_bh = getelementptr inbounds %struct.nilfs_palloc_req, ptr %req, i32 0, i32 1
  %29 = ptrtoint ptr %pr_desc_bh to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %pr_desc_bh, align 8
  %30 = ptrtoint ptr %bitmap_bh to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bitmap_bh, align 4
  %pr_bitmap_bh = getelementptr inbounds %struct.nilfs_palloc_req, ptr %req, i32 0, i32 2
  %32 = ptrtoint ptr %pr_bitmap_bh to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %pr_bitmap_bh, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then.i24, %if.then4.cleanup_crit_edge, %nilfs_palloc_group.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ %call2.i, %nilfs_palloc_group.exit.cleanup_crit_edge ], [ %call2.i23, %if.then4.cleanup_crit_edge ], [ %call2.i23, %if.then.i24 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bitmap_bh) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %desc_bh) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nilfs_palloc_abort_free_entry(ptr nocapture noundef readnone %inode, ptr nocapture noundef %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pr_bitmap_bh = getelementptr inbounds %struct.nilfs_palloc_req, ptr %req, i32 0, i32 2
  %0 = ptrtoint ptr %pr_bitmap_bh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pr_bitmap_bh, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.brelse.exit_crit_edge, label %if.then.i

entry.brelse.exit_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__brelse(ptr noundef nonnull %1) #9
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %entry.brelse.exit_crit_edge
  %pr_desc_bh = getelementptr inbounds %struct.nilfs_palloc_req, ptr %req, i32 0, i32 1
  %2 = ptrtoint ptr %pr_desc_bh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pr_desc_bh, align 8
  %tobool.not.i7 = icmp eq ptr %3, null
  br i1 %tobool.not.i7, label %brelse.exit.brelse.exit9_crit_edge, label %if.then.i8

brelse.exit.brelse.exit9_crit_edge:               ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit9

if.then.i8:                                       ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__brelse(ptr noundef nonnull %3) #9
  br label %brelse.exit9

brelse.exit9:                                     ; preds = %if.then.i8, %brelse.exit.brelse.exit9_crit_edge
  %4 = call ptr @memset(ptr %req, i32 0, i32 16)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_palloc_freev(ptr noundef %inode, ptr nocapture noundef readonly %entry_nrs, i32 noundef %nitems) local_unnamed_addr #0 align 64 {
entry:
  %desc_bh = alloca ptr, align 4
  %bitmap_bh = alloca ptr, align 4
  %last_nrs = alloca [8 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %desc_bh) #9
  %0 = ptrtoint ptr %desc_bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %desc_bh, align 4, !annotation !32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bitmap_bh) #9
  %1 = ptrtoint ptr %bitmap_bh to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %bitmap_bh, align 4, !annotation !32
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %last_nrs) #9
  %2 = call ptr @memset(ptr %last_nrs, i32 255, i32 64)
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %i_private.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %3 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_private.i, align 4
  %mi_entries_per_block = getelementptr inbounds %struct.nilfs_mdt_info, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %mi_entries_per_block to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mi_entries_per_block, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nitems)
  %cmp258.not = icmp eq i32 %nitems, 0
  br i1 %cmp258.not, label %entry.cleanup106_crit_edge, label %for.body.lr.ph

entry.cleanup106_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup106

for.body.lr.ph:                                   ; preds = %entry
  %7 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %i_blkbits.i, align 2
  %conv.i = zext i8 %8 to i32
  %shl.i = shl i32 8, %conv.i
  %conv9 = zext i32 %shl.i to i64
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %i_state.i = getelementptr i8, ptr %inode, i32 -588
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.0259 = phi i32 [ 0, %for.body.lr.ph ], [ %inc16, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr i64, ptr %entry_nrs, i32 %i.0259
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %arrayidx, align 8
  %11 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %i_blkbits.i, align 2
  %conv.i.i = zext i8 %12 to i32
  %shl.i.i = shl i32 8, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %10)
  %cmp165.i = icmp ult i64 %10, 4294967296
  br i1 %cmp165.i, label %if.then169.i, label %if.else175.i, !prof !29

if.then169.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %conv170.i = trunc i64 %10 to i32
  %13 = add i32 %shl.i.i, -1
  %rem171.i = and i32 %13, %conv170.i
  %14 = add nuw nsw i32 %conv.i.i, 3
  %div173274.i = lshr i32 %conv170.i, %14
  br label %nilfs_palloc_group.exit

if.else175.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %15 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %shl.i.i, i64 %10) #13, !srcloc !30
  %asmresult.i263.i = extractvalue { i64, i64 } %15, 0
  %asmresult1.i.i = extractvalue { i64, i64 } %15, 1
  %shr.i.i = lshr i64 %asmresult.i263.i, 32
  %conv.i264.i = trunc i64 %shr.i.i to i32
  %extract.t272.i = trunc i64 %asmresult1.i.i to i32
  br label %nilfs_palloc_group.exit

nilfs_palloc_group.exit:                          ; preds = %if.else175.i, %if.then169.i
  %group.0.off0.i = phi i32 [ %div173274.i, %if.then169.i ], [ %extract.t272.i, %if.else175.i ]
  %__rem.0.i = phi i32 [ %rem171.i, %if.then169.i ], [ %conv.i264.i, %if.else175.i ]
  %16 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_private.i, align 4
  %mi_palloc_cache.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %mi_palloc_cache.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mi_palloc_cache.i, align 4
  %20 = add nsw i32 %conv.i.i, -2
  %div3.i.i = lshr i32 %group.0.off0.i, %20
  %mi_blocks_per_desc_block.i.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %17, i32 0, i32 8
  %21 = ptrtoint ptr %mi_blocks_per_desc_block.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mi_blocks_per_desc_block.i.i, align 4
  %mul.i.i = mul i32 %22, %div3.i.i
  %prev_desc.i = getelementptr inbounds %struct.nilfs_palloc_cache, ptr %19, i32 0, i32 1
  %call2.i = call fastcc i32 @nilfs_palloc_get_block(ptr noundef %inode, i32 noundef %mul.i.i, i32 noundef 0, ptr noundef nonnull @nilfs_palloc_desc_block_init, ptr noundef nonnull %desc_bh, ptr noundef %prev_desc.i, ptr noundef %19) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp4 = icmp slt i32 %call2.i, 0
  br i1 %cmp4, label %nilfs_palloc_group.exit.cleanup106_crit_edge, label %if.end

nilfs_palloc_group.exit.cleanup106_crit_edge:     ; preds = %nilfs_palloc_group.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup106

if.end:                                           ; preds = %nilfs_palloc_group.exit
  %23 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i_private.i, align 4
  %mi_palloc_cache.i195 = getelementptr inbounds %struct.nilfs_mdt_info, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %mi_palloc_cache.i195 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mi_palloc_cache.i195, align 4
  %27 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %i_blkbits.i, align 2
  %conv.i.i.i.i197 = zext i8 %28 to i32
  %29 = add nsw i32 %conv.i.i.i.i197, -2
  %notmask.i.i = shl nsw i32 -1, %29
  %30 = xor i32 %notmask.i.i, -1
  %rem.i.i = and i32 %group.0.off0.i, %30
  %div3.i.i.i = lshr i32 %group.0.off0.i, %29
  %mi_blocks_per_desc_block.i.i.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %24, i32 0, i32 8
  %31 = ptrtoint ptr %mi_blocks_per_desc_block.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mi_blocks_per_desc_block.i.i.i, align 4
  %mul.i.i.i = mul i32 %div3.i.i.i, %32
  %add.i.i = add i32 %mul.i.i.i, 1
  %mi_blocks_per_group.i.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %24, i32 0, i32 7
  %33 = ptrtoint ptr %mi_blocks_per_group.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mi_blocks_per_group.i.i, align 4
  %mul.i.i198 = mul i32 %rem.i.i, %34
  %add3.i.i = add i32 %add.i.i, %mul.i.i198
  %prev_bitmap.i = getelementptr inbounds %struct.nilfs_palloc_cache, ptr %26, i32 0, i32 2
  %call2.i199 = call fastcc i32 @nilfs_palloc_get_block(ptr noundef %inode, i32 noundef %add3.i.i, i32 noundef 0, ptr noundef null, ptr noundef nonnull %bitmap_bh, ptr noundef %prev_bitmap.i, ptr noundef %26) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i199)
  %cmp6 = icmp slt i32 %call2.i199, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  %35 = ptrtoint ptr %desc_bh to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %desc_bh, align 4
  %tobool.not.i = icmp eq ptr %36, null
  br i1 %tobool.not.i, label %if.then7.cleanup106_crit_edge, label %if.then.i200

if.then7.cleanup106_crit_edge:                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup106

if.then.i200:                                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %36) #9
  br label %cleanup106

if.end8:                                          ; preds = %if.end
  %conv = zext i32 %group.0.off0.i to i64
  %mul = mul nuw i64 %conv, %conv9
  %37 = ptrtoint ptr %bitmap_bh to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bitmap_bh, align 4
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %b_page, align 8
  call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 44) #9
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %shr.i.i201 = lshr i32 %42, 30
  %43 = zext i32 %shr.i.i201 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %shr.i.i201, label %if.end8.if.then.i202_crit_edge [
    i32 2, label %if.end8.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.end8.if.else.i_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.end8.if.then.i202_crit_edge:                   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i202

is_highmem_idx.exit.i:                            ; preds = %if.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %44 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %44)
  %cmp2.i.not.i = icmp eq i32 %44, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i202_crit_edge

is_highmem_idx.exit.i.if.then.i202_crit_edge:     ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i202

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then.i202:                                     ; preds = %is_highmem_idx.exit.i.if.then.i202_crit_edge, %if.end8.if.then.i202_crit_edge
  %call5.i = call ptr @page_address(ptr noundef %40) #9
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %if.end8.if.else.i_crit_edge
  %call6.i = call ptr @kmap_high(ptr noundef %40) #9
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i202
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i202 ]
  %45 = ptrtoint ptr %bitmap_bh to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bitmap_bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %46, i32 0, i32 5
  %47 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %b_data, align 4
  %49 = ptrtoint ptr %48 to i32
  %and = and i32 %49, 4095
  %add.ptr = getelementptr i8, ptr %addr.0.i, i32 %and
  %50 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %i_private.i, align 4
  %mi_bgl.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %mi_bgl.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mi_bgl.i, align 4
  %and.i.i = and i32 %group.0.off0.i, 15
  %arrayidx.i.i = getelementptr [16 x %struct.bgl_lock], ptr %53, i32 0, i32 %and.i.i
  %rem = urem i32 %__rem.0.i, %6
  %sub = sub i32 %__rem.0.i, %rem
  %add = add i64 %mul, %conv9
  br label %do.body.outer

do.body.outer:                                    ; preds = %if.end56, %kmap.exit
  %group_offset.0.ph = phi i32 [ %group_offset.1, %if.end56 ], [ %__rem.0.i, %kmap.exit ]
  %entry_start.0.ph = phi i32 [ %sub60, %if.end56 ], [ %sub, %kmap.exit ]
  %j.1.ph = phi i32 [ %inc16, %if.end56 ], [ %i.0259, %kmap.exit ]
  %nempties.0.ph = phi i32 [ %nempties.1, %if.end56 ], [ 0, %kmap.exit ]
  %n.0.ph = phi i32 [ %n.1, %if.end56 ], [ 0, %kmap.exit ]
  %add34 = add i32 %entry_start.0.ph, %6
  br label %do.body

do.body:                                          ; preds = %if.else28.do.body_crit_edge, %do.body.outer
  %group_offset.0 = phi i32 [ %conv31, %if.else28.do.body_crit_edge ], [ %group_offset.0.ph, %do.body.outer ]
  %j.1 = phi i32 [ %inc16, %if.else28.do.body_crit_edge ], [ %j.1.ph, %do.body.outer ]
  %n.0 = phi i32 [ %n.1, %if.else28.do.body_crit_edge ], [ %n.0.ph, %do.body.outer ]
  %xor.i = xor i32 %group_offset.0, 24
  %call.i = call i32 @_test_and_clear_bit(i32 noundef %xor.i, ptr noundef %add.ptr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then13, label %if.else

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %i_sb, align 4
  %56 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %i_ino, align 8
  %arrayidx14 = getelementptr i64, ptr %entry_nrs, i32 %j.1
  %58 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %arrayidx14, align 8
  call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %55, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.nilfs_palloc_freev, i32 noundef %57, i64 noundef %59) #9
  br label %if.end15

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %inc = add i32 %n.0, 1
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then13
  %n.1 = phi i32 [ %inc, %if.else ], [ %n.0, %if.then13 ]
  %inc16 = add i32 %j.1, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc16, i32 %nitems)
  %cmp17.not = icmp ult i32 %inc16, %nitems
  br i1 %cmp17.not, label %lor.lhs.false, label %if.end15.if.end39_crit_edge

if.end15.if.end39_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

lor.lhs.false:                                    ; preds = %if.end15
  %arrayidx19 = getelementptr i64, ptr %entry_nrs, i32 %inc16
  %60 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %arrayidx19, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %61, i64 %mul)
  %cmp20 = icmp uge i64 %61, %mul
  call void @__sanitizer_cov_trace_cmp8(i64 %61, i64 %add)
  %cmp25.not = icmp ult i64 %61, %add
  %or.cond = and i1 %cmp20, %cmp25.not
  br i1 %or.cond, label %if.else28, label %lor.lhs.false.if.end39_crit_edge

lor.lhs.false.if.end39_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.else28:                                        ; preds = %lor.lhs.false
  %sub30 = sub i64 %61, %mul
  %conv31 = trunc i64 %sub30 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %entry_start.0.ph, i32 %conv31)
  %cmp32.not = icmp ule i32 %entry_start.0.ph, %conv31
  call void @__sanitizer_cov_trace_cmp4(i32 %add34, i32 %conv31)
  %cmp35 = icmp ugt i32 %add34, %conv31
  %or.cond193 = select i1 %cmp32.not, i1 %cmp35, i1 false
  br i1 %or.cond193, label %if.else28.do.body_crit_edge, label %if.end39.split.loop.exit268

if.else28.do.body_crit_edge:                      ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end39.split.loop.exit268:                      ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #11
  %conv31.le = trunc i64 %sub30 to i32
  br label %if.end39

if.end39:                                         ; preds = %if.end39.split.loop.exit268, %lor.lhs.false.if.end39_crit_edge, %if.end15.if.end39_crit_edge
  %group_offset.1 = phi i32 [ %conv31.le, %if.end39.split.loop.exit268 ], [ %group_offset.0, %if.end15.if.end39_crit_edge ], [ %group_offset.0, %lor.lhs.false.if.end39_crit_edge ]
  %tobool54.not = phi i1 [ true, %if.end39.split.loop.exit268 ], [ false, %if.end15.if.end39_crit_edge ], [ false, %lor.lhs.false.if.end39_crit_edge ]
  %add40 = add i32 %entry_start.0.ph, %6
  %call.i204 = call i32 @_find_next_bit_le(ptr noundef %add.ptr, i32 noundef %add40, i32 noundef %entry_start.0.ph) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i204, i32 %add40)
  %cmp42.not = icmp ult i32 %call.i204, %add40
  br i1 %cmp42.not, label %if.end39.if.end53_crit_edge, label %if.then44

if.end39.if.end53_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then44:                                        ; preds = %if.end39
  %arrayidx46 = getelementptr i64, ptr %entry_nrs, i32 %j.1
  %62 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %arrayidx46, align 8
  %inc47 = add i32 %nempties.0.ph, 1
  %arrayidx48 = getelementptr [8 x i64], ptr %last_nrs, i32 0, i32 %nempties.0.ph
  %64 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %63, ptr %arrayidx48, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %inc47)
  %cmp49 = icmp ugt i32 %inc47, 7
  br i1 %cmp49, label %if.then44.do.end_crit_edge, label %if.then44.if.end53_crit_edge

if.then44.if.end53_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then44.do.end_crit_edge:                       ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end53:                                         ; preds = %if.then44.if.end53_crit_edge, %if.end39.if.end53_crit_edge
  %nempties.1 = phi i32 [ %inc47, %if.then44.if.end53_crit_edge ], [ %nempties.0.ph, %if.end39.if.end53_crit_edge ]
  br i1 %tobool54.not, label %if.end56, label %if.end53.do.end_crit_edge

if.end53.do.end_crit_edge:                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end56:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  %rem59 = urem i32 %group_offset.1, %6
  %sub60 = sub i32 %group_offset.1, %rem59
  br label %do.body.outer

do.end:                                           ; preds = %if.end53.do.end_crit_edge, %if.then44.do.end_crit_edge
  %nempties.3 = phi i32 [ %inc47, %if.then44.do.end_crit_edge ], [ %nempties.1, %if.end53.do.end_crit_edge ]
  %65 = ptrtoint ptr %bitmap_bh to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %bitmap_bh, align 4
  %b_page61 = getelementptr inbounds %struct.buffer_head, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %b_page61 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %b_page61, align 8
  call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 55) #9
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %68, align 4
  %shr.i.i205 = lshr i32 %70, 30
  %71 = zext i32 %shr.i.i205 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %shr.i.i205, label %do.end.kunmap.exit_crit_edge [
    i32 2, label %do.end.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i207
  ]

do.end.if.end.i_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.kunmap.exit_crit_edge:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit

is_highmem_idx.exit.i207:                         ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %72 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %72)
  %cmp2.i.not.i206 = icmp eq i32 %72, 2
  br i1 %cmp2.i.not.i206, label %is_highmem_idx.exit.i207.if.end.i_crit_edge, label %is_highmem_idx.exit.i207.kunmap.exit_crit_edge

is_highmem_idx.exit.i207.kunmap.exit_crit_edge:   ; preds = %is_highmem_idx.exit.i207
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit

is_highmem_idx.exit.i207.if.end.i_crit_edge:      ; preds = %is_highmem_idx.exit.i207
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i207.if.end.i_crit_edge, %do.end.if.end.i_crit_edge
  call void @kunmap_high(ptr noundef %68) #9
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i207.kunmap.exit_crit_edge, %do.end.kunmap.exit_crit_edge
  %73 = ptrtoint ptr %bitmap_bh to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %bitmap_bh, align 4
  call void @mark_buffer_dirty(ptr noundef %74) #9
  %75 = ptrtoint ptr %bitmap_bh to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %bitmap_bh, align 4
  %tobool.not.i208 = icmp eq ptr %76, null
  br i1 %tobool.not.i208, label %kunmap.exit.brelse.exit211_crit_edge, label %if.then.i209

kunmap.exit.brelse.exit211_crit_edge:             ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit211

if.then.i209:                                     ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %76) #9
  br label %brelse.exit211

brelse.exit211:                                   ; preds = %if.then.i209, %kunmap.exit.brelse.exit211_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nempties.3)
  %cmp63256 = icmp sgt i32 %nempties.3, 0
  br i1 %cmp63256, label %brelse.exit211.for.body65_crit_edge, label %brelse.exit211.for.end_crit_edge

brelse.exit211.for.end_crit_edge:                 ; preds = %brelse.exit211
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

brelse.exit211.for.body65_crit_edge:              ; preds = %brelse.exit211
  br label %for.body65

for.body65:                                       ; preds = %for.inc.for.body65_crit_edge, %brelse.exit211.for.body65_crit_edge
  %k.0257 = phi i32 [ %inc77, %for.inc.for.body65_crit_edge ], [ 0, %brelse.exit211.for.body65_crit_edge ]
  %arrayidx66 = getelementptr [8 x i64], ptr %last_nrs, i32 0, i32 %k.0257
  %77 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %arrayidx66, align 8
  %79 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %i_private.i, align 4
  %mi_palloc_cache.i213 = getelementptr inbounds %struct.nilfs_mdt_info, ptr %80, i32 0, i32 5
  %81 = ptrtoint ptr %mi_palloc_cache.i213 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %mi_palloc_cache.i213, align 4
  %83 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %i_blkbits.i, align 2
  %conv.i.i.i.i215 = zext i8 %84 to i32
  %shl.i.i.i.i = shl i32 8, %conv.i.i.i.i215
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %78)
  %cmp165.i.i.i = icmp ult i64 %78, 4294967296
  br i1 %cmp165.i.i.i, label %if.then169.i.i.i, label %if.else175.i.i.i, !prof !29

if.then169.i.i.i:                                 ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #11
  %conv170.i.i.i = trunc i64 %78 to i32
  %85 = add i32 %shl.i.i.i.i, -1
  %rem171.i.i.i = and i32 %85, %conv170.i.i.i
  %86 = add nuw nsw i32 %conv.i.i.i.i215, 3
  %div173274.i.i.i = lshr i32 %conv170.i.i.i, %86
  br label %nilfs_palloc_entry_blkoff.exit.i

if.else175.i.i.i:                                 ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #11
  %87 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %shl.i.i.i.i, i64 %78) #13, !srcloc !30
  %asmresult.i263.i.i.i = extractvalue { i64, i64 } %87, 0
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %87, 1
  %shr.i.i.i.i = lshr i64 %asmresult.i263.i.i.i, 32
  %conv.i264.i.i.i = trunc i64 %shr.i.i.i.i to i32
  %extract.t272.i.i.i = trunc i64 %asmresult1.i.i.i.i to i32
  br label %nilfs_palloc_entry_blkoff.exit.i

nilfs_palloc_entry_blkoff.exit.i:                 ; preds = %if.else175.i.i.i, %if.then169.i.i.i
  %group.0.off0.i.i.i = phi i32 [ %div173274.i.i.i, %if.then169.i.i.i ], [ %extract.t272.i.i.i, %if.else175.i.i.i ]
  %__rem.0.i.i.i = phi i32 [ %rem171.i.i.i, %if.then169.i.i.i ], [ %conv.i264.i.i.i, %if.else175.i.i.i ]
  %88 = add nsw i32 %conv.i.i.i.i215, -2
  %notmask.i.i.i = shl nsw i32 -1, %88
  %89 = xor i32 %notmask.i.i.i, -1
  %rem.i.i.i = and i32 %group.0.off0.i.i.i, %89
  %div3.i.i.i.i = lshr i32 %group.0.off0.i.i.i, %88
  %mi_blocks_per_desc_block.i.i.i.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %80, i32 0, i32 8
  %90 = ptrtoint ptr %mi_blocks_per_desc_block.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %mi_blocks_per_desc_block.i.i.i.i, align 4
  %mul.i.i.i.i = mul i32 %91, %div3.i.i.i.i
  %mi_blocks_per_group.i.i.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %80, i32 0, i32 7
  %92 = ptrtoint ptr %mi_blocks_per_group.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %mi_blocks_per_group.i.i.i, align 4
  %mul.i.i.i216 = mul i32 %93, %rem.i.i.i
  %mi_entries_per_block.i.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %80, i32 0, i32 4
  %94 = ptrtoint ptr %mi_entries_per_block.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %mi_entries_per_block.i.i, align 4
  %div.i.i = udiv i32 %__rem.0.i.i.i, %95
  %add3.i.i.i = add i32 %mul.i.i.i.i, 2
  %add.i.i217 = add i32 %add3.i.i.i, %mul.i.i.i216
  %add3.i.i218 = add i32 %add.i.i217, %div.i.i
  call void @_raw_spin_lock(ptr noundef %82) #9
  %bh.i.i = getelementptr inbounds %struct.nilfs_palloc_cache, ptr %82, i32 0, i32 3, i32 1
  %96 = ptrtoint ptr %bh.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %bh.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %97, null
  br i1 %tobool.not.i.i, label %nilfs_palloc_entry_blkoff.exit.i.nilfs_palloc_delete_entry_block.exit_crit_edge, label %land.lhs.true.i.i

nilfs_palloc_entry_blkoff.exit.i.nilfs_palloc_delete_entry_block.exit_crit_edge: ; preds = %nilfs_palloc_entry_blkoff.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_palloc_delete_entry_block.exit

land.lhs.true.i.i:                                ; preds = %nilfs_palloc_entry_blkoff.exit.i
  %prev_entry.i = getelementptr inbounds %struct.nilfs_palloc_cache, ptr %82, i32 0, i32 3
  %98 = ptrtoint ptr %prev_entry.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %prev_entry.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %99, i32 %add3.i.i218)
  %cmp.i.i = icmp eq i32 %99, %add3.i.i218
  br i1 %cmp.i.i, label %brelse.exit.i.i, label %land.lhs.true.i.i.nilfs_palloc_delete_entry_block.exit_crit_edge

land.lhs.true.i.i.nilfs_palloc_delete_entry_block.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_palloc_delete_entry_block.exit

brelse.exit.i.i:                                  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %97) #9
  %100 = ptrtoint ptr %bh.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr null, ptr %bh.i.i, align 4
  br label %nilfs_palloc_delete_entry_block.exit

nilfs_palloc_delete_entry_block.exit:             ; preds = %brelse.exit.i.i, %land.lhs.true.i.i.nilfs_palloc_delete_entry_block.exit_crit_edge, %nilfs_palloc_entry_blkoff.exit.i.nilfs_palloc_delete_entry_block.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %82) #9
  %call.i.i = call i32 @nilfs_mdt_delete_block(ptr noundef %inode, i32 noundef %add3.i.i218) #9
  %101 = zext i32 %call.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %101, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %call.i.i, label %if.then72 [
    i32 0, label %nilfs_palloc_delete_entry_block.exit.for.inc_crit_edge
    i32 -2, label %nilfs_palloc_delete_entry_block.exit.for.inc_crit_edge275
  ]

nilfs_palloc_delete_entry_block.exit.for.inc_crit_edge275: ; preds = %nilfs_palloc_delete_entry_block.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

nilfs_palloc_delete_entry_block.exit.for.inc_crit_edge: ; preds = %nilfs_palloc_delete_entry_block.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then72:                                        ; preds = %nilfs_palloc_delete_entry_block.exit
  call void @__sanitizer_cov_trace_pc() #11
  %102 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %i_sb, align 4
  %104 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %i_ino, align 8
  call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %103, ptr noundef nonnull @.str.1, i32 noundef %call.i.i, i64 noundef %78, i32 noundef %105) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then72, %nilfs_palloc_delete_entry_block.exit.for.inc_crit_edge, %nilfs_palloc_delete_entry_block.exit.for.inc_crit_edge275
  %inc77 = add nuw nsw i32 %k.0257, 1
  %exitcond.not = icmp eq i32 %inc77, %nempties.3
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body65_crit_edge

for.inc.for.body65_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body65

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %brelse.exit211.for.end_crit_edge
  %106 = ptrtoint ptr %desc_bh to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %desc_bh, align 4
  %b_page78 = getelementptr inbounds %struct.buffer_head, ptr %107, i32 0, i32 2
  %108 = ptrtoint ptr %b_page78 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %b_page78, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %110 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %110, 512
  %111 = call i32 @llvm.read_register.i32(metadata !19) #9
  %and.i.i.i.i.i = and i32 %111, -16384
  %112 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %114, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !33
  %115 = call i32 @llvm.read_register.i32(metadata !19) #9
  %and.i.i.i1.i.i = and i32 %115, -16384
  %116 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %116, i32 0, i32 2
  %117 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %118, i32 0, i32 213
  %119 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %120, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !34
  %call.i.i219 = call ptr @__kmap_local_page_prot(ptr noundef %109, i32 noundef %or.i) #9
  %121 = ptrtoint ptr %desc_bh to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %desc_bh, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %122, i32 0, i32 5
  %123 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %b_data.i, align 4
  %125 = ptrtoint ptr %124 to i32
  %and.i = and i32 %125, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i.i219, i32 %and.i
  %126 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %i_blkbits.i, align 2
  %conv.i.i.i = zext i8 %127 to i32
  %128 = add nsw i32 %conv.i.i.i, -2
  %notmask.i = shl nsw i32 -1, %128
  %129 = xor i32 %notmask.i, -1
  %rem.i = and i32 %group.0.off0.i, %129
  %add.ptr1.i = getelementptr %struct.nilfs_palloc_group_desc, ptr %add.ptr.i, i32 %rem.i
  call void @_raw_spin_lock(ptr noundef %arrayidx.i.i) #9
  %130 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %add.ptr1.i, align 4
  %132 = call i32 @llvm.bswap.i32(i32 %131) #9
  %add.i.i220 = add i32 %132, %n.1
  %133 = call i32 @llvm.bswap.i32(i32 %add.i.i220) #9
  %134 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %add.ptr1.i, align 4
  call void @_raw_spin_unlock(ptr noundef %arrayidx.i.i) #9
  call void @kunmap_local_indexed(ptr noundef %call.i.i219) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !35
  %135 = call i32 @llvm.read_register.i32(metadata !19) #9
  %and.i.i.i1.i = and i32 %135, -16384
  %136 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %136, i32 0, i32 2
  %137 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %138, i32 0, i32 213
  %139 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %140, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !36
  %141 = call i32 @llvm.read_register.i32(metadata !19) #9
  %and.i.i.i.i = and i32 %141, -16384
  %142 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %142, i32 0, i32 1
  %143 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %144, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  %145 = ptrtoint ptr %desc_bh to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %desc_bh, align 4
  call void @mark_buffer_dirty(ptr noundef %146) #9
  %147 = ptrtoint ptr %i_state.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load volatile i32, ptr %i_state.i, align 4
  %149 = and i32 %148, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %tobool.not.i221 = icmp eq i32 %149, 0
  br i1 %tobool.not.i221, label %if.then.i222, label %for.end.nilfs_mdt_mark_dirty.exit_crit_edge

for.end.nilfs_mdt_mark_dirty.exit_crit_edge:      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_mdt_mark_dirty.exit

if.then.i222:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @_set_bit(i32 noundef 1, ptr noundef %i_state.i) #9
  br label %nilfs_mdt_mark_dirty.exit

nilfs_mdt_mark_dirty.exit:                        ; preds = %if.then.i222, %for.end.nilfs_mdt_mark_dirty.exit_crit_edge
  %150 = ptrtoint ptr %desc_bh to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %desc_bh, align 4
  %tobool.not.i224 = icmp eq ptr %151, null
  br i1 %tobool.not.i224, label %nilfs_mdt_mark_dirty.exit.brelse.exit227_crit_edge, label %if.then.i225

nilfs_mdt_mark_dirty.exit.brelse.exit227_crit_edge: ; preds = %nilfs_mdt_mark_dirty.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit227

if.then.i225:                                     ; preds = %nilfs_mdt_mark_dirty.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %151) #9
  br label %brelse.exit227

brelse.exit227:                                   ; preds = %if.then.i225, %nilfs_mdt_mark_dirty.exit.brelse.exit227_crit_edge
  %152 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %i_blkbits.i, align 2
  %conv.i229 = zext i8 %153 to i32
  %shl.i230 = shl i32 8, %conv.i229
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i220, i32 %shl.i230)
  %cmp89 = icmp eq i32 %add.i.i220, %shl.i230
  br i1 %cmp89, label %if.then91, label %brelse.exit227.cleanup_crit_edge

brelse.exit227.cleanup_crit_edge:                 ; preds = %brelse.exit227
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then91:                                        ; preds = %brelse.exit227
  %154 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %i_private.i, align 4
  %mi_palloc_cache.i232 = getelementptr inbounds %struct.nilfs_mdt_info, ptr %155, i32 0, i32 5
  %156 = ptrtoint ptr %mi_palloc_cache.i232 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %mi_palloc_cache.i232, align 4
  %158 = add nsw i32 %conv.i229, -2
  %notmask.i.i235 = shl nsw i32 -1, %158
  %159 = xor i32 %notmask.i.i235, -1
  %rem.i.i236 = and i32 %group.0.off0.i, %159
  %div3.i.i.i237 = lshr i32 %group.0.off0.i, %158
  %mi_blocks_per_desc_block.i.i.i238 = getelementptr inbounds %struct.nilfs_mdt_info, ptr %155, i32 0, i32 8
  %160 = ptrtoint ptr %mi_blocks_per_desc_block.i.i.i238 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %mi_blocks_per_desc_block.i.i.i238, align 4
  %mul.i.i.i239 = mul i32 %161, %div3.i.i.i237
  %add.i.i240 = add i32 %mul.i.i.i239, 1
  %mi_blocks_per_group.i.i241 = getelementptr inbounds %struct.nilfs_mdt_info, ptr %155, i32 0, i32 7
  %162 = ptrtoint ptr %mi_blocks_per_group.i.i241 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %mi_blocks_per_group.i.i241, align 4
  %mul.i.i242 = mul i32 %163, %rem.i.i236
  %add3.i.i243 = add i32 %add.i.i240, %mul.i.i242
  call void @_raw_spin_lock(ptr noundef %157) #9
  %bh.i.i244 = getelementptr inbounds %struct.nilfs_palloc_cache, ptr %157, i32 0, i32 2, i32 1
  %164 = ptrtoint ptr %bh.i.i244 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %bh.i.i244, align 4
  %tobool.not.i.i245 = icmp eq ptr %165, null
  br i1 %tobool.not.i.i245, label %if.then91.nilfs_palloc_delete_bitmap_block.exit_crit_edge, label %land.lhs.true.i.i248

if.then91.nilfs_palloc_delete_bitmap_block.exit_crit_edge: ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_palloc_delete_bitmap_block.exit

land.lhs.true.i.i248:                             ; preds = %if.then91
  %prev_bitmap.i246 = getelementptr inbounds %struct.nilfs_palloc_cache, ptr %157, i32 0, i32 2
  %166 = ptrtoint ptr %prev_bitmap.i246 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %prev_bitmap.i246, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %167, i32 %add3.i.i243)
  %cmp.i.i247 = icmp eq i32 %167, %add3.i.i243
  br i1 %cmp.i.i247, label %brelse.exit.i.i249, label %land.lhs.true.i.i248.nilfs_palloc_delete_bitmap_block.exit_crit_edge

land.lhs.true.i.i248.nilfs_palloc_delete_bitmap_block.exit_crit_edge: ; preds = %land.lhs.true.i.i248
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_palloc_delete_bitmap_block.exit

brelse.exit.i.i249:                               ; preds = %land.lhs.true.i.i248
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %165) #9
  %168 = ptrtoint ptr %bh.i.i244 to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr null, ptr %bh.i.i244, align 4
  br label %nilfs_palloc_delete_bitmap_block.exit

nilfs_palloc_delete_bitmap_block.exit:            ; preds = %brelse.exit.i.i249, %land.lhs.true.i.i248.nilfs_palloc_delete_bitmap_block.exit_crit_edge, %if.then91.nilfs_palloc_delete_bitmap_block.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %157) #9
  %call.i.i250 = call i32 @nilfs_mdt_delete_block(ptr noundef %inode, i32 noundef %add3.i.i243) #9
  %169 = zext i32 %call.i.i250 to i64
  call void @__sanitizer_cov_trace_switch(i64 %169, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %call.i.i250, label %if.then97 [
    i32 0, label %nilfs_palloc_delete_bitmap_block.exit.cleanup_crit_edge
    i32 -2, label %nilfs_palloc_delete_bitmap_block.exit.cleanup_crit_edge276
  ]

nilfs_palloc_delete_bitmap_block.exit.cleanup_crit_edge276: ; preds = %nilfs_palloc_delete_bitmap_block.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

nilfs_palloc_delete_bitmap_block.exit.cleanup_crit_edge: ; preds = %nilfs_palloc_delete_bitmap_block.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then97:                                        ; preds = %nilfs_palloc_delete_bitmap_block.exit
  call void @__sanitizer_cov_trace_pc() #11
  %170 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %i_sb, align 4
  %172 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %i_ino, align 8
  call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %171, ptr noundef nonnull @.str.2, i32 noundef %call.i.i250, i32 noundef %group.0.off0.i, i32 noundef %173) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then97, %nilfs_palloc_delete_bitmap_block.exit.cleanup_crit_edge, %nilfs_palloc_delete_bitmap_block.exit.cleanup_crit_edge276, %brelse.exit227.cleanup_crit_edge
  br i1 %cmp17.not, label %cleanup.for.body_crit_edge, label %cleanup.cleanup106_crit_edge

cleanup.cleanup106_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup106

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup106:                                       ; preds = %cleanup.cleanup106_crit_edge, %if.then.i200, %if.then7.cleanup106_crit_edge, %nilfs_palloc_group.exit.cleanup106_crit_edge, %entry.cleanup106_crit_edge
  %retval.2 = phi i32 [ %call2.i199, %if.then.i200 ], [ %call2.i199, %if.then7.cleanup106_crit_edge ], [ 0, %entry.cleanup106_crit_edge ], [ 0, %cleanup.cleanup106_crit_edge ], [ %call2.i, %nilfs_palloc_group.exit.cleanup106_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %last_nrs) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bitmap_bh) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %desc_bh) #9
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nilfs_palloc_setup_cache(ptr nocapture noundef readonly %inode, ptr noundef %cache) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private.i, align 4
  %mi_palloc_cache = getelementptr inbounds %struct.nilfs_mdt_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %mi_palloc_cache to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %cache, ptr %mi_palloc_cache, align 4
  tail call void @__raw_spin_lock_init(ptr noundef %cache, ptr noundef nonnull @.str.3, ptr noundef nonnull @nilfs_palloc_setup_cache.__key, i16 noundef signext 3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nilfs_palloc_clear_cache(ptr nocapture noundef readonly %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private.i, align 4
  %mi_palloc_cache = getelementptr inbounds %struct.nilfs_mdt_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %mi_palloc_cache to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mi_palloc_cache, align 4
  tail call void @_raw_spin_lock(ptr noundef %3) #9
  %bh = getelementptr inbounds %struct.nilfs_palloc_cache, ptr %3, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bh, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.brelse.exit_crit_edge, label %if.then.i

entry.brelse.exit_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__brelse(ptr noundef nonnull %5) #9
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %entry.brelse.exit_crit_edge
  %bh1 = getelementptr inbounds %struct.nilfs_palloc_cache, ptr %3, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %bh1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bh1, align 4
  %tobool.not.i17 = icmp eq ptr %7, null
  br i1 %tobool.not.i17, label %brelse.exit.brelse.exit19_crit_edge, label %if.then.i18

brelse.exit.brelse.exit19_crit_edge:              ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit19

if.then.i18:                                      ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__brelse(ptr noundef nonnull %7) #9
  br label %brelse.exit19

brelse.exit19:                                    ; preds = %if.then.i18, %brelse.exit.brelse.exit19_crit_edge
  %bh2 = getelementptr inbounds %struct.nilfs_palloc_cache, ptr %3, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %bh2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bh2, align 4
  %tobool.not.i20 = icmp eq ptr %9, null
  br i1 %tobool.not.i20, label %brelse.exit19.brelse.exit22_crit_edge, label %if.then.i21

brelse.exit19.brelse.exit22_crit_edge:            ; preds = %brelse.exit19
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit22

if.then.i21:                                      ; preds = %brelse.exit19
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__brelse(ptr noundef nonnull %9) #9
  br label %brelse.exit22

brelse.exit22:                                    ; preds = %if.then.i21, %brelse.exit19.brelse.exit22_crit_edge
  %10 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %bh, align 4
  %11 = ptrtoint ptr %bh1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %bh1, align 4
  %12 = ptrtoint ptr %bh2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %bh2, align 4
  tail call void @_raw_spin_unlock(ptr noundef %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nilfs_palloc_destroy_cache(ptr nocapture noundef readonly %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private.i.i, align 4
  %mi_palloc_cache.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %mi_palloc_cache.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mi_palloc_cache.i, align 4
  tail call void @_raw_spin_lock(ptr noundef %3) #9
  %bh.i = getelementptr inbounds %struct.nilfs_palloc_cache, ptr %3, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bh.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %entry.brelse.exit.i_crit_edge, label %if.then.i.i

entry.brelse.exit.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__brelse(ptr noundef nonnull %5) #9
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i.i, %entry.brelse.exit.i_crit_edge
  %bh1.i = getelementptr inbounds %struct.nilfs_palloc_cache, ptr %3, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %bh1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bh1.i, align 4
  %tobool.not.i17.i = icmp eq ptr %7, null
  br i1 %tobool.not.i17.i, label %brelse.exit.i.brelse.exit19.i_crit_edge, label %if.then.i18.i

brelse.exit.i.brelse.exit19.i_crit_edge:          ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit19.i

if.then.i18.i:                                    ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__brelse(ptr noundef nonnull %7) #9
  br label %brelse.exit19.i

brelse.exit19.i:                                  ; preds = %if.then.i18.i, %brelse.exit.i.brelse.exit19.i_crit_edge
  %bh2.i = getelementptr inbounds %struct.nilfs_palloc_cache, ptr %3, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %bh2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bh2.i, align 4
  %tobool.not.i20.i = icmp eq ptr %9, null
  br i1 %tobool.not.i20.i, label %brelse.exit19.i.nilfs_palloc_clear_cache.exit_crit_edge, label %if.then.i21.i

brelse.exit19.i.nilfs_palloc_clear_cache.exit_crit_edge: ; preds = %brelse.exit19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_palloc_clear_cache.exit

if.then.i21.i:                                    ; preds = %brelse.exit19.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__brelse(ptr noundef nonnull %9) #9
  br label %nilfs_palloc_clear_cache.exit

nilfs_palloc_clear_cache.exit:                    ; preds = %if.then.i21.i, %brelse.exit19.i.nilfs_palloc_clear_cache.exit_crit_edge
  %10 = ptrtoint ptr %bh.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %bh.i, align 4
  %11 = ptrtoint ptr %bh1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %bh1.i, align 4
  %12 = ptrtoint ptr %bh2.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %bh2.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %3) #9
  %13 = ptrtoint ptr %i_private.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_private.i.i, align 4
  %mi_palloc_cache = getelementptr inbounds %struct.nilfs_mdt_info, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %mi_palloc_cache to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %mi_palloc_cache, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_mdt_get_block(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_bmap_last_key(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nilfs_palloc_desc_block_init(ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %bh, ptr nocapture noundef writeonly %kaddr) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_blkbits.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %0 = ptrtoint ptr %i_blkbits.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %i_blkbits.i.i, align 2
  %conv.i.i = zext i8 %1 to i32
  %shl.i = shl i32 8, %conv.i.i
  %2 = tail call i32 @llvm.bswap.i32(i32 %shl.i)
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp.not4 = icmp ult i8 %1, 2
  br i1 %cmp.not4, label %entry.while.end_crit_edge, label %while.body.preheader

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.preheader:                             ; preds = %entry
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %div1.i = lshr i32 %shl.i.i, 2
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 5
  %3 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %b_data, align 4
  %5 = ptrtoint ptr %4 to i32
  %and = and i32 %5, 4095
  %add.ptr = getelementptr i8, ptr %kaddr, i32 %and
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %n.06 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %div1.i, %while.body.preheader ]
  %desc.05 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %add.ptr, %while.body.preheader ]
  %dec = add i32 %n.06, -1
  %6 = ptrtoint ptr %desc.05 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %2, ptr %desc.05, align 4
  %incdec.ptr = getelementptr %struct.nilfs_palloc_group_desc, ptr %desc.05, i32 1
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_mdt_delete_block(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !16, !17}
!llvm.named.register.sp = !{!19}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/nilfs2/alloc.c", i32 616, i32 3}
!2 = !{ptr @__func__.nilfs_palloc_commit_free_entry, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__func__.nilfs_palloc_abort_alloc_entry, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/nilfs2/alloc.c", i32 657, i32 3}
!5 = !{ptr @__func__.nilfs_palloc_freev, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/nilfs2/alloc.c", i32 766, i32 5}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/nilfs2/alloc.c", i32 811, i32 5}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/nilfs2/alloc.c", i32 829, i32 5}
!11 = !{ptr @nilfs_palloc_setup_cache.__key, !12, !"__key", i1 false, i1 false}
!12 = !{!"../fs/nilfs2/alloc.c", i32 841, i32 2}
!13 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @bgl_lock_init.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../include/linux/blockgroup_lock.h", i32 32, i32 3}
!16 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!19 = !{!"sp"}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{!"branch_weights", i32 2000, i32 1}
!30 = !{i64 2148538760, i64 2148539040, i64 2148539374, i64 2148539708}
!31 = !{i64 2148688975, i64 2148689001, i64 2148689030, i64 2148689064, i64 2148689095, i64 2148689118}
!32 = !{!"auto-init"}
!33 = !{i64 2153710727}
!34 = !{i64 2152204271}
!35 = !{i64 2152204478}
!36 = !{i64 2153713498}
