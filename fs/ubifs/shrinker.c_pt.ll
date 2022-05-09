; ModuleID = '/llk/IR_all_yes/fs/ubifs/shrinker.c_pt.bc'
source_filename = "../fs/ubifs/shrinker.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.shrink_control = type { i32, i32, i32, i32, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.73, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.4 }
%struct.llist_node = type { ptr }
%union.anon.4 = type { i32 }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.73 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.ubifs_znode = type { ptr, ptr, ptr, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, [0 x %struct.ubifs_zbranch] }
%struct.ubifs_zbranch = type { %union.ubifs_key, %union.anon.85, i32, i32, i32, [64 x i8] }
%union.ubifs_key = type { [1 x i64] }
%union.anon.85 = type { ptr }

@ubifs_infos = dso_local global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @ubifs_infos, ptr @ubifs_infos }, [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ubifs_infos_lock\00", [47 x i8] zeroinitializer }, align 32
@ubifs_infos_lock = dso_local global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@ubifs_clean_zn_cnt = dso_local global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@ubifs_shrink_scan.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 73, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ubifs\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ubifs_shrink_scan\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fs/ubifs/shrinker.c\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"UBIFS DBG tnc (pid %d): no clean znodes, kick a thread\0A\00", [40 x i8] zeroinitializer }, align 32
@ubifs_shrink_scan.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, i8 0, i8 75, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"UBIFS DBG tnc (pid %d): not enough old znodes, try to free young ones\0A\00", [57 x i8] zeroinitializer }, align 32
@ubifs_shrink_scan.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.6, i8 0, i8 77, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"UBIFS DBG tnc (pid %d): not enough young znodes, free all\0A\00", [37 x i8] zeroinitializer }, align 32
@ubifs_shrink_scan.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.7, i8 0, i8 78, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"UBIFS DBG tnc (pid %d): freed nothing, but contention\0A\00", [41 x i8] zeroinitializer }, align 32
@ubifs_shrink_scan.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.8, i8 0, i8 79, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"UBIFS DBG tnc (pid %d): %lu znodes were freed, requested %lu\0A\00", [34 x i8] zeroinitializer }, align 32
@shrinker_run_no = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"mutex_is_locked(&c->umount_mutex)\00", [62 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mutex_is_locked(&c->tnc_mutex)\00", [33 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant [12 x i8] c"ubifs_infos\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 33, i32 1 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"ubifs_infos_lock\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 43, i32 1 }
@___asan_gen_.20 = private unnamed_addr constant [19 x i8] c"ubifs_clean_zn_cnt\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 46, i32 15 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 295, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 303, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 308, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 312, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 317, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant [16 x i8] c"shrinker_run_no\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 40, i32 21 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 64, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.54 = private constant [23 x i8] c"../fs/ubifs/shrinker.c\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 65, i32 2 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @ubifs_infos, ptr @.str, ptr @ubifs_infos_lock, ptr @ubifs_clean_zn_cnt, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @shrinker_run_no, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_infos to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_infos_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_clean_zn_cnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shrinker_run_no to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_shrink_count(ptr nocapture noundef readnone %shrink, ptr nocapture noundef readnone %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @ubifs_clean_zn_cnt, i32 noundef 4) #6
  %0 = load volatile i32, ptr @ubifs_clean_zn_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %0)
  %cmp = icmp sgt i32 %0, -1
  %spec.select = select i1 %cmp, i32 %0, i32 1
  ret i32 %spec.select
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_shrink_scan(ptr nocapture noundef readnone %shrink, ptr nocapture noundef readonly %sc) local_unnamed_addr #0 align 64 {
entry:
  %contention = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_to_scan = getelementptr inbounds %struct.shrink_control, ptr %sc, i32 0, i32 2
  %0 = ptrtoint ptr %nr_to_scan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_to_scan, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %contention) #6
  %2 = ptrtoint ptr %contention to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %contention, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @ubifs_clean_zn_cnt, i32 noundef 4) #6
  %3 = load volatile i32, ptr @ubifs_clean_zn_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.body, label %if.end8

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_shrink_scan.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_shrink_scan, %if.then5)) #6
          to label %do.end [label %if.then5], !srcloc !41

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %4 = tail call i32 @llvm.read_register.i32(metadata !31) #6
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 68
  %8 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_shrink_scan.__UNIQUE_ID_ddebug276, ptr noundef nonnull @.str.4, i32 noundef %9) #6
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  tail call void @_raw_spin_lock(ptr noundef nonnull @ubifs_infos_lock) #6
  %.pn64.i = load ptr, ptr @ubifs_infos, align 4
  %cmp2.not65.i = icmp eq ptr %.pn64.i, @ubifs_infos
  br i1 %cmp2.not65.i, label %do.end.for.inc34.1.i_crit_edge, label %do.end.for.body3.i_crit_edge

