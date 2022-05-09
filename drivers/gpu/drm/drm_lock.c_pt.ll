; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/drm_lock.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_lock.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+drm_legacy_idlelock_take\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_legacy_idlelock_take\09\09\09\09"
module asm "\09.long\09__crc_drm_legacy_idlelock_take\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_legacy_idlelock_take:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_legacy_idlelock_take\22\09\09\09\09\09"
module asm "__kstrtabns_drm_legacy_idlelock_take:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_legacy_idlelock_release\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_legacy_idlelock_release\09\09\09\09"
module asm "\09.long\09__crc_drm_legacy_idlelock_release\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_legacy_idlelock_release:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_legacy_idlelock_release\22\09\09\09\09\09"
module asm "__kstrtabns_drm_legacy_idlelock_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.67, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.72, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.67 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.72 = type { i32, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.53 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.drm_master = type { %struct.kref, ptr, ptr, i32, %struct.idr, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.idr, %struct.idr, %struct.drm_lock_data }
%struct.drm_lock_data = type { ptr, ptr, %struct.wait_queue_head, i32, %struct.spinlock, i32, i32, i32 }
%struct.drm_lock = type { i32, i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Process %d using kernel context %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%d (pid %d) requests lock (0x%08x), flags = 0x%08x\0A\00", [44 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@drm_global_mutex = external dso_local global %struct.mutex, align 4
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%d %s\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"interrupted\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"has lock\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%d waiting for DMA quiescent\0A\00", [34 x i8] zeroinitializer }, align 32
@__kstrtab_drm_legacy_idlelock_take = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_legacy_idlelock_take = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_legacy_idlelock_take = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_legacy_idlelock_take to i32), ptr @__kstrtab_drm_legacy_idlelock_take, ptr @__kstrtabns_drm_legacy_idlelock_take }, section "___ksymtab+drm_legacy_idlelock_take", align 4
@__kstrtab_drm_legacy_idlelock_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_legacy_idlelock_release = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_legacy_idlelock_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_legacy_idlelock_release to i32), ptr @__kstrtab_drm_legacy_idlelock_release, ptr @__kstrtabns_drm_legacy_idlelock_release }, section "___ksymtab+drm_legacy_idlelock_release", align 4
@.str.8 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"File %p released, freeing lock for context %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%d holds heavyweight lock\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%d freed heavyweight lock held by %d\0A\00", [58 x i8] zeroinitializer }, align 32
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 178, i32 3 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 183, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 222, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 237, i32 4 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 348, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 82, i32 5 }
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.36 = private constant [30 x i8] c"../drivers/gpu/drm/drm_lock.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 145, i32 3 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__ksymtab_drm_legacy_idlelock_release, ptr @__ksymtab_drm_legacy_idlelock_take, ptr @.str, ptr @.str.1, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_legacy_lock(ptr noundef %dev, ptr nocapture noundef readonly %data, ptr noundef %file_priv) #0 align 64 {
entry:
  %entry1 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %entry1) #5
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %entry1, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %entry1, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %entry1, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %entry1, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %entry1, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !25) #5
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %0, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @default_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %3, align 4
  %master3 = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 8
  %13 = ptrtoint ptr %master3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %master3, align 4
  %driver.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 4
  %15 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver.i.i, align 4
  %driver_features.i.i = getelementptr inbounds %struct.drm_driver, ptr %16, i32 0, i32 24
  %17 = ptrtoint ptr %driver_features.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %driver_features.i.i, align 4
  %driver_features1.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 10
  %19 = ptrtoint ptr %driver_features1.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %driver_features1.i.i, align 4
  %and.i.i = and i32 %18, 67108864
  %and2.i.i = and i32 %and.i.i, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %cmp.i.i.not = icmp eq i32 %and2.i.i, 0
  br i1 %cmp.i.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock_count = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 29
  %21 = ptrtoint ptr %lock_count to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %lock_count, align 4
  %inc = add i32 %22, 1
  store i32 %inc, ptr %lock_count, align 4
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp = icmp eq i32 %24, 0
  %25 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 68
  %27 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pid.i, align 8
  br i1 %cmp, label %if.then5, label %if.end10

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, i32 noundef %28, i32 noundef 0) #5
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %lock15 = getelementptr inbounds %struct.drm_master, ptr %14, i32 0, i32 12
  %29 = ptrtoint ptr %lock15 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %lock15, align 4
  %tobool.not = icmp eq ptr %30, null
  br i1 %tobool.not, label %if.end10.cond.end_crit_edge, label %cond.true

