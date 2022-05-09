; ModuleID = '/llk/IR_all_yes/fs/notify/fanotify/fanotify.c_pt.bc'
source_filename = "../fs/notify/fanotify/fanotify.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fsnotify_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.__kernel_fsid_t = type { [2 x i32] }
%struct.fsnotify_group = type { ptr, %struct.refcount_struct, %struct.spinlock, %struct.list_head, %struct.wait_queue_head, i32, i32, i32, i8, %struct.mutex, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, %union.anon.76 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%union.anon.76 = type { %struct.fanotify_group_private_data }
%struct.fanotify_group_private_data = type { ptr, %struct.list_head, %struct.wait_queue_head, i32, i32, ptr, %struct.mempool_s }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.fsnotify_iter_info = type { [5 x ptr], i32, i32 }
%struct.fsnotify_mark = type { i32, %struct.refcount_struct, ptr, %struct.list_head, %struct.spinlock, %struct.hlist_node, ptr, i32, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.fsnotify_mark_connector = type { %struct.spinlock, i16, i16, %struct.__kernel_fsid_t, %union.anon.2, %struct.hlist_head }
%union.anon.2 = type { ptr }
%struct.hlist_head = type { ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.70, %struct.list_head, %struct.list_head, %union.anon.71 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.lockref = type { %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.spinlock, i32 }
%union.anon.70 = type { %struct.list_head }
%union.anon.71 = type { %struct.hlist_node }
%struct.path = type { ptr, ptr }
%struct.fs_error_report = type { i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.49, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.13 }
%struct.llist_node = type { ptr }
%union.anon.13 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.15 }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.49 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.fanotify_event = type { %struct.fsnotify_event, %struct.hlist_node, i32, %struct.anon.77, ptr }
%struct.fsnotify_event = type { %struct.list_head }
%struct.anon.77 = type { i32 }
%struct.fanotify_perm_event = type { %struct.fanotify_event, %struct.path, i16, i16, i32 }
%struct.fanotify_error_event = type { %struct.fanotify_event, i32, i32, %struct.__kernel_fsid_t, %struct.anon.80 }
%struct.anon.80 = type { %struct.fanotify_fh, [128 x i8] }
%struct.fanotify_fh = type { i8, i8, i8, i8, [0 x i8] }
%struct.fanotify_fid_event = type { %struct.fanotify_event, %struct.__kernel_fsid_t, %struct.anon.81 }
%struct.anon.81 = type { %struct.fanotify_fh, [12 x i8] }
%struct.fanotify_path_event = type { %struct.fanotify_event, %struct.path }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i32, i32 }
%struct.pacct_struct = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.fanotify_name_event = type { %struct.fanotify_event, %struct.__kernel_fsid_t, %struct.fanotify_info }
%struct.fanotify_info = type { i8, i8, i8, i8, i8, [3 x i8], [0 x i8] }

@fanotify_fsnotify_ops = dso_local constant { %struct.fsnotify_ops, [40 x i8] } { %struct.fsnotify_ops { ptr @fanotify_handle_event, ptr null, ptr @fanotify_free_group_priv, ptr @fanotify_freeing_mark, ptr @fanotify_free_event, ptr @fanotify_free_mark }, [40 x i8] zeroinitializer }, align 32
@fanotify_handle_event.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -21, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fanotify\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fanotify_handle_event\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"fs/notify/fanotify/fanotify.c\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: group=%p mask=%x report_mask=%x\0A\00", [59 x i8] zeroinitializer }, align 32
@fanotify_group_event_mask.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 76, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fanotify_group_event_mask\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: report_mask=%x mask=%x data=%p data_type=%d\0A\00", [47 x i8] zeroinitializer }, align 32
@fanotify_get_fsid.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@fanotify_alloc_event.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@int_active_memcg = external dso_local global ptr, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@fanotify_perm_event_cachep = external dso_local local_unnamed_addr global ptr, align 4
@fanotify_alloc_error_event.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@fanotify_encode_fh_len.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@fanotify_encode_fh.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@fanotify_encode_fh._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.fanotify_encode_fh = private unnamed_addr constant [19 x i8] c"fanotify_encode_fh\00", align 1
@fanotify_encode_fh._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @__func__.fanotify_encode_fh, ptr @.str.2, i32 474, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\014fanotify: failed to encode fid (type=%d, len=%d, err=%i)\0A\00", [36 x i8] zeroinitializer }, align 32
@fanotify_encode_fh._entry_ptr = internal global ptr @fanotify_encode_fh._entry, section ".printk_index", align 4
@fanotify_alloc_name_event.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 -90, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fanotify_alloc_name_event\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%s: size=%u dir_fh_len=%u child_fh_len=%u name_len=%u name='%.*s'\0A\00", [61 x i8] zeroinitializer }, align 32
@fanotify_alloc_name_event.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.10, i8 0, i8 -89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: dir2_fh_len=%u name2_len=%u name2='%.*s'\0A\00", [50 x i8] zeroinitializer }, align 32
@fanotify_info_set_dir_fh.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"fs/notify/fanotify/fanotify.h\00", [34 x i8] zeroinitializer }, align 32
@fanotify_info_set_dir_fh.__already_done.12 = internal unnamed_addr global i1 false, section ".data.once", align 1
@fanotify_info_set_dir_fh.__already_done.13 = internal unnamed_addr global i1 false, section ".data.once", align 1
@fanotify_info_set_dir_fh.__already_done.14 = internal unnamed_addr global i1 false, section ".data.once", align 1
@fanotify_info_set_dir2_fh.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@fanotify_info_set_dir2_fh.__already_done.15 = internal unnamed_addr global i1 false, section ".data.once", align 1
@fanotify_info_set_dir2_fh.__already_done.16 = internal unnamed_addr global i1 false, section ".data.once", align 1
@fanotify_info_set_file_fh.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@fanotify_info_set_file_fh.__already_done.17 = internal unnamed_addr global i1 false, section ".data.once", align 1
@fanotify_info_copy_name.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@fanotify_info_copy_name.__already_done.18 = internal unnamed_addr global i1 false, section ".data.once", align 1
@fanotify_info_copy_name2.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@fanotify_fid_event_cachep = external dso_local local_unnamed_addr global ptr, align 4
@fanotify_path_event_cachep = external dso_local local_unnamed_addr global ptr, align 4
@fanotify_merge.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 49, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fanotify_merge\00", [17 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: group=%p event=%p bucket=%u\0A\00", [63 x i8] zeroinitializer }, align 32
@fanotify_should_merge.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 0, i8 34, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fanotify_should_merge\00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: old=%p new=%p\0A\00", [45 x i8] zeroinitializer }, align 32
@fanotify_should_merge.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@fanotify_insert_event.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.20, i8 0, i8 -33, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fanotify_insert_event\00", [42 x i8] zeroinitializer }, align 32
@fanotify_get_response.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 0, i8 58, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fanotify_get_response\00", [42 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: group=%p event=%p\0A\00", [41 x i8] zeroinitializer }, align 32
@fanotify_get_response.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@fanotify_get_response.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.26, i8 0, i8 69, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: group=%p event=%p about to return ret=%d\0A\00", [50 x i8] zeroinitializer }, align 32
@fanotify_free_event.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@fanotify_mark_cache = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.27 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.30 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 2097152, i64 4194304]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 255]
@__sancov_gen_cov_switch_values.34 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 5]
@___asan_gen_.35 = private unnamed_addr constant [22 x i8] c"fanotify_fsnotify_ops\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 1081, i32 27 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 940, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 306, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 473, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 664, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 669, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [33 x i8] c"../fs/notify/fanotify/fanotify.h\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 183, i32 6 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 195, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 139, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 893, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 235, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.102 = private constant [33 x i8] c"../fs/notify/fanotify/fanotify.c\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 278, i32 2 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @fanotify_encode_fh._entry, ptr @fanotify_encode_fh._entry_ptr, ptr @fanotify_fsnotify_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @fanotify_encode_fh._rs, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fanotify_fsnotify_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fanotify_encode_fh._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fanotify_encode_fh._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fanotify_handle_event(ptr noundef %group, i32 noundef %mask, ptr noundef %data, i32 noundef %data_type, ptr noundef %dir, ptr noundef %file_name, i32 noundef %cookie, ptr noundef %iter_info) #0 align 64 {
entry:
  %dwords.i.i257.i = alloca i32, align 4
  %dwords.i.i.i = alloca i32, align 4
  %hash.i = alloca i32, align 4
  %fsid = alloca %struct.__kernel_fsid_t, align 8
  %match_mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fsid) #11
  %0 = ptrtoint ptr %fsid to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %fsid, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %match_mask) #11
  %1 = ptrtoint ptr %match_mask to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %match_mask, align 4
  %call = call fastcc i32 @fanotify_group_event_mask(ptr noundef %group, ptr noundef %iter_info, ptr noundef nonnull %match_mask, i32 noundef %mask, ptr noundef %data, i32 noundef %data_type, ptr noundef %dir)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body64

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body64:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fanotify_handle_event.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fanotify_handle_event, %if.then69)) #11
          to label %do.end72 [label %if.then69], !srcloc !95

if.then69:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %match_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %match_mask, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fanotify_handle_event.__UNIQUE_ID_ddebug273, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, ptr noundef %group, i32 noundef %call, i32 noundef %3) #11
  br label %do.end72

do.end72:                                         ; preds = %if.then69, %do.body64
  %and.i = and i32 %call, 458752
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.end72.if.end78_crit_edge, label %if.then74

do.end72.if.end78_crit_edge:                      ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end78

if.then74:                                        ; preds = %do.end72
  %call75 = tail call zeroext i1 @fsnotify_prepare_user_wait(ptr noundef %iter_info) #11
  br i1 %call75, label %if.then74.if.end78_crit_edge, label %if.then74.cleanup_crit_edge

if.then74.cleanup_crit_edge:                      ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then74.if.end78_crit_edge:                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end78

if.end78:                                         ; preds = %if.then74.if.end78_crit_edge, %do.end72.if.end78_crit_edge
  %flags = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 15, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool79.not = icmp eq i32 %and, 0
  br i1 %tobool79.not, label %if.end78.if.end88_crit_edge, label %if.then80

if.end78.if.end88_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end88

if.then80:                                        ; preds = %if.end78
  %report_mask.i.i = getelementptr inbounds %struct.fsnotify_iter_info, ptr %iter_info, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then80
  %tmp81.sroa.0.0 = phi i32 [ 0, %if.then80 ], [ %tmp81.sroa.0.1, %for.inc.i.for.body.i_crit_edge ]
  %type.077.i = phi i32 [ 0, %if.then80 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %report_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %report_mask.i.i, align 4, !noalias !96
  %shl.i.i = shl nuw nsw i32 1, %type.077.i
  %and.i.i = and i32 %7, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %for.body.i.for.inc.i_crit_edge, label %do.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

do.end.i:                                         ; preds = %for.body.i
  %arrayidx.i = getelementptr [5 x ptr], ptr %iter_info, i32 0, i32 %type.077.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4, !noalias !96
  %connector.i = getelementptr inbounds %struct.fsnotify_mark, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %connector.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %connector.i, align 4, !noalias !96
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %do.end.i.for.inc.i_crit_edge, label %if.end2.i

do.end.i.for.inc.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end2.i:                                        ; preds = %do.end.i
  %flags.i = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %flags.i, align 2, !noalias !96
  %14 = and i16 %13, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool3.not.i = icmp eq i16 %14, 0
  br i1 %tobool3.not.i, label %if.end2.i.for.inc.i_crit_edge, label %do.end9.i

if.end2.i.for.inc.i_crit_edge:                    ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

do.end9.i:                                        ; preds = %if.end2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !noalias !96, !srcloc !99
  %fsid.i = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %11, i32 0, i32 3
  %15 = ptrtoint ptr %fsid.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %16 = load i64, ptr %fsid.i, align 4, !noalias !96
  %tmp81.sroa.0.0.extract.shift = lshr i64 %16, 32
  %tmp81.sroa.0.0.extract.trunc = trunc i64 %tmp81.sroa.0.0.extract.shift to i32
  %tmp81.sroa.5.0.extract.trunc = trunc i64 %16 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %16)
  %tobool13.not.i = icmp ult i64 %16, 4294967296
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tmp81.sroa.5.0.extract.trunc)
  %tobool16.not.i = icmp eq i32 %tmp81.sroa.5.0.extract.trunc, 0
  %or.cond = and i1 %tobool13.not.i, %tobool16.not.i
  br i1 %or.cond, label %land.rhs21.i, label %fanotify_get_fsid.exit.split.loop.exit191

land.rhs21.i:                                     ; preds = %do.end9.i
  %.b74.i = load i1, ptr @fanotify_get_fsid.__already_done, align 1, !noalias !96
  br i1 %.b74.i, label %land.rhs21.i.for.inc.i_crit_edge, label %if.then28.i, !prof !100

land.rhs21.i.for.inc.i_crit_edge:                 ; preds = %land.rhs21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then28.i:                                      ; preds = %land.rhs21.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @fanotify_get_fsid.__already_done, align 1, !noalias !96
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 870, i32 noundef 9, ptr noundef null) #11, !noalias !96
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then28.i, %land.rhs21.i.for.inc.i_crit_edge, %if.end2.i.for.inc.i_crit_edge, %do.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %tmp81.sroa.0.1 = phi i32 [ %tmp81.sroa.0.0, %for.body.i.for.inc.i_crit_edge ], [ %tmp81.sroa.0.0, %do.end.i.for.inc.i_crit_edge ], [ %tmp81.sroa.0.0, %if.end2.i.for.inc.i_crit_edge ], [ %tmp81.sroa.0.0.extract.trunc, %land.rhs21.i.for.inc.i_crit_edge ], [ %tmp81.sroa.0.0.extract.trunc, %if.then28.i ]
  %inc.i = add nuw nsw i32 %type.077.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 5
  br i1 %exitcond.not.i, label %for.inc.i.fanotify_get_fsid.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.fanotify_get_fsid.exit_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fanotify_get_fsid.exit

fanotify_get_fsid.exit.split.loop.exit191:        ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  %tmp81.sroa.0.0.extract.trunc.le = trunc i64 %tmp81.sroa.0.0.extract.shift to i32
  %tmp81.sroa.5.0.extract.trunc.le = trunc i64 %16 to i32
  br label %fanotify_get_fsid.exit

fanotify_get_fsid.exit:                           ; preds = %fanotify_get_fsid.exit.split.loop.exit191, %for.inc.i.fanotify_get_fsid.exit_crit_edge
  %tmp81.sroa.5.2 = phi i32 [ %tmp81.sroa.5.0.extract.trunc.le, %fanotify_get_fsid.exit.split.loop.exit191 ], [ 0, %for.inc.i.fanotify_get_fsid.exit_crit_edge ]
  %tmp81.sroa.0.2 = phi i32 [ %tmp81.sroa.0.0.extract.trunc.le, %fanotify_get_fsid.exit.split.loop.exit191 ], [ %tmp81.sroa.0.1, %for.inc.i.fanotify_get_fsid.exit_crit_edge ]
  %tmp81.sroa.5.0.insert.ext = zext i32 %tmp81.sroa.5.2 to i64
  %tmp81.sroa.0.0.insert.ext = zext i32 %tmp81.sroa.0.2 to i64
  %tmp81.sroa.0.0.insert.shift = shl nuw i64 %tmp81.sroa.0.0.insert.ext, 32
  %tmp81.sroa.0.0.insert.insert = or i64 %tmp81.sroa.0.0.insert.shift, %tmp81.sroa.5.0.insert.ext
  %17 = ptrtoint ptr %fsid to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %tmp81.sroa.0.0.insert.insert, ptr %fsid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tmp81.sroa.0.2)
  %tobool82.not = icmp eq i32 %tmp81.sroa.0.2, 0
  br i1 %tobool82.not, label %land.lhs.true, label %fanotify_get_fsid.exit.if.end88_crit_edge

fanotify_get_fsid.exit.if.end88_crit_edge:        ; preds = %fanotify_get_fsid.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end88

land.lhs.true:                                    ; preds = %fanotify_get_fsid.exit
  %arrayidx84 = getelementptr inbounds [2 x i32], ptr %fsid, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool85.not = icmp eq i32 %19, 0
  br i1 %tobool85.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end88_crit_edge

land.lhs.true.if.end88_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end88

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end88:                                         ; preds = %land.lhs.true.if.end88_crit_edge, %fanotify_get_fsid.exit.if.end88_crit_edge, %if.end78.if.end88_crit_edge
  %20 = ptrtoint ptr %match_mask to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %match_mask, align 4
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 4
  %and.i167 = and i32 %23, 7680
  %and.i.i168 = and i32 %call, 268436416
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i168)
  %tobool.not.i.i = icmp ne i32 %and.i.i168, 0
  %and1.i.i = and i32 %23, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i.i = icmp eq i32 %and1.i.i, 0
  %or.cond.i.i = and i1 %tobool.not.i.i, %tobool2.not.i.i
  br i1 %or.cond.i.i, label %if.end88.fanotify_fid_inode.exit.i_crit_edge, label %if.end.i.i

if.end88.fanotify_fid_inode.exit.i_crit_edge:     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #13
  br label %fanotify_fid_inode.exit.i

if.end.i.i:                                       ; preds = %if.end88
  %24 = zext i32 %data_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i32 %data_type, label %if.end.i.i.fanotify_fid_inode.exit.i_crit_edge [
    i32 2, label %if.end.i.i.fsnotify_data_inode.exit.i.i_crit_edge
    i32 3, label %fanotify_fid_inode.exit.thread346.i
    i32 1, label %fanotify_fid_inode.exit.thread349.i
    i32 4, label %fanotify_fid_inode.exit.thread352.i
  ]

if.end.i.i.fsnotify_data_inode.exit.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fsnotify_data_inode.exit.i.i

if.end.i.i.fanotify_fid_inode.exit.i_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fanotify_fid_inode.exit.i

fanotify_fid_inode.exit.thread346.i:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %d_inode.i.i.i.i = getelementptr inbounds %struct.dentry, ptr %data, i32 0, i32 5
  %25 = ptrtoint ptr %d_inode.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %d_inode.i.i.i.i, align 8
  br label %sw.bb1.i.i226.i

fanotify_fid_inode.exit.thread349.i:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dentry.i.i.i = getelementptr inbounds %struct.path, ptr %data, i32 0, i32 1
  %27 = ptrtoint ptr %dentry.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dentry.i.i.i, align 4
  %d_inode.i8.i.i.i = getelementptr inbounds %struct.dentry, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %d_inode.i8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %d_inode.i8.i.i.i, align 8
  br label %sw.bb2.i.i229.i

fanotify_fid_inode.exit.thread352.i:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %inode.i.i.i = getelementptr inbounds %struct.fs_error_report, ptr %data, i32 0, i32 1
  %31 = ptrtoint ptr %inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %inode.i.i.i, align 4
  br label %sw.bb4.i.i231.i

fanotify_fid_inode.exit.i:                        ; preds = %if.end.i.i.fanotify_fid_inode.exit.i_crit_edge, %if.end88.fanotify_fid_inode.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %dir, %if.end88.fanotify_fid_inode.exit.i_crit_edge ], [ null, %if.end.i.i.fanotify_fid_inode.exit.i_crit_edge ]
  %33 = zext i32 %data_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %data_type, label %fsnotify_data_inode.exit.thread.i.i [
    i32 2, label %fanotify_fid_inode.exit.i.fsnotify_data_inode.exit.i.i_crit_edge
    i32 3, label %fanotify_fid_inode.exit.i.sw.bb1.i.i226.i_crit_edge
    i32 1, label %fanotify_fid_inode.exit.i.sw.bb2.i.i229.i_crit_edge
    i32 4, label %fanotify_fid_inode.exit.i.sw.bb4.i.i231.i_crit_edge
  ]

fanotify_fid_inode.exit.i.sw.bb4.i.i231.i_crit_edge: ; preds = %fanotify_fid_inode.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb4.i.i231.i

fanotify_fid_inode.exit.i.sw.bb2.i.i229.i_crit_edge: ; preds = %fanotify_fid_inode.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2.i.i229.i

fanotify_fid_inode.exit.i.sw.bb1.i.i226.i_crit_edge: ; preds = %fanotify_fid_inode.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb1.i.i226.i

fanotify_fid_inode.exit.i.fsnotify_data_inode.exit.i.i_crit_edge: ; preds = %fanotify_fid_inode.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fsnotify_data_inode.exit.i.i

sw.bb1.i.i226.i:                                  ; preds = %fanotify_fid_inode.exit.i.sw.bb1.i.i226.i_crit_edge, %fanotify_fid_inode.exit.thread346.i
  %retval.0.i348.i = phi ptr [ %26, %fanotify_fid_inode.exit.thread346.i ], [ %retval.0.i.i, %fanotify_fid_inode.exit.i.sw.bb1.i.i226.i_crit_edge ]
  %d_inode.i.i.i225.i = getelementptr inbounds %struct.dentry, ptr %data, i32 0, i32 5
  %34 = ptrtoint ptr %d_inode.i.i.i225.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %d_inode.i.i.i225.i, align 8
  br label %fsnotify_data_inode.exit.i.i

sw.bb2.i.i229.i:                                  ; preds = %fanotify_fid_inode.exit.i.sw.bb2.i.i229.i_crit_edge, %fanotify_fid_inode.exit.thread349.i
  %retval.0.i351.i = phi ptr [ %30, %fanotify_fid_inode.exit.thread349.i ], [ %retval.0.i.i, %fanotify_fid_inode.exit.i.sw.bb2.i.i229.i_crit_edge ]
  %dentry.i.i227.i = getelementptr inbounds %struct.path, ptr %data, i32 0, i32 1
  %36 = ptrtoint ptr %dentry.i.i227.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dentry.i.i227.i, align 4
  %d_inode.i8.i.i228.i = getelementptr inbounds %struct.dentry, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %d_inode.i8.i.i228.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %d_inode.i8.i.i228.i, align 8
  br label %fsnotify_data_inode.exit.i.i

sw.bb4.i.i231.i:                                  ; preds = %fanotify_fid_inode.exit.i.sw.bb4.i.i231.i_crit_edge, %fanotify_fid_inode.exit.thread352.i
  %retval.0.i354.i = phi ptr [ %32, %fanotify_fid_inode.exit.thread352.i ], [ %retval.0.i.i, %fanotify_fid_inode.exit.i.sw.bb4.i.i231.i_crit_edge ]
  %inode.i.i230.i = getelementptr inbounds %struct.fs_error_report, ptr %data, i32 0, i32 1
  %40 = ptrtoint ptr %inode.i.i230.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %inode.i.i230.i, align 4
  br label %fsnotify_data_inode.exit.i.i

fsnotify_data_inode.exit.i.i:                     ; preds = %sw.bb4.i.i231.i, %sw.bb2.i.i229.i, %sw.bb1.i.i226.i, %fanotify_fid_inode.exit.i.fsnotify_data_inode.exit.i.i_crit_edge, %if.end.i.i.fsnotify_data_inode.exit.i.i_crit_edge
  %retval.0.i345.i = phi ptr [ %retval.0.i354.i, %sw.bb4.i.i231.i ], [ %retval.0.i351.i, %sw.bb2.i.i229.i ], [ %retval.0.i348.i, %sw.bb1.i.i226.i ], [ %retval.0.i.i, %fanotify_fid_inode.exit.i.fsnotify_data_inode.exit.i.i_crit_edge ], [ %data, %if.end.i.i.fsnotify_data_inode.exit.i.i_crit_edge ]
  %retval.0.i.i.i = phi ptr [ %41, %sw.bb4.i.i231.i ], [ %39, %sw.bb2.i.i229.i ], [ %35, %sw.bb1.i.i226.i ], [ %data, %fanotify_fid_inode.exit.i.fsnotify_data_inode.exit.i.i_crit_edge ], [ %data, %if.end.i.i.fsnotify_data_inode.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i168)
  %tobool.not.i233.i = icmp eq i32 %and.i.i168, 0
  br i1 %tobool.not.i233.i, label %if.end.i234.i, label %fsnotify_data_inode.exit.i.i.fanotify_dfid_inode.exit.i_crit_edge

fsnotify_data_inode.exit.i.i.fanotify_dfid_inode.exit.i_crit_edge: ; preds = %fsnotify_data_inode.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fanotify_dfid_inode.exit.i

fsnotify_data_inode.exit.thread.i.i:              ; preds = %fanotify_fid_inode.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i168)
  %tobool.not11.i.i = icmp eq i32 %and.i.i168, 0
  br i1 %tobool.not11.i.i, label %fsnotify_data_inode.exit.thread.i.i.if.end5.i.i_crit_edge, label %fsnotify_data_inode.exit.thread.i.i.fanotify_dfid_inode.exit.i_crit_edge

fsnotify_data_inode.exit.thread.i.i.fanotify_dfid_inode.exit.i_crit_edge: ; preds = %fsnotify_data_inode.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fanotify_dfid_inode.exit.i

fsnotify_data_inode.exit.thread.i.i.if.end5.i.i_crit_edge: ; preds = %fsnotify_data_inode.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i.i

if.end.i234.i:                                    ; preds = %fsnotify_data_inode.exit.i.i
  %tobool1.not.i.i = icmp eq ptr %retval.0.i.i.i, null
  br i1 %tobool1.not.i.i, label %if.end.i234.i.if.end5.i.i_crit_edge, label %land.lhs.true.i.i

if.end.i234.i.if.end5.i.i_crit_edge:              ; preds = %if.end.i234.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i234.i
  %42 = ptrtoint ptr %retval.0.i.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %retval.0.i.i.i, align 8
  %44 = and i16 %43, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %44)
  %cmp.i.i = icmp eq i16 %44, 16384
  br i1 %cmp.i.i, label %land.lhs.true.i.i.fanotify_dfid_inode.exit.i_crit_edge, label %land.lhs.true.i.i.if.end5.i.i_crit_edge

land.lhs.true.i.i.if.end5.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i.i

land.lhs.true.i.i.fanotify_dfid_inode.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fanotify_dfid_inode.exit.i

if.end5.i.i:                                      ; preds = %land.lhs.true.i.i.if.end5.i.i_crit_edge, %if.end.i234.i.if.end5.i.i_crit_edge, %fsnotify_data_inode.exit.thread.i.i.if.end5.i.i_crit_edge
  %retval.0.i344.i = phi ptr [ %retval.0.i345.i, %land.lhs.true.i.i.if.end5.i.i_crit_edge ], [ %retval.0.i345.i, %if.end.i234.i.if.end5.i.i_crit_edge ], [ %retval.0.i.i, %fsnotify_data_inode.exit.thread.i.i.if.end5.i.i_crit_edge ]
  br label %fanotify_dfid_inode.exit.i