do.end.for.body3.i_crit_edge:                     ; preds = %do.end
  br label %for.body3.i

do.end.for.inc34.1.i_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc34.1.i

for.body3.i:                                      ; preds = %for.inc.i.for.body3.i_crit_edge, %do.end.for.body3.i_crit_edge
  %.pn66.i = phi ptr [ %.pn.i, %for.inc.i.for.body3.i_crit_edge ], [ %.pn64.i, %do.end.for.body3.i_crit_edge ]
  %umount_mutex.i = getelementptr i8, ptr %.pn66.i, i32 8
  %call.i = tail call i32 @mutex_trylock(ptr noundef %umount_mutex.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.body3.i.if.then.i_crit_edge, label %if.end.i

for.body3.i.if.then.i_crit_edge:                  ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.i:                                        ; preds = %for.body3.1.i.if.then.i_crit_edge, %for.body3.i.if.then.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ubifs_infos_lock) #6
  br label %cleanup

if.end.i:                                         ; preds = %for.body3.i
  %dirty_zn_cnt4.i = getelementptr i8, ptr %.pn66.i, i32 -608
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dirty_zn_cnt4.i, i32 noundef 4) #6
  %10 = ptrtoint ptr %dirty_zn_cnt4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %dirty_zn_cnt4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool6.not.i = icmp eq i32 %11, 0
  br i1 %tobool6.not.i, label %if.end.i.for.inc.i_crit_edge, label %lor.lhs.false.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %cmt_state.i = getelementptr i8, ptr %.pn66.i, i32 -4324
  %12 = ptrtoint ptr %cmt_state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cmt_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %13)
  %cmp7.i = icmp eq i32 %13, 5
  br i1 %cmp7.i, label %lor.lhs.false.i.for.inc.i_crit_edge, label %lor.lhs.false8.i

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

lor.lhs.false8.i:                                 ; preds = %lor.lhs.false.i
  %ro_mount.i = getelementptr i8, ptr %.pn66.i, i32 -616
  %14 = ptrtoint ptr %ro_mount.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i = load i8, ptr %ro_mount.i, align 8
  %15 = and i8 %bf.load.i, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %16 = icmp ne i8 %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp20.not.i = icmp eq i32 %13, 0
  %or.cond.i = select i1 %16, i1 true, i1 %cmp20.not.i
  br i1 %or.cond.i, label %lor.lhs.false8.i.for.inc.i_crit_edge, label %lor.lhs.false8.i.if.then21.i_crit_edge

lor.lhs.false8.i.if.then21.i_crit_edge:           ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then21.i

lor.lhs.false8.i.for.inc.i_crit_edge:             ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then21.i:                                      ; preds = %if.end18.1.i.if.then21.i_crit_edge, %lor.lhs.false8.i.if.then21.i_crit_edge
  %umount_mutex.lcssa71.i = phi ptr [ %umount_mutex.1.i, %if.end18.1.i.if.then21.i_crit_edge ], [ %umount_mutex.i, %lor.lhs.false8.i.if.then21.i_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ubifs_infos_lock) #6
  tail call void @mutex_unlock(ptr noundef %umount_mutex.lcssa71.i) #6
  br label %cleanup

if.then25.i:                                      ; preds = %if.end18.1.i
  %c.0.le.i = getelementptr i8, ptr %.pn66.1.i, i32 -4736
  %call.i.i53.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn66.1.i) #6
  br i1 %call.i.i53.i, label %if.end.i.i.i, label %if.then25.i.__list_del_entry.exit.i.i_crit_edge

if.then25.i.__list_del_entry.exit.i.i_crit_edge:  ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn66.1.i, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i.i, align 4
  %19 = ptrtoint ptr %.pn66.1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %.pn66.1.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.then25.i.__list_del_entry.exit.i.i_crit_edge
  %23 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @ubifs_infos, i32 0, i32 1), align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn66.1.i, ptr noundef %23, ptr noundef nonnull @ubifs_infos) #6
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge

__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_move_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store ptr %.pn66.1.i, ptr getelementptr inbounds (%struct.list_head, ptr @ubifs_infos, i32 0, i32 1), align 4
  %24 = ptrtoint ptr %.pn66.1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @ubifs_infos, ptr %.pn66.1.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn66.1.i, i32 0, i32 1
  %25 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %23, ptr %prev3.i.i.i.i, align 4
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %.pn66.1.i, ptr %23, align 4
  br label %list_move_tail.exit.i

list_move_tail.exit.i:                            ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ubifs_infos_lock) #6
  tail call void @ubifs_request_bg_commit(ptr noundef %c.0.le.i) #6
  tail call void @mutex_unlock(ptr noundef %umount_mutex.1.i) #6
  br label %cleanup