if.end10.cond.end_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end10.cond.end_crit_edge
  %cond = phi i32 [ %32, %cond.true ], [ -1, %if.end10.cond.end_crit_edge ]
  %flags19 = getelementptr inbounds %struct.drm_lock, ptr %data, i32 0, i32 1
  %33 = ptrtoint ptr %flags19 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags19, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef %24, i32 noundef %28, i32 noundef %cond, i32 noundef %34) #5
  %lock_queue = getelementptr inbounds %struct.drm_master, ptr %14, i32 0, i32 12, i32 2
  call void @add_wait_queue(ptr noundef %lock_queue, ptr noundef nonnull %entry1) #5
  %spinlock = getelementptr inbounds %struct.drm_master, ptr %14, i32 0, i32 12, i32 4
  call void @_raw_spin_lock_bh(ptr noundef %spinlock) #5
  %user_waiters = getelementptr inbounds %struct.drm_master, ptr %14, i32 0, i32 12, i32 6
  %35 = ptrtoint ptr %user_waiters to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %user_waiters, align 4
  %inc23 = add i32 %36, 1
  store i32 %inc23, ptr %user_waiters, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %spinlock) #5
  br label %__here

__here:                                           ; preds = %signal_pending.exit.__here_crit_edge, %cond.end
  %37 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 212
  %39 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 ptrtoint (ptr blockaddress(@drm_legacy_lock, %__here) to i32), ptr %task_state_change, align 4
  %40 = load ptr, ptr %task, align 8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile i32 1, ptr %40, align 128
  %42 = ptrtoint ptr %lock15 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %lock15, align 4
  %tobool83.not = icmp eq ptr %43, null
  br i1 %tobool83.not, label %if.then84, label %if.end88

if.then84:                                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %task, align 8
  %call87 = call i32 @send_sig(i32 noundef 15, ptr noundef %45, i32 noundef 0) #5
  br label %for.end

if.end88:                                         ; preds = %__here
  %46 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %data, align 4
  %call91 = call fastcc i32 @drm_lock_take(ptr noundef %lock15, i32 noundef %47)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end97, label %if.then93

if.then93:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #7
  %file_priv95 = getelementptr inbounds %struct.drm_master, ptr %14, i32 0, i32 12, i32 1
  %48 = ptrtoint ptr %file_priv95 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %file_priv, ptr %file_priv95, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %49 = load volatile i32, ptr @jiffies, align 128
  %lock_time = getelementptr inbounds %struct.drm_master, ptr %14, i32 0, i32 12, i32 3
  %50 = ptrtoint ptr %lock_time to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %lock_time, align 4
  br label %for.end

if.end97:                                         ; preds = %if.end88
  call void @mutex_unlock(ptr noundef nonnull @drm_global_mutex) #5
  call void @schedule() #5
  call void @mutex_lock_nested(ptr noundef nonnull @drm_global_mutex, i32 noundef 0) #5
  %51 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %stack.i.i, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %54, align 4
  %57 = and i32 %56, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i = icmp eq i32 %57, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end97.for.end_crit_edge, !prof !35

if.end97.for.end_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

signal_pending.exit:                              ; preds = %if.end97
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %54, align 4
  %and1.i.i.i.i.i = and i32 %59, 1
  %tobool101.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool101.not, label %signal_pending.exit.__here_crit_edge, label %signal_pending.exit.for.end_crit_edge

signal_pending.exit.for.end_crit_edge:            ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

signal_pending.exit.__here_crit_edge:             ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %__here