fanotify_dfid_inode.exit.i:                       ; preds = %if.end5.i.i, %land.lhs.true.i.i.fanotify_dfid_inode.exit.i_crit_edge, %fsnotify_data_inode.exit.thread.i.i.fanotify_dfid_inode.exit.i_crit_edge, %fsnotify_data_inode.exit.i.i.fanotify_dfid_inode.exit.i_crit_edge
  %retval.0.i343.i = phi ptr [ %retval.0.i344.i, %if.end5.i.i ], [ %retval.0.i345.i, %fsnotify_data_inode.exit.i.i.fanotify_dfid_inode.exit.i_crit_edge ], [ %retval.0.i345.i, %land.lhs.true.i.i.fanotify_dfid_inode.exit.i_crit_edge ], [ %retval.0.i.i, %fsnotify_data_inode.exit.thread.i.i.fanotify_dfid_inode.exit.i_crit_edge ]
  %retval.0.i235.i = phi ptr [ %dir, %if.end5.i.i ], [ %dir, %fsnotify_data_inode.exit.i.i.fanotify_dfid_inode.exit.i_crit_edge ], [ %retval.0.i.i.i, %land.lhs.true.i.i.fanotify_dfid_inode.exit.i_crit_edge ], [ %dir, %fsnotify_data_inode.exit.thread.i.i.fanotify_dfid_inode.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %data_type)
  %cond.i.i = icmp eq i32 %data_type, 1
  %data..i.i = select i1 %cond.i.i, ptr %data, ptr null
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hash.i) #11
  %45 = ptrtoint ptr %hash.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %hash.i, align 4
  %and3.i = and i32 %call, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool.not.i169 = icmp eq i32 %and3.i, 0
  %and4.i = and i32 %23, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %fanotify_dfid_inode.exit.i.if.end92.i_crit_edge, label %land.lhs.true.i

fanotify_dfid_inode.exit.i.if.end92.i_crit_edge:  ; preds = %fanotify_dfid_inode.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end92.i

land.lhs.true.i:                                  ; preds = %fanotify_dfid_inode.exit.i
  %tobool6.not.i = icmp eq ptr %retval.0.i235.i, null
  br i1 %tobool6.not.i, label %land.lhs.true.i.if.end92.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end92.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end92.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i168)
  %tobool.not.i237.i = icmp eq i32 %and.i.i168, 0
  br i1 %tobool.not.i237.i, label %if.end.i239.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.i.i = icmp ne i32 %and1.i.i, 0
  br label %fanotify_report_child_fid.exit.i

if.end.i239.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %and3.i.i = and i32 %23, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i = icmp ne i32 %and3.i.i, 0
  %46 = and i1 %tobool.not.i169, %tobool4.not.i.i
  br label %fanotify_report_child_fid.exit.i

fanotify_report_child_fid.exit.i:                 ; preds = %if.end.i239.i, %if.then.i.i
  %retval.0.i240.i = phi i1 [ %tobool2.i.i, %if.then.i.i ], [ %46, %if.end.i239.i ]
  %call7.not.i = xor i1 %retval.0.i240.i, true
  %cmp.not.i = icmp eq ptr %retval.0.i343.i, %retval.0.i235.i
  %or.cond.i = select i1 %call7.not.i, i1 true, i1 %cmp.not.i
  %child.0.i = select i1 %or.cond.i, ptr null, ptr %retval.0.i343.i
  %and10.i = and i32 %23, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.then12.i, label %if.else.i

if.then12.i:                                      ; preds = %fanotify_report_child_fid.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %tobool13.i = icmp ne ptr %child.0.i, null
  br label %if.end21.i

if.else.i:                                        ; preds = %fanotify_report_child_fid.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %tobool17.not.not.i = xor i1 %tobool.not.i237.i, true
  %brmerge.i = or i1 %tobool.not.i169, %tobool17.not.not.i
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.else.i, %if.then12.i
  %name_event.0.i = phi i1 [ %tobool13.i, %if.then12.i ], [ %brmerge.i, %if.else.i ]
  %file_name.addr.0.i = phi ptr [ null, %if.then12.i ], [ %file_name, %if.else.i ]
  %and22.i = and i32 %call, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %if.end21.i.if.end92.i_crit_edge, label %if.then24.i

if.end21.i.if.end92.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end92.i

if.then24.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool25.not.i = icmp eq i32 %21, 0
  br i1 %tobool25.not.i, label %land.rhs.i, label %if.end68.i

land.rhs.i:                                       ; preds = %if.then24.i
  %.b219.i = load i1, ptr @fanotify_alloc_event.__already_done, align 1
  br i1 %.b219.i, label %land.rhs.i.fanotify_alloc_event.exit.thread_crit_edge, label %if.then36.i, !prof !100

land.rhs.i.fanotify_alloc_event.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fanotify_alloc_event.exit.thread

if.then36.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @fanotify_alloc_event.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 776, i32 noundef 9, ptr noundef null) #11
  br label %fanotify_alloc_event.exit.thread

if.end68.i:                                       ; preds = %if.then24.i
  %and73.i = and i32 %21, 1
  %and69.i = lshr i32 %21, 2
  %and69.lobit.i = and i32 %and69.i, 1
  %or.i = or i32 %and69.lobit.i, %and73.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %tobool75.not.i = icmp eq i32 %or.i, 0
  %and77.i = and i32 %21, 16
  %or80.i = or i32 %and69.lobit.i, %and77.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or80.i)
  %tobool81.not.i = icmp eq i32 %or80.i, 0
  %spec.select.i = select i1 %tobool75.not.i, ptr null, ptr %retval.0.i235.i
  %spec.select221.i = select i1 %tobool75.not.i, ptr null, ptr %file_name.addr.0.i
  br i1 %tobool81.not.i, label %if.end68.i.if.end92.i_crit_edge, label %if.then87.i

if.end68.i.if.end92.i_crit_edge:                  ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end92.i

if.then87.i:                                      ; preds = %if.end68.i
  %47 = zext i32 %data_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %data_type, label %sw.default.i.i [
    i32 3, label %if.then87.i.if.end92.i_crit_edge
    i32 1, label %sw.bb1.i.i
  ]

if.then87.i.if.end92.i_crit_edge:                 ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end92.i

sw.bb1.i.i:                                       ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #13
  %dentry.i.i = getelementptr inbounds %struct.path, ptr %data, i32 0, i32 1
  %48 = ptrtoint ptr %dentry.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dentry.i.i, align 4
  br label %if.end92.i

sw.default.i.i:                                   ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end92.i

if.end92.i:                                       ; preds = %sw.default.i.i, %sw.bb1.i.i, %if.then87.i.if.end92.i_crit_edge, %if.end68.i.if.end92.i_crit_edge, %if.end21.i.if.end92.i_crit_edge, %land.lhs.true.i.if.end92.i_crit_edge, %fanotify_dfid_inode.exit.i.if.end92.i_crit_edge
  %id.0.i = phi ptr [ %retval.0.i235.i, %if.end21.i.if.end92.i_crit_edge ], [ %retval.0.i343.i, %land.lhs.true.i.if.end92.i_crit_edge ], [ %retval.0.i343.i, %fanotify_dfid_inode.exit.i.if.end92.i_crit_edge ], [ %retval.0.i235.i, %sw.default.i.i ], [ %retval.0.i235.i, %sw.bb1.i.i ], [ %retval.0.i235.i, %if.then87.i.if.end92.i_crit_edge ], [ %retval.0.i235.i, %if.end68.i.if.end92.i_crit_edge ]
  %dirid.2.i = phi ptr [ %retval.0.i235.i, %if.end21.i.if.end92.i_crit_edge ], [ null, %land.lhs.true.i.if.end92.i_crit_edge ], [ %retval.0.i235.i, %fanotify_dfid_inode.exit.i.if.end92.i_crit_edge ], [ %spec.select.i, %sw.default.i.i ], [ %spec.select.i, %sw.bb1.i.i ], [ %spec.select.i, %if.then87.i.if.end92.i_crit_edge ], [ %spec.select.i, %if.end68.i.if.end92.i_crit_edge ]
  %moved.2.i = phi ptr [ null, %if.end21.i.if.end92.i_crit_edge ], [ null, %land.lhs.true.i.if.end92.i_crit_edge ], [ null, %fanotify_dfid_inode.exit.i.if.end92.i_crit_edge ], [ null, %sw.default.i.i ], [ %49, %sw.bb1.i.i ], [ %data, %if.then87.i.if.end92.i_crit_edge ], [ null, %if.end68.i.if.end92.i_crit_edge ]
  %child.1.i = phi ptr [ %child.0.i, %if.end21.i.if.end92.i_crit_edge ], [ null, %land.lhs.true.i.if.end92.i_crit_edge ], [ null, %fanotify_dfid_inode.exit.i.if.end92.i_crit_edge ], [ %child.0.i, %sw.default.i.i ], [ %child.0.i, %sw.bb1.i.i ], [ %child.0.i, %if.then87.i.if.end92.i_crit_edge ], [ %child.0.i, %if.end68.i.if.end92.i_crit_edge ]
  %name_event.1.off0.i = phi i1 [ %name_event.0.i, %if.end21.i.if.end92.i_crit_edge ], [ false, %land.lhs.true.i.if.end92.i_crit_edge ], [ false, %fanotify_dfid_inode.exit.i.if.end92.i_crit_edge ], [ %name_event.0.i, %sw.default.i.i ], [ %name_event.0.i, %sw.bb1.i.i ], [ %name_event.0.i, %if.then87.i.if.end92.i_crit_edge ], [ %name_event.0.i, %if.end68.i.if.end92.i_crit_edge ]
  %file_name.addr.3.i = phi ptr [ %file_name.addr.0.i, %if.end21.i.if.end92.i_crit_edge ], [ %file_name, %land.lhs.true.i.if.end92.i_crit_edge ], [ %file_name, %fanotify_dfid_inode.exit.i.if.end92.i_crit_edge ], [ %spec.select221.i, %sw.default.i.i ], [ %spec.select221.i, %sw.bb1.i.i ], [ %spec.select221.i, %if.then87.i.if.end92.i_crit_edge ], [ %spec.select221.i, %if.end68.i.if.end92.i_crit_edge ]
  %max_events.i = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 6
  %50 = ptrtoint ptr %max_events.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %max_events.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %51)
  %cmp93.i = icmp eq i32 %51, -1
  %..i = select i1 %cmp93.i, i32 4230336, i32 4213952
  %memcg.i = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 14
  %52 = ptrtoint ptr %memcg.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %memcg.i, align 4
  %54 = tail call i32 @llvm.read_register.i32(metadata !85) #11
  %and.i.i.i.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %and.i242.i = and i32 %57, 15728640
  %58 = tail call i32 @llvm.read_register.i32(metadata !85) #11
  %and.i.i78.i.i = and i32 %58, -16384
  %59 = inttoptr i32 %and.i.i78.i.i to ptr
  %preempt_count.i79.i.i = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %preempt_count.i79.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %preempt_count.i79.i.i, align 4
  %and2.i.i = and i32 %61, 983040
  %or.i.i = or i32 %and2.i.i, %and.i242.i
  %62 = tail call i32 @llvm.read_register.i32(metadata !85) #11
  %and.i.i80.i.i = and i32 %62, -16384
  %63 = inttoptr i32 %and.i.i80.i.i to ptr
  %preempt_count.i81.i.i = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %preempt_count.i81.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %preempt_count.i81.i.i, align 4
  %and5.i243.i = and i32 %65, 256
  %or6.i.i = or i32 %or.i.i, %and5.i243.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or6.i.i)
  %tobool.not.i244.i = icmp eq i32 %or6.i.i, 0
  %66 = tail call i32 @llvm.read_register.i32(metadata !85) #11
  %and.i85.i.i = and i32 %66, -16384
  %67 = inttoptr i32 %and.i85.i.i to ptr
  br i1 %tobool.not.i244.i, label %if.else.i.i, label %if.then.i245.i

if.then.i245.i:                                   ; preds = %if.end92.i
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %69, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !101
  %70 = tail call i32 @llvm.read_register.i32(metadata !85) #11
  %and.i.i.i = and i32 %70, -16384
  %71 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %73
  %74 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %75, ptrtoint (ptr @int_active_memcg to i32)
  %76 = inttoptr i32 %add.i.i to ptr
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile ptr, ptr %76, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !102
  %79 = tail call i32 @llvm.read_register.i32(metadata !85) #11
  %and.i.i.i82.i.i = and i32 %79, -16384
  %80 = inttoptr i32 %and.i.i.i82.i.i to ptr
  %preempt_count.i.i83.i.i = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %preempt_count.i.i83.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %preempt_count.i.i83.i.i, align 4
  %sub.i.i.i = add i32 %82, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i83.i.i, align 4
  %83 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !103
  %84 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %cpu.i.i, align 4
  %arrayidx47.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %85
  %86 = ptrtoint ptr %arrayidx47.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx47.i.i, align 4
  %add48.i.i = add i32 %87, ptrtoint (ptr @int_active_memcg to i32)
  %88 = inttoptr i32 %add48.i.i to ptr
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %53, ptr %88, align 4
  %90 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !104
  %and.i.i84.i.i = and i32 %90, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i84.i.i)
  %tobool59.not.i.i = icmp eq i32 %and.i.i84.i.i, 0
  br i1 %tobool59.not.i.i, label %if.then63.i.i, label %if.then.i245.i.do.end65.i.i_crit_edge, !prof !105

if.then.i245.i.do.end65.i.i_crit_edge:            ; preds = %if.then.i245.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end65.i.i

if.then63.i.i:                                    ; preds = %if.then.i245.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end65.i.i

do.end65.i.i:                                     ; preds = %if.then63.i.i, %if.then.i245.i.do.end65.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %83) #11, !srcloc !106
  br label %set_active_memcg.exit.i

if.else.i.i:                                      ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #13
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 2
  %91 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %task.i.i, align 8
  %active_memcg.i.i = getelementptr inbounds %struct.task_struct, ptr %92, i32 0, i32 206
  %93 = ptrtoint ptr %active_memcg.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %active_memcg.i.i, align 8
  store ptr %53, ptr %active_memcg.i.i, align 8
  br label %set_active_memcg.exit.i

set_active_memcg.exit.i:                          ; preds = %if.else.i.i, %do.end65.i.i
  %old.0.i.i = phi ptr [ %78, %do.end65.i.i ], [ %94, %if.else.i.i ]
  br i1 %tobool.i.not, label %if.else104.i, label %if.then102.i

if.then102.i:                                     ; preds = %set_active_memcg.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fanotify_perm_event_cachep to i32))
  %95 = load ptr, ptr @fanotify_perm_event_cachep, align 4
  %call.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %95, i32 noundef %..i) #11
  %tobool.not.i247.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i247.i, label %if.then102.i.out.i_crit_edge, label %if.end.i248.i

if.then102.i.out.i_crit_edge:                     ; preds = %if.then102.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end.i248.i:                                    ; preds = %if.then102.i
  call void @__sanitizer_cov_trace_pc() #13
  %96 = getelementptr inbounds %struct.fanotify_event, ptr %call.i.i, i32 0, i32 3
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %bf.load.i.i = load i32, ptr %96, align 4
  %bf.clear.i.i = and i32 %bf.load.i.i, 536870911
  %bf.set.i.i = or i32 %bf.clear.i.i, 1610612736
  store i32 %bf.set.i.i, ptr %96, align 4
  %response.i.i = getelementptr inbounds %struct.fanotify_perm_event, ptr %call.i.i, i32 0, i32 2
  %98 = ptrtoint ptr %response.i.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 0, ptr %response.i.i, align 4
  %state.i.i = getelementptr inbounds %struct.fanotify_perm_event, ptr %call.i.i, i32 0, i32 3
  %99 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 0, ptr %state.i.i, align 2
  %path1.i.i = getelementptr inbounds %struct.fanotify_perm_event, ptr %call.i.i, i32 0, i32 1
  %100 = ptrtoint ptr %data..i.i to i32
  call void @__asan_loadN_noabort(i32 %100, i32 8)
  %101 = load i64, ptr %data..i.i, align 4
  %102 = ptrtoint ptr %path1.i.i to i32
  call void @__asan_storeN_noabort(i32 %102, i32 8)
  store i64 %101, ptr %path1.i.i, align 4
  tail call void @path_get(ptr noundef %data..i.i) #11
  br label %if.end131.i

if.else104.i:                                     ; preds = %set_active_memcg.exit.i
  %and.i249.i = and i32 %call, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i249.i)
  %tobool.i250.not.i = icmp eq i32 %and.i249.i, 0
  br i1 %tobool.i250.not.i, label %if.else108.i, label %if.then106.i

if.then106.i:                                     ; preds = %if.else104.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %data_type)
  %cond.i.i.i = icmp ne i32 %data_type, 4
  %tobool.not78.i.i = icmp eq ptr %data, null
  %tobool.not.i251.i = or i1 %tobool.not78.i.i, %cond.i.i.i
  br i1 %tobool.not.i251.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.then106.i
  %.b72.i.i = load i1, ptr @fanotify_alloc_error_event.__already_done, align 1
  br i1 %.b72.i.i, label %land.rhs.i.i.out.i_crit_edge, label %if.then.i252.i, !prof !100

land.rhs.i.i.out.i_crit_edge:                     ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.then.i252.i:                                   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @fanotify_alloc_error_event.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 689, i32 noundef 9, ptr noundef null) #11
  br label %out.i

if.end39.i.i:                                     ; preds = %if.then106.i
  %error_events_pool.i.i = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 15, i32 0, i32 6
  %call40.i.i = tail call noalias ptr @mempool_alloc(ptr noundef %error_events_pool.i.i, i32 noundef 3136) #11
  %tobool41.not.i.i = icmp eq ptr %call40.i.i, null
  br i1 %tobool41.not.i.i, label %if.end39.i.i.out.i_crit_edge, label %if.end43.i.i

if.end39.i.i.out.i_crit_edge:                     ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end43.i.i:                                     ; preds = %if.end39.i.i
  %103 = getelementptr inbounds %struct.fanotify_event, ptr %call40.i.i, i32 0, i32 3
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %bf.load.i253.i = load i32, ptr %103, align 4
  %bf.clear.i254.i = and i32 %bf.load.i253.i, 536870911
  %bf.set.i255.i = or i32 %bf.clear.i254.i, -1610612736
  store i32 %bf.set.i255.i, ptr %103, align 4
  %105 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %data, align 4
  %error44.i.i = getelementptr inbounds %struct.fanotify_error_event, ptr %call40.i.i, i32 0, i32 1
  %107 = ptrtoint ptr %error44.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %error44.i.i, align 4
  %err_count.i.i = getelementptr inbounds %struct.fanotify_error_event, ptr %call40.i.i, i32 0, i32 2
  %108 = ptrtoint ptr %err_count.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 1, ptr %err_count.i.i, align 4
  %fsid45.i.i = getelementptr inbounds %struct.fanotify_error_event, ptr %call40.i.i, i32 0, i32 3
  %109 = ptrtoint ptr %fsid to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %fsid, align 8
  %111 = ptrtoint ptr %fsid45.i.i to i32
  call void @__asan_storeN_noabort(i32 %111, i32 8)
  store i64 %110, ptr %fsid45.i.i, align 4
  %inode46.i.i = getelementptr inbounds %struct.fs_error_report, ptr %data, i32 0, i32 1
  %112 = ptrtoint ptr %inode46.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %inode46.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dwords.i.i.i) #11
  %114 = ptrtoint ptr %dwords.i.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %dwords.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %113, null
  br i1 %tobool.not.i.i.i, label %if.end43.i.i.fanotify_encode_fh_len.exit.thread.i.i_crit_edge, label %if.end.i.i.i

if.end43.i.i.fanotify_encode_fh_len.exit.thread.i.i_crit_edge: ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fanotify_encode_fh_len.exit.thread.i.i

if.end.i.i.i:                                     ; preds = %if.end43.i.i
  %call.i.i.i = call i32 @exportfs_encode_inode_fh(ptr noundef nonnull %113, ptr noundef null, ptr noundef nonnull %dwords.i.i.i, ptr noundef null) #11
  %115 = ptrtoint ptr %dwords.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %dwords.i.i.i, align 4
  %shl.i.i.i = shl i32 %116, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %shl.i.i.i)
  %cmp.i.i.i = icmp sgt i32 %shl.i.i.i, 128
  br i1 %cmp.i.i.i, label %land.rhs.i.i.i, label %fanotify_encode_fh_len.exit.i.i

land.rhs.i.i.i:                                   ; preds = %if.end.i.i.i
  %.b46.i.i.i = load i1, ptr @fanotify_encode_fh_len.__already_done, align 1
  br i1 %.b46.i.i.i, label %land.rhs.i.i.i.fanotify_encode_fh_len.exit.thread.i.i_crit_edge, label %if.then8.i.i.i, !prof !100

land.rhs.i.i.i.fanotify_encode_fh_len.exit.thread.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fanotify_encode_fh_len.exit.thread.i.i

if.then8.i.i.i:                                   ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @fanotify_encode_fh_len.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 399, i32 noundef 9, ptr noundef null) #11
  br label %fanotify_encode_fh_len.exit.thread.i.i

fanotify_encode_fh_len.exit.thread.i.i:           ; preds = %if.then8.i.i.i, %land.rhs.i.i.i.fanotify_encode_fh_len.exit.thread.i.i_crit_edge, %if.end43.i.i.fanotify_encode_fh_len.exit.thread.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dwords.i.i.i) #11
  br label %117

fanotify_encode_fh_len.exit.i.i:                  ; preds = %if.end.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dwords.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i.i.i)
  %tobool48.not.i.i = icmp eq i32 %shl.i.i.i, 0
  br i1 %tobool48.not.i.i, label %fanotify_encode_fh_len.exit.i.i._crit_edge, label %fanotify_encode_fh_len.exit.i.i._crit_edge194

fanotify_encode_fh_len.exit.i.i._crit_edge194:    ; preds = %fanotify_encode_fh_len.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %118

fanotify_encode_fh_len.exit.i.i._crit_edge:       ; preds = %fanotify_encode_fh_len.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %117

117:                                              ; preds = %fanotify_encode_fh_len.exit.i.i._crit_edge, %fanotify_encode_fh_len.exit.thread.i.i
  br label %118

118:                                              ; preds = %117, %fanotify_encode_fh_len.exit.i.i._crit_edge194
  %retval.0.i76.i.i = phi i32 [ 0, %117 ], [ %shl.i.i.i, %fanotify_encode_fh_len.exit.i.i._crit_edge194 ]
  %119 = phi ptr [ null, %117 ], [ %113, %fanotify_encode_fh_len.exit.i.i._crit_edge194 ]
  %120 = getelementptr inbounds %struct.fanotify_error_event, ptr %call40.i.i, i32 0, i32 4
  %call52.i.i = call fastcc i32 @fanotify_encode_fh(ptr noundef %120, ptr noundef %119, i32 noundef %retval.0.i76.i.i, ptr noundef null, i32 noundef 0) #11
  %121 = ptrtoint ptr %fsid to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %fsid, align 8
  %mul.i.i.i.i.i = mul i32 %122, 1640531527
  %arrayidx2.i.i.i = getelementptr inbounds [2 x i32], ptr %fsid, i32 0, i32 1
  %123 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx2.i.i.i, align 4
  %mul.i.i5.i.i.i = mul i32 %124, 1640531527
  %shr.i7.i.i.i = xor i32 %mul.i.i5.i.i.i, %mul.i.i.i.i.i
  %xor.i.i.i = lshr i32 %shr.i7.i.i.i, 3
  %125 = ptrtoint ptr %hash.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %hash.i, align 4
  %xor.i.i = xor i32 %xor.i.i.i, %126
  store i32 %xor.i.i, ptr %hash.i, align 4
  br label %if.end131.i

if.else108.i:                                     ; preds = %if.else104.i
  br i1 %name_event.1.off0.i, label %land.lhs.true111.i, label %if.else108.i.if.else119.i_crit_edge

if.else108.i.if.else119.i_crit_edge:              ; preds = %if.else108.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else119.i

land.lhs.true111.i:                               ; preds = %if.else108.i
  %tobool112.not.i = icmp eq ptr %file_name.addr.3.i, null
  %tobool114.not.i = icmp eq ptr %moved.2.i, null
  %or.cond222.i = select i1 %tobool112.not.i, i1 %tobool114.not.i, i1 false
  %tobool116.not.i = icmp eq ptr %child.1.i, null
  %or.cond223.i = select i1 %or.cond222.i, i1 %tobool116.not.i, i1 false
  br i1 %or.cond223.i, label %land.lhs.true111.i.if.else119.i_crit_edge, label %if.end128.i

land.lhs.true111.i.if.else119.i_crit_edge:        ; preds = %land.lhs.true111.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else119.i

if.else119.i:                                     ; preds = %land.lhs.true111.i.if.else119.i_crit_edge, %if.else108.i.if.else119.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i167)
  %tobool120.not.i = icmp eq i32 %and.i167, 0
  br i1 %tobool120.not.i, label %if.else123.i, label %if.then121.i

if.then121.i:                                     ; preds = %if.else119.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fanotify_fid_event_cachep to i32))
  %127 = load ptr, ptr @fanotify_fid_event_cachep, align 4
  %call.i258.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %127, i32 noundef %..i) #11
  %tobool.not.i259.i = icmp eq ptr %call.i258.i, null
  br i1 %tobool.not.i259.i, label %if.then121.i.out.i_crit_edge, label %if.end.i268.i

if.then121.i.out.i_crit_edge:                     ; preds = %if.then121.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end.i268.i:                                    ; preds = %if.then121.i
  %128 = getelementptr inbounds %struct.fanotify_event, ptr %call.i258.i, i32 0, i32 3
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_load4_noabort(i32 %129)
  %bf.load.i260.i = load i32, ptr %128, align 4
  %bf.clear.i261.i = and i32 %bf.load.i260.i, 536870911
  store i32 %bf.clear.i261.i, ptr %128, align 4
  %fsid1.i.i = getelementptr inbounds %struct.fanotify_fid_event, ptr %call.i258.i, i32 0, i32 1
  %130 = ptrtoint ptr %fsid to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %fsid, align 8
  %132 = ptrtoint ptr %fsid1.i.i to i32
  call void @__asan_storeN_noabort(i32 %132, i32 8)
  store i64 %131, ptr %fsid1.i.i, align 4
  %133 = lshr i64 %131, 32
  %134 = trunc i64 %133 to i32
  %mul.i.i.i.i262.i = mul i32 %134, 1640531527
  %135 = trunc i64 %131 to i32
  %mul.i.i5.i.i263.i = mul i32 %135, 1640531527
  %shr.i7.i.i264.i = xor i32 %mul.i.i.i.i262.i, %mul.i.i5.i.i263.i
  %xor.i.i265.i = lshr i32 %shr.i7.i.i264.i, 3
  %136 = ptrtoint ptr %hash.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %hash.i, align 4
  %xor.i266.i = xor i32 %xor.i.i265.i, %137
  store i32 %xor.i266.i, ptr %hash.i, align 4
  %138 = getelementptr inbounds %struct.fanotify_fid_event, ptr %call.i258.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dwords.i.i257.i) #11
  %139 = ptrtoint ptr %dwords.i.i257.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 0, ptr %dwords.i.i257.i, align 4
  %tobool.not.i.i267.i = icmp eq ptr %id.0.i, null
  br i1 %tobool.not.i.i267.i, label %if.end.i268.i.fanotify_encode_fh_len.exit.i277.i_crit_edge, label %if.end.i.i272.i