for.inc.i:                                        ; preds = %lor.lhs.false8.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %umount_mutex.i) #6
  %27 = ptrtoint ptr %.pn66.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn.i = load ptr, ptr %.pn66.i, align 4
  %cmp2.not.i = icmp eq ptr %.pn.i, @ubifs_infos
  br i1 %cmp2.not.i, label %for.inc34.i, label %for.inc.i.for.body3.i_crit_edge

for.inc.i.for.body3.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body3.i

for.inc34.i:                                      ; preds = %for.inc.i
  %.pn64.1.pr.i = load ptr, ptr @ubifs_infos, align 4
  %cmp2.not65.1.i = icmp eq ptr %.pn64.1.pr.i, @ubifs_infos
  br i1 %cmp2.not65.1.i, label %for.inc34.i.for.inc34.1.i_crit_edge, label %for.inc34.i.for.body3.1.i_crit_edge

for.inc34.i.for.body3.1.i_crit_edge:              ; preds = %for.inc34.i
  br label %for.body3.1.i

for.inc34.i.for.inc34.1.i_crit_edge:              ; preds = %for.inc34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc34.1.i

for.body3.1.i:                                    ; preds = %for.inc.1.i.for.body3.1.i_crit_edge, %for.inc34.i.for.body3.1.i_crit_edge
  %.pn66.1.i = phi ptr [ %.pn.1.i, %for.inc.1.i.for.body3.1.i_crit_edge ], [ %.pn64.1.pr.i, %for.inc34.i.for.body3.1.i_crit_edge ]
  %umount_mutex.1.i = getelementptr i8, ptr %.pn66.1.i, i32 8
  %call.1.i = tail call i32 @mutex_trylock(ptr noundef %umount_mutex.1.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %for.body3.1.i.if.then.i_crit_edge, label %if.end.1.i

for.body3.1.i.if.then.i_crit_edge:                ; preds = %for.body3.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.end.1.i:                                       ; preds = %for.body3.1.i
  %dirty_zn_cnt4.1.i = getelementptr i8, ptr %.pn66.1.i, i32 -608
  %call.i.i.1.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dirty_zn_cnt4.1.i, i32 noundef 4) #6
  %28 = ptrtoint ptr %dirty_zn_cnt4.1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %dirty_zn_cnt4.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool6.not.1.i = icmp eq i32 %29, 0
  br i1 %tobool6.not.1.i, label %if.end.1.i.for.inc.1.i_crit_edge, label %lor.lhs.false.1.i

if.end.1.i.for.inc.1.i_crit_edge:                 ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1.i

lor.lhs.false.1.i:                                ; preds = %if.end.1.i
  %cmt_state.1.i = getelementptr i8, ptr %.pn66.1.i, i32 -4324
  %30 = ptrtoint ptr %cmt_state.1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cmt_state.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %31)
  %cmp7.1.i = icmp eq i32 %31, 5
  br i1 %cmp7.1.i, label %lor.lhs.false.1.i.for.inc.1.i_crit_edge, label %lor.lhs.false8.1.i

lor.lhs.false.1.i.for.inc.1.i_crit_edge:          ; preds = %lor.lhs.false.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1.i

lor.lhs.false8.1.i:                               ; preds = %lor.lhs.false.1.i
  %ro_mount.1.i = getelementptr i8, ptr %.pn66.1.i, i32 -616
  %32 = ptrtoint ptr %ro_mount.1.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load.1.i = load i8, ptr %ro_mount.1.i, align 8
  %33 = and i8 %bf.load.1.i, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %if.end18.1.i, label %lor.lhs.false8.1.i.for.inc.1.i_crit_edge

lor.lhs.false8.1.i.for.inc.1.i_crit_edge:         ; preds = %lor.lhs.false8.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1.i

if.end18.1.i:                                     ; preds = %lor.lhs.false8.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp20.not.1.i = icmp eq i32 %31, 0
  br i1 %cmp20.not.1.i, label %if.then25.i, label %if.end18.1.i.if.then21.i_crit_edge

if.end18.1.i.if.then21.i_crit_edge:               ; preds = %if.end18.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then21.i

for.inc.1.i:                                      ; preds = %lor.lhs.false8.1.i.for.inc.1.i_crit_edge, %lor.lhs.false.1.i.for.inc.1.i_crit_edge, %if.end.1.i.for.inc.1.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %umount_mutex.1.i) #6
  %35 = ptrtoint ptr %.pn66.1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pn.1.i = load ptr, ptr %.pn66.1.i, align 4
  %cmp2.not.1.i = icmp eq ptr %.pn.1.i, @ubifs_infos
  br i1 %cmp2.not.1.i, label %for.inc.1.i.for.inc34.1.i_crit_edge, label %for.inc.1.i.for.body3.1.i_crit_edge

for.inc.1.i.for.body3.1.i_crit_edge:              ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body3.1.i

for.inc.1.i.for.inc34.1.i_crit_edge:              ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc34.1.i