for.end:                                          ; preds = %signal_pending.exit.for.end_crit_edge, %if.end97.for.end_crit_edge, %if.then93, %if.then84
  %tobool184.not = phi i1 [ true, %if.then93 ], [ false, %if.then84 ], [ false, %signal_pending.exit.for.end_crit_edge ], [ false, %if.end97.for.end_crit_edge ]
  %ret.0 = phi i32 [ 0, %if.then93 ], [ -4, %if.then84 ], [ -4, %signal_pending.exit.for.end_crit_edge ], [ -4, %if.end97.for.end_crit_edge ]
  call void @_raw_spin_lock_bh(ptr noundef %spinlock) #5
  %60 = ptrtoint ptr %user_waiters to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %user_waiters, align 4
  %dec = add i32 %61, -1
  store i32 %dec, ptr %user_waiters, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %spinlock) #5
  br label %__here160

__here160:                                        ; preds = %for.end
  %62 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %task, align 8
  %task_state_change164 = getelementptr inbounds %struct.task_struct, ptr %63, i32 0, i32 212
  %64 = ptrtoint ptr %task_state_change164 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 ptrtoint (ptr blockaddress(@drm_legacy_lock, %__here160) to i32), ptr %task_state_change164, align 4
  %65 = load ptr, ptr %task, align 8
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile i32 0, ptr %65, align 128
  call void @remove_wait_queue(ptr noundef %lock_queue, ptr noundef nonnull %entry1) #5
  %67 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %data, align 4
  %cond185 = select i1 %tobool184.not, ptr @.str.6, ptr @.str.5
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef %68, ptr noundef nonnull %cond185) #5
  br i1 %tobool184.not, label %if.end188, label %__here160.cleanup_crit_edge

__here160.cleanup_crit_edge:                      ; preds = %__here160
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end188:                                        ; preds = %__here160
  %call189 = call zeroext i1 @drm_is_current_master(ptr noundef %file_priv) #5
  br i1 %call189, label %if.end188.if.end197_crit_edge, label %if.then190

if.end188.if.end197_crit_edge:                    ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end197

if.then190:                                       ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #7
  %69 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %data, align 4
  %sigdata = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 51
  %71 = ptrtoint ptr %sigdata to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %sigdata, align 4
  %72 = ptrtoint ptr %lock15 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %lock15, align 4
  %lock196 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 51, i32 1
  %74 = ptrtoint ptr %lock196 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %73, ptr %lock196, align 4
  br label %if.end197

if.end197:                                        ; preds = %if.then190, %if.end188.if.end197_crit_edge
  %75 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %driver.i.i, align 4
  %dma_quiescent = getelementptr inbounds %struct.drm_driver, ptr %76, i32 0, i32 31
  %77 = ptrtoint ptr %dma_quiescent to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dma_quiescent, align 4
  %tobool198.not = icmp eq ptr %78, null
  br i1 %tobool198.not, label %if.end197.cleanup_crit_edge, label %land.lhs.true

if.end197.cleanup_crit_edge:                      ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end197
  %79 = ptrtoint ptr %flags19 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %flags19, align 4
  %and = and i32 %80, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool200.not = icmp eq i32 %and, 0
  br i1 %tobool200.not, label %land.lhs.true.cleanup_crit_edge, label %if.then201

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then201:                                       ; preds = %land.lhs.true
  %call204 = call i32 %78(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call204)
  %tobool205.not = icmp eq i32 %call204, 0
  br i1 %tobool205.not, label %if.then201.cleanup_crit_edge, label %if.then206

if.then201.cleanup_crit_edge:                     ; preds = %if.then201
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then206:                                       ; preds = %if.then201
  call void @__sanitizer_cov_trace_pc() #7
  %81 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %data, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.7, i32 noundef %82) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then206, %if.then201.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end197.cleanup_crit_edge, %__here160.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then5 ], [ -16, %if.then206 ], [ -95, %entry.cleanup_crit_edge ], [ %ret.0, %__here160.cleanup_crit_edge ], [ 0, %if.then201.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end197.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %entry1) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @send_sig(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @drm_lock_take(ptr noundef %lock_data, i32 noundef %context) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %lock_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock_data, align 4
  %spinlock = getelementptr inbounds %struct.drm_lock_data, ptr %lock_data, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %spinlock) #5
  %user_waiters = getelementptr inbounds %struct.drm_lock_data, ptr %lock_data, i32 0, i32 6
  %kernel_waiters = getelementptr inbounds %struct.drm_lock_data, ptr %lock_data, i32 0, i32 5
  br label %do.body