if.end.i268.i.fanotify_encode_fh_len.exit.i277.i_crit_edge: ; preds = %if.end.i268.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fanotify_encode_fh_len.exit.i277.i

if.end.i.i272.i:                                  ; preds = %if.end.i268.i
  %call.i.i269.i = call i32 @exportfs_encode_inode_fh(ptr noundef nonnull %id.0.i, ptr noundef null, ptr noundef nonnull %dwords.i.i257.i, ptr noundef null) #11
  %140 = ptrtoint ptr %dwords.i.i257.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %dwords.i.i257.i, align 4
  %shl.i.i270.i = shl i32 %141, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %shl.i.i270.i)
  %cmp.i.i271.i = icmp sgt i32 %shl.i.i270.i, 128
  br i1 %cmp.i.i271.i, label %land.rhs.i.i274.i, label %if.end.i.i272.i.fanotify_encode_fh_len.exit.i277.i_crit_edge

if.end.i.i272.i.fanotify_encode_fh_len.exit.i277.i_crit_edge: ; preds = %if.end.i.i272.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fanotify_encode_fh_len.exit.i277.i

land.rhs.i.i274.i:                                ; preds = %if.end.i.i272.i
  %.b46.i.i273.i = load i1, ptr @fanotify_encode_fh_len.__already_done, align 1
  br i1 %.b46.i.i273.i, label %land.rhs.i.i274.i.fanotify_encode_fh_len.exit.i277.i_crit_edge, label %if.then8.i.i275.i, !prof !100

land.rhs.i.i274.i.fanotify_encode_fh_len.exit.i277.i_crit_edge: ; preds = %land.rhs.i.i274.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fanotify_encode_fh_len.exit.i277.i

if.then8.i.i275.i:                                ; preds = %land.rhs.i.i274.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @fanotify_encode_fh_len.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 399, i32 noundef 9, ptr noundef null) #11
  br label %fanotify_encode_fh_len.exit.i277.i

fanotify_encode_fh_len.exit.i277.i:               ; preds = %if.then8.i.i275.i, %land.rhs.i.i274.i.fanotify_encode_fh_len.exit.i277.i_crit_edge, %if.end.i.i272.i.fanotify_encode_fh_len.exit.i277.i_crit_edge, %if.end.i268.i.fanotify_encode_fh_len.exit.i277.i_crit_edge
  %retval.0.i.i276.i = phi i32 [ 0, %if.end.i268.i.fanotify_encode_fh_len.exit.i277.i_crit_edge ], [ %shl.i.i270.i, %if.end.i.i272.i.fanotify_encode_fh_len.exit.i277.i_crit_edge ], [ 0, %if.then8.i.i275.i ], [ 0, %land.rhs.i.i274.i.fanotify_encode_fh_len.exit.i277.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dwords.i.i257.i) #11
  %call4.i.i = call fastcc i32 @fanotify_encode_fh(ptr noundef %138, ptr noundef %id.0.i, i32 noundef %retval.0.i.i276.i, ptr noundef nonnull %hash.i, i32 noundef %..i) #11
  br label %if.end131.i

if.else123.i:                                     ; preds = %if.else119.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fanotify_path_event_cachep to i32))
  %142 = load ptr, ptr @fanotify_path_event_cachep, align 4
  %call.i278.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %142, i32 noundef %..i) #11
  %tobool.not.i279.i = icmp eq ptr %call.i278.i, null
  br i1 %tobool.not.i279.i, label %if.else123.i.out.i_crit_edge, label %if.end.i286.i

if.else123.i.out.i_crit_edge:                     ; preds = %if.else123.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end.i286.i:                                    ; preds = %if.else123.i
  call void @__sanitizer_cov_trace_pc() #13
  %143 = getelementptr inbounds %struct.fanotify_event, ptr %call.i278.i, i32 0, i32 3
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %144)
  %bf.load.i280.i = load i32, ptr %143, align 4
  %bf.clear.i281.i = and i32 %bf.load.i280.i, 536870911
  %bf.set.i282.i = or i32 %bf.clear.i281.i, 1073741824
  store i32 %bf.set.i282.i, ptr %143, align 4
  %path1.i283.i = getelementptr inbounds %struct.fanotify_path_event, ptr %call.i278.i, i32 0, i32 1
  %145 = ptrtoint ptr %data..i.i to i32
  call void @__asan_loadN_noabort(i32 %145, i32 8)
  %146 = load i64, ptr %data..i.i, align 4
  %147 = ptrtoint ptr %path1.i283.i to i32
  call void @__asan_storeN_noabort(i32 %147, i32 8)
  store i64 %146, ptr %path1.i283.i, align 4
  %148 = trunc i64 %146 to i32
  %mul.i.i.i.i.i.i = mul i32 %148, 1640531527
  %149 = lshr i64 %146, 32
  %150 = trunc i64 %149 to i32
  %mul.i.i.i3.i.i.i = mul i32 %150, 1640531527
  %shr.i.i5.i.i.i = xor i32 %mul.i.i.i3.i.i.i, %mul.i.i.i.i.i.i
  %xor.i.i284.i = lshr i32 %shr.i.i5.i.i.i, 3
  %151 = ptrtoint ptr %hash.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %hash.i, align 4
  %xor.i285.i = xor i32 %xor.i.i284.i, %152
  store i32 %xor.i285.i, ptr %hash.i, align 4
  tail call void @path_get(ptr noundef %data..i.i) #11
  br label %if.end131.i

if.end128.i:                                      ; preds = %land.lhs.true111.i
  %call118.i = call fastcc ptr @fanotify_alloc_name_event(ptr noundef %dirid.2.i, ptr noundef nonnull %fsid, ptr noundef %file_name.addr.3.i, ptr noundef %child.1.i, ptr noundef %moved.2.i, ptr noundef nonnull %hash.i, i32 noundef %..i) #11
  %tobool129.not.i = icmp eq ptr %call118.i, null
  br i1 %tobool129.not.i, label %if.end128.i.out.i_crit_edge, label %if.end128.i.if.end131.i_crit_edge

if.end128.i.if.end131.i_crit_edge:                ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end131.i

if.end128.i.out.i_crit_edge:                      ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end131.i:                                      ; preds = %if.end128.i.if.end131.i_crit_edge, %if.end.i286.i, %fanotify_encode_fh_len.exit.i277.i, %118, %if.end.i248.i
  %event.0366.i = phi ptr [ %call118.i, %if.end128.i.if.end131.i_crit_edge ], [ %call.i278.i, %if.end.i286.i ], [ %call.i258.i, %fanotify_encode_fh_len.exit.i277.i ], [ %call40.i.i, %118 ], [ %call.i.i, %if.end.i248.i ]
  %153 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %flags, align 4
  %and133.i = and i32 %154, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133.i)
  %tobool134.not.i = icmp eq i32 %and133.i, 0
  %155 = call i32 @llvm.read_register.i32(metadata !85) #11
  %and.i291.i = and i32 %155, -16384
  %156 = inttoptr i32 %and.i291.i to ptr
  %task141.i = getelementptr inbounds %struct.thread_info, ptr %156, i32 0, i32 2
  %157 = ptrtoint ptr %task141.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %task141.i, align 8
  br i1 %tobool134.not.i, label %if.else139.i, label %if.then135.i

if.then135.i:                                     ; preds = %if.end131.i
  %thread_pid.i.i = getelementptr inbounds %struct.task_struct, ptr %158, i32 0, i32 78
  %159 = ptrtoint ptr %thread_pid.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %thread_pid.i.i, align 16
  %tobool.not.i288.i = icmp eq ptr %160, null
  br i1 %tobool.not.i288.i, label %if.then135.i.if.end144.i_crit_edge, label %if.then.i289.i

if.then135.i.if.end144.i_crit_edge:               ; preds = %if.then135.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end144.i

if.then.i289.i:                                   ; preds = %if.then135.i
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %160, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr nonnull %160, i32 1, i32 3, i32 1) #11
  %161 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %160, ptr nonnull %160, i32 1, ptr nonnull elementtype(i32) %160) #11, !srcloc !107
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %161, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i289.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !105

if.then.i289.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i289.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i289.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %162 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %162)
  %.not.i.i.i.i.i = icmp sgt i32 %162, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.if.end144.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !100

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.if.end144.i_crit_edge:          ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end144.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i289.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i289.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %160, i32 noundef %.sink.i.i.i.i.i) #11
  br label %if.end144.i

if.else139.i:                                     ; preds = %if.end131.i
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %158, i32 0, i32 111
  %163 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %signal.i.i, align 16
  %arrayidx.i292.i = getelementptr %struct.signal_struct, ptr %164, i32 0, i32 22, i32 1
  %165 = ptrtoint ptr %arrayidx.i292.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %arrayidx.i292.i, align 4
  %tobool.not.i293.i = icmp eq ptr %166, null
  br i1 %tobool.not.i293.i, label %if.else139.i.if.end144.i_crit_edge, label %if.then.i297.i

if.else139.i.if.end144.i_crit_edge:               ; preds = %if.else139.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end144.i

if.then.i297.i:                                   ; preds = %if.else139.i
  %call.i.i.i.i.i.i294.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %166, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr nonnull %166, i32 1, i32 3, i32 1) #11
  %167 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %166, ptr nonnull %166, i32 1, ptr nonnull elementtype(i32) %166) #11, !srcloc !107
  %asmresult.i.i.i.i.i.i295.i = extractvalue { i32, i32, i32 } %167, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i295.i)
  %tobool1.not.i.i.i.i296.i = icmp eq i32 %asmresult.i.i.i.i.i.i295.i, 0
  br i1 %tobool1.not.i.i.i.i296.i, label %if.then.i297.i.if.end15.sink.split.i.i.i.i302.i_crit_edge, label %if.else.i.i.i.i300.i, !prof !105

if.then.i297.i.if.end15.sink.split.i.i.i.i302.i_crit_edge: ; preds = %if.then.i297.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i302.i

if.else.i.i.i.i300.i:                             ; preds = %if.then.i297.i
  %add.i.i.i.i298.i = add i32 %asmresult.i.i.i.i.i.i295.i, 1
  %168 = or i32 %add.i.i.i.i298.i, %asmresult.i.i.i.i.i.i295.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %168)
  %.not.i.i.i.i299.i = icmp sgt i32 %168, -1
  br i1 %.not.i.i.i.i299.i, label %if.else.i.i.i.i300.i.if.end144.i_crit_edge, label %if.else.i.i.i.i300.i.if.end15.sink.split.i.i.i.i302.i_crit_edge, !prof !100

if.else.i.i.i.i300.i.if.end15.sink.split.i.i.i.i302.i_crit_edge: ; preds = %if.else.i.i.i.i300.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i302.i

if.else.i.i.i.i300.i.if.end144.i_crit_edge:       ; preds = %if.else.i.i.i.i300.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end144.i

if.end15.sink.split.i.i.i.i302.i:                 ; preds = %if.else.i.i.i.i300.i.if.end15.sink.split.i.i.i.i302.i_crit_edge, %if.then.i297.i.if.end15.sink.split.i.i.i.i302.i_crit_edge
  %.sink.i.i.i.i301.i = phi i32 [ 2, %if.then.i297.i.if.end15.sink.split.i.i.i.i302.i_crit_edge ], [ 1, %if.else.i.i.i.i300.i.if.end15.sink.split.i.i.i.i302.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %166, i32 noundef %.sink.i.i.i.i301.i) #11
  br label %if.end144.i

if.end144.i:                                      ; preds = %if.end15.sink.split.i.i.i.i302.i, %if.else.i.i.i.i300.i.if.end144.i_crit_edge, %if.else139.i.if.end144.i_crit_edge, %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.if.end144.i_crit_edge, %if.then135.i.if.end144.i_crit_edge
  %pid.0.i = phi ptr [ null, %if.then135.i.if.end144.i_crit_edge ], [ %160, %if.else.i.i.i.i.i.if.end144.i_crit_edge ], [ %160, %if.end15.sink.split.i.i.i.i.i ], [ null, %if.else139.i.if.end144.i_crit_edge ], [ %166, %if.else.i.i.i.i300.i.if.end144.i_crit_edge ], [ %166, %if.end15.sink.split.i.i.i.i302.i ]
  %169 = ptrtoint ptr %pid.0.i to i32
  %and3.lobit.i = lshr exact i32 %and3.i, 30
  %or147.i = or i32 %and3.lobit.i, %169
  %mul.i.i.i = mul i32 %or147.i, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 3
  %170 = ptrtoint ptr %hash.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %hash.i, align 4
  %xor.i = xor i32 %shr.i.i, %171
  store i32 %xor.i, ptr %hash.i, align 4
  %172 = ptrtoint ptr %event.0366.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store volatile ptr %event.0366.i, ptr %event.0366.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %event.0366.i, i32 0, i32 1
  %173 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %event.0366.i, ptr %prev.i.i.i.i, align 4
  %merge_list.i.i = getelementptr inbounds %struct.fanotify_event, ptr %event.0366.i, i32 0, i32 1
  %174 = ptrtoint ptr %merge_list.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr null, ptr %merge_list.i.i, align 4
  %pprev.i.i.i = getelementptr inbounds %struct.fanotify_event, ptr %event.0366.i, i32 0, i32 1, i32 1
  %175 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr null, ptr %pprev.i.i.i, align 4
  %176 = getelementptr inbounds %struct.fanotify_event, ptr %event.0366.i, i32 0, i32 3
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_load4_noabort(i32 %177)
  %bf.load.i305.i = load i32, ptr %176, align 4
  %bf.value.i.i = and i32 %xor.i, 536870911
  %bf.clear.i306.i = and i32 %bf.load.i305.i, -536870912
  %bf.set.i307.i = or i32 %bf.clear.i306.i, %bf.value.i.i
  store i32 %bf.set.i307.i, ptr %176, align 4
  %mask1.i.i = getelementptr inbounds %struct.fanotify_event, ptr %event.0366.i, i32 0, i32 2
  %178 = ptrtoint ptr %mask1.i.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %call, ptr %mask1.i.i, align 4
  %pid.i.i = getelementptr inbounds %struct.fanotify_event, ptr %event.0366.i, i32 0, i32 4
  %179 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %pid.0.i, ptr %pid.i.i, align 4
  br label %out.i

out.i:                                            ; preds = %if.end144.i, %if.end128.i.out.i_crit_edge, %if.else123.i.out.i_crit_edge, %if.then121.i.out.i_crit_edge, %if.end39.i.i.out.i_crit_edge, %if.then.i252.i, %land.rhs.i.i.out.i_crit_edge, %if.then102.i.out.i_crit_edge
  %event.0360.i = phi ptr [ null, %if.end128.i.out.i_crit_edge ], [ %event.0366.i, %if.end144.i ], [ null, %if.else123.i.out.i_crit_edge ], [ null, %if.then121.i.out.i_crit_edge ], [ null, %land.rhs.i.i.out.i_crit_edge ], [ null, %if.end39.i.i.out.i_crit_edge ], [ null, %if.then.i252.i ], [ null, %if.then102.i.out.i_crit_edge ]
  %180 = call i32 @llvm.read_register.i32(metadata !85) #11
  %and.i.i.i308.i = and i32 %180, -16384
  %181 = inttoptr i32 %and.i.i.i308.i to ptr
  %preempt_count.i.i309.i = getelementptr inbounds %struct.thread_info, ptr %181, i32 0, i32 1
  %182 = ptrtoint ptr %preempt_count.i.i309.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load volatile i32, ptr %preempt_count.i.i309.i, align 4
  %and.i310.i = and i32 %183, 15728640
  %184 = call i32 @llvm.read_register.i32(metadata !85) #11
  %and.i.i78.i311.i = and i32 %184, -16384
  %185 = inttoptr i32 %and.i.i78.i311.i to ptr
  %preempt_count.i79.i312.i = getelementptr inbounds %struct.thread_info, ptr %185, i32 0, i32 1
  %186 = ptrtoint ptr %preempt_count.i79.i312.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load volatile i32, ptr %preempt_count.i79.i312.i, align 4
  %and2.i313.i = and i32 %187, 983040
  %or.i314.i = or i32 %and2.i313.i, %and.i310.i
  %188 = call i32 @llvm.read_register.i32(metadata !85) #11
  %and.i.i80.i315.i = and i32 %188, -16384
  %189 = inttoptr i32 %and.i.i80.i315.i to ptr
  %preempt_count.i81.i316.i = getelementptr inbounds %struct.thread_info, ptr %189, i32 0, i32 1
  %190 = ptrtoint ptr %preempt_count.i81.i316.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load volatile i32, ptr %preempt_count.i81.i316.i, align 4
  %and5.i317.i = and i32 %191, 256
  %or6.i318.i = or i32 %or.i314.i, %and5.i317.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or6.i318.i)
  %tobool.not.i319.i = icmp eq i32 %or6.i318.i, 0
  %192 = call i32 @llvm.read_register.i32(metadata !85) #11
  %and.i85.i320.i = and i32 %192, -16384
  %193 = inttoptr i32 %and.i85.i320.i to ptr
  br i1 %tobool.not.i319.i, label %if.else.i339.i, label %if.then.i334.i

if.then.i334.i:                                   ; preds = %out.i
  %preempt_count.i.i.i321.i = getelementptr inbounds %struct.thread_info, ptr %193, i32 0, i32 1
  %194 = ptrtoint ptr %preempt_count.i.i.i321.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load volatile i32, ptr %preempt_count.i.i.i321.i, align 4
  %add.i.i322.i = add i32 %195, 1
  store volatile i32 %add.i.i322.i, ptr %preempt_count.i.i.i321.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !101
  %196 = call i32 @llvm.read_register.i32(metadata !85) #11
  %and.i.i323.i = and i32 %196, -16384
  %197 = inttoptr i32 %and.i.i323.i to ptr
  %cpu.i324.i = getelementptr inbounds %struct.thread_info, ptr %197, i32 0, i32 3
  %198 = ptrtoint ptr %cpu.i324.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %cpu.i324.i, align 4
  %arrayidx.i325.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %199
  %200 = ptrtoint ptr %arrayidx.i325.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %arrayidx.i325.i, align 4
  %add.i326.i = add i32 %201, ptrtoint (ptr @int_active_memcg to i32)
  %202 = inttoptr i32 %add.i326.i to ptr
  %203 = ptrtoint ptr %202 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load volatile ptr, ptr %202, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !102
  %205 = call i32 @llvm.read_register.i32(metadata !85) #11
  %and.i.i.i82.i327.i = and i32 %205, -16384
  %206 = inttoptr i32 %and.i.i.i82.i327.i to ptr
  %preempt_count.i.i83.i328.i = getelementptr inbounds %struct.thread_info, ptr %206, i32 0, i32 1
  %207 = ptrtoint ptr %preempt_count.i.i83.i328.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load volatile i32, ptr %preempt_count.i.i83.i328.i, align 4
  %sub.i.i329.i = add i32 %208, -1
  store volatile i32 %sub.i.i329.i, ptr %preempt_count.i.i83.i328.i, align 4
  %209 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !103
  %210 = ptrtoint ptr %cpu.i324.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %cpu.i324.i, align 4
  %arrayidx47.i330.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %211
  %212 = ptrtoint ptr %arrayidx47.i330.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %arrayidx47.i330.i, align 4
  %add48.i331.i = add i32 %213, ptrtoint (ptr @int_active_memcg to i32)
  %214 = inttoptr i32 %add48.i331.i to ptr
  %215 = ptrtoint ptr %214 to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr %old.0.i.i, ptr %214, align 4
  %216 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !104
  %and.i.i84.i332.i = and i32 %216, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i84.i332.i)
  %tobool59.not.i333.i = icmp eq i32 %and.i.i84.i332.i, 0
  br i1 %tobool59.not.i333.i, label %if.then63.i335.i, label %if.then.i334.i.do.end65.i336.i_crit_edge, !prof !105

if.then.i334.i.do.end65.i336.i_crit_edge:         ; preds = %if.then.i334.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end65.i336.i

if.then63.i335.i:                                 ; preds = %if.then.i334.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @warn_bogus_irq_restore() #11
  br label %do.end65.i336.i

do.end65.i336.i:                                  ; preds = %if.then63.i335.i, %if.then.i334.i.do.end65.i336.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %209) #11, !srcloc !106
  br label %fanotify_alloc_event.exit

if.else.i339.i:                                   ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #13
  %task.i337.i = getelementptr inbounds %struct.thread_info, ptr %193, i32 0, i32 2
  %217 = ptrtoint ptr %task.i337.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %task.i337.i, align 8
  %active_memcg.i338.i = getelementptr inbounds %struct.task_struct, ptr %218, i32 0, i32 206
  %219 = ptrtoint ptr %active_memcg.i338.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr %old.0.i.i, ptr %active_memcg.i338.i, align 8
  br label %fanotify_alloc_event.exit

fanotify_alloc_event.exit.thread:                 ; preds = %if.then36.i, %land.rhs.i.fanotify_alloc_event.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hash.i) #11
  br label %if.then99

fanotify_alloc_event.exit:                        ; preds = %if.else.i339.i, %do.end65.i336.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hash.i) #11
  %tobool90.not = icmp eq ptr %event.0360.i, null
  br i1 %tobool90.not, label %fanotify_alloc_event.exit.if.then99_crit_edge, label %if.end103, !prof !105

fanotify_alloc_event.exit.if.then99_crit_edge:    ; preds = %fanotify_alloc_event.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then99

if.then99:                                        ; preds = %fanotify_alloc_event.exit.if.then99_crit_edge, %fanotify_alloc_event.exit.thread
  br i1 %tobool.i.not, label %if.then101, label %if.then99.if.then133_crit_edge

if.then99.if.then133_crit_edge:                   ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then133

if.then101:                                       ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #13
  %overflow_event.i = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 13
  %220 = ptrtoint ptr %overflow_event.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %overflow_event.i, align 4
  %call.i.i173 = call i32 @fsnotify_insert_event(ptr noundef %group, ptr noundef %221, ptr noundef null, ptr noundef null) #11
  br label %cleanup

if.end103:                                        ; preds = %fanotify_alloc_event.exit
  %call104 = call i32 @fsnotify_insert_event(ptr noundef %group, ptr noundef nonnull %event.0360.i, ptr noundef nonnull @fanotify_merge, ptr noundef nonnull @fanotify_insert_event) #11
  %222 = zext i32 %call104 to i64
  call void @__sanitizer_cov_trace_switch(i64 %222, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %call104, label %finish [
    i32 0, label %if.else
    i32 1, label %land.rhs
  ]

land.rhs:                                         ; preds = %if.end103
  br i1 %tobool.i.not, label %finish.thread187, label %do.body117, !prof !100

finish.thread187:                                 ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  call void @fsnotify_destroy_event(ptr noundef %group, ptr noundef nonnull %event.0360.i) #11
  br label %cleanup

do.body117:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/notify/fanotify/fanotify.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 977, 0\0A.popsection", ""() #11, !srcloc !108
  unreachable

if.else:                                          ; preds = %if.end103
  br i1 %tobool.i.not, label %if.else.cleanup_crit_edge, label %if.then127

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then127:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %call129 = call fastcc i32 @fanotify_get_response(ptr noundef %group, ptr noundef nonnull %event.0360.i)
  br label %if.then133

finish:                                           ; preds = %if.end103
  call void @fsnotify_destroy_event(ptr noundef %group, ptr noundef nonnull %event.0360.i) #11
  br i1 %tobool.i.not, label %finish.cleanup_crit_edge, label %finish.if.then133_crit_edge

finish.if.then133_crit_edge:                      ; preds = %finish
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then133

finish.cleanup_crit_edge:                         ; preds = %finish
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then133:                                       ; preds = %finish.if.then133_crit_edge, %if.then127, %if.then99.if.then133_crit_edge
  %ret.0182 = phi i32 [ 0, %finish.if.then133_crit_edge ], [ %call129, %if.then127 ], [ -12, %if.then99.if.then133_crit_edge ]
  call void @fsnotify_finish_user_wait(ptr noundef %iter_info) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then133, %finish.cleanup_crit_edge, %if.else.cleanup_crit_edge, %finish.thread187, %if.then101, %land.lhs.true.cleanup_crit_edge, %if.then74.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then74.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ %ret.0182, %if.then133 ], [ 0, %finish.cleanup_crit_edge ], [ 0, %finish.thread187 ], [ 0, %if.else.cleanup_crit_edge ], [ -12, %if.then101 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %match_mask) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fsid) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fanotify_free_group_priv(ptr noundef %group) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 15
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  tail call void @kfree(ptr noundef %2) #11
  %ucounts = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 15, i32 0, i32 5
  %3 = ptrtoint ptr %ucounts to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ucounts, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dec_ucount(ptr noundef nonnull %4, i32 noundef 10) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %elements.i = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 15, i32 0, i32 6, i32 3
  %5 = ptrtoint ptr %elements.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %elements.i, align 4
  %cmp.i.not = icmp eq ptr %6, null
  br i1 %cmp.i.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %error_events_pool = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 15, i32 0, i32 6
  tail call void @mempool_exit(ptr noundef %error_events_pool) #11
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fanotify_freeing_mark(ptr nocapture noundef readnone %mark, ptr nocapture noundef readonly %group) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 15, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %ucounts = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 15, i32 0, i32 5
  %2 = ptrtoint ptr %ucounts to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ucounts, align 4
  tail call void @dec_ucount(ptr noundef %3, i32 noundef 11) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fanotify_free_event(ptr noundef %group, ptr noundef %fsn_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pid = getelementptr inbounds %struct.fanotify_event, ptr %fsn_event, i32 0, i32 4
  %0 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pid, align 4
  tail call void @put_pid(ptr noundef %1) #11
  %2 = getelementptr inbounds %struct.fanotify_event, ptr %fsn_event, i32 0, i32 3
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %bf.load = load i32, ptr %2, align 4
  %bf.lshr = lshr i32 %bf.load, 29
  %4 = zext i32 %bf.lshr to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %bf.lshr, label %land.end [
    i32 2, label %fanotify_free_path_event.exit
    i32 3, label %fanotify_free_perm_event.exit
    i32 0, label %sw.bb2
    i32 1, label %sw.bb3
    i32 4, label %sw.bb4
    i32 5, label %sw.bb5
  ]

fanotify_free_path_event.exit:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %path.i.i = getelementptr inbounds %struct.fanotify_path_event, ptr %fsn_event, i32 0, i32 1
  tail call void @path_put(ptr noundef %path.i.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fanotify_path_event_cachep to i32))
  %5 = load ptr, ptr @fanotify_path_event_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %5, ptr noundef %fsn_event) #11
  br label %sw.epilog

