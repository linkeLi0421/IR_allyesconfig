; ModuleID = '/llk/IR_all_yes/fs/9p/v9fs.c_pt.bc'
source_filename = "../fs/9p/v9fs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.5 }
%union.anon.5 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.15, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.match_token = type { i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.kobj_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.80, %struct.list_head, %struct.list_head, %union.anon.81 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.lockref = type { %union.anon.78 }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { %struct.spinlock, i32 }
%union.anon.80 = type { %struct.list_head }
%union.anon.81 = type { %struct.hlist_node }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.v9fs_session_info = type { i8, i8, i16, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, ptr, %struct.list_head, %struct.rw_semaphore, i32 }
%struct.substring_t = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%struct.llist_node = type { ptr }
%union.anon.30 = type { i32 }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.37 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.37 = type { %struct.callback_head }
%struct.p9_client = type { %struct.spinlock, i32, i8, ptr, i32, ptr, ptr, %union.anon.82, %struct.idr, %struct.idr, [65 x i8] }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { i32, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.p9_fid = type { ptr, i32, %struct.refcount_struct, i32, %struct.p9_qid, i32, %struct.kuid_t, ptr, %struct.hlist_node, %struct.hlist_node }
%struct.p9_qid = type { i8, i32, i64 }
%struct.v9fs_inode = type { ptr, %struct.p9_qid, i32, ptr, %struct.mutex, %struct.inode }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.72, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.73, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.74, ptr, %struct.address_space, %struct.list_head, %union.anon.77, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.72 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.73 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.74 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.77 = type { ptr }

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c",debug=%x\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c",dfltuid=%u\00", [20 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c",dfltgid=%u\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c",afid=%u\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nobody\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c",uname=%s\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c",aname=%s\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c",nodevmap\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c",%s\00", [28 x i8] zeroinitializer }, align 32
@v9fs_cache_modes = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c",cachetag=%s\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c",access=user\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c",access=any\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c",access=client\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c",access=%u\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c",posixacl\00", [22 x i8] zeroinitializer }, align 32
@v9fs_session_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&v9ses->rename_sem\00", [45 x i8] zeroinitializer }, align 32
@__func__.v9fs_session_init = private unnamed_addr constant [18 x i8] c"v9fs_session_init\00", align 1
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"problem initializing 9p client\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cannot attach\0A\00", [17 x i8] zeroinitializer }, align 32
@v9fs_sessionlist_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.2 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.59, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@v9fs_sessionlist = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @v9fs_sessionlist, ptr @v9fs_sessionlist }, [24 x i8] zeroinitializer }, align 32
@__func__.v9fs_session_cancel = private unnamed_addr constant [20 x i8] c"v9fs_session_cancel\00", align 1
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cancel session %p\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.v9fs_session_begin_cancel = private unnamed_addr constant [26 x i8] c"v9fs_session_begin_cancel\00", align 1
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"begin cancel session %p\0A\00", [39 x i8] zeroinitializer }, align 32
@v9fs_fs_type = external dso_local global %struct.file_system_type, align 4
@__initcall__kmod_9p__272_731_init_v9fs6 = internal global ptr @init_v9fs, section ".initcall6.init", align 4
@__exitcall_exit_v9fs = internal global ptr @exit_v9fs, section ".exitcall.exit", align 4
@__UNIQUE_ID_author273 = internal constant [46 x i8] c"9p.author=Latchesar Ionkov <lucho@ionkov.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_author274 = internal constant [49 x i8] c"9p.author=Eric Van Hensbergen <ericvh@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author275 = internal constant [42 x i8] c"9p.author=Ron Minnich <rminnich@lanl.gov>\00", section ".modinfo", align 1
@__UNIQUE_ID_file276 = internal constant [17 x i8] c"9p.file=fs/9p/9p\00", section ".modinfo", align 1
@__UNIQUE_ID_license277 = internal constant [15 x i8] c"9p.license=GPL\00", section ".modinfo", align 1
@v9fs_inode_cache = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mmap\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"loose\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fscache\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@tokens = internal constant { [16 x %struct.match_token], [32 x i8] } { [16 x %struct.match_token] [%struct.match_token { i32 0, ptr @.str.42 }, %struct.match_token { i32 1, ptr @.str.43 }, %struct.match_token { i32 2, ptr @.str.44 }, %struct.match_token { i32 3, ptr @.str.45 }, %struct.match_token { i32 4, ptr @.str.46 }, %struct.match_token { i32 5, ptr @.str.47 }, %struct.match_token { i32 8, ptr @.str.48 }, %struct.match_token { i32 6, ptr @.str.49 }, %struct.match_token { i32 9, ptr @.str.23 }, %struct.match_token { i32 10, ptr @.str.24 }, %struct.match_token { i32 11, ptr @.str.22 }, %struct.match_token { i32 7, ptr @.str.50 }, %struct.match_token { i32 12, ptr @.str.51 }, %struct.match_token { i32 13, ptr @.str.52 }, %struct.match_token { i32 14, ptr @.str.53 }, %struct.match_token { i32 15, ptr null }], [32 x i8] zeroinitializer }, align 32
@__func__.v9fs_parse_options = private unnamed_addr constant [19 x i8] c"v9fs_parse_options\00", align 1
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"integer field, but no integer?\0A\00", [32 x i8] zeroinitializer }, align 32
@p9_debug_level = external dso_local local_unnamed_addr global i32, align 4
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"uid field, but not a uid?\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"gid field, but not a gid?\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"problem allocating copy of cache arg\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"problem allocating copy of access arg\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"user\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"any\00", [28 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"client\00", [25 x i8] zeroinitializer }, align 32
@v9fs_parse_options._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @__func__.v9fs_parse_options, ptr @.str.36, i32 330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\0169p: Unknown access argument %s: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fs/9p/v9fs.c\00", [19 x i8] zeroinitializer }, align 32
@v9fs_parse_options._entry_ptr = internal global ptr @v9fs_parse_options._entry, section ".printk_index", align 4
@v9fs_parse_options._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @__func__.v9fs_parse_options, ptr @.str.36, i32 337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\0169p: Unknown uid %s\0A\00", [42 x i8] zeroinitializer }, align 32
@v9fs_parse_options._entry_ptr.40 = internal global ptr @v9fs_parse_options._entry.38, section ".printk_index", align 4
@.str.41 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"locktimeout must be a greater than zero integer.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"debug=%x\00", [23 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dfltuid=%u\00", [21 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dfltgid=%u\00", [21 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"afid=%u\00", [24 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uname=%s\00", [23 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aname=%s\00", [23 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nodevmap\00", [23 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cache=%s\00", [23 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cachetag=%s\00", [20 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"access=%s\00", [22 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"posixacl\00", [23 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"locktimeout=%u\00", [17 x i8] zeroinitializer }, align 32
@__func__.get_cache_mode = private unnamed_addr constant [15 x i8] c"get_cache_mode\00", align 1
@.str.54 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Cache mode: loose\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Cache mode: fscache\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Cache mode: mmap\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Cache mode: none\0A\00", [46 x i8] zeroinitializer }, align 32
@get_cache_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @__func__.get_cache_mode, ptr @.str.36, i32 97, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\0169p: Unknown Cache mode %s\0A\00", [35 x i8] zeroinitializer }, align 32
@get_cache_mode._entry_ptr = internal global ptr @get_cache_mode._entry, section ".printk_index", align 4
@.str.59 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"v9fs_sessionlist_lock\00", [42 x i8] zeroinitializer }, align 32
@v9fs_kobj = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@v9fs_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @v9fs_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@v9fs_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @v9fs_attr_cache, ptr null], [24 x i8] zeroinitializer }, align 32
@v9fs_attr_cache = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.60, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @caches_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"caches\00", [25 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@init_v9fs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.36, i32 688, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\0169p: Installing v9fs 9p2000 file system support\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"init_v9fs\00", [22 x i8] zeroinitializer }, align 32
@init_v9fs._entry_ptr = internal global ptr @init_v9fs._entry, section ".printk_index", align 4
@init_v9fs._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.36, i32 693, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\0139p: Failed to register v9fs for caching\0A\00", [53 x i8] zeroinitializer }, align 32
@init_v9fs._entry_ptr.66 = internal global ptr @init_v9fs._entry.64, section ".printk_index", align 4
@init_v9fs._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.63, ptr @.str.36, i32 699, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\0139p: Failed to register with sysfs\0A\00", [59 x i8] zeroinitializer }, align 32
@init_v9fs._entry_ptr.69 = internal global ptr @init_v9fs._entry.67, section ".printk_index", align 4
@init_v9fs._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.63, ptr @.str.36, i32 704, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\0139p: Failed to register filesystem\0A\00", [59 x i8] zeroinitializer }, align 32
@init_v9fs._entry_ptr.72 = internal global ptr @init_v9fs._entry.70, section ".printk_index", align 4
@.str.73 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"v9fs_inode_cache\00", [47 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"9p\00", [29 x i8] zeroinitializer }, align 32
@fs_kobj = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 6]
@__sancov_gen_cov_switch_values.75 = internal global [17 x i64] [i64 15, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14]
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 109, i32 17 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 111, i32 17 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 114, i32 17 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 117, i32 17 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 118, i32 27 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 119, i32 17 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 120, i32 27 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 121, i32 17 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 123, i32 15 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 125, i32 17 }
@___asan_gen_.106 = private unnamed_addr constant [17 x i8] c"v9fs_cache_modes\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 72, i32 26 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 128, i32 17 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 133, i32 15 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 136, i32 15 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 139, i32 15 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 142, i32 17 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 148, i32 15 }
@___asan_gen_.127 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 402, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 411, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 461, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant [22 x i8] c"v9fs_sessionlist_lock\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [17 x i8] c"v9fs_sessionlist\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 28, i32 8 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 529, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 542, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant [17 x i8] c"v9fs_inode_cache\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 29, i32 20 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 73, i32 17 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 74, i32 17 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 75, i32 18 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 76, i32 20 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 189, i32 31 }
@___asan_gen_.169 = private unnamed_addr constant [7 x i8] c"tokens\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 53, i32 28 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 200, i32 5 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 221, i32 5 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 236, i32 5 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 293, i32 5 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 310, i32 5 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 316, i32 18 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 318, i32 23 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 320, i32 23 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 329, i32 6 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 337, i32 6 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 362, i32 5 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 54, i32 14 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 55, i32 16 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 56, i32 16 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 57, i32 13 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 58, i32 14 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 59, i32 19 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 60, i32 17 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 61, i32 14 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 65, i32 17 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 66, i32 15 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 67, i32 17 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 68, i32 20 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 86, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 89, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 92, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 95, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 97, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 27, i32 8 }
@___asan_gen_.271 = private unnamed_addr constant [10 x i8] c"v9fs_kobj\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 548, i32 24 }
@___asan_gen_.274 = private unnamed_addr constant [16 x i8] c"v9fs_attr_group\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 589, i32 37 }
@___asan_gen_.277 = private unnamed_addr constant [11 x i8] c"v9fs_attrs\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 582, i32 26 }
@___asan_gen_.280 = private unnamed_addr constant [16 x i8] c"v9fs_attr_cache\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 579, i32 30 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 579, i32 48 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 564, i32 29 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 688, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 693, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 699, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 704, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 639, i32 39 }
@___asan_gen_.319 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.320 = private constant [16 x i8] c"../fs/9p/v9fs.c\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 600, i32 37 }
@llvm.compiler.used = appending global [97 x ptr] [ptr @__UNIQUE_ID_author273, ptr @__UNIQUE_ID_author274, ptr @__UNIQUE_ID_author275, ptr @__UNIQUE_ID_file276, ptr @__UNIQUE_ID_license277, ptr @__exitcall_exit_v9fs, ptr @__initcall__kmod_9p__272_731_init_v9fs6, ptr @exit_v9fs, ptr @get_cache_mode._entry, ptr @get_cache_mode._entry_ptr, ptr @init_v9fs._entry, ptr @init_v9fs._entry.64, ptr @init_v9fs._entry.67, ptr @init_v9fs._entry.70, ptr @init_v9fs._entry_ptr, ptr @init_v9fs._entry_ptr.66, ptr @init_v9fs._entry_ptr.69, ptr @init_v9fs._entry_ptr.72, ptr @v9fs_parse_options._entry, ptr @v9fs_parse_options._entry.38, ptr @v9fs_parse_options._entry_ptr, ptr @v9fs_parse_options._entry_ptr.40, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @v9fs_cache_modes, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @v9fs_session_init.__key, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @v9fs_sessionlist_lock, ptr @v9fs_sessionlist, ptr @.str.19, ptr @.str.20, ptr @v9fs_inode_cache, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @tokens, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @v9fs_kobj, ptr @v9fs_attr_group, ptr @v9fs_attrs, ptr @v9fs_attr_cache, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.73, ptr @.str.74], section "llvm.metadata"
@0 = internal global [82 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v9fs_cache_modes to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v9fs_session_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v9fs_sessionlist_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v9fs_sessionlist to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v9fs_inode_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tokens to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v9fs_parse_options._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v9fs_parse_options._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_cache_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v9fs_kobj to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v9fs_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v9fs_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v9fs_attr_cache to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_v9fs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_v9fs._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_v9fs._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_v9fs._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @v9fs_show_options(ptr noundef %m, ptr nocapture noundef readonly %root) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %root, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %debug = getelementptr inbounds %struct.v9fs_session_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %debug to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %debug, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i16 %5 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str, i32 noundef %conv) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dfltuid = getelementptr inbounds %struct.v9fs_session_info, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %dfltuid to i32
  call void @__asan_load4_noabort(i32 %6)
  %.unpack = load i32, ptr %dfltuid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %.unpack)
  %cmp.i = icmp eq i32 %.unpack, -2
  br i1 %cmp.i, label %if.end.if.end7_crit_edge, label %if.then3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %7 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call6 = tail call i32 @from_kuid_munged(ptr noundef nonnull @init_user_ns, [1 x i32] %7) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.1, i32 noundef %call6) #8
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end.if.end7_crit_edge
  %dfltgid = getelementptr inbounds %struct.v9fs_session_info, ptr %3, i32 0, i32 11
  %8 = ptrtoint ptr %dfltgid to i32
  call void @__asan_load4_noabort(i32 %8)
  %.unpack101 = load i32, ptr %dfltgid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %.unpack101)
  %cmp.i104 = icmp eq i32 %.unpack101, -2
  br i1 %cmp.i104, label %if.end7.if.end17_crit_edge, label %if.then13