do.body:                                          ; preds = %__cmpxchg.exit.do.body_crit_edge, %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %tobool.not = icmp sgt i32 %3, -1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %or = or i32 %3, 1073741824
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %user_waiters to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %user_waiters, align 4
  %6 = ptrtoint ptr %kernel_waiters to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %kernel_waiters, align 4
  %add = add i32 %7, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add)
  %cmp = icmp ugt i32 %add, 1
  %cond = select i1 %cmp, i32 1073741824, i32 0
  %or2 = or i32 %cond, %context
  %or3 = or i32 %or2, -2147483648
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %new.0 = phi i32 [ %or, %if.then ], [ %or3, %if.else ]
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %1, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !36
  tail call void @llvm.prefetch.p0(ptr %1, i32 1, i32 3, i32 1) #5
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end
  %8 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %1, i32 %3, i32 %new.0) #5, !srcloc !37
  %asmresult.i = extractvalue { i32, i32 } %8, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  %asmresult1.i = extractvalue { i32, i32 } %8, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !38
  %cmp20.not = icmp eq i32 %asmresult1.i, %3
  br i1 %cmp20.not, label %do.end21, label %__cmpxchg.exit.do.body_crit_edge

__cmpxchg.exit.do.body_crit_edge:                 ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.end21:                                         ; preds = %__cmpxchg.exit
  tail call void @_raw_spin_unlock_bh(ptr noundef %spinlock) #5
  %and23 = and i32 %3, 1073741823
  call void @__sanitizer_cov_trace_cmp4(i32 %and23, i32 %context)
  %cmp24 = icmp ne i32 %and23, %context
  %brmerge = or i1 %tobool.not, %cmp24
  br i1 %brmerge, label %if.end33, label %if.then28

if.then28:                                        ; preds = %do.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %context)
  %cmp29.not = icmp eq i32 %context, 0
  br i1 %cmp29.not, label %if.then28.cleanup_crit_edge, label %if.then30

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then30:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9, i32 noundef %context) #5
  br label %cleanup

if.end33:                                         ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #7
  %and34 = and i32 %new.0, 1073741823
  call void @__sanitizer_cov_trace_cmp4(i32 %and34, i32 %context)
  %cmp35 = icmp eq i32 %and34, %context
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %new.0)
  %tobool37.not = icmp slt i32 %new.0, 0
  %not.or.cond = and i1 %tobool37.not, %cmp35
  %spec.select = zext i1 %not.or.cond to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.then30, %if.then28.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then30 ], [ 0, %if.then28.cleanup_crit_edge ], [ %spec.select, %if.end33 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_is_current_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_legacy_unlock(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %data, ptr nocapture noundef readonly %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %master1 = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 8
  %0 = ptrtoint ptr %master1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master1, align 4
  %driver.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 4
  %2 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver.i.i, align 4
  %driver_features.i.i = getelementptr inbounds %struct.drm_driver, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %driver_features.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_features.i.i, align 4
  %driver_features1.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 10
  %6 = ptrtoint ptr %driver_features1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %driver_features1.i.i, align 4
  %and.i.i = and i32 %5, 67108864
  %and2.i.i = and i32 %and.i.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %cmp.i.i.not = icmp eq i32 %and2.i.i, 0
  br i1 %cmp.i.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then2, label %if.end6

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %10 = tail call i32 @llvm.read_register.i32(metadata !25) #5
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 68
  %14 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, i32 noundef %15, i32 noundef 0) #5
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %lock7 = getelementptr inbounds %struct.drm_master, ptr %1, i32 0, i32 12
  tail call fastcc void @drm_legacy_lock_free(ptr noundef %lock7, i32 noundef %9)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then2 ], [ 0, %if.end6 ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @drm_legacy_lock_free(ptr noundef %lock_data, i32 noundef %context) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %lock_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock_data, align 4
  %spinlock = getelementptr inbounds %struct.drm_lock_data, ptr %lock_data, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %spinlock) #5
  %kernel_waiters = getelementptr inbounds %struct.drm_lock_data, ptr %lock_data, i32 0, i32 5
  %2 = ptrtoint ptr %kernel_waiters to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %kernel_waiters, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %lock_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lock_data, align 4
  %file_priv.i = getelementptr inbounds %struct.drm_lock_data, ptr %lock_data, i32 0, i32 1
  %6 = ptrtoint ptr %file_priv.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %file_priv.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %__cmpxchg.exit.i.do.body.i_crit_edge, %if.then
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %5, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %5, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !39
  tail call void @llvm.prefetch.p0(ptr %5, i32 1, i32 3, i32 1) #5
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %do.body.i
  %9 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %5, i32 %8, i32 -2147483648) #5, !srcloc !37
  %asmresult.i.i = extractvalue { i32, i32 } %9, 0
  %tobool.not.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i.i, label %__cmpxchg.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i