fanotify_free_perm_event.exit:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %path6.i.i52 = getelementptr inbounds %struct.fanotify_perm_event, ptr %fsn_event, i32 0, i32 1
  tail call void @path_put(ptr noundef %path6.i.i52) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fanotify_perm_event_cachep to i32))
  %6 = load ptr, ptr @fanotify_perm_event_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %6, ptr noundef %fsn_event) #11
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %flags.i.i = getelementptr inbounds %struct.fanotify_fid_event, ptr %fsn_event, i32 0, i32 2, i32 0, i32 2
  %7 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %flags.i.i, align 2
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.i.not.i = icmp eq i8 %9, 0
  br i1 %tobool.i.not.i, label %sw.bb2.fanotify_free_fid_event.exit_crit_edge, label %if.then.i

sw.bb2.fanotify_free_fid_event.exit_crit_edge:    ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #13
  br label %fanotify_free_fid_event.exit

if.then.i:                                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #13
  %buf.i.i.i = getelementptr inbounds %struct.fanotify_fid_event, ptr %fsn_event, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %buf.i.i.i to i32
  %add.i.i.i = add i32 %10, 3
  %and.i.i.i = and i32 %add.i.i.i, -4
  %11 = inttoptr i32 %and.i.i.i to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  tail call void @kfree(ptr noundef %13) #11
  br label %fanotify_free_fid_event.exit

fanotify_free_fid_event.exit:                     ; preds = %if.then.i, %sw.bb2.fanotify_free_fid_event.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fanotify_fid_event_cachep to i32))
  %14 = load ptr, ptr @fanotify_fid_event_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %14, ptr noundef %fsn_event) #11
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef %fsn_event) #11
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef %fsn_event) #11
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %error_events_pool.i = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 15, i32 0, i32 6
  tail call void @mempool_free(ptr noundef %fsn_event, ptr noundef %error_events_pool.i) #11
  br label %sw.epilog

land.end:                                         ; preds = %entry
  %.b47 = load i1, ptr @fanotify_free_event.__already_done, align 1
  br i1 %.b47, label %land.end.sw.epilog_crit_edge, label %if.then, !prof !100

land.end.sw.epilog_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @fanotify_free_event.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1065, i32 noundef 9, ptr noundef null) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %land.end.sw.epilog_crit_edge, %sw.bb5, %sw.bb4, %sw.bb3, %fanotify_free_fid_event.exit, %fanotify_free_perm_event.exit, %fanotify_free_path_event.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fanotify_free_mark(ptr noundef %fsn_mark) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fanotify_mark_cache to i32))
  %0 = load ptr, ptr @fanotify_mark_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %fsn_mark) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fanotify_group_event_mask(ptr nocapture noundef readonly %group, ptr nocapture noundef readonly %iter_info, ptr nocapture noundef %match_mask, i32 noundef %event_mask, ptr noundef %data, i32 noundef %data_type, ptr noundef readnone %dir) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %data_type)
  %cond.i = icmp eq i32 %data_type, 1
  %data..i = select i1 %cond.i, ptr %data, ptr null
  %flags = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 15, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 7680
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fanotify_group_event_mask.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fanotify_group_event_mask, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !95

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %report_mask = getelementptr inbounds %struct.fsnotify_iter_info, ptr %iter_info, i32 0, i32 1
  %2 = ptrtoint ptr %report_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %report_mask, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fanotify_group_event_mask.__UNIQUE_ID_ddebug246, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, i32 noundef %3, i32 noundef %event_mask, ptr noundef %data, i32 noundef %data_type) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.then5, label %if.else

if.then5:                                         ; preds = %do.end
  %tobool6.not = icmp eq ptr %data..i, null
  br i1 %tobool6.not, label %if.then5.cleanup_crit_edge, label %if.end8

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.then5
  %dentry = getelementptr inbounds %struct.path, ptr %data..i, i32 0, i32 1
  %4 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dentry, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %and.i.i = and i32 %7, 7340032
  %8 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %and.i.i, label %if.end8.cleanup_crit_edge [
    i32 4194304, label %if.end8.if.end24_crit_edge
    i32 2097152, label %if.end8.if.end24_crit_edge127
  ]

if.end8.if.end24_crit_edge127:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.end8.if.end24_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else:                                          ; preds = %do.end
  %and14 = and i32 %1, 512
  %tobool17.not = icmp eq ptr %dir, null
  %and19 = and i32 %event_mask, 1073741824
  %9 = or i32 %and14, %and19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %10 = icmp eq i32 %9, 0
  %11 = and i1 %tobool17.not, %10
  br i1 %11, label %if.else.cleanup_crit_edge, label %if.else.if.end24_crit_edge

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end24:                                         ; preds = %if.else.if.end24_crit_edge, %if.end8.if.end24_crit_edge, %if.end8.if.end24_crit_edge127
  %report_mask.i = getelementptr inbounds %struct.fsnotify_iter_info, ptr %iter_info, i32 0, i32 1
  %and28 = and i32 %event_mask, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  %12 = ptrtoint ptr %report_mask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %report_mask.i, align 4
  %and.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end24.for.inc_crit_edge, label %if.end27

if.end24.for.inc_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end27:                                         ; preds = %if.end24
  %14 = ptrtoint ptr %iter_info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iter_info, align 4
  %ignored_mask = getelementptr inbounds %struct.fsnotify_mark, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %ignored_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ignored_mask, align 4
  br i1 %tobool29.not, label %if.end27.if.end41_crit_edge, label %land.lhs.true30

if.end27.if.end41_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

land.lhs.true30:                                  ; preds = %if.end27
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %15, align 4
  %and31 = and i32 %19, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %for.inc.thread, label %land.lhs.true30.if.end41_crit_edge

land.lhs.true30.if.end41_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.end41:                                         ; preds = %land.lhs.true30.if.end41_crit_edge, %if.end27.if.end41_crit_edge
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %15, align 4
  %22 = ptrtoint ptr %match_mask to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %match_mask, align 4
  %or44 = or i32 %23, 1
  store i32 %or44, ptr %match_mask, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end41, %if.end24.for.inc_crit_edge
  %marks_ignored_mask.1 = phi i32 [ %17, %if.end41 ], [ 0, %if.end24.for.inc_crit_edge ]
  %marks_mask.1 = phi i32 [ %21, %if.end41 ], [ 0, %if.end24.for.inc_crit_edge ]
  %24 = ptrtoint ptr %report_mask.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %report_mask.i, align 4
  %and.i.1 = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.1)
  %tobool.i.not.1 = icmp eq i32 %and.i.1, 0
  br i1 %tobool.i.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end27.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

for.inc.thread:                                   ; preds = %land.lhs.true30
  %26 = ptrtoint ptr %report_mask.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %report_mask.i, align 4
  %and.i.199 = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.199)
  %tobool.i.not.1100 = icmp eq i32 %and.i.199, 0
  br i1 %tobool.i.not.1100, label %for.inc.thread.for.inc.1_crit_edge, label %if.end27.1.thread

for.inc.thread.for.inc.1_crit_edge:               ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

if.end27.1.thread:                                ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.1105 = getelementptr [5 x ptr], ptr %iter_info, i32 0, i32 1
  %28 = ptrtoint ptr %arrayidx.1105 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.1105, align 4
  %ignored_mask.1106 = getelementptr inbounds %struct.fsnotify_mark, ptr %29, i32 0, i32 7
  %30 = ptrtoint ptr %ignored_mask.1106 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ignored_mask.1106, align 4
  %or.1107 = or i32 %31, %17
  br label %land.lhs.true30.1

if.end27.1:                                       ; preds = %for.inc
  %arrayidx.1 = getelementptr [5 x ptr], ptr %iter_info, i32 0, i32 1
  %32 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.1, align 4
  %ignored_mask.1 = getelementptr inbounds %struct.fsnotify_mark, ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %ignored_mask.1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ignored_mask.1, align 4
  %or.1 = or i32 %35, %marks_ignored_mask.1
  br i1 %tobool29.not, label %if.end27.1.if.end41.1_crit_edge, label %if.end27.1.land.lhs.true30.1_crit_edge

if.end27.1.land.lhs.true30.1_crit_edge:           ; preds = %if.end27.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true30.1

if.end27.1.if.end41.1_crit_edge:                  ; preds = %if.end27.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41.1

land.lhs.true30.1:                                ; preds = %if.end27.1.land.lhs.true30.1_crit_edge, %if.end27.1.thread
  %or.1110 = phi i32 [ %or.1107, %if.end27.1.thread ], [ %or.1, %if.end27.1.land.lhs.true30.1_crit_edge ]
  %36 = phi ptr [ %29, %if.end27.1.thread ], [ %33, %if.end27.1.land.lhs.true30.1_crit_edge ]
  %marks_mask.1102108 = phi i32 [ 0, %if.end27.1.thread ], [ %marks_mask.1, %if.end27.1.land.lhs.true30.1_crit_edge ]
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  %and31.1 = and i32 %38, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.1)
  %tobool32.not.1 = icmp eq i32 %and31.1, 0
  br i1 %tobool32.not.1, label %land.lhs.true30.1.for.inc.1_crit_edge, label %land.lhs.true30.1.if.end41.1_crit_edge

land.lhs.true30.1.if.end41.1_crit_edge:           ; preds = %land.lhs.true30.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41.1

land.lhs.true30.1.for.inc.1_crit_edge:            ; preds = %land.lhs.true30.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

if.end41.1:                                       ; preds = %land.lhs.true30.1.if.end41.1_crit_edge, %if.end27.1.if.end41.1_crit_edge
  %or.1111 = phi i32 [ %or.1110, %land.lhs.true30.1.if.end41.1_crit_edge ], [ %or.1, %if.end27.1.if.end41.1_crit_edge ]
  %39 = phi ptr [ %36, %land.lhs.true30.1.if.end41.1_crit_edge ], [ %33, %if.end27.1.if.end41.1_crit_edge ]
  %marks_mask.1102109 = phi i32 [ %marks_mask.1102108, %land.lhs.true30.1.if.end41.1_crit_edge ], [ %marks_mask.1, %if.end27.1.if.end41.1_crit_edge ]
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %or43.1 = or i32 %41, %marks_mask.1102109
  %42 = ptrtoint ptr %match_mask to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %match_mask, align 4
  %or44.1 = or i32 %43, 2
  store i32 %or44.1, ptr %match_mask, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end41.1, %land.lhs.true30.1.for.inc.1_crit_edge, %for.inc.thread.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %marks_ignored_mask.1.1 = phi i32 [ %or.1111, %if.end41.1 ], [ %or.1110, %land.lhs.true30.1.for.inc.1_crit_edge ], [ %marks_ignored_mask.1, %for.inc.for.inc.1_crit_edge ], [ %17, %for.inc.thread.for.inc.1_crit_edge ]
  %marks_mask.1.1 = phi i32 [ %or43.1, %if.end41.1 ], [ %marks_mask.1102108, %land.lhs.true30.1.for.inc.1_crit_edge ], [ %marks_mask.1, %for.inc.for.inc.1_crit_edge ], [ 0, %for.inc.thread.for.inc.1_crit_edge ]
  %44 = ptrtoint ptr %report_mask.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %report_mask.i, align 4
  %and.i.2 = and i32 %45, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.2)
  %tobool.i.not.2 = icmp eq i32 %and.i.2, 0
  br i1 %tobool.i.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end27.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2

if.end27.2:                                       ; preds = %for.inc.1
  %arrayidx.2 = getelementptr [5 x ptr], ptr %iter_info, i32 0, i32 2
  %46 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.2, align 4
  %ignored_mask.2 = getelementptr inbounds %struct.fsnotify_mark, ptr %47, i32 0, i32 7
  %48 = ptrtoint ptr %ignored_mask.2 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ignored_mask.2, align 4
  %or.2 = or i32 %49, %marks_ignored_mask.1.1
  br i1 %tobool29.not, label %if.end27.2.if.end41.2_crit_edge, label %land.lhs.true30.2

if.end27.2.if.end41.2_crit_edge:                  ; preds = %if.end27.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41.2

land.lhs.true30.2:                                ; preds = %if.end27.2
  %50 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %47, align 4
  %and31.2 = and i32 %51, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.2)
  %tobool32.not.2 = icmp eq i32 %and31.2, 0
  br i1 %tobool32.not.2, label %for.inc.2.thread, label %land.lhs.true30.2.if.end41.2_crit_edge

land.lhs.true30.2.if.end41.2_crit_edge:           ; preds = %land.lhs.true30.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41.2

if.end41.2:                                       ; preds = %land.lhs.true30.2.if.end41.2_crit_edge, %if.end27.2.if.end41.2_crit_edge
  %52 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %47, align 4
  %or43.2 = or i32 %53, %marks_mask.1.1
  %54 = ptrtoint ptr %match_mask to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %match_mask, align 4
  %or44.2 = or i32 %55, 4
  store i32 %or44.2, ptr %match_mask, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end41.2, %for.inc.1.for.inc.2_crit_edge
  %marks_ignored_mask.1.2 = phi i32 [ %or.2, %if.end41.2 ], [ %marks_ignored_mask.1.1, %for.inc.1.for.inc.2_crit_edge ]
  %marks_mask.1.2 = phi i32 [ %or43.2, %if.end41.2 ], [ %marks_mask.1.1, %for.inc.1.for.inc.2_crit_edge ]
  %56 = ptrtoint ptr %report_mask.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %report_mask.i, align 4
  %and.i.3 = and i32 %57, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.3)
  %tobool.i.not.3 = icmp eq i32 %and.i.3, 0
  br i1 %tobool.i.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end27.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3

for.inc.2.thread:                                 ; preds = %land.lhs.true30.2
  %58 = ptrtoint ptr %report_mask.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %report_mask.i, align 4
  %and.i.3114 = and i32 %59, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.3114)
  %tobool.i.not.3115 = icmp eq i32 %and.i.3114, 0
  br i1 %tobool.i.not.3115, label %for.inc.2.thread.for.inc.3_crit_edge, label %if.end27.3.thread

for.inc.2.thread.for.inc.3_crit_edge:             ; preds = %for.inc.2.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3

if.end27.3.thread:                                ; preds = %for.inc.2.thread
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.3120 = getelementptr [5 x ptr], ptr %iter_info, i32 0, i32 3
  %60 = ptrtoint ptr %arrayidx.3120 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.3120, align 4
  %ignored_mask.3121 = getelementptr inbounds %struct.fsnotify_mark, ptr %61, i32 0, i32 7
  %62 = ptrtoint ptr %ignored_mask.3121 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %ignored_mask.3121, align 4
  %or.3122 = or i32 %63, %or.2
  br label %land.lhs.true30.3

if.end27.3:                                       ; preds = %for.inc.2
  %arrayidx.3 = getelementptr [5 x ptr], ptr %iter_info, i32 0, i32 3
  %64 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx.3, align 4
  %ignored_mask.3 = getelementptr inbounds %struct.fsnotify_mark, ptr %65, i32 0, i32 7
  %66 = ptrtoint ptr %ignored_mask.3 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ignored_mask.3, align 4
  %or.3 = or i32 %67, %marks_ignored_mask.1.2
  br i1 %tobool29.not, label %if.end27.3.land.lhs.true36.3_crit_edge, label %if.end27.3.land.lhs.true30.3_crit_edge

if.end27.3.land.lhs.true30.3_crit_edge:           ; preds = %if.end27.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true30.3

if.end27.3.land.lhs.true36.3_crit_edge:           ; preds = %if.end27.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true36.3

land.lhs.true30.3:                                ; preds = %if.end27.3.land.lhs.true30.3_crit_edge, %if.end27.3.thread
  %or.3125 = phi i32 [ %or.3122, %if.end27.3.thread ], [ %or.3, %if.end27.3.land.lhs.true30.3_crit_edge ]
  %68 = phi ptr [ %61, %if.end27.3.thread ], [ %65, %if.end27.3.land.lhs.true30.3_crit_edge ]
  %marks_mask.1.2117123 = phi i32 [ %marks_mask.1.1, %if.end27.3.thread ], [ %marks_mask.1.2, %if.end27.3.land.lhs.true30.3_crit_edge ]
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %68, align 4
  %and31.3 = and i32 %70, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.3)
  %tobool32.not.3 = icmp eq i32 %and31.3, 0
  br i1 %tobool32.not.3, label %land.lhs.true30.3.for.inc.3_crit_edge, label %land.lhs.true30.3.land.lhs.true36.3_crit_edge

land.lhs.true30.3.land.lhs.true36.3_crit_edge:    ; preds = %land.lhs.true30.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true36.3

land.lhs.true30.3.for.inc.3_crit_edge:            ; preds = %land.lhs.true30.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3

land.lhs.true36.3:                                ; preds = %land.lhs.true30.3.land.lhs.true36.3_crit_edge, %if.end27.3.land.lhs.true36.3_crit_edge
  %or.3126 = phi i32 [ %or.3125, %land.lhs.true30.3.land.lhs.true36.3_crit_edge ], [ %or.3, %if.end27.3.land.lhs.true36.3_crit_edge ]
  %71 = phi ptr [ %68, %land.lhs.true30.3.land.lhs.true36.3_crit_edge ], [ %65, %if.end27.3.land.lhs.true36.3_crit_edge ]
  %marks_mask.1.2117124 = phi i32 [ %marks_mask.1.2117123, %land.lhs.true30.3.land.lhs.true36.3_crit_edge ], [ %marks_mask.1.2, %if.end27.3.land.lhs.true36.3_crit_edge ]
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %71, align 4
  %and38.3 = and i32 %73, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.3)
  %tobool39.not.3 = icmp eq i32 %and38.3, 0
  br i1 %tobool39.not.3, label %land.lhs.true36.3.for.inc.3_crit_edge, label %if.end41.3

land.lhs.true36.3.for.inc.3_crit_edge:            ; preds = %land.lhs.true36.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3

if.end41.3:                                       ; preds = %land.lhs.true36.3
  call void @__sanitizer_cov_trace_pc() #13
  %74 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %71, align 4
  %or43.3 = or i32 %75, %marks_mask.1.2117124
  %76 = ptrtoint ptr %match_mask to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %match_mask, align 4
  %or44.3 = or i32 %77, 8
  store i32 %or44.3, ptr %match_mask, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end41.3, %land.lhs.true36.3.for.inc.3_crit_edge, %land.lhs.true30.3.for.inc.3_crit_edge, %for.inc.2.thread.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %marks_ignored_mask.1.3 = phi i32 [ %or.3126, %if.end41.3 ], [ %or.3126, %land.lhs.true36.3.for.inc.3_crit_edge ], [ %or.3125, %land.lhs.true30.3.for.inc.3_crit_edge ], [ %marks_ignored_mask.1.2, %for.inc.2.for.inc.3_crit_edge ], [ %or.2, %for.inc.2.thread.for.inc.3_crit_edge ]
  %marks_mask.1.3 = phi i32 [ %or43.3, %if.end41.3 ], [ %marks_mask.1.2117124, %land.lhs.true36.3.for.inc.3_crit_edge ], [ %marks_mask.1.2117123, %land.lhs.true30.3.for.inc.3_crit_edge ], [ %marks_mask.1.2, %for.inc.2.for.inc.3_crit_edge ], [ %marks_mask.1.1, %for.inc.2.thread.for.inc.3_crit_edge ]
  %78 = ptrtoint ptr %report_mask.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %report_mask.i, align 4
  %and.i.4 = and i32 %79, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.4)
  %tobool.i.not.4 = icmp eq i32 %and.i.4, 0
  br i1 %tobool.i.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.end27.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.4

if.end27.4:                                       ; preds = %for.inc.3
  %arrayidx.4 = getelementptr [5 x ptr], ptr %iter_info, i32 0, i32 4
  %80 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx.4, align 4
  %ignored_mask.4 = getelementptr inbounds %struct.fsnotify_mark, ptr %81, i32 0, i32 7
  %82 = ptrtoint ptr %ignored_mask.4 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %ignored_mask.4, align 4
  %or.4 = or i32 %83, %marks_ignored_mask.1.3
  br i1 %tobool29.not, label %if.end27.4.if.end41.4_crit_edge, label %land.lhs.true30.4

if.end27.4.if.end41.4_crit_edge:                  ; preds = %if.end27.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41.4

land.lhs.true30.4:                                ; preds = %if.end27.4
  %84 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %81, align 4
  %and31.4 = and i32 %85, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.4)
  %tobool32.not.4 = icmp eq i32 %and31.4, 0
  br i1 %tobool32.not.4, label %land.lhs.true30.4.for.inc.4_crit_edge, label %land.lhs.true30.4.if.end41.4_crit_edge

land.lhs.true30.4.if.end41.4_crit_edge:           ; preds = %land.lhs.true30.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41.4

land.lhs.true30.4.for.inc.4_crit_edge:            ; preds = %land.lhs.true30.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.4

if.end41.4:                                       ; preds = %land.lhs.true30.4.if.end41.4_crit_edge, %if.end27.4.if.end41.4_crit_edge
  %86 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %81, align 4
  %or43.4 = or i32 %87, %marks_mask.1.3
  %88 = ptrtoint ptr %match_mask to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %match_mask, align 4
  %or44.4 = or i32 %89, 16
  store i32 %or44.4, ptr %match_mask, align 4
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.end41.4, %land.lhs.true30.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %marks_ignored_mask.1.4 = phi i32 [ %or.4, %if.end41.4 ], [ %or.4, %land.lhs.true30.4.for.inc.4_crit_edge ], [ %marks_ignored_mask.1.3, %for.inc.3.for.inc.4_crit_edge ]
  %marks_mask.1.4 = phi i32 [ %or43.4, %if.end41.4 ], [ %marks_mask.1.3, %land.lhs.true30.4.for.inc.4_crit_edge ], [ %marks_mask.1.3, %for.inc.3.for.inc.4_crit_edge ]
  %neg = xor i32 %marks_ignored_mask.1.4, -1
  %and45 = and i32 %neg, %event_mask
  %and46 = and i32 %and45, %marks_mask.1.4
  br i1 %tobool4.not, label %for.inc.4.if.end55_crit_edge, label %if.then48

for.inc.4.if.end55_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

if.then48:                                        ; preds = %for.inc.4
  %and49 = and i32 %and46, -1207959553
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.then48.cleanup_crit_edge, label %if.then48.if.end55_crit_edge

if.then48.if.end55_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

if.then48.cleanup_crit_edge:                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end55:                                         ; preds = %if.then48.if.end55_crit_edge, %for.inc.4.if.end55_crit_edge
  %user_mask.0 = phi i32 [ 1476911103, %if.then48.if.end55_crit_edge ], [ 268951551, %for.inc.4.if.end55_crit_edge ]
  %and56 = and i32 %user_mask.0, %and46
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %if.then48.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then5.cleanup_crit_edge
  %retval.0 = phi i32 [ %and56, %if.end55 ], [ 0, %if.then5.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.then48.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fsnotify_prepare_user_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsnotify_insert_event(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fanotify_merge(ptr noundef %group, ptr noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.fanotify_event, ptr %event, i32 0, i32 3
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %bf.load.i = load i32, ptr %0, align 4
  %and.i = and i32 %bf.load.i, 127
  %2 = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 15
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %arrayidx = getelementptr %struct.hlist_head, ptr %4, i32 %and.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fanotify_merge.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fanotify_merge, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !95

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fanotify_merge.__UNIQUE_ID_ddebug243, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.19, ptr noundef %group, ptr noundef %event, i32 noundef %and.i) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mask = getelementptr inbounds %struct.fanotify_event, ptr %event, i32 0, i32 2
  %5 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mask, align 4
  %and.i55 = and i32 %6, 458752
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i55)
  %tobool.i.not = icmp eq i32 %and.i55, 0
  br i1 %tobool.i.not, label %if.end7, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %tobool9.not = icmp eq ptr %8, null
  %add.ptr = getelementptr i8, ptr %8, i32 -8
  %tobool11.not6266 = icmp eq ptr %add.ptr, null
  %tobool11.not62 = or i1 %tobool9.not, %tobool11.not6266
  br i1 %tobool11.not62, label %if.end7.cleanup_crit_edge, label %if.end7.for.body_crit_edge

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  br label %for.body

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end7.for.body_crit_edge
  %old.064 = phi ptr [ %add.ptr31, %for.inc.for.body_crit_edge ], [ %add.ptr, %if.end7.for.body_crit_edge ]
  %i.063 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end7.for.body_crit_edge ]
  %inc = add nuw nsw i32 %i.063, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %i.063)
  %exitcond = icmp eq i32 %i.063, 128
  br i1 %exitcond, label %for.body.cleanup_crit_edge, label %if.end13

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end13:                                         ; preds = %for.body
  %call14 = tail call fastcc zeroext i1 @fanotify_should_merge(ptr noundef nonnull %old.064, ptr noundef %event)
  br i1 %call14, label %if.then15, label %for.inc

if.then15:                                        ; preds = %if.end13
  %9 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mask, align 4
  %mask17 = getelementptr inbounds %struct.fanotify_event, ptr %old.064, i32 0, i32 2
  %11 = ptrtoint ptr %mask17 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mask17, align 4
  %or = or i32 %12, %10
  store i32 %or, ptr %mask17, align 4
  %and.i56 = and i32 %or, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i56)
  %tobool.i57.not = icmp eq i32 %and.i56, 0
  br i1 %tobool.i57.not, label %if.then15.cleanup_crit_edge, label %if.then20

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then20:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  %err_count = getelementptr inbounds %struct.fanotify_error_event, ptr %old.064, i32 0, i32 2
  %13 = ptrtoint ptr %err_count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %err_count, align 4
  %inc22 = add i32 %14, 1
  store i32 %inc22, ptr %err_count, align 4
  br label %cleanup