if.end7.if.end17_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then13:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %9 = insertvalue [1 x i32] undef, i32 %.unpack101, 0
  %call16 = tail call i32 @from_kgid_munged(ptr noundef nonnull @init_user_ns, [1 x i32] %9) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.2, i32 noundef %call16) #8
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.end7.if.end17_crit_edge
  %afid = getelementptr inbounds %struct.v9fs_session_info, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %afid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %afid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp.not = icmp eq i32 %11, -1
  br i1 %cmp.not, label %if.end17.if.end21_crit_edge, label %if.then19

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.3, i32 noundef %11) #8
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end17.if.end21_crit_edge
  %uname = getelementptr inbounds %struct.v9fs_session_info, ptr %3, i32 0, i32 7
  %12 = ptrtoint ptr %uname to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %uname, align 4
  %call22 = tail call i32 @strcmp(ptr noundef %13, ptr noundef nonnull dereferenceable(7) @.str.4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23.not = icmp eq i32 %call22, 0
  br i1 %cmp23.not, label %if.end21.if.end27_crit_edge, label %if.then25

if.end21.if.end27_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.5, ptr noundef %13) #8
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end21.if.end27_crit_edge
  %aname = getelementptr inbounds %struct.v9fs_session_info, ptr %3, i32 0, i32 8
  %14 = ptrtoint ptr %aname to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %aname, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %strcmpload = load i8, ptr %15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %strcmpload)
  %cmp29.not = icmp eq i8 %strcmpload, 0
  br i1 %cmp29.not, label %if.end27.if.end33_crit_edge, label %if.then31

if.end27.if.end33_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.7, ptr noundef %15) #8
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end27.if.end33_crit_edge
  %nodev = getelementptr inbounds %struct.v9fs_session_info, ptr %3, i32 0, i32 1
  %17 = ptrtoint ptr %nodev to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %nodev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool34.not = icmp eq i8 %18, 0
  br i1 %tobool34.not, label %if.end33.if.end36_crit_edge, label %if.then35

if.end33.if.end36_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.8) #8
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.end33.if.end36_crit_edge
  %cache = getelementptr inbounds %struct.v9fs_session_info, ptr %3, i32 0, i32 4
  %19 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cache, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool37.not = icmp eq i32 %20, 0
  br i1 %tobool37.not, label %if.end36.if.end40_crit_edge, label %if.then38

if.end36.if.end40_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr [4 x ptr], ptr @v9fs_cache_modes, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.9, ptr noundef %22) #8
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.end36.if.end40_crit_edge
  %cachetag = getelementptr inbounds %struct.v9fs_session_info, ptr %3, i32 0, i32 5
  %23 = ptrtoint ptr %cachetag to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cachetag, align 4
  %tobool41.not = icmp eq ptr %24, null
  br i1 %tobool41.not, label %if.end40.if.end47_crit_edge, label %land.lhs.true

if.end40.if.end47_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

land.lhs.true:                                    ; preds = %if.end40
  %25 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cache, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %26)
  %cmp43 = icmp eq i32 %26, 3
  br i1 %cmp43, label %if.then45, label %land.lhs.true.if.end47_crit_edge

land.lhs.true.if.end47_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then45:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.10, ptr noundef nonnull %24) #8
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %land.lhs.true.if.end47_crit_edge, %if.end40.if.end47_crit_edge
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %3, align 4
  %29 = and i8 %28, 28
  %and = zext i8 %29 to i32
  %30 = add nsw i32 %and, -4
  %31 = lshr exact i32 %30, 2
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values)
  switch i32 %31, label %if.end47.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 6, label %sw.bb49
    i32 3, label %sw.bb50
    i32 0, label %sw.bb51
  ]

if.end47.sw.epilog_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.11) #8
  br label %sw.epilog

sw.bb49:                                          ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.12) #8
  br label %sw.epilog

sw.bb50:                                          ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.13) #8
  br label %sw.epilog

sw.bb51:                                          ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  %uid = getelementptr inbounds %struct.v9fs_session_info, ptr %3, i32 0, i32 12
  %33 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %33)
  %.unpack103 = load i32, ptr %uid, align 4
  %34 = insertvalue [1 x i32] undef, i32 %.unpack103, 0
  %call53 = tail call i32 @from_kuid_munged(ptr noundef nonnull @init_user_ns, [1 x i32] %34) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.14, i32 noundef %call53) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb51, %sw.bb50, %sw.bb49, %sw.bb, %if.end47.sw.epilog_crit_edge
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %3, align 4
  %37 = and i8 %36, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool57.not = icmp eq i8 %37, 0
  br i1 %tobool57.not, label %sw.epilog.if.end59_crit_edge, label %if.then58