__cmpxchg.exit.i:                                 ; preds = %do.body.i.i
  %asmresult1.i.i = extractvalue { i32, i32 } %9, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !40
  %cmp.not.i = icmp eq i32 %asmresult1.i.i, %8
  br i1 %cmp.not.i, label %drm_lock_transfer.exit, label %__cmpxchg.exit.i.do.body.i_crit_edge

__cmpxchg.exit.i.do.body.i_crit_edge:             ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

drm_lock_transfer.exit:                           ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %idle_has_lock = getelementptr inbounds %struct.drm_lock_data, ptr %lock_data, i32 0, i32 7
  %10 = ptrtoint ptr %idle_has_lock to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %idle_has_lock, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %spinlock) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_unlock_bh(ptr noundef %spinlock) #5
  br label %do.body

do.body:                                          ; preds = %__cmpxchg.exit.do.body_crit_edge, %if.end
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %1, align 4
  %and = and i32 %12, 1073741823
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %1, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void @llvm.prefetch.p0(ptr %1, i32 1, i32 3, i32 1) #5
  br label %do.body.i1

do.body.i1:                                       ; preds = %do.body.i1.do.body.i1_crit_edge, %do.body
  %13 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %1, i32 %12, i32 %and) #5, !srcloc !37
  %asmresult.i = extractvalue { i32, i32 } %13, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i1.do.body.i1_crit_edge

do.body.i1.do.body.i1_crit_edge:                  ; preds = %do.body.i1
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i1

__cmpxchg.exit:                                   ; preds = %do.body.i1
  %asmresult1.i = extractvalue { i32, i32 } %13, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  %cmp21.not = icmp eq i32 %asmresult1.i, %12
  br i1 %cmp21.not, label %do.end22, label %__cmpxchg.exit.do.body_crit_edge

__cmpxchg.exit.do.body_crit_edge:                 ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.end22:                                         ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %tobool.not = icmp sgt i32 %12, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %context)
  %cmp25.not = icmp eq i32 %and, %context
  %or.cond = or i1 %tobool.not, %cmp25.not
  br i1 %or.cond, label %if.end28, label %if.then26

if.then26:                                        ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10, i32 noundef %context, i32 noundef %and) #5
  br label %cleanup