for.inc34.1.i:                                    ; preds = %for.inc.1.i.for.inc34.1.i_crit_edge, %for.inc34.i.for.inc34.1.i_crit_edge, %do.end.for.inc34.1.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ubifs_infos_lock) #6
  br label %cleanup

if.end8:                                          ; preds = %entry
  %call9 = call fastcc i32 @shrink_tnc_trees(i32 noundef %1, i32 noundef 20, ptr noundef nonnull %contention)
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %call9)
  %cmp.not = icmp ugt i32 %1, %call9
  br i1 %cmp.not, label %do.body12, label %if.end8.do.body80_crit_edge

if.end8.do.body80_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body80

do.body12:                                        ; preds = %if.end8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_shrink_scan.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_shrink_scan, %if.then24)) #6
          to label %do.end30 [label %if.then24], !srcloc !41

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #8
  %36 = tail call i32 @llvm.read_register.i32(metadata !31) #6
  %and.i127 = and i32 %36, -16384
  %37 = inttoptr i32 %and.i127 to ptr
  %task26 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %task26 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %task26, align 8
  %pid27 = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 68
  %40 = ptrtoint ptr %pid27 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pid27, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_shrink_scan.__UNIQUE_ID_ddebug277, ptr noundef nonnull @.str.5, i32 noundef %41) #6
  br label %do.end30

do.end30:                                         ; preds = %if.then24, %do.body12
  %sub = sub i32 %1, %call9
  %call31 = call fastcc i32 @shrink_tnc_trees(i32 noundef %sub, i32 noundef 5, ptr noundef nonnull %contention)
  %add = add i32 %call31, %call9
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %add)
  %cmp32.not = icmp ugt i32 %1, %add
  br i1 %cmp32.not, label %do.body35, label %do.end30.do.body80_crit_edge

do.end30.do.body80_crit_edge:                     ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body80

do.body35:                                        ; preds = %do.end30
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_shrink_scan.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_shrink_scan, %if.then47)) #6
          to label %do.end53 [label %if.then47], !srcloc !41

if.then47:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #8
  %42 = tail call i32 @llvm.read_register.i32(metadata !31) #6
  %and.i128 = and i32 %42, -16384
  %43 = inttoptr i32 %and.i128 to ptr
  %task49 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %task49 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %task49, align 8
  %pid50 = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 68
  %46 = ptrtoint ptr %pid50 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pid50, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_shrink_scan.__UNIQUE_ID_ddebug278, ptr noundef nonnull @.str.6, i32 noundef %47) #6
  br label %do.end53

do.end53:                                         ; preds = %if.then47, %do.body35
  %sub54 = sub i32 %1, %add
  %call55 = call fastcc i32 @shrink_tnc_trees(i32 noundef %sub54, i32 noundef 0, ptr noundef nonnull %contention)
  %add56 = add i32 %call55, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add56)
  %tobool57.not = icmp eq i32 %add56, 0
  br i1 %tobool57.not, label %land.lhs.true, label %do.end53.do.body80_crit_edge

do.end53.do.body80_crit_edge:                     ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body80

land.lhs.true:                                    ; preds = %do.end53
  %48 = ptrtoint ptr %contention to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %contention, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool58.not = icmp eq i32 %49, 0
  br i1 %tobool58.not, label %land.lhs.true.do.body80_crit_edge, label %do.body60

land.lhs.true.do.body80_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body80

do.body60:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_shrink_scan.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_shrink_scan, %if.then72)) #6
          to label %cleanup [label %if.then72], !srcloc !41

if.then72:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #8
  %50 = tail call i32 @llvm.read_register.i32(metadata !31) #6
  %and.i129 = and i32 %50, -16384
  %51 = inttoptr i32 %and.i129 to ptr
  %task74 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %task74 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %task74, align 8
  %pid75 = getelementptr inbounds %struct.task_struct, ptr %53, i32 0, i32 68
  %54 = ptrtoint ptr %pid75 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pid75, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_shrink_scan.__UNIQUE_ID_ddebug279, ptr noundef nonnull @.str.7, i32 noundef %55) #6
  br label %cleanup

do.body80:                                        ; preds = %land.lhs.true.do.body80_crit_edge, %do.end53.do.body80_crit_edge, %do.end30.do.body80_crit_edge, %if.end8.do.body80_crit_edge
  %freed.0 = phi i32 [ %call9, %if.end8.do.body80_crit_edge ], [ %add, %do.end30.do.body80_crit_edge ], [ %add56, %do.end53.do.body80_crit_edge ], [ 0, %land.lhs.true.do.body80_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_shrink_scan.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_shrink_scan, %if.then92)) #6
          to label %cleanup [label %if.then92], !srcloc !41