for.inc:                                          ; preds = %if.end13
  %merge_list = getelementptr inbounds %struct.fanotify_event, ptr %old.064, i32 0, i32 1
  %15 = ptrtoint ptr %merge_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %merge_list, align 4
  %tobool27.not = icmp eq ptr %16, null
  %add.ptr31 = getelementptr i8, ptr %16, i32 -8
  %tobool11.not68 = icmp eq ptr %add.ptr31, null
  %tobool11.not = or i1 %tobool27.not, %tobool11.not68
  br i1 %tobool11.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then20, %if.then15.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end.cleanup_crit_edge ], [ 1, %if.then20 ], [ 1, %if.then15.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fanotify_insert_event(ptr noundef %group, ptr noundef %fsn_event) #0 align 64 {
entry:
  %agg.tmp.sroa.0.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.fanotify_event, ptr %fsn_event, i32 0, i32 3
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %bf.load.i = load i32, ptr %0, align 4
  %and.i = and i32 %bf.load.i, 127
  %2 = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 15
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %arrayidx = getelementptr %struct.hlist_head, ptr %4, i32 %and.i
  %notification_lock = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %5 = ptrtoint ptr %notification_lock to i32
  call void @__asan_load4_noabort(i32 %5)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %notification_lock, align 4
  %6 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body6, label %do.end11, !prof !105

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/notify/fanotify/fanotify.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 888, 0\0A.popsection", ""() #11, !srcloc !109
  unreachable

do.end11:                                         ; preds = %entry
  %mask = getelementptr inbounds %struct.fanotify_event, ptr %fsn_event, i32 0, i32 2
  %7 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mask, align 4
  %9 = and i32 %8, 475136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %do.body15, label %do.end11.cleanup_crit_edge

do.end11.cleanup_crit_edge:                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body15:                                        ; preds = %do.end11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fanotify_insert_event.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fanotify_insert_event, %if.then24)) #11
          to label %do.end27 [label %if.then24], !srcloc !95

if.then24:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fanotify_insert_event.__UNIQUE_ID_ddebug250, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.23, ptr noundef %group, ptr noundef %fsn_event, i32 noundef %and.i) #11
  br label %do.end27

do.end27:                                         ; preds = %if.then24, %do.body15
  %merge_list = getelementptr inbounds %struct.fanotify_event, ptr %fsn_event, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %13 = ptrtoint ptr %merge_list to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %12, ptr %merge_list, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %do.end27.hlist_add_head.exit_crit_edge, label %do.body12.i

do.end27.hlist_add_head.exit_crit_edge:           ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #13
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %12, i32 0, i32 1
  %14 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %merge_list, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %do.end27.hlist_add_head.exit_crit_edge
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %merge_list, ptr %arrayidx, align 4
  %pprev34.i = getelementptr inbounds %struct.fanotify_event, ptr %fsn_event, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %arrayidx, ptr %pprev34.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %hlist_add_head.exit, %do.end11.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsnotify_destroy_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fanotify_get_response(ptr noundef %group, ptr noundef %event) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fanotify_get_response.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fanotify_get_response, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !95

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fanotify_get_response.__UNIQUE_ID_ddebug244, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, ptr noundef %group, ptr noundef %event) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 238) #11
  %state = getelementptr inbounds %struct.fanotify_perm_event, ptr %event, i32 0, i32 3
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %state, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %1)
  %cmp = icmp eq i16 %1, 2
  br i1 %cmp, label %do.end.if.end99_crit_edge, label %if.then10

do.end.if.end99_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end99

if.then10:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #11
  %2 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #11
  %access_waitq = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 15, i32 0, i32 2
  %call1221 = call i32 @prepare_to_wait_event(ptr noundef %access_waitq, ptr noundef nonnull %__wq_entry, i32 noundef 258) #11
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %state, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %4)
  %cmp1522 = icmp eq i16 %4, 2
  br i1 %cmp1522, label %if.then10.if.end24.thread15_crit_edge, label %if.then10.if.end18_crit_edge

if.then10.if.end18_crit_edge:                     ; preds = %if.then10
  br label %if.end18

if.then10.if.end24.thread15_crit_edge:            ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.thread15

if.end18:                                         ; preds = %cleanup.if.end18_crit_edge, %if.then10.if.end18_crit_edge
  %call1223 = phi i32 [ %call12, %cleanup.if.end18_crit_edge ], [ %call1221, %if.then10.if.end18_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1223)
  %tobool19.not = icmp eq i32 %call1223, 0
  br i1 %tobool19.not, label %cleanup, label %if.end24

cleanup:                                          ; preds = %if.end18
  call void @schedule() #11
  %call12 = call i32 @prepare_to_wait_event(ptr noundef %access_waitq, ptr noundef nonnull %__wq_entry, i32 noundef 258) #11
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %state, align 2
  %cmp15 = icmp eq i16 %6, 2
  br i1 %cmp15, label %cleanup.if.end24.thread15_crit_edge, label %cleanup.if.end18_crit_edge

cleanup.if.end18_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

cleanup.if.end24.thread15_crit_edge:              ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.thread15

if.end24.thread15:                                ; preds = %cleanup.if.end24.thread15_crit_edge, %if.then10.if.end24.thread15_crit_edge
  call void @finish_wait(ptr noundef %access_waitq, ptr noundef nonnull %__wq_entry) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %if.end99

if.end24:                                         ; preds = %if.end18
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1223)
  %cmp26 = icmp slt i32 %call1223, 0
  br i1 %cmp26, label %if.then28, label %if.end24.if.end99_crit_edge

if.end24.if.end99_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end99

if.then28:                                        ; preds = %if.end24
  %notification_lock = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 2
  call void @_raw_spin_lock(ptr noundef %notification_lock) #11
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %state, align 2
  %9 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.32)
  switch i16 %8, label %if.then28.if.end97_crit_edge [
    i16 1, label %if.then33
    i16 0, label %if.then41
  ]

if.then28.if.end97_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end97

if.then33:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 3, ptr %state, align 2
  call void @_raw_spin_unlock(ptr noundef %notification_lock) #11
  br label %cleanup129

if.then41:                                        ; preds = %if.then28
  call void @fsnotify_remove_queued_event(ptr noundef %group, ptr noundef %event) #11
  %pprev.i = getelementptr inbounds %struct.fanotify_event, ptr %event, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %pprev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pprev.i, align 4
  %tobool.not.i.not = icmp eq ptr %12, null
  br i1 %tobool.not.i.not, label %if.then41.if.end97_crit_edge, label %land.rhs

if.then41.if.end97_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end97

land.rhs:                                         ; preds = %if.then41
  %.b1 = load i1, ptr @fanotify_get_response.__already_done, align 1
  br i1 %.b1, label %land.rhs.if.end97_crit_edge, label %if.then63, !prof !100

land.rhs.if.end97_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end97

if.then63:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @fanotify_get_response.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 253, i32 noundef 9, ptr noundef null) #11
  br label %if.end97

if.end97:                                         ; preds = %if.then63, %land.rhs.if.end97_crit_edge, %if.then41.if.end97_crit_edge, %if.then28.if.end97_crit_edge
  call void @_raw_spin_unlock(ptr noundef %notification_lock) #11
  br label %out

if.end99:                                         ; preds = %if.end24.if.end99_crit_edge, %if.end24.thread15, %do.end.if.end99_crit_edge
  %response = getelementptr inbounds %struct.fanotify_perm_event, ptr %event, i32 0, i32 2
  %13 = ptrtoint ptr %response to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %response, align 4
  %15 = and i16 %14, -17
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %15)
  %cond = icmp ne i16 %15, 1
  %. = sext i1 %cond to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fanotify_get_response.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fanotify_get_response, %if.then123)) #11
          to label %out [label %if.then123], !srcloc !95

if.then123:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fanotify_get_response.__UNIQUE_ID_ddebug245, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.24, ptr noundef %group, ptr noundef %event, i32 noundef %.) #11
  br label %out

out:                                              ; preds = %if.then123, %if.end99, %if.end97
  %ret.1 = phi i32 [ %call1223, %if.end97 ], [ %., %if.then123 ], [ %., %if.end99 ]
  call void @fsnotify_destroy_event(ptr noundef %group, ptr noundef %event) #11
  br label %cleanup129

cleanup129:                                       ; preds = %out, %if.then33
  %retval.0 = phi i32 [ %call1223, %if.then33 ], [ %ret.1, %out ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsnotify_finish_user_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @fanotify_alloc_name_event(ptr noundef %dir, ptr nocapture noundef readonly %fsid, ptr noundef readonly %name, ptr noundef %child, ptr noundef readonly %moved, ptr noundef %hash, i32 noundef %gfp) unnamed_addr #0 align 64 {
entry:
  %dwords.i196 = alloca i32, align 4
  %dwords.i185 = alloca i32, align 4
  %dwords.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %moved, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %d_parent = getelementptr inbounds %struct.dentry, ptr %moved, i32 0, i32 3
  %0 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_parent, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %3, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %d_name = getelementptr inbounds %struct.dentry, ptr %moved, i32 0, i32 4
  %spec.select = select i1 %tobool.not, ptr null, ptr %d_name
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dwords.i) #11
  %4 = ptrtoint ptr %dwords.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %dwords.i, align 4
  %tobool.not.i = icmp eq ptr %dir, null
  br i1 %tobool.not.i, label %cond.end.fanotify_encode_fh_len.exit_crit_edge, label %if.end.i183

cond.end.fanotify_encode_fh_len.exit_crit_edge:   ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %fanotify_encode_fh_len.exit

if.end.i183:                                      ; preds = %cond.end
  %call.i = call i32 @exportfs_encode_inode_fh(ptr noundef nonnull %dir, ptr noundef null, ptr noundef nonnull %dwords.i, ptr noundef null) #11
  %5 = ptrtoint ptr %dwords.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dwords.i, align 4
  %shl.i = shl i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %shl.i)
  %cmp.i182 = icmp sgt i32 %shl.i, 128
  br i1 %cmp.i182, label %land.rhs.i, label %if.end.i183.fanotify_encode_fh_len.exit_crit_edge

if.end.i183.fanotify_encode_fh_len.exit_crit_edge: ; preds = %if.end.i183
  call void @__sanitizer_cov_trace_pc() #13
  br label %fanotify_encode_fh_len.exit

land.rhs.i:                                       ; preds = %if.end.i183
  %.b46.i = load i1, ptr @fanotify_encode_fh_len.__already_done, align 1
  br i1 %.b46.i, label %land.rhs.i.fanotify_encode_fh_len.exit_crit_edge, label %if.then8.i, !prof !100

land.rhs.i.fanotify_encode_fh_len.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fanotify_encode_fh_len.exit

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @fanotify_encode_fh_len.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 399, i32 noundef 9, ptr noundef null) #11
  br label %fanotify_encode_fh_len.exit

fanotify_encode_fh_len.exit:                      ; preds = %if.then8.i, %land.rhs.i.fanotify_encode_fh_len.exit_crit_edge, %if.end.i183.fanotify_encode_fh_len.exit_crit_edge, %cond.end.fanotify_encode_fh_len.exit_crit_edge
  %retval.0.i184 = phi i32 [ 0, %cond.end.fanotify_encode_fh_len.exit_crit_edge ], [ %shl.i, %if.end.i183.fanotify_encode_fh_len.exit_crit_edge ], [ 0, %if.then8.i ], [ 0, %land.rhs.i.fanotify_encode_fh_len.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dwords.i) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dwords.i185) #11
  %7 = ptrtoint ptr %dwords.i185 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %dwords.i185, align 4
  %tobool.not.i186 = icmp eq ptr %cond, null
  br i1 %tobool.not.i186, label %fanotify_encode_fh_len.exit.fanotify_encode_fh_len.exit195_crit_edge, label %if.end.i190

fanotify_encode_fh_len.exit.fanotify_encode_fh_len.exit195_crit_edge: ; preds = %fanotify_encode_fh_len.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %fanotify_encode_fh_len.exit195

if.end.i190:                                      ; preds = %fanotify_encode_fh_len.exit
  %call.i187 = call i32 @exportfs_encode_inode_fh(ptr noundef nonnull %cond, ptr noundef null, ptr noundef nonnull %dwords.i185, ptr noundef null) #11
  %8 = ptrtoint ptr %dwords.i185 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dwords.i185, align 4
  %shl.i188 = shl i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %shl.i188)
  %cmp.i189 = icmp sgt i32 %shl.i188, 128
  br i1 %cmp.i189, label %land.rhs.i192, label %if.end.i190.fanotify_encode_fh_len.exit195_crit_edge

if.end.i190.fanotify_encode_fh_len.exit195_crit_edge: ; preds = %if.end.i190
  call void @__sanitizer_cov_trace_pc() #13
  br label %fanotify_encode_fh_len.exit195

land.rhs.i192:                                    ; preds = %if.end.i190
  %.b46.i191 = load i1, ptr @fanotify_encode_fh_len.__already_done, align 1
  br i1 %.b46.i191, label %land.rhs.i192.fanotify_encode_fh_len.exit195_crit_edge, label %if.then8.i193, !prof !100

land.rhs.i192.fanotify_encode_fh_len.exit195_crit_edge: ; preds = %land.rhs.i192
  call void @__sanitizer_cov_trace_pc() #13
  br label %fanotify_encode_fh_len.exit195

if.then8.i193:                                    ; preds = %land.rhs.i192
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @fanotify_encode_fh_len.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 399, i32 noundef 9, ptr noundef null) #11
  br label %fanotify_encode_fh_len.exit195

fanotify_encode_fh_len.exit195:                   ; preds = %if.then8.i193, %land.rhs.i192.fanotify_encode_fh_len.exit195_crit_edge, %if.end.i190.fanotify_encode_fh_len.exit195_crit_edge, %fanotify_encode_fh_len.exit.fanotify_encode_fh_len.exit195_crit_edge
  %retval.0.i194 = phi i32 [ 0, %fanotify_encode_fh_len.exit.fanotify_encode_fh_len.exit195_crit_edge ], [ %shl.i188, %if.end.i190.fanotify_encode_fh_len.exit195_crit_edge ], [ 0, %if.then8.i193 ], [ 0, %land.rhs.i192.fanotify_encode_fh_len.exit195_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dwords.i185) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dwords.i196) #11
  %10 = ptrtoint ptr %dwords.i196 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %dwords.i196, align 4
  %tobool.not.i197 = icmp eq ptr %child, null
  br i1 %tobool.not.i197, label %fanotify_encode_fh_len.exit195.fanotify_encode_fh_len.exit206_crit_edge, label %if.end.i201

fanotify_encode_fh_len.exit195.fanotify_encode_fh_len.exit206_crit_edge: ; preds = %fanotify_encode_fh_len.exit195
  call void @__sanitizer_cov_trace_pc() #13
  br label %fanotify_encode_fh_len.exit206

if.end.i201:                                      ; preds = %fanotify_encode_fh_len.exit195
  %call.i198 = call i32 @exportfs_encode_inode_fh(ptr noundef nonnull %child, ptr noundef null, ptr noundef nonnull %dwords.i196, ptr noundef null) #11
  %11 = ptrtoint ptr %dwords.i196 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dwords.i196, align 4
  %shl.i199 = shl i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %shl.i199)
  %cmp.i200 = icmp sgt i32 %shl.i199, 128
  br i1 %cmp.i200, label %land.rhs.i203, label %if.end.i201.fanotify_encode_fh_len.exit206_crit_edge

if.end.i201.fanotify_encode_fh_len.exit206_crit_edge: ; preds = %if.end.i201
  call void @__sanitizer_cov_trace_pc() #13
  br label %fanotify_encode_fh_len.exit206

land.rhs.i203:                                    ; preds = %if.end.i201
  %.b46.i202 = load i1, ptr @fanotify_encode_fh_len.__already_done, align 1
  br i1 %.b46.i202, label %land.rhs.i203.fanotify_encode_fh_len.exit206_crit_edge, label %if.then8.i204, !prof !100

land.rhs.i203.fanotify_encode_fh_len.exit206_crit_edge: ; preds = %land.rhs.i203
  call void @__sanitizer_cov_trace_pc() #13
  br label %fanotify_encode_fh_len.exit206

if.then8.i204:                                    ; preds = %land.rhs.i203
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @fanotify_encode_fh_len.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 399, i32 noundef 9, ptr noundef null) #11
  br label %fanotify_encode_fh_len.exit206

fanotify_encode_fh_len.exit206:                   ; preds = %if.then8.i204, %land.rhs.i203.fanotify_encode_fh_len.exit206_crit_edge, %if.end.i201.fanotify_encode_fh_len.exit206_crit_edge, %fanotify_encode_fh_len.exit195.fanotify_encode_fh_len.exit206_crit_edge
  %retval.0.i205 = phi i32 [ 0, %fanotify_encode_fh_len.exit195.fanotify_encode_fh_len.exit206_crit_edge ], [ %shl.i199, %if.end.i201.fanotify_encode_fh_len.exit206_crit_edge ], [ 0, %if.then8.i204 ], [ 0, %land.rhs.i203.fanotify_encode_fh_len.exit206_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dwords.i196) #11
  %tobool9.not = icmp eq ptr %name, null
  br i1 %tobool9.not, label %fanotify_encode_fh_len.exit206.cond.end12_crit_edge, label %cond.true10

fanotify_encode_fh_len.exit206.cond.end12_crit_edge: ; preds = %fanotify_encode_fh_len.exit206
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end12

cond.true10:                                      ; preds = %fanotify_encode_fh_len.exit206
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %name, align 8
  br label %cond.end12

cond.end12:                                       ; preds = %cond.true10, %fanotify_encode_fh_len.exit206.cond.end12_crit_edge
  %cond13 = phi i32 [ %14, %cond.true10 ], [ 0, %fanotify_encode_fh_len.exit206.cond.end12_crit_edge ]
  %tobool14.not = icmp eq ptr %spec.select, null
  br i1 %tobool14.not, label %cond.end12.cond.end18_crit_edge, label %cond.true15

cond.end12.cond.end18_crit_edge:                  ; preds = %cond.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end18

cond.true15:                                      ; preds = %cond.end12
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %spec.select, align 8
  br label %cond.end18

cond.end18:                                       ; preds = %cond.true15, %cond.end12.cond.end18_crit_edge
  %cond19 = phi i32 [ %16, %cond.true15 ], [ 0, %cond.end12.cond.end18_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i184)
  %tobool23.not = icmp eq i32 %retval.0.i184, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i194)
  %tobool26.not = icmp eq i32 %retval.0.i194, 0
  %add28 = add nsw i32 %retval.0.i194, 4
  %add29 = select i1 %tobool26.not, i32 0, i32 %add28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i205)
  %tobool31.not = icmp eq i32 %retval.0.i205, 0
  %add33 = add nsw i32 %retval.0.i205, 4
  %add34 = select i1 %tobool31.not, i32 0, i32 %add33
  %add24.op = add nsw i32 %retval.0.i184, 50
  %add21 = select i1 %tobool23.not, i32 46, i32 %add24.op
  %add22 = add i32 %add21, %add29
  %size.0 = add i32 %add22, %add34
  %size.1 = add i32 %size.0, %cond13
  %size.2 = add i32 %size.1, %cond19
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %size.2, i32 noundef %gfp) #14
  %tobool37.not = icmp eq ptr %call9.i, null
  br i1 %tobool37.not, label %cond.end18.cleanup_crit_edge, label %if.end39

cond.end18.cleanup_crit_edge:                     ; preds = %cond.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end39:                                         ; preds = %cond.end18
  %17 = getelementptr inbounds %struct.fanotify_event, ptr %call9.i, i32 0, i32 3
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %bf.load = load i32, ptr %17, align 4
  %bf.clear = and i32 %bf.load, 536870911
  %bf.set = or i32 %bf.clear, 536870912
  store i32 %bf.set, ptr %17, align 4
  %fsid40 = getelementptr inbounds %struct.fanotify_name_event, ptr %call9.i, i32 0, i32 1
  %19 = ptrtoint ptr %fsid to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %20 = load i64, ptr %fsid, align 4
  %21 = ptrtoint ptr %fsid40 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 8)
  store i64 %20, ptr %fsid40, align 4
  %22 = load i32, ptr %fsid, align 4
  %mul.i.i.i = mul i32 %22, 1640531527
  %arrayidx2.i = getelementptr [2 x i32], ptr %fsid, i32 0, i32 1
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx2.i, align 4
  %mul.i.i5.i = mul i32 %24, 1640531527
  %shr.i7.i = xor i32 %mul.i.i5.i, %mul.i.i.i
  %xor.i = lshr i32 %shr.i7.i, 3
  %25 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hash, align 4
  %xor = xor i32 %xor.i, %26
  store i32 %xor, ptr %hash, align 4
  %info42 = getelementptr inbounds %struct.fanotify_name_event, ptr %call9.i, i32 0, i32 2
  %27 = call ptr @memset(ptr %info42, i32 0, i32 5)
  br i1 %tobool23.not, label %if.end39.if.end47_crit_edge, label %if.then44

if.end39.if.end47_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

if.then44:                                        ; preds = %if.end39
  %buf.i = getelementptr inbounds %struct.fanotify_name_event, ptr %call9.i, i32 1
  %call46 = call fastcc i32 @fanotify_encode_fh(ptr noundef %buf.i, ptr noundef %dir, i32 noundef %retval.0.i184, ptr noundef %hash, i32 noundef 0), !range !110
  %dir2_fh_totlen.i = getelementptr inbounds %struct.fanotify_name_event, ptr %call9.i, i32 0, i32 2, i32 1
  %28 = ptrtoint ptr %dir2_fh_totlen.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %dir2_fh_totlen.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp.not.i = icmp eq i8 %29, 0
  br i1 %cmp.not.i, label %lor.lhs.false.critedge.i, label %land.rhs.i207

land.rhs.i207:                                    ; preds = %if.then44
  %.b235.i = load i1, ptr @fanotify_info_set_dir_fh.__already_done, align 1
  br i1 %.b235.i, label %land.rhs.i207.if.end47_crit_edge, label %if.then.i208, !prof !100

land.rhs.i207.if.end47_crit_edge:                 ; preds = %land.rhs.i207
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

if.then.i208:                                     ; preds = %land.rhs.i207
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @fanotify_info_set_dir_fh.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 183, i32 noundef 9, ptr noundef null) #11
  br label %if.end47

lor.lhs.false.critedge.i:                         ; preds = %if.then44
  %file_fh_totlen.i = getelementptr inbounds %struct.fanotify_name_event, ptr %call9.i, i32 0, i32 2, i32 2
  %30 = ptrtoint ptr %file_fh_totlen.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %file_fh_totlen.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp40.not.i = icmp eq i8 %31, 0
  br i1 %cmp40.not.i, label %lor.lhs.false96.critedge.i, label %land.rhs49.i

land.rhs49.i:                                     ; preds = %lor.lhs.false.critedge.i
  %.b229234.i = load i1, ptr @fanotify_info_set_dir_fh.__already_done.12, align 1
  br i1 %.b229234.i, label %land.rhs49.i.if.end47_crit_edge, label %if.then60.i, !prof !100

land.rhs49.i.if.end47_crit_edge:                  ; preds = %land.rhs49.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

if.then60.i:                                      ; preds = %land.rhs49.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @fanotify_info_set_dir_fh.__already_done.12, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 184, i32 noundef 9, ptr noundef null) #11
  br label %if.end47

lor.lhs.false96.critedge.i:                       ; preds = %lor.lhs.false.critedge.i
  %name_len.i = getelementptr inbounds %struct.fanotify_name_event, ptr %call9.i, i32 0, i32 2, i32 3
  %32 = ptrtoint ptr %name_len.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %name_len.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp99.not.i = icmp eq i8 %33, 0
  br i1 %cmp99.not.i, label %lor.lhs.false155.critedge.i, label %land.rhs108.i

land.rhs108.i:                                    ; preds = %lor.lhs.false96.critedge.i
  %.b230233.i = load i1, ptr @fanotify_info_set_dir_fh.__already_done.13, align 1
  br i1 %.b230233.i, label %land.rhs108.i.if.end47_crit_edge, label %if.then119.i, !prof !100

land.rhs108.i.if.end47_crit_edge:                 ; preds = %land.rhs108.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

if.then119.i:                                     ; preds = %land.rhs108.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @fanotify_info_set_dir_fh.__already_done.13, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 185, i32 noundef 9, ptr noundef null) #11
  br label %if.end47

lor.lhs.false155.critedge.i:                      ; preds = %lor.lhs.false96.critedge.i
  %name2_len.i = getelementptr inbounds %struct.fanotify_name_event, ptr %call9.i, i32 0, i32 2, i32 4
  %34 = ptrtoint ptr %name2_len.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %name2_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp158.not.i = icmp eq i8 %35, 0
  br i1 %cmp158.not.i, label %if.end215.critedge.i, label %land.rhs167.i

land.rhs167.i:                                    ; preds = %lor.lhs.false155.critedge.i
  %.b231232.i = load i1, ptr @fanotify_info_set_dir_fh.__already_done.14, align 1
  br i1 %.b231232.i, label %land.rhs167.i.if.end47_crit_edge, label %if.then178.i, !prof !100

land.rhs167.i.if.end47_crit_edge:                 ; preds = %land.rhs167.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

if.then178.i:                                     ; preds = %land.rhs167.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @fanotify_info_set_dir_fh.__already_done.14, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 186, i32 noundef 9, ptr noundef null) #11
  br label %if.end47

if.end215.critedge.i:                             ; preds = %lor.lhs.false155.critedge.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv216.i = trunc i32 %call46 to i8
  %36 = ptrtoint ptr %info42 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv216.i, ptr %info42, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.end215.critedge.i, %if.then178.i, %land.rhs167.i.if.end47_crit_edge, %if.then119.i, %land.rhs108.i.if.end47_crit_edge, %if.then60.i, %land.rhs49.i.if.end47_crit_edge, %if.then.i208, %land.rhs.i207.if.end47_crit_edge, %if.end39.if.end47_crit_edge
  br i1 %tobool26.not, label %if.end47.if.end52_crit_edge, label %if.then49

if.end47.if.end52_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

if.then49:                                        ; preds = %if.end47
  %buf.i209 = getelementptr inbounds %struct.fanotify_name_event, ptr %call9.i, i32 1
  %37 = ptrtoint ptr %info42 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %info42, align 4
  %conv.i = zext i8 %38 to i32
  %add.ptr.i = getelementptr i8, ptr %buf.i209, i32 %conv.i
  %call51 = call fastcc i32 @fanotify_encode_fh(ptr noundef %add.ptr.i, ptr noundef %cond, i32 noundef %retval.0.i194, ptr noundef %hash, i32 noundef 0), !range !110
  %file_fh_totlen.i210 = getelementptr inbounds %struct.fanotify_name_event, ptr %call9.i, i32 0, i32 2, i32 2
  %39 = ptrtoint ptr %file_fh_totlen.i210 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %file_fh_totlen.i210, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp.not.i211 = icmp eq i8 %40, 0
  br i1 %cmp.not.i211, label %lor.lhs.false.critedge.i216, label %land.rhs.i212

land.rhs.i212:                                    ; preds = %if.then49
  %.b171.i = load i1, ptr @fanotify_info_set_dir2_fh.__already_done, align 1
  br i1 %.b171.i, label %land.rhs.i212.if.end52_crit_edge, label %if.then.i213, !prof !100

land.rhs.i212.if.end52_crit_edge:                 ; preds = %land.rhs.i212
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