if.end28:                                         ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #7
  %lock_queue = getelementptr inbounds %struct.drm_lock_data, ptr %lock_data, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %lock_queue, i32 noundef 1, i32 noundef 1, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then26, %drm_lock_transfer.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_legacy_idlelock_take(ptr noundef %lock_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %spinlock = getelementptr inbounds %struct.drm_lock_data, ptr %lock_data, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %spinlock) #5
  %kernel_waiters = getelementptr inbounds %struct.drm_lock_data, ptr %lock_data, i32 0, i32 5
  %0 = ptrtoint ptr %kernel_waiters to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %kernel_waiters, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %kernel_waiters, align 4
  %idle_has_lock = getelementptr inbounds %struct.drm_lock_data, ptr %lock_data, i32 0, i32 7
  %2 = ptrtoint ptr %idle_has_lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idle_has_lock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then:                                          ; preds = %entry
  tail call void @_raw_spin_unlock_bh(ptr noundef %spinlock) #5
  %call = tail call fastcc i32 @drm_lock_take(ptr noundef %lock_data, i32 noundef 0)
  tail call void @_raw_spin_lock_bh(ptr noundef %spinlock) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then3, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %idle_has_lock to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %idle_has_lock, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %spinlock) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_legacy_idlelock_release(ptr noundef %lock_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %lock_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock_data, align 4
  %spinlock = getelementptr inbounds %struct.drm_lock_data, ptr %lock_data, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %spinlock) #5
  %kernel_waiters = getelementptr inbounds %struct.drm_lock_data, ptr %lock_data, i32 0, i32 5
  %2 = ptrtoint ptr %kernel_waiters to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %kernel_waiters, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %kernel_waiters, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then, label %entry.if.end22_crit_edge

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.then:                                          ; preds = %entry
  %idle_has_lock = getelementptr inbounds %struct.drm_lock_data, ptr %lock_data, i32 0, i32 7
  %4 = ptrtoint ptr %idle_has_lock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %idle_has_lock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then.if.end22_crit_edge, label %if.then.do.body_crit_edge

if.then.do.body_crit_edge:                        ; preds = %if.then
  br label %do.body

if.then.if.end22_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

do.body:                                          ; preds = %__cmpxchg.exit.do.body_crit_edge, %if.then.do.body_crit_edge
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %1, align 4
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %1, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !43
  tail call void @llvm.prefetch.p0(ptr %1, i32 1, i32 3, i32 1) #5
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body
  %8 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %1, i32 %7, i32 0) #5, !srcloc !37
  %asmresult.i = extractvalue { i32, i32 } %8, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  %asmresult1.i = extractvalue { i32, i32 } %8, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !44
  %cmp19.not = icmp eq i32 %asmresult1.i, %7
  br i1 %cmp19.not, label %do.end20, label %__cmpxchg.exit.do.body_crit_edge

__cmpxchg.exit.do.body_crit_edge:                 ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.end20:                                         ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #7
  %lock_queue = getelementptr inbounds %struct.drm_lock_data, ptr %lock_data, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %lock_queue, i32 noundef 1, i32 noundef 1, ptr noundef null) #5
  %9 = ptrtoint ptr %idle_has_lock to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %idle_has_lock, align 4
  br label %if.end22