if.then92:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #8
  %56 = tail call i32 @llvm.read_register.i32(metadata !31) #6
  %and.i130 = and i32 %56, -16384
  %57 = inttoptr i32 %and.i130 to ptr
  %task94 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %task94 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %task94, align 8
  %pid95 = getelementptr inbounds %struct.task_struct, ptr %59, i32 0, i32 68
  %60 = ptrtoint ptr %pid95 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pid95, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_shrink_scan.__UNIQUE_ID_ddebug280, ptr noundef nonnull @.str.8, i32 noundef %61, i32 noundef %freed.0, i32 noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then92, %do.body80, %if.then72, %do.body60, %for.inc34.1.i, %list_move_tail.exit.i, %if.then21.i, %if.then.i
  %retval.0 = phi i32 [ -1, %if.then72 ], [ %freed.0, %if.then92 ], [ 0, %for.inc34.1.i ], [ -1, %if.then21.i ], [ -1, %list_move_tail.exit.i ], [ -1, %if.then.i ], [ -1, %do.body60 ], [ %freed.0, %do.body80 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %contention) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @shrink_tnc_trees(i32 noundef %nr, i32 noundef %age, ptr nocapture noundef writeonly %contention) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @ubifs_infos_lock) #6
  %shrinker_run_no.promoted = load i32, ptr @shrinker_run_no, align 4
  %phi.bo = add i32 %shrinker_run_no.promoted, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phi.bo)
  %cmp.peel = icmp eq i32 %phi.bo, 0
  %inc45.lcssa = select i1 %cmp.peel, i32 1, i32 %phi.bo
  store i32 %inc45.lcssa, ptr @shrinker_run_no, align 4
  %0 = load ptr, ptr @ubifs_infos, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr)
  %cmp25108.i = icmp sgt i32 %nr, 0
  %1 = zext i32 %age to i64
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %list_move_tail.exit.while.cond.outer_crit_edge, %entry
  %freed.0.ph = phi i32 [ %add, %list_move_tail.exit.while.cond.outer_crit_edge ], [ 0, %entry ]
  %p.0.ph = phi ptr [ %35, %list_move_tail.exit.while.cond.outer_crit_edge ], [ %0, %entry ]
  %cmp1.not48 = icmp eq ptr %p.0.ph, @ubifs_infos
  br i1 %cmp1.not48, label %while.cond.outer.while.end_crit_edge, label %while.cond.outer.while.body_crit_edge

while.cond.outer.while.body_crit_edge:            ; preds = %while.cond.outer
  br label %while.body

while.cond.outer.while.end_crit_edge:             ; preds = %while.cond.outer
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.cond.outer.while.body_crit_edge
  %p.049 = phi ptr [ %p.0.be, %while.cond.backedge.while.body_crit_edge ], [ %p.0.ph, %while.cond.outer.while.body_crit_edge ]
  %shrinker_run_no = getelementptr i8, ptr %p.049, i32 100
  %2 = ptrtoint ptr %shrinker_run_no to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %shrinker_run_no, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %inc45.lcssa)
  %cmp2 = icmp eq i32 %3, %inc45.lcssa
  br i1 %cmp2, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end:                                           ; preds = %while.body
  %umount_mutex = getelementptr i8, ptr %p.049, i32 8
  %call = tail call i32 @mutex_trylock(ptr noundef %umount_mutex) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end.while.cond.backedge_crit_edge, label %if.end4

if.end.while.cond.backedge_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then7, %if.end.while.cond.backedge_crit_edge
  %4 = ptrtoint ptr %contention to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %contention, align 4
  %5 = ptrtoint ptr %p.049 to i32
  call void @__asan_load4_noabort(i32 %5)
  %p.0.be = load ptr, ptr %p.049, align 4
  %cmp1.not = icmp eq ptr %p.0.be, @ubifs_infos
  br i1 %cmp1.not, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end4:                                          ; preds = %if.end
  %tnc_mutex = getelementptr i8, ptr %p.049, i32 -4028
  %call5 = tail call i32 @mutex_trylock(ptr noundef %tnc_mutex) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef %umount_mutex) #6
  br label %while.cond.backedge

if.end10:                                         ; preds = %if.end4
  %shrinker_run_no.le = getelementptr i8, ptr %p.049, i32 100
  %add.ptr.le = getelementptr i8, ptr %p.049, i32 -4736
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ubifs_infos_lock) #6
  %6 = ptrtoint ptr %shrinker_run_no.le to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %inc45.lcssa, ptr %shrinker_run_no.le, align 4
  %call.i = tail call i64 @ktime_get_seconds() #6
  %call1.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %umount_mutex) #6
  br i1 %call1.i, label %if.end10.do.body4.i_crit_edge, label %if.then.i, !prof !42

if.end10.do.body4.i_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body4.i

if.then.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ubifs_assert_failed(ptr noundef %add.ptr.le, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.3, i32 noundef 64) #6
  br label %do.body4.i

do.body4.i:                                       ; preds = %if.then.i, %if.end10.do.body4.i_crit_edge
  %call5.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %tnc_mutex) #6
  br i1 %call5.i, label %do.body4.i.do.end17.i_crit_edge, label %if.then14.i, !prof !42