sw.epilog.if.end59_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.then58:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.15) #8
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %sw.epilog.if.end59_crit_edge
  %clnt = getelementptr inbounds %struct.v9fs_session_info, ptr %3, i32 0, i32 13
  %38 = ptrtoint ptr %clnt to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %clnt, align 4
  %call60 = tail call i32 @p9_show_client_options(ptr noundef %m, ptr noundef %39) #8
  ret i32 %call60
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p9_show_client_options(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @v9fs_session_init(ptr noundef %v9ses, ptr noundef %dev_name, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %options.i = alloca ptr, align 4
  %args.i = alloca [3 x %struct.substring_t], align 4
  %option.i = alloca i32, align 4
  %uid.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @kstrdup(ptr noundef nonnull @.str.4, i32 noundef 3264) #8
  %uname = getelementptr inbounds %struct.v9fs_session_info, ptr %v9ses, i32 0, i32 7
  %0 = ptrtoint ptr %uname to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %uname, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.err_names_crit_edge, label %if.end

entry.err_names_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_names

if.end:                                           ; preds = %entry
  %call2 = tail call noalias ptr @kstrdup(ptr noundef nonnull @.str.6, i32 noundef 3264) #8
  %aname = getelementptr inbounds %struct.v9fs_session_info, ptr %v9ses, i32 0, i32 8
  %1 = ptrtoint ptr %aname to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %aname, align 4
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %if.end.err_names_crit_edge, label %do.body

if.end.err_names_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_names

do.body:                                          ; preds = %if.end
  %rename_sem = getelementptr inbounds %struct.v9fs_session_info, ptr %v9ses, i32 0, i32 15
  tail call void @__init_rwsem(ptr noundef %rename_sem, ptr noundef nonnull @.str.16, ptr noundef nonnull @v9fs_session_init.__key) #8
  %uid = getelementptr inbounds %struct.v9fs_session_info, ptr %v9ses, i32 0, i32 12
  %2 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %uid, align 4
  %dfltuid = getelementptr inbounds %struct.v9fs_session_info, ptr %v9ses, i32 0, i32 10
  %3 = ptrtoint ptr %dfltuid to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -2, ptr %dfltuid, align 4
  %dfltgid = getelementptr inbounds %struct.v9fs_session_info, ptr %v9ses, i32 0, i32 11
  %4 = ptrtoint ptr %dfltgid to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -2, ptr %dfltgid, align 4
  %call11 = tail call ptr @p9_client_create(ptr noundef %dev_name, ptr noundef %data) #8
  %clnt = getelementptr inbounds %struct.v9fs_session_info, ptr %v9ses, i32 0, i32 13
  %5 = ptrtoint ptr %clnt to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call11, ptr %clnt, align 4
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end17

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %call11 to i32
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 1, ptr noundef nonnull @__func__.v9fs_session_init, ptr noundef nonnull @.str.17) #8
  br label %err_names

if.end17:                                         ; preds = %do.body
  %7 = ptrtoint ptr %v9ses to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 8, ptr %v9ses, align 4
  %call19 = tail call i32 @p9_is_proto_dotl(ptr noundef %call11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.else, label %if.end17.if.end34.sink.split_crit_edge

if.end17.if.end34.sink.split_crit_edge:           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.sink.split

if.else:                                          ; preds = %if.end17
  %8 = ptrtoint ptr %clnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clnt, align 4
  %call26 = tail call i32 @p9_is_proto_dotu(ptr noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.else.if.end34_crit_edge, label %if.then28

if.else.if.end34_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then28:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %v9ses to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %v9ses, align 4
  %12 = or i8 %11, 1
  br label %if.end34.sink.split

if.end34.sink.split:                              ; preds = %if.then28, %if.end17.if.end34.sink.split_crit_edge
  %.sink206 = phi i8 [ %12, %if.then28 ], [ 18, %if.end17.if.end34.sink.split_crit_edge ]
  %13 = ptrtoint ptr %v9ses to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %.sink206, ptr %v9ses, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.end34.sink.split, %if.else.if.end34_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %options.i) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args.i) #8
  %14 = call ptr @memset(ptr %args.i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %option.i) #8
  %15 = ptrtoint ptr %option.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %option.i, align 4
  %afid.i = getelementptr inbounds %struct.v9fs_session_info, ptr %v9ses, i32 0, i32 3
  %16 = ptrtoint ptr %afid.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %afid.i, align 4
  %debug.i = getelementptr inbounds %struct.v9fs_session_info, ptr %v9ses, i32 0, i32 2
  %17 = ptrtoint ptr %debug.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %debug.i, align 2
  %cache.i = getelementptr inbounds %struct.v9fs_session_info, ptr %v9ses, i32 0, i32 4
  %18 = ptrtoint ptr %cache.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %cache.i, align 4
  %cachetag.i = getelementptr inbounds %struct.v9fs_session_info, ptr %v9ses, i32 0, i32 5
  %19 = ptrtoint ptr %cachetag.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %cachetag.i, align 4
  %session_lock_timeout.i = getelementptr inbounds %struct.v9fs_session_info, ptr %v9ses, i32 0, i32 16
  %20 = ptrtoint ptr %session_lock_timeout.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 3000, ptr %session_lock_timeout.i, align 4
  %tobool.not.i = icmp eq ptr %data, null
  br i1 %tobool.not.i, label %v9fs_parse_options.exit.thread194, label %if.end.i

v9fs_parse_options.exit.thread194:                ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %option.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %options.i) #8
  br label %if.end38

if.end.i:                                         ; preds = %if.end34
  %call.i = tail call noalias ptr @kstrdup(ptr noundef nonnull %data, i32 noundef 3264) #8
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %v9fs_parse_options.exit.thread, label %if.end3.i

v9fs_parse_options.exit.thread:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %option.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %options.i) #8
  br label %err_clnt

if.end3.i:                                        ; preds = %if.end.i
  %21 = ptrtoint ptr %options.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i, ptr %options.i, align 4
  %call4284.i = call ptr @strsep(ptr noundef nonnull %options.i, ptr noundef nonnull @.str.25) #8
  %cmp.not285.i = icmp eq ptr %call4284.i, null
  br i1 %cmp.not285.i, label %v9fs_parse_options.exit.thread200, label %while.body.lr.ph.i

v9fs_parse_options.exit.thread200:                ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %option.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %options.i) #8
  br label %if.end38

while.body.lr.ph.i:                               ; preds = %if.end3.i
  %nodev.i = getelementptr inbounds %struct.v9fs_session_info, ptr %v9ses, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup198.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %call4287.i = phi ptr [ %call4284.i, %while.body.lr.ph.i ], [ %call4.i, %cleanup198.i.while.body.i_crit_edge ]
  %ret.0286.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %ret.6.i, %cleanup198.i.while.body.i_crit_edge ]
  %22 = ptrtoint ptr %call4287.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %call4287.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool5.not.i = icmp eq i8 %23, 0
  br i1 %tobool5.not.i, label %while.body.i.cleanup198.i_crit_edge, label %if.end7.i

while.body.i.cleanup198.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup198.i

if.end7.i:                                        ; preds = %while.body.i
  %call8.i = call i32 @match_token(ptr noundef nonnull %call4287.i, ptr noundef nonnull @tokens, ptr noundef nonnull %args.i) #8
  %24 = zext i32 %call8.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %call8.i, label %if.end7.i.cleanup198.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb14.i
    i32 2, label %sw.bb30.i
    i32 3, label %sw.bb54.i
    i32 4, label %sw.bb63.i
    i32 5, label %sw.bb71.i
    i32 8, label %sw.bb79.i
    i32 9, label %sw.bb80.i
    i32 10, label %sw.bb82.i
    i32 11, label %sw.bb84.i
    i32 7, label %sw.bb86.i
    i32 6, label %sw.bb95.i
    i32 12, label %sw.bb108.i
    i32 13, label %sw.bb181.i
    i32 14, label %sw.bb186.i
  ]

if.end7.i.cleanup198.i_crit_edge:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup198.i

sw.bb.i:                                          ; preds = %if.end7.i
  %call9.i = call i32 @match_int(ptr noundef nonnull %args.i, ptr noundef nonnull %option.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %if.then11.i, label %if.else.i

if.then11.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 1, ptr noundef nonnull @__func__.v9fs_parse_options, ptr noundef nonnull @.str.26) #8
  br label %cleanup198.i

if.else.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %option.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %option.i, align 4
  %conv.i = trunc i32 %26 to i16
  %27 = ptrtoint ptr %debug.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv.i, ptr %debug.i, align 2
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @p9_debug_level to i32))
  store i32 %26, ptr @p9_debug_level, align 4
  br label %cleanup198.i

sw.bb14.i:                                        ; preds = %if.end7.i
  %call16.i = call i32 @match_int(ptr noundef nonnull %args.i, ptr noundef nonnull %option.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp17.i = icmp slt i32 %call16.i, 0
  br i1 %cmp17.i, label %if.then19.i, label %if.end20.i

if.then19.i:                                      ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 1, ptr noundef nonnull @__func__.v9fs_parse_options, ptr noundef nonnull @.str.26) #8
  br label %cleanup198.i