if.end22:                                         ; preds = %do.end20, %if.then.if.end22_crit_edge, %entry.if.end22_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %spinlock) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_legacy_lock_release(ptr nocapture noundef readonly %dev, ptr noundef %filp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %master = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 9
  %2 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock_count.i = getelementptr inbounds %struct.drm_file, ptr %1, i32 0, i32 29
  %4 = ptrtoint ptr %lock_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lock_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %land.lhs.true.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end
  %master1.i = getelementptr inbounds %struct.drm_file, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %master1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %master1.i, align 4
  %lock.i = getelementptr inbounds %struct.drm_master, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lock.i, align 4
  %tobool2.not.i = icmp eq ptr %9, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %tobool7.not.i = icmp sgt i32 %11, -1
  br i1 %tobool7.not.i, label %land.lhs.true3.i.cleanup_crit_edge, label %drm_legacy_i_have_hw_lock.exit

land.lhs.true3.i.cleanup_crit_edge:               ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

drm_legacy_i_have_hw_lock.exit:                   ; preds = %land.lhs.true3.i
  %file_priv9.i = getelementptr inbounds %struct.drm_master, ptr %7, i32 0, i32 12, i32 1
  %12 = ptrtoint ptr %file_priv9.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %file_priv9.i, align 4
  %cmp.i.not = icmp eq ptr %13, %1
  br i1 %cmp.i.not, label %if.then2, label %drm_legacy_i_have_hw_lock.exit.cleanup_crit_edge

drm_legacy_i_have_hw_lock.exit.cleanup_crit_edge: ; preds = %drm_legacy_i_have_hw_lock.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then2:                                         ; preds = %drm_legacy_i_have_hw_lock.exit
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %master1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %master1.i, align 4
  %lock = getelementptr inbounds %struct.drm_master, ptr %15, i32 0, i32 12
  %16 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lock, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %17, align 4
  %and = and i32 %19, 1073741823
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.8, ptr noundef %filp, i32 noundef %and) #5
  %20 = ptrtoint ptr %master1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %master1.i, align 4
  %lock6 = getelementptr inbounds %struct.drm_master, ptr %21, i32 0, i32 12
  %22 = ptrtoint ptr %lock6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lock6, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %23, align 4
  %and11 = and i32 %25, 1073741823
  tail call fastcc void @drm_legacy_lock_free(ptr noundef %lock6, i32 noundef %and11)
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %drm_legacy_i_have_hw_lock.exit.cleanup_crit_edge, %land.lhs.true3.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_legacy_lock_master_cleanup(ptr noundef %dev, ptr noundef %master) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver.i.i, align 4
  %driver_features.i.i = getelementptr inbounds %struct.drm_driver, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %driver_features.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_features.i.i, align 4
  %driver_features1.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 10
  %4 = ptrtoint ptr %driver_features1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_features1.i.i, align 4
  %and.i.i = and i32 %3, 67108864
  %and2.i.i = and i32 %and.i.i, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %cmp.i.i.not = icmp eq i32 %and2.i.i, 0
  br i1 %cmp.i.i.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  %struct_mutex = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %struct_mutex, i32 noundef 0) #5
  %lock = getelementptr inbounds %struct.drm_master, ptr %master, i32 0, i32 12
  %6 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lock, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end.if.end13_crit_edge, label %if.then1

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then1:                                         ; preds = %if.end
  %lock2 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 51, i32 1
  %8 = ptrtoint ptr %lock2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lock2, align 4
  %cmp = icmp eq ptr %9, %7
  br i1 %cmp, label %if.then5, label %if.then1.if.end8_crit_edge

if.then1.if.end8_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then5:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %lock2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %lock2, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.then1.if.end8_crit_edge
  %11 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %lock, align 4
  %file_priv = getelementptr inbounds %struct.drm_master, ptr %master, i32 0, i32 12, i32 1
  %12 = ptrtoint ptr %file_priv to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %file_priv, align 4
  %lock_queue = getelementptr inbounds %struct.drm_master, ptr %master, i32 0, i32 12, i32 2
  tail call void @__wake_up(ptr noundef %lock_queue, i32 noundef 1, i32 noundef 0, ptr noundef null) #5
  br label %if.end13

if.end13:                                         ; preds = %if.end8, %if.end.if.end13_crit_edge
  tail call void @mutex_unlock(ptr noundef %struct_mutex) #5
  br label %return

return:                                           ; preds = %if.end13, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !13, !15, !17, !19, !21, !23}
!llvm.named.register.sp = !{!25}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/drm_lock.c", i32 178, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/drm_lock.c", i32 183, i32 2}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/drm_lock.c", i32 194, i32 3}
!6 = distinct !{null, !5, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !8, !"__already_done", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/drm_lock.c", i32 219, i32 2}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/drm_lock.c", i32 222, i32 2}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/drm_lock.c", i32 237, i32 4}
!15 = !{ptr @__ksymtab_drm_legacy_idlelock_take, !16, !"__ksymtab_drm_legacy_idlelock_take", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/drm_lock.c", i32 307, i32 1}
!17 = !{ptr @__ksymtab_drm_legacy_idlelock_release, !18, !"__ksymtab_drm_legacy_idlelock_release", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/drm_lock.c", i32 327, i32 1}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/drm_lock.c", i32 348, i32 3}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/drm_lock.c", i32 82, i32 5}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/drm_lock.c", i32 145, i32 3}
!25 = !{!"sp"}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{!"branch_weights", i32 2000, i32 1}
!36 = !{i64 2154743237}
!37 = !{i64 840001, i64 840022, i64 840045, i64 840064, i64 840083}
!38 = !{i64 2154743642}
!39 = !{i64 2154744809}
!40 = !{i64 2154745214}
!41 = !{i64 2154746191}
!42 = !{i64 2154746596}
!43 = !{i64 2154759537}
!44 = !{i64 2154759940}