do.body4.i.do.end17.i_crit_edge:                  ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17.i

if.then14.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ubifs_assert_failed(ptr noundef %add.ptr.le, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.3, i32 noundef 65) #6
  br label %do.end17.i

do.end17.i:                                       ; preds = %if.then14.i, %do.body4.i.do.end17.i_crit_edge
  %7 = getelementptr i8, ptr %p.049, i32 -3928
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %tobool18.not.i = icmp eq ptr %9, null
  br i1 %tobool18.not.i, label %do.end17.i.shrink_tnc.exit_crit_edge, label %lor.lhs.false.i

do.end17.i.shrink_tnc.exit_crit_edge:             ; preds = %do.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %shrink_tnc.exit

lor.lhs.false.i:                                  ; preds = %do.end17.i
  %clean_zn_cnt.i = getelementptr i8, ptr %p.049, i32 -604
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %clean_zn_cnt.i, i32 noundef 4) #6
  %10 = ptrtoint ptr %clean_zn_cnt.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %clean_zn_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i = icmp eq i32 %11, 0
  br i1 %cmp.i, label %lor.lhs.false.i.shrink_tnc.exit_crit_edge, label %if.end21.i

lor.lhs.false.i.shrink_tnc.exit_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %shrink_tnc.exit

if.end21.i:                                       ; preds = %lor.lhs.false.i
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %7, align 8
  %call23.i = tail call ptr @ubifs_tnc_levelorder_next(ptr noundef %add.ptr.le, ptr noundef %13, ptr noundef null) #6
  %tobool24.not107.i = icmp ne ptr %call23.i, null
  %or.cond109.i = and i1 %cmp25108.i, %tobool24.not107.i
  br i1 %or.cond109.i, label %if.end21.i.land.rhs.i_crit_edge, label %if.end21.i.shrink_tnc.exit_crit_edge

if.end21.i.shrink_tnc.exit_crit_edge:             ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %shrink_tnc.exit

if.end21.i.land.rhs.i_crit_edge:                  ; preds = %if.end21.i
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %cleanup.i.land.rhs.i_crit_edge, %if.end21.i.land.rhs.i_crit_edge
  %total_freed.0113.i = phi i32 [ %total_freed.1.i, %cleanup.i.land.rhs.i_crit_edge ], [ 0, %if.end21.i.land.rhs.i_crit_edge ]
  %zprev.0112.i = phi ptr [ %znode.1.i, %cleanup.i.land.rhs.i_crit_edge ], [ null, %if.end21.i.land.rhs.i_crit_edge ]
  %znode.0110.i = phi ptr [ %call63.i, %cleanup.i.land.rhs.i_crit_edge ], [ %call23.i, %if.end21.i.land.rhs.i_crit_edge ]
  %call.i.i100.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %clean_zn_cnt.i, i32 noundef 4) #6
  %14 = ptrtoint ptr %clean_zn_cnt.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %clean_zn_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp28.i = icmp sgt i32 %15, 0
  br i1 %cmp28.i, label %while.body.i, label %land.rhs.i.shrink_tnc.exit_crit_edge

land.rhs.i.shrink_tnc.exit_crit_edge:             ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %shrink_tnc.exit

while.body.i:                                     ; preds = %land.rhs.i
  %cnext.i = getelementptr inbounds %struct.ubifs_znode, ptr %znode.0110.i, i32 0, i32 1
  %16 = ptrtoint ptr %cnext.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cnext.i, align 4
  %tobool29.not.i = icmp eq ptr %17, null
  br i1 %tobool29.not.i, label %if.else.i, label %if.then30.i

if.then30.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %contention to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %contention, align 4
  br label %if.end49.i

if.else.i:                                        ; preds = %while.body.i
  %flags.i.i = getelementptr inbounds %struct.ubifs_znode, ptr %znode.0110.i, i32 0, i32 4
  %19 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool32.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool32.not.i, label %land.lhs.true33.i, label %if.else.i.if.end49.i_crit_edge

if.else.i.if.end49.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49.i

land.lhs.true33.i:                                ; preds = %if.else.i
  %time34.i = getelementptr inbounds %struct.ubifs_znode, ptr %znode.0110.i, i32 0, i32 5
  %21 = ptrtoint ptr %time34.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %time34.i, align 8
  %sub.i = sub i64 %call.i, %22
  %23 = tail call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #6
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %1)
  %cmp37.not.i = icmp slt i64 %23, %1
  br i1 %cmp37.not.i, label %land.lhs.true33.i.if.end49.i_crit_edge, label %if.then39.i

land.lhs.true33.i.if.end49.i_crit_edge:           ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49.i

if.then39.i:                                      ; preds = %land.lhs.true33.i
  %24 = ptrtoint ptr %znode.0110.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %znode.0110.i, align 8
  %tobool40.not.i = icmp eq ptr %25, null
  br i1 %tobool40.not.i, label %if.then39.i.if.end45.i_crit_edge, label %if.then41.i