if.end20.i:                                       ; preds = %sw.bb14.i
  %28 = call i32 @llvm.read_register.i32(metadata !184) #8
  %and.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 99
  %32 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cred.i, align 16
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %33, i32 0, i32 25
  %34 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %user_ns.i, align 4
  %36 = ptrtoint ptr %option.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %option.i, align 4
  %call24.i = call i32 @make_kuid(ptr noundef %35, i32 noundef %37) #8
  %38 = ptrtoint ptr %dfltuid to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call24.i, ptr %dfltuid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call24.i)
  %cmp.i.not.i = icmp eq i32 %call24.i, -1
  br i1 %cmp.i.not.i, label %if.then28.i, label %if.end20.i.cleanup198.i_crit_edge

if.end20.i.cleanup198.i_crit_edge:                ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup198.i

if.then28.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 1, ptr noundef nonnull @__func__.v9fs_parse_options, ptr noundef nonnull @.str.27) #8
  br label %cleanup198.i

sw.bb30.i:                                        ; preds = %if.end7.i
  %call32.i = call i32 @match_int(ptr noundef nonnull %args.i, ptr noundef nonnull %option.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %cmp33.i = icmp slt i32 %call32.i, 0
  br i1 %cmp33.i, label %if.then35.i, label %if.end36.i

if.then35.i:                                      ; preds = %sw.bb30.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 1, ptr noundef nonnull @__func__.v9fs_parse_options, ptr noundef nonnull @.str.26) #8
  br label %cleanup198.i

if.end36.i:                                       ; preds = %sw.bb30.i
  %39 = call i32 @llvm.read_register.i32(metadata !184) #8
  %and.i273.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i273.i to ptr
  %task44.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %task44.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %task44.i, align 8
  %cred45.i = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 99
  %43 = ptrtoint ptr %cred45.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cred45.i, align 16
  %user_ns46.i = getelementptr inbounds %struct.cred, ptr %44, i32 0, i32 25
  %45 = ptrtoint ptr %user_ns46.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %user_ns46.i, align 4
  %47 = ptrtoint ptr %option.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %option.i, align 4
  %call47.i = call i32 @make_kgid(ptr noundef %46, i32 noundef %48) #8
  %49 = ptrtoint ptr %dfltgid to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %call47.i, ptr %dfltgid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call47.i)
  %cmp.i274.not.i = icmp eq i32 %call47.i, -1
  br i1 %cmp.i274.not.i, label %if.then52.i, label %if.end36.i.cleanup198.i_crit_edge

if.end36.i.cleanup198.i_crit_edge:                ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup198.i

if.then52.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 1, ptr noundef nonnull @__func__.v9fs_parse_options, ptr noundef nonnull @.str.29) #8
  br label %cleanup198.i

sw.bb54.i:                                        ; preds = %if.end7.i
  %call56.i = call i32 @match_int(ptr noundef nonnull %args.i, ptr noundef nonnull %option.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.i)
  %cmp57.i = icmp slt i32 %call56.i, 0
  br i1 %cmp57.i, label %if.then59.i, label %if.else60.i

if.then59.i:                                      ; preds = %sw.bb54.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 1, ptr noundef nonnull @__func__.v9fs_parse_options, ptr noundef nonnull @.str.26) #8
  br label %cleanup198.i

if.else60.i:                                      ; preds = %sw.bb54.i
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %option.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %option.i, align 4
  %52 = ptrtoint ptr %afid.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %afid.i, align 4
  br label %cleanup198.i

sw.bb63.i:                                        ; preds = %if.end7.i
  %53 = ptrtoint ptr %uname to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %uname, align 4
  call void @kfree(ptr noundef %54) #8
  %call65.i = call ptr @match_strdup(ptr noundef nonnull %args.i) #8
  %55 = ptrtoint ptr %uname to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call65.i, ptr %uname, align 4
  %tobool68.not.i = icmp eq ptr %call65.i, null
  br i1 %tobool68.not.i, label %sw.bb63.i.v9fs_parse_options.exit.thread197_crit_edge, label %sw.bb63.i.cleanup198.i_crit_edge

sw.bb63.i.cleanup198.i_crit_edge:                 ; preds = %sw.bb63.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup198.i

sw.bb63.i.v9fs_parse_options.exit.thread197_crit_edge: ; preds = %sw.bb63.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %v9fs_parse_options.exit.thread197

sw.bb71.i:                                        ; preds = %if.end7.i
  %56 = ptrtoint ptr %aname to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %aname, align 4
  call void @kfree(ptr noundef %57) #8
  %call73.i = call ptr @match_strdup(ptr noundef nonnull %args.i) #8
  %58 = ptrtoint ptr %aname to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call73.i, ptr %aname, align 4
  %tobool76.not.i = icmp eq ptr %call73.i, null
  br i1 %tobool76.not.i, label %sw.bb71.i.v9fs_parse_options.exit.thread197_crit_edge, label %sw.bb71.i.cleanup198.i_crit_edge

sw.bb71.i.cleanup198.i_crit_edge:                 ; preds = %sw.bb71.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup198.i

sw.bb71.i.v9fs_parse_options.exit.thread197_crit_edge: ; preds = %sw.bb71.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %v9fs_parse_options.exit.thread197

sw.bb79.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %nodev.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %nodev.i, align 1
  br label %cleanup198.i

sw.bb80.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %cache.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 2, ptr %cache.i, align 4
  br label %cleanup198.i

sw.bb82.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %cache.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 3, ptr %cache.i, align 4
  br label %cleanup198.i

sw.bb84.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %cache.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %cache.i, align 4
  br label %cleanup198.i

sw.bb86.i:                                        ; preds = %if.end7.i
  %63 = ptrtoint ptr %cachetag.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cachetag.i, align 4
  call void @kfree(ptr noundef %64) #8
  %call89.i = call ptr @match_strdup(ptr noundef nonnull %args.i) #8
  %65 = ptrtoint ptr %cachetag.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call89.i, ptr %cachetag.i, align 4
  %tobool92.not.i = icmp eq ptr %call89.i, null
  br i1 %tobool92.not.i, label %sw.bb86.i.v9fs_parse_options.exit.thread197_crit_edge, label %sw.bb86.i.cleanup198.i_crit_edge

sw.bb86.i.cleanup198.i_crit_edge:                 ; preds = %sw.bb86.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup198.i

sw.bb86.i.v9fs_parse_options.exit.thread197_crit_edge: ; preds = %sw.bb86.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %v9fs_parse_options.exit.thread197

sw.bb95.i:                                        ; preds = %if.end7.i
  %call97.i = call ptr @match_strdup(ptr noundef nonnull %args.i) #8
  %tobool98.not.i = icmp eq ptr %call97.i, null
  br i1 %tobool98.not.i, label %sw.bb95.i.free_and_return.sink.split.i_crit_edge, label %if.end100.i

sw.bb95.i.free_and_return.sink.split.i_crit_edge: ; preds = %sw.bb95.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_and_return.sink.split.i

if.end100.i:                                      ; preds = %sw.bb95.i
  %call.i.i = call i32 @strcmp(ptr noundef nonnull %call97.i, ptr noundef nonnull dereferenceable(6) @.str.23) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end100.i.if.else105.i_crit_edge, label %if.else.i.i

if.end100.i.if.else105.i_crit_edge:               ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else105.i

if.else.i.i:                                      ; preds = %if.end100.i
  %call1.i.i = call i32 @strcmp(ptr noundef nonnull %call97.i, ptr noundef nonnull dereferenceable(8) @.str.24) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.else.i.i.if.else105.i_crit_edge, label %if.else4.i.i

if.else.i.i.if.else105.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else105.i

if.else4.i.i:                                     ; preds = %if.else.i.i
  %call5.i.i = call i32 @strcmp(ptr noundef nonnull %call97.i, ptr noundef nonnull dereferenceable(5) @.str.22) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.else4.i.i.if.else105.i_crit_edge, label %if.else8.i.i

if.else4.i.i.if.else105.i_crit_edge:              ; preds = %if.else4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else105.i

if.else8.i.i:                                     ; preds = %if.else4.i.i
  %call9.i.i = call i32 @strcmp(ptr noundef nonnull %call97.i, ptr noundef nonnull dereferenceable(5) @.str.21) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %if.else8.i.i.if.else105.i_crit_edge, label %get_cache_mode.exit.i

if.else8.i.i.if.else105.i_crit_edge:              ; preds = %if.else8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else105.i

get_cache_mode.exit.i:                            ; preds = %if.else8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull %call97.i) #13
  br label %if.end107.i

if.else105.i:                                     ; preds = %if.else8.i.i.if.else105.i_crit_edge, %if.else4.i.i.if.else105.i_crit_edge, %if.else.i.i.if.else105.i_crit_edge, %if.end100.i.if.else105.i_crit_edge
  %.str.57.sink.i = phi ptr [ @.str.54, %if.end100.i.if.else105.i_crit_edge ], [ @.str.55, %if.else.i.i.if.else105.i_crit_edge ], [ @.str.56, %if.else4.i.i.if.else105.i_crit_edge ], [ @.str.57, %if.else8.i.i.if.else105.i_crit_edge ]
  %version.0.i.ph.i = phi i32 [ 2, %if.end100.i.if.else105.i_crit_edge ], [ 3, %if.else.i.i.if.else105.i_crit_edge ], [ 1, %if.else4.i.i.if.else105.i_crit_edge ], [ 0, %if.else8.i.i.if.else105.i_crit_edge ]
  call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 4, ptr noundef nonnull @__func__.get_cache_mode, ptr noundef nonnull %.str.57.sink.i) #8
  %66 = ptrtoint ptr %cache.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %version.0.i.ph.i, ptr %cache.i, align 4
  br label %if.end107.i