if.then.i213:                                     ; preds = %land.rhs.i212
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @fanotify_info_set_dir2_fh.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 195, i32 noundef 9, ptr noundef null) #11
  br label %if.end52

lor.lhs.false.critedge.i216:                      ; preds = %if.then49
  %name_len.i214 = getelementptr inbounds %struct.fanotify_name_event, ptr %call9.i, i32 0, i32 2, i32 3
  %41 = ptrtoint ptr %name_len.i214 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %name_len.i214, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %cmp40.not.i215 = icmp eq i8 %42, 0
  br i1 %cmp40.not.i215, label %lor.lhs.false96.critedge.i221, label %land.rhs49.i217

land.rhs49.i217:                                  ; preds = %lor.lhs.false.critedge.i216
  %.b167170.i = load i1, ptr @fanotify_info_set_dir2_fh.__already_done.15, align 1
  br i1 %.b167170.i, label %land.rhs49.i217.if.end52_crit_edge, label %if.then60.i218, !prof !100

land.rhs49.i217.if.end52_crit_edge:               ; preds = %land.rhs49.i217
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

if.then60.i218:                                   ; preds = %land.rhs49.i217
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @fanotify_info_set_dir2_fh.__already_done.15, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 196, i32 noundef 9, ptr noundef null) #11
  br label %if.end52

lor.lhs.false96.critedge.i221:                    ; preds = %lor.lhs.false.critedge.i216
  %name2_len.i219 = getelementptr inbounds %struct.fanotify_name_event, ptr %call9.i, i32 0, i32 2, i32 4
  %43 = ptrtoint ptr %name2_len.i219 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %name2_len.i219, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %cmp99.not.i220 = icmp eq i8 %44, 0
  br i1 %cmp99.not.i220, label %if.end156.critedge.i, label %land.rhs108.i222

land.rhs108.i222:                                 ; preds = %lor.lhs.false96.critedge.i221
  %.b168169.i = load i1, ptr @fanotify_info_set_dir2_fh.__already_done.16, align 1
  br i1 %.b168169.i, label %land.rhs108.i222.if.end52_crit_edge, label %if.then119.i223, !prof !100

land.rhs108.i222.if.end52_crit_edge:              ; preds = %land.rhs108.i222
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

if.then119.i223:                                  ; preds = %land.rhs108.i222
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @fanotify_info_set_dir2_fh.__already_done.16, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 197, i32 noundef 9, ptr noundef null) #11
  br label %if.end52

if.end156.critedge.i:                             ; preds = %lor.lhs.false96.critedge.i221
  call void @__sanitizer_cov_trace_pc() #13
  %conv157.i = trunc i32 %call51 to i8
  %dir2_fh_totlen.i224 = getelementptr inbounds %struct.fanotify_name_event, ptr %call9.i, i32 0, i32 2, i32 1
  %45 = ptrtoint ptr %dir2_fh_totlen.i224 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv157.i, ptr %dir2_fh_totlen.i224, align 1
  br label %if.end52

if.end52:                                         ; preds = %if.end156.critedge.i, %if.then119.i223, %land.rhs108.i222.if.end52_crit_edge, %if.then60.i218, %land.rhs49.i217.if.end52_crit_edge, %if.then.i213, %land.rhs.i212.if.end52_crit_edge, %if.end47.if.end52_crit_edge
  br i1 %tobool31.not, label %if.end52.if.end57_crit_edge, label %if.then54

if.end52.if.end57_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

if.then54:                                        ; preds = %if.end52
  %buf.i225 = getelementptr inbounds %struct.fanotify_name_event, ptr %call9.i, i32 1
  %46 = ptrtoint ptr %info42 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %info42, align 4
  %conv.i226 = zext i8 %47 to i32
  %dir2_fh_totlen.i227 = getelementptr inbounds %struct.fanotify_name_event, ptr %call9.i, i32 0, i32 2, i32 1
  %48 = ptrtoint ptr %dir2_fh_totlen.i227 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %dir2_fh_totlen.i227, align 1
  %conv1.i = zext i8 %49 to i32
  %add2.i = add nuw nsw i32 %conv1.i, %conv.i226
  %add.ptr.i228 = getelementptr i8, ptr %buf.i225, i32 %add2.i
  %call56 = call fastcc i32 @fanotify_encode_fh(ptr noundef %add.ptr.i228, ptr noundef %child, i32 noundef %retval.0.i205, ptr noundef %hash, i32 noundef 0), !range !110
  %name_len.i229 = getelementptr inbounds %struct.fanotify_name_event, ptr %call9.i, i32 0, i32 2, i32 3
  %50 = ptrtoint ptr %name_len.i229 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %name_len.i229, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp.not.i230 = icmp eq i8 %51, 0
  br i1 %cmp.not.i230, label %lor.lhs.false.critedge.i235, label %land.rhs.i231

land.rhs.i231:                                    ; preds = %if.then54
  %.b107.i = load i1, ptr @fanotify_info_set_file_fh.__already_done, align 1
  br i1 %.b107.i, label %land.rhs.i231.if.end57_crit_edge, label %if.then.i232, !prof !100

land.rhs.i231.if.end57_crit_edge:                 ; preds = %land.rhs.i231
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

if.then.i232:                                     ; preds = %land.rhs.i231
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @fanotify_info_set_file_fh.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 206, i32 noundef 9, ptr noundef null) #11
  br label %if.end57

lor.lhs.false.critedge.i235:                      ; preds = %if.then54
  %name2_len.i233 = getelementptr inbounds %struct.fanotify_name_event, ptr %call9.i, i32 0, i32 2, i32 4
  %52 = ptrtoint ptr %name2_len.i233 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %name2_len.i233, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp40.not.i234 = icmp eq i8 %53, 0
  br i1 %cmp40.not.i234, label %if.end97.critedge.i, label %land.rhs49.i236

land.rhs49.i236:                                  ; preds = %lor.lhs.false.critedge.i235
  %.b105106.i = load i1, ptr @fanotify_info_set_file_fh.__already_done.17, align 1
  br i1 %.b105106.i, label %land.rhs49.i236.if.end57_crit_edge, label %if.then60.i237, !prof !100

land.rhs49.i236.if.end57_crit_edge:               ; preds = %land.rhs49.i236
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

if.then60.i237:                                   ; preds = %land.rhs49.i236
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @fanotify_info_set_file_fh.__already_done.17, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 207, i32 noundef 9, ptr noundef null) #11
  br label %if.end57

if.end97.critedge.i:                              ; preds = %lor.lhs.false.critedge.i235
  call void @__sanitizer_cov_trace_pc() #13
  %conv98.i = trunc i32 %call56 to i8
  %file_fh_totlen.i238 = getelementptr inbounds %struct.fanotify_name_event, ptr %call9.i, i32 0, i32 2, i32 2
  %54 = ptrtoint ptr %file_fh_totlen.i238 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv98.i, ptr %file_fh_totlen.i238, align 2
  br label %if.end57

if.end57:                                         ; preds = %if.end97.critedge.i, %if.then60.i237, %land.rhs49.i236.if.end57_crit_edge, %if.then.i232, %land.rhs.i231.if.end57_crit_edge, %if.end52.if.end57_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond13)
  %tobool58.not = icmp eq i32 %cond13, 0
  br i1 %tobool58.not, label %if.end57.if.end63_crit_edge, label %if.then59

if.end57.if.end63_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

if.then59:                                        ; preds = %if.end57
  %55 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %name, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %56)
  %cmp.i239 = icmp ugt i32 %56, 255
  br i1 %cmp.i239, label %land.rhs.i240, label %lor.lhs.false.critedge.i243

land.rhs.i240:                                    ; preds = %if.then59
  %.b109.i = load i1, ptr @fanotify_info_copy_name.__already_done, align 1
  br i1 %.b109.i, label %land.rhs.i240.fanotify_info_copy_name.exit_crit_edge, label %if.then.i241, !prof !100

land.rhs.i240.fanotify_info_copy_name.exit_crit_edge: ; preds = %land.rhs.i240
  call void @__sanitizer_cov_trace_pc() #13
  br label %fanotify_info_copy_name.exit

if.then.i241:                                     ; preds = %land.rhs.i240
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @fanotify_info_copy_name.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 216, i32 noundef 9, ptr noundef null) #11
  br label %fanotify_info_copy_name.exit

lor.lhs.false.critedge.i243:                      ; preds = %if.then59
  %name2_len.i242 = getelementptr inbounds %struct.fanotify_name_event, ptr %call9.i, i32 0, i32 2, i32 4
  %57 = ptrtoint ptr %name2_len.i242 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %name2_len.i242, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %cmp37.not.i = icmp eq i8 %58, 0
  br i1 %cmp37.not.i, label %if.end94.critedge.i, label %land.rhs46.i

land.rhs46.i:                                     ; preds = %lor.lhs.false.critedge.i243
  %.b107108.i = load i1, ptr @fanotify_info_copy_name.__already_done.18, align 1
  br i1 %.b107108.i, label %land.rhs46.i.fanotify_info_copy_name.exit_crit_edge, label %if.then57.i, !prof !100

land.rhs46.i.fanotify_info_copy_name.exit_crit_edge: ; preds = %land.rhs46.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fanotify_info_copy_name.exit

if.then57.i:                                      ; preds = %land.rhs46.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @fanotify_info_copy_name.__already_done.18, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 217, i32 noundef 9, ptr noundef null) #11
  br label %fanotify_info_copy_name.exit

if.end94.critedge.i:                              ; preds = %lor.lhs.false.critedge.i243
  %conv96.i = trunc i32 %56 to i8
  %name_len.i244 = getelementptr inbounds %struct.fanotify_name_event, ptr %call9.i, i32 0, i32 2, i32 3
  %59 = ptrtoint ptr %name_len.i244 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv96.i, ptr %name_len.i244, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv96.i)
  %tobool.not.i.i245 = icmp eq i8 %conv96.i, 0
  br i1 %tobool.not.i.i245, label %if.end94.critedge.i.fanotify_info_name.exit.i_crit_edge, label %if.end.i.i246

if.end94.critedge.i.fanotify_info_name.exit.i_crit_edge: ; preds = %if.end94.critedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fanotify_info_name.exit.i

if.end.i.i246:                                    ; preds = %if.end94.critedge.i
  call void @__sanitizer_cov_trace_pc() #13
  %buf.i.i = getelementptr inbounds %struct.fanotify_name_event, ptr %call9.i, i32 1
  %60 = ptrtoint ptr %info42 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %info42, align 4
  %conv.i.i = zext i8 %61 to i32
  %dir2_fh_totlen.i.i = getelementptr inbounds %struct.fanotify_name_event, ptr %call9.i, i32 0, i32 2, i32 1
  %62 = ptrtoint ptr %dir2_fh_totlen.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %dir2_fh_totlen.i.i, align 1
  %conv1.i.i = zext i8 %63 to i32
  %add2.i.i = add nuw nsw i32 %conv1.i.i, %conv.i.i
  %file_fh_totlen.i.i = getelementptr inbounds %struct.fanotify_name_event, ptr %call9.i, i32 0, i32 2, i32 2
  %64 = ptrtoint ptr %file_fh_totlen.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %file_fh_totlen.i.i, align 2
  %conv3.i.i = zext i8 %65 to i32
  %add4.i.i = add nuw nsw i32 %add2.i.i, %conv3.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf.i.i, i32 %add4.i.i
  br label %fanotify_info_name.exit.i

fanotify_info_name.exit.i:                        ; preds = %if.end.i.i246, %if.end94.critedge.i.fanotify_info_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.end.i.i246 ], [ null, %if.end94.critedge.i.fanotify_info_name.exit.i_crit_edge ]
  %name97.i = getelementptr inbounds %struct.qstr, ptr %name, i32 0, i32 1
  %66 = ptrtoint ptr %name97.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %name97.i, align 8
  %call98.i = call ptr @strcpy(ptr noundef %retval.0.i.i, ptr noundef %67) #15
  br label %fanotify_info_copy_name.exit

fanotify_info_copy_name.exit:                     ; preds = %fanotify_info_name.exit.i, %if.then57.i, %land.rhs46.i.fanotify_info_copy_name.exit_crit_edge, %if.then.i241, %land.rhs.i240.fanotify_info_copy_name.exit_crit_edge
  %68 = inttoptr i32 %cond13 to ptr
  %name60 = getelementptr inbounds %struct.qstr, ptr %name, i32 0, i32 1
  %69 = ptrtoint ptr %name60 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %name60, align 8
  %call61 = call i32 @full_name_hash(ptr noundef nonnull %68, ptr noundef %70, i32 noundef %cond13) #16
  %71 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %hash, align 4
  %xor62 = xor i32 %72, %call61
  store i32 %xor62, ptr %hash, align 4
  br label %if.end63

if.end63:                                         ; preds = %fanotify_info_copy_name.exit, %if.end57.if.end63_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond19)
  %tobool64.not = icmp eq i32 %cond19, 0
  br i1 %tobool64.not, label %if.end63.do.body_crit_edge, label %if.then65

if.end63.do.body_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.then65:                                        ; preds = %if.end63
  %73 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %spec.select, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %74)
  %cmp.i247 = icmp ugt i32 %74, 255
  br i1 %cmp.i247, label %land.rhs.i249, label %if.end37.critedge.i

land.rhs.i249:                                    ; preds = %if.then65
  %.b46.i248 = load i1, ptr @fanotify_info_copy_name2.__already_done, align 1
  br i1 %.b46.i248, label %land.rhs.i249.fanotify_info_copy_name2.exit_crit_edge, label %if.then.i250, !prof !100

land.rhs.i249.fanotify_info_copy_name2.exit_crit_edge: ; preds = %land.rhs.i249
  call void @__sanitizer_cov_trace_pc() #13
  br label %fanotify_info_copy_name2.exit

if.then.i250:                                     ; preds = %land.rhs.i249
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @fanotify_info_copy_name2.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 227, i32 noundef 9, ptr noundef null) #11
  br label %fanotify_info_copy_name2.exit

if.end37.critedge.i:                              ; preds = %if.then65
  %conv.i251 = trunc i32 %74 to i8
  %name2_len.i252 = getelementptr inbounds %struct.fanotify_name_event, ptr %call9.i, i32 0, i32 2, i32 4
  %75 = ptrtoint ptr %name2_len.i252 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv.i251, ptr %name2_len.i252, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i251)
  %tobool.not.i.i253 = icmp eq i8 %conv.i251, 0
  br i1 %tobool.not.i.i253, label %if.end37.critedge.i.fanotify_info_name2.exit.i_crit_edge, label %if.end.i.i263

if.end37.critedge.i.fanotify_info_name2.exit.i_crit_edge: ; preds = %if.end37.critedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fanotify_info_name2.exit.i

if.end.i.i263:                                    ; preds = %if.end37.critedge.i
  call void @__sanitizer_cov_trace_pc() #13
  %buf.i.i254 = getelementptr inbounds %struct.fanotify_name_event, ptr %call9.i, i32 1
  %76 = ptrtoint ptr %info42 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %info42, align 4
  %conv.i.i255 = zext i8 %77 to i32
  %dir2_fh_totlen.i.i256 = getelementptr inbounds %struct.fanotify_name_event, ptr %call9.i, i32 0, i32 2, i32 1
  %78 = ptrtoint ptr %dir2_fh_totlen.i.i256 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %dir2_fh_totlen.i.i256, align 1
  %conv1.i.i257 = zext i8 %79 to i32
  %file_fh_totlen.i.i258 = getelementptr inbounds %struct.fanotify_name_event, ptr %call9.i, i32 0, i32 2, i32 2
  %80 = ptrtoint ptr %file_fh_totlen.i.i258 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %file_fh_totlen.i.i258, align 2
  %conv3.i.i259 = zext i8 %81 to i32
  %name_len.i.i = getelementptr inbounds %struct.fanotify_name_event, ptr %call9.i, i32 0, i32 2, i32 3
  %82 = ptrtoint ptr %name_len.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %name_len.i.i, align 1
  %conv5.i.i = zext i8 %83 to i32
  %add6.i.i = add nuw nsw i32 %conv.i.i255, 1
  %add2.i.i260 = add nuw nsw i32 %add6.i.i, %conv1.i.i257
  %add4.i.i261 = add nuw nsw i32 %add2.i.i260, %conv3.i.i259
  %add7.i.i = add nuw nsw i32 %add4.i.i261, %conv5.i.i
  %add.ptr.i.i262 = getelementptr i8, ptr %buf.i.i254, i32 %add7.i.i
  br label %fanotify_info_name2.exit.i

fanotify_info_name2.exit.i:                       ; preds = %if.end.i.i263, %if.end37.critedge.i.fanotify_info_name2.exit.i_crit_edge
  %retval.0.i.i264 = phi ptr [ %add.ptr.i.i262, %if.end.i.i263 ], [ null, %if.end37.critedge.i.fanotify_info_name2.exit.i_crit_edge ]
  %name39.i = getelementptr inbounds %struct.qstr, ptr %spec.select, i32 0, i32 1
  %84 = ptrtoint ptr %name39.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %name39.i, align 8
  %call40.i = call ptr @strcpy(ptr noundef %retval.0.i.i264, ptr noundef %85) #15
  br label %fanotify_info_copy_name2.exit

fanotify_info_copy_name2.exit:                    ; preds = %fanotify_info_name2.exit.i, %if.then.i250, %land.rhs.i249.fanotify_info_copy_name2.exit_crit_edge
  %86 = inttoptr i32 %cond19 to ptr
  %name66 = getelementptr inbounds %struct.qstr, ptr %spec.select, i32 0, i32 1
  %87 = ptrtoint ptr %name66 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %name66, align 8
  %call67 = call i32 @full_name_hash(ptr noundef nonnull %86, ptr noundef %88, i32 noundef %cond19) #16
  %89 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %hash, align 4
  %xor68 = xor i32 %90, %call67
  store i32 %xor68, ptr %hash, align 4
  br label %do.body

do.body:                                          ; preds = %fanotify_info_copy_name2.exit, %if.end63.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fanotify_alloc_name_event.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fanotify_alloc_name_event, %if.then74)) #11
          to label %do.end [label %if.then74], !srcloc !95

if.then74:                                        ; preds = %do.body
  %name_len75 = getelementptr inbounds %struct.fanotify_name_event, ptr %call9.i, i32 0, i32 2, i32 3
  %91 = ptrtoint ptr %name_len75 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %name_len75, align 1
  %conv = zext i8 %92 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool.not.i266 = icmp eq i8 %92, 0
  br i1 %tobool.not.i266, label %if.then74.fanotify_info_name.exit_crit_edge, label %if.end.i274

if.then74.fanotify_info_name.exit_crit_edge:      ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #13
  br label %fanotify_info_name.exit

if.end.i274:                                      ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #13
  %buf.i267 = getelementptr inbounds %struct.fanotify_name_event, ptr %call9.i, i32 1
  %93 = ptrtoint ptr %info42 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %info42, align 4
  %conv.i268 = zext i8 %94 to i32
  %dir2_fh_totlen.i269 = getelementptr inbounds %struct.fanotify_name_event, ptr %call9.i, i32 0, i32 2, i32 1
  %95 = ptrtoint ptr %dir2_fh_totlen.i269 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %dir2_fh_totlen.i269, align 1
  %conv1.i270 = zext i8 %96 to i32
  %add2.i271 = add nuw nsw i32 %conv1.i270, %conv.i268
  %file_fh_totlen.i272 = getelementptr inbounds %struct.fanotify_name_event, ptr %call9.i, i32 0, i32 2, i32 2
  %97 = ptrtoint ptr %file_fh_totlen.i272 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %file_fh_totlen.i272, align 2
  %conv3.i = zext i8 %98 to i32
  %add4.i = add nuw nsw i32 %add2.i271, %conv3.i
  %add.ptr.i273 = getelementptr i8, ptr %buf.i267, i32 %add4.i
  br label %fanotify_info_name.exit

fanotify_info_name.exit:                          ; preds = %if.end.i274, %if.then74.fanotify_info_name.exit_crit_edge
  %retval.0.i275 = phi ptr [ %add.ptr.i273, %if.end.i274 ], [ null, %if.then74.fanotify_info_name.exit_crit_edge ]
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fanotify_alloc_name_event.__UNIQUE_ID_ddebug247, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, i32 noundef %size.2, i32 noundef %retval.0.i184, i32 noundef %retval.0.i205, i32 noundef %conv, i32 noundef %conv, ptr noundef %retval.0.i275) #11
  br label %do.end

do.end:                                           ; preds = %fanotify_info_name.exit, %do.body
  br i1 %tobool26.not, label %do.end.cleanup_crit_edge, label %do.body82

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body82:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fanotify_alloc_name_event.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fanotify_alloc_name_event, %if.then94)) #11
          to label %cleanup [label %if.then94], !srcloc !95

if.then94:                                        ; preds = %do.body82
  %name2_len95 = getelementptr inbounds %struct.fanotify_name_event, ptr %call9.i, i32 0, i32 2, i32 4
  %99 = ptrtoint ptr %name2_len95 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %name2_len95, align 8
  %conv96 = zext i8 %100 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool.not.i277 = icmp eq i8 %100, 0
  br i1 %tobool.not.i277, label %if.then94.fanotify_info_name2.exit_crit_edge, label %if.end.i288

if.then94.fanotify_info_name2.exit_crit_edge:     ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #13
  br label %fanotify_info_name2.exit

if.end.i288:                                      ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #13
  %buf.i278 = getelementptr inbounds %struct.fanotify_name_event, ptr %call9.i, i32 1
  %101 = ptrtoint ptr %info42 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %info42, align 4
  %conv.i279 = zext i8 %102 to i32
  %dir2_fh_totlen.i280 = getelementptr inbounds %struct.fanotify_name_event, ptr %call9.i, i32 0, i32 2, i32 1
  %103 = ptrtoint ptr %dir2_fh_totlen.i280 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %dir2_fh_totlen.i280, align 1
  %conv1.i281 = zext i8 %104 to i32
  %file_fh_totlen.i282 = getelementptr inbounds %struct.fanotify_name_event, ptr %call9.i, i32 0, i32 2, i32 2
  %105 = ptrtoint ptr %file_fh_totlen.i282 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %file_fh_totlen.i282, align 2
  %conv3.i283 = zext i8 %106 to i32
  %name_len.i284 = getelementptr inbounds %struct.fanotify_name_event, ptr %call9.i, i32 0, i32 2, i32 3
  %107 = ptrtoint ptr %name_len.i284 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %name_len.i284, align 1
  %conv5.i = zext i8 %108 to i32
  %add6.i = add nuw nsw i32 %conv.i279, 1
  %add2.i285 = add nuw nsw i32 %add6.i, %conv1.i281
  %add4.i286 = add nuw nsw i32 %add2.i285, %conv3.i283
  %add7.i = add nuw nsw i32 %add4.i286, %conv5.i
  %add.ptr.i287 = getelementptr i8, ptr %buf.i278, i32 %add7.i
  br label %fanotify_info_name2.exit

fanotify_info_name2.exit:                         ; preds = %if.end.i288, %if.then94.fanotify_info_name2.exit_crit_edge
  %retval.0.i289 = phi ptr [ %add.ptr.i287, %if.end.i288 ], [ null, %if.then94.fanotify_info_name2.exit_crit_edge ]
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fanotify_alloc_name_event.__UNIQUE_ID_ddebug248, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.8, i32 noundef %retval.0.i194, i32 noundef %conv96, i32 noundef %conv96, ptr noundef %retval.0.i289) #11
  br label %cleanup

cleanup:                                          ; preds = %fanotify_info_name2.exit, %do.body82, %do.end.cleanup_crit_edge, %cond.end18.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %cond.end18.cleanup_crit_edge ], [ %call9.i, %fanotify_info_name2.exit ], [ %call9.i, %do.end.cleanup_crit_edge ], [ %call9.i, %do.body82 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fanotify_encode_fh(ptr noundef %fh, ptr noundef %inode, i32 noundef %fh_len, ptr noundef %hash, i32 noundef %gfp) unnamed_addr #0 align 64 {
entry:
  %dwords = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dwords) #11
  %0 = ptrtoint ptr %dwords to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dwords, align 4, !annotation !111
  %buf1 = getelementptr inbounds %struct.fanotify_fh, ptr %fh, i32 0, i32 4
  %1 = ptrtoint ptr %fh to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %fh, align 4
  %len = getelementptr inbounds %struct.fanotify_fh, ptr %fh, i32 0, i32 1
  %2 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %len, align 1
  %flags = getelementptr inbounds %struct.fanotify_fh, ptr %fh, i32 0, i32 2
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %flags, align 2
  %tobool.not = icmp eq ptr %inode, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %fh_len)
  %cmp = icmp ult i32 %fh_len, 4
  br i1 %cmp, label %if.end.out_err_crit_edge, label %lor.lhs.false

if.end.out_err_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_err

lor.lhs.false:                                    ; preds = %if.end
  %rem = and i32 %fh_len, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool3.not = icmp eq i32 %rem, 0
  br i1 %tobool3.not, label %lor.lhs.false42.critedge, label %land.rhs

land.rhs:                                         ; preds = %lor.lhs.false
  %.b121 = load i1, ptr @fanotify_encode_fh.__already_done, align 1
  br i1 %.b121, label %land.rhs.out_err_crit_edge, label %if.then11, !prof !100

land.rhs.out_err_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_err

if.then11:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @fanotify_encode_fh.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 437, i32 noundef 9, ptr noundef null) #11
  br label %out_err

lor.lhs.false42.critedge:                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %fh_len)
  %cmp43 = icmp ugt i32 %fh_len, 128
  br i1 %cmp43, label %lor.lhs.false42.critedge.out_err_crit_edge, label %if.end45

lor.lhs.false42.critedge.out_err_crit_edge:       ; preds = %lor.lhs.false42.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_err

if.end45:                                         ; preds = %lor.lhs.false42.critedge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %gfp)
  %tobool46.not = icmp ne i32 %gfp, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %fh_len)
  %cmp47 = icmp ugt i32 %fh_len, 12
  %or.cond = and i1 %cmp47, %tobool46.not
  br i1 %or.cond, label %if.end8.i, label %if.end45.if.end55_crit_edge

if.end45.if.end55_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

if.end8.i:                                        ; preds = %if.end45
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %fh_len, i32 noundef %gfp) #14
  %tobool49.not = icmp eq ptr %call9.i, null
  br i1 %tobool49.not, label %if.end8.i.out_err_crit_edge, label %if.end51

if.end8.i.out_err_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_err

if.end51:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %buf1 to i32
  %add.i = add i32 %4, 3
  %and.i = and i32 %add.i, -4
  %5 = inttoptr i32 %and.i to ptr
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call9.i, ptr %5, align 4
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %flags, align 2
  %9 = or i8 %8, 1
  store i8 %9, ptr %flags, align 2
  br label %if.end55