if.then39.i.if.end45.i_crit_edge:                 ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45.i

if.then41.i:                                      ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #8
  %iip.i = getelementptr inbounds %struct.ubifs_znode, ptr %znode.0110.i, i32 0, i32 8
  %26 = ptrtoint ptr %iip.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %iip.i, align 8
  %28 = getelementptr %struct.ubifs_znode, ptr %25, i32 0, i32 13, i32 %27, i32 1
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then41.i, %if.then39.i.if.end45.i_crit_edge
  %.sink.i = phi ptr [ %28, %if.then41.i ], [ %7, %if.then39.i.if.end45.i_crit_edge ]
  %29 = ptrtoint ptr %.sink.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %.sink.i, align 8
  %call46.i = tail call i32 @ubifs_destroy_tnc_subtree(ptr noundef %add.ptr.le, ptr noundef nonnull %znode.0110.i) #6
  %call.i.i101.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @ubifs_clean_zn_cnt, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr nonnull @ubifs_clean_zn_cnt, i32 1, i32 3, i32 1) #6
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ubifs_clean_zn_cnt, ptr nonnull @ubifs_clean_zn_cnt, i32 %call46.i, ptr nonnull elementtype(i32) @ubifs_clean_zn_cnt) #6, !srcloc !43
  %call.i.i102.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %clean_zn_cnt.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %clean_zn_cnt.i, i32 1, i32 3, i32 1) #6
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %clean_zn_cnt.i, ptr %clean_zn_cnt.i, i32 %call46.i, ptr elementtype(i32) %clean_zn_cnt.i) #6, !srcloc !43
  %add.i = add i32 %call46.i, %total_freed.0113.i
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.end45.i, %land.lhs.true33.i.if.end49.i_crit_edge, %if.else.i.if.end49.i_crit_edge, %if.then30.i
  %znode.1.i = phi ptr [ %znode.0110.i, %if.then30.i ], [ %znode.0110.i, %if.else.i.if.end49.i_crit_edge ], [ %zprev.0112.i, %if.end45.i ], [ %znode.0110.i, %land.lhs.true33.i.if.end49.i_crit_edge ]
  %total_freed.1.i = phi i32 [ %total_freed.0113.i, %if.then30.i ], [ %total_freed.0113.i, %if.else.i.if.end49.i_crit_edge ], [ %add.i, %if.end45.i ], [ %total_freed.0113.i, %land.lhs.true33.i.if.end49.i_crit_edge ]
  %32 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %7, align 8
  %tobool51.not.i = icmp eq ptr %33, null
  br i1 %tobool51.not.i, label %if.end49.i.shrink_tnc.exit_crit_edge, label %cleanup.i, !prof !44

if.end49.i.shrink_tnc.exit_crit_edge:             ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %shrink_tnc.exit

cleanup.i:                                        ; preds = %if.end49.i
  %call63.i = tail call ptr @ubifs_tnc_levelorder_next(ptr noundef %add.ptr.le, ptr noundef nonnull %33, ptr noundef %znode.1.i) #6
  tail call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 128, i32 noundef 0) #6
  %call.i.i = tail call i32 @__cond_resched() #6
  %tobool24.not.i = icmp ne ptr %call63.i, null
  call void @__sanitizer_cov_trace_cmp4(i32 %total_freed.1.i, i32 %nr)
  %cmp25.i = icmp slt i32 %total_freed.1.i, %nr
  %or.cond.i = select i1 %tobool24.not.i, i1 %cmp25.i, i1 false
  br i1 %or.cond.i, label %cleanup.i.land.rhs.i_crit_edge, label %cleanup.i.shrink_tnc.exit_crit_edge

cleanup.i.shrink_tnc.exit_crit_edge:              ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %shrink_tnc.exit

cleanup.i.land.rhs.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i

shrink_tnc.exit:                                  ; preds = %cleanup.i.shrink_tnc.exit_crit_edge, %if.end49.i.shrink_tnc.exit_crit_edge, %land.rhs.i.shrink_tnc.exit_crit_edge, %if.end21.i.shrink_tnc.exit_crit_edge, %lor.lhs.false.i.shrink_tnc.exit_crit_edge, %do.end17.i.shrink_tnc.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %lor.lhs.false.i.shrink_tnc.exit_crit_edge ], [ 0, %do.end17.i.shrink_tnc.exit_crit_edge ], [ 0, %if.end21.i.shrink_tnc.exit_crit_edge ], [ %total_freed.1.i, %if.end49.i.shrink_tnc.exit_crit_edge ], [ %total_freed.0113.i, %land.rhs.i.shrink_tnc.exit_crit_edge ], [ %total_freed.1.i, %cleanup.i.shrink_tnc.exit_crit_edge ]
  %add = add i32 %retval.0.i, %freed.0.ph
  tail call void @mutex_unlock(ptr noundef %tnc_mutex) #6
  tail call void @_raw_spin_lock(ptr noundef nonnull @ubifs_infos_lock) #6
  %34 = ptrtoint ptr %p.049 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %p.049, align 4
  %call.i.i38 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %p.049) #6
  br i1 %call.i.i38, label %if.end.i.i, label %shrink_tnc.exit.__list_del_entry.exit.i_crit_edge