if.end107.i:                                      ; preds = %if.else105.i, %get_cache_mode.exit.i
  %ret.1.i = phi i32 [ %ret.0286.i, %if.else105.i ], [ -22, %get_cache_mode.exit.i ]
  call void @kfree(ptr noundef nonnull %call97.i) #8
  br label %cleanup198.i

sw.bb108.i:                                       ; preds = %if.end7.i
  %call110.i = call ptr @match_strdup(ptr noundef nonnull %args.i) #8
  %tobool111.not.i = icmp eq ptr %call110.i, null
  br i1 %tobool111.not.i, label %sw.bb108.i.free_and_return.sink.split.i_crit_edge, label %if.end113.i

sw.bb108.i.free_and_return.sink.split.i_crit_edge: ; preds = %sw.bb108.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_and_return.sink.split.i

if.end113.i:                                      ; preds = %sw.bb108.i
  %67 = ptrtoint ptr %v9ses to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %v9ses, align 4
  %69 = and i8 %68, -29
  store i8 %69, ptr %v9ses, align 4
  %call116.i = call i32 @strcmp(ptr noundef nonnull %call110.i, ptr noundef nonnull dereferenceable(5) @.str.32) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116.i)
  %cmp117.i = icmp eq i32 %call116.i, 0
  br i1 %cmp117.i, label %if.then119.i, label %if.else123.i

if.then119.i:                                     ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #10
  %70 = or i8 %69, 8
  %71 = ptrtoint ptr %v9ses to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %v9ses, align 4
  br label %if.end180.i

if.else123.i:                                     ; preds = %if.end113.i
  %call124.i = call i32 @strcmp(ptr noundef nonnull %call110.i, ptr noundef nonnull dereferenceable(4) @.str.33) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124.i)
  %cmp125.i = icmp eq i32 %call124.i, 0
  br i1 %cmp125.i, label %if.then127.i, label %if.else132.i

if.then127.i:                                     ; preds = %if.else123.i
  call void @__sanitizer_cov_trace_pc() #10
  %72 = or i8 %68, 28
  %73 = ptrtoint ptr %v9ses to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %v9ses, align 4
  br label %if.end180.i

if.else132.i:                                     ; preds = %if.else123.i
  %call133.i = call i32 @strcmp(ptr noundef nonnull %call110.i, ptr noundef nonnull dereferenceable(7) @.str.34) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133.i)
  %cmp134.i = icmp eq i32 %call133.i, 0
  br i1 %cmp134.i, label %if.then136.i, label %if.else141.i

if.then136.i:                                     ; preds = %if.else132.i
  call void @__sanitizer_cov_trace_pc() #10
  %74 = or i8 %69, 16
  %75 = ptrtoint ptr %v9ses to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %v9ses, align 4
  br label %if.end180.i

if.else141.i:                                     ; preds = %if.else132.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uid.i) #8
  %76 = ptrtoint ptr %uid.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 -1, ptr %uid.i, align 4, !annotation !194
  %77 = or i8 %69, 4
  %78 = ptrtoint ptr %v9ses to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %v9ses, align 4
  %call146.i = call i32 @kstrtouint(ptr noundef nonnull %call110.i, i32 noundef 10, ptr noundef nonnull %uid.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146.i)
  %tobool147.not.i = icmp eq i32 %call146.i, 0
  br i1 %tobool147.not.i, label %if.end154.i, label %cleanup.i

if.end154.i:                                      ; preds = %if.else141.i
  %79 = call i32 @llvm.read_register.i32(metadata !184) #8
  %and.i275.i = and i32 %79, -16384
  %80 = inttoptr i32 %and.i275.i to ptr
  %task163.i = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %task163.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %task163.i, align 8
  %cred164.i = getelementptr inbounds %struct.task_struct, ptr %82, i32 0, i32 99
  %83 = ptrtoint ptr %cred164.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %cred164.i, align 16
  %user_ns165.i = getelementptr inbounds %struct.cred, ptr %84, i32 0, i32 25
  %85 = ptrtoint ptr %user_ns165.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %user_ns165.i, align 4
  %87 = ptrtoint ptr %uid.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %uid.i, align 4
  %call166.i = call i32 @make_kuid(ptr noundef %86, i32 noundef %88) #8
  %89 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %call166.i, ptr %uid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call166.i)
  %cmp.i276.not.i = icmp eq i32 %call166.i, -1
  br i1 %cmp.i276.not.i, label %if.then171.i, label %if.end154.i.cleanup.thread.i_crit_edge

if.end154.i.cleanup.thread.i_crit_edge:           ; preds = %if.end154.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread.i

if.then171.i:                                     ; preds = %if.end154.i
  call void @__sanitizer_cov_trace_pc() #10
  %call176.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull %call110.i) #13
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.then171.i, %if.end154.i.cleanup.thread.i_crit_edge
  %ret.3.ph.i = phi i32 [ -22, %if.then171.i ], [ %ret.0286.i, %if.end154.i.cleanup.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uid.i) #8
  br label %if.end180.i

cleanup.i:                                        ; preds = %if.else141.i
  call void @__sanitizer_cov_trace_pc() #10
  %call153.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull %call110.i, i32 noundef %call146.i) #13
  call void @kfree(ptr noundef nonnull %call110.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uid.i) #8
  br label %cleanup198.i

if.end180.i:                                      ; preds = %cleanup.thread.i, %if.then136.i, %if.then127.i, %if.then119.i
  %ret.4.i = phi i32 [ %ret.0286.i, %if.then119.i ], [ %ret.0286.i, %if.then127.i ], [ %ret.0286.i, %if.then136.i ], [ %ret.3.ph.i, %cleanup.thread.i ]
  call void @kfree(ptr noundef nonnull %call110.i) #8
  br label %cleanup198.i

sw.bb181.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %90 = ptrtoint ptr %v9ses to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %v9ses, align 4
  %92 = or i8 %91, 32
  store i8 %92, ptr %v9ses, align 4
  br label %cleanup198.i

sw.bb186.i:                                       ; preds = %if.end7.i
  %call188.i = call i32 @match_int(ptr noundef nonnull %args.i, ptr noundef nonnull %option.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call188.i)
  %cmp189.i = icmp slt i32 %call188.i, 0
  br i1 %cmp189.i, label %if.then191.i, label %if.end192.i

if.then191.i:                                     ; preds = %sw.bb186.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 1, ptr noundef nonnull @__func__.v9fs_parse_options, ptr noundef nonnull @.str.26) #8
  br label %cleanup198.i

if.end192.i:                                      ; preds = %sw.bb186.i
  %93 = ptrtoint ptr %option.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %option.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %94)
  %cmp193.i = icmp slt i32 %94, 1
  br i1 %cmp193.i, label %if.then195.i, label %if.end196.i

if.then195.i:                                     ; preds = %if.end192.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 1, ptr noundef nonnull @__func__.v9fs_parse_options, ptr noundef nonnull @.str.41) #8
  br label %cleanup198.i

if.end196.i:                                      ; preds = %if.end192.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i = mul i32 %94, 100
  %95 = ptrtoint ptr %session_lock_timeout.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %mul.i, ptr %session_lock_timeout.i, align 4
  br label %cleanup198.i

cleanup198.i:                                     ; preds = %if.end196.i, %if.then195.i, %if.then191.i, %sw.bb181.i, %if.end180.i, %cleanup.i, %if.end107.i, %sw.bb86.i.cleanup198.i_crit_edge, %sw.bb84.i, %sw.bb82.i, %sw.bb80.i, %sw.bb79.i, %sw.bb71.i.cleanup198.i_crit_edge, %sw.bb63.i.cleanup198.i_crit_edge, %if.else60.i, %if.then59.i, %if.then52.i, %if.end36.i.cleanup198.i_crit_edge, %if.then35.i, %if.then28.i, %if.end20.i.cleanup198.i_crit_edge, %if.then19.i, %if.else.i, %if.then11.i, %if.end7.i.cleanup198.i_crit_edge, %while.body.i.cleanup198.i_crit_edge
  %ret.6.i = phi i32 [ %call188.i, %if.then191.i ], [ -22, %if.then195.i ], [ %call146.i, %cleanup.i ], [ %call32.i, %if.then35.i ], [ %call16.i, %if.then19.i ], [ %ret.0286.i, %while.body.i.cleanup198.i_crit_edge ], [ %ret.0286.i, %if.end7.i.cleanup198.i_crit_edge ], [ %ret.0286.i, %if.end196.i ], [ %ret.0286.i, %sw.bb181.i ], [ %ret.4.i, %if.end180.i ], [ %ret.1.i, %if.end107.i ], [ %ret.0286.i, %sw.bb86.i.cleanup198.i_crit_edge ], [ %ret.0286.i, %sw.bb84.i ], [ %ret.0286.i, %sw.bb82.i ], [ %ret.0286.i, %sw.bb80.i ], [ %ret.0286.i, %sw.bb79.i ], [ %ret.0286.i, %sw.bb71.i.cleanup198.i_crit_edge ], [ %ret.0286.i, %sw.bb63.i.cleanup198.i_crit_edge ], [ %call56.i, %if.then59.i ], [ %ret.0286.i, %if.else60.i ], [ %ret.0286.i, %if.end36.i.cleanup198.i_crit_edge ], [ -22, %if.then52.i ], [ %ret.0286.i, %if.end20.i.cleanup198.i_crit_edge ], [ -22, %if.then28.i ], [ %call9.i, %if.then11.i ], [ %ret.0286.i, %if.else.i ]
  %call4.i = call ptr @strsep(ptr noundef nonnull %options.i, ptr noundef nonnull @.str.25) #8
  %cmp.not.i = icmp eq ptr %call4.i, null
  br i1 %cmp.not.i, label %v9fs_parse_options.exit, label %cleanup198.i.while.body.i_crit_edge