if.end55:                                         ; preds = %if.end51, %if.end45.if.end55_crit_edge
  %buf.0 = phi ptr [ %call9.i, %if.end51 ], [ %buf1, %if.end45.if.end55_crit_edge ]
  %ext_buf.0 = phi ptr [ %call9.i, %if.end51 ], [ null, %if.end45.if.end55_crit_edge ]
  %shr = lshr i32 %fh_len, 2
  %10 = ptrtoint ptr %dwords to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %shr, ptr %dwords, align 4
  %call56 = call i32 @exportfs_encode_inode_fh(ptr noundef nonnull %inode, ptr noundef %buf.0, ptr noundef nonnull %dwords, ptr noundef null) #11
  %11 = zext i32 %call56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %call56, label %lor.lhs.false61 [
    i32 0, label %if.end55.out_err_crit_edge
    i32 255, label %out_err.fold.split
  ]

if.end55.out_err_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_err

lor.lhs.false61:                                  ; preds = %if.end55
  %12 = ptrtoint ptr %dwords to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dwords, align 4
  %shl = shl i32 %13, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %fh_len)
  %cmp62.not = icmp eq i32 %shl, %fh_len
  br i1 %cmp62.not, label %if.end65, label %lor.lhs.false61.out_err_crit_edge

lor.lhs.false61.out_err_crit_edge:                ; preds = %lor.lhs.false61
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_err

if.end65:                                         ; preds = %lor.lhs.false61
  call void @__sanitizer_cov_trace_pc() #13
  %conv66 = trunc i32 %call56 to i8
  %14 = ptrtoint ptr %fh to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv66, ptr %fh, align 4
  %conv68 = trunc i32 %fh_len to i8
  %15 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv68, ptr %len, align 1
  br label %out

out:                                              ; preds = %if.end65, %entry.out_crit_edge
  %tobool70.not = icmp eq ptr %hash, null
  br i1 %tobool70.not, label %out.if.end73_crit_edge, label %if.then71

out.if.end73_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end73

if.then71:                                        ; preds = %out
  %16 = ptrtoint ptr %fh to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %fh, align 4
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %len, align 1
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %flags, align 2
  %22 = and i8 %21, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.i.not.i.i = icmp eq i8 %22, 0
  br i1 %tobool.i.not.i.i, label %if.then71.fanotify_hash_fh.exit_crit_edge, label %cond.true.i.i

if.then71.fanotify_hash_fh.exit_crit_edge:        ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #13
  br label %fanotify_hash_fh.exit

cond.true.i.i:                                    ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %buf1 to i32
  %add.i.i.i.i = add i32 %23, 3
  %and.i.i.i.i = and i32 %add.i.i.i.i, -4
  %24 = inttoptr i32 %and.i.i.i.i to ptr
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  br label %fanotify_hash_fh.exit

fanotify_hash_fh.exit:                            ; preds = %cond.true.i.i, %if.then71.fanotify_hash_fh.exit_crit_edge
  %cond.i.i = phi ptr [ %26, %cond.true.i.i ], [ %buf1, %if.then71.fanotify_hash_fh.exit_crit_edge ]
  %conv1.i = zext i8 %19 to i32
  %shl.i = shl nuw nsw i32 %conv1.i, 8
  %conv.i = zext i8 %17 to i32
  %or.i = or i32 %shl.i, %conv.i
  %27 = inttoptr i32 %or.i to ptr
  %call4.i = call i32 @full_name_hash(ptr noundef %27, ptr noundef %cond.i.i, i32 noundef %conv1.i) #16
  %28 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %hash, align 4
  %xor = xor i32 %29, %call4.i
  store i32 %xor, ptr %hash, align 4
  br label %if.end73

if.end73:                                         ; preds = %fanotify_hash_fh.exit, %out.if.end73_crit_edge
  %add = add i32 %fh_len, 4
  br label %cleanup

out_err.fold.split:                               ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_err

out_err:                                          ; preds = %out_err.fold.split, %lor.lhs.false61.out_err_crit_edge, %if.end55.out_err_crit_edge, %if.end8.i.out_err_crit_edge, %lor.lhs.false42.critedge.out_err_crit_edge, %if.then11, %land.rhs.out_err_crit_edge, %if.end.out_err_crit_edge
  %err.0 = phi i32 [ -2, %if.end.out_err_crit_edge ], [ -2, %lor.lhs.false42.critedge.out_err_crit_edge ], [ -22, %lor.lhs.false61.out_err_crit_edge ], [ -22, %if.end55.out_err_crit_edge ], [ -12, %if.end8.i.out_err_crit_edge ], [ -2, %if.then11 ], [ -22, %out_err.fold.split ], [ -2, %land.rhs.out_err_crit_edge ]
  %ext_buf.1 = phi ptr [ null, %if.end.out_err_crit_edge ], [ null, %lor.lhs.false42.critedge.out_err_crit_edge ], [ %ext_buf.0, %lor.lhs.false61.out_err_crit_edge ], [ %ext_buf.0, %if.end55.out_err_crit_edge ], [ null, %if.end8.i.out_err_crit_edge ], [ null, %if.then11 ], [ %ext_buf.0, %out_err.fold.split ], [ null, %land.rhs.out_err_crit_edge ]
  %type.0 = phi i32 [ 0, %if.end.out_err_crit_edge ], [ 0, %lor.lhs.false42.critedge.out_err_crit_edge ], [ %call56, %lor.lhs.false61.out_err_crit_edge ], [ %call56, %if.end55.out_err_crit_edge ], [ 0, %if.end8.i.out_err_crit_edge ], [ 0, %if.then11 ], [ 255, %out_err.fold.split ], [ 0, %land.rhs.out_err_crit_edge ]
  %call74 = call i32 @___ratelimit(ptr noundef nonnull @fanotify_encode_fh._rs, ptr noundef nonnull @__func__.fanotify_encode_fh) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %out_err.if.end82_crit_edge, label %do.end79

out_err.if.end82_crit_edge:                       ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end82

do.end79:                                         ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #13
  %call81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %type.0, i32 noundef %fh_len, i32 noundef %err.0) #17
  br label %if.end82

if.end82:                                         ; preds = %do.end79, %out_err.if.end82_crit_edge
  call void @kfree(ptr noundef %ext_buf.1) #11
  %30 = ptrtoint ptr %buf1 to i32
  %add.i124 = add i32 %30, 3
  %and.i125 = and i32 %add.i124, -4
  %31 = inttoptr i32 %and.i125 to ptr
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %31, align 4
  %33 = ptrtoint ptr %fh to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -1, ptr %fh, align 4
  %34 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %len, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end82, %if.end73
  %retval.0 = phi i32 [ 0, %if.end82 ], [ %add, %if.end73 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dwords) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exportfs_encode_inode_fh(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @full_name_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @fanotify_should_merge(ptr noundef %old, ptr noundef %new) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fanotify_should_merge.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fanotify_should_merge, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !95

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fanotify_should_merge.__UNIQUE_ID_ddebug242, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.21, ptr noundef %old, ptr noundef %new) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = getelementptr inbounds %struct.fanotify_event, ptr %old, i32 0, i32 3
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %bf.load = load i32, ptr %0, align 4
  %2 = getelementptr inbounds %struct.fanotify_event, ptr %new, i32 0, i32 3
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %bf.load3 = load i32, ptr %2, align 4
  %4 = xor i32 %bf.load3, %bf.load
  %5 = and i32 %4, 536870911
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %lor.lhs.false, label %do.end.return_crit_edge

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false:                                    ; preds = %do.end
  %bf.lshr = lshr i32 %bf.load, 29
  %bf.lshr7 = lshr i32 %bf.load3, 29
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr, i32 %bf.lshr7)
  %cmp8.not = icmp eq i32 %bf.lshr, %bf.lshr7
  br i1 %cmp8.not, label %lor.lhs.false9, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %pid = getelementptr inbounds %struct.fanotify_event, ptr %old, i32 0, i32 4
  %6 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pid, align 4
  %pid10 = getelementptr inbounds %struct.fanotify_event, ptr %new, i32 0, i32 4
  %8 = ptrtoint ptr %pid10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pid10, align 4
  %cmp11.not = icmp eq ptr %7, %9
  br i1 %cmp11.not, label %if.end13, label %lor.lhs.false9.return_crit_edge

lor.lhs.false9.return_crit_edge:                  ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end13:                                         ; preds = %lor.lhs.false9
  %mask = getelementptr inbounds %struct.fanotify_event, ptr %old, i32 0, i32 2
  %10 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mask, align 4
  %mask14 = getelementptr inbounds %struct.fanotify_event, ptr %new, i32 0, i32 2
  %12 = ptrtoint ptr %mask14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mask14, align 4
  %14 = xor i32 %13, %11
  %15 = and i32 %14, 1342177280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %if.end25, label %if.end13.return_crit_edge

if.end13.return_crit_edge:                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end25:                                         ; preds = %if.end13
  %17 = zext i32 %bf.lshr to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %bf.lshr, label %land.end [
    i32 2, label %fanotify_event_path.exit116
    i32 0, label %sw.bb31
    i32 1, label %sw.bb35
    i32 5, label %sw.bb39
  ]

fanotify_event_path.exit116:                      ; preds = %if.end25
  %path.i = getelementptr inbounds %struct.fanotify_path_event, ptr %old, i32 0, i32 1
  %path.i111 = getelementptr inbounds %struct.fanotify_path_event, ptr %new, i32 0, i32 1
  %18 = ptrtoint ptr %path.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %path.i, align 4
  %20 = ptrtoint ptr %path.i111 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %path.i111, align 4
  %cmp.i = icmp eq ptr %19, %21
  br i1 %cmp.i, label %land.rhs.i, label %fanotify_event_path.exit116.return_crit_edge

fanotify_event_path.exit116.return_crit_edge:     ; preds = %fanotify_event_path.exit116
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

land.rhs.i:                                       ; preds = %fanotify_event_path.exit116
  call void @__sanitizer_cov_trace_pc() #13
  %dentry.i = getelementptr inbounds %struct.fanotify_path_event, ptr %old, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dentry.i, align 4
  %dentry2.i = getelementptr inbounds %struct.fanotify_path_event, ptr %new, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %dentry2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dentry2.i, align 4
  %cmp3.i = icmp eq ptr %23, %25
  br label %return

sw.bb31:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %call34 = tail call fastcc zeroext i1 @fanotify_fid_event_equal(ptr noundef %old, ptr noundef %new)
  br label %return

sw.bb35:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %call38 = tail call fastcc zeroext i1 @fanotify_name_event_equal(ptr noundef %old, ptr noundef %new)
  br label %return

sw.bb39:                                          ; preds = %if.end25
  %fsid.i = getelementptr inbounds %struct.fanotify_error_event, ptr %old, i32 0, i32 3
  %fsid1.i = getelementptr inbounds %struct.fanotify_error_event, ptr %new, i32 0, i32 3
  %26 = ptrtoint ptr %fsid.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fsid.i, align 4
  %28 = ptrtoint ptr %fsid1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fsid1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp.i.i = icmp eq i32 %27, %29
  br i1 %cmp.i.i, label %land.rhs.i.i, label %sw.bb39.return_crit_edge

sw.bb39.return_crit_edge:                         ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

land.rhs.i.i:                                     ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx4.i.i = getelementptr %struct.fanotify_error_event, ptr %old, i32 0, i32 3, i32 0, i32 1
  %30 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx4.i.i, align 4
  %arrayidx6.i.i = getelementptr %struct.fanotify_error_event, ptr %new, i32 0, i32 3, i32 0, i32 1
  %32 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx6.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp7.i.i = icmp eq i32 %31, %33
  br label %return

land.end:                                         ; preds = %if.end25
  %.b107 = load i1, ptr @fanotify_should_merge.__already_done, align 1
  br i1 %.b107, label %land.end.return_crit_edge, label %if.then53, !prof !100

land.end.return_crit_edge:                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then53:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @fanotify_should_merge.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 177, i32 noundef 9, ptr noundef null) #11
  br label %return

return:                                           ; preds = %if.then53, %land.end.return_crit_edge, %land.rhs.i.i, %sw.bb39.return_crit_edge, %sw.bb35, %sw.bb31, %land.rhs.i, %fanotify_event_path.exit116.return_crit_edge, %if.end13.return_crit_edge, %lor.lhs.false9.return_crit_edge, %lor.lhs.false.return_crit_edge, %do.end.return_crit_edge
  %retval.0 = phi i1 [ %call38, %sw.bb35 ], [ %call34, %sw.bb31 ], [ false, %lor.lhs.false9.return_crit_edge ], [ false, %lor.lhs.false.return_crit_edge ], [ false, %do.end.return_crit_edge ], [ false, %if.end13.return_crit_edge ], [ false, %if.then53 ], [ false, %land.end.return_crit_edge ], [ false, %fanotify_event_path.exit116.return_crit_edge ], [ %cmp3.i, %land.rhs.i ], [ false, %sw.bb39.return_crit_edge ], [ %cmp7.i.i, %land.rhs.i.i ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @fanotify_fid_event_equal(ptr noundef %ffe1, ptr noundef %ffe2) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.fanotify_fid_event, ptr %ffe1, i32 0, i32 2
  %len = getelementptr inbounds %struct.fanotify_fid_event, ptr %ffe1, i32 0, i32 2, i32 0, i32 1
  %1 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %fsid = getelementptr inbounds %struct.fanotify_fid_event, ptr %ffe1, i32 0, i32 1
  %fsid1 = getelementptr inbounds %struct.fanotify_fid_event, ptr %ffe2, i32 0, i32 1
  %3 = ptrtoint ptr %fsid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fsid, align 4
  %5 = ptrtoint ptr %fsid1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fsid1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp.i = icmp eq i32 %4, %6
  br i1 %cmp.i, label %fanotify_fsid_equal.exit, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

fanotify_fsid_equal.exit:                         ; preds = %if.end
  %arrayidx4.i = getelementptr %struct.fanotify_fid_event, ptr %ffe1, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr %struct.fanotify_fid_event, ptr %ffe2, i32 0, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp7.i = icmp eq i32 %8, %10
  br i1 %cmp7.i, label %land.rhs, label %fanotify_fsid_equal.exit.return_crit_edge

fanotify_fsid_equal.exit.return_crit_edge:        ; preds = %fanotify_fsid_equal.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

land.rhs:                                         ; preds = %fanotify_fsid_equal.exit
  %11 = getelementptr inbounds %struct.fanotify_fid_event, ptr %ffe2, i32 0, i32 2
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %0, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %11, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %15)
  %cmp.not.i = icmp eq i8 %13, %15
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %land.rhs.return_crit_edge

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false.i:                                  ; preds = %land.rhs
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %len, align 1
  %len5.i = getelementptr inbounds %struct.fanotify_fid_event, ptr %ffe2, i32 0, i32 2, i32 0, i32 1
  %18 = ptrtoint ptr %len5.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %len5.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %19)
  %cmp7.not.i = icmp eq i8 %17, %19
  br i1 %cmp7.not.i, label %if.end.i, label %lor.lhs.false.i.return_crit_edge

lor.lhs.false.i.return_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i, label %if.end.i.return_crit_edge, label %lor.rhs.i

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.rhs.i:                                        ; preds = %if.end.i
  %flags.i.i.i = getelementptr inbounds %struct.fanotify_fid_event, ptr %ffe1, i32 0, i32 2, i32 0, i32 2
  %20 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %flags.i.i.i, align 2
  %22 = and i8 %21, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.i.not.i.i = icmp eq i8 %22, 0
  %buf.i.i = getelementptr inbounds %struct.fanotify_fid_event, ptr %ffe1, i32 0, i32 2, i32 1
  br i1 %tobool.i.not.i.i, label %lor.rhs.i.fanotify_fh_buf.exit.i_crit_edge, label %cond.true.i.i

lor.rhs.i.fanotify_fh_buf.exit.i_crit_edge:       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fanotify_fh_buf.exit.i

cond.true.i.i:                                    ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %buf.i.i to i32
  %add.i.i.i.i = add i32 %23, 3
  %and.i.i.i.i = and i32 %add.i.i.i.i, -4
  %24 = inttoptr i32 %and.i.i.i.i to ptr
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  br label %fanotify_fh_buf.exit.i

fanotify_fh_buf.exit.i:                           ; preds = %cond.true.i.i, %lor.rhs.i.fanotify_fh_buf.exit.i_crit_edge
  %cond.i.i = phi ptr [ %26, %cond.true.i.i ], [ %buf.i.i, %lor.rhs.i.fanotify_fh_buf.exit.i_crit_edge ]
  %flags.i.i21.i = getelementptr inbounds %struct.fanotify_fid_event, ptr %ffe2, i32 0, i32 2, i32 0, i32 2
  %27 = ptrtoint ptr %flags.i.i21.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %flags.i.i21.i, align 2
  %29 = and i8 %28, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.i.not.i22.i = icmp eq i8 %29, 0
  %buf.i23.i = getelementptr inbounds %struct.fanotify_fid_event, ptr %ffe2, i32 0, i32 2, i32 1
  br i1 %tobool.i.not.i22.i, label %fanotify_fh_buf.exit.i.fanotify_fh_buf.exit28.i_crit_edge, label %cond.true.i26.i

fanotify_fh_buf.exit.i.fanotify_fh_buf.exit28.i_crit_edge: ; preds = %fanotify_fh_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fanotify_fh_buf.exit28.i

cond.true.i26.i:                                  ; preds = %fanotify_fh_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %buf.i23.i to i32
  %add.i.i.i24.i = add i32 %30, 3
  %and.i.i.i25.i = and i32 %add.i.i.i24.i, -4
  %31 = inttoptr i32 %and.i.i.i25.i to ptr
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  br label %fanotify_fh_buf.exit28.i

fanotify_fh_buf.exit28.i:                         ; preds = %cond.true.i26.i, %fanotify_fh_buf.exit.i.fanotify_fh_buf.exit28.i_crit_edge
  %cond.i27.i = phi ptr [ %33, %cond.true.i26.i ], [ %buf.i23.i, %fanotify_fh_buf.exit.i.fanotify_fh_buf.exit28.i_crit_edge ]
  %conv12.i = zext i8 %17 to i32
  %bcmp.i = tail call i32 @bcmp(ptr %cond.i.i, ptr %cond.i27.i, i32 %conv12.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool14.not.i = icmp eq i32 %bcmp.i, 0
  br label %return

return:                                           ; preds = %fanotify_fh_buf.exit28.i, %if.end.i.return_crit_edge, %lor.lhs.false.i.return_crit_edge, %land.rhs.return_crit_edge, %fanotify_fsid_equal.exit.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ false, %fanotify_fsid_equal.exit.return_crit_edge ], [ false, %lor.lhs.false.i.return_crit_edge ], [ false, %land.rhs.return_crit_edge ], [ true, %if.end.i.return_crit_edge ], [ %tobool14.not.i, %fanotify_fh_buf.exit28.i ], [ false, %if.end.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @fanotify_name_event_equal(ptr noundef %fne1, ptr noundef %fne2) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.fanotify_name_event, ptr %fne1, i32 0, i32 2
  %info3 = getelementptr inbounds %struct.fanotify_name_event, ptr %fne2, i32 0, i32 2
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %info, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %fsid = getelementptr inbounds %struct.fanotify_name_event, ptr %fne1, i32 0, i32 1
  %fsid4 = getelementptr inbounds %struct.fanotify_name_event, ptr %fne2, i32 0, i32 1
  %2 = ptrtoint ptr %fsid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fsid, align 4
  %4 = ptrtoint ptr %fsid4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fsid4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.i = icmp eq i32 %3, %5
  br i1 %cmp.i, label %fanotify_fsid_equal.exit, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

fanotify_fsid_equal.exit:                         ; preds = %if.end
  %arrayidx4.i = getelementptr %struct.fanotify_name_event, ptr %fne1, i32 0, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr %struct.fanotify_name_event, ptr %fne2, i32 0, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp7.i = icmp eq i32 %7, %9
  br i1 %cmp7.i, label %if.end6, label %fanotify_fsid_equal.exit.cleanup_crit_edge

fanotify_fsid_equal.exit.cleanup_crit_edge:       ; preds = %fanotify_fsid_equal.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %fanotify_fsid_equal.exit
  %10 = ptrtoint ptr %info3 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %info3, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %11)
  %cmp.not.i = icmp eq i8 %1, %11
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end6
  %dir2_fh_totlen.i = getelementptr inbounds %struct.fanotify_name_event, ptr %fne1, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %dir2_fh_totlen.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %dir2_fh_totlen.i, align 1
  %dir2_fh_totlen5.i = getelementptr inbounds %struct.fanotify_name_event, ptr %fne2, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %dir2_fh_totlen5.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %dir2_fh_totlen5.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %15)
  %cmp7.not.i = icmp eq i8 %13, %15
  br i1 %cmp7.not.i, label %lor.lhs.false9.i, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false9.i:                                 ; preds = %lor.lhs.false.i
  %file_fh_totlen.i = getelementptr inbounds %struct.fanotify_name_event, ptr %fne1, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %file_fh_totlen.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %file_fh_totlen.i, align 2
  %file_fh_totlen11.i = getelementptr inbounds %struct.fanotify_name_event, ptr %fne2, i32 0, i32 2, i32 2
  %18 = ptrtoint ptr %file_fh_totlen11.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %file_fh_totlen11.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %19)
  %cmp13.not.i = icmp eq i8 %17, %19
  br i1 %cmp13.not.i, label %lor.lhs.false15.i, label %lor.lhs.false9.i.cleanup_crit_edge

lor.lhs.false9.i.cleanup_crit_edge:               ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false15.i:                                ; preds = %lor.lhs.false9.i
  %name_len.i = getelementptr inbounds %struct.fanotify_name_event, ptr %fne1, i32 0, i32 2, i32 3
  %20 = ptrtoint ptr %name_len.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %name_len.i, align 1
  %name_len17.i = getelementptr inbounds %struct.fanotify_name_event, ptr %fne2, i32 0, i32 2, i32 3
  %22 = ptrtoint ptr %name_len17.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %name_len17.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %23)
  %cmp19.not.i = icmp eq i8 %21, %23
  br i1 %cmp19.not.i, label %lor.lhs.false21.i, label %lor.lhs.false15.i.cleanup_crit_edge

lor.lhs.false15.i.cleanup_crit_edge:              ; preds = %lor.lhs.false15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false21.i:                                ; preds = %lor.lhs.false15.i
  %name2_len.i = getelementptr inbounds %struct.fanotify_name_event, ptr %fne1, i32 0, i32 2, i32 4
  %24 = ptrtoint ptr %name2_len.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %name2_len.i, align 4
  %name2_len23.i = getelementptr inbounds %struct.fanotify_name_event, ptr %fne2, i32 0, i32 2, i32 4
  %26 = ptrtoint ptr %name2_len23.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %name2_len23.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %27)
  %cmp25.not.i = icmp eq i8 %25, %27
  br i1 %cmp25.not.i, label %land.lhs.true.i, label %lor.lhs.false21.i.cleanup_crit_edge

lor.lhs.false21.i.cleanup_crit_edge:              ; preds = %lor.lhs.false21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.i:                                  ; preds = %lor.lhs.false21.i
  %buf.i.i = getelementptr inbounds %struct.fanotify_name_event, ptr %fne1, i32 1
  %buf.i97.i = getelementptr inbounds %struct.fanotify_name_event, ptr %fne2, i32 1
  %28 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %buf.i.i, align 4
  %30 = ptrtoint ptr %buf.i97.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %buf.i97.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %31)
  %cmp.not.i49 = icmp eq i8 %29, %31
  br i1 %cmp.not.i49, label %lor.lhs.false.i53, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false.i53:                                ; preds = %land.lhs.true.i
  %len.i50 = getelementptr inbounds %struct.fanotify_fh, ptr %buf.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %len.i50 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %len.i50, align 1
  %len5.i51 = getelementptr inbounds %struct.fanotify_fh, ptr %buf.i97.i, i32 0, i32 1
  %34 = ptrtoint ptr %len5.i51 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %len5.i51, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %33, i8 %35)
  %cmp7.not.i52 = icmp eq i8 %33, %35
  br i1 %cmp7.not.i52, label %if.end.i55, label %lor.lhs.false.i53.cleanup_crit_edge

lor.lhs.false.i53.cleanup_crit_edge:              ; preds = %lor.lhs.false.i53
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i55:                                       ; preds = %lor.lhs.false.i53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i54 = icmp eq i8 %33, 0
  br i1 %tobool.not.i54, label %if.end.i55.if.end32.i_crit_edge, label %lor.rhs.i59

if.end.i55.if.end32.i_crit_edge:                  ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i

lor.rhs.i59:                                      ; preds = %if.end.i55
  %flags.i.i.i56 = getelementptr inbounds %struct.fanotify_fh, ptr %buf.i.i, i32 0, i32 2
  %36 = ptrtoint ptr %flags.i.i.i56 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %flags.i.i.i56, align 2
  %38 = and i8 %37, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.i.not.i.i57 = icmp eq i8 %38, 0
  %buf.i.i58 = getelementptr inbounds %struct.fanotify_name_event, ptr %fne1, i32 1, i32 0, i32 0, i32 0, i32 1
  br i1 %tobool.i.not.i.i57, label %lor.rhs.i59.fanotify_fh_buf.exit.i67_crit_edge, label %cond.true.i.i62

lor.rhs.i59.fanotify_fh_buf.exit.i67_crit_edge:   ; preds = %lor.rhs.i59
  call void @__sanitizer_cov_trace_pc() #13
  br label %fanotify_fh_buf.exit.i67

cond.true.i.i62:                                  ; preds = %lor.rhs.i59
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %buf.i.i58 to i32
  %add.i.i.i.i60 = add i32 %39, 3
  %and.i.i.i.i61 = and i32 %add.i.i.i.i60, -4
  %40 = inttoptr i32 %and.i.i.i.i61 to ptr
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  br label %fanotify_fh_buf.exit.i67

fanotify_fh_buf.exit.i67:                         ; preds = %cond.true.i.i62, %lor.rhs.i59.fanotify_fh_buf.exit.i67_crit_edge
  %cond.i.i63 = phi ptr [ %42, %cond.true.i.i62 ], [ %buf.i.i58, %lor.rhs.i59.fanotify_fh_buf.exit.i67_crit_edge ]
  %flags.i.i21.i64 = getelementptr inbounds %struct.fanotify_fh, ptr %buf.i97.i, i32 0, i32 2
  %43 = ptrtoint ptr %flags.i.i21.i64 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %flags.i.i21.i64, align 2
  %45 = and i8 %44, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.i.not.i22.i65 = icmp eq i8 %45, 0
  %buf.i23.i66 = getelementptr inbounds %struct.fanotify_name_event, ptr %fne2, i32 1, i32 0, i32 0, i32 0, i32 1
  br i1 %tobool.i.not.i22.i65, label %fanotify_fh_buf.exit.i67.fanotify_fh_equal.exit77_crit_edge, label %cond.true.i26.i70