shrink_tnc.exit.__list_del_entry.exit.i_crit_edge: ; preds = %shrink_tnc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %shrink_tnc.exit
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %p.049, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i.i, align 4
  %38 = ptrtoint ptr %p.049 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %p.049, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev1.i.i.i, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %39, ptr %37, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %shrink_tnc.exit.__list_del_entry.exit.i_crit_edge
  %42 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @ubifs_infos, i32 0, i32 1), align 4
  %call.i.i.i39 = tail call zeroext i1 @__list_add_valid(ptr noundef %p.049, ptr noundef %42, ptr noundef nonnull @ubifs_infos) #6
  br i1 %call.i.i.i39, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  store ptr %p.049, ptr getelementptr inbounds (%struct.list_head, ptr @ubifs_infos, i32 0, i32 1), align 4
  %43 = ptrtoint ptr %p.049 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @ubifs_infos, ptr %p.049, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %p.049, i32 0, i32 1
  %44 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %42, ptr %prev3.i.i.i, align 4
  %45 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %p.049, ptr %42, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %umount_mutex) #6
  %cmp16.not = icmp slt i32 %add, %nr
  br i1 %cmp16.not, label %list_move_tail.exit.while.cond.outer_crit_edge, label %list_move_tail.exit.while.end_crit_edge

list_move_tail.exit.while.end_crit_edge:          ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

list_move_tail.exit.while.cond.outer_crit_edge:   ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.outer

while.end:                                        ; preds = %list_move_tail.exit.while.end_crit_edge, %while.cond.backedge.while.end_crit_edge, %while.body.while.end_crit_edge, %while.cond.outer.while.end_crit_edge
  %freed.1 = phi i32 [ %freed.0.ph, %while.body.while.end_crit_edge ], [ %freed.0.ph, %while.cond.backedge.while.end_crit_edge ], [ %freed.0.ph, %while.cond.outer.while.end_crit_edge ], [ %add, %list_move_tail.exit.while.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ubifs_infos_lock) #6
  ret i32 %freed.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_request_bg_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_seconds() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_assert_failed(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_tnc_levelorder_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_destroy_tnc_subtree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !11, !13, !14, !16, !17, !19, !20, !22, !23, !25, !27, !29}
!llvm.named.register.sp = !{!31}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @ubifs_infos, !1, !"ubifs_infos", i1 false, i1 false}
!1 = !{!"../fs/ubifs/shrinker.c", i32 33, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/ubifs/shrinker.c", i32 43, i32 1}
!4 = !{ptr @ubifs_infos_lock, !3, !"ubifs_infos_lock", i1 false, i1 false}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/ubifs/shrinker.c", i32 295, i32 3}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @ubifs_shrink_scan.__UNIQUE_ID_ddebug276, !6, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/ubifs/shrinker.c", i32 303, i32 2}
!13 = !{ptr @ubifs_shrink_scan.__UNIQUE_ID_ddebug277, !12, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/ubifs/shrinker.c", i32 308, i32 2}
!16 = !{ptr @ubifs_shrink_scan.__UNIQUE_ID_ddebug278, !15, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/ubifs/shrinker.c", i32 312, i32 3}
!19 = !{ptr @ubifs_shrink_scan.__UNIQUE_ID_ddebug279, !18, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/ubifs/shrinker.c", i32 317, i32 2}
!22 = !{ptr @ubifs_shrink_scan.__UNIQUE_ID_ddebug280, !21, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!23 = !{ptr @ubifs_clean_zn_cnt, !24, !"ubifs_clean_zn_cnt", i1 false, i1 false}
!24 = !{!"../fs/ubifs/shrinker.c", i32 46, i32 15}
!25 = !{ptr @shrinker_run_no, !26, !"shrinker_run_no", i1 false, i1 false}
!26 = !{!"../fs/ubifs/shrinker.c", i32 40, i32 21}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/ubifs/shrinker.c", i32 64, i32 2}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/ubifs/shrinker.c", i32 65, i32 2}
!31 = !{!"sp"}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{i64 2149067858, i64 2149067863, i64 2149067876, i64 2149067920, i64 2149067954, i64 2149067975}
!42 = !{!"branch_weights", i32 2000, i32 1}
!43 = !{i64 2148264995, i64 2148265021, i64 2148265050, i64 2148265084, i64 2148265115, i64 2148265138}
!44 = !{!"branch_weights", i32 1, i32 2000}