cleanup198.i.while.body.i_crit_edge:              ; preds = %cleanup198.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

free_and_return.sink.split.i:                     ; preds = %sw.bb108.i.free_and_return.sink.split.i_crit_edge, %sw.bb95.i.free_and_return.sink.split.i_crit_edge
  %.str.30.sink.i = phi ptr [ @.str.30, %sw.bb95.i.free_and_return.sink.split.i_crit_edge ], [ @.str.31, %sw.bb108.i.free_and_return.sink.split.i_crit_edge ]
  call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 1, ptr noundef nonnull @__func__.v9fs_parse_options, ptr noundef nonnull %.str.30.sink.i) #8
  br label %v9fs_parse_options.exit.thread197

v9fs_parse_options.exit.thread197:                ; preds = %free_and_return.sink.split.i, %sw.bb86.i.v9fs_parse_options.exit.thread197_crit_edge, %sw.bb71.i.v9fs_parse_options.exit.thread197_crit_edge, %sw.bb63.i.v9fs_parse_options.exit.thread197_crit_edge
  call void @kfree(ptr noundef nonnull %call.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %option.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %options.i) #8
  br label %err_clnt

v9fs_parse_options.exit:                          ; preds = %cleanup198.i
  call void @kfree(ptr noundef nonnull %call.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %option.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %options.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.6.i)
  %cmp = icmp slt i32 %ret.6.i, 0
  br i1 %cmp, label %v9fs_parse_options.exit.err_clnt_crit_edge, label %v9fs_parse_options.exit.if.end38_crit_edge

v9fs_parse_options.exit.if.end38_crit_edge:       ; preds = %v9fs_parse_options.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

v9fs_parse_options.exit.err_clnt_crit_edge:       ; preds = %v9fs_parse_options.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_clnt

if.end38:                                         ; preds = %v9fs_parse_options.exit.if.end38_crit_edge, %v9fs_parse_options.exit.thread200, %v9fs_parse_options.exit.thread194
  %96 = ptrtoint ptr %clnt to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %clnt, align 4
  %msize = getelementptr inbounds %struct.p9_client, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %msize to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %msize, align 4
  %sub = add i32 %99, -24
  %maxdata = getelementptr inbounds %struct.v9fs_session_info, ptr %v9ses, i32 0, i32 9
  %100 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %sub, ptr %maxdata, align 4
  %101 = ptrtoint ptr %v9ses to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %v9ses, align 4
  %103 = and i8 %102, 30
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %103)
  %104 = icmp eq i8 %103, 16
  br i1 %104, label %if.then46, label %if.end38.if.end55_crit_edge

if.end38.if.end55_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then46:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %and49 = and i8 %102, -29
  %105 = or i8 %and49, 8
  %106 = ptrtoint ptr %v9ses to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %105, ptr %v9ses, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then46, %if.end38.if.end55_crit_edge
  %107 = ptrtoint ptr %v9ses to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %v9ses, align 4
  %109 = and i8 %108, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %109)
  %110 = icmp eq i8 %109, 8
  br i1 %110, label %if.then66, label %if.end55.if.end78_crit_edge

if.end55.if.end78_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

if.then66:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  %111 = or i8 %108, 28
  %112 = ptrtoint ptr %v9ses to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %111, ptr %v9ses, align 4
  %113 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 -1, ptr %uid, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.then66, %if.end55.if.end78_crit_edge
  %114 = ptrtoint ptr %v9ses to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %v9ses, align 4
  %116 = and i8 %115, 30
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %116)
  %117 = icmp eq i8 %116, 18
  br i1 %117, label %if.end78.if.end92_crit_edge, label %if.then87

if.end78.if.end92_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

if.then87:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  %118 = and i8 %115, -33
  %119 = ptrtoint ptr %v9ses to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %118, ptr %v9ses, align 4
  br label %if.end92

if.end92:                                         ; preds = %if.then87, %if.end78.if.end92_crit_edge
  %120 = ptrtoint ptr %uname to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %uname, align 4
  %122 = ptrtoint ptr %aname to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %aname, align 4
  %call98 = call ptr @p9_client_attach(ptr noundef %97, ptr noundef null, ptr noundef %121, [1 x i32] [i32 -1], ptr noundef %123) #8
  %cmp.i190 = icmp ugt ptr %call98, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i190, label %if.then100, label %if.end102

if.then100:                                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  %124 = ptrtoint ptr %call98 to i32
  call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 1, ptr noundef nonnull @__func__.v9fs_session_init, ptr noundef nonnull @.str.18) #8
  br label %err_clnt

if.end102:                                        ; preds = %if.end92
  %125 = ptrtoint ptr %v9ses to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %v9ses, align 4
  %127 = and i8 %126, 28
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %127)
  %cmp106 = icmp eq i8 %127, 4
  br i1 %cmp106, label %if.then108, label %if.end102.if.end115_crit_edge

if.end102.if.end115_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end115

if.then108:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  %128 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %uid, align 4
  br label %if.end115

if.end115:                                        ; preds = %if.then108, %if.end102.if.end115_crit_edge
  %.sink = phi i32 [ %129, %if.then108 ], [ -1, %if.end102.if.end115_crit_edge ]
  %130 = getelementptr inbounds %struct.p9_fid, ptr %call98, i32 0, i32 6
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %.sink, ptr %130, align 4
  %132 = ptrtoint ptr %cache.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %cache.i, align 4
  %134 = and i32 %133, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %134)
  %switch = icmp eq i32 %134, 2
  br i1 %switch, label %if.then122, label %if.end115.if.end128_crit_edge

if.end115.if.end128_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end128

if.then122:                                       ; preds = %if.end115
  %call123 = call i32 @v9fs_cache_session_get_cookie(ptr noundef %v9ses, ptr noundef %dev_name) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %cmp124 = icmp slt i32 %call123, 0
  br i1 %cmp124, label %if.then122.err_clnt_crit_edge, label %if.then122.if.end128_crit_edge

if.then122.if.end128_crit_edge:                   ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end128

if.then122.err_clnt_crit_edge:                    ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_clnt

if.end128:                                        ; preds = %if.then122.if.end128_crit_edge, %if.end115.if.end128_crit_edge
  call void @_raw_spin_lock(ptr noundef nonnull @v9fs_sessionlist_lock) #8
  %slist = getelementptr inbounds %struct.v9fs_session_info, ptr %v9ses, i32 0, i32 14
  %135 = load ptr, ptr @v9fs_sessionlist, align 4
  %call.i.i191 = call zeroext i1 @__list_add_valid(ptr noundef %slist, ptr noundef nonnull @v9fs_sessionlist, ptr noundef %135) #8
  br i1 %call.i.i191, label %if.end.i.i, label %if.end128.list_add.exit_crit_edge

if.end128.list_add.exit_crit_edge:                ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %135, i32 0, i32 1
  %136 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %slist, ptr %prev1.i.i, align 4
  %137 = ptrtoint ptr %slist to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %135, ptr %slist, align 4
  %prev3.i.i = getelementptr inbounds %struct.v9fs_session_info, ptr %v9ses, i32 0, i32 14, i32 1
  %138 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr @v9fs_sessionlist, ptr %prev3.i.i, align 4
  store volatile ptr %slist, ptr @v9fs_sessionlist, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end128.list_add.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @v9fs_sessionlist_lock) #8
  br label %cleanup

err_clnt:                                         ; preds = %if.then122.err_clnt_crit_edge, %if.then100, %v9fs_parse_options.exit.err_clnt_crit_edge, %v9fs_parse_options.exit.thread197, %v9fs_parse_options.exit.thread
  %rc.0 = phi i32 [ %ret.6.i, %v9fs_parse_options.exit.err_clnt_crit_edge ], [ %124, %if.then100 ], [ %call123, %if.then122.err_clnt_crit_edge ], [ -12, %v9fs_parse_options.exit.thread ], [ -12, %v9fs_parse_options.exit.thread197 ]
  %139 = ptrtoint ptr %cachetag.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %cachetag.i, align 4
  call void @kfree(ptr noundef %140) #8
  %141 = ptrtoint ptr %clnt to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %clnt, align 4
  call void @p9_client_destroy(ptr noundef %142) #8
  br label %err_names