fanotify_fh_buf.exit.i67.fanotify_fh_equal.exit77_crit_edge: ; preds = %fanotify_fh_buf.exit.i67
  call void @__sanitizer_cov_trace_pc() #13
  br label %fanotify_fh_equal.exit77

cond.true.i26.i70:                                ; preds = %fanotify_fh_buf.exit.i67
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %buf.i23.i66 to i32
  %add.i.i.i24.i68 = add i32 %46, 3
  %and.i.i.i25.i69 = and i32 %add.i.i.i24.i68, -4
  %47 = inttoptr i32 %and.i.i.i25.i69 to ptr
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  br label %fanotify_fh_equal.exit77

fanotify_fh_equal.exit77:                         ; preds = %cond.true.i26.i70, %fanotify_fh_buf.exit.i67.fanotify_fh_equal.exit77_crit_edge
  %cond.i27.i71 = phi ptr [ %49, %cond.true.i26.i70 ], [ %buf.i23.i66, %fanotify_fh_buf.exit.i67.fanotify_fh_equal.exit77_crit_edge ]
  %conv12.i72 = zext i8 %33 to i32
  %bcmp.i73 = tail call i32 @bcmp(ptr %cond.i.i63, ptr %cond.i27.i71, i32 %conv12.i72) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i73)
  %tobool14.not.i74 = icmp eq i32 %bcmp.i73, 0
  br i1 %tobool14.not.i74, label %fanotify_fh_equal.exit77.if.end32.i_crit_edge, label %fanotify_fh_equal.exit77.cleanup_crit_edge

fanotify_fh_equal.exit77.cleanup_crit_edge:       ; preds = %fanotify_fh_equal.exit77
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

fanotify_fh_equal.exit77.if.end32.i_crit_edge:    ; preds = %fanotify_fh_equal.exit77
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i

if.end32.i:                                       ; preds = %fanotify_fh_equal.exit77.if.end32.i_crit_edge, %if.end.i55.if.end32.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool35.not.i = icmp eq i8 %13, 0
  br i1 %tobool35.not.i, label %if.end32.i.if.end41.i_crit_edge, label %land.lhs.true36.i

if.end32.i.if.end41.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41.i

land.lhs.true36.i:                                ; preds = %if.end32.i
  %conv.i.i = zext i8 %1 to i32
  %add.ptr.i.i = getelementptr i8, ptr %buf.i.i, i32 %conv.i.i
  %add.ptr.i101.i = getelementptr i8, ptr %buf.i97.i, i32 %conv.i.i
  %50 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %add.ptr.i.i, align 4
  %52 = ptrtoint ptr %add.ptr.i101.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %add.ptr.i101.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %51, i8 %53)
  %cmp.not.i20 = icmp eq i8 %51, %53
  br i1 %cmp.not.i20, label %lor.lhs.false.i24, label %land.lhs.true36.i.cleanup_crit_edge

land.lhs.true36.i.cleanup_crit_edge:              ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false.i24:                                ; preds = %land.lhs.true36.i
  %len.i21 = getelementptr inbounds %struct.fanotify_fh, ptr %add.ptr.i.i, i32 0, i32 1
  %54 = ptrtoint ptr %len.i21 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %len.i21, align 1
  %len5.i22 = getelementptr inbounds %struct.fanotify_fh, ptr %add.ptr.i101.i, i32 0, i32 1
  %56 = ptrtoint ptr %len5.i22 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %len5.i22, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %55, i8 %57)
  %cmp7.not.i23 = icmp eq i8 %55, %57
  br i1 %cmp7.not.i23, label %if.end.i26, label %lor.lhs.false.i24.cleanup_crit_edge

lor.lhs.false.i24.cleanup_crit_edge:              ; preds = %lor.lhs.false.i24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i26:                                       ; preds = %lor.lhs.false.i24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.not.i25 = icmp eq i8 %55, 0
  br i1 %tobool.not.i25, label %if.end.i26.if.end41.i_crit_edge, label %lor.rhs.i30

if.end.i26.if.end41.i_crit_edge:                  ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41.i

lor.rhs.i30:                                      ; preds = %if.end.i26
  %flags.i.i.i27 = getelementptr inbounds %struct.fanotify_fh, ptr %add.ptr.i.i, i32 0, i32 2
  %58 = ptrtoint ptr %flags.i.i.i27 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %flags.i.i.i27, align 2
  %60 = and i8 %59, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool.i.not.i.i28 = icmp eq i8 %60, 0
  %buf.i.i29 = getelementptr inbounds %struct.fanotify_fh, ptr %add.ptr.i.i, i32 0, i32 4
  br i1 %tobool.i.not.i.i28, label %lor.rhs.i30.fanotify_fh_buf.exit.i38_crit_edge, label %cond.true.i.i33

lor.rhs.i30.fanotify_fh_buf.exit.i38_crit_edge:   ; preds = %lor.rhs.i30
  call void @__sanitizer_cov_trace_pc() #13
  br label %fanotify_fh_buf.exit.i38

cond.true.i.i33:                                  ; preds = %lor.rhs.i30
  call void @__sanitizer_cov_trace_pc() #13
  %61 = ptrtoint ptr %buf.i.i29 to i32
  %add.i.i.i.i31 = add i32 %61, 3
  %and.i.i.i.i32 = and i32 %add.i.i.i.i31, -4
  %62 = inttoptr i32 %and.i.i.i.i32 to ptr
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  br label %fanotify_fh_buf.exit.i38

fanotify_fh_buf.exit.i38:                         ; preds = %cond.true.i.i33, %lor.rhs.i30.fanotify_fh_buf.exit.i38_crit_edge
  %cond.i.i34 = phi ptr [ %64, %cond.true.i.i33 ], [ %buf.i.i29, %lor.rhs.i30.fanotify_fh_buf.exit.i38_crit_edge ]
  %flags.i.i21.i35 = getelementptr inbounds %struct.fanotify_fh, ptr %add.ptr.i101.i, i32 0, i32 2
  %65 = ptrtoint ptr %flags.i.i21.i35 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %flags.i.i21.i35, align 2
  %67 = and i8 %66, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool.i.not.i22.i36 = icmp eq i8 %67, 0
  %buf.i23.i37 = getelementptr inbounds %struct.fanotify_fh, ptr %add.ptr.i101.i, i32 0, i32 4
  br i1 %tobool.i.not.i22.i36, label %fanotify_fh_buf.exit.i38.fanotify_fh_equal.exit48_crit_edge, label %cond.true.i26.i41

fanotify_fh_buf.exit.i38.fanotify_fh_equal.exit48_crit_edge: ; preds = %fanotify_fh_buf.exit.i38
  call void @__sanitizer_cov_trace_pc() #13
  br label %fanotify_fh_equal.exit48

cond.true.i26.i41:                                ; preds = %fanotify_fh_buf.exit.i38
  call void @__sanitizer_cov_trace_pc() #13
  %68 = ptrtoint ptr %buf.i23.i37 to i32
  %add.i.i.i24.i39 = add i32 %68, 3
  %and.i.i.i25.i40 = and i32 %add.i.i.i24.i39, -4
  %69 = inttoptr i32 %and.i.i.i25.i40 to ptr
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  br label %fanotify_fh_equal.exit48

fanotify_fh_equal.exit48:                         ; preds = %cond.true.i26.i41, %fanotify_fh_buf.exit.i38.fanotify_fh_equal.exit48_crit_edge
  %cond.i27.i42 = phi ptr [ %71, %cond.true.i26.i41 ], [ %buf.i23.i37, %fanotify_fh_buf.exit.i38.fanotify_fh_equal.exit48_crit_edge ]
  %conv12.i43 = zext i8 %55 to i32
  %bcmp.i44 = tail call i32 @bcmp(ptr %cond.i.i34, ptr %cond.i27.i42, i32 %conv12.i43) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i44)
  %tobool14.not.i45 = icmp eq i32 %bcmp.i44, 0
  br i1 %tobool14.not.i45, label %fanotify_fh_equal.exit48.if.end41.i_crit_edge, label %fanotify_fh_equal.exit48.cleanup_crit_edge

fanotify_fh_equal.exit48.cleanup_crit_edge:       ; preds = %fanotify_fh_equal.exit48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

fanotify_fh_equal.exit48.if.end41.i_crit_edge:    ; preds = %fanotify_fh_equal.exit48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41.i

if.end41.i:                                       ; preds = %fanotify_fh_equal.exit48.if.end41.i_crit_edge, %if.end.i26.if.end41.i_crit_edge, %if.end32.i.if.end41.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool44.not.i = icmp eq i8 %17, 0
  br i1 %tobool44.not.i, label %if.end41.i.if.end50.i_crit_edge, label %land.lhs.true45.i

if.end41.i.if.end50.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50.i

land.lhs.true45.i:                                ; preds = %if.end41.i
  %conv.i103.i = zext i8 %1 to i32
  %conv1.i.i = zext i8 %13 to i32
  %add2.i.i = add nuw nsw i32 %conv1.i.i, %conv.i103.i
  %add.ptr.i104.i = getelementptr i8, ptr %buf.i.i, i32 %add2.i.i
  %add.ptr.i110.i = getelementptr i8, ptr %buf.i97.i, i32 %add2.i.i
  %72 = ptrtoint ptr %add.ptr.i104.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %add.ptr.i104.i, align 4
  %74 = ptrtoint ptr %add.ptr.i110.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %add.ptr.i110.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %73, i8 %75)
  %cmp.not.i12 = icmp eq i8 %73, %75
  br i1 %cmp.not.i12, label %lor.lhs.false.i14, label %land.lhs.true45.i.cleanup_crit_edge

land.lhs.true45.i.cleanup_crit_edge:              ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false.i14:                                ; preds = %land.lhs.true45.i
  %len.i = getelementptr inbounds %struct.fanotify_fh, ptr %add.ptr.i104.i, i32 0, i32 1
  %76 = ptrtoint ptr %len.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %len.i, align 1
  %len5.i = getelementptr inbounds %struct.fanotify_fh, ptr %add.ptr.i110.i, i32 0, i32 1
  %78 = ptrtoint ptr %len5.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %len5.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %77, i8 %79)
  %cmp7.not.i13 = icmp eq i8 %77, %79
  br i1 %cmp7.not.i13, label %if.end.i16, label %lor.lhs.false.i14.cleanup_crit_edge

lor.lhs.false.i14.cleanup_crit_edge:              ; preds = %lor.lhs.false.i14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i16:                                       ; preds = %lor.lhs.false.i14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool.not.i15 = icmp eq i8 %77, 0
  br i1 %tobool.not.i15, label %if.end.i16.if.end50.i_crit_edge, label %lor.rhs.i

if.end.i16.if.end50.i_crit_edge:                  ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50.i

lor.rhs.i:                                        ; preds = %if.end.i16
  %flags.i.i.i = getelementptr inbounds %struct.fanotify_fh, ptr %add.ptr.i104.i, i32 0, i32 2
  %80 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %flags.i.i.i, align 2
  %82 = and i8 %81, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool.i.not.i.i = icmp eq i8 %82, 0
  %buf.i.i17 = getelementptr inbounds %struct.fanotify_fh, ptr %add.ptr.i104.i, i32 0, i32 4
  br i1 %tobool.i.not.i.i, label %lor.rhs.i.fanotify_fh_buf.exit.i_crit_edge, label %cond.true.i.i

lor.rhs.i.fanotify_fh_buf.exit.i_crit_edge:       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fanotify_fh_buf.exit.i

cond.true.i.i:                                    ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  %83 = ptrtoint ptr %buf.i.i17 to i32
  %add.i.i.i.i = add i32 %83, 3
  %and.i.i.i.i = and i32 %add.i.i.i.i, -4
  %84 = inttoptr i32 %and.i.i.i.i to ptr
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %84, align 4
  br label %fanotify_fh_buf.exit.i

fanotify_fh_buf.exit.i:                           ; preds = %cond.true.i.i, %lor.rhs.i.fanotify_fh_buf.exit.i_crit_edge
  %cond.i.i = phi ptr [ %86, %cond.true.i.i ], [ %buf.i.i17, %lor.rhs.i.fanotify_fh_buf.exit.i_crit_edge ]
  %flags.i.i21.i = getelementptr inbounds %struct.fanotify_fh, ptr %add.ptr.i110.i, i32 0, i32 2
  %87 = ptrtoint ptr %flags.i.i21.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %flags.i.i21.i, align 2
  %89 = and i8 %88, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool.i.not.i22.i = icmp eq i8 %89, 0
  %buf.i23.i = getelementptr inbounds %struct.fanotify_fh, ptr %add.ptr.i110.i, i32 0, i32 4
  br i1 %tobool.i.not.i22.i, label %fanotify_fh_buf.exit.i.fanotify_fh_equal.exit_crit_edge, label %cond.true.i26.i

fanotify_fh_buf.exit.i.fanotify_fh_equal.exit_crit_edge: ; preds = %fanotify_fh_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fanotify_fh_equal.exit

cond.true.i26.i:                                  ; preds = %fanotify_fh_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %90 = ptrtoint ptr %buf.i23.i to i32
  %add.i.i.i24.i = add i32 %90, 3
  %and.i.i.i25.i = and i32 %add.i.i.i24.i, -4
  %91 = inttoptr i32 %and.i.i.i25.i to ptr
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %91, align 4
  br label %fanotify_fh_equal.exit

fanotify_fh_equal.exit:                           ; preds = %cond.true.i26.i, %fanotify_fh_buf.exit.i.fanotify_fh_equal.exit_crit_edge
  %cond.i27.i = phi ptr [ %93, %cond.true.i26.i ], [ %buf.i23.i, %fanotify_fh_buf.exit.i.fanotify_fh_equal.exit_crit_edge ]
  %conv12.i = zext i8 %77 to i32
  %bcmp.i18 = tail call i32 @bcmp(ptr %cond.i.i, ptr %cond.i27.i, i32 %conv12.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i18)
  %tobool14.not.i = icmp eq i32 %bcmp.i18, 0
  br i1 %tobool14.not.i, label %fanotify_fh_equal.exit.if.end50.i_crit_edge, label %fanotify_fh_equal.exit.cleanup_crit_edge

fanotify_fh_equal.exit.cleanup_crit_edge:         ; preds = %fanotify_fh_equal.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

fanotify_fh_equal.exit.if.end50.i_crit_edge:      ; preds = %fanotify_fh_equal.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50.i

if.end50.i:                                       ; preds = %fanotify_fh_equal.exit.if.end50.i_crit_edge, %if.end.i16.if.end50.i_crit_edge, %if.end41.i.if.end50.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool53.not.i = icmp eq i8 %21, 0
  br i1 %tobool53.not.i, label %if.end50.i.if.end62.i_crit_edge, label %fanotify_info_name.exit.i

if.end50.i.if.end62.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62.i

fanotify_info_name.exit.i:                        ; preds = %if.end50.i
  %conv.i112.i = zext i8 %1 to i32
  %conv1.i114.i = zext i8 %13 to i32
  %add2.i115.i = add nuw nsw i32 %conv1.i114.i, %conv.i112.i
  %conv3.i.i = zext i8 %17 to i32
  %add4.i.i = add nuw nsw i32 %add2.i115.i, %conv3.i.i
  %add.ptr.i116.i = getelementptr i8, ptr %buf.i.i, i32 %add4.i.i
  %add.ptr.i127.i = getelementptr i8, ptr %buf.i97.i, i32 %add4.i.i
  %conv58.i = zext i8 %21 to i32
  %bcmp96.i = tail call i32 @bcmp(ptr %add.ptr.i116.i, ptr %add.ptr.i127.i, i32 %conv58.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp96.i)
  %tobool60.not.i = icmp eq i32 %bcmp96.i, 0
  br i1 %tobool60.not.i, label %fanotify_info_name.exit.i.if.end62.i_crit_edge, label %fanotify_info_name.exit.i.cleanup_crit_edge

fanotify_info_name.exit.i.cleanup_crit_edge:      ; preds = %fanotify_info_name.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

fanotify_info_name.exit.i.if.end62.i_crit_edge:   ; preds = %fanotify_info_name.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62.i

if.end62.i:                                       ; preds = %fanotify_info_name.exit.i.if.end62.i_crit_edge, %if.end50.i.if.end62.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool64.not.i = icmp eq i8 %25, 0
  br i1 %tobool64.not.i, label %if.end62.i.cleanup_crit_edge, label %fanotify_info_name2.exit161.i

if.end62.i.cleanup_crit_edge:                     ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

fanotify_info_name2.exit161.i:                    ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i133.i = zext i8 %1 to i32
  %conv1.i135.i = zext i8 %13 to i32
  %conv3.i137.i = zext i8 %17 to i32
  %conv5.i.i = zext i8 %21 to i32
  %add6.i.i = add nuw nsw i32 %conv.i133.i, 1
  %add2.i139.i = add nuw nsw i32 %add6.i.i, %conv1.i135.i
  %add4.i140.i = add nuw nsw i32 %add2.i139.i, %conv3.i137.i
  %add7.i.i = add nuw nsw i32 %add4.i140.i, %conv5.i.i
  %add.ptr.i141.i = getelementptr i8, ptr %buf.i.i, i32 %add7.i.i
  %add.ptr.i158.i = getelementptr i8, ptr %buf.i97.i, i32 %add7.i.i
  %conv68.i = zext i8 %25 to i32
  %bcmp.i = tail call i32 @bcmp(ptr %add.ptr.i141.i, ptr %add.ptr.i158.i, i32 %conv68.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool70.not.i = icmp eq i32 %bcmp.i, 0
  br label %cleanup

cleanup:                                          ; preds = %fanotify_info_name2.exit161.i, %if.end62.i.cleanup_crit_edge, %fanotify_info_name.exit.i.cleanup_crit_edge, %fanotify_fh_equal.exit.cleanup_crit_edge, %lor.lhs.false.i14.cleanup_crit_edge, %land.lhs.true45.i.cleanup_crit_edge, %fanotify_fh_equal.exit48.cleanup_crit_edge, %lor.lhs.false.i24.cleanup_crit_edge, %land.lhs.true36.i.cleanup_crit_edge, %fanotify_fh_equal.exit77.cleanup_crit_edge, %lor.lhs.false.i53.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %lor.lhs.false21.i.cleanup_crit_edge, %lor.lhs.false15.i.cleanup_crit_edge, %lor.lhs.false9.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %fanotify_fsid_equal.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %fanotify_fsid_equal.exit.cleanup_crit_edge ], [ false, %lor.lhs.false21.i.cleanup_crit_edge ], [ false, %lor.lhs.false15.i.cleanup_crit_edge ], [ false, %lor.lhs.false9.i.cleanup_crit_edge ], [ false, %lor.lhs.false.i.cleanup_crit_edge ], [ false, %if.end6.cleanup_crit_edge ], [ false, %fanotify_fh_equal.exit77.cleanup_crit_edge ], [ false, %fanotify_fh_equal.exit48.cleanup_crit_edge ], [ false, %fanotify_fh_equal.exit.cleanup_crit_edge ], [ false, %fanotify_info_name.exit.i.cleanup_crit_edge ], [ true, %if.end62.i.cleanup_crit_edge ], [ %tobool70.not.i, %fanotify_info_name2.exit161.i ], [ false, %if.end.cleanup_crit_edge ], [ false, %lor.lhs.false.i53.cleanup_crit_edge ], [ false, %land.lhs.true.i.cleanup_crit_edge ], [ false, %lor.lhs.false.i24.cleanup_crit_edge ], [ false, %land.lhs.true36.i.cleanup_crit_edge ], [ false, %lor.lhs.false.i14.cleanup_crit_edge ], [ false, %land.lhs.true45.i.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsnotify_remove_queued_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dec_ucount(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nobuiltin nounwind }
attributes #16 = { nounwind readonly willreturn }
attributes #17 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !31, !32, !33, !35, !36, !38, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !64, !65, !67, !68, !69, !71, !73, !74, !76, !77, !78, !80, !82, !83}
!llvm.named.register.sp = !{!85}
!llvm.module.flags = !{!86, !87, !88, !89, !90, !91, !92, !93}
!llvm.ident = !{!94}

!0 = !{ptr @fanotify_fsnotify_ops, !1, !"fanotify_fsnotify_ops", i1 false, i1 false}
!1 = !{!"../fs/notify/fanotify/fanotify.c", i32 1081, i32 27}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/notify/fanotify/fanotify.c", i32 940, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @fanotify_handle_event.__UNIQUE_ID_ddebug273, !3, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/notify/fanotify/fanotify.c", i32 306, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @fanotify_group_event_mask.__UNIQUE_ID_ddebug246, !9, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../fs/notify/fanotify/fanotify.c", i32 870, i32 7}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../fs/notify/fanotify/fanotify.c", i32 776, i32 8}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../fs/notify/fanotify/fanotify.c", i32 689, i32 6}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../fs/notify/fanotify/fanotify.c", i32 399, i32 6}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../fs/notify/fanotify/fanotify.c", i32 437, i32 20}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/notify/fanotify/fanotify.c", i32 473, i32 2}
!24 = !{ptr @fanotify_encode_fh._rs, !23, !"_rs", i1 false, i1 false}
!25 = !{ptr @__func__.fanotify_encode_fh, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @fanotify_encode_fh._entry, !23, !"_entry", i1 false, i1 false}
!28 = !{ptr @fanotify_encode_fh._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/notify/fanotify/fanotify.c", i32 664, i32 2}
!31 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @fanotify_alloc_name_event.__UNIQUE_ID_ddebug247, !30, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/notify/fanotify/fanotify.c", i32 669, i32 3}
!35 = !{ptr @fanotify_alloc_name_event.__UNIQUE_ID_ddebug248, !34, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../fs/notify/fanotify/fanotify.h", i32 183, i32 6}
!38 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../fs/notify/fanotify/fanotify.h", i32 184, i32 6}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../fs/notify/fanotify/fanotify.h", i32 185, i32 6}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../fs/notify/fanotify/fanotify.h", i32 186, i32 6}
!45 = distinct !{null, !46, !"__already_done", i1 false, i1 false}
!46 = !{!"../fs/notify/fanotify/fanotify.h", i32 195, i32 6}
!47 = distinct !{null, !48, !"__already_done", i1 false, i1 false}
!48 = !{!"../fs/notify/fanotify/fanotify.h", i32 196, i32 6}
!49 = distinct !{null, !50, !"__already_done", i1 false, i1 false}
!50 = !{!"../fs/notify/fanotify/fanotify.h", i32 197, i32 6}
!51 = distinct !{null, !52, !"__already_done", i1 false, i1 false}
!52 = !{!"../fs/notify/fanotify/fanotify.h", i32 206, i32 6}
!53 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!54 = !{!"../fs/notify/fanotify/fanotify.h", i32 207, i32 6}
!55 = distinct !{null, !56, !"__already_done", i1 false, i1 false}
!56 = !{!"../fs/notify/fanotify/fanotify.h", i32 216, i32 6}
!57 = distinct !{null, !58, !"__already_done", i1 false, i1 false}
!58 = !{!"../fs/notify/fanotify/fanotify.h", i32 217, i32 6}
!59 = distinct !{null, !60, !"__already_done", i1 false, i1 false}
!60 = !{!"../fs/notify/fanotify/fanotify.h", i32 227, i32 6}
!61 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/notify/fanotify/fanotify.c", i32 195, i32 2}
!63 = !{ptr @.str.20, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @fanotify_merge.__UNIQUE_ID_ddebug243, !62, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!65 = !{ptr @.str.21, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/notify/fanotify/fanotify.c", i32 139, i32 2}
!67 = !{ptr @.str.22, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @fanotify_should_merge.__UNIQUE_ID_ddebug242, !66, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!69 = distinct !{null, !70, !"__already_done", i1 false, i1 false}
!70 = !{!"../fs/notify/fanotify/fanotify.c", i32 177, i32 3}
!71 = !{ptr @.str.23, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/notify/fanotify/fanotify.c", i32 893, i32 2}
!73 = !{ptr @fanotify_insert_event.__UNIQUE_ID_ddebug250, !72, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!74 = !{ptr @.str.24, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/notify/fanotify/fanotify.c", i32 235, i32 2}
!76 = !{ptr @.str.25, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @fanotify_get_response.__UNIQUE_ID_ddebug244, !75, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!78 = distinct !{null, !79, !"__already_done", i1 false, i1 false}
!79 = !{!"../fs/notify/fanotify/fanotify.c", i32 253, i32 4}
!80 = !{ptr @.str.26, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/notify/fanotify/fanotify.c", i32 278, i32 2}
!82 = !{ptr @fanotify_get_response.__UNIQUE_ID_ddebug245, !81, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!83 = distinct !{null, !84, !"__already_done", i1 false, i1 false}
!84 = !{!"../fs/notify/fanotify/fanotify.c", i32 1065, i32 3}
!85 = !{!"sp"}
!86 = !{i32 1, !"wchar_size", i32 2}
!87 = !{i32 1, !"min_enum_size", i32 4}
!88 = !{i32 8, !"branch-target-enforcement", i32 0}
!89 = !{i32 8, !"sign-return-address", i32 0}
!90 = !{i32 8, !"sign-return-address-all", i32 0}
!91 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!92 = !{i32 7, !"uwtable", i32 1}
!93 = !{i32 7, !"frame-pointer", i32 2}
!94 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!95 = !{i64 2148774785, i64 2148774790, i64 2148774803, i64 2148774847, i64 2148774881, i64 2148774902}
!96 = !{!97}
!97 = distinct !{!97, !98, !"fanotify_get_fsid: %agg.result"}
!98 = distinct !{!98, !"fanotify_get_fsid"}
!99 = !{i64 2153813537}
!100 = !{!"branch_weights", i32 2000, i32 1}
!101 = !{i64 2153602284}
!102 = !{i64 2153619057}
!103 = !{i64 773055, i64 773116}
!104 = !{i64 775787}
!105 = !{!"branch_weights", i32 1, i32 2000}
!106 = !{i64 776072}
!107 = !{i64 2148310836, i64 2148310868, i64 2148310897, i64 2148310931, i64 2148310962, i64 2148310985}
!108 = !{i64 2153931216, i64 2153931710, i64 2153931253, i64 2153931309, i64 2153931343, i64 2153931367, i64 2153931408, i64 2153931429, i64 2153931457, i64 2153931491}
!109 = !{i64 2153815264, i64 2153815758, i64 2153815301, i64 2153815357, i64 2153815391, i64 2153815415, i64 2153815456, i64 2153815477, i64 2153815505, i64 2153815539}
!110 = !{i32 -2147483644, i32 133}
!111 = !{!"auto-init"}