err_names:                                        ; preds = %err_clnt, %if.then14, %if.end.err_names_crit_edge, %entry.err_names_crit_edge
  %rc.1 = phi i32 [ %6, %if.then14 ], [ %rc.0, %err_clnt ], [ -12, %if.end.err_names_crit_edge ], [ -12, %entry.err_names_crit_edge ]
  %143 = ptrtoint ptr %uname to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %uname, align 4
  call void @kfree(ptr noundef %144) #8
  %aname131 = getelementptr inbounds %struct.v9fs_session_info, ptr %v9ses, i32 0, i32 8
  %145 = ptrtoint ptr %aname131 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %aname131, align 4
  call void @kfree(ptr noundef %146) #8
  %147 = inttoptr i32 %rc.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_names, %list_add.exit
  %retval.0 = phi ptr [ %147, %err_names ], [ %call98, %list_add.exit ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @p9_client_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_p9_debug(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p9_is_proto_dotl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p9_is_proto_dotu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @p9_client_attach(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v9fs_cache_session_get_cookie(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @p9_client_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @v9fs_session_close(ptr noundef %v9ses) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %clnt = getelementptr inbounds %struct.v9fs_session_info, ptr %v9ses, i32 0, i32 13
  %0 = ptrtoint ptr %clnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clnt, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @p9_client_destroy(ptr noundef nonnull %1) #8
  %2 = ptrtoint ptr %clnt to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %clnt, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %fscache.i = getelementptr inbounds %struct.v9fs_session_info, ptr %v9ses, i32 0, i32 6
  %3 = ptrtoint ptr %fscache.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fscache.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.fscache_relinquish_volume.exit_crit_edge, label %if.then.i

if.end.fscache_relinquish_volume.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %fscache_relinquish_volume.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__fscache_relinquish_volume(ptr noundef nonnull %4, ptr noundef null, i1 noundef zeroext false) #8
  br label %fscache_relinquish_volume.exit

fscache_relinquish_volume.exit:                   ; preds = %if.then.i, %if.end.fscache_relinquish_volume.exit_crit_edge
  %cachetag = getelementptr inbounds %struct.v9fs_session_info, ptr %v9ses, i32 0, i32 5
  %5 = ptrtoint ptr %cachetag to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cachetag, align 4
  tail call void @kfree(ptr noundef %6) #8
  %uname = getelementptr inbounds %struct.v9fs_session_info, ptr %v9ses, i32 0, i32 7
  %7 = ptrtoint ptr %uname to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %uname, align 4
  tail call void @kfree(ptr noundef %8) #8
  %aname = getelementptr inbounds %struct.v9fs_session_info, ptr %v9ses, i32 0, i32 8
  %9 = ptrtoint ptr %aname to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %aname, align 4
  tail call void @kfree(ptr noundef %10) #8
  tail call void @_raw_spin_lock(ptr noundef nonnull @v9fs_sessionlist_lock) #8
  %slist = getelementptr inbounds %struct.v9fs_session_info, ptr %v9ses, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %slist) #8
  br i1 %call.i.i, label %if.end.i.i, label %fscache_relinquish_volume.exit.list_del.exit_crit_edge

fscache_relinquish_volume.exit.list_del.exit_crit_edge: ; preds = %fscache_relinquish_volume.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %fscache_relinquish_volume.exit
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.v9fs_session_info, ptr %v9ses, i32 0, i32 14, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %slist to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %slist, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %fscache_relinquish_volume.exit.list_del.exit_crit_edge
  %17 = ptrtoint ptr %slist to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %slist, align 4
  %prev.i = getelementptr inbounds %struct.v9fs_session_info, ptr %v9ses, i32 0, i32 14, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @v9fs_sessionlist_lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @v9fs_session_cancel(ptr noundef %v9ses) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 1, ptr noundef nonnull @__func__.v9fs_session_cancel, ptr noundef nonnull @.str.19, ptr noundef %v9ses) #8
  %clnt = getelementptr inbounds %struct.v9fs_session_info, ptr %v9ses, i32 0, i32 13
  %0 = ptrtoint ptr %clnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clnt, align 4
  tail call void @p9_client_disconnect(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @p9_client_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @v9fs_session_begin_cancel(ptr noundef %v9ses) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 1, ptr noundef nonnull @__func__.v9fs_session_begin_cancel, ptr noundef nonnull @.str.20, ptr noundef %v9ses) #8
  %clnt = getelementptr inbounds %struct.v9fs_session_info, ptr %v9ses, i32 0, i32 13
  %0 = ptrtoint ptr %clnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clnt, align 4
  tail call void @p9_client_begin_disconnect(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @p9_client_begin_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_v9fs() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load ptr, ptr @v9fs_kobj, align 4
  tail call void @sysfs_remove_group(ptr noundef %0, ptr noundef nonnull @v9fs_attr_group) #8
  %1 = load ptr, ptr @v9fs_kobj, align 4
  tail call void @kobject_put(ptr noundef %1) #8
  tail call void @rcu_barrier() #8
  %2 = load ptr, ptr @v9fs_inode_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %2) #8
  %call = tail call i32 @unregister_filesystem(ptr noundef nonnull @v9fs_fs_type) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_v9fs() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62) #13
  %call.i.i = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.73, i32 noundef 912, i32 noundef 0, i32 noundef 68288512, ptr noundef nonnull @v9fs_inode_init_once) #8
  store ptr %call.i.i, ptr @v9fs_inode_cache, align 4
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %do.end4, label %if.end

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call7 = tail call fastcc i32 @v9fs_sysfs_init() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %do.end12, label %if.end15

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68) #13
  br label %out_cache

if.end15:                                         ; preds = %if.end
  %call16 = tail call i32 @register_filesystem(ptr noundef nonnull @v9fs_fs_type) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %do.end21, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71) #13
  %0 = load ptr, ptr @v9fs_kobj, align 4
  tail call void @sysfs_remove_group(ptr noundef %0, ptr noundef nonnull @v9fs_attr_group) #8
  %1 = load ptr, ptr @v9fs_kobj, align 4
  tail call void @kobject_put(ptr noundef %1) #8
  br label %out_cache

out_cache:                                        ; preds = %do.end21, %do.end12
  %err.0 = phi i32 [ %call7, %do.end12 ], [ %call16, %do.end21 ]
  tail call void @rcu_barrier() #8
  %2 = load ptr, ptr @v9fs_inode_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %2) #8
  br label %cleanup

cleanup:                                          ; preds = %out_cache, %if.end15.cleanup_crit_edge, %do.end4
  %retval.0 = phi i32 [ -12, %do.end4 ], [ %err.0, %out_cache ], [ 0, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_token(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_int(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @match_strdup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__fscache_relinquish_volume(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @caches_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @v9fs_sessionlist_lock) #8
  %.pn17 = load ptr, ptr @v9fs_sessionlist, align 4
  %cmp.not18 = icmp eq ptr %.pn17, @v9fs_sessionlist
  br i1 %cmp.not18, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn21 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn17, %entry.for.body_crit_edge ]
  %count.020 = phi i32 [ %count.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %limit.019 = phi i32 [ %limit.1, %for.inc.for.body_crit_edge ], [ 4096, %entry.for.body_crit_edge ]
  %cachetag = getelementptr i8, ptr %.pn21, i32 -36
  %0 = ptrtoint ptr %cachetag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cachetag, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %for.body
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef %limit.019, ptr noundef nonnull @.str.61, ptr noundef nonnull %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %if.then.for.end_crit_edge, label %if.end

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %add = add i32 %call, %count.020
  %sub = sub i32 %limit.019, %call
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %limit.1 = phi i32 [ %sub, %if.end ], [ %limit.019, %for.body.for.inc_crit_edge ]
  %count.1 = phi i32 [ %add, %if.end ], [ %count.020, %for.body.for.inc_crit_edge ]
  %2 = ptrtoint ptr %.pn21 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn21, align 4
  %cmp.not = icmp eq ptr %.pn, @v9fs_sessionlist
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then.for.end_crit_edge, %entry.for.end_crit_edge
  %count.2 = phi i32 [ 0, %entry.for.end_crit_edge ], [ %call, %if.then.for.end_crit_edge ], [ %count.1, %for.inc.for.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @v9fs_sessionlist_lock) #8
  ret i32 %count.2
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @v9fs_sysfs_init() unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fs_kobj to i32))
  %0 = load ptr, ptr @fs_kobj, align 4
  %call = tail call ptr @kobject_create_and_add(ptr noundef nonnull @.str.74, ptr noundef %0) #8
  store ptr %call, ptr @v9fs_kobj, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @sysfs_create_group(ptr noundef nonnull %call, ptr noundef nonnull @v9fs_attr_group) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.return_crit_edge, label %if.then3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %1 = load ptr, ptr @v9fs_kobj, align 4
  tail call void @kobject_put(ptr noundef %1) #8
  br label %return

return:                                           ; preds = %if.then3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -12, %if.then3 ], [ -12, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @v9fs_inode_init_once(ptr noundef %foo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %foo to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %foo, align 8
  %qid = getelementptr inbounds %struct.v9fs_inode, ptr %foo, i32 0, i32 1
  %1 = call ptr @memset(ptr %qid, i32 0, i32 16)
  %vfs_inode = getelementptr inbounds %struct.v9fs_inode, ptr %foo, i32 0, i32 5
  tail call void @inode_init_once(ptr noundef %vfs_inode) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_once(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_create_and_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin }
attributes #12 = { nobuiltin nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !37, !38, !40, !42, !43, !45, !46, !48, !50, !52, !54, !56, !58, !59, !61, !63, !65, !67, !69, !71, !73, !75, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !97, !98, !99, !101, !103, !104, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !136, !138, !140, !142, !144, !145, !146, !148, !149, !151, !153, !155, !157, !159, !161, !163, !165, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !180, !182}
!llvm.named.register.sp = !{!184}
!llvm.module.flags = !{!185, !186, !187, !188, !189, !190, !191, !192}
!llvm.ident = !{!193}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/9p/v9fs.c", i32 109, i32 17}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/9p/v9fs.c", i32 111, i32 17}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/9p/v9fs.c", i32 114, i32 17}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/9p/v9fs.c", i32 117, i32 17}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/9p/v9fs.c", i32 118, i32 27}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/9p/v9fs.c", i32 119, i32 17}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/9p/v9fs.c", i32 120, i32 27}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/9p/v9fs.c", i32 121, i32 17}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/9p/v9fs.c", i32 123, i32 15}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/9p/v9fs.c", i32 125, i32 17}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/9p/v9fs.c", i32 128, i32 17}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/9p/v9fs.c", i32 133, i32 15}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/9p/v9fs.c", i32 136, i32 15}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/9p/v9fs.c", i32 139, i32 15}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/9p/v9fs.c", i32 142, i32 17}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/9p/v9fs.c", i32 148, i32 15}
!32 = !{ptr @v9fs_session_init.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../fs/9p/v9fs.c", i32 402, i32 2}
!34 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @__func__.v9fs_session_init, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/9p/v9fs.c", i32 411, i32 3}
!37 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/9p/v9fs.c", i32 461, i32 3}
!40 = !{ptr @__func__.v9fs_session_cancel, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/9p/v9fs.c", i32 529, i32 2}
!42 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @__func__.v9fs_session_begin_cancel, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/9p/v9fs.c", i32 542, i32 2}
!45 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @__initcall__kmod_9p__272_731_init_v9fs6, !47, !"__initcall__kmod_9p__272_731_init_v9fs6", i1 false, i1 false}
!47 = !{!"../fs/9p/v9fs.c", i32 731, i32 1}
!48 = !{ptr @__exitcall_exit_v9fs, !49, !"__exitcall_exit_v9fs", i1 false, i1 false}
!49 = !{!"../fs/9p/v9fs.c", i32 732, i32 1}
!50 = !{ptr @__UNIQUE_ID_author273, !51, !"__UNIQUE_ID_author273", i1 false, i1 false}
!51 = !{!"../fs/9p/v9fs.c", i32 734, i32 1}
!52 = !{ptr @__UNIQUE_ID_author274, !53, !"__UNIQUE_ID_author274", i1 false, i1 false}
!53 = !{!"../fs/9p/v9fs.c", i32 735, i32 1}
!54 = !{ptr @__UNIQUE_ID_author275, !55, !"__UNIQUE_ID_author275", i1 false, i1 false}
!55 = !{!"../fs/9p/v9fs.c", i32 736, i32 1}
!56 = !{ptr @__UNIQUE_ID_file276, !57, !"__UNIQUE_ID_file276", i1 false, i1 false}
!57 = !{!"../fs/9p/v9fs.c", i32 737, i32 1}
!58 = !{ptr @__UNIQUE_ID_license277, !57, !"__UNIQUE_ID_license277", i1 false, i1 false}
!59 = !{ptr @v9fs_inode_cache, !60, !"v9fs_inode_cache", i1 false, i1 false}
!60 = !{!"../fs/9p/v9fs.c", i32 29, i32 20}
!61 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/9p/v9fs.c", i32 73, i32 17}
!63 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/9p/v9fs.c", i32 74, i32 17}
!65 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/9p/v9fs.c", i32 75, i32 18}
!67 = !{ptr @.str.24, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/9p/v9fs.c", i32 76, i32 20}
!69 = !{ptr @v9fs_cache_modes, !70, !"v9fs_cache_modes", i1 false, i1 false}
!70 = !{!"../fs/9p/v9fs.c", i32 72, i32 26}
!71 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/9p/v9fs.c", i32 189, i32 31}
!73 = !{ptr @__func__.v9fs_parse_options, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/9p/v9fs.c", i32 200, i32 5}
!75 = !{ptr @.str.26, !74, !"<string literal>", i1 false, i1 false}
!76 = distinct !{null, !77, !"__warned", i1 false, i1 false}
!77 = !{!"../fs/9p/v9fs.c", i32 219, i32 31}
!78 = !{ptr @.str.27, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/9p/v9fs.c", i32 221, i32 5}
!80 = distinct !{null, !81, !"__warned", i1 false, i1 false}
!81 = !{!"../fs/9p/v9fs.c", i32 234, i32 31}
!82 = !{ptr @.str.29, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/9p/v9fs.c", i32 236, i32 5}
!84 = !{ptr @.str.30, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/9p/v9fs.c", i32 293, i32 5}
!86 = !{ptr @.str.31, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/9p/v9fs.c", i32 310, i32 5}
!88 = !{ptr @.str.32, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../fs/9p/v9fs.c", i32 316, i32 18}
!90 = !{ptr @.str.33, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../fs/9p/v9fs.c", i32 318, i32 23}
!92 = !{ptr @.str.34, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/9p/v9fs.c", i32 320, i32 23}
!94 = !{ptr @.str.35, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/9p/v9fs.c", i32 329, i32 6}
!96 = !{ptr @.str.36, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @v9fs_parse_options._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @v9fs_parse_options._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = distinct !{null, !100, !"__warned", i1 false, i1 false}
!100 = !{!"../fs/9p/v9fs.c", i32 334, i32 28}
!101 = !{ptr @.str.39, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/9p/v9fs.c", i32 337, i32 6}
!103 = !{ptr @v9fs_parse_options._entry.38, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @v9fs_parse_options._entry_ptr.40, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.41, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../fs/9p/v9fs.c", i32 362, i32 5}
!107 = !{ptr @.str.42, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../fs/9p/v9fs.c", i32 54, i32 14}
!109 = !{ptr @.str.43, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../fs/9p/v9fs.c", i32 55, i32 16}
!111 = !{ptr @.str.44, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/9p/v9fs.c", i32 56, i32 16}
!113 = !{ptr @.str.45, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../fs/9p/v9fs.c", i32 57, i32 13}
!115 = !{ptr @.str.46, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../fs/9p/v9fs.c", i32 58, i32 14}
!117 = !{ptr @.str.47, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../fs/9p/v9fs.c", i32 59, i32 19}
!119 = !{ptr @.str.48, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../fs/9p/v9fs.c", i32 60, i32 17}
!121 = !{ptr @.str.49, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../fs/9p/v9fs.c", i32 61, i32 14}
!123 = !{ptr @.str.50, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../fs/9p/v9fs.c", i32 65, i32 17}
!125 = !{ptr @.str.51, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../fs/9p/v9fs.c", i32 66, i32 15}
!127 = !{ptr @.str.52, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../fs/9p/v9fs.c", i32 67, i32 17}
!129 = !{ptr @.str.53, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../fs/9p/v9fs.c", i32 68, i32 20}
!131 = !{ptr @tokens, !132, !"tokens", i1 false, i1 false}
!132 = !{!"../fs/9p/v9fs.c", i32 53, i32 28}
!133 = !{ptr @__func__.get_cache_mode, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../fs/9p/v9fs.c", i32 86, i32 3}
!135 = !{ptr @.str.54, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.55, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../fs/9p/v9fs.c", i32 89, i32 3}
!138 = !{ptr @.str.56, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../fs/9p/v9fs.c", i32 92, i32 3}
!140 = !{ptr @.str.57, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../fs/9p/v9fs.c", i32 95, i32 3}
!142 = !{ptr @.str.58, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../fs/9p/v9fs.c", i32 97, i32 3}
!144 = !{ptr @get_cache_mode._entry, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @get_cache_mode._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.59, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../fs/9p/v9fs.c", i32 27, i32 8}
!148 = !{ptr @v9fs_sessionlist_lock, !147, !"v9fs_sessionlist_lock", i1 false, i1 false}
!149 = !{ptr @v9fs_sessionlist, !150, !"v9fs_sessionlist", i1 false, i1 false}
!150 = !{!"../fs/9p/v9fs.c", i32 28, i32 8}
!151 = !{ptr @v9fs_kobj, !152, !"v9fs_kobj", i1 false, i1 false}
!152 = !{!"../fs/9p/v9fs.c", i32 548, i32 24}
!153 = !{ptr @v9fs_attr_group, !154, !"v9fs_attr_group", i1 false, i1 false}
!154 = !{!"../fs/9p/v9fs.c", i32 589, i32 37}
!155 = !{ptr @v9fs_attrs, !156, !"v9fs_attrs", i1 false, i1 false}
!156 = !{!"../fs/9p/v9fs.c", i32 582, i32 26}
!157 = !{ptr @.str.60, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../fs/9p/v9fs.c", i32 579, i32 48}
!159 = !{ptr @v9fs_attr_cache, !160, !"v9fs_attr_cache", i1 false, i1 false}
!160 = !{!"../fs/9p/v9fs.c", i32 579, i32 30}
!161 = !{ptr @.str.61, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../fs/9p/v9fs.c", i32 564, i32 29}
!163 = !{ptr @.str.62, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../fs/9p/v9fs.c", i32 688, i32 2}
!165 = !{ptr @.str.63, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @init_v9fs._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @init_v9fs._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.65, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../fs/9p/v9fs.c", i32 693, i32 3}
!170 = !{ptr @init_v9fs._entry.64, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @init_v9fs._entry_ptr.66, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.68, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../fs/9p/v9fs.c", i32 699, i32 3}
!174 = !{ptr @init_v9fs._entry.67, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @init_v9fs._entry_ptr.69, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.71, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../fs/9p/v9fs.c", i32 704, i32 3}
!178 = !{ptr @init_v9fs._entry.70, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @init_v9fs._entry_ptr.72, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.73, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../fs/9p/v9fs.c", i32 639, i32 39}
!182 = !{ptr @.str.74, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../fs/9p/v9fs.c", i32 600, i32 37}
!184 = !{!"sp"}
!185 = !{i32 1, !"wchar_size", i32 2}
!186 = !{i32 1, !"min_enum_size", i32 4}
!187 = !{i32 8, !"branch-target-enforcement", i32 0}
!188 = !{i32 8, !"sign-return-address", i32 0}
!189 = !{i32 8, !"sign-return-address-all", i32 0}
!190 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!191 = !{i32 7, !"uwtable", i32 1}
!192 = !{i32 7, !"frame-pointer", i32 2}
!193 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!194 = !{!"auto-init"}
