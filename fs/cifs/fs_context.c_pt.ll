; ModuleID = '/llk/IR_all_yes/fs/cifs/fs_context.c_pt.bc'
source_filename = "../fs/cifs/fs_context.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fs_parameter_spec = type { ptr, ptr, i8, i16, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.smb_version_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.smb_version_values = type { ptr, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i16, i16, i32 }
%struct.fs_context_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.match_token = type { i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.smb3_fs_context = type <{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i8], [16 x i8], %struct.kuid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i16, i16, i32, i8, i16, i8, i8, [5 x i8], [16 x i8], [2 x i8], i32, i32, i32, i32, i32, i8, [3 x i8], i32, i32, ptr, ptr, ptr, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, ptr, i32, [4 x i8], i64, i32, i32, i32, i16, i8, i8, ptr, [4 x i8] }>
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.__kernel_sockaddr_storage = type { %union.anon.147 }
%union.anon.147 = type { ptr, [124 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.108, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
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
%union.anon.108 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.39 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.39 = type { %struct.callback_head }
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i32, i24 }
%struct.p_log = type { ptr, ptr }
%struct.cifs_sb_info = type { %struct.rb_root, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, i32, %struct.delayed_work, %struct.callback_head, ptr, %struct.uuid_t, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.uuid_t = type { [16 x i8] }
%struct.fs_parse_result = type { i8, %union.anon.127 }
%union.anon.127 = type { i64 }
%struct.fs_parameter = type { ptr, i8, %union.anon.126, i32, i32 }
%union.anon.126 = type { ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.117, %struct.list_head, %struct.list_head, %union.anon.118 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.16, ptr }
%union.anon.16 = type { i64 }
%struct.lockref = type { %union.anon.18 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { %struct.spinlock, i32 }
%union.anon.117 = type { %struct.list_head }
%union.anon.118 = type { %struct.hlist_node }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.substring_t = type { ptr, ptr }

@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"user_xattr\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"forceuid\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"multichannel\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"forcegid\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"noblocksend\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"noautotune\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nolease\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hard\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"soft\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"perm\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nodelete\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mapposix\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mapchars\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nomapchars\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sfu\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"nodfs\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"posixpaths\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"unix\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"linux\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"posix\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nocase\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ignorecase\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"brl\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"handlecache\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"forcemandatorylock\00", [45 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"forcemand\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"setuidfromacl\00", [18 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"idsfromsid\00", [21 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"setuids\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dynperm\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"intr\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"strictsync\00", [21 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"serverino\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rwpidforward\00", [19 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cifsacl\00", [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"acl\00", [28 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"locallease\00", [21 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sign\00", [27 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ignore_signature\00", [47 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"signloosely\00", [20 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"seal\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"noac\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fsc\00", [28 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mfsymlinks\00", [21 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"multiuser\00", [22 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sloppy\00", [25 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nosharesock\00", [20 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"persistenthandles\00", [46 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"resilienthandles\00", [47 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tcpnodelay\00", [21 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"domainauto\00", [21 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rdma\00", [27 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"modesid\00", [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"modefromsid\00", [20 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rootfs\00", [25 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"compress\00", [23 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"witness\00", [24 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"backupuid\00", [22 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"backupgid\00", [22 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"uid\00", [28 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cruid\00", [26 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gid\00", [28 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"file_mode\00", [22 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dirmode\00", [24 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dir_mode\00", [23 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"port\00", [27 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"min_enc_offload\00", [16 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"esize\00", [26 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bsize\00", [26 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rasize\00", [25 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rsize\00", [26 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"wsize\00", [26 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"actimeo\00", [24 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"acdirmax\00", [23 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"acregmax\00", [23 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"echo_interval\00", [18 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"max_credits\00", [20 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"handletimeout\00", [18 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"snapshot\00", [23 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"max_channels\00", [19 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"source\00", [25 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"user\00", [27 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"username\00", [23 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pass\00", [27 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"password\00", [23 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ip\00", [29 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"addr\00", [27 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"domain\00", [25 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dom\00", [28 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"srcaddr\00", [24 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"iocharset\00", [22 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"netbiosname\00", [20 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"servern\00", [24 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ver\00", [28 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vers\00", [27 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sec\00", [28 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cache\00", [26 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"guest\00", [26 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"noatime\00", [24 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"relatime\00", [23 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"_netdev\00", [24 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"suid\00", [27 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"exec\00", [27 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dev\00", [28 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mand\00", [27 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"auto\00", [27 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cred\00", [27 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"credentials\00", [20 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"unc\00", [28 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"prefixpath\00", [21 x i8] zeroinitializer }, align 32
@smb3_fs_parameters = dso_local constant { [111 x %struct.fs_parameter_spec], [432 x i8] } { [111 x %struct.fs_parameter_spec] [%struct.fs_parameter_spec { ptr @.str, ptr null, i8 0, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.1, ptr null, i8 1, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.2, ptr null, i8 47, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.3, ptr null, i8 2, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.4, ptr null, i8 3, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.5, ptr null, i8 4, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.6, ptr null, i8 5, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.7, ptr null, i8 6, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.8, ptr null, i8 7, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.9, ptr null, i8 8, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.10, ptr null, i8 9, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.11, ptr null, i8 10, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.12, ptr null, i8 11, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.13, ptr null, i8 12, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.14, ptr null, i8 13, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.15, ptr null, i8 14, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.16, ptr null, i8 15, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.17, ptr null, i8 16, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.18, ptr null, i8 16, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.19, ptr null, i8 16, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.20, ptr null, i8 17, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.21, ptr null, i8 17, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.22, ptr null, i8 18, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.23, ptr null, i8 19, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.24, ptr null, i8 20, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.25, ptr null, i8 20, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.26, ptr null, i8 21, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.27, ptr null, i8 21, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.28, ptr null, i8 22, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.29, ptr null, i8 23, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.30, ptr null, i8 24, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.31, ptr null, i8 25, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.32, ptr null, i8 26, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.33, ptr null, i8 27, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.34, ptr null, i8 28, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.35, ptr null, i8 29, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.36, ptr null, i8 30, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.37, ptr null, i8 31, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.38, ptr null, i8 32, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.39, ptr null, i8 32, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.40, ptr null, i8 33, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.41, ptr null, i8 34, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.42, ptr null, i8 35, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.43, ptr null, i8 36, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.44, ptr null, i8 37, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.45, ptr null, i8 38, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.46, ptr null, i8 39, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.47, ptr null, i8 40, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.48, ptr null, i8 41, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.49, ptr null, i8 42, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.50, ptr null, i8 43, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.51, ptr null, i8 44, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.52, ptr null, i8 45, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.53, ptr null, i8 45, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.54, ptr null, i8 46, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.55, ptr null, i8 48, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.56, ptr null, i8 49, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.57, ptr @fs_param_is_u32, i8 50, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.58, ptr @fs_param_is_u32, i8 51, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.59, ptr @fs_param_is_u32, i8 52, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.60, ptr @fs_param_is_u32, i8 53, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.61, ptr @fs_param_is_u32, i8 54, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.62, ptr @fs_param_is_u32, i8 56, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.63, ptr @fs_param_is_u32, i8 57, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.64, ptr @fs_param_is_u32, i8 57, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.65, ptr @fs_param_is_u32, i8 55, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.66, ptr @fs_param_is_u32, i8 58, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.67, ptr @fs_param_is_u32, i8 58, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.68, ptr @fs_param_is_u32, i8 59, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.69, ptr @fs_param_is_u32, i8 60, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.70, ptr @fs_param_is_u32, i8 61, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.71, ptr @fs_param_is_u32, i8 62, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.72, ptr @fs_param_is_u32, i8 63, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.73, ptr @fs_param_is_u32, i8 64, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.74, ptr @fs_param_is_u32, i8 65, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.75, ptr @fs_param_is_u32, i8 66, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.76, ptr @fs_param_is_u32, i8 67, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.77, ptr @fs_param_is_u32, i8 70, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.78, ptr @fs_param_is_u64, i8 68, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.79, ptr @fs_param_is_u32, i8 69, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.80, ptr @fs_param_is_string, i8 71, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.81, ptr @fs_param_is_string, i8 72, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.82, ptr @fs_param_is_string, i8 72, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.83, ptr @fs_param_is_string, i8 73, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.84, ptr @fs_param_is_string, i8 73, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.85, ptr @fs_param_is_string, i8 74, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.86, ptr @fs_param_is_string, i8 74, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.87, ptr @fs_param_is_string, i8 75, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.88, ptr @fs_param_is_string, i8 75, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.89, ptr @fs_param_is_string, i8 76, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.90, ptr @fs_param_is_string, i8 77, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.91, ptr @fs_param_is_string, i8 78, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.92, ptr @fs_param_is_string, i8 79, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.93, ptr @fs_param_is_string, i8 80, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.94, ptr @fs_param_is_string, i8 81, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.95, ptr @fs_param_is_string, i8 82, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.96, ptr @fs_param_is_string, i8 83, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.97, ptr null, i8 84, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.98, ptr null, i8 84, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.99, ptr null, i8 84, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.100, ptr null, i8 84, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.101, ptr null, i8 84, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.102, ptr null, i8 84, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.103, ptr null, i8 84, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.104, ptr null, i8 84, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.105, ptr null, i8 84, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.106, ptr @fs_param_is_string, i8 84, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.107, ptr @fs_param_is_string, i8 84, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.108, ptr @fs_param_is_string, i8 84, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.109, ptr @fs_param_is_string, i8 84, i16 0, ptr null }, %struct.fs_parameter_spec zeroinitializer], [432 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"/\\\00", [29 x i8] zeroinitializer }, align 32
@smb3_parse_devname._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.112, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.smb3_parse_devname = private unnamed_addr constant [19 x i8] c"smb3_parse_devname\00", align 1
@smb3_parse_devname._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @__func__.smb3_parse_devname, ptr @.str.114, i32 488, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013CIFS: VFS: Device name not specified\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fs/cifs/fs_context.c\00", [43 x i8] zeroinitializer }, align 32
@smb3_parse_devname._entry_ptr = internal global ptr @smb3_parse_devname._entry, section ".printk_index", align 4
@smb30_operations = external dso_local global %struct.smb_version_operations, align 4
@smbdefault_values = external dso_local global %struct.smb_version_values, align 4
@smb3_fs_context_ops = internal constant { %struct.fs_context_operations, [40 x i8] } { %struct.fs_context_operations { ptr @smb3_fs_context_free, ptr null, ptr @smb3_fs_context_parse_param, ptr @smb3_fs_context_parse_monolithic, ptr @smb3_get_tree, ptr @smb3_reconfigure }, [40 x i8] zeroinitializer }, align 32
@smb3_update_mnt_flags._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.112, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.smb3_update_mnt_flags = private unnamed_addr constant [22 x i8] c"smb3_update_mnt_flags\00", align 1
@smb3_update_mnt_flags._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @__func__.smb3_update_mnt_flags, ptr @.str.114, i32 1758, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013CIFS: VFS: mount options mfsymlinks and sfu both enabled\0A\00", [36 x i8] zeroinitializer }, align 32
@smb3_update_mnt_flags._entry_ptr = internal global ptr @smb3_update_mnt_flags._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.118 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"smb3\00", [27 x i8] zeroinitializer }, align 32
@cifsFYI = external dso_local local_unnamed_addr global i32, align 4
@smb3_fs_context_parse_param._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.112, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.119, ptr @.str.120, ptr @.str.114, ptr @.str.121, i8 0, i8 -44, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.119 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cifs\00", [27 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"smb3_fs_context_parse_param\00", [36 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"CIFS: %s: CIFS: parsing cifs mount option '%s'\0A\00", [48 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._rs.122 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.112, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.120, ptr @.str.114, i32 876, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013CIFS: VFS: SMB3 compression support is experimental\0A\00", [41 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._entry_ptr = internal global ptr @smb3_fs_context_parse_param._entry, section ".printk_index", align 4
@.str.128 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: Invalid blocksize\0A\00", [41 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._rs.129 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.112, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.120, ptr @.str.114, i32 1017, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013CIFS: VFS: %s: Invalid blocksize\0A\00", [60 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._entry_ptr.132 = internal global ptr @smb3_fs_context_parse_param._entry.130, section ".printk_index", align 4
@.str.133 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: Invalid rasize %d vs. %d\0A\00", [34 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._rs.134 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.112, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.120, ptr @.str.114, i32 1038, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013CIFS: VFS: %s: Invalid rasize %d vs. %d\0A\00", [53 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._entry_ptr.137 = internal global ptr @smb3_fs_context_parse_param._entry.135, section ".printk_index", align 4
@.str.138 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"acregmax too large\0A\00", [44 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._rs.139 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.112, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.120, ptr @.str.114, i32 1054, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013CIFS: VFS: acregmax too large\0A\00", [63 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._entry_ptr.142 = internal global ptr @smb3_fs_context_parse_param._entry.140, section ".printk_index", align 4
@.str.143 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"acdirmax too large\0A\00", [44 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._rs.144 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.112, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.120, ptr @.str.114, i32 1061, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013CIFS: VFS: acdirmax too large\0A\00", [63 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._entry_ptr.147 = internal global ptr @smb3_fs_context_parse_param._entry.145, section ".printk_index", align 4
@.str.148 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"timeout too large\0A\00", [45 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._rs.149 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.112, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.120, ptr @.str.114, i32 1067, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013CIFS: VFS: timeout too large\0A\00", [32 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._entry_ptr.152 = internal global ptr @smb3_fs_context_parse_param._entry.150, section ".printk_index", align 4
@.str.153 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"actimeo ignored since acregmax or acdirmax specified\0A\00", [42 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._rs.154 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.112, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.120, ptr @.str.114, i32 1072, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013CIFS: VFS: actimeo ignored since acregmax or acdirmax specified\0A\00", [61 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._entry_ptr.157 = internal global ptr @smb3_fs_context_parse_param._entry.155, section ".printk_index", align 4
@.str.158 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Invalid max_credits value\0A\00", [33 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._rs.159 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.112, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._entry.160 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.120, ptr @.str.114, i32 1086, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013CIFS: VFS: %s: Invalid max_credits value\0A\00", [52 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._entry_ptr.162 = internal global ptr @smb3_fs_context_parse_param._entry.160, section ".printk_index", align 4
@.str.163 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: Invalid max_channels value, needs to be 1-%d\0A\00", [46 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._rs.164 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.112, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.120, ptr @.str.114, i32 1094, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013CIFS: VFS: %s: Invalid max_channels value, needs to be 1-%d\0A\00", [33 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._entry_ptr.167 = internal global ptr @smb3_fs_context_parse_param._entry.165, section ".printk_index", align 4
@.str.168 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Invalid handle cache timeout, longer than 16 minutes\0A\00", [42 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._rs.169 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.112, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._entry.170 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.120, ptr @.str.114, i32 1105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013CIFS: VFS: Invalid handle cache timeout, longer than 16 minutes\0A\00", [61 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._entry_ptr.172 = internal global ptr @smb3_fs_context_parse_param._entry.170, section ".printk_index", align 4
@.str.173 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Unable to allocate memory for devname\0A\00", [57 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._rs.174 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.112, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._entry.175 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.120, ptr @.str.114, i32 1116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013CIFS: VFS: Unable to allocate memory for devname\0A\00", [44 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._entry_ptr.177 = internal global ptr @smb3_fs_context_parse_param._entry.175, section ".printk_index", align 4
@.str.178 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Malformed UNC in devname\0A\00", [38 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._rs.179 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.112, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._entry.180 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.120, ptr @.str.114, i32 1119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013CIFS: VFS: Malformed UNC in devname\0A\00", [57 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._entry_ptr.182 = internal global ptr @smb3_fs_context_parse_param._entry.180, section ".printk_index", align 4
@.str.183 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unknown error parsing devname\0A\00", [33 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._rs.184 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.112, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._entry.185 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.186, ptr @.str.120, ptr @.str.114, i32 1122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013CIFS: VFS: Unknown error parsing devname\0A\00", [52 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._entry_ptr.187 = internal global ptr @smb3_fs_context_parse_param._entry.185, section ".printk_index", align 4
@.str.188 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"OOM when copying UNC string\0A\00", [35 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._rs.189 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.112, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._entry.190 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.191, ptr @.str.120, ptr @.str.114, i32 1127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013CIFS: VFS: OOM when copying UNC string\0A\00", [54 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._entry_ptr.192 = internal global ptr @smb3_fs_context_parse_param._entry.190, section ".printk_index", align 4
@smb3_fs_context_parse_param._rs.193 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.112, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._entry.194 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.191, ptr @.str.120, ptr @.str.114, i32 1132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._entry_ptr.195 = internal global ptr @smb3_fs_context_parse_param._entry.194, section ".printk_index", align 4
@smb3_fs_context_parse_param._entry.196 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.197, ptr @.str.120, ptr @.str.114, i32 1147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\014CIFS: username too long\0A\00", [37 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._entry_ptr.198 = internal global ptr @smb3_fs_context_parse_param._entry.196, section ".printk_index", align 4
@.str.199 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"OOM when copying username string\0A\00", [62 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._rs.200 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.112, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._entry.201 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.202, ptr @.str.120, ptr @.str.114, i32 1152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013CIFS: VFS: OOM when copying username string\0A\00", [49 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._entry_ptr.203 = internal global ptr @smb3_fs_context_parse_param._entry.201, section ".printk_index", align 4
@.str.204 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"OOM when copying password string\0A\00", [62 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._rs.205 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.112, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._entry.206 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.120, ptr @.str.114, i32 1164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013CIFS: VFS: OOM when copying password string\0A\00", [49 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._entry_ptr.208 = internal global ptr @smb3_fs_context_parse_param._entry.206, section ".printk_index", align 4
@smb3_fs_context_parse_param._entry.209 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.210, ptr @.str.120, ptr @.str.114, i32 1176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013CIFS: bad ip= option (%s)\0A\00", [35 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._entry_ptr.211 = internal global ptr @smb3_fs_context_parse_param._entry.209, section ".printk_index", align 4
@smb3_fs_context_parse_param._entry.212 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.213, ptr @.str.120, ptr @.str.114, i32 1184, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014CIFS: domain name too long\0A\00", [34 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._entry_ptr.214 = internal global ptr @smb3_fs_context_parse_param._entry.212, section ".printk_index", align 4
@.str.215 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"OOM when copying domainname string\0A\00", [60 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._rs.216 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.112, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._entry.217 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.218, ptr @.str.120, ptr @.str.114, i32 1191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013CIFS: VFS: OOM when copying domainname string\0A\00", [47 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._entry_ptr.219 = internal global ptr @smb3_fs_context_parse_param._entry.217, section ".printk_index", align 4
@smb3_fs_context_parse_param._rs.220 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.112, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param.descriptor.221 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.119, ptr @.str.120, ptr @.str.114, ptr @.str.222, i8 1, i8 42, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.222 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"CIFS: %s: Domain name set\0A\00", [37 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._entry.223 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.224, ptr @.str.120, ptr @.str.114, i32 1201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014CIFS: Could not parse srcaddr: %s\0A\00", [59 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._entry_ptr.225 = internal global ptr @smb3_fs_context_parse_param._entry.223, section ".printk_index", align 4
@smb3_fs_context_parse_param._entry.226 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.227, ptr @.str.120, ptr @.str.114, i32 1207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014CIFS: iocharset name too long\0A\00", [63 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._entry_ptr.228 = internal global ptr @smb3_fs_context_parse_param._entry.226, section ".printk_index", align 4
@.str.229 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"default\00", [24 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"OOM when copying iocharset string\0A\00", [61 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._rs.231 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.112, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._entry.232 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.233, ptr @.str.120, ptr @.str.114, i32 1215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013CIFS: VFS: OOM when copying iocharset string\0A\00", [48 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._entry_ptr.234 = internal global ptr @smb3_fs_context_parse_param._entry.232, section ".printk_index", align 4
@smb3_fs_context_parse_param._rs.235 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.112, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param.descriptor.236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.119, ptr @.str.120, ptr @.str.114, ptr @.str.237, i8 1, i8 49, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.237 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"CIFS: %s: iocharset set to %s\0A\00", [33 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._entry.238 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.239, ptr @.str.120, ptr @.str.114, i32 1242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014CIFS: netbiosname longer than 15 truncated\0A\00", [50 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._entry_ptr.240 = internal global ptr @smb3_fs_context_parse_param._entry.238, section ".printk_index", align 4
@smb3_fs_context_parse_param._entry.241 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.242, ptr @.str.120, ptr @.str.114, i32 1262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014CIFS: server netbiosname longer than 15 truncated\0A\00", [43 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._entry_ptr.243 = internal global ptr @smb3_fs_context_parse_param._entry.241, section ".printk_index", align 4
@.str.244 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._entry.245 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.246, ptr @.str.120, ptr @.str.114, i32 1270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [102 x i8], [58 x i8] } { [102 x i8] c"\014CIFS: Bad mount helper ver=%s. Did you want SMB1 (CIFS) dialect and mean to type vers=1.0 instead?\0A\00", [58 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._entry_ptr.247 = internal global ptr @smb3_fs_context_parse_param._entry.245, section ".printk_index", align 4
@smb3_fs_context_parse_param._entry.248 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.249, ptr @.str.120, ptr @.str.114, i32 1277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014CIFS: Invalid mount helper version specified\0A\00", [48 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._entry_ptr.250 = internal global ptr @smb3_fs_context_parse_param._entry.248, section ".printk_index", align 4
@smb3_fs_context_parse_param.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@smb3_fs_context_parse_param._entry.251 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.252, ptr @.str.120, ptr @.str.114, i32 1299, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014CIFS: Witness protocol support is experimental\0A\00", [46 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._entry_ptr.253 = internal global ptr @smb3_fs_context_parse_param._entry.251, section ".printk_index", align 4
@smb3_fs_context_parse_param.__already_done.254 = internal unnamed_addr global i1 false, section ".data.once", align 1
@smb3_fs_context_parse_param._entry.255 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.256, ptr @.str.120, ptr @.str.114, i32 1317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014CIFS: conflicting posix mount options specified\0A\00", [45 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._entry_ptr.257 = internal global ptr @smb3_fs_context_parse_param._entry.255, section ".printk_index", align 4
@smb3_fs_context_parse_param.__already_done.258 = internal unnamed_addr global i1 false, section ".data.once", align 1
@smb3_fs_context_parse_param._entry.259 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.256, ptr @.str.120, ptr @.str.114, i32 1322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._entry_ptr.260 = internal global ptr @smb3_fs_context_parse_param._entry.259, section ".printk_index", align 4
@smb3_fs_context_parse_param._entry.261 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.262, ptr @.str.120, ptr @.str.114, i32 1399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"\014CIFS: Mount option noac not supported. Instead set /proc/fs/cifs/LookupCacheEnabled to 0\0A\00", [36 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._entry_ptr.263 = internal global ptr @smb3_fs_context_parse_param._entry.261, section ".printk_index", align 4
@.str.264 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"persistenthandles mount options conflict\0A\00", [54 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._rs.265 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.112, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._entry.266 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.267, ptr @.str.120, ptr @.str.114, i32 1424, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013CIFS: VFS: persistenthandles mount options conflict\0A\00", [41 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._entry_ptr.268 = internal global ptr @smb3_fs_context_parse_param._entry.266, section ".printk_index", align 4
@smb3_fs_context_parse_param._rs.269 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.112, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._entry.270 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.267, ptr @.str.120, ptr @.str.114, i32 1430, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._entry_ptr.271 = internal global ptr @smb3_fs_context_parse_param._entry.270, section ".printk_index", align 4
@smb3_fs_context_parse_param._rs.272 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.112, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._entry.273 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.267, ptr @.str.120, ptr @.str.114, i32 1441, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smb3_fs_context_parse_param._entry_ptr.274 = internal global ptr @smb3_fs_context_parse_param._entry.273, section ".printk_index", align 4
@cifs_smb_version_tokens = internal constant { [11 x %struct.match_token], [40 x i8] } { [11 x %struct.match_token] [%struct.match_token { i32 1, ptr @.str.300 }, %struct.match_token { i32 2, ptr @.str.301 }, %struct.match_token { i32 3, ptr @.str.302 }, %struct.match_token { i32 4, ptr @.str.303 }, %struct.match_token { i32 5, ptr @.str.304 }, %struct.match_token { i32 5, ptr @.str.305 }, %struct.match_token { i32 6, ptr @.str.306 }, %struct.match_token { i32 6, ptr @.str.307 }, %struct.match_token { i32 7, ptr @.str.308 }, %struct.match_token { i32 8, ptr @.str.229 }, %struct.match_token { i32 9, ptr null }], [40 x i8] zeroinitializer }, align 32
@disable_legacy_dialects = external dso_local local_unnamed_addr global i8, align 1
@.str.275 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"mount with legacy dialect disabled\0A\00", [60 x i8] zeroinitializer }, align 32
@cifs_parse_smb_version._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.112, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.cifs_parse_smb_version = private unnamed_addr constant [23 x i8] c"cifs_parse_smb_version\00", align 1
@cifs_parse_smb_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.276, ptr @__func__.cifs_parse_smb_version, ptr @.str.114, i32 346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013CIFS: VFS: mount with legacy dialect disabled\0A\00", [47 x i8] zeroinitializer }, align 32
@cifs_parse_smb_version._entry_ptr = internal global ptr @cifs_parse_smb_version._entry, section ".printk_index", align 4
@.str.277 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"vers=1.0 (cifs) not permitted when mounting with smb3\0A\00", [41 x i8] zeroinitializer }, align 32
@cifs_parse_smb_version._rs.278 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.112, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_parse_smb_version._entry.279 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.280, ptr @__func__.cifs_parse_smb_version, ptr @.str.114, i32 350, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013CIFS: VFS: vers=1.0 (cifs) not permitted when mounting with smb3\0A\00", [60 x i8] zeroinitializer }, align 32
@cifs_parse_smb_version._entry_ptr.281 = internal global ptr @cifs_parse_smb_version._entry.279, section ".printk_index", align 4
@.str.282 = internal constant { [107 x i8], [53 x i8] } { [107 x i8] c"Use of the less secure dialect vers=1.0 is not recommended unless required for access to very old servers\0A\00", [53 x i8] zeroinitializer }, align 32
@cifs_parse_smb_version._rs.283 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.112, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_parse_smb_version._entry.284 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.285, ptr @__func__.cifs_parse_smb_version, ptr @.str.114, i32 353, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [120 x i8], [40 x i8] } { [120 x i8] c"\013CIFS: VFS: Use of the less secure dialect vers=1.0 is not recommended unless required for access to very old servers\0A\00", [40 x i8] zeroinitializer }, align 32
@cifs_parse_smb_version._entry_ptr.286 = internal global ptr @cifs_parse_smb_version._entry.284, section ".printk_index", align 4
@smb1_operations = external dso_local global %struct.smb_version_operations, align 4
@smb1_values = external dso_local global %struct.smb_version_values, align 4
@cifs_parse_smb_version._rs.287 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.112, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_parse_smb_version._entry.288 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.276, ptr @__func__.cifs_parse_smb_version, ptr @.str.114, i32 359, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cifs_parse_smb_version._entry_ptr.289 = internal global ptr @cifs_parse_smb_version._entry.288, section ".printk_index", align 4
@.str.290 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"vers=2.0 not permitted when mounting with smb3\0A\00", [48 x i8] zeroinitializer }, align 32
@cifs_parse_smb_version._rs.291 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.112, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_parse_smb_version._entry.292 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.293, ptr @__func__.cifs_parse_smb_version, ptr @.str.114, i32 363, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.293 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013CIFS: VFS: vers=2.0 not permitted when mounting with smb3\0A\00", [35 x i8] zeroinitializer }, align 32
@cifs_parse_smb_version._entry_ptr.294 = internal global ptr @cifs_parse_smb_version._entry.292, section ".printk_index", align 4
@smb20_operations = external dso_local global %struct.smb_version_operations, align 4
@smb20_values = external dso_local global %struct.smb_version_values, align 4
@smb21_operations = external dso_local global %struct.smb_version_operations, align 4
@smb21_values = external dso_local global %struct.smb_version_values, align 4
@smb30_values = external dso_local global %struct.smb_version_values, align 4
@smb302_values = external dso_local global %struct.smb_version_values, align 4
@smb311_operations = external dso_local global %struct.smb_version_operations, align 4
@smb311_values = external dso_local global %struct.smb_version_values, align 4
@smb3any_values = external dso_local global %struct.smb_version_values, align 4
@.str.295 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unknown vers= option specified: %s\0A\00", [60 x i8] zeroinitializer }, align 32
@cifs_parse_smb_version._rs.296 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.112, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_parse_smb_version._entry.297 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.298, ptr @__func__.cifs_parse_smb_version, ptr @.str.114, i32 402, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.298 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013CIFS: VFS: Unknown vers= option specified: %s\0A\00", [47 x i8] zeroinitializer }, align 32
@cifs_parse_smb_version._entry_ptr.299 = internal global ptr @cifs_parse_smb_version._entry.297, section ".printk_index", align 4
@.str.300 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@.str.301 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2.0\00", [28 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2.1\00", [28 x i8] zeroinitializer }, align 32
@.str.303 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"3.0\00", [28 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"3.02\00", [27 x i8] zeroinitializer }, align 32
@.str.305 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"3.0.2\00", [26 x i8] zeroinitializer }, align 32
@.str.306 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"3.1.1\00", [26 x i8] zeroinitializer }, align 32
@.str.307 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"3.11\00", [27 x i8] zeroinitializer }, align 32
@.str.308 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"3\00", [30 x i8] zeroinitializer }, align 32
@cifs_secflavor_tokens = internal constant { [10 x %struct.match_token], [48 x i8] } { [10 x %struct.match_token] [%struct.match_token { i32 0, ptr @.str.316 }, %struct.match_token { i32 1, ptr @.str.317 }, %struct.match_token { i32 2, ptr @.str.318 }, %struct.match_token { i32 3, ptr @.str.319 }, %struct.match_token { i32 4, ptr @.str.320 }, %struct.match_token { i32 5, ptr @.str.321 }, %struct.match_token { i32 5, ptr @.str.322 }, %struct.match_token { i32 6, ptr @.str.323 }, %struct.match_token { i32 7, ptr @.str.324 }, %struct.match_token { i32 8, ptr null }], [48 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sec=krb5p is not supported!\0A\00", [35 x i8] zeroinitializer }, align 32
@cifs_parse_security_flavors._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.112, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.cifs_parse_security_flavors = private unnamed_addr constant [28 x i8] c"cifs_parse_security_flavors\00", align 1
@cifs_parse_security_flavors._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.310, ptr @__func__.cifs_parse_security_flavors, ptr @.str.114, i32 210, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.310 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013CIFS: VFS: sec=krb5p is not supported!\0A\00", [54 x i8] zeroinitializer }, align 32
@cifs_parse_security_flavors._entry_ptr = internal global ptr @cifs_parse_security_flavors._entry, section ".printk_index", align 4
@.str.311 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bad security option: %s\0A\00", [39 x i8] zeroinitializer }, align 32
@cifs_parse_security_flavors._rs.312 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.112, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_parse_security_flavors._entry.313 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.314, ptr @__func__.cifs_parse_security_flavors, ptr @.str.114, i32 234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.314 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013CIFS: VFS: bad security option: %s\0A\00", [58 x i8] zeroinitializer }, align 32
@cifs_parse_security_flavors._entry_ptr.315 = internal global ptr @cifs_parse_security_flavors._entry.313, section ".printk_index", align 4
@.str.316 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"krb5\00", [27 x i8] zeroinitializer }, align 32
@.str.317 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"krb5i\00", [26 x i8] zeroinitializer }, align 32
@.str.318 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"krb5p\00", [26 x i8] zeroinitializer }, align 32
@.str.319 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ntlmsspi\00", [23 x i8] zeroinitializer }, align 32
@.str.320 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ntlmssp\00", [24 x i8] zeroinitializer }, align 32
@.str.321 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nontlm\00", [25 x i8] zeroinitializer }, align 32
@.str.322 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ntlmv2\00", [25 x i8] zeroinitializer }, align 32
@.str.323 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ntlmv2i\00", [24 x i8] zeroinitializer }, align 32
@.str.324 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@cifs_cacheflavor_tokens = internal constant { [6 x %struct.match_token], [48 x i8] } { [6 x %struct.match_token] [%struct.match_token { i32 0, ptr @.str.327 }, %struct.match_token { i32 1, ptr @.str.328 }, %struct.match_token { i32 2, ptr @.str.324 }, %struct.match_token { i32 3, ptr @.str.329 }, %struct.match_token { i32 4, ptr @.str.330 }, %struct.match_token { i32 5, ptr null }], [48 x i8] zeroinitializer }, align 32
@.str.325 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bad cache= option: %s\0A\00", [41 x i8] zeroinitializer }, align 32
@cifs_parse_cache_flavor._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.112, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.cifs_parse_cache_flavor = private unnamed_addr constant [24 x i8] c"cifs_parse_cache_flavor\00", align 1
@cifs_parse_cache_flavor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.326, ptr @__func__.cifs_parse_cache_flavor, ptr @.str.114, i32 287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.326 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013CIFS: VFS: bad cache= option: %s\0A\00", [60 x i8] zeroinitializer }, align 32
@cifs_parse_cache_flavor._entry_ptr = internal global ptr @cifs_parse_cache_flavor._entry, section ".printk_index", align 4
@.str.327 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"loose\00", [26 x i8] zeroinitializer }, align 32
@.str.328 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"strict\00", [25 x i8] zeroinitializer }, align 32
@.str.329 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ro\00", [29 x i8] zeroinitializer }, align 32
@.str.330 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"singleclient\00", [19 x i8] zeroinitializer }, align 32
@cifs_mount_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.355, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @cifs_mount_mutex, i64 52), ptr getelementptr (i8, ptr @cifs_mount_mutex, i64 52) }, ptr @cifs_mount_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.356, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.331 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"SMB Direct requires Version >=3.0\0A\00", [61 x i8] zeroinitializer }, align 32
@smb3_fs_context_validate._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.112, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.smb3_fs_context_validate = private unnamed_addr constant [25 x i8] c"smb3_fs_context_validate\00", align 1
@smb3_fs_context_validate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.332, ptr @__func__.smb3_fs_context_validate, ptr @.str.114, i32 633, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.332 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013CIFS: VFS: SMB Direct requires Version >=3.0\0A\00", [48 x i8] zeroinitializer }, align 32
@smb3_fs_context_validate._entry_ptr = internal global ptr @smb3_fs_context_validate._entry, section ".printk_index", align 4
@smb3_fs_context_validate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@smb3_fs_context_validate._entry.333 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.334, ptr @__func__.smb3_fs_context_validate, ptr @.str.114, i32 646, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.334 = internal constant { [277 x i8], [75 x i8] } { [277 x i8] c"\014CIFS: No dialect specified on mount. Default has changed to a more secure dialect, SMB2.1 or later (e.g. SMB3.1.1), from CIFS (SMB1). To use the less secure SMB1 dialect to access old servers which do not support SMB3.1.1 (or even SMB3 or SMB2.1) specify vers=1.0 on mount.\0A\00", [75 x i8] zeroinitializer }, align 32
@smb3_fs_context_validate._entry_ptr.335 = internal global ptr @smb3_fs_context_validate._entry.333, section ".printk_index", align 4
@.str.336 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"CIFS mount error: No usable UNC path provided in device string!\0A\00", [63 x i8] zeroinitializer }, align 32
@smb3_fs_context_validate._rs.337 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.112, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb3_fs_context_validate._entry.338 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.339, ptr @__func__.smb3_fs_context_validate, ptr @.str.114, i32 650, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.339 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013CIFS: VFS: CIFS mount error: No usable UNC path provided in device string!\0A\00", [50 x i8] zeroinitializer }, align 32
@smb3_fs_context_validate._entry_ptr.340 = internal global ptr @smb3_fs_context_validate._entry.338, section ".printk_index", align 4
@.str.341 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Malformed UNC. Unable to find share name.\0A\00", [53 x i8] zeroinitializer }, align 32
@smb3_fs_context_validate._rs.342 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.112, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb3_fs_context_validate._entry.343 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.344, ptr @__func__.smb3_fs_context_validate, ptr @.str.114, i32 656, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.344 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013CIFS: VFS: Malformed UNC. Unable to find share name.\0A\00", [40 x i8] zeroinitializer }, align 32
@smb3_fs_context_validate._entry_ptr.345 = internal global ptr @smb3_fs_context_validate._entry.343, section ".printk_index", align 4
@smb3_fs_context_validate._entry.346 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.347, ptr @__func__.smb3_fs_context_validate, ptr @.str.114, i32 670, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.347 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013CIFS: Unable to determine destination address\0A\00", [47 x i8] zeroinitializer }, align 32
@smb3_fs_context_validate._entry_ptr.348 = internal global ptr @smb3_fs_context_validate._entry.346, section ".printk_index", align 4
@smb3_fs_context_validate._entry.349 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.350, ptr @__func__.smb3_fs_context_validate, ptr @.str.114, i32 680, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.350 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\015CIFS: ignoring forceuid mount option specified with no uid= option\0A\00", [58 x i8] zeroinitializer }, align 32
@smb3_fs_context_validate._entry_ptr.351 = internal global ptr @smb3_fs_context_validate._entry.349, section ".printk_index", align 4
@smb3_fs_context_validate._entry.352 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.353, ptr @__func__.smb3_fs_context_validate, ptr @.str.114, i32 685, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.353 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\015CIFS: ignoring forcegid mount option specified with no gid= option\0A\00", [58 x i8] zeroinitializer }, align 32
@smb3_fs_context_validate._entry_ptr.354 = internal global ptr @smb3_fs_context_validate._entry.352, section ".printk_index", align 4
@.str.355 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cifs_mount_mutex.wait_lock\00", [37 x i8] zeroinitializer }, align 32
@.str.356 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cifs_mount_mutex\00", [47 x i8] zeroinitializer }, align 32
@.str.357 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"can not change posixpaths during remount\0A\00", [54 x i8] zeroinitializer }, align 32
@smb3_verify_reconfigure_ctx._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.112, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.smb3_verify_reconfigure_ctx = private unnamed_addr constant [28 x i8] c"smb3_verify_reconfigure_ctx\00", align 1
@smb3_verify_reconfigure_ctx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.358, ptr @__func__.smb3_verify_reconfigure_ctx, ptr @.str.114, i32 738, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.358 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013CIFS: VFS: can not change posixpaths during remount\0A\00", [41 x i8] zeroinitializer }, align 32
@smb3_verify_reconfigure_ctx._entry_ptr = internal global ptr @smb3_verify_reconfigure_ctx._entry, section ".printk_index", align 4
@.str.359 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"can not change sec during remount\0A\00", [61 x i8] zeroinitializer }, align 32
@smb3_verify_reconfigure_ctx._rs.360 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.112, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb3_verify_reconfigure_ctx._entry.361 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.362, ptr @__func__.smb3_verify_reconfigure_ctx, ptr @.str.114, i32 742, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.362 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013CIFS: VFS: can not change sec during remount\0A\00", [48 x i8] zeroinitializer }, align 32
@smb3_verify_reconfigure_ctx._entry_ptr.363 = internal global ptr @smb3_verify_reconfigure_ctx._entry.361, section ".printk_index", align 4
@.str.364 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"can not change multiuser during remount\0A\00", [55 x i8] zeroinitializer }, align 32
@smb3_verify_reconfigure_ctx._rs.365 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.112, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb3_verify_reconfigure_ctx._entry.366 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.367, ptr @__func__.smb3_verify_reconfigure_ctx, ptr @.str.114, i32 746, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.367 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013CIFS: VFS: can not change multiuser during remount\0A\00", [42 x i8] zeroinitializer }, align 32
@smb3_verify_reconfigure_ctx._entry_ptr.368 = internal global ptr @smb3_verify_reconfigure_ctx._entry.366, section ".printk_index", align 4
@.str.369 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"can not change UNC during remount\0A\00", [61 x i8] zeroinitializer }, align 32
@smb3_verify_reconfigure_ctx._rs.370 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.112, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb3_verify_reconfigure_ctx._entry.371 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.372, ptr @__func__.smb3_verify_reconfigure_ctx, ptr @.str.114, i32 751, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.372 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013CIFS: VFS: can not change UNC during remount\0A\00", [48 x i8] zeroinitializer }, align 32
@smb3_verify_reconfigure_ctx._entry_ptr.373 = internal global ptr @smb3_verify_reconfigure_ctx._entry.371, section ".printk_index", align 4
@.str.374 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"can not change username during remount\0A\00", [56 x i8] zeroinitializer }, align 32
@smb3_verify_reconfigure_ctx._rs.375 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.112, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb3_verify_reconfigure_ctx._entry.376 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.377, ptr @__func__.smb3_verify_reconfigure_ctx, ptr @.str.114, i32 756, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.377 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013CIFS: VFS: can not change username during remount\0A\00", [43 x i8] zeroinitializer }, align 32
@smb3_verify_reconfigure_ctx._entry_ptr.378 = internal global ptr @smb3_verify_reconfigure_ctx._entry.376, section ".printk_index", align 4
@.str.379 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"can not change password during remount\0A\00", [56 x i8] zeroinitializer }, align 32
@smb3_verify_reconfigure_ctx._rs.380 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.112, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb3_verify_reconfigure_ctx._entry.381 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.382, ptr @__func__.smb3_verify_reconfigure_ctx, ptr @.str.114, i32 761, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.382 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013CIFS: VFS: can not change password during remount\0A\00", [43 x i8] zeroinitializer }, align 32
@smb3_verify_reconfigure_ctx._entry_ptr.383 = internal global ptr @smb3_verify_reconfigure_ctx._entry.381, section ".printk_index", align 4
@.str.384 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"can not change domainname during remount\0A\00", [54 x i8] zeroinitializer }, align 32
@smb3_verify_reconfigure_ctx._rs.385 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.112, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb3_verify_reconfigure_ctx._entry.386 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.387, ptr @__func__.smb3_verify_reconfigure_ctx, ptr @.str.114, i32 766, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.387 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013CIFS: VFS: can not change domainname during remount\0A\00", [41 x i8] zeroinitializer }, align 32
@smb3_verify_reconfigure_ctx._entry_ptr.388 = internal global ptr @smb3_verify_reconfigure_ctx._entry.386, section ".printk_index", align 4
@.str.389 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"can not change workstation_name during remount\0A\00", [48 x i8] zeroinitializer }, align 32
@smb3_verify_reconfigure_ctx._rs.390 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.112, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb3_verify_reconfigure_ctx._entry.391 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.392, ptr @__func__.smb3_verify_reconfigure_ctx, ptr @.str.114, i32 771, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.392 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013CIFS: VFS: can not change workstation_name during remount\0A\00", [35 x i8] zeroinitializer }, align 32
@smb3_verify_reconfigure_ctx._entry_ptr.393 = internal global ptr @smb3_verify_reconfigure_ctx._entry.391, section ".printk_index", align 4
@.str.394 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"can not change nodename during remount\0A\00", [56 x i8] zeroinitializer }, align 32
@smb3_verify_reconfigure_ctx._rs.395 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.112, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb3_verify_reconfigure_ctx._entry.396 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.397, ptr @__func__.smb3_verify_reconfigure_ctx, ptr @.str.114, i32 776, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.397 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013CIFS: VFS: can not change nodename during remount\0A\00", [43 x i8] zeroinitializer }, align 32
@smb3_verify_reconfigure_ctx._entry_ptr.398 = internal global ptr @smb3_verify_reconfigure_ctx._entry.396, section ".printk_index", align 4
@.str.399 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"can not change iocharset during remount\0A\00", [55 x i8] zeroinitializer }, align 32
@smb3_verify_reconfigure_ctx._rs.400 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.112, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb3_verify_reconfigure_ctx._entry.401 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.402, ptr @__func__.smb3_verify_reconfigure_ctx, ptr @.str.114, i32 781, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.402 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013CIFS: VFS: can not change iocharset during remount\0A\00", [42 x i8] zeroinitializer }, align 32
@smb3_verify_reconfigure_ctx._entry_ptr.403 = internal global ptr @smb3_verify_reconfigure_ctx._entry.401, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 47, i64 92]
@__sancov_gen_cov_switch_values.404 = internal global [4 x i64] [i64 2, i64 8, i64 47, i64 92]
@__sancov_gen_cov_switch_values.405 = internal global [4 x i64] [i64 2, i64 8, i64 47, i64 92]
@__sancov_gen_cov_switch_values.406 = internal global [4 x i64] [i64 2, i64 8, i64 47, i64 92]
@__sancov_gen_cov_switch_values.407 = internal global [4 x i64] [i64 2, i64 8, i64 47, i64 92]
@__sancov_gen_cov_switch_values.408 = internal global [84 x i64] [i64 82, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61, i64 62, i64 63, i64 64, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 71, i64 72, i64 73, i64 74, i64 75, i64 76, i64 77, i64 78, i64 79, i64 80, i64 81, i64 82, i64 83]
@__sancov_gen_cov_switch_values.409 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967274, i64 4294967284]
@__sancov_gen_cov_switch_values.410 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.411 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.412 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 72, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 73, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 74, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 75, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 76, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 77, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 78, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 79, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 80, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 81, i32 2 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 82, i32 2 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 83, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 84, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 85, i32 2 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 86, i32 2 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 87, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 88, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 89, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 90, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 91, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 92, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 93, i32 2 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 94, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 95, i32 2 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 96, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 97, i32 2 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 98, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 99, i32 2 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 100, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 101, i32 2 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 102, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 103, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 104, i32 2 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 105, i32 2 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 106, i32 2 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 107, i32 2 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 108, i32 2 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 109, i32 2 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 110, i32 2 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 111, i32 2 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 112, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 113, i32 2 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 114, i32 2 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 115, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 116, i32 2 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 117, i32 2 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 118, i32 2 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 119, i32 2 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 120, i32 2 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 121, i32 2 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 122, i32 2 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 123, i32 2 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 124, i32 2 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 125, i32 2 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 126, i32 2 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 127, i32 2 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 128, i32 2 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 131, i32 2 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 132, i32 2 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 133, i32 2 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 134, i32 2 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 135, i32 2 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 136, i32 2 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 137, i32 2 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 138, i32 2 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 139, i32 2 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 140, i32 2 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 141, i32 2 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 142, i32 2 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 143, i32 2 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 144, i32 2 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 145, i32 2 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 146, i32 2 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 147, i32 2 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 148, i32 2 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 149, i32 2 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 150, i32 2 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 151, i32 2 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 152, i32 2 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 153, i32 2 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 156, i32 2 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 157, i32 2 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 158, i32 2 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 159, i32 2 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 160, i32 2 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 161, i32 2 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 162, i32 2 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 163, i32 2 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 164, i32 2 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 165, i32 2 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 166, i32 2 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 167, i32 2 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 168, i32 2 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 169, i32 2 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 170, i32 2 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 171, i32 2 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 172, i32 2 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 175, i32 2 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 176, i32 2 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 177, i32 2 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 178, i32 2 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 179, i32 2 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 180, i32 2 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 181, i32 2 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 182, i32 2 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 183, i32 2 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 184, i32 2 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 185, i32 2 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 190, i32 2 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 191, i32 2 }
@___asan_gen_.743 = private unnamed_addr constant [19 x i8] c"smb3_fs_parameters\00", align 1
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 70, i32 32 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 417, i32 28 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 484, i32 23 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 488, i32 3 }
@___asan_gen_.767 = private unnamed_addr constant [20 x i8] c"smb3_fs_context_ops\00", align 1
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 549, i32 43 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1758, i32 4 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 845, i32 44 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 850, i32 2 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 875, i32 3 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1016, i32 4 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1037, i32 4 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1054, i32 4 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1061, i32 4 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1067, i32 4 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1072, i32 4 }
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1085, i32 4 }
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1093, i32 4 }
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1105, i32 4 }
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1116, i32 4 }
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1119, i32 4 }
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1122, i32 4 }
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1127, i32 4 }
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1132, i32 4 }
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1147, i32 4 }
@___asan_gen_.982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1152, i32 4 }
@___asan_gen_.994 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1164, i32 4 }
@___asan_gen_.1000 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1176, i32 4 }
@___asan_gen_.1006 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1184, i32 4 }
@___asan_gen_.1018 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1191, i32 4 }
@___asan_gen_.1024 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1194, i32 3 }
@___asan_gen_.1030 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1200, i32 4 }
@___asan_gen_.1036 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1207, i32 4 }
@___asan_gen_.1039 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1211, i32 34 }
@___asan_gen_.1051 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1215, i32 5 }
@___asan_gen_.1057 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1222, i32 3 }
@___asan_gen_.1063 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1242, i32 4 }
@___asan_gen_.1069 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1262, i32 4 }
@___asan_gen_.1072 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1267, i32 34 }
@___asan_gen_.1078 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1269, i32 5 }
@___asan_gen_.1084 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1277, i32 3 }
@___asan_gen_.1090 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1299, i32 3 }
@___asan_gen_.1096 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1317, i32 5 }
@___asan_gen_.1099 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1322, i32 5 }
@___asan_gen_.1105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1399, i32 3 }
@___asan_gen_.1117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1424, i32 5 }
@___asan_gen_.1123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1430, i32 5 }
@___asan_gen_.1129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 1441, i32 5 }
@___asan_gen_.1130 = private unnamed_addr constant [24 x i8] c"cifs_smb_version_tokens\00", align 1
@___asan_gen_.1132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 42, i32 28 }
@___asan_gen_.1144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 346, i32 4 }
@___asan_gen_.1156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 350, i32 4 }
@___asan_gen_.1168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 353, i32 3 }
@___asan_gen_.1174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 359, i32 4 }
@___asan_gen_.1186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 363, i32 4 }
@___asan_gen_.1198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 402, i32 3 }
@___asan_gen_.1201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 43, i32 11 }
@___asan_gen_.1204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 44, i32 12 }
@___asan_gen_.1207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 45, i32 12 }
@___asan_gen_.1210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 46, i32 12 }
@___asan_gen_.1213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 47, i32 13 }
@___asan_gen_.1216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 48, i32 13 }
@___asan_gen_.1219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 49, i32 13 }
@___asan_gen_.1222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 50, i32 13 }
@___asan_gen_.1225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 51, i32 14 }
@___asan_gen_.1226 = private unnamed_addr constant [22 x i8] c"cifs_secflavor_tokens\00", align 1
@___asan_gen_.1228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 56, i32 28 }
@___asan_gen_.1240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 210, i32 3 }
@___asan_gen_.1252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 234, i32 3 }
@___asan_gen_.1255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 57, i32 18 }
@___asan_gen_.1258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 58, i32 19 }
@___asan_gen_.1261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 59, i32 19 }
@___asan_gen_.1264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 60, i32 22 }
@___asan_gen_.1267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 61, i32 21 }
@___asan_gen_.1270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 62, i32 20 }
@___asan_gen_.1273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 63, i32 20 }
@___asan_gen_.1276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 64, i32 21 }
@___asan_gen_.1279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 65, i32 18 }
@___asan_gen_.1280 = private unnamed_addr constant [24 x i8] c"cifs_cacheflavor_tokens\00", align 1
@___asan_gen_.1282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 241, i32 28 }
@___asan_gen_.1294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 287, i32 3 }
@___asan_gen_.1297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 242, i32 21 }
@___asan_gen_.1300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 243, i32 22 }
@___asan_gen_.1303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 245, i32 18 }
@___asan_gen_.1306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 246, i32 18 }
@___asan_gen_.1307 = private unnamed_addr constant [17 x i8] c"cifs_mount_mutex\00", align 1
@___asan_gen_.1321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 633, i32 3 }
@___asan_gen_.1327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 646, i32 3 }
@___asan_gen_.1339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 650, i32 3 }
@___asan_gen_.1351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 656, i32 3 }
@___asan_gen_.1357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 670, i32 4 }
@___asan_gen_.1363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 680, i32 3 }
@___asan_gen_.1369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 685, i32 3 }
@___asan_gen_.1375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 40, i32 8 }
@___asan_gen_.1387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 738, i32 3 }
@___asan_gen_.1399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 742, i32 3 }
@___asan_gen_.1411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 746, i32 3 }
@___asan_gen_.1423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 751, i32 3 }
@___asan_gen_.1435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 756, i32 3 }
@___asan_gen_.1447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 761, i32 3 }
@___asan_gen_.1459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 766, i32 3 }
@___asan_gen_.1471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 771, i32 3 }
@___asan_gen_.1483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 776, i32 3 }
@___asan_gen_.1487 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.1490 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1493 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1494 = private constant [24 x i8] c"../fs/cifs/fs_context.c\00", align 1
@___asan_gen_.1495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1494, i32 781, i32 3 }
@llvm.compiler.used = appending global [424 x ptr] [ptr @cifs_parse_cache_flavor._entry, ptr @cifs_parse_cache_flavor._entry_ptr, ptr @cifs_parse_security_flavors._entry, ptr @cifs_parse_security_flavors._entry.313, ptr @cifs_parse_security_flavors._entry_ptr, ptr @cifs_parse_security_flavors._entry_ptr.315, ptr @cifs_parse_smb_version._entry, ptr @cifs_parse_smb_version._entry.279, ptr @cifs_parse_smb_version._entry.284, ptr @cifs_parse_smb_version._entry.288, ptr @cifs_parse_smb_version._entry.292, ptr @cifs_parse_smb_version._entry.297, ptr @cifs_parse_smb_version._entry_ptr, ptr @cifs_parse_smb_version._entry_ptr.281, ptr @cifs_parse_smb_version._entry_ptr.286, ptr @cifs_parse_smb_version._entry_ptr.289, ptr @cifs_parse_smb_version._entry_ptr.294, ptr @cifs_parse_smb_version._entry_ptr.299, ptr @smb3_fs_context_parse_param._entry, ptr @smb3_fs_context_parse_param._entry.130, ptr @smb3_fs_context_parse_param._entry.135, ptr @smb3_fs_context_parse_param._entry.140, ptr @smb3_fs_context_parse_param._entry.145, ptr @smb3_fs_context_parse_param._entry.150, ptr @smb3_fs_context_parse_param._entry.155, ptr @smb3_fs_context_parse_param._entry.160, ptr @smb3_fs_context_parse_param._entry.165, ptr @smb3_fs_context_parse_param._entry.170, ptr @smb3_fs_context_parse_param._entry.175, ptr @smb3_fs_context_parse_param._entry.180, ptr @smb3_fs_context_parse_param._entry.185, ptr @smb3_fs_context_parse_param._entry.190, ptr @smb3_fs_context_parse_param._entry.194, ptr @smb3_fs_context_parse_param._entry.196, ptr @smb3_fs_context_parse_param._entry.201, ptr @smb3_fs_context_parse_param._entry.206, ptr @smb3_fs_context_parse_param._entry.209, ptr @smb3_fs_context_parse_param._entry.212, ptr @smb3_fs_context_parse_param._entry.217, ptr @smb3_fs_context_parse_param._entry.223, ptr @smb3_fs_context_parse_param._entry.226, ptr @smb3_fs_context_parse_param._entry.232, ptr @smb3_fs_context_parse_param._entry.238, ptr @smb3_fs_context_parse_param._entry.241, ptr @smb3_fs_context_parse_param._entry.245, ptr @smb3_fs_context_parse_param._entry.248, ptr @smb3_fs_context_parse_param._entry.251, ptr @smb3_fs_context_parse_param._entry.255, ptr @smb3_fs_context_parse_param._entry.259, ptr @smb3_fs_context_parse_param._entry.261, ptr @smb3_fs_context_parse_param._entry.266, ptr @smb3_fs_context_parse_param._entry.270, ptr @smb3_fs_context_parse_param._entry.273, ptr @smb3_fs_context_parse_param._entry_ptr, ptr @smb3_fs_context_parse_param._entry_ptr.132, ptr @smb3_fs_context_parse_param._entry_ptr.137, ptr @smb3_fs_context_parse_param._entry_ptr.142, ptr @smb3_fs_context_parse_param._entry_ptr.147, ptr @smb3_fs_context_parse_param._entry_ptr.152, ptr @smb3_fs_context_parse_param._entry_ptr.157, ptr @smb3_fs_context_parse_param._entry_ptr.162, ptr @smb3_fs_context_parse_param._entry_ptr.167, ptr @smb3_fs_context_parse_param._entry_ptr.172, ptr @smb3_fs_context_parse_param._entry_ptr.177, ptr @smb3_fs_context_parse_param._entry_ptr.182, ptr @smb3_fs_context_parse_param._entry_ptr.187, ptr @smb3_fs_context_parse_param._entry_ptr.192, ptr @smb3_fs_context_parse_param._entry_ptr.195, ptr @smb3_fs_context_parse_param._entry_ptr.198, ptr @smb3_fs_context_parse_param._entry_ptr.203, ptr @smb3_fs_context_parse_param._entry_ptr.208, ptr @smb3_fs_context_parse_param._entry_ptr.211, ptr @smb3_fs_context_parse_param._entry_ptr.214, ptr @smb3_fs_context_parse_param._entry_ptr.219, ptr @smb3_fs_context_parse_param._entry_ptr.225, ptr @smb3_fs_context_parse_param._entry_ptr.228, ptr @smb3_fs_context_parse_param._entry_ptr.234, ptr @smb3_fs_context_parse_param._entry_ptr.240, ptr @smb3_fs_context_parse_param._entry_ptr.243, ptr @smb3_fs_context_parse_param._entry_ptr.247, ptr @smb3_fs_context_parse_param._entry_ptr.250, ptr @smb3_fs_context_parse_param._entry_ptr.253, ptr @smb3_fs_context_parse_param._entry_ptr.257, ptr @smb3_fs_context_parse_param._entry_ptr.260, ptr @smb3_fs_context_parse_param._entry_ptr.263, ptr @smb3_fs_context_parse_param._entry_ptr.268, ptr @smb3_fs_context_parse_param._entry_ptr.271, ptr @smb3_fs_context_parse_param._entry_ptr.274, ptr @smb3_fs_context_validate._entry, ptr @smb3_fs_context_validate._entry.333, ptr @smb3_fs_context_validate._entry.338, ptr @smb3_fs_context_validate._entry.343, ptr @smb3_fs_context_validate._entry.346, ptr @smb3_fs_context_validate._entry.349, ptr @smb3_fs_context_validate._entry.352, ptr @smb3_fs_context_validate._entry_ptr, ptr @smb3_fs_context_validate._entry_ptr.335, ptr @smb3_fs_context_validate._entry_ptr.340, ptr @smb3_fs_context_validate._entry_ptr.345, ptr @smb3_fs_context_validate._entry_ptr.348, ptr @smb3_fs_context_validate._entry_ptr.351, ptr @smb3_fs_context_validate._entry_ptr.354, ptr @smb3_parse_devname._entry, ptr @smb3_parse_devname._entry_ptr, ptr @smb3_update_mnt_flags._entry, ptr @smb3_update_mnt_flags._entry_ptr, ptr @smb3_verify_reconfigure_ctx._entry, ptr @smb3_verify_reconfigure_ctx._entry.361, ptr @smb3_verify_reconfigure_ctx._entry.366, ptr @smb3_verify_reconfigure_ctx._entry.371, ptr @smb3_verify_reconfigure_ctx._entry.376, ptr @smb3_verify_reconfigure_ctx._entry.381, ptr @smb3_verify_reconfigure_ctx._entry.386, ptr @smb3_verify_reconfigure_ctx._entry.391, ptr @smb3_verify_reconfigure_ctx._entry.396, ptr @smb3_verify_reconfigure_ctx._entry.401, ptr @smb3_verify_reconfigure_ctx._entry_ptr, ptr @smb3_verify_reconfigure_ctx._entry_ptr.363, ptr @smb3_verify_reconfigure_ctx._entry_ptr.368, ptr @smb3_verify_reconfigure_ctx._entry_ptr.373, ptr @smb3_verify_reconfigure_ctx._entry_ptr.378, ptr @smb3_verify_reconfigure_ctx._entry_ptr.383, ptr @smb3_verify_reconfigure_ctx._entry_ptr.388, ptr @smb3_verify_reconfigure_ctx._entry_ptr.393, ptr @smb3_verify_reconfigure_ctx._entry_ptr.398, ptr @smb3_verify_reconfigure_ctx._entry_ptr.403, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @smb3_fs_parameters, ptr @.str.110, ptr @.str.111, ptr @smb3_parse_devname._rs, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @smb3_fs_context_ops, ptr @smb3_update_mnt_flags._rs, ptr @.str.117, ptr @.str.118, ptr @smb3_fs_context_parse_param._rs, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @smb3_fs_context_parse_param._rs.122, ptr @.str.123, ptr @.str.128, ptr @smb3_fs_context_parse_param._rs.129, ptr @.str.131, ptr @.str.133, ptr @smb3_fs_context_parse_param._rs.134, ptr @.str.136, ptr @.str.138, ptr @smb3_fs_context_parse_param._rs.139, ptr @.str.141, ptr @.str.143, ptr @smb3_fs_context_parse_param._rs.144, ptr @.str.146, ptr @.str.148, ptr @smb3_fs_context_parse_param._rs.149, ptr @.str.151, ptr @.str.153, ptr @smb3_fs_context_parse_param._rs.154, ptr @.str.156, ptr @.str.158, ptr @smb3_fs_context_parse_param._rs.159, ptr @.str.161, ptr @.str.163, ptr @smb3_fs_context_parse_param._rs.164, ptr @.str.166, ptr @.str.168, ptr @smb3_fs_context_parse_param._rs.169, ptr @.str.171, ptr @.str.173, ptr @smb3_fs_context_parse_param._rs.174, ptr @.str.176, ptr @.str.178, ptr @smb3_fs_context_parse_param._rs.179, ptr @.str.181, ptr @.str.183, ptr @smb3_fs_context_parse_param._rs.184, ptr @.str.186, ptr @.str.188, ptr @smb3_fs_context_parse_param._rs.189, ptr @.str.191, ptr @smb3_fs_context_parse_param._rs.193, ptr @.str.197, ptr @.str.199, ptr @smb3_fs_context_parse_param._rs.200, ptr @.str.202, ptr @.str.204, ptr @smb3_fs_context_parse_param._rs.205, ptr @.str.207, ptr @.str.210, ptr @.str.213, ptr @.str.215, ptr @smb3_fs_context_parse_param._rs.216, ptr @.str.218, ptr @smb3_fs_context_parse_param._rs.220, ptr @.str.222, ptr @.str.224, ptr @.str.227, ptr @.str.229, ptr @.str.230, ptr @smb3_fs_context_parse_param._rs.231, ptr @.str.233, ptr @smb3_fs_context_parse_param._rs.235, ptr @.str.237, ptr @.str.239, ptr @.str.242, ptr @.str.244, ptr @.str.246, ptr @.str.249, ptr @.str.252, ptr @.str.256, ptr @.str.262, ptr @.str.264, ptr @smb3_fs_context_parse_param._rs.265, ptr @.str.267, ptr @smb3_fs_context_parse_param._rs.269, ptr @smb3_fs_context_parse_param._rs.272, ptr @cifs_smb_version_tokens, ptr @.str.275, ptr @cifs_parse_smb_version._rs, ptr @.str.276, ptr @.str.277, ptr @cifs_parse_smb_version._rs.278, ptr @.str.280, ptr @.str.282, ptr @cifs_parse_smb_version._rs.283, ptr @.str.285, ptr @cifs_parse_smb_version._rs.287, ptr @.str.290, ptr @cifs_parse_smb_version._rs.291, ptr @.str.293, ptr @.str.295, ptr @cifs_parse_smb_version._rs.296, ptr @.str.298, ptr @.str.300, ptr @.str.301, ptr @.str.302, ptr @.str.303, ptr @.str.304, ptr @.str.305, ptr @.str.306, ptr @.str.307, ptr @.str.308, ptr @cifs_secflavor_tokens, ptr @.str.309, ptr @cifs_parse_security_flavors._rs, ptr @.str.310, ptr @.str.311, ptr @cifs_parse_security_flavors._rs.312, ptr @.str.314, ptr @.str.316, ptr @.str.317, ptr @.str.318, ptr @.str.319, ptr @.str.320, ptr @.str.321, ptr @.str.322, ptr @.str.323, ptr @.str.324, ptr @cifs_cacheflavor_tokens, ptr @.str.325, ptr @cifs_parse_cache_flavor._rs, ptr @.str.326, ptr @.str.327, ptr @.str.328, ptr @.str.329, ptr @.str.330, ptr @cifs_mount_mutex, ptr @.str.331, ptr @smb3_fs_context_validate._rs, ptr @.str.332, ptr @.str.334, ptr @.str.336, ptr @smb3_fs_context_validate._rs.337, ptr @.str.339, ptr @.str.341, ptr @smb3_fs_context_validate._rs.342, ptr @.str.344, ptr @.str.347, ptr @.str.350, ptr @.str.353, ptr @.str.355, ptr @.str.356, ptr @.str.357, ptr @smb3_verify_reconfigure_ctx._rs, ptr @.str.358, ptr @.str.359, ptr @smb3_verify_reconfigure_ctx._rs.360, ptr @.str.362, ptr @.str.364, ptr @smb3_verify_reconfigure_ctx._rs.365, ptr @.str.367, ptr @.str.369, ptr @smb3_verify_reconfigure_ctx._rs.370, ptr @.str.372, ptr @.str.374, ptr @smb3_verify_reconfigure_ctx._rs.375, ptr @.str.377, ptr @.str.379, ptr @smb3_verify_reconfigure_ctx._rs.380, ptr @.str.382, ptr @.str.384, ptr @smb3_verify_reconfigure_ctx._rs.385, ptr @.str.387, ptr @.str.389, ptr @smb3_verify_reconfigure_ctx._rs.390, ptr @.str.392, ptr @.str.394, ptr @smb3_verify_reconfigure_ctx._rs.395, ptr @.str.397, ptr @.str.399, ptr @smb3_verify_reconfigure_ctx._rs.400, ptr @.str.402], section "llvm.metadata"
@0 = internal global [361 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_parameters to i32), i32 1776, i32 2208, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_parse_devname._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_parse_devname._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_update_mnt_flags._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_update_mnt_flags._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_parse_param._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_parse_param._rs.122 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_parse_param._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_parse_param._rs.129 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_parse_param._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_parse_param._rs.134 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_parse_param._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_parse_param._rs.139 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_parse_param._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_parse_param._rs.144 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_parse_param._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_parse_param._rs.149 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_parse_param._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_parse_param._rs.154 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_parse_param._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_parse_param._rs.159 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_parse_param._entry.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_parse_param._rs.164 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_parse_param._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_parse_param._rs.169 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_parse_param._entry.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_parse_param._rs.174 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_parse_param._entry.175 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_parse_param._rs.179 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_parse_param._entry.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_parse_param._rs.184 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_parse_param._entry.185 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_parse_param._rs.189 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_parse_param._entry.190 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_parse_param._rs.193 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_parse_param._entry.194 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_parse_param._entry.196 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_parse_param._rs.200 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_parse_param._entry.201 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_parse_param._rs.205 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_parse_param._entry.206 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_parse_param._entry.209 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_parse_param._entry.212 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_parse_param._rs.216 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_parse_param._entry.217 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_parse_param._rs.220 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_parse_param._entry.223 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_parse_param._entry.226 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_parse_param._rs.231 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_parse_param._entry.232 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_parse_param._rs.235 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_parse_param._entry.238 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_parse_param._entry.241 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_parse_param._entry.245 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 102, i32 160, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_parse_param._entry.248 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_parse_param._entry.251 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_parse_param._entry.255 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_parse_param._entry.259 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_parse_param._entry.261 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_parse_param._rs.265 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_parse_param._entry.266 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_parse_param._rs.269 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_parse_param._entry.270 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_parse_param._rs.272 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_parse_param._entry.273 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_smb_version_tokens to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_parse_smb_version._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_parse_smb_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_parse_smb_version._rs.278 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_parse_smb_version._entry.279 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 107, i32 160, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_parse_smb_version._rs.283 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_parse_smb_version._entry.284 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_parse_smb_version._rs.287 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_parse_smb_version._entry.288 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_parse_smb_version._rs.291 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_parse_smb_version._entry.292 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_parse_smb_version._rs.296 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_parse_smb_version._entry.297 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.305 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.307 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_secflavor_tokens to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_parse_security_flavors._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_parse_security_flavors._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.310 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.311 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_parse_security_flavors._rs.312 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_parse_security_flavors._entry.313 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.314 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.316 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.317 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.318 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.319 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.320 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.321 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.322 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.323 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.324 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_cacheflavor_tokens to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.325 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_parse_cache_flavor._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_parse_cache_flavor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.326 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.327 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.328 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.329 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.330 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_mount_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.331 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_validate._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_validate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.332 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_validate._entry.333 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.334 to i32), i32 277, i32 352, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.336 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_validate._rs.337 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_validate._entry.338 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.339 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.341 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_validate._rs.342 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_validate._entry.343 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.344 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_validate._entry.346 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.347 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_validate._entry.349 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.350 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_context_validate._entry.352 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.353 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.355 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.356 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.357 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_verify_reconfigure_ctx._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_verify_reconfigure_ctx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.358 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.359 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_verify_reconfigure_ctx._rs.360 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_verify_reconfigure_ctx._entry.361 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.362 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.364 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_verify_reconfigure_ctx._rs.365 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_verify_reconfigure_ctx._entry.366 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.367 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.369 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_verify_reconfigure_ctx._rs.370 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_verify_reconfigure_ctx._entry.371 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.372 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.374 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_verify_reconfigure_ctx._rs.375 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_verify_reconfigure_ctx._entry.376 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.377 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.379 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_verify_reconfigure_ctx._rs.380 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_verify_reconfigure_ctx._entry.381 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.382 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.384 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_verify_reconfigure_ctx._rs.385 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_verify_reconfigure_ctx._entry.386 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.387 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.389 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_verify_reconfigure_ctx._rs.390 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_verify_reconfigure_ctx._entry.391 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.392 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.394 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_verify_reconfigure_ctx._rs.395 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_verify_reconfigure_ctx._entry.396 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.397 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.399 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_verify_reconfigure_ctx._rs.400 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_verify_reconfigure_ctx._entry.401 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.402 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fs_param_is_u32(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fs_param_is_u64(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fs_param_is_string(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smb3_fs_context_dup(ptr noundef %new_ctx, ptr nocapture noundef readonly %ctx) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %new_ctx, ptr %ctx, i32 480)
  %prepath = getelementptr inbounds %struct.smb3_fs_context, ptr %new_ctx, i32 0, i32 48
  %1 = ptrtoint ptr %prepath to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %prepath, align 8
  %mount_options = getelementptr inbounds %struct.smb3_fs_context, ptr %new_ctx, i32 0, i32 61
  %2 = ptrtoint ptr %mount_options to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %mount_options, align 8
  %nodename = getelementptr inbounds %struct.smb3_fs_context, ptr %new_ctx, i32 0, i32 17
  %username = getelementptr inbounds %struct.smb3_fs_context, ptr %new_ctx, i32 0, i32 11
  %password = getelementptr inbounds %struct.smb3_fs_context, ptr %new_ctx, i32 0, i32 12
  %server_hostname = getelementptr inbounds %struct.smb3_fs_context, ptr %new_ctx, i32 0, i32 15
  %domainname = getelementptr inbounds %struct.smb3_fs_context, ptr %new_ctx, i32 0, i32 13
  %workstation_name = getelementptr inbounds %struct.smb3_fs_context, ptr %new_ctx, i32 0, i32 18
  %UNC = getelementptr inbounds %struct.smb3_fs_context, ptr %new_ctx, i32 0, i32 16
  %source = getelementptr inbounds %struct.smb3_fs_context, ptr %new_ctx, i32 0, i32 14
  %iocharset = getelementptr inbounds %struct.smb3_fs_context, ptr %new_ctx, i32 0, i32 19
  %prepath1 = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 48
  %3 = call ptr @memset(ptr %username, i32 0, i32 36)
  %4 = ptrtoint ptr %prepath1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prepath1, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.do.body7_crit_edge, label %if.then

entry.do.body7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body7

if.then:                                          ; preds = %entry
  %call = tail call noalias ptr @kstrdup(ptr noundef nonnull %5, i32 noundef 2592) #9
  %6 = ptrtoint ptr %prepath to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %prepath, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then.return.sink.split_crit_edge, label %if.then.do.body7_crit_edge

if.then.do.body7_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body7

if.then.return.sink.split_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split

do.body7:                                         ; preds = %if.then.do.body7_crit_edge, %entry.do.body7_crit_edge
  %mount_options8 = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 61
  %7 = ptrtoint ptr %mount_options8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mount_options8, align 8
  %tobool9.not = icmp eq ptr %8, null
  br i1 %tobool9.not, label %do.body7.do.body20_crit_edge, label %if.then10

do.body7.do.body20_crit_edge:                     ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body20

if.then10:                                        ; preds = %do.body7
  %call12 = tail call noalias ptr @kstrdup(ptr noundef nonnull %8, i32 noundef 2592) #9
  %9 = ptrtoint ptr %mount_options to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call12, ptr %mount_options, align 8
  %cmp15 = icmp eq ptr %call12, null
  br i1 %cmp15, label %if.then10.return.sink.split_crit_edge, label %if.then10.do.body20_crit_edge

if.then10.do.body20_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body20

if.then10.return.sink.split_crit_edge:            ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split

do.body20:                                        ; preds = %if.then10.do.body20_crit_edge, %do.body7.do.body20_crit_edge
  %username21 = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 11
  %10 = ptrtoint ptr %username21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %username21, align 4
  %tobool22.not = icmp eq ptr %11, null
  br i1 %tobool22.not, label %do.body20.do.body33_crit_edge, label %if.then23

do.body20.do.body33_crit_edge:                    ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body33

if.then23:                                        ; preds = %do.body20
  %call25 = tail call noalias ptr @kstrdup(ptr noundef nonnull %11, i32 noundef 2592) #9
  %12 = ptrtoint ptr %username to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call25, ptr %username, align 4
  %cmp28 = icmp eq ptr %call25, null
  br i1 %cmp28, label %if.then23.return.sink.split_crit_edge, label %if.then23.do.body33_crit_edge

if.then23.do.body33_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body33

if.then23.return.sink.split_crit_edge:            ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split

do.body33:                                        ; preds = %if.then23.do.body33_crit_edge, %do.body20.do.body33_crit_edge
  %password34 = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 12
  %13 = ptrtoint ptr %password34 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %password34, align 8
  %tobool35.not = icmp eq ptr %14, null
  br i1 %tobool35.not, label %do.body33.do.body46_crit_edge, label %if.then36

do.body33.do.body46_crit_edge:                    ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body46

if.then36:                                        ; preds = %do.body33
  %call38 = tail call noalias ptr @kstrdup(ptr noundef nonnull %14, i32 noundef 2592) #9
  %15 = ptrtoint ptr %password to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call38, ptr %password, align 8
  %cmp41 = icmp eq ptr %call38, null
  br i1 %cmp41, label %if.then36.return.sink.split_crit_edge, label %if.then36.do.body46_crit_edge

if.then36.do.body46_crit_edge:                    ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body46

if.then36.return.sink.split_crit_edge:            ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split

do.body46:                                        ; preds = %if.then36.do.body46_crit_edge, %do.body33.do.body46_crit_edge
  %server_hostname47 = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 15
  %16 = ptrtoint ptr %server_hostname47 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %server_hostname47, align 4
  %tobool48.not = icmp eq ptr %17, null
  br i1 %tobool48.not, label %do.body46.do.body59_crit_edge, label %if.then49

do.body46.do.body59_crit_edge:                    ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body59

if.then49:                                        ; preds = %do.body46
  %call51 = tail call noalias ptr @kstrdup(ptr noundef nonnull %17, i32 noundef 2592) #9
  %18 = ptrtoint ptr %server_hostname to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call51, ptr %server_hostname, align 4
  %cmp54 = icmp eq ptr %call51, null
  br i1 %cmp54, label %if.then49.return.sink.split_crit_edge, label %if.then49.do.body59_crit_edge

if.then49.do.body59_crit_edge:                    ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body59

if.then49.return.sink.split_crit_edge:            ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split

do.body59:                                        ; preds = %if.then49.do.body59_crit_edge, %do.body46.do.body59_crit_edge
  %UNC60 = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 16
  %19 = ptrtoint ptr %UNC60 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %UNC60, align 8
  %tobool61.not = icmp eq ptr %20, null
  br i1 %tobool61.not, label %do.body59.do.body72_crit_edge, label %if.then62

do.body59.do.body72_crit_edge:                    ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body72

if.then62:                                        ; preds = %do.body59
  %call64 = tail call noalias ptr @kstrdup(ptr noundef nonnull %20, i32 noundef 2592) #9
  %21 = ptrtoint ptr %UNC to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call64, ptr %UNC, align 8
  %cmp67 = icmp eq ptr %call64, null
  br i1 %cmp67, label %if.then62.return.sink.split_crit_edge, label %if.then62.do.body72_crit_edge

if.then62.do.body72_crit_edge:                    ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body72

if.then62.return.sink.split_crit_edge:            ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split

do.body72:                                        ; preds = %if.then62.do.body72_crit_edge, %do.body59.do.body72_crit_edge
  %source73 = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 14
  %22 = ptrtoint ptr %source73 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %source73, align 8
  %tobool74.not = icmp eq ptr %23, null
  br i1 %tobool74.not, label %do.body72.do.body85_crit_edge, label %if.then75

do.body72.do.body85_crit_edge:                    ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body85

if.then75:                                        ; preds = %do.body72
  %call77 = tail call noalias ptr @kstrdup(ptr noundef nonnull %23, i32 noundef 2592) #9
  %24 = ptrtoint ptr %source to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call77, ptr %source, align 8
  %cmp80 = icmp eq ptr %call77, null
  br i1 %cmp80, label %if.then75.return.sink.split_crit_edge, label %if.then75.do.body85_crit_edge

if.then75.do.body85_crit_edge:                    ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body85

if.then75.return.sink.split_crit_edge:            ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split

do.body85:                                        ; preds = %if.then75.do.body85_crit_edge, %do.body72.do.body85_crit_edge
  %domainname86 = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 13
  %25 = ptrtoint ptr %domainname86 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %domainname86, align 4
  %tobool87.not = icmp eq ptr %26, null
  br i1 %tobool87.not, label %do.body85.do.body98_crit_edge, label %if.then88

do.body85.do.body98_crit_edge:                    ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body98

if.then88:                                        ; preds = %do.body85
  %call90 = tail call noalias ptr @kstrdup(ptr noundef nonnull %26, i32 noundef 2592) #9
  %27 = ptrtoint ptr %domainname to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call90, ptr %domainname, align 4
  %cmp93 = icmp eq ptr %call90, null
  br i1 %cmp93, label %if.then88.return.sink.split_crit_edge, label %if.then88.do.body98_crit_edge

if.then88.do.body98_crit_edge:                    ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body98

if.then88.return.sink.split_crit_edge:            ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split

do.body98:                                        ; preds = %if.then88.do.body98_crit_edge, %do.body85.do.body98_crit_edge
  %workstation_name99 = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 18
  %28 = ptrtoint ptr %workstation_name99 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %workstation_name99, align 8
  %tobool100.not = icmp eq ptr %29, null
  br i1 %tobool100.not, label %do.body98.do.body111_crit_edge, label %if.then101

do.body98.do.body111_crit_edge:                   ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body111

if.then101:                                       ; preds = %do.body98
  %call103 = tail call noalias ptr @kstrdup(ptr noundef nonnull %29, i32 noundef 2592) #9
  %30 = ptrtoint ptr %workstation_name to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call103, ptr %workstation_name, align 8
  %cmp106 = icmp eq ptr %call103, null
  br i1 %cmp106, label %if.then101.return.sink.split_crit_edge, label %if.then101.do.body111_crit_edge

if.then101.do.body111_crit_edge:                  ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body111

if.then101.return.sink.split_crit_edge:           ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split

do.body111:                                       ; preds = %if.then101.do.body111_crit_edge, %do.body98.do.body111_crit_edge
  %nodename112 = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 17
  %31 = ptrtoint ptr %nodename112 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %nodename112, align 4
  %tobool113.not = icmp eq ptr %32, null
  br i1 %tobool113.not, label %do.body111.do.body124_crit_edge, label %if.then114

do.body111.do.body124_crit_edge:                  ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body124

if.then114:                                       ; preds = %do.body111
  %call116 = tail call noalias ptr @kstrdup(ptr noundef nonnull %32, i32 noundef 2592) #9
  %33 = ptrtoint ptr %nodename to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call116, ptr %nodename, align 4
  %cmp119 = icmp eq ptr %call116, null
  br i1 %cmp119, label %if.then114.return.sink.split_crit_edge, label %if.then114.do.body124_crit_edge

if.then114.do.body124_crit_edge:                  ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body124

if.then114.return.sink.split_crit_edge:           ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split

do.body124:                                       ; preds = %if.then114.do.body124_crit_edge, %do.body111.do.body124_crit_edge
  %iocharset125 = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 19
  %34 = ptrtoint ptr %iocharset125 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %iocharset125, align 4
  %tobool126.not = icmp eq ptr %35, null
  br i1 %tobool126.not, label %do.body124.return_crit_edge, label %if.then127

do.body124.return_crit_edge:                      ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then127:                                       ; preds = %do.body124
  %call129 = tail call noalias ptr @kstrdup(ptr noundef nonnull %35, i32 noundef 2592) #9
  %36 = ptrtoint ptr %iocharset to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call129, ptr %iocharset, align 4
  %cmp132 = icmp eq ptr %call129, null
  br i1 %cmp132, label %if.then127.return.sink.split_crit_edge, label %if.then127.return_crit_edge

if.then127.return_crit_edge:                      ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then127.return.sink.split_crit_edge:           ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split

return.sink.split:                                ; preds = %if.then127.return.sink.split_crit_edge, %if.then114.return.sink.split_crit_edge, %if.then101.return.sink.split_crit_edge, %if.then88.return.sink.split_crit_edge, %if.then75.return.sink.split_crit_edge, %if.then62.return.sink.split_crit_edge, %if.then49.return.sink.split_crit_edge, %if.then36.return.sink.split_crit_edge, %if.then23.return.sink.split_crit_edge, %if.then10.return.sink.split_crit_edge, %if.then.return.sink.split_crit_edge
  tail call void @smb3_cleanup_fs_context_contents(ptr noundef %new_ctx)
  br label %return

return:                                           ; preds = %return.sink.split, %if.then127.return_crit_edge, %do.body124.return_crit_edge
  %retval.0 = phi i32 [ 0, %do.body124.return_crit_edge ], [ 0, %if.then127.return_crit_edge ], [ -12, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smb3_cleanup_fs_context_contents(ptr noundef %ctx) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %ctx, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mount_options = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 61
  %0 = ptrtoint ptr %mount_options to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mount_options, align 8
  tail call void @kfree(ptr noundef %1) #9
  %2 = ptrtoint ptr %mount_options to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %mount_options, align 8
  %username = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 11
  %3 = ptrtoint ptr %username to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %username, align 4
  tail call void @kfree(ptr noundef %4) #9
  %5 = ptrtoint ptr %username to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %username, align 4
  %password = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 12
  %6 = ptrtoint ptr %password to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %password, align 8
  tail call void @kfree_sensitive(ptr noundef %7) #9
  %8 = ptrtoint ptr %password to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %password, align 8
  %server_hostname = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 15
  %9 = ptrtoint ptr %server_hostname to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %server_hostname, align 4
  tail call void @kfree(ptr noundef %10) #9
  %11 = ptrtoint ptr %server_hostname to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %server_hostname, align 4
  %UNC = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 16
  %12 = ptrtoint ptr %UNC to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %UNC, align 8
  tail call void @kfree(ptr noundef %13) #9
  %14 = ptrtoint ptr %UNC to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %UNC, align 8
  %source = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 14
  %15 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %source, align 8
  tail call void @kfree(ptr noundef %16) #9
  %17 = ptrtoint ptr %source to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %source, align 8
  %domainname = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 13
  %18 = ptrtoint ptr %domainname to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %domainname, align 4
  tail call void @kfree(ptr noundef %19) #9
  %20 = ptrtoint ptr %domainname to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %domainname, align 4
  %workstation_name = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 18
  %21 = ptrtoint ptr %workstation_name to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %workstation_name, align 8
  tail call void @kfree(ptr noundef %22) #9
  %23 = ptrtoint ptr %workstation_name to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %workstation_name, align 8
  %nodename = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 17
  %24 = ptrtoint ptr %nodename to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %nodename, align 4
  tail call void @kfree(ptr noundef %25) #9
  %26 = ptrtoint ptr %nodename to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %nodename, align 4
  %iocharset = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 19
  %27 = ptrtoint ptr %iocharset to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iocharset, align 4
  tail call void @kfree(ptr noundef %28) #9
  %29 = ptrtoint ptr %iocharset to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %iocharset, align 4
  %prepath = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 48
  %30 = ptrtoint ptr %prepath to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prepath, align 8
  tail call void @kfree(ptr noundef %31) #9
  %32 = ptrtoint ptr %prepath to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %prepath, align 8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smb3_parse_opt(ptr noundef %options, ptr nocapture noundef readonly %key, ptr nocapture noundef writeonly %val) local_unnamed_addr #1 align 64 {
entry:
  %opts = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %opts) #9
  %call = tail call noalias ptr @kstrdup(ptr noundef %options, i32 noundef 3264) #9
  %0 = ptrtoint ptr %opts to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %opts, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup19_crit_edge, label %while.cond.preheader

entry.cleanup19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup19

while.cond.preheader:                             ; preds = %entry
  %call133 = call ptr @strsep(ptr noundef nonnull %opts, ptr noundef nonnull @.str.110) #9
  %tobool2.not34 = icmp eq ptr %call133, null
  br i1 %tobool2.not34, label %while.cond.preheader.out_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.out_crit_edge:               ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call135 = phi ptr [ %call1, %cleanup.while.body_crit_edge ], [ %call133, %while.cond.preheader.while.body_crit_edge ]
  %1 = ptrtoint ptr %call135 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %call135, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool3.not = icmp eq i8 %2, 0
  br i1 %tobool3.not, label %while.body.cleanup_crit_edge, label %if.end5

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %while.body
  %call6 = call i32 @strlen(ptr noundef %key) #12
  %call7 = call i32 @strncasecmp(ptr noundef nonnull %call135, ptr noundef %key, i32 noundef %call6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %call11 = call ptr @strchr(ptr noundef nonnull %call135, i32 noundef 61)
  %tobool12.not = icmp eq ptr %call11, null
  %cmp = icmp eq ptr %call11, %call135
  %or.cond = or i1 %tobool12.not, %cmp
  br i1 %or.cond, label %if.end10.cleanup_crit_edge, label %cleanup.thread

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.thread:                                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr = getelementptr i8, ptr %call11, i32 1
  %3 = ptrtoint ptr %call11 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %call11, align 1
  %call16 = call noalias ptr @kstrdup(ptr noundef %incdec.ptr, i32 noundef 3264) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call16, ptr %val, align 4
  %tobool17.not = icmp eq ptr %call16, null
  %cond = select i1 %tobool17.not, i32 -12, i32 0
  br label %out

cleanup:                                          ; preds = %if.end10.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %while.body.cleanup_crit_edge
  %call1 = call ptr @strsep(ptr noundef nonnull %opts, ptr noundef nonnull @.str.110) #9
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %cleanup.out_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

cleanup.out_crit_edge:                            ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

out:                                              ; preds = %cleanup.out_crit_edge, %cleanup.thread, %while.cond.preheader.out_crit_edge
  %rc.2 = phi i32 [ %cond, %cleanup.thread ], [ -2, %while.cond.preheader.out_crit_edge ], [ -2, %cleanup.out_crit_edge ]
  call void @kfree(ptr noundef nonnull %call) #9
  br label %cleanup19

cleanup19:                                        ; preds = %out, %entry.cleanup19_crit_edge
  %retval.0 = phi i32 [ %rc.2, %out ], [ -12, %entry.cleanup19_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %opts) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smb3_parse_devname(ptr noundef %devname, ptr nocapture noundef %ctx) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %devname, null
  br i1 %tobool.not, label %entry.do.body5_crit_edge, label %lor.rhs, !prof !673

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5

lor.rhs:                                          ; preds = %entry
  %0 = ptrtoint ptr %devname to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %devname, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %lor.rhs.do.body5_crit_edge, label %if.end14, !prof !673

lor.rhs.do.body5_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5

do.body5:                                         ; preds = %lor.rhs.do.body5_crit_edge, %entry.do.body5_crit_edge
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @smb3_parse_devname._rs, ptr noundef nonnull @__func__.smb3_parse_devname) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %do.body5.cleanup_crit_edge, label %do.end

do.body5.cleanup_crit_edge:                       ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113) #13
  br label %cleanup

if.end14:                                         ; preds = %lor.rhs
  %call15 = tail call i32 @strspn(ptr noundef nonnull %devname, ptr noundef nonnull @.str.111)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call15)
  %cmp.not = icmp eq i32 %call15, 2
  br i1 %cmp.not, label %if.end17, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %if.end14
  %add.ptr = getelementptr i8, ptr %devname, i32 2
  %call18 = tail call ptr @strpbrk(ptr noundef %add.ptr, ptr noundef nonnull @.str.111)
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.end17.cleanup_crit_edge, label %if.end21

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  %server_hostname = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 15
  %2 = ptrtoint ptr %server_hostname to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %server_hostname, align 4
  tail call void @kfree(ptr noundef %3) #9
  %sub.ptr.lhs.cast = ptrtoint ptr %call18 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %devname to i32
  %sub.ptr.sub = sub i32 -2, %sub.ptr.rhs.cast
  %sub = add i32 %sub.ptr.sub, %sub.ptr.lhs.cast
  %call23 = tail call ptr @kstrndup(ptr noundef %add.ptr, i32 noundef %sub, i32 noundef 3264) #9
  %4 = ptrtoint ptr %server_hostname to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call23, ptr %server_hostname, align 4
  %tobool26.not = icmp eq ptr %call23, null
  br i1 %tobool26.not, label %if.end21.cleanup_crit_edge, label %if.end28

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end28:                                         ; preds = %if.end21
  %incdec.ptr = getelementptr i8, ptr %call18, i32 1
  %call29 = tail call i32 @strcspn(ptr noundef %incdec.ptr, ptr noundef nonnull @.str.111)
  %add.ptr30 = getelementptr i8, ptr %incdec.ptr, i32 %call29
  %UNC = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 16
  %5 = ptrtoint ptr %UNC to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %UNC, align 8
  tail call void @kfree(ptr noundef %6) #9
  %sub.ptr.lhs.cast31 = ptrtoint ptr %add.ptr30 to i32
  %sub.ptr.sub33 = sub i32 %sub.ptr.lhs.cast31, %sub.ptr.rhs.cast
  %call34 = tail call ptr @kstrndup(ptr noundef nonnull %devname, i32 noundef %sub.ptr.sub33, i32 noundef 3264) #9
  %7 = ptrtoint ptr %UNC to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call34, ptr %UNC, align 8
  %tobool37.not = icmp eq ptr %call34, null
  br i1 %tobool37.not, label %if.end28.cleanup_crit_edge, label %if.end39

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end39:                                         ; preds = %if.end28
  %call1.i = tail call ptr @strchr(ptr noundef nonnull %call34, i32 noundef 47) #9
  %tobool.not2.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not2.i, label %if.end39.convert_delimiter.exit_crit_edge, label %if.end39.while.body.i_crit_edge

if.end39.while.body.i_crit_edge:                  ; preds = %if.end39
  br label %while.body.i

if.end39.convert_delimiter.exit_crit_edge:        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %convert_delimiter.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end39.while.body.i_crit_edge
  %call3.i = phi ptr [ %call.i, %while.body.i.while.body.i_crit_edge ], [ %call1.i, %if.end39.while.body.i_crit_edge ]
  %8 = ptrtoint ptr %call3.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 92, ptr %call3.i, align 1
  %call.i = tail call ptr @strchr(ptr noundef nonnull %call3.i, i32 noundef 47) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %while.body.i.convert_delimiter.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.convert_delimiter.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %convert_delimiter.exit

convert_delimiter.exit:                           ; preds = %while.body.i.convert_delimiter.exit_crit_edge, %if.end39.convert_delimiter.exit_crit_edge
  %9 = ptrtoint ptr %add.ptr30 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %add.ptr30, align 1
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i8 %10, label %convert_delimiter.exit.if.end48_crit_edge [
    i8 47, label %convert_delimiter.exit.if.then46_crit_edge
    i8 92, label %convert_delimiter.exit.if.then46_crit_edge100
  ]

convert_delimiter.exit.if.then46_crit_edge100:    ; preds = %convert_delimiter.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then46

convert_delimiter.exit.if.then46_crit_edge:       ; preds = %convert_delimiter.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then46

convert_delimiter.exit.if.end48_crit_edge:        ; preds = %convert_delimiter.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then46:                                        ; preds = %convert_delimiter.exit.if.then46_crit_edge, %convert_delimiter.exit.if.then46_crit_edge100
  %incdec.ptr47 = getelementptr i8, ptr %add.ptr30, i32 1
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %convert_delimiter.exit.if.end48_crit_edge
  %pos.0 = phi ptr [ %incdec.ptr47, %if.then46 ], [ %add.ptr30, %convert_delimiter.exit.if.end48_crit_edge ]
  %prepath = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 48
  %12 = ptrtoint ptr %prepath to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prepath, align 8
  tail call void @kfree(ptr noundef %13) #9
  %14 = ptrtoint ptr %prepath to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %prepath, align 8
  %15 = ptrtoint ptr %pos.0 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %pos.0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool50.not = icmp eq i8 %16, 0
  br i1 %tobool50.not, label %if.end48.cleanup_crit_edge, label %if.end48.while.cond.i_crit_edge

if.end48.while.cond.i_crit_edge:                  ; preds = %if.end48
  br label %while.cond.i

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.cond.i:                                     ; preds = %while.body.i91, %if.end48.while.cond.i_crit_edge
  %17 = phi i8 [ %.pr, %while.body.i91 ], [ %16, %if.end48.while.cond.i_crit_edge ]
  %cursor1.0.i = phi ptr [ %incdec.ptr.i, %while.body.i91 ], [ %pos.0, %if.end48.while.cond.i_crit_edge ]
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.404)
  switch i8 %17, label %while.end.i [
    i8 47, label %while.cond.i.while.body.i91_crit_edge
    i8 92, label %while.cond.i.while.body.i91_crit_edge101
  ]

while.cond.i.while.body.i91_crit_edge101:         ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i91

while.cond.i.while.body.i91_crit_edge:            ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i91

while.body.i91:                                   ; preds = %while.cond.i.while.body.i91_crit_edge, %while.cond.i.while.body.i91_crit_edge101
  %incdec.ptr.i = getelementptr i8, ptr %cursor1.0.i, i32 1
  %19 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %.pr = load i8, ptr %incdec.ptr.i, align 1
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  %20 = ptrtoint ptr %pos.0 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %17, ptr %pos.0, align 1
  %21 = ptrtoint ptr %cursor1.0.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %cursor1.0.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not5357.i = icmp eq i8 %22, 0
  br i1 %tobool.not5357.i, label %while.end.i.while.end22.i_crit_edge, label %while.end.i.while.body7.lr.ph.i_crit_edge

while.end.i.while.body7.lr.ph.i_crit_edge:        ; preds = %while.end.i
  br label %while.body7.lr.ph.i

while.end.i.while.end22.i_crit_edge:              ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end22.i

while.body7.lr.ph.i:                              ; preds = %if.end.i.while.body7.lr.ph.i_crit_edge, %while.end.i.while.body7.lr.ph.i_crit_edge
  %incdec.ptr6.lcssa50.pn.i = phi ptr [ %incdec.ptr654.i, %if.end.i.while.body7.lr.ph.i_crit_edge ], [ %cursor1.0.i, %while.end.i.while.body7.lr.ph.i_crit_edge ]
  %cursor2.0.ph58.i = phi ptr [ %incdec.ptr21.i, %if.end.i.while.body7.lr.ph.i_crit_edge ], [ %pos.0, %while.end.i.while.body7.lr.ph.i_crit_edge ]
  br label %while.body7.i

while.body7.i:                                    ; preds = %while.body7.i.backedge, %while.body7.lr.ph.i
  %incdec.ptr6.lcssa50.pn.pn.i = phi ptr [ %incdec.ptr6.lcssa50.pn.i, %while.body7.lr.ph.i ], [ %incdec.ptr654.i, %while.body7.i.backedge ]
  %incdec.ptr654.i = getelementptr i8, ptr %incdec.ptr6.lcssa50.pn.pn.i, i32 1
  %23 = ptrtoint ptr %incdec.ptr654.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %incdec.ptr654.i, align 1
  %25 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.405)
  switch i8 %24, label %while.body7.i.if.end.i_crit_edge [
    i8 47, label %while.body7.i.land.lhs.true.i_crit_edge
    i8 92, label %while.body7.i.land.lhs.true.i_crit_edge102
  ]

while.body7.i.land.lhs.true.i_crit_edge102:       ; preds = %while.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i

while.body7.i.land.lhs.true.i_crit_edge:          ; preds = %while.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i

while.body7.i.if.end.i_crit_edge:                 ; preds = %while.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %while.body7.i.land.lhs.true.i_crit_edge, %while.body7.i.land.lhs.true.i_crit_edge102
  %26 = ptrtoint ptr %cursor2.0.ph58.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %cursor2.0.ph58.i, align 1
  %28 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.406)
  switch i8 %27, label %land.lhs.true.i.if.end.i_crit_edge [
    i8 47, label %land.lhs.true.i.while.body7.i.backedge_crit_edge
    i8 92, label %land.lhs.true.i.while.body7.i.backedge_crit_edge103
  ]

land.lhs.true.i.while.body7.i.backedge_crit_edge103: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body7.i.backedge

land.lhs.true.i.while.body7.i.backedge_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body7.i.backedge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

while.body7.i.backedge:                           ; preds = %land.lhs.true.i.while.body7.i.backedge_crit_edge, %land.lhs.true.i.while.body7.i.backedge_crit_edge103
  br label %while.body7.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %while.body7.i.if.end.i_crit_edge
  %incdec.ptr21.i = getelementptr i8, ptr %cursor2.0.ph58.i, i32 1
  %29 = ptrtoint ptr %incdec.ptr21.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %24, ptr %incdec.ptr21.i, align 1
  %30 = ptrtoint ptr %incdec.ptr654.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %incdec.ptr654.i, align 1
  %tobool.not53.i = icmp eq i8 %31, 0
  br i1 %tobool.not53.i, label %if.end.i.while.end22.i_crit_edge, label %if.end.i.while.body7.lr.ph.i_crit_edge

if.end.i.while.body7.lr.ph.i_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body7.lr.ph.i

if.end.i.while.end22.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end22.i

while.end22.i:                                    ; preds = %if.end.i.while.end22.i_crit_edge, %while.end.i.while.end22.i_crit_edge
  %cursor2.0.ph.lcssa.i = phi ptr [ %pos.0, %while.end.i.while.end22.i_crit_edge ], [ %incdec.ptr21.i, %if.end.i.while.end22.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %cursor2.0.ph.lcssa.i, i32 -1
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %add.ptr.i, align 1
  %34 = zext i8 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.407)
  switch i8 %33, label %while.end22.i.sanitize_path.exit_crit_edge [
    i8 47, label %while.end22.i.if.then31.i_crit_edge
    i8 92, label %while.end22.i.if.then31.i_crit_edge104
  ]

while.end22.i.if.then31.i_crit_edge104:           ; preds = %while.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then31.i

while.end22.i.if.then31.i_crit_edge:              ; preds = %while.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then31.i

while.end22.i.sanitize_path.exit_crit_edge:       ; preds = %while.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sanitize_path.exit

if.then31.i:                                      ; preds = %while.end22.i.if.then31.i_crit_edge, %while.end22.i.if.then31.i_crit_edge104
  br label %sanitize_path.exit

sanitize_path.exit:                               ; preds = %if.then31.i, %while.end22.i.sanitize_path.exit_crit_edge
  %cursor2.1.i = phi ptr [ %add.ptr.i, %if.then31.i ], [ %cursor2.0.ph.lcssa.i, %while.end22.i.sanitize_path.exit_crit_edge ]
  %35 = ptrtoint ptr %cursor2.1.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %cursor2.1.i, align 1
  %call.i93 = tail call noalias ptr @kstrdup(ptr noundef %pos.0, i32 noundef 3264) #9
  %36 = ptrtoint ptr %prepath to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i93, ptr %prepath, align 8
  %tobool56.not = icmp eq ptr %call.i93, null
  %. = select i1 %tobool56.not, i32 -12, i32 0
  br label %cleanup

cleanup:                                          ; preds = %sanitize_path.exit, %if.end48.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %do.end, %do.body5.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.body5.cleanup_crit_edge ], [ -22, %if.end14.cleanup_crit_edge ], [ -22, %if.end17.cleanup_crit_edge ], [ -12, %if.end21.cleanup_crit_edge ], [ -12, %if.end28.cleanup_crit_edge ], [ 0, %if.end48.cleanup_crit_edge ], [ %., %sanitize_path.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strpbrk(ptr noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smb3_init_fs_context(ptr nocapture noundef writeonly %fc) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !663) #9
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %nsproxy.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 110
  %4 = ptrtoint ptr %nsproxy.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nsproxy.i, align 4
  %uts_ns.i = getelementptr inbounds %struct.nsproxy, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %uts_ns.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %uts_ns.i, align 4
  %nodename1 = getelementptr inbounds %struct.new_utsname, ptr %7, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 480) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !673

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call6 = tail call noalias ptr @kstrdup(ptr noundef %nodename1, i32 noundef 3264) #9
  %workstation_name = getelementptr inbounds %struct.smb3_fs_context, ptr %call7.i.i, i32 0, i32 18
  %9 = ptrtoint ptr %workstation_name to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call6, ptr %workstation_name, align 8
  %tobool8.not = icmp eq ptr %call6, null
  br i1 %tobool8.not, label %if.then57.critedge, label %if.end18, !prof !673

if.end18:                                         ; preds = %if.end
  %source_rfc1001_name = getelementptr inbounds %struct.smb3_fs_context, ptr %call7.i.i, i32 0, i32 20
  %10 = call ptr @memset(ptr %source_rfc1001_name, i32 32, i32 15)
  %11 = ptrtoint ptr %nodename1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %char0 = load i8, ptr %nodename1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %cmp101.not = icmp eq i8 %char0, 0
  br i1 %cmp101.not, label %if.end18.for.end_crit_edge, label %if.end18.for.body_crit_edge

if.end18.for.body_crit_edge:                      ; preds = %if.end18
  br label %for.body

if.end18.for.end_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end18.for.body_crit_edge
  %i.0102 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end18.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %nodename1, i32 %i.0102
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  %conv.i = zext i8 %13 to i32
  %arrayidx.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i, align 1
  %16 = and i8 %15, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp.not.i = icmp eq i8 %16, 0
  %sub.i = add i8 %13, -32
  %spec.select.i = select i1 %cmp.not.i, i8 %13, i8 %sub.i
  %arrayidx23 = getelementptr %struct.smb3_fs_context, ptr %call7.i.i, i32 0, i32 20, i32 %i.0102
  %17 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %spec.select.i, ptr %arrayidx23, align 1
  %inc = add nuw i32 %i.0102, 1
  %call20 = tail call i32 @strnlen(ptr noundef %nodename1, i32 noundef 15) #12
  %cmp = icmp ult i32 %inc, %call20
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end18.for.end_crit_edge
  %arrayidx25 = getelementptr %struct.smb3_fs_context, ptr %call7.i.i, i32 0, i32 20, i32 15
  %18 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %arrayidx25, align 1
  %target_rfc1001_name = getelementptr inbounds %struct.smb3_fs_context, ptr %call7.i.i, i32 0, i32 21
  %19 = ptrtoint ptr %target_rfc1001_name to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %target_rfc1001_name, align 8
  %cred_uid = getelementptr inbounds %struct.smb3_fs_context, ptr %call7.i.i, i32 0, i32 22
  %20 = tail call i32 @llvm.read_register.i32(metadata !663) #9
  %and.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 99
  %24 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cred, align 16
  %uid = getelementptr inbounds %struct.cred, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %uid, align 4
  %28 = ptrtoint ptr %cred_uid to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %cred_uid, align 8
  %linux_uid = getelementptr inbounds %struct.smb3_fs_context, ptr %call7.i.i, i32 0, i32 23
  %29 = load ptr, ptr %task, align 8
  %cred34 = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 99
  %30 = ptrtoint ptr %cred34 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cred34, align 16
  %uid35 = getelementptr inbounds %struct.cred, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %uid35 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %uid35, align 4
  %34 = ptrtoint ptr %linux_uid to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %linux_uid, align 4
  %linux_gid = getelementptr inbounds %struct.smb3_fs_context, ptr %call7.i.i, i32 0, i32 24
  %35 = load ptr, ptr %task, align 8
  %cred42 = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 99
  %36 = ptrtoint ptr %cred42 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cred42, align 16
  %gid = getelementptr inbounds %struct.cred, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %gid, align 4
  %40 = ptrtoint ptr %linux_gid to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %linux_gid, align 8
  %bsize = getelementptr inbounds %struct.smb3_fs_context, ptr %call7.i.i, i32 0, i32 37
  %41 = ptrtoint ptr %bsize to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1048576, ptr %bsize, align 8
  %rasize = getelementptr inbounds %struct.smb3_fs_context, ptr %call7.i.i, i32 0, i32 38
  %42 = ptrtoint ptr %rasize to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %rasize, align 4
  %remap = getelementptr inbounds %struct.smb3_fs_context, ptr %call7.i.i, i32 0, i32 34
  %43 = ptrtoint ptr %remap to i32
  call void @__asan_loadN_noabort(i32 %43, i32 5)
  %bf.load = load i40, ptr %remap, align 1
  %file_mode = getelementptr inbounds %struct.smb3_fs_context, ptr %call7.i.i, i32 0, i32 27
  %44 = ptrtoint ptr %file_mode to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 493, ptr %file_mode, align 4
  %dir_mode = getelementptr inbounds %struct.smb3_fs_context, ptr %call7.i.i, i32 0, i32 28
  %45 = ptrtoint ptr %dir_mode to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 493, ptr %dir_mode, align 2
  %acregmax = getelementptr inbounds %struct.smb3_fs_context, ptr %call7.i.i, i32 0, i32 44
  %46 = ptrtoint ptr %acregmax to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 100, ptr %acregmax, align 8
  %acdirmax = getelementptr inbounds %struct.smb3_fs_context, ptr %call7.i.i, i32 0, i32 45
  %47 = ptrtoint ptr %acdirmax to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 100, ptr %acdirmax, align 4
  %handle_timeout = getelementptr inbounds %struct.smb3_fs_context, ptr %call7.i.i, i32 0, i32 55
  %48 = ptrtoint ptr %handle_timeout to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %handle_timeout, align 8
  %ops = getelementptr inbounds %struct.smb3_fs_context, ptr %call7.i.i, i32 0, i32 46
  %49 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @smb30_operations, ptr %ops, align 8
  %vals = getelementptr inbounds %struct.smb3_fs_context, ptr %call7.i.i, i32 0, i32 47
  %50 = ptrtoint ptr %vals to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @smbdefault_values, ptr %vals, align 4
  %echo_interval = getelementptr inbounds %struct.smb3_fs_context, ptr %call7.i.i, i32 0, i32 52
  %51 = ptrtoint ptr %echo_interval to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 60, ptr %echo_interval, align 8
  %bf.set51 = and i40 %bf.load, -354334801953
  %bf.clear53 = or i40 %bf.set51, 354334801920
  store i40 %bf.clear53, ptr %remap, align 1
  %max_channels = getelementptr inbounds %struct.smb3_fs_context, ptr %call7.i.i, i32 0, i32 57
  %52 = ptrtoint ptr %max_channels to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %max_channels, align 8
  %backupuid_specified = getelementptr inbounds %struct.smb3_fs_context, ptr %call7.i.i, i32 0, i32 32
  %53 = ptrtoint ptr %backupuid_specified to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %backupuid_specified, align 1
  %backupgid_specified = getelementptr inbounds %struct.smb3_fs_context, ptr %call7.i.i, i32 0, i32 33
  %54 = ptrtoint ptr %backupgid_specified to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %backupgid_specified, align 8
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %55 = ptrtoint ptr %fs_private to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call7.i.i, ptr %fs_private, align 4
  %56 = ptrtoint ptr %fc to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @smb3_fs_context_ops, ptr %fc, align 4
  br label %cleanup

if.then57.critedge:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef null) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then57.critedge, %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.then57.critedge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smb3_cleanup_fs_context(ptr noundef %ctx) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ctx, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @smb3_cleanup_fs_context_contents(ptr noundef nonnull %ctx)
  tail call void @kfree(ptr noundef nonnull %ctx) #9
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smb3_update_mnt_flags(ptr noundef %cifs_sb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1 = getelementptr inbounds %struct.cifs_sb_info, ptr %cifs_sb, i32 0, i32 4
  %0 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx1, align 4
  %nodfs = getelementptr inbounds %struct.smb3_fs_context, ptr %1, i32 0, i32 34
  %2 = ptrtoint ptr %nodfs to i32
  call void @__asan_loadN_noabort(i32 %2, i32 5)
  %bf.load = load i40, ptr %nodfs, align 1
  %mnt_cifs_flags2 = getelementptr inbounds %struct.cifs_sb_info, ptr %cifs_sb, i32 0, i32 6
  %3 = ptrtoint ptr %mnt_cifs_flags2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mnt_cifs_flags2, align 4
  %and = and i32 %4, -134217729
  %5 = trunc i40 %bf.load to i32
  %6 = shl i32 %5, 6
  %7 = and i32 %6, 134217728
  %and.sink = or i32 %and, %7
  store i32 %and.sink, ptr %mnt_cifs_flags2, align 4
  %noperm = getelementptr inbounds %struct.smb3_fs_context, ptr %1, i32 0, i32 31
  %8 = ptrtoint ptr %noperm to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %bf.load3 = load i16, ptr %noperm, align 1
  %mnt_cifs_flags11 = getelementptr inbounds %struct.cifs_sb_info, ptr %cifs_sb, i32 0, i32 6
  %and12 = and i32 %and.sink, -2
  %9 = lshr i16 %bf.load3, 7
  %.lobit = and i16 %9, 1
  %10 = zext i16 %.lobit to i32
  %and12.sink = or i32 %and12, %10
  %11 = ptrtoint ptr %mnt_cifs_flags11 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and12.sink, ptr %mnt_cifs_flags11, align 4
  %bf.load14 = load i16, ptr %noperm, align 1
  %mnt_cifs_flags22 = getelementptr inbounds %struct.cifs_sb_info, ptr %cifs_sb, i32 0, i32 6
  %and23 = and i32 %and12.sink, -3
  %12 = lshr i16 %bf.load14, 11
  %13 = and i16 %12, 2
  %14 = zext i16 %13 to i32
  %and23.sink = or i32 %and23, %14
  %15 = ptrtoint ptr %mnt_cifs_flags22 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and23.sink, ptr %mnt_cifs_flags22, align 4
  %bf.load25 = load i16, ptr %noperm, align 1
  %16 = and i16 %bf.load25, 2048
  %mnt_cifs_flags33 = getelementptr inbounds %struct.cifs_sb_info, ptr %cifs_sb, i32 0, i32 6
  %and34 = and i32 %and23.sink, -33554433
  %17 = zext i16 %16 to i32
  %18 = shl nuw nsw i32 %17, 14
  %and34.sink = or i32 %and34, %18
  %19 = ptrtoint ptr %mnt_cifs_flags33 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and34.sink, ptr %mnt_cifs_flags33, align 4
  %bf.load36 = load i40, ptr %nodfs, align 1
  %mnt_cifs_flags44 = getelementptr inbounds %struct.cifs_sb_info, ptr %cifs_sb, i32 0, i32 6
  %and45 = and i32 %and34.sink, -5
  %20 = lshr i40 %bf.load36, 36
  %21 = trunc i40 %20 to i32
  %22 = and i32 %21, 4
  %and45.sink = or i32 %and45, %22
  %23 = ptrtoint ptr %mnt_cifs_flags44 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and45.sink, ptr %mnt_cifs_flags44, align 4
  %bf.load47 = load i40, ptr %nodfs, align 1
  %mnt_cifs_flags55 = getelementptr inbounds %struct.cifs_sb_info, ptr %cifs_sb, i32 0, i32 6
  %and56 = and i32 %and45.sink, -8388609
  %24 = lshr i40 %bf.load47, 10
  %25 = trunc i40 %24 to i32
  %26 = and i32 %25, 8388608
  %and56.sink = or i32 %and56, %26
  %27 = ptrtoint ptr %mnt_cifs_flags55 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %and56.sink, ptr %mnt_cifs_flags55, align 4
  %bf.load58 = load i40, ptr %nodfs, align 1
  %mnt_cifs_flags66 = getelementptr inbounds %struct.cifs_sb_info, ptr %cifs_sb, i32 0, i32 6
  %and67 = and i32 %and56.sink, -33
  %28 = lshr i40 %bf.load58, 27
  %29 = trunc i40 %28 to i32
  %30 = and i32 %29, 32
  %and67.sink = or i32 %and67, %30
  %31 = ptrtoint ptr %mnt_cifs_flags66 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %and67.sink, ptr %mnt_cifs_flags66, align 4
  %bf.load69 = load i40, ptr %nodfs, align 1
  %mnt_cifs_flags76 = getelementptr inbounds %struct.cifs_sb_info, ptr %cifs_sb, i32 0, i32 6
  %and77 = and i32 %and67.sink, -17
  %32 = lshr i40 %bf.load69, 35
  %33 = trunc i40 %32 to i32
  %34 = and i32 %33, 16
  %and77.sink = or i32 %and77, %34
  %35 = ptrtoint ptr %mnt_cifs_flags76 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %and77.sink, ptr %mnt_cifs_flags76, align 4
  %bf.load79 = load i40, ptr %nodfs, align 1
  %mnt_cifs_flags87 = getelementptr inbounds %struct.cifs_sb_info, ptr %cifs_sb, i32 0, i32 6
  %and88 = and i32 %and77.sink, -129
  %36 = trunc i40 %bf.load79 to i32
  %37 = lshr i32 %36, 21
  %38 = and i32 %37, 128
  %and88.sink = or i32 %and88, %38
  %39 = ptrtoint ptr %mnt_cifs_flags87 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %and88.sink, ptr %mnt_cifs_flags87, align 4
  %bf.load90 = load i40, ptr %nodfs, align 1
  %mnt_cifs_flags98 = getelementptr inbounds %struct.cifs_sb_info, ptr %cifs_sb, i32 0, i32 6
  %and99 = and i32 %and88.sink, -257
  %40 = trunc i40 %bf.load90 to i32
  %41 = lshr i32 %40, 17
  %42 = and i32 %41, 256
  %and99.sink = or i32 %and99, %42
  %43 = ptrtoint ptr %mnt_cifs_flags98 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %and99.sink, ptr %mnt_cifs_flags98, align 4
  %bf.load101 = load i40, ptr %nodfs, align 1
  %mnt_cifs_flags109 = getelementptr inbounds %struct.cifs_sb_info, ptr %cifs_sb, i32 0, i32 6
  %and110 = and i32 %and99.sink, -67108865
  %44 = trunc i40 %bf.load101 to i32
  %45 = shl i32 %44, 2
  %46 = and i32 %45, 67108864
  %and110.sink = or i32 %and110, %46
  %47 = ptrtoint ptr %mnt_cifs_flags109 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %and110.sink, ptr %mnt_cifs_flags109, align 4
  %bf.load112 = load i40, ptr %nodfs, align 1
  %mnt_cifs_flags120 = getelementptr inbounds %struct.cifs_sb_info, ptr %cifs_sb, i32 0, i32 6
  %and121 = and i32 %and110.sink, -16385
  %48 = trunc i40 %bf.load112 to i32
  %49 = lshr i32 %48, 3
  %50 = and i32 %49, 16384
  %and121.sink = or i32 %and121, %50
  %51 = ptrtoint ptr %mnt_cifs_flags120 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %and121.sink, ptr %mnt_cifs_flags120, align 4
  %bf.load123 = load i40, ptr %nodfs, align 1
  %mnt_cifs_flags131 = getelementptr inbounds %struct.cifs_sb_info, ptr %cifs_sb, i32 0, i32 6
  %and132 = and i32 %and121.sink, -8193
  %52 = trunc i40 %bf.load123 to i32
  %53 = lshr i32 %52, 10
  %54 = and i32 %53, 8192
  %and132.sink = or i32 %and132, %54
  %55 = ptrtoint ptr %mnt_cifs_flags131 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %and132.sink, ptr %mnt_cifs_flags131, align 4
  %bf.load134 = load i40, ptr %nodfs, align 1
  %mnt_cifs_flags142 = getelementptr inbounds %struct.cifs_sb_info, ptr %cifs_sb, i32 0, i32 6
  %and143 = and i32 %and132.sink, -524289
  %56 = trunc i40 %bf.load134 to i32
  %57 = shl i32 %56, 7
  %58 = and i32 %57, 524288
  %and143.sink = or i32 %and143, %58
  %59 = ptrtoint ptr %mnt_cifs_flags142 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %and143.sink, ptr %mnt_cifs_flags142, align 4
  %bf.load145 = load i16, ptr %noperm, align 1
  %60 = and i16 %bf.load145, 32
  %mnt_cifs_flags153 = getelementptr inbounds %struct.cifs_sb_info, ptr %cifs_sb, i32 0, i32 6
  %and154 = and i32 %and143.sink, -268435457
  %61 = zext i16 %60 to i32
  %62 = shl nuw nsw i32 %61, 23
  %and154.sink = or i32 %and154, %62
  %63 = ptrtoint ptr %mnt_cifs_flags153 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %and154.sink, ptr %mnt_cifs_flags153, align 4
  %bf.load156 = load i16, ptr %noperm, align 1
  %mnt_cifs_flags164 = getelementptr inbounds %struct.cifs_sb_info, ptr %cifs_sb, i32 0, i32 6
  %and165 = and i32 %and154.sink, -513
  %64 = shl i16 %bf.load156, 6
  %65 = and i16 %64, 512
  %66 = zext i16 %65 to i32
  %and165.sink = or i32 %and165, %66
  %67 = ptrtoint ptr %mnt_cifs_flags164 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %and165.sink, ptr %mnt_cifs_flags164, align 4
  %backupuid_specified = getelementptr inbounds %struct.smb3_fs_context, ptr %1, i32 0, i32 32
  %68 = ptrtoint ptr %backupuid_specified to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %backupuid_specified, align 1, !range !674
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.not = icmp eq i8 %69, 0
  %mnt_cifs_flags171 = getelementptr inbounds %struct.cifs_sb_info, ptr %cifs_sb, i32 0, i32 6
  %and172 = and i32 %and165.sink, -2097153
  %masksel = select i1 %tobool.not, i32 0, i32 2097152
  %and172.sink = or i32 %and172, %masksel
  %70 = ptrtoint ptr %mnt_cifs_flags171 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %and172.sink, ptr %mnt_cifs_flags171, align 4
  %backupgid_specified = getelementptr inbounds %struct.smb3_fs_context, ptr %1, i32 0, i32 33
  %71 = ptrtoint ptr %backupgid_specified to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %backupgid_specified, align 8, !range !674
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool174.not = icmp eq i8 %72, 0
  %mnt_cifs_flags179 = getelementptr inbounds %struct.cifs_sb_info, ptr %cifs_sb, i32 0, i32 6
  %and180 = and i32 %and172.sink, -4194305
  %masksel377 = select i1 %tobool174.not, i32 0, i32 4194304
  %and180.sink = or i32 %and180, %masksel377
  %73 = ptrtoint ptr %mnt_cifs_flags179 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %and180.sink, ptr %mnt_cifs_flags179, align 4
  %74 = ptrtoint ptr %noperm to i32
  call void @__asan_loadN_noabort(i32 %74, i32 2)
  %bf.load182 = load i16, ptr %noperm, align 1
  %75 = and i16 %bf.load182, 1024
  %mnt_cifs_flags190 = getelementptr inbounds %struct.cifs_sb_info, ptr %cifs_sb, i32 0, i32 6
  %and191 = and i32 %and180.sink, -1025
  %76 = zext i16 %75 to i32
  %and191.sink = or i32 %and191, %76
  %77 = ptrtoint ptr %mnt_cifs_flags190 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %and191.sink, ptr %mnt_cifs_flags190, align 4
  %bf.load193 = load i16, ptr %noperm, align 1
  %mnt_cifs_flags201 = getelementptr inbounds %struct.cifs_sb_info, ptr %cifs_sb, i32 0, i32 6
  %and202 = and i32 %and191.sink, -2049
  %78 = shl i16 %bf.load193, 2
  %79 = and i16 %78, 2048
  %80 = zext i16 %79 to i32
  %and202.sink = or i32 %and202, %80
  %81 = ptrtoint ptr %mnt_cifs_flags201 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %and202.sink, ptr %mnt_cifs_flags201, align 4
  %bf.load204 = load i16, ptr %noperm, align 1
  %mnt_cifs_flags212 = getelementptr inbounds %struct.cifs_sb_info, ptr %cifs_sb, i32 0, i32 6
  %and213 = and i32 %and202.sink, -4097
  %82 = shl i16 %bf.load204, 4
  %83 = and i16 %82, 4096
  %84 = zext i16 %83 to i32
  %and213.sink = or i32 %and213, %84
  %85 = ptrtoint ptr %mnt_cifs_flags212 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %and213.sink, ptr %mnt_cifs_flags212, align 4
  %86 = ptrtoint ptr %nodfs to i32
  call void @__asan_loadN_noabort(i32 %86, i32 5)
  %bf.load215 = load i40, ptr %nodfs, align 1
  %mnt_cifs_flags223 = getelementptr inbounds %struct.cifs_sb_info, ptr %cifs_sb, i32 0, i32 6
  %and224 = and i32 %and213.sink, -32769
  %87 = trunc i40 %bf.load215 to i32
  %88 = and i32 %87, 32768
  %and224.sink = or i32 %and224, %88
  %89 = ptrtoint ptr %mnt_cifs_flags223 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %and224.sink, ptr %mnt_cifs_flags223, align 4
  %bf.load226 = load i40, ptr %nodfs, align 1
  %90 = and i40 %bf.load226, 8192
  %bf.cast229.not = icmp eq i40 %90, 0
  %mnt_cifs_flags234 = getelementptr inbounds %struct.cifs_sb_info, ptr %cifs_sb, i32 0, i32 6
  %and235 = and i32 %and224.sink, -131073
  %or232 = or i32 %and224.sink, 131073
  %and235.sink = select i1 %bf.cast229.not, i32 %and235, i32 %or232
  %91 = ptrtoint ptr %mnt_cifs_flags234 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %and235.sink, ptr %mnt_cifs_flags234, align 4
  %bf.load237 = load i40, ptr %nodfs, align 1
  %mnt_cifs_flags245 = getelementptr inbounds %struct.cifs_sb_info, ptr %cifs_sb, i32 0, i32 6
  %and246 = and i32 %and235.sink, -262145
  %92 = lshr i40 %bf.load237, 18
  %93 = trunc i40 %92 to i32
  %94 = and i32 %93, 262144
  %and246.sink = or i32 %and246, %94
  %95 = ptrtoint ptr %mnt_cifs_flags245 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %and246.sink, ptr %mnt_cifs_flags245, align 4
  %bf.load248 = load i40, ptr %nodfs, align 1
  %mnt_cifs_flags256 = getelementptr inbounds %struct.cifs_sb_info, ptr %cifs_sb, i32 0, i32 6
  %and257 = and i32 %and246.sink, -9
  %96 = lshr i40 %bf.load248, 34
  %97 = trunc i40 %96 to i32
  %98 = and i32 %97, 8
  %and257.sink = or i32 %and257, %98
  %99 = ptrtoint ptr %mnt_cifs_flags256 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %and257.sink, ptr %mnt_cifs_flags256, align 4
  %bf.load259 = load i40, ptr %nodfs, align 1
  %mnt_cifs_flags267 = getelementptr inbounds %struct.cifs_sb_info, ptr %cifs_sb, i32 0, i32 6
  %and268 = and i32 %and257.sink, -65537
  %100 = trunc i40 %bf.load259 to i32
  %101 = shl i32 %100, 2
  %102 = and i32 %101, 65536
  %and268.sink = or i32 %and268, %102
  %103 = ptrtoint ptr %mnt_cifs_flags267 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %and268.sink, ptr %mnt_cifs_flags267, align 4
  %bf.load271 = load i40, ptr %nodfs, align 1
  %104 = and i40 %bf.load271, 268451840
  %.not = icmp eq i40 %104, 268451840
  br i1 %.not, label %do.body282, label %entry.if.end293_crit_edge

entry.if.end293_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end293

do.body282:                                       ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @smb3_update_mnt_flags._rs, ptr noundef nonnull @__func__.smb3_update_mnt_flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool283.not = icmp eq i32 %call, 0
  br i1 %tobool283.not, label %do.body282.if.end293_crit_edge, label %do.end

do.body282.if.end293_crit_edge:                   ; preds = %do.body282
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end293

do.end:                                           ; preds = %do.body282
  call void @__sanitizer_cov_trace_pc() #11
  %call286 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117) #13
  br label %if.end293

if.end293:                                        ; preds = %do.end, %do.body282.if.end293_crit_edge, %entry.if.end293_crit_edge
  %mnt_cifs_flags294 = getelementptr inbounds %struct.cifs_sb_info, ptr %cifs_sb, i32 0, i32 6
  %105 = ptrtoint ptr %mnt_cifs_flags294 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %mnt_cifs_flags294, align 4
  %and295 = and i32 %106, 2147483647
  store i32 %and295, ptr %mnt_cifs_flags294, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smb3_fs_context_free(ptr nocapture noundef readonly %fc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_private.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %fs_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_private.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.smb3_cleanup_fs_context.exit_crit_edge, label %if.end.i

entry.smb3_cleanup_fs_context.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %smb3_cleanup_fs_context.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @smb3_cleanup_fs_context_contents(ptr noundef nonnull %1) #9
  tail call void @kfree(ptr noundef nonnull %1) #9
  br label %smb3_cleanup_fs_context.exit

smb3_cleanup_fs_context.exit:                     ; preds = %if.end.i, %entry.smb3_cleanup_fs_context.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smb3_fs_context_parse_param(ptr noundef %fc, ptr noundef %param) #1 align 64 {
entry:
  %result = alloca %struct.fs_parse_result, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %result) #9
  %0 = call ptr @memset(ptr %result, i32 255, i32 16)
  %fs_private.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %1 = ptrtoint ptr %fs_private.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fs_private.i, align 4
  %fs_type = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 2
  %3 = ptrtoint ptr %fs_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fs_type, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %call1 = tail call i32 @strcmp(ptr noundef %6, ptr noundef nonnull dereferenceable(5) @.str.118) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %7 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %entry.do.end18_crit_edge, label %do.body4

entry.do.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end18

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smb3_fs_context_parse_param.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smb3_fs_context_parse_param, %land.lhs.true)) #9
          to label %do.end18 [label %land.lhs.true], !srcloc !675

land.lhs.true:                                    ; preds = %do.body4
  %call11 = tail call i32 @___ratelimit(ptr noundef nonnull @smb3_fs_context_parse_param._rs, ptr noundef nonnull @.str.120) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.lhs.true.do.end18_crit_edge, label %if.then13

land.lhs.true.do.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end18

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %param, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smb3_fs_context_parse_param.descriptor, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.114, ptr noundef %9) #9
  br label %do.end18

do.end18:                                         ; preds = %if.then13, %land.lhs.true.do.end18_crit_edge, %do.body4, %entry.do.end18_crit_edge
  %type = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 1
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %bf.load)
  %cmp = icmp eq i8 %bf.load, 2
  br i1 %cmp, label %land.lhs.true19, label %do.end18.if.then43_crit_edge

do.end18.if.then43_crit_edge:                     ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then43

land.lhs.true19:                                  ; preds = %do.end18
  %11 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp20 = icmp eq i8 %15, 0
  br i1 %cmp20, label %if.then22, label %land.lhs.true19.if.then43_crit_edge

land.lhs.true19.if.then43_crit_edge:              ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then43

if.then22:                                        ; preds = %land.lhs.true19
  %16 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %param, align 4
  %call24 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.83, ptr noundef %17) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then22.sw.bb738_crit_edge, label %lor.lhs.false

if.then22.sw.bb738_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb738

lor.lhs.false:                                    ; preds = %if.then22
  %call27 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(9) @.str.84, ptr noundef %17) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %lor.lhs.false.sw.bb738_crit_edge, label %if.else30

lor.lhs.false.sw.bb738_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb738

if.else30:                                        ; preds = %lor.lhs.false
  %call32 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.81, ptr noundef %17) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.else30.sw.bb691_crit_edge, label %lor.lhs.false34

if.else30.sw.bb691_crit_edge:                     ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb691

lor.lhs.false34:                                  ; preds = %if.else30
  %call36 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(9) @.str.82, ptr noundef %17) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %lor.lhs.false34.sw.bb691_crit_edge, label %lor.lhs.false34.if.then43_crit_edge

lor.lhs.false34.if.then43_crit_edge:              ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then43

lor.lhs.false34.sw.bb691_crit_edge:               ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb691

if.then43:                                        ; preds = %lor.lhs.false34.if.then43_crit_edge, %land.lhs.true19.if.then43_crit_edge, %do.end18.if.then43_crit_edge
  %log.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9
  %call.i = call i32 @__fs_parse(ptr noundef %log.i, ptr noundef nonnull @smb3_fs_parameters, ptr noundef %param, ptr noundef nonnull %result) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp45 = icmp slt i32 %call.i, 0
  br i1 %cmp45, label %if.then47, label %if.end51

if.then47:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  %sloppy = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 3
  %18 = ptrtoint ptr %sloppy to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %sloppy, align 1, !range !674
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool48.not = icmp eq i8 %19, 0
  %spec.select = select i1 %tobool48.not, i32 %call.i, i32 1
  br label %cleanup

if.end51:                                         ; preds = %if.then43
  %20 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.408)
  switch i32 %call.i, label %if.end51.cleanup_crit_edge [
    i32 48, label %sw.bb
    i32 14, label %sw.bb67
    i32 6, label %sw.bb69
    i32 7, label %sw.bb81
    i32 10, label %sw.bb95
    i32 0, label %sw.bb111
    i32 1, label %sw.bb124
    i32 2, label %sw.bb137
    i32 8, label %sw.bb150
    i32 23, label %sw.bb163
    i32 13, label %sw.bb176
    i32 3, label %sw.bb189
    i32 4, label %sw.bb193
    i32 5, label %sw.bb197
    i32 9, label %sw.bb201
    i32 47, label %sw.bb205
    i32 52, label %sw.bb224
    i32 53, label %sw.bb237
    i32 50, label %sw.bb254
    i32 51, label %sw.bb271
    i32 54, label %sw.bb288
    i32 55, label %sw.bb305
    i32 56, label %sw.bb307
    i32 57, label %sw.bb309
    i32 58, label %sw.bb311
    i32 59, label %sw.bb312
    i32 60, label %sw.bb339
    i32 61, label %sw.bb367
    i32 62, label %sw.bb368
    i32 65, label %sw.bb369
    i32 64, label %sw.bb395
    i32 63, label %sw.bb422
    i32 66, label %sw.bb480
    i32 68, label %sw.bb481
    i32 67, label %sw.bb482
    i32 69, label %sw.bb510
    i32 70, label %sw.bb547
    i32 71, label %sw.bb573
    i32 72, label %if.end51.sw.bb691_crit_edge
    i32 73, label %if.end51.sw.bb738_crit_edge
    i32 74, label %sw.bb772
    i32 75, label %sw.bb789
    i32 76, label %sw.bb857
    i32 77, label %sw.bb868
    i32 78, label %sw.bb942
    i32 79, label %sw.bb968
    i32 80, label %sw.bb1000
    i32 81, label %sw.bb1021
    i32 82, label %sw.bb1028
    i32 83, label %sw.bb1034
    i32 49, label %sw.bb1040
    i32 46, label %sw.bb1069
    i32 15, label %sw.bb1073
    i32 16, label %sw.bb1086
    i32 17, label %sw.bb1181
    i32 18, label %sw.bb1185
    i32 19, label %sw.bb1205
    i32 20, label %sw.bb1218
    i32 22, label %sw.bb1222
    i32 24, label %sw.bb1229
    i32 21, label %sw.bb1240
    i32 25, label %sw.bb1244
    i32 26, label %sw.bb1253
    i32 27, label %sw.bb1264
    i32 45, label %sw.bb1268
    i32 28, label %sw.bb1272
    i32 29, label %sw.bb1283
    i32 30, label %sw.bb1292
    i32 31, label %sw.bb1296
    i32 32, label %sw.bb1297
    i32 33, label %sw.bb1302
    i32 34, label %do.end1309
    i32 35, label %sw.bb1312
    i32 36, label %sw.bb1316
    i32 37, label %sw.bb1320
    i32 38, label %sw.bb1324
    i32 39, label %sw.bb1326
    i32 40, label %sw.bb1330
    i32 41, label %sw.bb1403
    i32 42, label %sw.bb1444
    i32 43, label %sw.bb1457
    i32 44, label %sw.bb1461
  ]

if.end51.sw.bb738_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb738

if.end51.sw.bb691_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb691

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end51
  %compression = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 58
  %21 = ptrtoint ptr %compression to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 -1, ptr %compression, align 4
  %call54 = call i32 @___ratelimit(ptr noundef nonnull @smb3_fs_context_parse_param._rs.122, ptr noundef nonnull @.str.120) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %sw.bb.cleanup_crit_edge, label %do.end59

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end59:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123) #13
  br label %cleanup

sw.bb67:                                          ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %nodfs = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 34
  %22 = ptrtoint ptr %nodfs to i32
  call void @__asan_loadN_noabort(i32 %22, i32 5)
  %bf.load68 = load i40, ptr %nodfs, align 1
  %bf.set = or i40 %bf.load68, 2097152
  store i40 %bf.set, ptr %nodfs, align 1
  br label %cleanup

sw.bb69:                                          ; preds = %if.end51
  %23 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %result, align 8, !range !674
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool70.not = icmp eq i8 %24, 0
  %retry76 = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 31
  %25 = ptrtoint ptr %retry76 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %bf.load77 = load i16, ptr %retry76, align 1
  br i1 %tobool70.not, label %if.else75, label %if.then71

if.then71:                                        ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #11
  %bf.clear73 = and i16 %bf.load77, -16385
  %26 = ptrtoint ptr %retry76 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 %bf.clear73, ptr %retry76, align 1
  br label %cleanup

if.else75:                                        ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #11
  %bf.set79 = or i16 %bf.load77, 16384
  %27 = ptrtoint ptr %retry76 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 2)
  store i16 %bf.set79, ptr %retry76, align 1
  br label %cleanup

sw.bb81:                                          ; preds = %if.end51
  %28 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %result, align 8, !range !674
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool83.not = icmp eq i8 %29, 0
  %retry90 = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 31
  %30 = ptrtoint ptr %retry90 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %bf.load91 = load i16, ptr %retry90, align 1
  br i1 %tobool83.not, label %if.else89, label %if.then84

if.then84:                                        ; preds = %sw.bb81
  call void @__sanitizer_cov_trace_pc() #11
  %bf.set88 = or i16 %bf.load91, 16384
  %31 = ptrtoint ptr %retry90 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 2)
  store i16 %bf.set88, ptr %retry90, align 1
  br label %cleanup

if.else89:                                        ; preds = %sw.bb81
  call void @__sanitizer_cov_trace_pc() #11
  %bf.clear92 = and i16 %bf.load91, -16385
  %32 = ptrtoint ptr %retry90 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 %bf.clear92, ptr %retry90, align 1
  br label %cleanup

sw.bb95:                                          ; preds = %if.end51
  %33 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %result, align 8, !range !674
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool97.not = icmp eq i8 %34, 0
  %remap103 = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 34
  %35 = ptrtoint ptr %remap103 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 5)
  %bf.load104 = load i40, ptr %remap103, align 1
  br i1 %tobool97.not, label %if.else102, label %if.then98

if.then98:                                        ; preds = %sw.bb95
  call void @__sanitizer_cov_trace_pc() #11
  %bf.clear100 = and i40 %bf.load104, -8589934593
  %36 = ptrtoint ptr %remap103 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 5)
  store i40 %bf.clear100, ptr %remap103, align 1
  br label %cleanup

if.else102:                                       ; preds = %sw.bb95
  call void @__sanitizer_cov_trace_pc() #11
  %bf.set106 = and i40 %bf.load104, -12884901889
  %bf.clear108 = or i40 %bf.set106, 8589934592
  %37 = ptrtoint ptr %remap103 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 5)
  store i40 %bf.clear108, ptr %remap103, align 1
  br label %cleanup

sw.bb111:                                         ; preds = %if.end51
  %38 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %result, align 8, !range !674
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool113.not = icmp eq i8 %39, 0
  %no_xattr119 = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 34
  %40 = ptrtoint ptr %no_xattr119 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 5)
  %bf.load120 = load i40, ptr %no_xattr119, align 1
  br i1 %tobool113.not, label %if.else118, label %if.then114

if.then114:                                       ; preds = %sw.bb111
  call void @__sanitizer_cov_trace_pc() #11
  %bf.set117 = or i40 %bf.load120, -549755813888
  %41 = ptrtoint ptr %no_xattr119 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 5)
  store i40 %bf.set117, ptr %no_xattr119, align 1
  br label %cleanup

if.else118:                                       ; preds = %sw.bb111
  call void @__sanitizer_cov_trace_pc() #11
  %bf.clear121 = and i40 %bf.load120, 549755813887
  %42 = ptrtoint ptr %no_xattr119 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 5)
  store i40 %bf.clear121, ptr %no_xattr119, align 1
  br label %cleanup

sw.bb124:                                         ; preds = %if.end51
  %43 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %result, align 8, !range !674
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool126.not = icmp eq i8 %44, 0
  %override_uid132 = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 31
  %45 = ptrtoint ptr %override_uid132 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %bf.load133 = load i16, ptr %override_uid132, align 1
  br i1 %tobool126.not, label %if.else131, label %if.then127

if.then127:                                       ; preds = %sw.bb124
  call void @__sanitizer_cov_trace_pc() #11
  %bf.clear129 = and i16 %bf.load133, -1025
  %46 = ptrtoint ptr %override_uid132 to i32
  call void @__asan_storeN_noabort(i32 %46, i32 2)
  store i16 %bf.clear129, ptr %override_uid132, align 1
  br label %cleanup

if.else131:                                       ; preds = %sw.bb124
  call void @__sanitizer_cov_trace_pc() #11
  %bf.set135 = or i16 %bf.load133, 1024
  %47 = ptrtoint ptr %override_uid132 to i32
  call void @__asan_storeN_noabort(i32 %47, i32 2)
  store i16 %bf.set135, ptr %override_uid132, align 1
  br label %cleanup

sw.bb137:                                         ; preds = %if.end51
  %48 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %result, align 8, !range !674
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool139.not = icmp eq i8 %49, 0
  %override_gid145 = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 31
  %50 = ptrtoint ptr %override_gid145 to i32
  call void @__asan_loadN_noabort(i32 %50, i32 2)
  %bf.load146 = load i16, ptr %override_gid145, align 1
  br i1 %tobool139.not, label %if.else144, label %if.then140

if.then140:                                       ; preds = %sw.bb137
  call void @__sanitizer_cov_trace_pc() #11
  %bf.clear142 = and i16 %bf.load146, -513
  %51 = ptrtoint ptr %override_gid145 to i32
  call void @__asan_storeN_noabort(i32 %51, i32 2)
  store i16 %bf.clear142, ptr %override_gid145, align 1
  br label %cleanup

if.else144:                                       ; preds = %sw.bb137
  call void @__sanitizer_cov_trace_pc() #11
  %bf.set148 = or i16 %bf.load146, 512
  %52 = ptrtoint ptr %override_gid145 to i32
  call void @__asan_storeN_noabort(i32 %52, i32 2)
  store i16 %bf.set148, ptr %override_gid145, align 1
  br label %cleanup

sw.bb150:                                         ; preds = %if.end51
  %53 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %result, align 8, !range !674
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool152.not = icmp eq i8 %54, 0
  %noperm158 = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 31
  %55 = ptrtoint ptr %noperm158 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 2)
  %bf.load159 = load i16, ptr %noperm158, align 1
  br i1 %tobool152.not, label %if.else157, label %if.then153

if.then153:                                       ; preds = %sw.bb150
  call void @__sanitizer_cov_trace_pc() #11
  %bf.set156 = or i16 %bf.load159, 128
  %56 = ptrtoint ptr %noperm158 to i32
  call void @__asan_storeN_noabort(i32 %56, i32 2)
  store i16 %bf.set156, ptr %noperm158, align 1
  br label %cleanup

if.else157:                                       ; preds = %sw.bb150
  call void @__sanitizer_cov_trace_pc() #11
  %bf.clear160 = and i16 %bf.load159, -129
  %57 = ptrtoint ptr %noperm158 to i32
  call void @__asan_storeN_noabort(i32 %57, i32 2)
  store i16 %bf.clear160, ptr %noperm158, align 1
  br label %cleanup

sw.bb163:                                         ; preds = %if.end51
  %58 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %result, align 8, !range !674
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool165.not = icmp eq i8 %59, 0
  %dynperm171 = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 31
  %60 = ptrtoint ptr %dynperm171 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 2)
  %bf.load172 = load i16, ptr %dynperm171, align 1
  br i1 %tobool165.not, label %if.else170, label %if.then166

if.then166:                                       ; preds = %sw.bb163
  call void @__sanitizer_cov_trace_pc() #11
  %bf.clear168 = and i16 %bf.load172, -257
  %61 = ptrtoint ptr %dynperm171 to i32
  call void @__asan_storeN_noabort(i32 %61, i32 2)
  store i16 %bf.clear168, ptr %dynperm171, align 1
  br label %cleanup

if.else170:                                       ; preds = %sw.bb163
  call void @__sanitizer_cov_trace_pc() #11
  %bf.set174 = or i16 %bf.load172, 256
  %62 = ptrtoint ptr %dynperm171 to i32
  call void @__asan_storeN_noabort(i32 %62, i32 2)
  store i16 %bf.set174, ptr %dynperm171, align 1
  br label %cleanup

sw.bb176:                                         ; preds = %if.end51
  %63 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %result, align 8, !range !674
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool178.not = icmp eq i8 %64, 0
  %sfu_emul184 = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 34
  %65 = ptrtoint ptr %sfu_emul184 to i32
  call void @__asan_loadN_noabort(i32 %65, i32 5)
  %bf.load185 = load i40, ptr %sfu_emul184, align 1
  br i1 %tobool178.not, label %if.else183, label %if.then179

if.then179:                                       ; preds = %sw.bb176
  call void @__sanitizer_cov_trace_pc() #11
  %bf.clear181 = and i40 %bf.load185, -268435457
  %66 = ptrtoint ptr %sfu_emul184 to i32
  call void @__asan_storeN_noabort(i32 %66, i32 5)
  store i40 %bf.clear181, ptr %sfu_emul184, align 1
  br label %cleanup

if.else183:                                       ; preds = %sw.bb176
  call void @__sanitizer_cov_trace_pc() #11
  %bf.set187 = or i40 %bf.load185, 268435456
  %67 = ptrtoint ptr %sfu_emul184 to i32
  call void @__asan_storeN_noabort(i32 %67, i32 5)
  store i40 %bf.set187, ptr %sfu_emul184, align 1
  br label %cleanup

sw.bb189:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %noblocksnd = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 34
  %68 = ptrtoint ptr %noblocksnd to i32
  call void @__asan_loadN_noabort(i32 %68, i32 5)
  %bf.load190 = load i40, ptr %noblocksnd, align 1
  %bf.set192 = or i40 %bf.load190, 524288
  store i40 %bf.set192, ptr %noblocksnd, align 1
  br label %cleanup

sw.bb193:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %noautotune = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 34
  %69 = ptrtoint ptr %noautotune to i32
  call void @__asan_loadN_noabort(i32 %69, i32 5)
  %bf.load194 = load i40, ptr %noautotune, align 1
  %bf.set196 = or i40 %bf.load194, 262144
  store i40 %bf.set196, ptr %noautotune, align 1
  br label %cleanup

sw.bb197:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %no_lease = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 34
  %70 = ptrtoint ptr %no_lease to i32
  call void @__asan_loadN_noabort(i32 %70, i32 5)
  %bf.load198 = load i40, ptr %no_lease, align 1
  %bf.set200 = or i40 %bf.load198, 65536
  store i40 %bf.set200, ptr %no_lease, align 1
  br label %cleanup

sw.bb201:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %nodelete = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 31
  %71 = ptrtoint ptr %nodelete to i32
  call void @__asan_loadN_noabort(i32 %71, i32 2)
  %bf.load202 = load i16, ptr %nodelete, align 1
  %bf.set204 = or i16 %bf.load202, 64
  store i16 %bf.set204, ptr %nodelete, align 1
  br label %cleanup

sw.bb205:                                         ; preds = %if.end51
  %72 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %result, align 8, !range !674
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool207.not = icmp eq i8 %73, 0
  %multichannel213 = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 34
  %74 = ptrtoint ptr %multichannel213 to i32
  call void @__asan_loadN_noabort(i32 %74, i32 5)
  %bf.load214 = load i40, ptr %multichannel213, align 1
  br i1 %tobool207.not, label %if.else212, label %if.then208

if.then208:                                       ; preds = %sw.bb205
  call void @__sanitizer_cov_trace_pc() #11
  %bf.clear210 = and i40 %bf.load214, -33
  %75 = ptrtoint ptr %multichannel213 to i32
  call void @__asan_storeN_noabort(i32 %75, i32 5)
  store i40 %bf.clear210, ptr %multichannel213, align 1
  %max_channels = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 57
  %76 = ptrtoint ptr %max_channels to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 1, ptr %max_channels, align 8
  br label %cleanup

if.else212:                                       ; preds = %sw.bb205
  %bf.set216 = or i40 %bf.load214, 32
  %77 = ptrtoint ptr %multichannel213 to i32
  call void @__asan_storeN_noabort(i32 %77, i32 5)
  store i40 %bf.set216, ptr %multichannel213, align 1
  %max_channels217 = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 57
  %78 = ptrtoint ptr %max_channels217 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %max_channels217, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %79)
  %cmp218 = icmp ult i32 %79, 2
  br i1 %cmp218, label %if.then220, label %if.else212.cleanup_crit_edge

if.else212.cleanup_crit_edge:                     ; preds = %if.else212
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then220:                                       ; preds = %if.else212
  call void @__sanitizer_cov_trace_pc() #11
  %80 = ptrtoint ptr %max_channels217 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 2, ptr %max_channels217, align 8
  br label %cleanup

sw.bb224:                                         ; preds = %if.end51
  %81 = call i32 @llvm.read_register.i32(metadata !663) #9
  %and.i = and i32 %81, -16384
  %82 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %84, i32 0, i32 99
  %85 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %86, i32 0, i32 25
  %87 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %user_ns, align 4
  %89 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %89, align 8
  %call232 = call i32 @make_kuid(ptr noundef %88, i32 noundef %91) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call232)
  %cmp.i.not = icmp eq i32 %call232, -1
  br i1 %cmp.i.not, label %sw.bb224.cifs_parse_mount_err_crit_edge, label %if.end236

sw.bb224.cifs_parse_mount_err_crit_edge:          ; preds = %sw.bb224
  call void @__sanitizer_cov_trace_pc() #11
  br label %cifs_parse_mount_err

if.end236:                                        ; preds = %sw.bb224
  call void @__sanitizer_cov_trace_pc() #11
  %linux_uid = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 23
  %92 = ptrtoint ptr %linux_uid to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %call232, ptr %linux_uid, align 4
  %93 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 1, ptr %2, align 8
  br label %cleanup

sw.bb237:                                         ; preds = %if.end51
  %94 = call i32 @llvm.read_register.i32(metadata !663) #9
  %and.i1741 = and i32 %94, -16384
  %95 = inttoptr i32 %and.i1741 to ptr
  %task245 = getelementptr inbounds %struct.thread_info, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %task245 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %task245, align 8
  %cred246 = getelementptr inbounds %struct.task_struct, ptr %97, i32 0, i32 99
  %98 = ptrtoint ptr %cred246 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %cred246, align 16
  %user_ns247 = getelementptr inbounds %struct.cred, ptr %99, i32 0, i32 25
  %100 = ptrtoint ptr %user_ns247 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %user_ns247, align 4
  %102 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %102, align 8
  %call248 = call i32 @make_kuid(ptr noundef %101, i32 noundef %104) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call248)
  %cmp.i1742.not = icmp eq i32 %call248, -1
  br i1 %cmp.i1742.not, label %sw.bb237.cifs_parse_mount_err_crit_edge, label %if.end253

sw.bb237.cifs_parse_mount_err_crit_edge:          ; preds = %sw.bb237
  call void @__sanitizer_cov_trace_pc() #11
  br label %cifs_parse_mount_err

if.end253:                                        ; preds = %sw.bb237
  call void @__sanitizer_cov_trace_pc() #11
  %cred_uid = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 22
  %105 = ptrtoint ptr %cred_uid to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %call248, ptr %cred_uid, align 8
  %cruid_specified = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 1
  %106 = ptrtoint ptr %cruid_specified to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 1, ptr %cruid_specified, align 1
  br label %cleanup

sw.bb254:                                         ; preds = %if.end51
  %107 = call i32 @llvm.read_register.i32(metadata !663) #9
  %and.i1743 = and i32 %107, -16384
  %108 = inttoptr i32 %and.i1743 to ptr
  %task262 = getelementptr inbounds %struct.thread_info, ptr %108, i32 0, i32 2
  %109 = ptrtoint ptr %task262 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %task262, align 8
  %cred263 = getelementptr inbounds %struct.task_struct, ptr %110, i32 0, i32 99
  %111 = ptrtoint ptr %cred263 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %cred263, align 16
  %user_ns264 = getelementptr inbounds %struct.cred, ptr %112, i32 0, i32 25
  %113 = ptrtoint ptr %user_ns264 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %user_ns264, align 4
  %115 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %115, align 8
  %call265 = call i32 @make_kuid(ptr noundef %114, i32 noundef %117) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call265)
  %cmp.i1744.not = icmp eq i32 %call265, -1
  br i1 %cmp.i1744.not, label %sw.bb254.cifs_parse_mount_err_crit_edge, label %if.end270

sw.bb254.cifs_parse_mount_err_crit_edge:          ; preds = %sw.bb254
  call void @__sanitizer_cov_trace_pc() #11
  br label %cifs_parse_mount_err

if.end270:                                        ; preds = %sw.bb254
  call void @__sanitizer_cov_trace_pc() #11
  %backupuid = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 25
  %118 = ptrtoint ptr %backupuid to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %call265, ptr %backupuid, align 4
  %backupuid_specified = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 32
  %119 = ptrtoint ptr %backupuid_specified to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 1, ptr %backupuid_specified, align 1
  br label %cleanup

sw.bb271:                                         ; preds = %if.end51
  %120 = call i32 @llvm.read_register.i32(metadata !663) #9
  %and.i1745 = and i32 %120, -16384
  %121 = inttoptr i32 %and.i1745 to ptr
  %task279 = getelementptr inbounds %struct.thread_info, ptr %121, i32 0, i32 2
  %122 = ptrtoint ptr %task279 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %task279, align 8
  %cred280 = getelementptr inbounds %struct.task_struct, ptr %123, i32 0, i32 99
  %124 = ptrtoint ptr %cred280 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %cred280, align 16
  %user_ns281 = getelementptr inbounds %struct.cred, ptr %125, i32 0, i32 25
  %126 = ptrtoint ptr %user_ns281 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %user_ns281, align 4
  %128 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %128, align 8
  %call282 = call i32 @make_kgid(ptr noundef %127, i32 noundef %130) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call282)
  %cmp.i1746.not = icmp eq i32 %call282, -1
  br i1 %cmp.i1746.not, label %sw.bb271.cifs_parse_mount_err_crit_edge, label %if.end287

sw.bb271.cifs_parse_mount_err_crit_edge:          ; preds = %sw.bb271
  call void @__sanitizer_cov_trace_pc() #11
  br label %cifs_parse_mount_err

if.end287:                                        ; preds = %sw.bb271
  call void @__sanitizer_cov_trace_pc() #11
  %backupgid = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 26
  %131 = ptrtoint ptr %backupgid to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %call282, ptr %backupgid, align 8
  %backupgid_specified = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 33
  %132 = ptrtoint ptr %backupgid_specified to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 1, ptr %backupgid_specified, align 8
  br label %cleanup

sw.bb288:                                         ; preds = %if.end51
  %133 = call i32 @llvm.read_register.i32(metadata !663) #9
  %and.i1747 = and i32 %133, -16384
  %134 = inttoptr i32 %and.i1747 to ptr
  %task296 = getelementptr inbounds %struct.thread_info, ptr %134, i32 0, i32 2
  %135 = ptrtoint ptr %task296 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %task296, align 8
  %cred297 = getelementptr inbounds %struct.task_struct, ptr %136, i32 0, i32 99
  %137 = ptrtoint ptr %cred297 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %cred297, align 16
  %user_ns298 = getelementptr inbounds %struct.cred, ptr %138, i32 0, i32 25
  %139 = ptrtoint ptr %user_ns298 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %user_ns298, align 4
  %141 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %141, align 8
  %call299 = call i32 @make_kgid(ptr noundef %140, i32 noundef %143) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call299)
  %cmp.i1748.not = icmp eq i32 %call299, -1
  br i1 %cmp.i1748.not, label %sw.bb288.cifs_parse_mount_err_crit_edge, label %if.end304

sw.bb288.cifs_parse_mount_err_crit_edge:          ; preds = %sw.bb288
  call void @__sanitizer_cov_trace_pc() #11
  br label %cifs_parse_mount_err

if.end304:                                        ; preds = %sw.bb288
  call void @__sanitizer_cov_trace_pc() #11
  %linux_gid = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 24
  %144 = ptrtoint ptr %linux_gid to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %call299, ptr %linux_gid, align 8
  %gid_specified = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 2
  %145 = ptrtoint ptr %gid_specified to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 1, ptr %gid_specified, align 2
  br label %cleanup

sw.bb305:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %146 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %146, align 8
  %conv306 = trunc i32 %148 to i16
  %port = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 10
  %149 = ptrtoint ptr %port to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 %conv306, ptr %port, align 2
  br label %cleanup

sw.bb307:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %150 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %150, align 8
  %conv308 = trunc i32 %152 to i16
  %file_mode = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 27
  %153 = ptrtoint ptr %file_mode to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 %conv308, ptr %file_mode, align 4
  br label %cleanup

sw.bb309:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %154 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %154, align 8
  %conv310 = trunc i32 %156 to i16
  %dir_mode = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 28
  %157 = ptrtoint ptr %dir_mode to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 %conv310, ptr %dir_mode, align 2
  br label %cleanup

sw.bb311:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %158 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %158, align 8
  %min_offload = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 41
  %161 = ptrtoint ptr %min_offload to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %160, ptr %min_offload, align 8
  br label %cleanup

sw.bb312:                                         ; preds = %if.end51
  %162 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %162, align 8
  %165 = add i32 %164, -16777217
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16760833, i32 %165)
  %166 = icmp ult i32 %165, -16760833
  br i1 %166, label %do.body319, label %if.end338

do.body319:                                       ; preds = %sw.bb312
  %log320 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %167 = ptrtoint ptr %log320 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %log320, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %168, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.120) #9
  %call323 = call i32 @___ratelimit(ptr noundef nonnull @smb3_fs_context_parse_param._rs.129, ptr noundef nonnull @.str.120) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call323)
  %tobool324.not = icmp eq i32 %call323, 0
  br i1 %tobool324.not, label %do.body319.cifs_parse_mount_err_crit_edge, label %do.end328

do.body319.cifs_parse_mount_err_crit_edge:        ; preds = %do.body319
  call void @__sanitizer_cov_trace_pc() #11
  br label %cifs_parse_mount_err

do.end328:                                        ; preds = %do.body319
  call void @__sanitizer_cov_trace_pc() #11
  %call330 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.120) #13
  br label %cifs_parse_mount_err

if.end338:                                        ; preds = %sw.bb312
  call void @__sanitizer_cov_trace_pc() #11
  %bsize = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 37
  %169 = ptrtoint ptr %bsize to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %164, ptr %bsize, align 8
  %got_bsize = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 8
  %170 = ptrtoint ptr %got_bsize to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 1, ptr %got_bsize, align 8
  br label %cleanup

sw.bb339:                                         ; preds = %if.end51
  %171 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %172 = ptrtoint ptr %171 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %171, align 8
  %174 = add i32 %173, -33554433
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32505857, i32 %174)
  %175 = icmp ult i32 %174, -32505857
  br i1 %175, label %do.body346, label %if.end366

do.body346:                                       ; preds = %sw.bb339
  %log348 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %176 = ptrtoint ptr %log348 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %log348, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %177, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.120, i32 noundef %173, i32 noundef 4194304) #9
  %call351 = call i32 @___ratelimit(ptr noundef nonnull @smb3_fs_context_parse_param._rs.134, ptr noundef nonnull @.str.120) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call351)
  %tobool352.not = icmp eq i32 %call351, 0
  br i1 %tobool352.not, label %do.body346.cifs_parse_mount_err_crit_edge, label %do.end356

do.body346.cifs_parse_mount_err_crit_edge:        ; preds = %do.body346
  call void @__sanitizer_cov_trace_pc() #11
  br label %cifs_parse_mount_err

do.end356:                                        ; preds = %do.body346
  call void @__sanitizer_cov_trace_pc() #11
  %178 = ptrtoint ptr %171 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %171, align 8
  %call358 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.120, i32 noundef %179, i32 noundef 4194304) #13
  br label %cifs_parse_mount_err

if.end366:                                        ; preds = %sw.bb339
  call void @__sanitizer_cov_trace_pc() #11
  %rasize = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 38
  %180 = ptrtoint ptr %rasize to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %173, ptr %rasize, align 4
  br label %cleanup

sw.bb367:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %181 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %182 = ptrtoint ptr %181 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %181, align 8
  %rsize = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 39
  %184 = ptrtoint ptr %rsize to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %183, ptr %rsize, align 8
  %got_rsize = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 6
  %185 = ptrtoint ptr %got_rsize to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 1, ptr %got_rsize, align 2
  br label %cleanup

sw.bb368:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %186 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %187 = ptrtoint ptr %186 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %186, align 8
  %wsize = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 40
  %189 = ptrtoint ptr %wsize to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %188, ptr %wsize, align 4
  %got_wsize = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 7
  %190 = ptrtoint ptr %got_wsize to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 1, ptr %got_wsize, align 1
  br label %cleanup

sw.bb369:                                         ; preds = %if.end51
  %191 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %192 = ptrtoint ptr %191 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %191, align 8
  %mul = mul i32 %193, 100
  %acregmax = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 44
  %194 = ptrtoint ptr %acregmax to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %mul, ptr %acregmax, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %mul)
  %cmp371 = icmp ugt i32 %mul, 1073741824
  br i1 %cmp371, label %do.body374, label %sw.bb369.cleanup_crit_edge

sw.bb369.cleanup_crit_edge:                       ; preds = %sw.bb369
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body374:                                       ; preds = %sw.bb369
  %log376 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %195 = ptrtoint ptr %log376 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %log376, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %196, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.138) #9
  %call379 = call i32 @___ratelimit(ptr noundef nonnull @smb3_fs_context_parse_param._rs.139, ptr noundef nonnull @.str.120) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call379)
  %tobool380.not = icmp eq i32 %call379, 0
  br i1 %tobool380.not, label %do.body374.cifs_parse_mount_err_crit_edge, label %do.end384

do.body374.cifs_parse_mount_err_crit_edge:        ; preds = %do.body374
  call void @__sanitizer_cov_trace_pc() #11
  br label %cifs_parse_mount_err

do.end384:                                        ; preds = %do.body374
  call void @__sanitizer_cov_trace_pc() #11
  %call386 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141) #13
  br label %cifs_parse_mount_err

sw.bb395:                                         ; preds = %if.end51
  %197 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %198 = ptrtoint ptr %197 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %197, align 8
  %mul396 = mul i32 %199, 100
  %acdirmax = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 45
  %200 = ptrtoint ptr %acdirmax to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %mul396, ptr %acdirmax, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %mul396)
  %cmp398 = icmp ugt i32 %mul396, 1073741824
  br i1 %cmp398, label %do.body401, label %sw.bb395.cleanup_crit_edge

sw.bb395.cleanup_crit_edge:                       ; preds = %sw.bb395
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body401:                                       ; preds = %sw.bb395
  %log403 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %201 = ptrtoint ptr %log403 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %log403, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %202, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.143) #9
  %call406 = call i32 @___ratelimit(ptr noundef nonnull @smb3_fs_context_parse_param._rs.144, ptr noundef nonnull @.str.120) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call406)
  %tobool407.not = icmp eq i32 %call406, 0
  br i1 %tobool407.not, label %do.body401.cifs_parse_mount_err_crit_edge, label %do.end411

do.body401.cifs_parse_mount_err_crit_edge:        ; preds = %do.body401
  call void @__sanitizer_cov_trace_pc() #11
  br label %cifs_parse_mount_err

do.end411:                                        ; preds = %do.body401
  call void @__sanitizer_cov_trace_pc() #11
  %call413 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146) #13
  br label %cifs_parse_mount_err

sw.bb422:                                         ; preds = %if.end51
  %203 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %204 = ptrtoint ptr %203 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %203, align 8
  %mul423 = mul i32 %205, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %mul423)
  %cmp424 = icmp ugt i32 %mul423, 1073741824
  br i1 %cmp424, label %do.body427, label %if.end447

do.body427:                                       ; preds = %sw.bb422
  %log429 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %206 = ptrtoint ptr %log429 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %log429, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %207, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.148) #9
  %call432 = call i32 @___ratelimit(ptr noundef nonnull @smb3_fs_context_parse_param._rs.149, ptr noundef nonnull @.str.120) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call432)
  %tobool433.not = icmp eq i32 %call432, 0
  br i1 %tobool433.not, label %do.body427.cifs_parse_mount_err_crit_edge, label %do.end437

do.body427.cifs_parse_mount_err_crit_edge:        ; preds = %do.body427
  call void @__sanitizer_cov_trace_pc() #11
  br label %cifs_parse_mount_err

do.end437:                                        ; preds = %do.body427
  call void @__sanitizer_cov_trace_pc() #11
  %call439 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.151) #13
  br label %cifs_parse_mount_err

if.end447:                                        ; preds = %sw.bb422
  %acdirmax448 = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 45
  %208 = ptrtoint ptr %acdirmax448 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %acdirmax448, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %209)
  %cmp449.not = icmp eq i32 %209, 100
  br i1 %cmp449.not, label %lor.lhs.false451, label %if.end447.do.body456_crit_edge

if.end447.do.body456_crit_edge:                   ; preds = %if.end447
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body456

lor.lhs.false451:                                 ; preds = %if.end447
  %acregmax452 = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 44
  %210 = ptrtoint ptr %acregmax452 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %acregmax452, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %211)
  %cmp453.not = icmp eq i32 %211, 100
  br i1 %cmp453.not, label %if.end476, label %lor.lhs.false451.do.body456_crit_edge

lor.lhs.false451.do.body456_crit_edge:            ; preds = %lor.lhs.false451
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body456

do.body456:                                       ; preds = %lor.lhs.false451.do.body456_crit_edge, %if.end447.do.body456_crit_edge
  %log458 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %212 = ptrtoint ptr %log458 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %log458, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %213, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.153) #9
  %call461 = call i32 @___ratelimit(ptr noundef nonnull @smb3_fs_context_parse_param._rs.154, ptr noundef nonnull @.str.120) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call461)
  %tobool462.not = icmp eq i32 %call461, 0
  br i1 %tobool462.not, label %do.body456.cleanup_crit_edge, label %do.end466

do.body456.cleanup_crit_edge:                     ; preds = %do.body456
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end466:                                        ; preds = %do.body456
  call void @__sanitizer_cov_trace_pc() #11
  %call468 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156) #13
  br label %cleanup

if.end476:                                        ; preds = %lor.lhs.false451
  call void @__sanitizer_cov_trace_pc() #11
  %214 = ptrtoint ptr %acregmax452 to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %mul423, ptr %acregmax452, align 8
  %215 = ptrtoint ptr %acdirmax448 to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %mul423, ptr %acdirmax448, align 4
  br label %cleanup

sw.bb480:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %216 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %217 = ptrtoint ptr %216 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %216, align 8
  %echo_interval = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 52
  %219 = ptrtoint ptr %echo_interval to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %218, ptr %echo_interval, align 8
  br label %cleanup

sw.bb481:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %220 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %221 = ptrtoint ptr %220 to i32
  call void @__asan_load8_noabort(i32 %221)
  %222 = load i64, ptr %220, align 8
  %snapshot_time = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 54
  %223 = ptrtoint ptr %snapshot_time to i32
  call void @__asan_store8_noabort(i32 %223)
  store i64 %222, ptr %snapshot_time, align 8
  br label %cleanup

sw.bb482:                                         ; preds = %if.end51
  %224 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %225 = ptrtoint ptr %224 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %224, align 8
  %227 = add i32 %226, -60001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -59981, i32 %227)
  %228 = icmp ult i32 %227, -59981
  br i1 %228, label %do.body489, label %if.end509

do.body489:                                       ; preds = %sw.bb482
  %log491 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %229 = ptrtoint ptr %log491 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %log491, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %230, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.120) #9
  %call494 = call i32 @___ratelimit(ptr noundef nonnull @smb3_fs_context_parse_param._rs.159, ptr noundef nonnull @.str.120) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call494)
  %tobool495.not = icmp eq i32 %call494, 0
  br i1 %tobool495.not, label %do.body489.cifs_parse_mount_err_crit_edge, label %do.end499

do.body489.cifs_parse_mount_err_crit_edge:        ; preds = %do.body489
  call void @__sanitizer_cov_trace_pc() #11
  br label %cifs_parse_mount_err

do.end499:                                        ; preds = %do.body489
  call void @__sanitizer_cov_trace_pc() #11
  %call501 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.161, ptr noundef nonnull @.str.120) #13
  br label %cifs_parse_mount_err

if.end509:                                        ; preds = %sw.bb482
  call void @__sanitizer_cov_trace_pc() #11
  %max_credits = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 56
  %231 = ptrtoint ptr %max_credits to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %226, ptr %max_credits, align 4
  br label %cleanup

sw.bb510:                                         ; preds = %if.end51
  %232 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %233 = ptrtoint ptr %232 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %232, align 8
  %235 = add i32 %234, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %235)
  %236 = icmp ult i32 %235, -16
  br i1 %236, label %do.body517, label %if.end537

do.body517:                                       ; preds = %sw.bb510
  %log519 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %237 = ptrtoint ptr %log519 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %log519, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %238, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.120, i32 noundef 16) #9
  %call522 = call i32 @___ratelimit(ptr noundef nonnull @smb3_fs_context_parse_param._rs.164, ptr noundef nonnull @.str.120) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call522)
  %tobool523.not = icmp eq i32 %call522, 0
  br i1 %tobool523.not, label %do.body517.cifs_parse_mount_err_crit_edge, label %do.end527

do.body517.cifs_parse_mount_err_crit_edge:        ; preds = %do.body517
  call void @__sanitizer_cov_trace_pc() #11
  br label %cifs_parse_mount_err

do.end527:                                        ; preds = %do.body517
  call void @__sanitizer_cov_trace_pc() #11
  %call529 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.120, i32 noundef 16) #13
  br label %cifs_parse_mount_err

if.end537:                                        ; preds = %sw.bb510
  %max_channels538 = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 57
  %239 = ptrtoint ptr %max_channels538 to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 %234, ptr %max_channels538, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %234)
  %cmp539 = icmp ugt i32 %234, 1
  br i1 %cmp539, label %if.then541, label %if.end537.cleanup_crit_edge

if.end537.cleanup_crit_edge:                      ; preds = %if.end537
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then541:                                       ; preds = %if.end537
  call void @__sanitizer_cov_trace_pc() #11
  %multichannel542 = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 34
  %240 = ptrtoint ptr %multichannel542 to i32
  call void @__asan_loadN_noabort(i32 %240, i32 5)
  %bf.load543 = load i40, ptr %multichannel542, align 1
  %bf.set545 = or i40 %bf.load543, 32
  store i40 %bf.set545, ptr %multichannel542, align 1
  br label %cleanup

sw.bb547:                                         ; preds = %if.end51
  %241 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %242 = ptrtoint ptr %241 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %241, align 8
  %handle_timeout = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 55
  %244 = ptrtoint ptr %handle_timeout to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 %243, ptr %handle_timeout, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 960000, i32 %243)
  %cmp549 = icmp ugt i32 %243, 960000
  br i1 %cmp549, label %do.body552, label %sw.bb547.cleanup_crit_edge

sw.bb547.cleanup_crit_edge:                       ; preds = %sw.bb547
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body552:                                       ; preds = %sw.bb547
  %log554 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %245 = ptrtoint ptr %log554 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %log554, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %246, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.168) #9
  %call557 = call i32 @___ratelimit(ptr noundef nonnull @smb3_fs_context_parse_param._rs.169, ptr noundef nonnull @.str.120) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call557)
  %tobool558.not = icmp eq i32 %call557, 0
  br i1 %tobool558.not, label %do.body552.cifs_parse_mount_err_crit_edge, label %do.end562

do.body552.cifs_parse_mount_err_crit_edge:        ; preds = %do.body552
  call void @__sanitizer_cov_trace_pc() #11
  br label %cifs_parse_mount_err

do.end562:                                        ; preds = %do.body552
  call void @__sanitizer_cov_trace_pc() #11
  %call564 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.171) #13
  br label %cifs_parse_mount_err

sw.bb573:                                         ; preds = %if.end51
  %UNC = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 16
  %247 = ptrtoint ptr %UNC to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %UNC, align 8
  call void @kfree(ptr noundef %248) #9
  %249 = ptrtoint ptr %UNC to i32
  call void @__asan_store4_noabort(i32 %249)
  store ptr null, ptr %UNC, align 8
  %250 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2
  %251 = ptrtoint ptr %250 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %250, align 4
  %call575 = call i32 @smb3_parse_devname(ptr noundef %252, ptr noundef %2)
  %253 = zext i32 %call575 to i64
  call void @__sanitizer_cov_trace_switch(i64 %253, ptr @__sancov_gen_cov_switch_values.409)
  switch i32 %call575, label %do.body618 [
    i32 0, label %sw.epilog
    i32 -12, label %do.body577
    i32 -22, label %do.body598
  ]

do.body577:                                       ; preds = %sw.bb573
  %log579 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %254 = ptrtoint ptr %log579 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %log579, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %255, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.173) #9
  %call582 = call i32 @___ratelimit(ptr noundef nonnull @smb3_fs_context_parse_param._rs.174, ptr noundef nonnull @.str.120) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call582)
  %tobool583.not = icmp eq i32 %call582, 0
  br i1 %tobool583.not, label %do.body577.cifs_parse_mount_err_crit_edge, label %do.end587

do.body577.cifs_parse_mount_err_crit_edge:        ; preds = %do.body577
  call void @__sanitizer_cov_trace_pc() #11
  br label %cifs_parse_mount_err

do.end587:                                        ; preds = %do.body577
  call void @__sanitizer_cov_trace_pc() #11
  %call589 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.176) #13
  br label %cifs_parse_mount_err

do.body598:                                       ; preds = %sw.bb573
  %log600 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %256 = ptrtoint ptr %log600 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %log600, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %257, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.178) #9
  %call603 = call i32 @___ratelimit(ptr noundef nonnull @smb3_fs_context_parse_param._rs.179, ptr noundef nonnull @.str.120) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call603)
  %tobool604.not = icmp eq i32 %call603, 0
  br i1 %tobool604.not, label %do.body598.cifs_parse_mount_err_crit_edge, label %do.end608

do.body598.cifs_parse_mount_err_crit_edge:        ; preds = %do.body598
  call void @__sanitizer_cov_trace_pc() #11
  br label %cifs_parse_mount_err

do.end608:                                        ; preds = %do.body598
  call void @__sanitizer_cov_trace_pc() #11
  %call610 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.181) #13
  br label %cifs_parse_mount_err

do.body618:                                       ; preds = %sw.bb573
  %log620 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %258 = ptrtoint ptr %log620 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %log620, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %259, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.183) #9
  %call623 = call i32 @___ratelimit(ptr noundef nonnull @smb3_fs_context_parse_param._rs.184, ptr noundef nonnull @.str.120) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call623)
  %tobool624.not = icmp eq i32 %call623, 0
  br i1 %tobool624.not, label %do.body618.cifs_parse_mount_err_crit_edge, label %do.end628

do.body618.cifs_parse_mount_err_crit_edge:        ; preds = %do.body618
  call void @__sanitizer_cov_trace_pc() #11
  br label %cifs_parse_mount_err

do.end628:                                        ; preds = %do.body618
  call void @__sanitizer_cov_trace_pc() #11
  %call630 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.186) #13
  br label %cifs_parse_mount_err

sw.epilog:                                        ; preds = %sw.bb573
  %260 = ptrtoint ptr %250 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %250, align 4
  %call638 = call noalias ptr @kstrdup(ptr noundef %261, i32 noundef 3264) #9
  %source = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 14
  %262 = ptrtoint ptr %source to i32
  call void @__asan_store4_noabort(i32 %262)
  store ptr %call638, ptr %source, align 8
  %cmp640 = icmp eq ptr %call638, null
  br i1 %cmp640, label %do.body643, label %if.end663

do.body643:                                       ; preds = %sw.epilog
  %log645 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %263 = ptrtoint ptr %log645 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %log645, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %264, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.188) #9
  %call648 = call i32 @___ratelimit(ptr noundef nonnull @smb3_fs_context_parse_param._rs.189, ptr noundef nonnull @.str.120) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call648)
  %tobool649.not = icmp eq i32 %call648, 0
  br i1 %tobool649.not, label %do.body643.cifs_parse_mount_err_crit_edge, label %do.end653

do.body643.cifs_parse_mount_err_crit_edge:        ; preds = %do.body643
  call void @__sanitizer_cov_trace_pc() #11
  br label %cifs_parse_mount_err

do.end653:                                        ; preds = %do.body643
  call void @__sanitizer_cov_trace_pc() #11
  %call655 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.191) #13
  br label %cifs_parse_mount_err

if.end663:                                        ; preds = %sw.epilog
  %265 = ptrtoint ptr %250 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %250, align 4
  %call664 = call noalias ptr @kstrdup(ptr noundef %266, i32 noundef 3264) #9
  %source665 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 10
  %267 = ptrtoint ptr %source665 to i32
  call void @__asan_store4_noabort(i32 %267)
  store ptr %call664, ptr %source665, align 4
  %cmp667 = icmp eq ptr %call664, null
  br i1 %cmp667, label %do.body670, label %if.end663.cleanup_crit_edge

if.end663.cleanup_crit_edge:                      ; preds = %if.end663
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body670:                                       ; preds = %if.end663
  %log672 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %268 = ptrtoint ptr %log672 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %log672, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %269, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.188) #9
  %call675 = call i32 @___ratelimit(ptr noundef nonnull @smb3_fs_context_parse_param._rs.193, ptr noundef nonnull @.str.120) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call675)
  %tobool676.not = icmp eq i32 %call675, 0
  br i1 %tobool676.not, label %do.body670.cifs_parse_mount_err_crit_edge, label %do.end680

do.body670.cifs_parse_mount_err_crit_edge:        ; preds = %do.body670
  call void @__sanitizer_cov_trace_pc() #11
  br label %cifs_parse_mount_err

do.end680:                                        ; preds = %do.body670
  call void @__sanitizer_cov_trace_pc() #11
  %call682 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.191) #13
  br label %cifs_parse_mount_err

sw.bb691:                                         ; preds = %if.end51.sw.bb691_crit_edge, %lor.lhs.false34.sw.bb691_crit_edge, %if.else30.sw.bb691_crit_edge
  %username = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 11
  %270 = ptrtoint ptr %username to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %username, align 4
  call void @kfree(ptr noundef %271) #9
  %272 = ptrtoint ptr %username to i32
  call void @__asan_store4_noabort(i32 %272)
  store ptr null, ptr %username, align 4
  %273 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2
  %274 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %273, align 4
  %276 = ptrtoint ptr %275 to i32
  call void @__asan_load1_noabort(i32 %276)
  %char01730 = load i8, ptr %275, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char01730)
  %cmp694 = icmp eq i8 %char01730, 0
  br i1 %cmp694, label %if.then696, label %if.end700

if.then696:                                       ; preds = %sw.bb691
  call void @__sanitizer_cov_trace_pc() #11
  %nullauth = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 34
  %277 = ptrtoint ptr %nullauth to i32
  call void @__asan_loadN_noabort(i32 %277, i32 5)
  %bf.load697 = load i40, ptr %nullauth, align 1
  %bf.set699 = or i40 %bf.load697, 134217728
  store i40 %bf.set699, ptr %nullauth, align 1
  br label %cleanup

if.end700:                                        ; preds = %sw.bb691
  %call701 = call i32 @strnlen(ptr noundef %275, i32 noundef 256) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %call701)
  %cmp702 = icmp ugt i32 %call701, 256
  br i1 %cmp702, label %do.end707, label %if.end710

do.end707:                                        ; preds = %if.end700
  call void @__sanitizer_cov_trace_pc() #11
  %call709 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.197) #13
  br label %cifs_parse_mount_err

if.end710:                                        ; preds = %if.end700
  %call711 = call noalias ptr @kstrdup(ptr noundef %275, i32 noundef 3264) #9
  %278 = ptrtoint ptr %username to i32
  call void @__asan_store4_noabort(i32 %278)
  store ptr %call711, ptr %username, align 4
  %cmp714 = icmp eq ptr %call711, null
  br i1 %cmp714, label %do.body717, label %if.end710.cleanup_crit_edge

if.end710.cleanup_crit_edge:                      ; preds = %if.end710
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body717:                                       ; preds = %if.end710
  %log719 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %279 = ptrtoint ptr %log719 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %log719, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %280, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.199) #9
  %call722 = call i32 @___ratelimit(ptr noundef nonnull @smb3_fs_context_parse_param._rs.200, ptr noundef nonnull @.str.120) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call722)
  %tobool723.not = icmp eq i32 %call722, 0
  br i1 %tobool723.not, label %do.body717.cifs_parse_mount_err_crit_edge, label %do.end727

do.body717.cifs_parse_mount_err_crit_edge:        ; preds = %do.body717
  call void @__sanitizer_cov_trace_pc() #11
  br label %cifs_parse_mount_err

do.end727:                                        ; preds = %do.body717
  call void @__sanitizer_cov_trace_pc() #11
  %call729 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.202) #13
  br label %cifs_parse_mount_err

sw.bb738:                                         ; preds = %if.end51.sw.bb738_crit_edge, %lor.lhs.false.sw.bb738_crit_edge, %if.then22.sw.bb738_crit_edge
  %password = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 12
  %281 = ptrtoint ptr %password to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %password, align 8
  call void @kfree(ptr noundef %282) #9
  %283 = ptrtoint ptr %password to i32
  call void @__asan_store4_noabort(i32 %283)
  store ptr null, ptr %password, align 8
  %284 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2
  %285 = ptrtoint ptr %284 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %284, align 4
  %287 = ptrtoint ptr %286 to i32
  call void @__asan_load1_noabort(i32 %287)
  %char0 = load i8, ptr %286, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %cmp741 = icmp eq i8 %char0, 0
  br i1 %cmp741, label %sw.bb738.cleanup_crit_edge, label %if.end744

sw.bb738.cleanup_crit_edge:                       ; preds = %sw.bb738
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end744:                                        ; preds = %sw.bb738
  %call745 = call noalias ptr @kstrdup(ptr noundef %286, i32 noundef 3264) #9
  %288 = ptrtoint ptr %password to i32
  call void @__asan_store4_noabort(i32 %288)
  store ptr %call745, ptr %password, align 8
  %cmp748 = icmp eq ptr %call745, null
  br i1 %cmp748, label %do.body751, label %if.end744.cleanup_crit_edge

if.end744.cleanup_crit_edge:                      ; preds = %if.end744
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body751:                                       ; preds = %if.end744
  %log753 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %289 = ptrtoint ptr %log753 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %log753, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %290, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.204) #9
  %call756 = call i32 @___ratelimit(ptr noundef nonnull @smb3_fs_context_parse_param._rs.205, ptr noundef nonnull @.str.120) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call756)
  %tobool757.not = icmp eq i32 %call756, 0
  br i1 %tobool757.not, label %do.body751.cifs_parse_mount_err_crit_edge, label %do.end761

do.body751.cifs_parse_mount_err_crit_edge:        ; preds = %do.body751
  call void @__sanitizer_cov_trace_pc() #11
  br label %cifs_parse_mount_err

do.end761:                                        ; preds = %do.body751
  call void @__sanitizer_cov_trace_pc() #11
  %call763 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207) #13
  br label %cifs_parse_mount_err

sw.bb772:                                         ; preds = %if.end51
  %291 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2
  %292 = ptrtoint ptr %291 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %291, align 4
  %call773 = call i32 @strlen(ptr noundef %293) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call773)
  %cmp774 = icmp eq i32 %call773, 0
  br i1 %cmp774, label %if.then776, label %if.end777

if.then776:                                       ; preds = %sw.bb772
  call void @__sanitizer_cov_trace_pc() #11
  %got_ip = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 4
  %294 = ptrtoint ptr %got_ip to i32
  call void @__asan_store1_noabort(i32 %294)
  store i8 0, ptr %got_ip, align 4
  br label %cleanup

if.end777:                                        ; preds = %sw.bb772
  %dstaddr = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 49
  %call779 = call i32 @cifs_convert_address(ptr noundef %dstaddr, ptr noundef %293, i32 noundef %call773) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call779)
  %tobool780.not = icmp eq i32 %call779, 0
  br i1 %tobool780.not, label %do.end784, label %if.end787

do.end784:                                        ; preds = %if.end777
  call void @__sanitizer_cov_trace_pc() #11
  %295 = ptrtoint ptr %291 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %291, align 4
  %call786 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.210, ptr noundef %296) #13
  br label %cifs_parse_mount_err

if.end787:                                        ; preds = %if.end777
  call void @__sanitizer_cov_trace_pc() #11
  %got_ip788 = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 4
  %297 = ptrtoint ptr %got_ip788 to i32
  call void @__asan_store1_noabort(i32 %297)
  store i8 1, ptr %got_ip788, align 4
  br label %cleanup

sw.bb789:                                         ; preds = %if.end51
  %298 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2
  %299 = ptrtoint ptr %298 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %298, align 4
  %call790 = call i32 @strnlen(ptr noundef %300, i32 noundef 256) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %call790)
  %cmp791 = icmp eq i32 %call790, 256
  br i1 %cmp791, label %do.end796, label %if.end799

do.end796:                                        ; preds = %sw.bb789
  call void @__sanitizer_cov_trace_pc() #11
  %call798 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.213) #13
  br label %cifs_parse_mount_err

if.end799:                                        ; preds = %sw.bb789
  %domainname = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 13
  %301 = ptrtoint ptr %domainname to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %domainname, align 4
  call void @kfree(ptr noundef %302) #9
  %303 = ptrtoint ptr %298 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %298, align 4
  %call800 = call noalias ptr @kstrdup(ptr noundef %304, i32 noundef 3264) #9
  %305 = ptrtoint ptr %domainname to i32
  call void @__asan_store4_noabort(i32 %305)
  store ptr %call800, ptr %domainname, align 4
  %cmp803 = icmp eq ptr %call800, null
  br i1 %cmp803, label %do.body806, label %do.body828

do.body806:                                       ; preds = %if.end799
  %log808 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %306 = ptrtoint ptr %log808 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %log808, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %307, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.215) #9
  %call811 = call i32 @___ratelimit(ptr noundef nonnull @smb3_fs_context_parse_param._rs.216, ptr noundef nonnull @.str.120) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call811)
  %tobool812.not = icmp eq i32 %call811, 0
  br i1 %tobool812.not, label %do.body806.cifs_parse_mount_err_crit_edge, label %do.end816

do.body806.cifs_parse_mount_err_crit_edge:        ; preds = %do.body806
  call void @__sanitizer_cov_trace_pc() #11
  br label %cifs_parse_mount_err

do.end816:                                        ; preds = %do.body806
  call void @__sanitizer_cov_trace_pc() #11
  %call818 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.218) #13
  br label %cifs_parse_mount_err

do.body828:                                       ; preds = %if.end799
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %308 = load i32, ptr @cifsFYI, align 4
  %and829 = and i32 %308, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and829)
  %tobool830.not = icmp eq i32 %and829, 0
  br i1 %tobool830.not, label %do.body828.cleanup_crit_edge, label %do.body832

do.body828.cleanup_crit_edge:                     ; preds = %do.body828
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body832:                                       ; preds = %do.body828
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smb3_fs_context_parse_param.descriptor.221, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smb3_fs_context_parse_param, %land.lhs.true844)) #9
          to label %cleanup [label %land.lhs.true844], !srcloc !675

land.lhs.true844:                                 ; preds = %do.body832
  %call845 = call i32 @___ratelimit(ptr noundef nonnull @smb3_fs_context_parse_param._rs.220, ptr noundef nonnull @.str.120) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call845)
  %tobool846.not = icmp eq i32 %call845, 0
  br i1 %tobool846.not, label %land.lhs.true844.cleanup_crit_edge, label %if.then847

land.lhs.true844.cleanup_crit_edge:               ; preds = %land.lhs.true844
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then847:                                       ; preds = %land.lhs.true844
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smb3_fs_context_parse_param.descriptor.221, ptr noundef nonnull @.str.222, ptr noundef nonnull @.str.114) #9
  br label %cleanup

sw.bb857:                                         ; preds = %if.end51
  %srcaddr = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 50
  %309 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2
  %310 = ptrtoint ptr %309 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %309, align 4
  %call858 = call i32 @strlen(ptr noundef %311) #12
  %call859 = call i32 @cifs_convert_address(ptr noundef %srcaddr, ptr noundef %311, i32 noundef %call858) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call859)
  %tobool860.not = icmp eq i32 %call859, 0
  br i1 %tobool860.not, label %do.end864, label %sw.bb857.cleanup_crit_edge

sw.bb857.cleanup_crit_edge:                       ; preds = %sw.bb857
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end864:                                        ; preds = %sw.bb857
  call void @__sanitizer_cov_trace_pc() #11
  %312 = ptrtoint ptr %309 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %309, align 4
  %call866 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.224, ptr noundef %313) #13
  br label %cifs_parse_mount_err

sw.bb868:                                         ; preds = %if.end51
  %314 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2
  %315 = ptrtoint ptr %314 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %314, align 4
  %call869 = call i32 @strnlen(ptr noundef %316, i32 noundef 1024) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %call869)
  %cmp870 = icmp ugt i32 %call869, 64
  br i1 %cmp870, label %do.end875, label %if.end878

do.end875:                                        ; preds = %sw.bb868
  call void @__sanitizer_cov_trace_pc() #11
  %call877 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.227) #13
  br label %cifs_parse_mount_err

if.end878:                                        ; preds = %sw.bb868
  %call879 = call i32 @strncasecmp(ptr noundef %316, ptr noundef nonnull @.str.229, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call879)
  %cmp880.not = icmp eq i32 %call879, 0
  br i1 %cmp880.not, label %if.end878.do.body912_crit_edge, label %if.then882

if.end878.do.body912_crit_edge:                   ; preds = %if.end878
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body912

if.then882:                                       ; preds = %if.end878
  %iocharset = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 19
  %317 = ptrtoint ptr %iocharset to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %iocharset, align 4
  call void @kfree(ptr noundef %318) #9
  %319 = ptrtoint ptr %314 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %314, align 4
  %call883 = call noalias ptr @kstrdup(ptr noundef %320, i32 noundef 3264) #9
  %321 = ptrtoint ptr %iocharset to i32
  call void @__asan_store4_noabort(i32 %321)
  store ptr %call883, ptr %iocharset, align 4
  %cmp886 = icmp eq ptr %call883, null
  br i1 %cmp886, label %do.body889, label %if.then882.do.body912_crit_edge

if.then882.do.body912_crit_edge:                  ; preds = %if.then882
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body912

do.body889:                                       ; preds = %if.then882
  %log891 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %322 = ptrtoint ptr %log891 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %log891, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %323, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.230) #9
  %call894 = call i32 @___ratelimit(ptr noundef nonnull @smb3_fs_context_parse_param._rs.231, ptr noundef nonnull @.str.120) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call894)
  %tobool895.not = icmp eq i32 %call894, 0
  br i1 %tobool895.not, label %do.body889.cifs_parse_mount_err_crit_edge, label %do.end899

do.body889.cifs_parse_mount_err_crit_edge:        ; preds = %do.body889
  call void @__sanitizer_cov_trace_pc() #11
  br label %cifs_parse_mount_err

do.end899:                                        ; preds = %do.body889
  call void @__sanitizer_cov_trace_pc() #11
  %call901 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.233) #13
  br label %cifs_parse_mount_err

do.body912:                                       ; preds = %if.then882.do.body912_crit_edge, %if.end878.do.body912_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %324 = load i32, ptr @cifsFYI, align 4
  %and913 = and i32 %324, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and913)
  %tobool914.not = icmp eq i32 %and913, 0
  br i1 %tobool914.not, label %do.body912.cleanup_crit_edge, label %do.body916

do.body912.cleanup_crit_edge:                     ; preds = %do.body912
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body916:                                       ; preds = %do.body912
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smb3_fs_context_parse_param.descriptor.236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smb3_fs_context_parse_param, %land.lhs.true928)) #9
          to label %cleanup [label %land.lhs.true928], !srcloc !675

land.lhs.true928:                                 ; preds = %do.body916
  %call929 = call i32 @___ratelimit(ptr noundef nonnull @smb3_fs_context_parse_param._rs.235, ptr noundef nonnull @.str.120) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call929)
  %tobool930.not = icmp eq i32 %call929, 0
  br i1 %tobool930.not, label %land.lhs.true928.cleanup_crit_edge, label %if.then931

land.lhs.true928.cleanup_crit_edge:               ; preds = %land.lhs.true928
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then931:                                       ; preds = %land.lhs.true928
  call void @__sanitizer_cov_trace_pc() #11
  %iocharset932 = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 19
  %325 = ptrtoint ptr %iocharset932 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %iocharset932, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smb3_fs_context_parse_param.descriptor.236, ptr noundef nonnull @.str.237, ptr noundef nonnull @.str.114, ptr noundef %326) #9
  br label %cleanup

sw.bb942:                                         ; preds = %if.end51
  %source_rfc1001_name = getelementptr %struct.smb3_fs_context, ptr %2, i32 0, i32 20
  %327 = call ptr @memset(ptr %source_rfc1001_name, i32 32, i32 15)
  %328 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2
  %329 = ptrtoint ptr %328 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %328, align 4
  %331 = ptrtoint ptr %330 to i32
  call void @__asan_load1_noabort(i32 %331)
  %332 = load i8, ptr %330, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %332)
  %cmp947 = icmp eq i8 %332, 0
  br i1 %cmp947, label %sw.bb942.cleanup_crit_edge, label %if.end950

sw.bb942.cleanup_crit_edge:                       ; preds = %sw.bb942
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end950:                                        ; preds = %sw.bb942
  %333 = ptrtoint ptr %source_rfc1001_name to i32
  call void @__asan_store1_noabort(i32 %333)
  store i8 %332, ptr %source_rfc1001_name, align 1
  %334 = ptrtoint ptr %328 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %328, align 4
  %arrayidx945.1 = getelementptr i8, ptr %335, i32 1
  %336 = ptrtoint ptr %arrayidx945.1 to i32
  call void @__asan_load1_noabort(i32 %336)
  %337 = load i8, ptr %arrayidx945.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %337)
  %cmp947.1 = icmp eq i8 %337, 0
  br i1 %cmp947.1, label %if.end950.cleanup_crit_edge, label %if.end950.1

if.end950.cleanup_crit_edge:                      ; preds = %if.end950
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end950.1:                                      ; preds = %if.end950
  %arrayidx953.1 = getelementptr %struct.smb3_fs_context, ptr %2, i32 0, i32 20, i32 1
  %338 = ptrtoint ptr %arrayidx953.1 to i32
  call void @__asan_store1_noabort(i32 %338)
  store i8 %337, ptr %arrayidx953.1, align 1
  %339 = ptrtoint ptr %328 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %328, align 4
  %arrayidx945.2 = getelementptr i8, ptr %340, i32 2
  %341 = ptrtoint ptr %arrayidx945.2 to i32
  call void @__asan_load1_noabort(i32 %341)
  %342 = load i8, ptr %arrayidx945.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %342)
  %cmp947.2 = icmp eq i8 %342, 0
  br i1 %cmp947.2, label %if.end950.1.cleanup_crit_edge, label %if.end950.2

if.end950.1.cleanup_crit_edge:                    ; preds = %if.end950.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end950.2:                                      ; preds = %if.end950.1
  %arrayidx953.2 = getelementptr %struct.smb3_fs_context, ptr %2, i32 0, i32 20, i32 2
  %343 = ptrtoint ptr %arrayidx953.2 to i32
  call void @__asan_store1_noabort(i32 %343)
  store i8 %342, ptr %arrayidx953.2, align 1
  %344 = ptrtoint ptr %328 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %328, align 4
  %arrayidx945.3 = getelementptr i8, ptr %345, i32 3
  %346 = ptrtoint ptr %arrayidx945.3 to i32
  call void @__asan_load1_noabort(i32 %346)
  %347 = load i8, ptr %arrayidx945.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %347)
  %cmp947.3 = icmp eq i8 %347, 0
  br i1 %cmp947.3, label %if.end950.2.cleanup_crit_edge, label %if.end950.3

if.end950.2.cleanup_crit_edge:                    ; preds = %if.end950.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end950.3:                                      ; preds = %if.end950.2
  %arrayidx953.3 = getelementptr %struct.smb3_fs_context, ptr %2, i32 0, i32 20, i32 3
  %348 = ptrtoint ptr %arrayidx953.3 to i32
  call void @__asan_store1_noabort(i32 %348)
  store i8 %347, ptr %arrayidx953.3, align 1
  %349 = ptrtoint ptr %328 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %328, align 4
  %arrayidx945.4 = getelementptr i8, ptr %350, i32 4
  %351 = ptrtoint ptr %arrayidx945.4 to i32
  call void @__asan_load1_noabort(i32 %351)
  %352 = load i8, ptr %arrayidx945.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %352)
  %cmp947.4 = icmp eq i8 %352, 0
  br i1 %cmp947.4, label %if.end950.3.cleanup_crit_edge, label %if.end950.4

if.end950.3.cleanup_crit_edge:                    ; preds = %if.end950.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end950.4:                                      ; preds = %if.end950.3
  %arrayidx953.4 = getelementptr %struct.smb3_fs_context, ptr %2, i32 0, i32 20, i32 4
  %353 = ptrtoint ptr %arrayidx953.4 to i32
  call void @__asan_store1_noabort(i32 %353)
  store i8 %352, ptr %arrayidx953.4, align 1
  %354 = ptrtoint ptr %328 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %328, align 4
  %arrayidx945.5 = getelementptr i8, ptr %355, i32 5
  %356 = ptrtoint ptr %arrayidx945.5 to i32
  call void @__asan_load1_noabort(i32 %356)
  %357 = load i8, ptr %arrayidx945.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %357)
  %cmp947.5 = icmp eq i8 %357, 0
  br i1 %cmp947.5, label %if.end950.4.cleanup_crit_edge, label %if.end950.5

if.end950.4.cleanup_crit_edge:                    ; preds = %if.end950.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end950.5:                                      ; preds = %if.end950.4
  %arrayidx953.5 = getelementptr %struct.smb3_fs_context, ptr %2, i32 0, i32 20, i32 5
  %358 = ptrtoint ptr %arrayidx953.5 to i32
  call void @__asan_store1_noabort(i32 %358)
  store i8 %357, ptr %arrayidx953.5, align 1
  %359 = ptrtoint ptr %328 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %328, align 4
  %arrayidx945.6 = getelementptr i8, ptr %360, i32 6
  %361 = ptrtoint ptr %arrayidx945.6 to i32
  call void @__asan_load1_noabort(i32 %361)
  %362 = load i8, ptr %arrayidx945.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %362)
  %cmp947.6 = icmp eq i8 %362, 0
  br i1 %cmp947.6, label %if.end950.5.cleanup_crit_edge, label %if.end950.6

if.end950.5.cleanup_crit_edge:                    ; preds = %if.end950.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end950.6:                                      ; preds = %if.end950.5
  %arrayidx953.6 = getelementptr %struct.smb3_fs_context, ptr %2, i32 0, i32 20, i32 6
  %363 = ptrtoint ptr %arrayidx953.6 to i32
  call void @__asan_store1_noabort(i32 %363)
  store i8 %362, ptr %arrayidx953.6, align 1
  %364 = ptrtoint ptr %328 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %328, align 4
  %arrayidx945.7 = getelementptr i8, ptr %365, i32 7
  %366 = ptrtoint ptr %arrayidx945.7 to i32
  call void @__asan_load1_noabort(i32 %366)
  %367 = load i8, ptr %arrayidx945.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %367)
  %cmp947.7 = icmp eq i8 %367, 0
  br i1 %cmp947.7, label %if.end950.6.cleanup_crit_edge, label %if.end950.7

if.end950.6.cleanup_crit_edge:                    ; preds = %if.end950.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end950.7:                                      ; preds = %if.end950.6
  %arrayidx953.7 = getelementptr %struct.smb3_fs_context, ptr %2, i32 0, i32 20, i32 7
  %368 = ptrtoint ptr %arrayidx953.7 to i32
  call void @__asan_store1_noabort(i32 %368)
  store i8 %367, ptr %arrayidx953.7, align 1
  %369 = ptrtoint ptr %328 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %328, align 4
  %arrayidx945.8 = getelementptr i8, ptr %370, i32 8
  %371 = ptrtoint ptr %arrayidx945.8 to i32
  call void @__asan_load1_noabort(i32 %371)
  %372 = load i8, ptr %arrayidx945.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %372)
  %cmp947.8 = icmp eq i8 %372, 0
  br i1 %cmp947.8, label %if.end950.7.cleanup_crit_edge, label %if.end950.8

if.end950.7.cleanup_crit_edge:                    ; preds = %if.end950.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end950.8:                                      ; preds = %if.end950.7
  %arrayidx953.8 = getelementptr %struct.smb3_fs_context, ptr %2, i32 0, i32 20, i32 8
  %373 = ptrtoint ptr %arrayidx953.8 to i32
  call void @__asan_store1_noabort(i32 %373)
  store i8 %372, ptr %arrayidx953.8, align 1
  %374 = ptrtoint ptr %328 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %328, align 4
  %arrayidx945.9 = getelementptr i8, ptr %375, i32 9
  %376 = ptrtoint ptr %arrayidx945.9 to i32
  call void @__asan_load1_noabort(i32 %376)
  %377 = load i8, ptr %arrayidx945.9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %377)
  %cmp947.9 = icmp eq i8 %377, 0
  br i1 %cmp947.9, label %if.end950.8.cleanup_crit_edge, label %if.end950.9

if.end950.8.cleanup_crit_edge:                    ; preds = %if.end950.8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end950.9:                                      ; preds = %if.end950.8
  %arrayidx953.9 = getelementptr %struct.smb3_fs_context, ptr %2, i32 0, i32 20, i32 9
  %378 = ptrtoint ptr %arrayidx953.9 to i32
  call void @__asan_store1_noabort(i32 %378)
  store i8 %377, ptr %arrayidx953.9, align 1
  %379 = ptrtoint ptr %328 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %328, align 4
  %arrayidx945.10 = getelementptr i8, ptr %380, i32 10
  %381 = ptrtoint ptr %arrayidx945.10 to i32
  call void @__asan_load1_noabort(i32 %381)
  %382 = load i8, ptr %arrayidx945.10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %382)
  %cmp947.10 = icmp eq i8 %382, 0
  br i1 %cmp947.10, label %if.end950.9.cleanup_crit_edge, label %if.end950.10

if.end950.9.cleanup_crit_edge:                    ; preds = %if.end950.9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end950.10:                                     ; preds = %if.end950.9
  %arrayidx953.10 = getelementptr %struct.smb3_fs_context, ptr %2, i32 0, i32 20, i32 10
  %383 = ptrtoint ptr %arrayidx953.10 to i32
  call void @__asan_store1_noabort(i32 %383)
  store i8 %382, ptr %arrayidx953.10, align 1
  %384 = ptrtoint ptr %328 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %328, align 4
  %arrayidx945.11 = getelementptr i8, ptr %385, i32 11
  %386 = ptrtoint ptr %arrayidx945.11 to i32
  call void @__asan_load1_noabort(i32 %386)
  %387 = load i8, ptr %arrayidx945.11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %387)
  %cmp947.11 = icmp eq i8 %387, 0
  br i1 %cmp947.11, label %if.end950.10.cleanup_crit_edge, label %if.end950.11

if.end950.10.cleanup_crit_edge:                   ; preds = %if.end950.10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end950.11:                                     ; preds = %if.end950.10
  %arrayidx953.11 = getelementptr %struct.smb3_fs_context, ptr %2, i32 0, i32 20, i32 11
  %388 = ptrtoint ptr %arrayidx953.11 to i32
  call void @__asan_store1_noabort(i32 %388)
  store i8 %387, ptr %arrayidx953.11, align 1
  %389 = ptrtoint ptr %328 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %328, align 4
  %arrayidx945.12 = getelementptr i8, ptr %390, i32 12
  %391 = ptrtoint ptr %arrayidx945.12 to i32
  call void @__asan_load1_noabort(i32 %391)
  %392 = load i8, ptr %arrayidx945.12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %392)
  %cmp947.12 = icmp eq i8 %392, 0
  br i1 %cmp947.12, label %if.end950.11.cleanup_crit_edge, label %if.end950.12

if.end950.11.cleanup_crit_edge:                   ; preds = %if.end950.11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end950.12:                                     ; preds = %if.end950.11
  %arrayidx953.12 = getelementptr %struct.smb3_fs_context, ptr %2, i32 0, i32 20, i32 12
  %393 = ptrtoint ptr %arrayidx953.12 to i32
  call void @__asan_store1_noabort(i32 %393)
  store i8 %392, ptr %arrayidx953.12, align 1
  %394 = ptrtoint ptr %328 to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %328, align 4
  %arrayidx945.13 = getelementptr i8, ptr %395, i32 13
  %396 = ptrtoint ptr %arrayidx945.13 to i32
  call void @__asan_load1_noabort(i32 %396)
  %397 = load i8, ptr %arrayidx945.13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %397)
  %cmp947.13 = icmp eq i8 %397, 0
  br i1 %cmp947.13, label %if.end950.12.cleanup_crit_edge, label %if.end950.13

if.end950.12.cleanup_crit_edge:                   ; preds = %if.end950.12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end950.13:                                     ; preds = %if.end950.12
  %arrayidx953.13 = getelementptr %struct.smb3_fs_context, ptr %2, i32 0, i32 20, i32 13
  %398 = ptrtoint ptr %arrayidx953.13 to i32
  call void @__asan_store1_noabort(i32 %398)
  store i8 %397, ptr %arrayidx953.13, align 1
  %399 = ptrtoint ptr %328 to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %328, align 4
  %arrayidx945.14 = getelementptr i8, ptr %400, i32 14
  %401 = ptrtoint ptr %arrayidx945.14 to i32
  call void @__asan_load1_noabort(i32 %401)
  %402 = load i8, ptr %arrayidx945.14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %402)
  %cmp947.14 = icmp eq i8 %402, 0
  br i1 %cmp947.14, label %if.end950.13.cleanup_crit_edge, label %land.lhs.true956

if.end950.13.cleanup_crit_edge:                   ; preds = %if.end950.13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true956:                                 ; preds = %if.end950.13
  %arrayidx953.14 = getelementptr %struct.smb3_fs_context, ptr %2, i32 0, i32 20, i32 14
  %403 = ptrtoint ptr %arrayidx953.14 to i32
  call void @__asan_store1_noabort(i32 %403)
  store i8 %402, ptr %arrayidx953.14, align 1
  %404 = ptrtoint ptr %328 to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %328, align 4
  %arrayidx957 = getelementptr i8, ptr %405, i32 15
  %406 = ptrtoint ptr %arrayidx957 to i32
  call void @__asan_load1_noabort(i32 %406)
  %407 = load i8, ptr %arrayidx957, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %407)
  %cmp959.not = icmp eq i8 %407, 0
  br i1 %cmp959.not, label %land.lhs.true956.cleanup_crit_edge, label %do.end964

land.lhs.true956.cleanup_crit_edge:               ; preds = %land.lhs.true956
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end964:                                        ; preds = %land.lhs.true956
  call void @__sanitizer_cov_trace_pc() #11
  %call966 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.239) #13
  br label %cleanup

sw.bb968:                                         ; preds = %if.end51
  %target_rfc1001_name = getelementptr %struct.smb3_fs_context, ptr %2, i32 0, i32 21
  %408 = call ptr @memset(ptr %target_rfc1001_name, i32 32, i32 16)
  %409 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2
  %410 = ptrtoint ptr %409 to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %409, align 4
  %412 = ptrtoint ptr %411 to i32
  call void @__asan_load1_noabort(i32 %412)
  %413 = load i8, ptr %411, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %413)
  %cmp976 = icmp eq i8 %413, 0
  br i1 %cmp976, label %sw.bb968.cleanup_crit_edge, label %if.end979

sw.bb968.cleanup_crit_edge:                       ; preds = %sw.bb968
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end979:                                        ; preds = %sw.bb968
  %414 = ptrtoint ptr %target_rfc1001_name to i32
  call void @__asan_store1_noabort(i32 %414)
  store i8 %413, ptr %target_rfc1001_name, align 1
  %415 = ptrtoint ptr %409 to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %409, align 4
  %arrayidx974.1 = getelementptr i8, ptr %416, i32 1
  %417 = ptrtoint ptr %arrayidx974.1 to i32
  call void @__asan_load1_noabort(i32 %417)
  %418 = load i8, ptr %arrayidx974.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %418)
  %cmp976.1 = icmp eq i8 %418, 0
  br i1 %cmp976.1, label %if.end979.cleanup_crit_edge, label %if.end979.1

if.end979.cleanup_crit_edge:                      ; preds = %if.end979
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end979.1:                                      ; preds = %if.end979
  %arrayidx982.1 = getelementptr %struct.smb3_fs_context, ptr %2, i32 0, i32 21, i32 1
  %419 = ptrtoint ptr %arrayidx982.1 to i32
  call void @__asan_store1_noabort(i32 %419)
  store i8 %418, ptr %arrayidx982.1, align 1
  %420 = ptrtoint ptr %409 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %409, align 4
  %arrayidx974.2 = getelementptr i8, ptr %421, i32 2
  %422 = ptrtoint ptr %arrayidx974.2 to i32
  call void @__asan_load1_noabort(i32 %422)
  %423 = load i8, ptr %arrayidx974.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %423)
  %cmp976.2 = icmp eq i8 %423, 0
  br i1 %cmp976.2, label %if.end979.1.cleanup_crit_edge, label %if.end979.2

if.end979.1.cleanup_crit_edge:                    ; preds = %if.end979.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end979.2:                                      ; preds = %if.end979.1
  %arrayidx982.2 = getelementptr %struct.smb3_fs_context, ptr %2, i32 0, i32 21, i32 2
  %424 = ptrtoint ptr %arrayidx982.2 to i32
  call void @__asan_store1_noabort(i32 %424)
  store i8 %423, ptr %arrayidx982.2, align 1
  %425 = ptrtoint ptr %409 to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %409, align 4
  %arrayidx974.3 = getelementptr i8, ptr %426, i32 3
  %427 = ptrtoint ptr %arrayidx974.3 to i32
  call void @__asan_load1_noabort(i32 %427)
  %428 = load i8, ptr %arrayidx974.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %428)
  %cmp976.3 = icmp eq i8 %428, 0
  br i1 %cmp976.3, label %if.end979.2.cleanup_crit_edge, label %if.end979.3

if.end979.2.cleanup_crit_edge:                    ; preds = %if.end979.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end979.3:                                      ; preds = %if.end979.2
  %arrayidx982.3 = getelementptr %struct.smb3_fs_context, ptr %2, i32 0, i32 21, i32 3
  %429 = ptrtoint ptr %arrayidx982.3 to i32
  call void @__asan_store1_noabort(i32 %429)
  store i8 %428, ptr %arrayidx982.3, align 1
  %430 = ptrtoint ptr %409 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %409, align 4
  %arrayidx974.4 = getelementptr i8, ptr %431, i32 4
  %432 = ptrtoint ptr %arrayidx974.4 to i32
  call void @__asan_load1_noabort(i32 %432)
  %433 = load i8, ptr %arrayidx974.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %433)
  %cmp976.4 = icmp eq i8 %433, 0
  br i1 %cmp976.4, label %if.end979.3.cleanup_crit_edge, label %if.end979.4

if.end979.3.cleanup_crit_edge:                    ; preds = %if.end979.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end979.4:                                      ; preds = %if.end979.3
  %arrayidx982.4 = getelementptr %struct.smb3_fs_context, ptr %2, i32 0, i32 21, i32 4
  %434 = ptrtoint ptr %arrayidx982.4 to i32
  call void @__asan_store1_noabort(i32 %434)
  store i8 %433, ptr %arrayidx982.4, align 1
  %435 = ptrtoint ptr %409 to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %409, align 4
  %arrayidx974.5 = getelementptr i8, ptr %436, i32 5
  %437 = ptrtoint ptr %arrayidx974.5 to i32
  call void @__asan_load1_noabort(i32 %437)
  %438 = load i8, ptr %arrayidx974.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %438)
  %cmp976.5 = icmp eq i8 %438, 0
  br i1 %cmp976.5, label %if.end979.4.cleanup_crit_edge, label %if.end979.5

if.end979.4.cleanup_crit_edge:                    ; preds = %if.end979.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end979.5:                                      ; preds = %if.end979.4
  %arrayidx982.5 = getelementptr %struct.smb3_fs_context, ptr %2, i32 0, i32 21, i32 5
  %439 = ptrtoint ptr %arrayidx982.5 to i32
  call void @__asan_store1_noabort(i32 %439)
  store i8 %438, ptr %arrayidx982.5, align 1
  %440 = ptrtoint ptr %409 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %409, align 4
  %arrayidx974.6 = getelementptr i8, ptr %441, i32 6
  %442 = ptrtoint ptr %arrayidx974.6 to i32
  call void @__asan_load1_noabort(i32 %442)
  %443 = load i8, ptr %arrayidx974.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %443)
  %cmp976.6 = icmp eq i8 %443, 0
  br i1 %cmp976.6, label %if.end979.5.cleanup_crit_edge, label %if.end979.6

if.end979.5.cleanup_crit_edge:                    ; preds = %if.end979.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end979.6:                                      ; preds = %if.end979.5
  %arrayidx982.6 = getelementptr %struct.smb3_fs_context, ptr %2, i32 0, i32 21, i32 6
  %444 = ptrtoint ptr %arrayidx982.6 to i32
  call void @__asan_store1_noabort(i32 %444)
  store i8 %443, ptr %arrayidx982.6, align 1
  %445 = ptrtoint ptr %409 to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %409, align 4
  %arrayidx974.7 = getelementptr i8, ptr %446, i32 7
  %447 = ptrtoint ptr %arrayidx974.7 to i32
  call void @__asan_load1_noabort(i32 %447)
  %448 = load i8, ptr %arrayidx974.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %448)
  %cmp976.7 = icmp eq i8 %448, 0
  br i1 %cmp976.7, label %if.end979.6.cleanup_crit_edge, label %if.end979.7

if.end979.6.cleanup_crit_edge:                    ; preds = %if.end979.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end979.7:                                      ; preds = %if.end979.6
  %arrayidx982.7 = getelementptr %struct.smb3_fs_context, ptr %2, i32 0, i32 21, i32 7
  %449 = ptrtoint ptr %arrayidx982.7 to i32
  call void @__asan_store1_noabort(i32 %449)
  store i8 %448, ptr %arrayidx982.7, align 1
  %450 = ptrtoint ptr %409 to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %409, align 4
  %arrayidx974.8 = getelementptr i8, ptr %451, i32 8
  %452 = ptrtoint ptr %arrayidx974.8 to i32
  call void @__asan_load1_noabort(i32 %452)
  %453 = load i8, ptr %arrayidx974.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %453)
  %cmp976.8 = icmp eq i8 %453, 0
  br i1 %cmp976.8, label %if.end979.7.cleanup_crit_edge, label %if.end979.8

if.end979.7.cleanup_crit_edge:                    ; preds = %if.end979.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end979.8:                                      ; preds = %if.end979.7
  %arrayidx982.8 = getelementptr %struct.smb3_fs_context, ptr %2, i32 0, i32 21, i32 8
  %454 = ptrtoint ptr %arrayidx982.8 to i32
  call void @__asan_store1_noabort(i32 %454)
  store i8 %453, ptr %arrayidx982.8, align 1
  %455 = ptrtoint ptr %409 to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load ptr, ptr %409, align 4
  %arrayidx974.9 = getelementptr i8, ptr %456, i32 9
  %457 = ptrtoint ptr %arrayidx974.9 to i32
  call void @__asan_load1_noabort(i32 %457)
  %458 = load i8, ptr %arrayidx974.9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %458)
  %cmp976.9 = icmp eq i8 %458, 0
  br i1 %cmp976.9, label %if.end979.8.cleanup_crit_edge, label %if.end979.9

if.end979.8.cleanup_crit_edge:                    ; preds = %if.end979.8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end979.9:                                      ; preds = %if.end979.8
  %arrayidx982.9 = getelementptr %struct.smb3_fs_context, ptr %2, i32 0, i32 21, i32 9
  %459 = ptrtoint ptr %arrayidx982.9 to i32
  call void @__asan_store1_noabort(i32 %459)
  store i8 %458, ptr %arrayidx982.9, align 1
  %460 = ptrtoint ptr %409 to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %409, align 4
  %arrayidx974.10 = getelementptr i8, ptr %461, i32 10
  %462 = ptrtoint ptr %arrayidx974.10 to i32
  call void @__asan_load1_noabort(i32 %462)
  %463 = load i8, ptr %arrayidx974.10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %463)
  %cmp976.10 = icmp eq i8 %463, 0
  br i1 %cmp976.10, label %if.end979.9.cleanup_crit_edge, label %if.end979.10

if.end979.9.cleanup_crit_edge:                    ; preds = %if.end979.9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end979.10:                                     ; preds = %if.end979.9
  %arrayidx982.10 = getelementptr %struct.smb3_fs_context, ptr %2, i32 0, i32 21, i32 10
  %464 = ptrtoint ptr %arrayidx982.10 to i32
  call void @__asan_store1_noabort(i32 %464)
  store i8 %463, ptr %arrayidx982.10, align 1
  %465 = ptrtoint ptr %409 to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %409, align 4
  %arrayidx974.11 = getelementptr i8, ptr %466, i32 11
  %467 = ptrtoint ptr %arrayidx974.11 to i32
  call void @__asan_load1_noabort(i32 %467)
  %468 = load i8, ptr %arrayidx974.11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %468)
  %cmp976.11 = icmp eq i8 %468, 0
  br i1 %cmp976.11, label %if.end979.10.cleanup_crit_edge, label %if.end979.11

if.end979.10.cleanup_crit_edge:                   ; preds = %if.end979.10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end979.11:                                     ; preds = %if.end979.10
  %arrayidx982.11 = getelementptr %struct.smb3_fs_context, ptr %2, i32 0, i32 21, i32 11
  %469 = ptrtoint ptr %arrayidx982.11 to i32
  call void @__asan_store1_noabort(i32 %469)
  store i8 %468, ptr %arrayidx982.11, align 1
  %470 = ptrtoint ptr %409 to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %409, align 4
  %arrayidx974.12 = getelementptr i8, ptr %471, i32 12
  %472 = ptrtoint ptr %arrayidx974.12 to i32
  call void @__asan_load1_noabort(i32 %472)
  %473 = load i8, ptr %arrayidx974.12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %473)
  %cmp976.12 = icmp eq i8 %473, 0
  br i1 %cmp976.12, label %if.end979.11.cleanup_crit_edge, label %if.end979.12

if.end979.11.cleanup_crit_edge:                   ; preds = %if.end979.11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end979.12:                                     ; preds = %if.end979.11
  %arrayidx982.12 = getelementptr %struct.smb3_fs_context, ptr %2, i32 0, i32 21, i32 12
  %474 = ptrtoint ptr %arrayidx982.12 to i32
  call void @__asan_store1_noabort(i32 %474)
  store i8 %473, ptr %arrayidx982.12, align 1
  %475 = ptrtoint ptr %409 to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %409, align 4
  %arrayidx974.13 = getelementptr i8, ptr %476, i32 13
  %477 = ptrtoint ptr %arrayidx974.13 to i32
  call void @__asan_load1_noabort(i32 %477)
  %478 = load i8, ptr %arrayidx974.13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %478)
  %cmp976.13 = icmp eq i8 %478, 0
  br i1 %cmp976.13, label %if.end979.12.cleanup_crit_edge, label %if.end979.13

if.end979.12.cleanup_crit_edge:                   ; preds = %if.end979.12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end979.13:                                     ; preds = %if.end979.12
  %arrayidx982.13 = getelementptr %struct.smb3_fs_context, ptr %2, i32 0, i32 21, i32 13
  %479 = ptrtoint ptr %arrayidx982.13 to i32
  call void @__asan_store1_noabort(i32 %479)
  store i8 %478, ptr %arrayidx982.13, align 1
  %480 = ptrtoint ptr %409 to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %409, align 4
  %arrayidx974.14 = getelementptr i8, ptr %481, i32 14
  %482 = ptrtoint ptr %arrayidx974.14 to i32
  call void @__asan_load1_noabort(i32 %482)
  %483 = load i8, ptr %arrayidx974.14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %483)
  %cmp976.14 = icmp eq i8 %483, 0
  br i1 %cmp976.14, label %if.end979.13.cleanup_crit_edge, label %land.lhs.true988

if.end979.13.cleanup_crit_edge:                   ; preds = %if.end979.13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true988:                                 ; preds = %if.end979.13
  %arrayidx982.14 = getelementptr %struct.smb3_fs_context, ptr %2, i32 0, i32 21, i32 14
  %484 = ptrtoint ptr %arrayidx982.14 to i32
  call void @__asan_store1_noabort(i32 %484)
  store i8 %483, ptr %arrayidx982.14, align 1
  %485 = ptrtoint ptr %409 to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load ptr, ptr %409, align 4
  %arrayidx989 = getelementptr i8, ptr %486, i32 15
  %487 = ptrtoint ptr %arrayidx989 to i32
  call void @__asan_load1_noabort(i32 %487)
  %488 = load i8, ptr %arrayidx989, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %488)
  %cmp991.not = icmp eq i8 %488, 0
  br i1 %cmp991.not, label %land.lhs.true988.cleanup_crit_edge, label %do.end996

land.lhs.true988.cleanup_crit_edge:               ; preds = %land.lhs.true988
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end996:                                        ; preds = %land.lhs.true988
  call void @__sanitizer_cov_trace_pc() #11
  %call998 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.242) #13
  br label %cleanup

sw.bb1000:                                        ; preds = %if.end51
  %489 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2
  %490 = ptrtoint ptr %489 to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %489, align 4
  %call1001 = call i32 @strncasecmp(ptr noundef %491, ptr noundef nonnull @.str.244, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1001)
  %cmp1002 = icmp eq i32 %call1001, 0
  br i1 %cmp1002, label %if.then1004, label %do.end1018

if.then1004:                                      ; preds = %sw.bb1000
  %call1005 = call i32 @strlen(ptr noundef %491) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1005)
  %cmp1006 = icmp ugt i32 %call1005, 1
  br i1 %cmp1006, label %do.end1011, label %if.then1004.cleanup_crit_edge

if.then1004.cleanup_crit_edge:                    ; preds = %if.then1004
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end1011:                                       ; preds = %if.then1004
  call void @__sanitizer_cov_trace_pc() #11
  %call1013 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.246, ptr noundef %491) #13
  br label %cifs_parse_mount_err

do.end1018:                                       ; preds = %sw.bb1000
  call void @__sanitizer_cov_trace_pc() #11
  %call1020 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.249) #13
  br label %cifs_parse_mount_err

sw.bb1021:                                        ; preds = %if.end51
  %492 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2
  %493 = ptrtoint ptr %492 to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load ptr, ptr %492, align 4
  %call1023 = call fastcc i32 @cifs_parse_smb_version(ptr noundef %fc, ptr noundef %494, ptr noundef %2, i1 noundef zeroext %tobool.not)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1023)
  %cmp1024.not = icmp eq i32 %call1023, 0
  br i1 %cmp1024.not, label %if.end1027, label %sw.bb1021.cifs_parse_mount_err_crit_edge

sw.bb1021.cifs_parse_mount_err_crit_edge:         ; preds = %sw.bb1021
  call void @__sanitizer_cov_trace_pc() #11
  br label %cifs_parse_mount_err

if.end1027:                                       ; preds = %sw.bb1021
  call void @__sanitizer_cov_trace_pc() #11
  %got_version = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 5
  %495 = ptrtoint ptr %got_version to i32
  call void @__asan_store1_noabort(i32 %495)
  store i8 1, ptr %got_version, align 1
  br label %cleanup

sw.bb1028:                                        ; preds = %if.end51
  %496 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2
  %497 = ptrtoint ptr %496 to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load ptr, ptr %496, align 4
  %call1029 = call fastcc i32 @cifs_parse_security_flavors(ptr noundef %fc, ptr noundef %498, ptr noundef %2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1029)
  %cmp1030.not = icmp eq i32 %call1029, 0
  br i1 %cmp1030.not, label %sw.bb1028.cleanup_crit_edge, label %sw.bb1028.cifs_parse_mount_err_crit_edge

sw.bb1028.cifs_parse_mount_err_crit_edge:         ; preds = %sw.bb1028
  call void @__sanitizer_cov_trace_pc() #11
  br label %cifs_parse_mount_err

sw.bb1028.cleanup_crit_edge:                      ; preds = %sw.bb1028
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb1034:                                        ; preds = %if.end51
  %499 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2
  %500 = ptrtoint ptr %499 to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %499, align 4
  %call1035 = call fastcc i32 @cifs_parse_cache_flavor(ptr noundef %fc, ptr noundef %501, ptr noundef %2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1035)
  %cmp1036.not = icmp eq i32 %call1035, 0
  br i1 %cmp1036.not, label %sw.bb1034.cleanup_crit_edge, label %sw.bb1034.cifs_parse_mount_err_crit_edge

sw.bb1034.cifs_parse_mount_err_crit_edge:         ; preds = %sw.bb1034
  call void @__sanitizer_cov_trace_pc() #11
  br label %cifs_parse_mount_err

sw.bb1034.cleanup_crit_edge:                      ; preds = %sw.bb1034
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb1040:                                        ; preds = %if.end51
  %witness = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 59
  %502 = ptrtoint ptr %witness to i32
  call void @__asan_load1_noabort(i32 %502)
  %bf.load1041 = load i8, ptr %witness, align 2
  %bf.set1043 = or i8 %bf.load1041, 64
  store i8 %bf.set1043, ptr %witness, align 2
  %.b1729 = load i1, ptr @smb3_fs_context_parse_param.__already_done, align 1
  br i1 %.b1729, label %sw.bb1040.cleanup_crit_edge, label %if.then1055, !prof !676

sw.bb1040.cleanup_crit_edge:                      ; preds = %sw.bb1040
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then1055:                                      ; preds = %sw.bb1040
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @smb3_fs_context_parse_param.__already_done, align 1
  %call1060 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.252) #13
  br label %cleanup

sw.bb1069:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %rootfs = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 59
  %503 = ptrtoint ptr %rootfs to i32
  call void @__asan_load1_noabort(i32 %503)
  %bf.load1070 = load i8, ptr %rootfs, align 2
  %bf.set1072 = or i8 %bf.load1070, -128
  store i8 %bf.set1072, ptr %rootfs, align 2
  br label %cleanup

sw.bb1073:                                        ; preds = %if.end51
  %504 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %504)
  %505 = load i8, ptr %result, align 8, !range !674
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %505)
  %tobool1075.not = icmp eq i8 %505, 0
  %posix_paths1081 = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 34
  %506 = ptrtoint ptr %posix_paths1081 to i32
  call void @__asan_loadN_noabort(i32 %506, i32 5)
  %bf.load1082 = load i40, ptr %posix_paths1081, align 1
  br i1 %tobool1075.not, label %if.else1080, label %if.then1076

if.then1076:                                      ; preds = %sw.bb1073
  call void @__sanitizer_cov_trace_pc() #11
  %bf.clear1078 = and i40 %bf.load1082, -2147483649
  %507 = ptrtoint ptr %posix_paths1081 to i32
  call void @__asan_storeN_noabort(i32 %507, i32 5)
  store i40 %bf.clear1078, ptr %posix_paths1081, align 1
  br label %cleanup

if.else1080:                                      ; preds = %sw.bb1073
  call void @__sanitizer_cov_trace_pc() #11
  %bf.set1084 = or i40 %bf.load1082, 2147483648
  %508 = ptrtoint ptr %posix_paths1081 to i32
  call void @__asan_storeN_noabort(i32 %508, i32 5)
  store i40 %bf.set1084, ptr %posix_paths1081, align 1
  br label %cleanup

sw.bb1086:                                        ; preds = %if.end51
  %509 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %509)
  %510 = load i8, ptr %result, align 8, !range !674
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %510)
  %tobool1088.not = icmp eq i8 %510, 0
  %no_linux_ext1134 = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 34
  %511 = ptrtoint ptr %no_linux_ext1134 to i32
  call void @__asan_loadN_noabort(i32 %511, i32 5)
  %bf.load1135 = load i40, ptr %no_linux_ext1134, align 1
  br i1 %tobool1088.not, label %if.else1133, label %if.then1089

if.then1089:                                      ; preds = %sw.bb1086
  %512 = and i40 %bf.load1135, 536870912
  %bf.cast1092.not = icmp eq i40 %512, 0
  br i1 %bf.cast1092.not, label %if.then1089.if.end1125_crit_edge, label %land.end1104

if.then1089.if.end1125_crit_edge:                 ; preds = %if.then1089
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end1125

land.end1104:                                     ; preds = %if.then1089
  %.b17251728 = load i1, ptr @smb3_fs_context_parse_param.__already_done.254, align 1
  br i1 %.b17251728, label %land.end1104.if.end1125_crit_edge, label %if.then1111, !prof !676

land.end1104.if.end1125_crit_edge:                ; preds = %land.end1104
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end1125

if.then1111:                                      ; preds = %land.end1104
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @smb3_fs_context_parse_param.__already_done.254, align 1
  %call1116 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.256) #13
  br label %if.end1125

if.end1125:                                       ; preds = %if.then1111, %land.end1104.if.end1125_crit_edge, %if.then1089.if.end1125_crit_edge
  %513 = ptrtoint ptr %no_linux_ext1134 to i32
  call void @__asan_loadN_noabort(i32 %513, i32 5)
  %bf.load1127 = load i40, ptr %no_linux_ext1134, align 1
  %bf.clear1131 = and i40 %bf.load1127, -1610612737
  %bf.set1132 = or i40 %bf.clear1131, 1073741824
  store i40 %bf.set1132, ptr %no_linux_ext1134, align 1
  br label %cleanup

if.else1133:                                      ; preds = %sw.bb1086
  %514 = and i40 %bf.load1135, 1073741824
  %bf.cast1138.not = icmp eq i40 %514, 0
  br i1 %bf.cast1138.not, label %if.else1133.if.end1171_crit_edge, label %land.end1150

if.else1133.if.end1171_crit_edge:                 ; preds = %if.else1133
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end1171

land.end1150:                                     ; preds = %if.else1133
  %.b17261727 = load i1, ptr @smb3_fs_context_parse_param.__already_done.258, align 1
  br i1 %.b17261727, label %land.end1150.if.end1171_crit_edge, label %if.then1157, !prof !676

land.end1150.if.end1171_crit_edge:                ; preds = %land.end1150
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end1171

if.then1157:                                      ; preds = %land.end1150
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @smb3_fs_context_parse_param.__already_done.258, align 1
  %call1162 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.256) #13
  br label %if.end1171

if.end1171:                                       ; preds = %if.then1157, %land.end1150.if.end1171_crit_edge, %if.else1133.if.end1171_crit_edge
  %515 = ptrtoint ptr %no_linux_ext1134 to i32
  call void @__asan_loadN_noabort(i32 %515, i32 5)
  %bf.load1173 = load i40, ptr %no_linux_ext1134, align 1
  %bf.set1175 = and i40 %bf.load1173, -1610612737
  %bf.clear1178 = or i40 %bf.set1175, 536870912
  store i40 %bf.clear1178, ptr %no_linux_ext1134, align 1
  br label %cleanup

sw.bb1181:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %nocase = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 34
  %516 = ptrtoint ptr %nocase to i32
  call void @__asan_loadN_noabort(i32 %516, i32 5)
  %bf.load1182 = load i40, ptr %nocase, align 1
  %bf.set1184 = or i40 %bf.load1182, 67108864
  store i40 %bf.set1184, ptr %nocase, align 1
  br label %cleanup

sw.bb1185:                                        ; preds = %if.end51
  %517 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %517)
  %518 = load i8, ptr %result, align 8, !range !674
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %518)
  %tobool1187.not = icmp eq i8 %518, 0
  br i1 %tobool1187.not, label %if.else1199, label %if.then1188

if.then1188:                                      ; preds = %sw.bb1185
  %file_mode1189 = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 27
  %519 = ptrtoint ptr %file_mode1189 to i32
  call void @__asan_load2_noabort(i32 %519)
  %520 = load i16, ptr %file_mode1189, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2039, i16 %520)
  %cmp1191 = icmp eq i16 %520, 2039
  br i1 %cmp1191, label %if.then1193, label %if.then1188.if.end1195_crit_edge

if.then1188.if.end1195_crit_edge:                 ; preds = %if.then1188
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end1195

if.then1193:                                      ; preds = %if.then1188
  call void @__sanitizer_cov_trace_pc() #11
  %521 = ptrtoint ptr %file_mode1189 to i32
  call void @__asan_store2_noabort(i32 %521)
  store i16 4095, ptr %file_mode1189, align 4
  br label %if.end1195

if.end1195:                                       ; preds = %if.then1193, %if.then1188.if.end1195_crit_edge
  %nobrl = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 34
  %522 = ptrtoint ptr %nobrl to i32
  call void @__asan_loadN_noabort(i32 %522, i32 5)
  %bf.load1196 = load i40, ptr %nobrl, align 1
  %bf.set1198 = or i40 %bf.load1196, 33554432
  store i40 %bf.set1198, ptr %nobrl, align 1
  br label %cleanup

if.else1199:                                      ; preds = %sw.bb1185
  call void @__sanitizer_cov_trace_pc() #11
  %nobrl1200 = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 34
  %523 = ptrtoint ptr %nobrl1200 to i32
  call void @__asan_loadN_noabort(i32 %523, i32 5)
  %bf.load1201 = load i40, ptr %nobrl1200, align 1
  %bf.clear1202 = and i40 %bf.load1201, -33554433
  store i40 %bf.clear1202, ptr %nobrl1200, align 1
  br label %cleanup

sw.bb1205:                                        ; preds = %if.end51
  %524 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %524)
  %525 = load i8, ptr %result, align 8, !range !674
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %525)
  %tobool1207.not = icmp eq i8 %525, 0
  %nohandlecache1213 = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 34
  %526 = ptrtoint ptr %nohandlecache1213 to i32
  call void @__asan_loadN_noabort(i32 %526, i32 5)
  %bf.load1214 = load i40, ptr %nohandlecache1213, align 1
  br i1 %tobool1207.not, label %if.else1212, label %if.then1208

if.then1208:                                      ; preds = %sw.bb1205
  call void @__sanitizer_cov_trace_pc() #11
  %bf.set1211 = or i40 %bf.load1214, 16777216
  %527 = ptrtoint ptr %nohandlecache1213 to i32
  call void @__asan_storeN_noabort(i32 %527, i32 5)
  store i40 %bf.set1211, ptr %nohandlecache1213, align 1
  br label %cleanup

if.else1212:                                      ; preds = %sw.bb1205
  call void @__sanitizer_cov_trace_pc() #11
  %bf.clear1215 = and i40 %bf.load1214, -16777217
  %528 = ptrtoint ptr %nohandlecache1213 to i32
  call void @__asan_storeN_noabort(i32 %528, i32 5)
  store i40 %bf.clear1215, ptr %nohandlecache1213, align 1
  br label %cleanup

sw.bb1218:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %mand_lock = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 34
  %529 = ptrtoint ptr %mand_lock to i32
  call void @__asan_loadN_noabort(i32 %529, i32 5)
  %bf.load1219 = load i40, ptr %mand_lock, align 1
  %bf.set1221 = or i40 %bf.load1219, 8388608
  store i40 %bf.set1221, ptr %mand_lock, align 1
  br label %cleanup

sw.bb1222:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %530 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %530)
  %531 = load i8, ptr %result, align 8, !range !674
  %setuids = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 31
  %532 = zext i8 %531 to i16
  %533 = ptrtoint ptr %setuids to i32
  call void @__asan_loadN_noabort(i32 %533, i32 2)
  %bf.load1225 = load i16, ptr %setuids, align 1
  %bf.shl = shl nuw nsw i16 %532, 12
  %bf.clear1226 = and i16 %bf.load1225, -4097
  %bf.set1227 = or i16 %bf.clear1226, %bf.shl
  store i16 %bf.set1227, ptr %setuids, align 1
  br label %cleanup

sw.bb1229:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %534 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %534)
  %535 = load i8, ptr %result, align 8, !range !674
  %intr = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 31
  %536 = xor i8 %535, 1
  %537 = zext i8 %536 to i16
  %538 = ptrtoint ptr %intr to i32
  call void @__asan_loadN_noabort(i32 %538, i32 2)
  %bf.load1234 = load i16, ptr %intr, align 1
  %bf.shl1235 = shl nuw nsw i16 %537, 13
  %bf.clear1236 = and i16 %bf.load1234, -8193
  %bf.set1237 = or i16 %bf.shl1235, %bf.clear1236
  store i16 %bf.set1237, ptr %intr, align 1
  br label %cleanup

sw.bb1240:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %setuidfromacl = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 31
  %539 = ptrtoint ptr %setuidfromacl to i32
  call void @__asan_loadN_noabort(i32 %539, i32 2)
  %bf.load1241 = load i16, ptr %setuidfromacl, align 1
  %bf.set1243 = or i16 %bf.load1241, 2048
  store i16 %bf.set1243, ptr %setuidfromacl, align 1
  br label %cleanup

sw.bb1244:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %540 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %540)
  %541 = load i8, ptr %result, align 8, !range !674
  %nostrictsync = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 34
  %542 = zext i8 %541 to i40
  %543 = ptrtoint ptr %nostrictsync to i32
  call void @__asan_loadN_noabort(i32 %543, i32 5)
  %bf.load1247 = load i40, ptr %nostrictsync, align 1
  %bf.shl1248 = shl nuw nsw i40 %542, 17
  %bf.clear1249 = and i40 %bf.load1247, -131073
  %bf.set1250 = or i40 %bf.clear1249, %bf.shl1248
  store i40 %bf.set1250, ptr %nostrictsync, align 1
  br label %cleanup

sw.bb1253:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %544 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %544)
  %545 = load i8, ptr %result, align 8, !range !674
  %server_ino = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 34
  %546 = xor i8 %545, 1
  %547 = zext i8 %546 to i40
  %548 = ptrtoint ptr %server_ino to i32
  call void @__asan_loadN_noabort(i32 %548, i32 5)
  %bf.load1258 = load i40, ptr %server_ino, align 1
  %bf.shl1259 = shl nuw nsw i40 %547, 38
  %bf.clear1260 = and i40 %bf.load1258, -274877906945
  %bf.set1261 = or i40 %bf.shl1259, %bf.clear1260
  store i40 %bf.set1261, ptr %server_ino, align 1
  br label %cleanup

sw.bb1264:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %rwpidforward = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 34
  %549 = ptrtoint ptr %rwpidforward to i32
  call void @__asan_loadN_noabort(i32 %549, i32 5)
  %bf.load1265 = load i40, ptr %rwpidforward, align 1
  %bf.set1267 = or i40 %bf.load1265, 4096
  store i40 %bf.set1267, ptr %rwpidforward, align 1
  br label %cleanup

sw.bb1268:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %mode_ace = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 31
  %550 = ptrtoint ptr %mode_ace to i32
  call void @__asan_loadN_noabort(i32 %550, i32 2)
  %bf.load1269 = load i16, ptr %mode_ace, align 1
  %bf.set1271 = or i16 %bf.load1269, 32
  store i16 %bf.set1271, ptr %mode_ace, align 1
  br label %cleanup

sw.bb1272:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %551 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %551)
  %552 = load i8, ptr %result, align 8, !range !674
  %cifs_acl = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 31
  %553 = ptrtoint ptr %cifs_acl to i32
  call void @__asan_loadN_noabort(i32 %553, i32 2)
  %bf.load1277 = load i16, ptr %cifs_acl, align 1
  %554 = shl nuw nsw i8 %552, 3
  %555 = xor i8 %554, 8
  %bf.shl1278 = zext i8 %555 to i16
  %bf.clear1279 = and i16 %bf.load1277, -9
  %bf.set1280 = or i16 %bf.clear1279, %bf.shl1278
  store i16 %bf.set1280, ptr %cifs_acl, align 1
  br label %cleanup

sw.bb1283:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %556 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %556)
  %557 = load i8, ptr %result, align 8, !range !674
  %no_psx_acl = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 31
  %558 = ptrtoint ptr %no_psx_acl to i32
  call void @__asan_loadN_noabort(i32 %558, i32 2)
  %bf.load1286 = load i16, ptr %no_psx_acl, align 1
  %559 = shl nuw nsw i8 %557, 4
  %bf.shl1287 = zext i8 %559 to i16
  %bf.clear1288 = and i16 %bf.load1286, -17
  %bf.set1289 = or i16 %bf.clear1288, %bf.shl1287
  store i16 %bf.set1289, ptr %no_psx_acl, align 1
  br label %cleanup

sw.bb1292:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %local_lease = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 34
  %560 = ptrtoint ptr %local_lease to i32
  call void @__asan_loadN_noabort(i32 %560, i32 5)
  %bf.load1293 = load i40, ptr %local_lease, align 1
  %bf.set1295 = or i40 %bf.load1293, 1048576
  store i40 %bf.set1295, ptr %local_lease, align 1
  br label %cleanup

sw.bb1296:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %sign = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 30
  %561 = ptrtoint ptr %sign to i32
  call void @__asan_store1_noabort(i32 %561)
  store i8 1, ptr %sign, align 4
  br label %cleanup

sw.bb1297:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %sign1298 = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 30
  %562 = ptrtoint ptr %sign1298 to i32
  call void @__asan_store1_noabort(i32 %562)
  store i8 1, ptr %sign1298, align 4
  %ignore_signature = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 31
  %563 = ptrtoint ptr %ignore_signature to i32
  call void @__asan_loadN_noabort(i32 %563, i32 2)
  %bf.load1299 = load i16, ptr %ignore_signature, align 1
  %bf.set1301 = or i16 %bf.load1299, -32768
  store i16 %bf.set1301, ptr %ignore_signature, align 1
  br label %cleanup

sw.bb1302:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %seal = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 34
  %564 = ptrtoint ptr %seal to i32
  call void @__asan_loadN_noabort(i32 %564, i32 5)
  %bf.load1303 = load i40, ptr %seal, align 1
  %bf.set1305 = or i40 %bf.load1303, 4194304
  store i40 %bf.set1305, ptr %seal, align 1
  br label %cleanup

do.end1309:                                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %call1311 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.262) #13
  br label %cleanup

sw.bb1312:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %fsc = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 34
  %565 = ptrtoint ptr %fsc to i32
  call void @__asan_loadN_noabort(i32 %565, i32 5)
  %bf.load1313 = load i40, ptr %fsc, align 1
  %bf.set1315 = or i40 %bf.load1313, 32768
  store i40 %bf.set1315, ptr %fsc, align 1
  br label %cleanup

sw.bb1316:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %mfsymlinks = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 34
  %566 = ptrtoint ptr %mfsymlinks to i32
  call void @__asan_loadN_noabort(i32 %566, i32 5)
  %bf.load1317 = load i40, ptr %mfsymlinks, align 1
  %bf.set1319 = or i40 %bf.load1317, 16384
  store i40 %bf.set1319, ptr %mfsymlinks, align 1
  br label %cleanup

sw.bb1320:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %multiuser = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 34
  %567 = ptrtoint ptr %multiuser to i32
  call void @__asan_loadN_noabort(i32 %567, i32 5)
  %bf.load1321 = load i40, ptr %multiuser, align 1
  %bf.set1323 = or i40 %bf.load1321, 8192
  store i40 %bf.set1323, ptr %multiuser, align 1
  br label %cleanup

sw.bb1324:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %sloppy1325 = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 3
  %568 = ptrtoint ptr %sloppy1325 to i32
  call void @__asan_store1_noabort(i32 %568)
  store i8 1, ptr %sloppy1325, align 1
  br label %cleanup

sw.bb1326:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %nosharesock = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 34
  %569 = ptrtoint ptr %nosharesock to i32
  call void @__asan_loadN_noabort(i32 %569, i32 5)
  %bf.load1327 = load i40, ptr %nosharesock, align 1
  %bf.set1329 = or i40 %bf.load1327, 2048
  store i40 %bf.set1329, ptr %nosharesock, align 1
  br label %cleanup

sw.bb1330:                                        ; preds = %if.end51
  %570 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %570)
  %571 = load i8, ptr %result, align 8, !range !674
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %571)
  %tobool1332.not = icmp eq i8 %571, 0
  %persistent1364 = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 34
  %572 = ptrtoint ptr %persistent1364 to i32
  call void @__asan_loadN_noabort(i32 %572, i32 5)
  %bf.load1365 = load i40, ptr %persistent1364, align 1
  br i1 %tobool1332.not, label %if.else1363, label %if.then1333

if.then1333:                                      ; preds = %sw.bb1330
  %bf.set1336 = or i40 %bf.load1365, 512
  %573 = ptrtoint ptr %persistent1364 to i32
  call void @__asan_storeN_noabort(i32 %573, i32 5)
  store i40 %bf.set1336, ptr %persistent1364, align 1
  %574 = and i40 %bf.load1365, 1024
  %bf.cast1340.not = icmp eq i40 %574, 0
  br i1 %bf.cast1340.not, label %if.then1333.cleanup_crit_edge, label %do.body1342

if.then1333.cleanup_crit_edge:                    ; preds = %if.then1333
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body1342:                                      ; preds = %if.then1333
  %log1344 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %575 = ptrtoint ptr %log1344 to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load ptr, ptr %log1344, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %576, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.264) #9
  %call1347 = call i32 @___ratelimit(ptr noundef nonnull @smb3_fs_context_parse_param._rs.265, ptr noundef nonnull @.str.120) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1347)
  %tobool1348.not = icmp eq i32 %call1347, 0
  br i1 %tobool1348.not, label %do.body1342.cifs_parse_mount_err_crit_edge, label %do.end1352

do.body1342.cifs_parse_mount_err_crit_edge:       ; preds = %do.body1342
  call void @__sanitizer_cov_trace_pc() #11
  br label %cifs_parse_mount_err

do.end1352:                                       ; preds = %do.body1342
  call void @__sanitizer_cov_trace_pc() #11
  %call1354 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.267) #13
  br label %cifs_parse_mount_err

if.else1363:                                      ; preds = %sw.bb1330
  %bf.set1367 = or i40 %bf.load1365, 1024
  %577 = ptrtoint ptr %persistent1364 to i32
  call void @__asan_storeN_noabort(i32 %577, i32 5)
  store i40 %bf.set1367, ptr %persistent1364, align 1
  %578 = and i40 %bf.load1365, 768
  %579 = icmp eq i40 %578, 0
  br i1 %579, label %if.else1363.cleanup_crit_edge, label %do.body1381

if.else1363.cleanup_crit_edge:                    ; preds = %if.else1363
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body1381:                                      ; preds = %if.else1363
  %log1383 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %580 = ptrtoint ptr %log1383 to i32
  call void @__asan_load4_noabort(i32 %580)
  %581 = load ptr, ptr %log1383, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %581, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.264) #9
  %call1386 = call i32 @___ratelimit(ptr noundef nonnull @smb3_fs_context_parse_param._rs.269, ptr noundef nonnull @.str.120) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1386)
  %tobool1387.not = icmp eq i32 %call1386, 0
  br i1 %tobool1387.not, label %do.body1381.cifs_parse_mount_err_crit_edge, label %do.end1391

do.body1381.cifs_parse_mount_err_crit_edge:       ; preds = %do.body1381
  call void @__sanitizer_cov_trace_pc() #11
  br label %cifs_parse_mount_err

do.end1391:                                       ; preds = %do.body1381
  call void @__sanitizer_cov_trace_pc() #11
  %call1393 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.267) #13
  br label %cifs_parse_mount_err

sw.bb1403:                                        ; preds = %if.end51
  %582 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %582)
  %583 = load i8, ptr %result, align 8, !range !674
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %583)
  %tobool1405.not = icmp eq i8 %583, 0
  %resilient1412 = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 34
  %584 = ptrtoint ptr %resilient1412 to i32
  call void @__asan_loadN_noabort(i32 %584, i32 5)
  %bf.load1413 = load i40, ptr %resilient1412, align 1
  br i1 %tobool1405.not, label %if.else1411, label %if.then1406

if.then1406:                                      ; preds = %sw.bb1403
  call void @__sanitizer_cov_trace_pc() #11
  %bf.clear1409 = and i40 %bf.load1413, -257
  %585 = ptrtoint ptr %resilient1412 to i32
  call void @__asan_storeN_noabort(i32 %585, i32 5)
  store i40 %bf.clear1409, ptr %resilient1412, align 1
  br label %cleanup

if.else1411:                                      ; preds = %sw.bb1403
  %bf.set1415 = or i40 %bf.load1413, 256
  %586 = ptrtoint ptr %resilient1412 to i32
  call void @__asan_storeN_noabort(i32 %586, i32 5)
  store i40 %bf.set1415, ptr %resilient1412, align 1
  %587 = and i40 %bf.load1413, 1024
  %bf.cast1420.not = icmp eq i40 %587, 0
  br i1 %bf.cast1420.not, label %if.else1411.cleanup_crit_edge, label %do.body1422

if.else1411.cleanup_crit_edge:                    ; preds = %if.else1411
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body1422:                                      ; preds = %if.else1411
  %log1424 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %588 = ptrtoint ptr %log1424 to i32
  call void @__asan_load4_noabort(i32 %588)
  %589 = load ptr, ptr %log1424, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %589, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.264) #9
  %call1427 = call i32 @___ratelimit(ptr noundef nonnull @smb3_fs_context_parse_param._rs.272, ptr noundef nonnull @.str.120) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1427)
  %tobool1428.not = icmp eq i32 %call1427, 0
  br i1 %tobool1428.not, label %do.body1422.cifs_parse_mount_err_crit_edge, label %do.end1432

do.body1422.cifs_parse_mount_err_crit_edge:       ; preds = %do.body1422
  call void @__sanitizer_cov_trace_pc() #11
  br label %cifs_parse_mount_err

do.end1432:                                       ; preds = %do.body1422
  call void @__sanitizer_cov_trace_pc() #11
  %call1434 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.267) #13
  br label %cifs_parse_mount_err

sw.bb1444:                                        ; preds = %if.end51
  %590 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %590)
  %591 = load i8, ptr %result, align 8, !range !674
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %591)
  %tobool1446.not = icmp eq i8 %591, 0
  %sockopt_tcp_nodelay1452 = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 42
  %592 = ptrtoint ptr %sockopt_tcp_nodelay1452 to i32
  call void @__asan_load1_noabort(i32 %592)
  %bf.load1453 = load i8, ptr %sockopt_tcp_nodelay1452, align 4
  br i1 %tobool1446.not, label %if.else1451, label %if.then1447

if.then1447:                                      ; preds = %sw.bb1444
  call void @__sanitizer_cov_trace_pc() #11
  %bf.clear1449 = and i8 %bf.load1453, 127
  %593 = ptrtoint ptr %sockopt_tcp_nodelay1452 to i32
  call void @__asan_store1_noabort(i32 %593)
  store i8 %bf.clear1449, ptr %sockopt_tcp_nodelay1452, align 4
  br label %cleanup

if.else1451:                                      ; preds = %sw.bb1444
  call void @__sanitizer_cov_trace_pc() #11
  %bf.set1455 = or i8 %bf.load1453, -128
  %594 = ptrtoint ptr %sockopt_tcp_nodelay1452 to i32
  call void @__asan_store1_noabort(i32 %594)
  store i8 %bf.set1455, ptr %sockopt_tcp_nodelay1452, align 4
  br label %cleanup

sw.bb1457:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %domainauto = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 34
  %595 = ptrtoint ptr %domainauto to i32
  call void @__asan_loadN_noabort(i32 %595, i32 5)
  %bf.load1458 = load i40, ptr %domainauto, align 1
  %bf.set1460 = or i40 %bf.load1458, 128
  store i40 %bf.set1460, ptr %domainauto, align 1
  br label %cleanup

sw.bb1461:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %rdma = getelementptr inbounds %struct.smb3_fs_context, ptr %2, i32 0, i32 34
  %596 = ptrtoint ptr %rdma to i32
  call void @__asan_loadN_noabort(i32 %596, i32 5)
  %bf.load1462 = load i40, ptr %rdma, align 1
  %bf.set1464 = or i40 %bf.load1462, 64
  store i40 %bf.set1464, ptr %rdma, align 1
  br label %cleanup

cifs_parse_mount_err:                             ; preds = %do.end1432, %do.body1422.cifs_parse_mount_err_crit_edge, %do.end1391, %do.body1381.cifs_parse_mount_err_crit_edge, %do.end1352, %do.body1342.cifs_parse_mount_err_crit_edge, %sw.bb1034.cifs_parse_mount_err_crit_edge, %sw.bb1028.cifs_parse_mount_err_crit_edge, %sw.bb1021.cifs_parse_mount_err_crit_edge, %do.end1018, %do.end1011, %do.end899, %do.body889.cifs_parse_mount_err_crit_edge, %do.end875, %do.end864, %do.end816, %do.body806.cifs_parse_mount_err_crit_edge, %do.end796, %do.end784, %do.end761, %do.body751.cifs_parse_mount_err_crit_edge, %do.end727, %do.body717.cifs_parse_mount_err_crit_edge, %do.end707, %do.end680, %do.body670.cifs_parse_mount_err_crit_edge, %do.end653, %do.body643.cifs_parse_mount_err_crit_edge, %do.end628, %do.body618.cifs_parse_mount_err_crit_edge, %do.end608, %do.body598.cifs_parse_mount_err_crit_edge, %do.end587, %do.body577.cifs_parse_mount_err_crit_edge, %do.end562, %do.body552.cifs_parse_mount_err_crit_edge, %do.end527, %do.body517.cifs_parse_mount_err_crit_edge, %do.end499, %do.body489.cifs_parse_mount_err_crit_edge, %do.end437, %do.body427.cifs_parse_mount_err_crit_edge, %do.end411, %do.body401.cifs_parse_mount_err_crit_edge, %do.end384, %do.body374.cifs_parse_mount_err_crit_edge, %do.end356, %do.body346.cifs_parse_mount_err_crit_edge, %do.end328, %do.body319.cifs_parse_mount_err_crit_edge, %sw.bb288.cifs_parse_mount_err_crit_edge, %sw.bb271.cifs_parse_mount_err_crit_edge, %sw.bb254.cifs_parse_mount_err_crit_edge, %sw.bb237.cifs_parse_mount_err_crit_edge, %sw.bb224.cifs_parse_mount_err_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %cifs_parse_mount_err, %sw.bb1461, %sw.bb1457, %if.else1451, %if.then1447, %if.else1411.cleanup_crit_edge, %if.then1406, %if.else1363.cleanup_crit_edge, %if.then1333.cleanup_crit_edge, %sw.bb1326, %sw.bb1324, %sw.bb1320, %sw.bb1316, %sw.bb1312, %do.end1309, %sw.bb1302, %sw.bb1297, %sw.bb1296, %sw.bb1292, %sw.bb1283, %sw.bb1272, %sw.bb1268, %sw.bb1264, %sw.bb1253, %sw.bb1244, %sw.bb1240, %sw.bb1229, %sw.bb1222, %sw.bb1218, %if.else1212, %if.then1208, %if.else1199, %if.end1195, %sw.bb1181, %if.end1171, %if.end1125, %if.else1080, %if.then1076, %sw.bb1069, %if.then1055, %sw.bb1040.cleanup_crit_edge, %sw.bb1034.cleanup_crit_edge, %sw.bb1028.cleanup_crit_edge, %if.end1027, %if.then1004.cleanup_crit_edge, %do.end996, %land.lhs.true988.cleanup_crit_edge, %if.end979.13.cleanup_crit_edge, %if.end979.12.cleanup_crit_edge, %if.end979.11.cleanup_crit_edge, %if.end979.10.cleanup_crit_edge, %if.end979.9.cleanup_crit_edge, %if.end979.8.cleanup_crit_edge, %if.end979.7.cleanup_crit_edge, %if.end979.6.cleanup_crit_edge, %if.end979.5.cleanup_crit_edge, %if.end979.4.cleanup_crit_edge, %if.end979.3.cleanup_crit_edge, %if.end979.2.cleanup_crit_edge, %if.end979.1.cleanup_crit_edge, %if.end979.cleanup_crit_edge, %sw.bb968.cleanup_crit_edge, %do.end964, %land.lhs.true956.cleanup_crit_edge, %if.end950.13.cleanup_crit_edge, %if.end950.12.cleanup_crit_edge, %if.end950.11.cleanup_crit_edge, %if.end950.10.cleanup_crit_edge, %if.end950.9.cleanup_crit_edge, %if.end950.8.cleanup_crit_edge, %if.end950.7.cleanup_crit_edge, %if.end950.6.cleanup_crit_edge, %if.end950.5.cleanup_crit_edge, %if.end950.4.cleanup_crit_edge, %if.end950.3.cleanup_crit_edge, %if.end950.2.cleanup_crit_edge, %if.end950.1.cleanup_crit_edge, %if.end950.cleanup_crit_edge, %sw.bb942.cleanup_crit_edge, %if.then931, %land.lhs.true928.cleanup_crit_edge, %do.body916, %do.body912.cleanup_crit_edge, %sw.bb857.cleanup_crit_edge, %if.then847, %land.lhs.true844.cleanup_crit_edge, %do.body832, %do.body828.cleanup_crit_edge, %if.end787, %if.then776, %if.end744.cleanup_crit_edge, %sw.bb738.cleanup_crit_edge, %if.end710.cleanup_crit_edge, %if.then696, %if.end663.cleanup_crit_edge, %sw.bb547.cleanup_crit_edge, %if.then541, %if.end537.cleanup_crit_edge, %if.end509, %sw.bb481, %sw.bb480, %if.end476, %do.end466, %do.body456.cleanup_crit_edge, %sw.bb395.cleanup_crit_edge, %sw.bb369.cleanup_crit_edge, %sw.bb368, %sw.bb367, %if.end366, %if.end338, %sw.bb311, %sw.bb309, %sw.bb307, %sw.bb305, %if.end304, %if.end287, %if.end270, %if.end253, %if.end236, %if.then220, %if.else212.cleanup_crit_edge, %if.then208, %sw.bb201, %sw.bb197, %sw.bb193, %sw.bb189, %if.else183, %if.then179, %if.else170, %if.then166, %if.else157, %if.then153, %if.else144, %if.then140, %if.else131, %if.then127, %if.else118, %if.then114, %if.else102, %if.then98, %if.else89, %if.then84, %if.else75, %if.then71, %sw.bb67, %do.end59, %sw.bb.cleanup_crit_edge, %if.end51.cleanup_crit_edge, %if.then47
  %retval.0 = phi i32 [ -22, %cifs_parse_mount_err ], [ %spec.select, %if.then47 ], [ 0, %if.else1363.cleanup_crit_edge ], [ 0, %sw.bb1040.cleanup_crit_edge ], [ 0, %if.then1055 ], [ 0, %if.then1447 ], [ 0, %if.else1451 ], [ 0, %if.then1406 ], [ 0, %if.else1411.cleanup_crit_edge ], [ 0, %if.then1333.cleanup_crit_edge ], [ 0, %if.then1208 ], [ 0, %if.else1212 ], [ 0, %if.end1195 ], [ 0, %if.else1199 ], [ 0, %if.end1125 ], [ 0, %if.end1171 ], [ 0, %if.then1076 ], [ 0, %if.else1080 ], [ 0, %sw.bb1034.cleanup_crit_edge ], [ 0, %sw.bb1028.cleanup_crit_edge ], [ 0, %if.then1004.cleanup_crit_edge ], [ 0, %land.lhs.true988.cleanup_crit_edge ], [ 0, %do.end996 ], [ 0, %land.lhs.true956.cleanup_crit_edge ], [ 0, %do.end964 ], [ 0, %if.then931 ], [ 0, %land.lhs.true928.cleanup_crit_edge ], [ 0, %do.body912.cleanup_crit_edge ], [ 0, %sw.bb857.cleanup_crit_edge ], [ 0, %if.then847 ], [ 0, %land.lhs.true844.cleanup_crit_edge ], [ 0, %do.body828.cleanup_crit_edge ], [ 0, %if.end744.cleanup_crit_edge ], [ 0, %sw.bb738.cleanup_crit_edge ], [ 0, %if.end710.cleanup_crit_edge ], [ 0, %if.end663.cleanup_crit_edge ], [ 0, %sw.bb547.cleanup_crit_edge ], [ 0, %if.end537.cleanup_crit_edge ], [ 0, %if.then541 ], [ 0, %do.body456.cleanup_crit_edge ], [ 0, %do.end466 ], [ 0, %sw.bb395.cleanup_crit_edge ], [ 0, %sw.bb369.cleanup_crit_edge ], [ 0, %if.then208 ], [ 0, %if.then220 ], [ 0, %if.else212.cleanup_crit_edge ], [ 0, %if.then179 ], [ 0, %if.else183 ], [ 0, %if.then166 ], [ 0, %if.else170 ], [ 0, %if.then153 ], [ 0, %if.else157 ], [ 0, %if.then140 ], [ 0, %if.else144 ], [ 0, %if.then127 ], [ 0, %if.else131 ], [ 0, %if.then114 ], [ 0, %if.else118 ], [ 0, %if.then98 ], [ 0, %if.else102 ], [ 0, %if.then84 ], [ 0, %if.else89 ], [ 0, %if.then71 ], [ 0, %if.else75 ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %do.end59 ], [ 0, %if.end51.cleanup_crit_edge ], [ 0, %sw.bb1461 ], [ 0, %sw.bb1457 ], [ 0, %sw.bb1326 ], [ 0, %sw.bb1324 ], [ 0, %sw.bb1320 ], [ 0, %sw.bb1316 ], [ 0, %sw.bb1312 ], [ 0, %do.end1309 ], [ 0, %sw.bb1302 ], [ 0, %sw.bb1297 ], [ 0, %sw.bb1296 ], [ 0, %sw.bb1292 ], [ 0, %sw.bb1283 ], [ 0, %sw.bb1272 ], [ 0, %sw.bb1268 ], [ 0, %sw.bb1264 ], [ 0, %sw.bb1253 ], [ 0, %sw.bb1244 ], [ 0, %sw.bb1240 ], [ 0, %sw.bb1229 ], [ 0, %sw.bb1222 ], [ 0, %sw.bb1218 ], [ 0, %sw.bb1181 ], [ 0, %sw.bb1069 ], [ 0, %if.end1027 ], [ 0, %if.end787 ], [ 0, %if.then776 ], [ 0, %if.then696 ], [ 0, %if.end509 ], [ 0, %sw.bb481 ], [ 0, %sw.bb480 ], [ 0, %if.end476 ], [ 0, %sw.bb368 ], [ 0, %sw.bb367 ], [ 0, %if.end366 ], [ 0, %if.end338 ], [ 0, %sw.bb311 ], [ 0, %sw.bb309 ], [ 0, %sw.bb307 ], [ 0, %sw.bb305 ], [ 0, %if.end304 ], [ 0, %if.end287 ], [ 0, %if.end270 ], [ 0, %if.end253 ], [ 0, %if.end236 ], [ 0, %sw.bb201 ], [ 0, %sw.bb197 ], [ 0, %sw.bb193 ], [ 0, %sw.bb189 ], [ 0, %sw.bb67 ], [ 0, %do.body832 ], [ 0, %do.body916 ], [ 0, %if.end950.13.cleanup_crit_edge ], [ 0, %if.end950.12.cleanup_crit_edge ], [ 0, %if.end950.11.cleanup_crit_edge ], [ 0, %if.end950.10.cleanup_crit_edge ], [ 0, %if.end950.9.cleanup_crit_edge ], [ 0, %if.end950.8.cleanup_crit_edge ], [ 0, %if.end950.7.cleanup_crit_edge ], [ 0, %if.end950.6.cleanup_crit_edge ], [ 0, %if.end950.5.cleanup_crit_edge ], [ 0, %if.end950.4.cleanup_crit_edge ], [ 0, %if.end950.3.cleanup_crit_edge ], [ 0, %if.end950.2.cleanup_crit_edge ], [ 0, %if.end950.1.cleanup_crit_edge ], [ 0, %if.end950.cleanup_crit_edge ], [ 0, %sw.bb942.cleanup_crit_edge ], [ 0, %if.end979.13.cleanup_crit_edge ], [ 0, %if.end979.12.cleanup_crit_edge ], [ 0, %if.end979.11.cleanup_crit_edge ], [ 0, %if.end979.10.cleanup_crit_edge ], [ 0, %if.end979.9.cleanup_crit_edge ], [ 0, %if.end979.8.cleanup_crit_edge ], [ 0, %if.end979.7.cleanup_crit_edge ], [ 0, %if.end979.6.cleanup_crit_edge ], [ 0, %if.end979.5.cleanup_crit_edge ], [ 0, %if.end979.4.cleanup_crit_edge ], [ 0, %if.end979.3.cleanup_crit_edge ], [ 0, %if.end979.2.cleanup_crit_edge ], [ 0, %if.end979.1.cleanup_crit_edge ], [ 0, %if.end979.cleanup_crit_edge ], [ 0, %sw.bb968.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %result) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smb3_fs_context_parse_monolithic(ptr noundef %fc, ptr noundef %data) #1 align 64 {
entry:
  %options = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_private.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %fs_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_private.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %options) #9
  %2 = ptrtoint ptr %options to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %data, ptr %options, align 4
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %entry.cleanup44_crit_edge, label %if.end

entry.cleanup44_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup44

if.end:                                           ; preds = %entry
  %call1 = tail call noalias ptr @kstrdup(ptr noundef nonnull %data, i32 noundef 3264) #9
  %mount_options = getelementptr inbounds %struct.smb3_fs_context, ptr %1, i32 0, i32 61
  %3 = ptrtoint ptr %mount_options to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call1, ptr %mount_options, align 8
  %cmp = icmp eq ptr %call1, null
  br i1 %cmp, label %if.end.cleanup44_crit_edge, label %if.end4

if.end.cleanup44_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup44

if.end4:                                          ; preds = %if.end
  %4 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %options, align 4
  %security = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 11
  %call5 = tail call i32 @security_sb_eat_lsm_opts(ptr noundef %5, ptr noundef %security) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %while.cond.preheader, label %if.end4.cleanup44_crit_edge

if.end4.cleanup44_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup44

while.cond.preheader:                             ; preds = %if.end4
  %call974 = call ptr @strsep(ptr noundef nonnull %options, ptr noundef nonnull @.str.110) #9
  %cmp10.not75 = icmp eq ptr %call974, null
  br i1 %cmp10.not75, label %while.cond.preheader.cleanup44_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup44_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup44

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call977 = phi ptr [ %call9, %cleanup.while.body_crit_edge ], [ %call974, %while.cond.preheader.while.body_crit_edge ]
  %ret.076 = phi i32 [ %ret.1, %cleanup.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  %6 = ptrtoint ptr %call977 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %call977, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp11 = icmp eq i8 %7, 0
  br i1 %cmp11, label %while.body.cleanup44_crit_edge, label %while.cond15.preheader

while.body.cleanup44_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup44

while.cond15.preheader:                           ; preds = %while.body
  %8 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %options, align 4
  %tobool16.not69 = icmp eq ptr %9, null
  br i1 %tobool16.not69, label %while.cond15.preheader.while.end_crit_edge, label %while.cond15.preheader.land.rhs_crit_edge

while.cond15.preheader.land.rhs_crit_edge:        ; preds = %while.cond15.preheader
  br label %land.rhs

while.cond15.preheader.while.end_crit_edge:       ; preds = %while.cond15.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

land.rhs:                                         ; preds = %if.end26.land.rhs_crit_edge, %while.cond15.preheader.land.rhs_crit_edge
  %10 = phi ptr [ %.pr, %if.end26.land.rhs_crit_edge ], [ %9, %while.cond15.preheader.land.rhs_crit_edge ]
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 44, i8 %12)
  %cmp18 = icmp eq i8 %12, 44
  br i1 %cmp18, label %while.body20, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body20:                                     ; preds = %land.rhs
  %call21 = call i32 @strlen(ptr noundef nonnull %call977) #12
  %add.ptr = getelementptr i8, ptr %call977, i32 %call21
  %call22 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %10) #12
  %13 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %options, align 4
  %call23 = call ptr @strchr(ptr noundef %14, i32 noundef 44)
  %15 = ptrtoint ptr %options to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call23, ptr %options, align 4
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %while.body20.while.end_crit_edge, label %if.end26

while.body20.while.end_crit_edge:                 ; preds = %while.body20
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end26:                                         ; preds = %while.body20
  %incdec.ptr = getelementptr i8, ptr %call23, i32 1
  %16 = ptrtoint ptr %options to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %incdec.ptr, ptr %options, align 4
  %17 = ptrtoint ptr %call23 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %call23, align 1
  %.pr = load ptr, ptr %options, align 4
  %tobool16.not = icmp eq ptr %.pr, null
  br i1 %tobool16.not, label %if.end26.while.end_crit_edge, label %if.end26.land.rhs_crit_edge

if.end26.land.rhs_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

if.end26.while.end_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end26.while.end_crit_edge, %while.body20.while.end_crit_edge, %land.rhs.while.end_crit_edge, %while.cond15.preheader.while.end_crit_edge
  %call27 = call ptr @strchr(ptr noundef nonnull %call977, i32 noundef 61)
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %while.end.if.end36_crit_edge, label %if.then29

while.end.if.end36_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then29:                                        ; preds = %while.end
  %cmp30 = icmp eq ptr %call27, %call977
  br i1 %cmp30, label %if.then29.cleanup_crit_edge, label %if.end33

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end33:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr34 = getelementptr i8, ptr %call27, i32 1
  %18 = ptrtoint ptr %call27 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %call27, align 1
  %call35 = call i32 @strlen(ptr noundef %incdec.ptr34) #12
  br label %if.end36

if.end36:                                         ; preds = %if.end33, %while.end.if.end36_crit_edge
  %len.0 = phi i32 [ %call35, %if.end33 ], [ 0, %while.end.if.end36_crit_edge ]
  %value.0 = phi ptr [ %incdec.ptr34, %if.end33 ], [ null, %while.end.if.end36_crit_edge ]
  %call37 = call i32 @vfs_parse_fs_string(ptr noundef %fc, ptr noundef nonnull %call977, ptr noundef %value.0, i32 noundef %len.0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.end36.cleanup44_crit_edge, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end36.cleanup44_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup44

cleanup:                                          ; preds = %if.end36.cleanup_crit_edge, %if.then29.cleanup_crit_edge
  %ret.1 = phi i32 [ %ret.076, %if.then29.cleanup_crit_edge ], [ %call37, %if.end36.cleanup_crit_edge ]
  %call9 = call ptr @strsep(ptr noundef nonnull %options, ptr noundef nonnull @.str.110) #9
  %cmp10.not = icmp eq ptr %call9, null
  br i1 %cmp10.not, label %cleanup.cleanup44_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

cleanup.cleanup44_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup44

cleanup44:                                        ; preds = %cleanup.cleanup44_crit_edge, %if.end36.cleanup44_crit_edge, %while.body.cleanup44_crit_edge, %while.cond.preheader.cleanup44_crit_edge, %if.end4.cleanup44_crit_edge, %if.end.cleanup44_crit_edge, %entry.cleanup44_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup44_crit_edge ], [ -12, %if.end.cleanup44_crit_edge ], [ %call5, %if.end4.cleanup44_crit_edge ], [ 0, %while.cond.preheader.cleanup44_crit_edge ], [ %call37, %if.end36.cleanup44_crit_edge ], [ %ret.076, %while.body.cleanup44_crit_edge ], [ %ret.1, %cleanup.cleanup44_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %options) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smb3_get_tree(ptr nocapture noundef %fc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_private.i.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %fs_private.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_private.i.i, align 4
  %rdma.i = getelementptr inbounds %struct.smb3_fs_context, ptr %1, i32 0, i32 34
  %2 = ptrtoint ptr %rdma.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 5)
  %bf.load.i = load i40, ptr %rdma.i, align 1
  %3 = and i40 %bf.load.i, 64
  %bf.cast.not.i = icmp eq i40 %3, 0
  br i1 %bf.cast.not.i, label %entry.if.end15.i_crit_edge, label %land.lhs.true.i

entry.if.end15.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

land.lhs.true.i:                                  ; preds = %entry
  %vals.i = getelementptr inbounds %struct.smb3_fs_context, ptr %1, i32 0, i32 47
  %4 = ptrtoint ptr %vals.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vals.i, align 4
  %protocol_id.i = getelementptr inbounds %struct.smb_version_values, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %protocol_id.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %protocol_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %7)
  %cmp.i = icmp ult i16 %7, 768
  br i1 %cmp.i, label %do.body.i, label %land.lhs.true.i.if.end15.i_crit_edge

land.lhs.true.i.if.end15.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

do.body.i:                                        ; preds = %land.lhs.true.i
  %log2.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %8 = ptrtoint ptr %log2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %log2.i, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %9, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.331) #9
  %call5.i = tail call i32 @___ratelimit(ptr noundef nonnull @smb3_fs_context_validate._rs, ptr noundef nonnull @__func__.smb3_fs_context_validate) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %do.body.i.cleanup_crit_edge, label %do.body.i.smb3_fs_context_validate.exit.thread13_crit_edge

do.body.i.smb3_fs_context_validate.exit.thread13_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %smb3_fs_context_validate.exit.thread13

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15.i:                                       ; preds = %land.lhs.true.i.if.end15.i_crit_edge, %entry.if.end15.i_crit_edge
  %got_version.i = getelementptr inbounds %struct.smb3_fs_context, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %got_version.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %got_version.i, align 1, !range !674
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp18.i = icmp eq i8 %11, 0
  br i1 %cmp18.i, label %land.end.i, label %if.end15.i.if.end41.i_crit_edge

if.end15.i.if.end41.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41.i

land.end.i:                                       ; preds = %if.end15.i
  %.b172.i = load i1, ptr @smb3_fs_context_validate.__already_done, align 1
  br i1 %.b172.i, label %land.end.i.if.end41.i_crit_edge, label %if.then27.i, !prof !676

land.end.i.if.end41.i_crit_edge:                  ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41.i

if.then27.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @smb3_fs_context_validate.__already_done, align 1
  %call32.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.334) #13
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then27.i, %land.end.i.if.end41.i_crit_edge, %if.end15.i.if.end41.i_crit_edge
  %UNC.i = getelementptr inbounds %struct.smb3_fs_context, ptr %1, i32 0, i32 16
  %12 = ptrtoint ptr %UNC.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %UNC.i, align 8
  %tobool42.not.i = icmp eq ptr %13, null
  br i1 %tobool42.not.i, label %do.body44.i, label %if.end64.i

do.body44.i:                                      ; preds = %if.end41.i
  %log46.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %14 = ptrtoint ptr %log46.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %log46.i, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %15, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.336) #9
  %call49.i = tail call i32 @___ratelimit(ptr noundef nonnull @smb3_fs_context_validate._rs.337, ptr noundef nonnull @__func__.smb3_fs_context_validate) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i)
  %tobool50.not.i = icmp eq i32 %call49.i, 0
  br i1 %tobool50.not.i, label %do.body44.i.cleanup_crit_edge, label %do.body44.i.smb3_fs_context_validate.exit.thread13_crit_edge

do.body44.i.smb3_fs_context_validate.exit.thread13_crit_edge: ; preds = %do.body44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %smb3_fs_context_validate.exit.thread13

do.body44.i.cleanup_crit_edge:                    ; preds = %do.body44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end64.i:                                       ; preds = %if.end41.i
  %call66.i = tail call i32 @strlen(ptr noundef nonnull %13) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call66.i)
  %cmp67.i = icmp ult i32 %call66.i, 3
  br i1 %cmp67.i, label %if.end64.i.do.body73.i_crit_edge, label %lor.lhs.false.i

if.end64.i.do.body73.i_crit_edge:                 ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body73.i

lor.lhs.false.i:                                  ; preds = %if.end64.i
  %add.ptr.i = getelementptr i8, ptr %13, i32 3
  %call70.i = tail call ptr @strchr(ptr noundef %add.ptr.i, i32 noundef 92) #9
  %tobool71.not.i = icmp eq ptr %call70.i, null
  br i1 %tobool71.not.i, label %lor.lhs.false.i.do.body73.i_crit_edge, label %if.end93.i

lor.lhs.false.i.do.body73.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body73.i

do.body73.i:                                      ; preds = %lor.lhs.false.i.do.body73.i_crit_edge, %if.end64.i.do.body73.i_crit_edge
  %log75.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %16 = ptrtoint ptr %log75.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %log75.i, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %17, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.341) #9
  %call78.i = tail call i32 @___ratelimit(ptr noundef nonnull @smb3_fs_context_validate._rs.342, ptr noundef nonnull @__func__.smb3_fs_context_validate) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78.i)
  %tobool79.not.i = icmp eq i32 %call78.i, 0
  br i1 %tobool79.not.i, label %do.body73.i.cleanup_crit_edge, label %do.body73.i.smb3_fs_context_validate.exit.thread13_crit_edge

do.body73.i.smb3_fs_context_validate.exit.thread13_crit_edge: ; preds = %do.body73.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %smb3_fs_context_validate.exit.thread13

do.body73.i.cleanup_crit_edge:                    ; preds = %do.body73.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end93.i:                                       ; preds = %lor.lhs.false.i
  %got_ip.i = getelementptr inbounds %struct.smb3_fs_context, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %got_ip.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %got_ip.i, align 4, !range !674
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool94.not.i = icmp eq i8 %19, 0
  br i1 %tobool94.not.i, label %if.then95.i, label %if.end93.i.if.end112.i_crit_edge

if.end93.i.if.end112.i_crit_edge:                 ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end112.i

if.then95.i:                                      ; preds = %if.end93.i
  %arrayidx.i = getelementptr i8, ptr %13, i32 2
  %call97.i = tail call ptr @strchr(ptr noundef %arrayidx.i, i32 noundef 92) #9
  %sub.ptr.lhs.cast.i = ptrtoint ptr %call97.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %arrayidx.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %dstaddr.i = getelementptr inbounds %struct.smb3_fs_context, ptr %1, i32 0, i32 49
  %call102.i = tail call i32 @cifs_convert_address(ptr noundef %dstaddr.i, ptr noundef %arrayidx.i, i32 noundef %sub.ptr.sub.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102.i)
  %tobool103.not.i = icmp eq i32 %call102.i, 0
  br i1 %tobool103.not.i, label %if.then95.i.smb3_fs_context_validate.exit.thread13_crit_edge, label %if.then95.i.if.end112.i_crit_edge

if.then95.i.if.end112.i_crit_edge:                ; preds = %if.then95.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end112.i

if.then95.i.smb3_fs_context_validate.exit.thread13_crit_edge: ; preds = %if.then95.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %smb3_fs_context_validate.exit.thread13

if.end112.i:                                      ; preds = %if.then95.i.if.end112.i_crit_edge, %if.end93.i.if.end112.i_crit_edge
  %dstaddr113.i = getelementptr inbounds %struct.smb3_fs_context, ptr %1, i32 0, i32 49
  %port.i = getelementptr inbounds %struct.smb3_fs_context, ptr %1, i32 0, i32 10
  %20 = ptrtoint ptr %port.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %port.i, align 2
  tail call void @cifs_set_port(ptr noundef %dstaddr113.i, i16 noundef zeroext %21) #9
  %override_uid.i = getelementptr inbounds %struct.smb3_fs_context, ptr %1, i32 0, i32 31
  %22 = ptrtoint ptr %override_uid.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %bf.load114.i = load i16, ptr %override_uid.i, align 1
  %23 = and i16 %bf.load114.i, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %bf.cast117.not.i = icmp eq i16 %23, 0
  br i1 %bf.cast117.not.i, label %if.end112.i.if.end130.i_crit_edge, label %land.lhs.true119.i

if.end112.i.if.end130.i_crit_edge:                ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end130.i

land.lhs.true119.i:                               ; preds = %if.end112.i
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %1, align 8, !range !674
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool120.not.i = icmp eq i8 %25, 0
  br i1 %tobool120.not.i, label %if.then121.i, label %land.lhs.true119.i.if.end130.i_crit_edge

land.lhs.true119.i.if.end130.i_crit_edge:         ; preds = %land.lhs.true119.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end130.i

if.then121.i:                                     ; preds = %land.lhs.true119.i
  call void @__sanitizer_cov_trace_pc() #11
  %bf.clear124.i = and i16 %bf.load114.i, -1025
  %26 = ptrtoint ptr %override_uid.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 %bf.clear124.i, ptr %override_uid.i, align 1
  %call129.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.350) #13
  br label %if.end130.i

if.end130.i:                                      ; preds = %if.then121.i, %land.lhs.true119.i.if.end130.i_crit_edge, %if.end112.i.if.end130.i_crit_edge
  %27 = ptrtoint ptr %override_uid.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %bf.load131.i = load i16, ptr %override_uid.i, align 1
  %28 = and i16 %bf.load131.i, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %bf.cast134.not.i = icmp eq i16 %28, 0
  br i1 %bf.cast134.not.i, label %if.end130.i.if.end_crit_edge, label %land.lhs.true136.i

if.end130.i.if.end_crit_edge:                     ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true136.i:                               ; preds = %if.end130.i
  %gid_specified.i = getelementptr inbounds %struct.smb3_fs_context, ptr %1, i32 0, i32 2
  %29 = ptrtoint ptr %gid_specified.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %gid_specified.i, align 2, !range !674
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool137.not.i = icmp eq i8 %30, 0
  br i1 %tobool137.not.i, label %smb3_fs_context_validate.exit, label %land.lhs.true136.i.if.end_crit_edge

land.lhs.true136.i.if.end_crit_edge:              ; preds = %land.lhs.true136.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

smb3_fs_context_validate.exit.thread13:           ; preds = %if.then95.i.smb3_fs_context_validate.exit.thread13_crit_edge, %do.body73.i.smb3_fs_context_validate.exit.thread13_crit_edge, %do.body44.i.smb3_fs_context_validate.exit.thread13_crit_edge, %do.body.i.smb3_fs_context_validate.exit.thread13_crit_edge
  %.str.353.sink.i.ph = phi ptr [ @.str.347, %if.then95.i.smb3_fs_context_validate.exit.thread13_crit_edge ], [ @.str.344, %do.body73.i.smb3_fs_context_validate.exit.thread13_crit_edge ], [ @.str.339, %do.body44.i.smb3_fs_context_validate.exit.thread13_crit_edge ], [ @.str.332, %do.body.i.smb3_fs_context_validate.exit.thread13_crit_edge ]
  %retval.1.ph.i.ph = phi i32 [ -113, %if.then95.i.smb3_fs_context_validate.exit.thread13_crit_edge ], [ -2, %do.body73.i.smb3_fs_context_validate.exit.thread13_crit_edge ], [ -1, %do.body44.i.smb3_fs_context_validate.exit.thread13_crit_edge ], [ -95, %do.body.i.smb3_fs_context_validate.exit.thread13_crit_edge ]
  %call147.i16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.353.sink.i.ph) #13
  br label %cleanup

smb3_fs_context_validate.exit:                    ; preds = %land.lhs.true136.i
  call void @__sanitizer_cov_trace_pc() #11
  %bf.clear141.i = and i16 %bf.load131.i, -513
  %31 = ptrtoint ptr %override_uid.i to i32
  call void @__asan_storeN_noabort(i32 %31, i32 2)
  store i16 %bf.clear141.i, ptr %override_uid.i, align 1
  %call147.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.353) #13
  br label %if.end

if.end:                                           ; preds = %smb3_fs_context_validate.exit, %land.lhs.true136.i.if.end_crit_edge, %if.end130.i.if.end_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @cifs_mount_mutex, i32 noundef 0) #9
  %32 = ptrtoint ptr %fs_private.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fs_private.i.i, align 4
  %fs_type.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 2
  %34 = ptrtoint ptr %fs_type.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fs_type.i, align 4
  %call1.i = tail call ptr @cifs_smb3_do_mount(ptr noundef %35, i32 noundef 0, ptr noundef %33) #9
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %call1.i to i32
  br label %smb3_get_tree_common.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %root4.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 5
  %37 = ptrtoint ptr %root4.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call1.i, ptr %root4.i, align 4
  br label %smb3_get_tree_common.exit

smb3_get_tree_common.exit:                        ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %36, %if.then.i ], [ 0, %if.end.i ]
  tail call void @mutex_unlock(ptr noundef nonnull @cifs_mount_mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %smb3_get_tree_common.exit, %smb3_fs_context_validate.exit.thread13, %do.body73.i.cleanup_crit_edge, %do.body44.i.cleanup_crit_edge, %do.body.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %smb3_get_tree_common.exit ], [ %retval.1.ph.i.ph, %smb3_fs_context_validate.exit.thread13 ], [ -2, %do.body73.i.cleanup_crit_edge ], [ -1, %do.body44.i.cleanup_crit_edge ], [ -95, %do.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smb3_reconfigure(ptr nocapture noundef readonly %fc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_private.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %fs_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_private.i, align 4
  %root1 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 5
  %2 = ptrtoint ptr %root1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %root1, align 4
  %d_sb = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %ctx3 = getelementptr inbounds %struct.cifs_sb_info, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %ctx3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx3, align 4
  %posix_paths.i = getelementptr inbounds %struct.smb3_fs_context, ptr %1, i32 0, i32 34
  %10 = ptrtoint ptr %posix_paths.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 5)
  %bf.load.i = load i40, ptr %posix_paths.i, align 1
  %posix_paths1.i = getelementptr inbounds %struct.smb3_fs_context, ptr %9, i32 0, i32 34
  %11 = ptrtoint ptr %posix_paths1.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 5)
  %bf.load2.i = load i40, ptr %posix_paths1.i, align 1
  %cmp.not.unshifted311.i = xor i40 %bf.load2.i, %bf.load.i
  %12 = and i40 %cmp.not.unshifted311.i, 2147483648
  %cmp.not.i = icmp eq i40 %12, 0
  br i1 %cmp.not.i, label %if.end17.i, label %do.body.i

do.body.i:                                        ; preds = %entry
  %log8.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %13 = ptrtoint ptr %log8.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %log8.i, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %14, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.357) #9
  %call.i = tail call i32 @___ratelimit(ptr noundef nonnull @smb3_verify_reconfigure_ctx._rs, ptr noundef nonnull @__func__.smb3_verify_reconfigure_ctx) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body.i.cleanup_crit_edge, label %do.body.i.return.sink.split.i_crit_edge

do.body.i.return.sink.split.i_crit_edge:          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17.i:                                       ; preds = %entry
  %sectype.i = getelementptr inbounds %struct.smb3_fs_context, ptr %1, i32 0, i32 29
  %15 = ptrtoint ptr %sectype.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sectype.i, align 8
  %sectype18.i = getelementptr inbounds %struct.smb3_fs_context, ptr %9, i32 0, i32 29
  %17 = ptrtoint ptr %sectype18.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sectype18.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp19.not.i = icmp eq i32 %16, %18
  br i1 %cmp19.not.i, label %if.end38.i, label %do.body22.i

do.body22.i:                                      ; preds = %if.end17.i
  %log24.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %19 = ptrtoint ptr %log24.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %log24.i, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %20, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.359) #9
  %call27.i = tail call i32 @___ratelimit(ptr noundef nonnull @smb3_verify_reconfigure_ctx._rs.360, ptr noundef nonnull @__func__.smb3_verify_reconfigure_ctx) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %do.body22.i.cleanup_crit_edge, label %do.body22.i.return.sink.split.i_crit_edge

do.body22.i.return.sink.split.i_crit_edge:        ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split.i

do.body22.i.cleanup_crit_edge:                    ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end38.i:                                       ; preds = %if.end17.i
  %21 = and i40 %cmp.not.unshifted311.i, 8192
  %cmp50.not.i = icmp eq i40 %21, 0
  br i1 %cmp50.not.i, label %if.end69.i, label %do.body53.i

do.body53.i:                                      ; preds = %if.end38.i
  %log55.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %22 = ptrtoint ptr %log55.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %log55.i, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %23, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.364) #9
  %call58.i = tail call i32 @___ratelimit(ptr noundef nonnull @smb3_verify_reconfigure_ctx._rs.365, ptr noundef nonnull @__func__.smb3_verify_reconfigure_ctx) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i)
  %tobool59.not.i = icmp eq i32 %call58.i, 0
  br i1 %tobool59.not.i, label %do.body53.i.cleanup_crit_edge, label %do.body53.i.return.sink.split.i_crit_edge

do.body53.i.return.sink.split.i_crit_edge:        ; preds = %do.body53.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split.i

do.body53.i.cleanup_crit_edge:                    ; preds = %do.body53.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end69.i:                                       ; preds = %if.end38.i
  %UNC.i = getelementptr inbounds %struct.smb3_fs_context, ptr %1, i32 0, i32 16
  %24 = ptrtoint ptr %UNC.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %UNC.i, align 8
  %tobool70.not.i = icmp eq ptr %25, null
  br i1 %tobool70.not.i, label %if.end69.i.if.end94.i_crit_edge, label %land.lhs.true.i

if.end69.i.if.end94.i_crit_edge:                  ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94.i

land.lhs.true.i:                                  ; preds = %if.end69.i
  %UNC71.i = getelementptr inbounds %struct.smb3_fs_context, ptr %9, i32 0, i32 16
  %26 = ptrtoint ptr %UNC71.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %UNC71.i, align 8
  %tobool72.not.i = icmp eq ptr %27, null
  br i1 %tobool72.not.i, label %land.lhs.true.i.do.body78.i_crit_edge, label %lor.lhs.false.i

land.lhs.true.i.do.body78.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body78.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %call75.i = tail call i32 @strcmp(ptr noundef nonnull %25, ptr noundef nonnull %27) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75.i)
  %tobool76.not.i = icmp eq i32 %call75.i, 0
  br i1 %tobool76.not.i, label %lor.lhs.false.i.if.end94.i_crit_edge, label %lor.lhs.false.i.do.body78.i_crit_edge

lor.lhs.false.i.do.body78.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body78.i

lor.lhs.false.i.if.end94.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94.i

do.body78.i:                                      ; preds = %lor.lhs.false.i.do.body78.i_crit_edge, %land.lhs.true.i.do.body78.i_crit_edge
  %log80.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %28 = ptrtoint ptr %log80.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %log80.i, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %29, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.369) #9
  %call83.i = tail call i32 @___ratelimit(ptr noundef nonnull @smb3_verify_reconfigure_ctx._rs.370, ptr noundef nonnull @__func__.smb3_verify_reconfigure_ctx) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83.i)
  %tobool84.not.i = icmp eq i32 %call83.i, 0
  br i1 %tobool84.not.i, label %do.body78.i.cleanup_crit_edge, label %do.body78.i.return.sink.split.i_crit_edge

do.body78.i.return.sink.split.i_crit_edge:        ; preds = %do.body78.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split.i

do.body78.i.cleanup_crit_edge:                    ; preds = %do.body78.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end94.i:                                       ; preds = %lor.lhs.false.i.if.end94.i_crit_edge, %if.end69.i.if.end94.i_crit_edge
  %username.i = getelementptr inbounds %struct.smb3_fs_context, ptr %1, i32 0, i32 11
  %30 = ptrtoint ptr %username.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %username.i, align 4
  %tobool95.not.i = icmp eq ptr %31, null
  br i1 %tobool95.not.i, label %if.end94.i.if.end121.i_crit_edge, label %land.lhs.true96.i

if.end94.i.if.end121.i_crit_edge:                 ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end121.i

land.lhs.true96.i:                                ; preds = %if.end94.i
  %username97.i = getelementptr inbounds %struct.smb3_fs_context, ptr %9, i32 0, i32 11
  %32 = ptrtoint ptr %username97.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %username97.i, align 4
  %tobool98.not.i = icmp eq ptr %33, null
  br i1 %tobool98.not.i, label %land.lhs.true96.i.do.body105.i_crit_edge, label %lor.lhs.false99.i

land.lhs.true96.i.do.body105.i_crit_edge:         ; preds = %land.lhs.true96.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body105.i

lor.lhs.false99.i:                                ; preds = %land.lhs.true96.i
  %call102.i = tail call i32 @strcmp(ptr noundef nonnull %31, ptr noundef nonnull %33) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102.i)
  %tobool103.not.i = icmp eq i32 %call102.i, 0
  br i1 %tobool103.not.i, label %lor.lhs.false99.i.if.end121.i_crit_edge, label %lor.lhs.false99.i.do.body105.i_crit_edge

lor.lhs.false99.i.do.body105.i_crit_edge:         ; preds = %lor.lhs.false99.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body105.i

lor.lhs.false99.i.if.end121.i_crit_edge:          ; preds = %lor.lhs.false99.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end121.i

do.body105.i:                                     ; preds = %lor.lhs.false99.i.do.body105.i_crit_edge, %land.lhs.true96.i.do.body105.i_crit_edge
  %log107.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %34 = ptrtoint ptr %log107.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %log107.i, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %35, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.374) #9
  %call110.i = tail call i32 @___ratelimit(ptr noundef nonnull @smb3_verify_reconfigure_ctx._rs.375, ptr noundef nonnull @__func__.smb3_verify_reconfigure_ctx) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110.i)
  %tobool111.not.i = icmp eq i32 %call110.i, 0
  br i1 %tobool111.not.i, label %do.body105.i.cleanup_crit_edge, label %do.body105.i.return.sink.split.i_crit_edge

do.body105.i.return.sink.split.i_crit_edge:       ; preds = %do.body105.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split.i

do.body105.i.cleanup_crit_edge:                   ; preds = %do.body105.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end121.i:                                      ; preds = %lor.lhs.false99.i.if.end121.i_crit_edge, %if.end94.i.if.end121.i_crit_edge
  %password.i = getelementptr inbounds %struct.smb3_fs_context, ptr %1, i32 0, i32 12
  %36 = ptrtoint ptr %password.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %password.i, align 8
  %tobool122.not.i = icmp eq ptr %37, null
  br i1 %tobool122.not.i, label %if.end121.i.if.end148.i_crit_edge, label %land.lhs.true123.i

if.end121.i.if.end148.i_crit_edge:                ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end148.i

land.lhs.true123.i:                               ; preds = %if.end121.i
  %password124.i = getelementptr inbounds %struct.smb3_fs_context, ptr %9, i32 0, i32 12
  %38 = ptrtoint ptr %password124.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %password124.i, align 8
  %tobool125.not.i = icmp eq ptr %39, null
  br i1 %tobool125.not.i, label %land.lhs.true123.i.do.body132.i_crit_edge, label %lor.lhs.false126.i

land.lhs.true123.i.do.body132.i_crit_edge:        ; preds = %land.lhs.true123.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body132.i

lor.lhs.false126.i:                               ; preds = %land.lhs.true123.i
  %call129.i = tail call i32 @strcmp(ptr noundef nonnull %37, ptr noundef nonnull %39) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129.i)
  %tobool130.not.i = icmp eq i32 %call129.i, 0
  br i1 %tobool130.not.i, label %lor.lhs.false126.i.if.end148.i_crit_edge, label %lor.lhs.false126.i.do.body132.i_crit_edge

lor.lhs.false126.i.do.body132.i_crit_edge:        ; preds = %lor.lhs.false126.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body132.i

lor.lhs.false126.i.if.end148.i_crit_edge:         ; preds = %lor.lhs.false126.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end148.i

do.body132.i:                                     ; preds = %lor.lhs.false126.i.do.body132.i_crit_edge, %land.lhs.true123.i.do.body132.i_crit_edge
  %log134.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %40 = ptrtoint ptr %log134.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %log134.i, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %41, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.379) #9
  %call137.i = tail call i32 @___ratelimit(ptr noundef nonnull @smb3_verify_reconfigure_ctx._rs.380, ptr noundef nonnull @__func__.smb3_verify_reconfigure_ctx) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137.i)
  %tobool138.not.i = icmp eq i32 %call137.i, 0
  br i1 %tobool138.not.i, label %do.body132.i.cleanup_crit_edge, label %do.body132.i.return.sink.split.i_crit_edge

do.body132.i.return.sink.split.i_crit_edge:       ; preds = %do.body132.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split.i

do.body132.i.cleanup_crit_edge:                   ; preds = %do.body132.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end148.i:                                      ; preds = %lor.lhs.false126.i.if.end148.i_crit_edge, %if.end121.i.if.end148.i_crit_edge
  %domainname.i = getelementptr inbounds %struct.smb3_fs_context, ptr %1, i32 0, i32 13
  %42 = ptrtoint ptr %domainname.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %domainname.i, align 4
  %tobool149.not.i = icmp eq ptr %43, null
  br i1 %tobool149.not.i, label %if.end148.i.if.end175.i_crit_edge, label %land.lhs.true150.i

if.end148.i.if.end175.i_crit_edge:                ; preds = %if.end148.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end175.i

land.lhs.true150.i:                               ; preds = %if.end148.i
  %domainname151.i = getelementptr inbounds %struct.smb3_fs_context, ptr %9, i32 0, i32 13
  %44 = ptrtoint ptr %domainname151.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %domainname151.i, align 4
  %tobool152.not.i = icmp eq ptr %45, null
  br i1 %tobool152.not.i, label %land.lhs.true150.i.do.body159.i_crit_edge, label %lor.lhs.false153.i

land.lhs.true150.i.do.body159.i_crit_edge:        ; preds = %land.lhs.true150.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body159.i

lor.lhs.false153.i:                               ; preds = %land.lhs.true150.i
  %call156.i = tail call i32 @strcmp(ptr noundef nonnull %43, ptr noundef nonnull %45) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156.i)
  %tobool157.not.i = icmp eq i32 %call156.i, 0
  br i1 %tobool157.not.i, label %lor.lhs.false153.i.if.end175.i_crit_edge, label %lor.lhs.false153.i.do.body159.i_crit_edge

lor.lhs.false153.i.do.body159.i_crit_edge:        ; preds = %lor.lhs.false153.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body159.i

lor.lhs.false153.i.if.end175.i_crit_edge:         ; preds = %lor.lhs.false153.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end175.i

do.body159.i:                                     ; preds = %lor.lhs.false153.i.do.body159.i_crit_edge, %land.lhs.true150.i.do.body159.i_crit_edge
  %log161.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %46 = ptrtoint ptr %log161.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %log161.i, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %47, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.384) #9
  %call164.i = tail call i32 @___ratelimit(ptr noundef nonnull @smb3_verify_reconfigure_ctx._rs.385, ptr noundef nonnull @__func__.smb3_verify_reconfigure_ctx) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164.i)
  %tobool165.not.i = icmp eq i32 %call164.i, 0
  br i1 %tobool165.not.i, label %do.body159.i.cleanup_crit_edge, label %do.body159.i.return.sink.split.i_crit_edge

do.body159.i.return.sink.split.i_crit_edge:       ; preds = %do.body159.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split.i

do.body159.i.cleanup_crit_edge:                   ; preds = %do.body159.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end175.i:                                      ; preds = %lor.lhs.false153.i.if.end175.i_crit_edge, %if.end148.i.if.end175.i_crit_edge
  %workstation_name.i = getelementptr inbounds %struct.smb3_fs_context, ptr %1, i32 0, i32 18
  %48 = ptrtoint ptr %workstation_name.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %workstation_name.i, align 8
  %tobool176.not.i = icmp eq ptr %49, null
  br i1 %tobool176.not.i, label %if.end175.i.if.end202.i_crit_edge, label %land.lhs.true177.i

if.end175.i.if.end202.i_crit_edge:                ; preds = %if.end175.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end202.i

land.lhs.true177.i:                               ; preds = %if.end175.i
  %workstation_name178.i = getelementptr inbounds %struct.smb3_fs_context, ptr %9, i32 0, i32 18
  %50 = ptrtoint ptr %workstation_name178.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %workstation_name178.i, align 8
  %tobool179.not.i = icmp eq ptr %51, null
  br i1 %tobool179.not.i, label %land.lhs.true177.i.do.body186.i_crit_edge, label %lor.lhs.false180.i

land.lhs.true177.i.do.body186.i_crit_edge:        ; preds = %land.lhs.true177.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body186.i

lor.lhs.false180.i:                               ; preds = %land.lhs.true177.i
  %call183.i = tail call i32 @strcmp(ptr noundef nonnull %49, ptr noundef nonnull %51) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call183.i)
  %tobool184.not.i = icmp eq i32 %call183.i, 0
  br i1 %tobool184.not.i, label %lor.lhs.false180.i.if.end202.i_crit_edge, label %lor.lhs.false180.i.do.body186.i_crit_edge

lor.lhs.false180.i.do.body186.i_crit_edge:        ; preds = %lor.lhs.false180.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body186.i

lor.lhs.false180.i.if.end202.i_crit_edge:         ; preds = %lor.lhs.false180.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end202.i

do.body186.i:                                     ; preds = %lor.lhs.false180.i.do.body186.i_crit_edge, %land.lhs.true177.i.do.body186.i_crit_edge
  %log188.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %52 = ptrtoint ptr %log188.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %log188.i, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %53, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.389) #9
  %call191.i = tail call i32 @___ratelimit(ptr noundef nonnull @smb3_verify_reconfigure_ctx._rs.390, ptr noundef nonnull @__func__.smb3_verify_reconfigure_ctx) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call191.i)
  %tobool192.not.i = icmp eq i32 %call191.i, 0
  br i1 %tobool192.not.i, label %do.body186.i.cleanup_crit_edge, label %do.body186.i.return.sink.split.i_crit_edge

do.body186.i.return.sink.split.i_crit_edge:       ; preds = %do.body186.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split.i

do.body186.i.cleanup_crit_edge:                   ; preds = %do.body186.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end202.i:                                      ; preds = %lor.lhs.false180.i.if.end202.i_crit_edge, %if.end175.i.if.end202.i_crit_edge
  %nodename.i = getelementptr inbounds %struct.smb3_fs_context, ptr %1, i32 0, i32 17
  %54 = ptrtoint ptr %nodename.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %nodename.i, align 4
  %tobool203.not.i = icmp eq ptr %55, null
  br i1 %tobool203.not.i, label %if.end202.i.if.end229.i_crit_edge, label %land.lhs.true204.i

if.end202.i.if.end229.i_crit_edge:                ; preds = %if.end202.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end229.i

land.lhs.true204.i:                               ; preds = %if.end202.i
  %nodename205.i = getelementptr inbounds %struct.smb3_fs_context, ptr %9, i32 0, i32 17
  %56 = ptrtoint ptr %nodename205.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %nodename205.i, align 4
  %tobool206.not.i = icmp eq ptr %57, null
  br i1 %tobool206.not.i, label %land.lhs.true204.i.do.body213.i_crit_edge, label %lor.lhs.false207.i

land.lhs.true204.i.do.body213.i_crit_edge:        ; preds = %land.lhs.true204.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body213.i

lor.lhs.false207.i:                               ; preds = %land.lhs.true204.i
  %call210.i = tail call i32 @strcmp(ptr noundef nonnull %55, ptr noundef nonnull %57) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call210.i)
  %tobool211.not.i = icmp eq i32 %call210.i, 0
  br i1 %tobool211.not.i, label %lor.lhs.false207.i.if.end229.i_crit_edge, label %lor.lhs.false207.i.do.body213.i_crit_edge

lor.lhs.false207.i.do.body213.i_crit_edge:        ; preds = %lor.lhs.false207.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body213.i

lor.lhs.false207.i.if.end229.i_crit_edge:         ; preds = %lor.lhs.false207.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end229.i

do.body213.i:                                     ; preds = %lor.lhs.false207.i.do.body213.i_crit_edge, %land.lhs.true204.i.do.body213.i_crit_edge
  %log215.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %58 = ptrtoint ptr %log215.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %log215.i, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %59, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.394) #9
  %call218.i = tail call i32 @___ratelimit(ptr noundef nonnull @smb3_verify_reconfigure_ctx._rs.395, ptr noundef nonnull @__func__.smb3_verify_reconfigure_ctx) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call218.i)
  %tobool219.not.i = icmp eq i32 %call218.i, 0
  br i1 %tobool219.not.i, label %do.body213.i.cleanup_crit_edge, label %do.body213.i.return.sink.split.i_crit_edge

do.body213.i.return.sink.split.i_crit_edge:       ; preds = %do.body213.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split.i

do.body213.i.cleanup_crit_edge:                   ; preds = %do.body213.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end229.i:                                      ; preds = %lor.lhs.false207.i.if.end229.i_crit_edge, %if.end202.i.if.end229.i_crit_edge
  %iocharset.i = getelementptr inbounds %struct.smb3_fs_context, ptr %1, i32 0, i32 19
  %60 = ptrtoint ptr %iocharset.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %iocharset.i, align 4
  %tobool230.not.i = icmp eq ptr %61, null
  br i1 %tobool230.not.i, label %if.end229.i.do.body_crit_edge, label %land.lhs.true231.i

if.end229.i.do.body_crit_edge:                    ; preds = %if.end229.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

land.lhs.true231.i:                               ; preds = %if.end229.i
  %iocharset232.i = getelementptr inbounds %struct.smb3_fs_context, ptr %9, i32 0, i32 19
  %62 = ptrtoint ptr %iocharset232.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %iocharset232.i, align 4
  %tobool233.not.i = icmp eq ptr %63, null
  br i1 %tobool233.not.i, label %land.lhs.true231.i.do.body240.i_crit_edge, label %lor.lhs.false234.i

land.lhs.true231.i.do.body240.i_crit_edge:        ; preds = %land.lhs.true231.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body240.i

lor.lhs.false234.i:                               ; preds = %land.lhs.true231.i
  %call237.i = tail call i32 @strcmp(ptr noundef nonnull %61, ptr noundef nonnull %63) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call237.i)
  %tobool238.not.i = icmp eq i32 %call237.i, 0
  br i1 %tobool238.not.i, label %lor.lhs.false234.i.do.body_crit_edge, label %lor.lhs.false234.i.do.body240.i_crit_edge

lor.lhs.false234.i.do.body240.i_crit_edge:        ; preds = %lor.lhs.false234.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body240.i

lor.lhs.false234.i.do.body_crit_edge:             ; preds = %lor.lhs.false234.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body240.i:                                     ; preds = %lor.lhs.false234.i.do.body240.i_crit_edge, %land.lhs.true231.i.do.body240.i_crit_edge
  %log242.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %64 = ptrtoint ptr %log242.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %log242.i, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %65, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.399) #9
  %call245.i = tail call i32 @___ratelimit(ptr noundef nonnull @smb3_verify_reconfigure_ctx._rs.400, ptr noundef nonnull @__func__.smb3_verify_reconfigure_ctx) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call245.i)
  %tobool246.not.i = icmp eq i32 %call245.i, 0
  br i1 %tobool246.not.i, label %do.body240.i.cleanup_crit_edge, label %do.body240.i.return.sink.split.i_crit_edge

do.body240.i.return.sink.split.i_crit_edge:       ; preds = %do.body240.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split.i

do.body240.i.cleanup_crit_edge:                   ; preds = %do.body240.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

return.sink.split.i:                              ; preds = %do.body240.i.return.sink.split.i_crit_edge, %do.body213.i.return.sink.split.i_crit_edge, %do.body186.i.return.sink.split.i_crit_edge, %do.body159.i.return.sink.split.i_crit_edge, %do.body132.i.return.sink.split.i_crit_edge, %do.body105.i.return.sink.split.i_crit_edge, %do.body78.i.return.sink.split.i_crit_edge, %do.body53.i.return.sink.split.i_crit_edge, %do.body22.i.return.sink.split.i_crit_edge, %do.body.i.return.sink.split.i_crit_edge
  %.str.402.sink.i = phi ptr [ @.str.358, %do.body.i.return.sink.split.i_crit_edge ], [ @.str.362, %do.body22.i.return.sink.split.i_crit_edge ], [ @.str.367, %do.body53.i.return.sink.split.i_crit_edge ], [ @.str.372, %do.body78.i.return.sink.split.i_crit_edge ], [ @.str.377, %do.body105.i.return.sink.split.i_crit_edge ], [ @.str.382, %do.body132.i.return.sink.split.i_crit_edge ], [ @.str.387, %do.body159.i.return.sink.split.i_crit_edge ], [ @.str.392, %do.body186.i.return.sink.split.i_crit_edge ], [ @.str.397, %do.body213.i.return.sink.split.i_crit_edge ], [ @.str.402, %do.body240.i.return.sink.split.i_crit_edge ]
  %call251.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.402.sink.i) #13
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false234.i.do.body_crit_edge, %if.end229.i.do.body_crit_edge
  %66 = ptrtoint ptr %UNC.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %UNC.i, align 8
  tail call void @kfree(ptr noundef %67) #9
  %68 = ptrtoint ptr %ctx3 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ctx3, align 4
  %UNC6 = getelementptr inbounds %struct.smb3_fs_context, ptr %69, i32 0, i32 16
  %70 = ptrtoint ptr %UNC6 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %UNC6, align 8
  %72 = ptrtoint ptr %UNC.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %71, ptr %UNC.i, align 8
  %73 = load ptr, ptr %ctx3, align 4
  %UNC9 = getelementptr inbounds %struct.smb3_fs_context, ptr %73, i32 0, i32 16
  %74 = ptrtoint ptr %UNC9 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %UNC9, align 8
  %source = getelementptr inbounds %struct.smb3_fs_context, ptr %1, i32 0, i32 14
  %75 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %source, align 8
  tail call void @kfree(ptr noundef %76) #9
  %77 = ptrtoint ptr %ctx3 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ctx3, align 4
  %source12 = getelementptr inbounds %struct.smb3_fs_context, ptr %78, i32 0, i32 14
  %79 = ptrtoint ptr %source12 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %source12, align 8
  %81 = ptrtoint ptr %source to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %80, ptr %source, align 8
  %82 = load ptr, ptr %ctx3, align 4
  %source15 = getelementptr inbounds %struct.smb3_fs_context, ptr %82, i32 0, i32 14
  %83 = ptrtoint ptr %source15 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %source15, align 8
  %84 = ptrtoint ptr %username.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %username.i, align 4
  tail call void @kfree(ptr noundef %85) #9
  %86 = ptrtoint ptr %ctx3 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ctx3, align 4
  %username20 = getelementptr inbounds %struct.smb3_fs_context, ptr %87, i32 0, i32 11
  %88 = ptrtoint ptr %username20 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %username20, align 4
  %90 = ptrtoint ptr %username.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %89, ptr %username.i, align 4
  %91 = load ptr, ptr %ctx3, align 4
  %username23 = getelementptr inbounds %struct.smb3_fs_context, ptr %91, i32 0, i32 11
  %92 = ptrtoint ptr %username23 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr null, ptr %username23, align 4
  %93 = ptrtoint ptr %password.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %password.i, align 8
  tail call void @kfree(ptr noundef %94) #9
  %95 = ptrtoint ptr %ctx3 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ctx3, align 4
  %password28 = getelementptr inbounds %struct.smb3_fs_context, ptr %96, i32 0, i32 12
  %97 = ptrtoint ptr %password28 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %password28, align 8
  %99 = ptrtoint ptr %password.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %98, ptr %password.i, align 8
  %100 = load ptr, ptr %ctx3, align 4
  %password31 = getelementptr inbounds %struct.smb3_fs_context, ptr %100, i32 0, i32 12
  %101 = ptrtoint ptr %password31 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr null, ptr %password31, align 8
  %102 = ptrtoint ptr %domainname.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %domainname.i, align 4
  tail call void @kfree(ptr noundef %103) #9
  %104 = ptrtoint ptr %ctx3 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %ctx3, align 4
  %domainname36 = getelementptr inbounds %struct.smb3_fs_context, ptr %105, i32 0, i32 13
  %106 = ptrtoint ptr %domainname36 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %domainname36, align 4
  %108 = ptrtoint ptr %domainname.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %107, ptr %domainname.i, align 4
  %109 = load ptr, ptr %ctx3, align 4
  %domainname39 = getelementptr inbounds %struct.smb3_fs_context, ptr %109, i32 0, i32 13
  %110 = ptrtoint ptr %domainname39 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr null, ptr %domainname39, align 4
  %111 = ptrtoint ptr %workstation_name.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %workstation_name.i, align 8
  tail call void @kfree(ptr noundef %112) #9
  %113 = ptrtoint ptr %ctx3 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ctx3, align 4
  %workstation_name44 = getelementptr inbounds %struct.smb3_fs_context, ptr %114, i32 0, i32 18
  %115 = ptrtoint ptr %workstation_name44 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %workstation_name44, align 8
  %117 = ptrtoint ptr %workstation_name.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %116, ptr %workstation_name.i, align 8
  %118 = load ptr, ptr %ctx3, align 4
  %workstation_name47 = getelementptr inbounds %struct.smb3_fs_context, ptr %118, i32 0, i32 18
  %119 = ptrtoint ptr %workstation_name47 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr null, ptr %workstation_name47, align 8
  %120 = ptrtoint ptr %nodename.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %nodename.i, align 4
  tail call void @kfree(ptr noundef %121) #9
  %122 = ptrtoint ptr %ctx3 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %ctx3, align 4
  %nodename52 = getelementptr inbounds %struct.smb3_fs_context, ptr %123, i32 0, i32 17
  %124 = ptrtoint ptr %nodename52 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %nodename52, align 4
  %126 = ptrtoint ptr %nodename.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %125, ptr %nodename.i, align 4
  %127 = load ptr, ptr %ctx3, align 4
  %nodename55 = getelementptr inbounds %struct.smb3_fs_context, ptr %127, i32 0, i32 17
  %128 = ptrtoint ptr %nodename55 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr null, ptr %nodename55, align 4
  %129 = ptrtoint ptr %iocharset.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %iocharset.i, align 4
  tail call void @kfree(ptr noundef %130) #9
  %131 = ptrtoint ptr %ctx3 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %ctx3, align 4
  %iocharset60 = getelementptr inbounds %struct.smb3_fs_context, ptr %132, i32 0, i32 19
  %133 = ptrtoint ptr %iocharset60 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %iocharset60, align 4
  %135 = ptrtoint ptr %iocharset.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %134, ptr %iocharset.i, align 4
  %136 = load ptr, ptr %ctx3, align 4
  %iocharset63 = getelementptr inbounds %struct.smb3_fs_context, ptr %136, i32 0, i32 19
  %137 = ptrtoint ptr %iocharset63 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr null, ptr %iocharset63, align 4
  %rsize = getelementptr inbounds %struct.smb3_fs_context, ptr %1, i32 0, i32 39
  %138 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %rsize, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %cmp = icmp eq i32 %139, 0
  br i1 %cmp, label %if.then66, label %do.body.if.end70_crit_edge

do.body.if.end70_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then66:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %140 = ptrtoint ptr %ctx3 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %ctx3, align 4
  %rsize68 = getelementptr inbounds %struct.smb3_fs_context, ptr %141, i32 0, i32 39
  %142 = ptrtoint ptr %rsize68 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %rsize68, align 8
  %144 = ptrtoint ptr %rsize to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %rsize, align 8
  br label %if.end70

if.end70:                                         ; preds = %if.then66, %do.body.if.end70_crit_edge
  %wsize = getelementptr inbounds %struct.smb3_fs_context, ptr %1, i32 0, i32 40
  %145 = ptrtoint ptr %wsize to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %wsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %cmp71 = icmp eq i32 %146, 0
  br i1 %cmp71, label %if.then72, label %if.end70.if.end76_crit_edge

if.end70.if.end76_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76

if.then72:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  %147 = ptrtoint ptr %ctx3 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %ctx3, align 4
  %wsize74 = getelementptr inbounds %struct.smb3_fs_context, ptr %148, i32 0, i32 40
  %149 = ptrtoint ptr %wsize74 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %wsize74, align 4
  %151 = ptrtoint ptr %wsize to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %150, ptr %wsize, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.then72, %if.end70.if.end76_crit_edge
  %152 = ptrtoint ptr %ctx3 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %ctx3, align 4
  tail call void @smb3_cleanup_fs_context_contents(ptr noundef %153)
  %154 = ptrtoint ptr %ctx3 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %ctx3, align 4
  %call79 = tail call i32 @smb3_fs_context_dup(ptr noundef %155, ptr noundef %1)
  tail call void @smb3_update_mnt_flags(ptr noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.then81, label %if.end76.cleanup_crit_edge

if.end76.cleanup_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then81:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  %call82 = tail call i32 @dfs_cache_remount_fs(ptr noundef %7) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then81, %if.end76.cleanup_crit_edge, %return.sink.split.i, %do.body240.i.cleanup_crit_edge, %do.body213.i.cleanup_crit_edge, %do.body186.i.cleanup_crit_edge, %do.body159.i.cleanup_crit_edge, %do.body132.i.cleanup_crit_edge, %do.body105.i.cleanup_crit_edge, %do.body78.i.cleanup_crit_edge, %do.body53.i.cleanup_crit_edge, %do.body22.i.cleanup_crit_edge, %do.body.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call79, %if.end76.cleanup_crit_edge ], [ %call82, %if.then81 ], [ -22, %do.body.i.cleanup_crit_edge ], [ -22, %do.body22.i.cleanup_crit_edge ], [ -22, %do.body53.i.cleanup_crit_edge ], [ -22, %do.body78.i.cleanup_crit_edge ], [ -22, %do.body105.i.cleanup_crit_edge ], [ -22, %do.body132.i.cleanup_crit_edge ], [ -22, %do.body159.i.cleanup_crit_edge ], [ -22, %do.body186.i.cleanup_crit_edge ], [ -22, %do.body213.i.cleanup_crit_edge ], [ -22, %do.body240.i.cleanup_crit_edge ], [ -22, %return.sink.split.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @logfc(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_convert_address(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cifs_parse_smb_version(ptr nocapture noundef readonly %fc, ptr noundef %value, ptr nocapture noundef writeonly %ctx, i1 noundef zeroext %is_smb3) unnamed_addr #1 align 64 {
entry:
  %args = alloca [3 x %struct.substring_t], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args) #9
  %0 = call ptr @memset(ptr %args, i32 255, i32 24)
  %call = call i32 @match_token(ptr noundef %value, ptr noundef nonnull @cifs_smb_version_tokens, ptr noundef nonnull %args) #9
  %1 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.410)
  switch i32 %call, label %do.body126 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb59
    i32 3, label %sw.bb108
    i32 4, label %sw.bb111
    i32 5, label %sw.bb114
    i32 6, label %sw.bb117
    i32 7, label %sw.bb120
    i32 8, label %sw.bb123
  ]

sw.bb:                                            ; preds = %entry
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @disable_legacy_dialects to i32))
  %2 = load i8, ptr @disable_legacy_dialects, align 1, !range !674
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  %log20 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %3 = ptrtoint ptr %log20 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %log20, align 4
  br i1 %tobool.not, label %if.end15, label %do.body

do.body:                                          ; preds = %sw.bb
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %4, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.275) #9
  %call4 = call i32 @___ratelimit(ptr noundef nonnull @cifs_parse_smb_version._rs, ptr noundef nonnull @__func__.cifs_parse_smb_version) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.276) #13
  br label %cleanup

if.end15:                                         ; preds = %sw.bb
  br i1 %is_smb3, label %do.body18, label %do.body39

do.body18:                                        ; preds = %if.end15
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %4, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.277) #9
  %call23 = call i32 @___ratelimit(ptr noundef nonnull @cifs_parse_smb_version._rs.278, ptr noundef nonnull @__func__.cifs_parse_smb_version) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %do.body18.cleanup_crit_edge, label %do.end28

do.body18.cleanup_crit_edge:                      ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end28:                                         ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #11
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.280) #13
  br label %cleanup

do.body39:                                        ; preds = %if.end15
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %4, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.282) #9
  %call44 = call i32 @___ratelimit(ptr noundef nonnull @cifs_parse_smb_version._rs.283, ptr noundef nonnull @__func__.cifs_parse_smb_version) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %do.body39.do.end58_crit_edge, label %do.end49

do.body39.do.end58_crit_edge:                     ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end58

do.end49:                                         ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #11
  %call51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.285) #13
  br label %do.end58

do.end58:                                         ; preds = %do.end49, %do.body39.do.end58_crit_edge
  %ops = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 46
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @smb1_operations, ptr %ops, align 8
  %vals = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 47
  %6 = ptrtoint ptr %vals to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @smb1_values, ptr %vals, align 4
  br label %cleanup

sw.bb59:                                          ; preds = %entry
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @disable_legacy_dialects to i32))
  %7 = load i8, ptr @disable_legacy_dialects, align 1, !range !674
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool60.not = icmp eq i8 %7, 0
  br i1 %tobool60.not, label %if.end82, label %do.body62

do.body62:                                        ; preds = %sw.bb59
  %log64 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %8 = ptrtoint ptr %log64 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %log64, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %9, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.275) #9
  %call67 = call i32 @___ratelimit(ptr noundef nonnull @cifs_parse_smb_version._rs.287, ptr noundef nonnull @__func__.cifs_parse_smb_version) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %do.body62.cleanup_crit_edge, label %do.end72

do.body62.cleanup_crit_edge:                      ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end72:                                         ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #11
  %call74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.276) #13
  br label %cleanup

if.end82:                                         ; preds = %sw.bb59
  br i1 %is_smb3, label %do.body85, label %if.end105

do.body85:                                        ; preds = %if.end82
  %log87 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %10 = ptrtoint ptr %log87 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %log87, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %11, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.290) #9
  %call90 = call i32 @___ratelimit(ptr noundef nonnull @cifs_parse_smb_version._rs.291, ptr noundef nonnull @__func__.cifs_parse_smb_version) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %do.body85.cleanup_crit_edge, label %do.end95

do.body85.cleanup_crit_edge:                      ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end95:                                         ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #11
  %call97 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.293) #13
  br label %cleanup

if.end105:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  %ops106 = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 46
  %12 = ptrtoint ptr %ops106 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @smb20_operations, ptr %ops106, align 8
  %vals107 = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 47
  %13 = ptrtoint ptr %vals107 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @smb20_values, ptr %vals107, align 4
  br label %cleanup

sw.bb108:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ops109 = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 46
  %14 = ptrtoint ptr %ops109 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @smb21_operations, ptr %ops109, align 8
  %vals110 = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 47
  %15 = ptrtoint ptr %vals110 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @smb21_values, ptr %vals110, align 4
  br label %cleanup

sw.bb111:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ops112 = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 46
  %16 = ptrtoint ptr %ops112 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @smb30_operations, ptr %ops112, align 8
  %vals113 = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 47
  %17 = ptrtoint ptr %vals113 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @smb30_values, ptr %vals113, align 4
  br label %cleanup

sw.bb114:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ops115 = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 46
  %18 = ptrtoint ptr %ops115 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @smb30_operations, ptr %ops115, align 8
  %vals116 = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 47
  %19 = ptrtoint ptr %vals116 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @smb302_values, ptr %vals116, align 4
  br label %cleanup

sw.bb117:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ops118 = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 46
  %20 = ptrtoint ptr %ops118 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @smb311_operations, ptr %ops118, align 8
  %vals119 = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 47
  %21 = ptrtoint ptr %vals119 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @smb311_values, ptr %vals119, align 4
  br label %cleanup

sw.bb120:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ops121 = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 46
  %22 = ptrtoint ptr %ops121 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @smb30_operations, ptr %ops121, align 8
  %vals122 = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 47
  %23 = ptrtoint ptr %vals122 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @smb3any_values, ptr %vals122, align 4
  br label %cleanup

sw.bb123:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ops124 = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 46
  %24 = ptrtoint ptr %ops124 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @smb30_operations, ptr %ops124, align 8
  %vals125 = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 47
  %25 = ptrtoint ptr %vals125 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @smbdefault_values, ptr %vals125, align 4
  br label %cleanup

do.body126:                                       ; preds = %entry
  %log128 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %26 = ptrtoint ptr %log128 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %log128, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %27, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.295, ptr noundef %value) #9
  %call131 = call i32 @___ratelimit(ptr noundef nonnull @cifs_parse_smb_version._rs.296, ptr noundef nonnull @__func__.cifs_parse_smb_version) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %do.body126.cleanup_crit_edge, label %do.end136

do.body126.cleanup_crit_edge:                     ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end136:                                        ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #11
  %call138 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.298, ptr noundef %value) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end136, %do.body126.cleanup_crit_edge, %sw.bb123, %sw.bb120, %sw.bb117, %sw.bb114, %sw.bb111, %sw.bb108, %if.end105, %do.end95, %do.body85.cleanup_crit_edge, %do.end72, %do.body62.cleanup_crit_edge, %do.end58, %do.end28, %do.body18.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end ], [ 1, %do.body.cleanup_crit_edge ], [ 1, %do.end28 ], [ 1, %do.body18.cleanup_crit_edge ], [ 1, %do.end72 ], [ 1, %do.body62.cleanup_crit_edge ], [ 1, %do.end95 ], [ 1, %do.body85.cleanup_crit_edge ], [ 1, %do.end136 ], [ 1, %do.body126.cleanup_crit_edge ], [ 0, %sw.bb123 ], [ 0, %sw.bb120 ], [ 0, %sw.bb117 ], [ 0, %sw.bb114 ], [ 0, %sw.bb111 ], [ 0, %sw.bb108 ], [ 0, %if.end105 ], [ 0, %do.end58 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cifs_parse_security_flavors(ptr nocapture noundef readonly %fc, ptr noundef %value, ptr nocapture noundef %ctx) unnamed_addr #1 align 64 {
entry:
  %args = alloca [3 x %struct.substring_t], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args) #9
  %sectype = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 29
  %0 = call ptr @memset(ptr %args, i32 255, i32 24)
  %1 = ptrtoint ptr %sectype to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %sectype, align 8
  %sign = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 30
  %2 = ptrtoint ptr %sign to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %sign, align 4
  %call = call i32 @match_token(ptr noundef %value, ptr noundef nonnull @cifs_secflavor_tokens, ptr noundef nonnull %args) #9
  %3 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.411)
  switch i32 %call, label %do.body26 [
    i32 2, label %do.body
    i32 1, label %sw.bb13
    i32 0, label %entry.sw.bb15_crit_edge
    i32 3, label %sw.bb17
    i32 4, label %entry.sw.bb19_crit_edge
    i32 6, label %sw.bb21
    i32 5, label %entry.sw.bb23_crit_edge
    i32 7, label %sw.bb25
  ]

entry.sw.bb23_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb23

entry.sw.bb19_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb19

entry.sw.bb15_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb15

do.body:                                          ; preds = %entry
  %log1 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %4 = ptrtoint ptr %log1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %log1, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %5, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.309) #9
  %call4 = call i32 @___ratelimit(ptr noundef nonnull @cifs_parse_security_flavors._rs, ptr noundef nonnull @__func__.cifs_parse_security_flavors) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.310) #13
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %sign to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %sign, align 4
  br label %sw.bb15

sw.bb15:                                          ; preds = %sw.bb13, %entry.sw.bb15_crit_edge
  %7 = ptrtoint ptr %sectype to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %sectype, align 8
  br label %cleanup

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %sign to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %sign, align 4
  br label %sw.bb19

sw.bb19:                                          ; preds = %sw.bb17, %entry.sw.bb19_crit_edge
  %9 = ptrtoint ptr %sectype to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %sectype, align 8
  br label %cleanup

sw.bb21:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %sign to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %sign, align 4
  br label %sw.bb23

sw.bb23:                                          ; preds = %sw.bb21, %entry.sw.bb23_crit_edge
  %11 = ptrtoint ptr %sectype to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %sectype, align 8
  br label %cleanup

sw.bb25:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %nullauth = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 34
  %12 = ptrtoint ptr %nullauth to i32
  call void @__asan_loadN_noabort(i32 %12, i32 5)
  %bf.load = load i40, ptr %nullauth, align 1
  %bf.set = or i40 %bf.load, 134217728
  store i40 %bf.set, ptr %nullauth, align 1
  br label %cleanup

do.body26:                                        ; preds = %entry
  %log28 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %13 = ptrtoint ptr %log28 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %log28, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %14, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.311, ptr noundef %value) #9
  %call31 = call i32 @___ratelimit(ptr noundef nonnull @cifs_parse_security_flavors._rs.312, ptr noundef nonnull @__func__.cifs_parse_security_flavors) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %do.body26.cleanup_crit_edge, label %do.end36

do.body26.cleanup_crit_edge:                      ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end36:                                         ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #11
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.314, ptr noundef %value) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end36, %do.body26.cleanup_crit_edge, %sw.bb25, %sw.bb23, %sw.bb19, %sw.bb15, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end ], [ 1, %do.body.cleanup_crit_edge ], [ 1, %do.end36 ], [ 1, %do.body26.cleanup_crit_edge ], [ 0, %sw.bb25 ], [ 0, %sw.bb23 ], [ 0, %sw.bb19 ], [ 0, %sw.bb15 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cifs_parse_cache_flavor(ptr nocapture noundef readonly %fc, ptr noundef %value, ptr nocapture noundef %ctx) unnamed_addr #1 align 64 {
entry:
  %args = alloca [3 x %struct.substring_t], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args) #9
  %0 = call ptr @memset(ptr %args, i32 255, i32 24)
  %call = call i32 @match_token(ptr noundef %value, ptr noundef nonnull @cifs_cacheflavor_tokens, ptr noundef nonnull %args) #9
  %1 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.412)
  switch i32 %call, label %do.body [
    i32 0, label %sw.bb
    i32 1, label %sw.bb10
    i32 2, label %sw.bb27
    i32 3, label %sw.bb44
    i32 4, label %sw.bb61
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %direct_io = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 34
  %2 = ptrtoint ptr %direct_io to i32
  call void @__asan_loadN_noabort(i32 %2, i32 5)
  %bf.load = load i40, ptr %direct_io, align 1
  %bf.clear8 = and i40 %bf.load, -257698037761
  store i40 %bf.clear8, ptr %direct_io, align 1
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %direct_io11 = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 34
  %3 = ptrtoint ptr %direct_io11 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 5)
  %bf.load12 = load i40, ptr %direct_io11, align 1
  %bf.clear17 = and i40 %bf.load12, -257698037761
  %bf.set18 = or i40 %bf.clear17, 68719476736
  store i40 %bf.set18, ptr %direct_io11, align 1
  br label %cleanup

sw.bb27:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %direct_io28 = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 34
  %4 = ptrtoint ptr %direct_io28 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 5)
  %bf.load29 = load i40, ptr %direct_io28, align 1
  %bf.set31 = and i40 %bf.load29, -257698037761
  %bf.clear34 = or i40 %bf.set31, 137438953472
  store i40 %bf.clear34, ptr %direct_io28, align 1
  br label %cleanup

sw.bb44:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %direct_io45 = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 34
  %5 = ptrtoint ptr %direct_io45 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 5)
  %bf.load46 = load i40, ptr %direct_io45, align 1
  %bf.clear55 = and i40 %bf.load46, -257698037761
  %bf.set56 = or i40 %bf.clear55, 34359738368
  store i40 %bf.set56, ptr %direct_io45, align 1
  br label %cleanup

sw.bb61:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %direct_io62 = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 34
  %6 = ptrtoint ptr %direct_io62 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 5)
  %bf.load63 = load i40, ptr %direct_io62, align 1
  %bf.clear76 = and i40 %bf.load63, -257698037761
  %bf.set77 = or i40 %bf.clear76, 17179869184
  store i40 %bf.set77, ptr %direct_io62, align 1
  br label %cleanup

do.body:                                          ; preds = %entry
  %log78 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %7 = ptrtoint ptr %log78 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %log78, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %8, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.325, ptr noundef %value) #9
  %call81 = call i32 @___ratelimit(ptr noundef nonnull @cifs_parse_cache_flavor._rs, ptr noundef nonnull @__func__.cifs_parse_cache_flavor) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool.not = icmp eq i32 %call81, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call83 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.326, ptr noundef %value) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %sw.bb61, %sw.bb44, %sw.bb27, %sw.bb10, %sw.bb
  %retval.0 = phi i32 [ 1, %do.end ], [ 1, %do.body.cleanup_crit_edge ], [ 0, %sw.bb61 ], [ 0, %sw.bb44 ], [ 0, %sw.bb27 ], [ 0, %sw.bb10 ], [ 0, %sw.bb ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fs_parse(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_token(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_sb_eat_lsm_opts(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_parse_fs_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cifs_set_port(ptr noundef, i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cifs_smb3_do_mount(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dfs_cache_remount_fs(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 361)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 361)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !229, !230, !231, !232, !233, !234, !236, !238, !240, !242, !243, !244, !245, !246, !248, !250, !252, !253, !254, !255, !256, !258, !259, !260, !261, !263, !265, !267, !269, !271, !273, !274, !275, !276, !277, !279, !280, !281, !282, !283, !285, !286, !287, !288, !289, !291, !292, !293, !294, !295, !297, !298, !299, !300, !301, !303, !304, !305, !306, !307, !309, !310, !311, !312, !313, !315, !316, !317, !318, !319, !321, !322, !323, !324, !325, !327, !328, !329, !330, !331, !333, !334, !335, !336, !337, !339, !340, !341, !342, !343, !345, !346, !347, !348, !349, !351, !352, !353, !355, !356, !357, !359, !360, !361, !362, !363, !365, !366, !367, !368, !369, !371, !372, !373, !375, !376, !377, !379, !380, !381, !382, !383, !385, !386, !387, !389, !390, !391, !393, !394, !395, !397, !399, !400, !401, !402, !403, !405, !406, !407, !409, !410, !411, !413, !414, !415, !417, !419, !420, !421, !423, !424, !425, !427, !428, !429, !430, !432, !433, !434, !435, !437, !438, !439, !441, !442, !443, !445, !446, !447, !448, !449, !451, !452, !453, !455, !456, !457, !459, !460, !461, !462, !463, !464, !466, !467, !468, !469, !470, !472, !473, !474, !475, !476, !478, !479, !480, !482, !483, !484, !485, !486, !488, !489, !490, !491, !492, !494, !496, !498, !500, !502, !504, !506, !508, !510, !512, !514, !515, !516, !517, !518, !519, !521, !522, !523, !524, !525, !527, !529, !531, !533, !535, !537, !539, !541, !543, !545, !547, !548, !549, !550, !551, !552, !554, !556, !558, !560, !562, !564, !565, !566, !567, !568, !569, !571, !572, !573, !574, !576, !577, !578, !579, !580, !582, !583, !584, !585, !586, !588, !589, !590, !592, !593, !594, !596, !597, !598, !600, !601, !602, !604, !605, !606, !607, !608, !609, !611, !612, !613, !614, !615, !617, !618, !619, !620, !621, !623, !624, !625, !626, !627, !629, !630, !631, !632, !633, !635, !636, !637, !638, !639, !641, !642, !643, !644, !645, !647, !648, !649, !650, !651, !653, !654, !655, !656, !657, !659, !660, !661, !662}
!llvm.named.register.sp = !{!663}
!llvm.module.flags = !{!664, !665, !666, !667, !668, !669, !670, !671}
!llvm.ident = !{!672}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/cifs/fs_context.c", i32 72, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/cifs/fs_context.c", i32 73, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/cifs/fs_context.c", i32 74, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/cifs/fs_context.c", i32 75, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/cifs/fs_context.c", i32 76, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/cifs/fs_context.c", i32 77, i32 2}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/cifs/fs_context.c", i32 78, i32 2}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/cifs/fs_context.c", i32 79, i32 2}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/cifs/fs_context.c", i32 80, i32 2}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/cifs/fs_context.c", i32 81, i32 2}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/cifs/fs_context.c", i32 82, i32 2}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/cifs/fs_context.c", i32 83, i32 2}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/cifs/fs_context.c", i32 84, i32 2}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/cifs/fs_context.c", i32 85, i32 2}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/cifs/fs_context.c", i32 86, i32 2}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/cifs/fs_context.c", i32 87, i32 2}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/cifs/fs_context.c", i32 88, i32 2}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/cifs/fs_context.c", i32 89, i32 2}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/cifs/fs_context.c", i32 90, i32 2}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/cifs/fs_context.c", i32 91, i32 2}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/cifs/fs_context.c", i32 92, i32 2}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/cifs/fs_context.c", i32 93, i32 2}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/cifs/fs_context.c", i32 94, i32 2}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/cifs/fs_context.c", i32 95, i32 2}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/cifs/fs_context.c", i32 96, i32 2}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/cifs/fs_context.c", i32 97, i32 2}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/cifs/fs_context.c", i32 98, i32 2}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/cifs/fs_context.c", i32 99, i32 2}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/cifs/fs_context.c", i32 100, i32 2}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/cifs/fs_context.c", i32 101, i32 2}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/cifs/fs_context.c", i32 102, i32 2}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/cifs/fs_context.c", i32 103, i32 2}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/cifs/fs_context.c", i32 104, i32 2}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/cifs/fs_context.c", i32 105, i32 2}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/cifs/fs_context.c", i32 106, i32 2}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/cifs/fs_context.c", i32 107, i32 2}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/cifs/fs_context.c", i32 108, i32 2}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/cifs/fs_context.c", i32 109, i32 2}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/cifs/fs_context.c", i32 110, i32 2}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/cifs/fs_context.c", i32 111, i32 2}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/cifs/fs_context.c", i32 112, i32 2}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/cifs/fs_context.c", i32 113, i32 2}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/cifs/fs_context.c", i32 114, i32 2}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/cifs/fs_context.c", i32 115, i32 2}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../fs/cifs/fs_context.c", i32 116, i32 2}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../fs/cifs/fs_context.c", i32 117, i32 2}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/cifs/fs_context.c", i32 118, i32 2}
!94 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/cifs/fs_context.c", i32 119, i32 2}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../fs/cifs/fs_context.c", i32 120, i32 2}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../fs/cifs/fs_context.c", i32 121, i32 2}
!100 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../fs/cifs/fs_context.c", i32 122, i32 2}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../fs/cifs/fs_context.c", i32 123, i32 2}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../fs/cifs/fs_context.c", i32 124, i32 2}
!106 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../fs/cifs/fs_context.c", i32 125, i32 2}
!108 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../fs/cifs/fs_context.c", i32 126, i32 2}
!110 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../fs/cifs/fs_context.c", i32 127, i32 2}
!112 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../fs/cifs/fs_context.c", i32 128, i32 2}
!114 = !{ptr @.str.57, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/cifs/fs_context.c", i32 131, i32 2}
!116 = !{ptr @.str.58, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../fs/cifs/fs_context.c", i32 132, i32 2}
!118 = !{ptr @.str.59, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../fs/cifs/fs_context.c", i32 133, i32 2}
!120 = !{ptr @.str.60, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../fs/cifs/fs_context.c", i32 134, i32 2}
!122 = !{ptr @.str.61, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../fs/cifs/fs_context.c", i32 135, i32 2}
!124 = !{ptr @.str.62, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../fs/cifs/fs_context.c", i32 136, i32 2}
!126 = !{ptr @.str.63, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../fs/cifs/fs_context.c", i32 137, i32 2}
!128 = !{ptr @.str.64, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../fs/cifs/fs_context.c", i32 138, i32 2}
!130 = !{ptr @.str.65, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../fs/cifs/fs_context.c", i32 139, i32 2}
!132 = !{ptr @.str.66, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../fs/cifs/fs_context.c", i32 140, i32 2}
!134 = !{ptr @.str.67, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../fs/cifs/fs_context.c", i32 141, i32 2}
!136 = !{ptr @.str.68, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../fs/cifs/fs_context.c", i32 142, i32 2}
!138 = !{ptr @.str.69, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../fs/cifs/fs_context.c", i32 143, i32 2}
!140 = !{ptr @.str.70, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../fs/cifs/fs_context.c", i32 144, i32 2}
!142 = !{ptr @.str.71, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../fs/cifs/fs_context.c", i32 145, i32 2}
!144 = !{ptr @.str.72, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../fs/cifs/fs_context.c", i32 146, i32 2}
!146 = !{ptr @.str.73, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../fs/cifs/fs_context.c", i32 147, i32 2}
!148 = !{ptr @.str.74, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../fs/cifs/fs_context.c", i32 148, i32 2}
!150 = !{ptr @.str.75, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../fs/cifs/fs_context.c", i32 149, i32 2}
!152 = !{ptr @.str.76, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../fs/cifs/fs_context.c", i32 150, i32 2}
!154 = !{ptr @.str.77, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../fs/cifs/fs_context.c", i32 151, i32 2}
!156 = !{ptr @.str.78, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../fs/cifs/fs_context.c", i32 152, i32 2}
!158 = !{ptr @.str.79, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../fs/cifs/fs_context.c", i32 153, i32 2}
!160 = !{ptr @.str.80, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../fs/cifs/fs_context.c", i32 156, i32 2}
!162 = !{ptr @.str.81, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../fs/cifs/fs_context.c", i32 157, i32 2}
!164 = !{ptr @.str.82, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../fs/cifs/fs_context.c", i32 158, i32 2}
!166 = !{ptr @.str.83, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../fs/cifs/fs_context.c", i32 159, i32 2}
!168 = !{ptr @.str.84, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../fs/cifs/fs_context.c", i32 160, i32 2}
!170 = !{ptr @.str.85, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../fs/cifs/fs_context.c", i32 161, i32 2}
!172 = !{ptr @.str.86, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../fs/cifs/fs_context.c", i32 162, i32 2}
!174 = !{ptr @.str.87, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../fs/cifs/fs_context.c", i32 163, i32 2}
!176 = !{ptr @.str.88, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../fs/cifs/fs_context.c", i32 164, i32 2}
!178 = !{ptr @.str.89, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../fs/cifs/fs_context.c", i32 165, i32 2}
!180 = !{ptr @.str.90, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../fs/cifs/fs_context.c", i32 166, i32 2}
!182 = !{ptr @.str.91, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../fs/cifs/fs_context.c", i32 167, i32 2}
!184 = !{ptr @.str.92, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../fs/cifs/fs_context.c", i32 168, i32 2}
!186 = !{ptr @.str.93, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../fs/cifs/fs_context.c", i32 169, i32 2}
!188 = !{ptr @.str.94, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../fs/cifs/fs_context.c", i32 170, i32 2}
!190 = !{ptr @.str.95, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../fs/cifs/fs_context.c", i32 171, i32 2}
!192 = !{ptr @.str.96, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../fs/cifs/fs_context.c", i32 172, i32 2}
!194 = !{ptr @.str.97, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../fs/cifs/fs_context.c", i32 175, i32 2}
!196 = !{ptr @.str.98, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../fs/cifs/fs_context.c", i32 176, i32 2}
!198 = !{ptr @.str.99, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../fs/cifs/fs_context.c", i32 177, i32 2}
!200 = !{ptr @.str.100, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../fs/cifs/fs_context.c", i32 178, i32 2}
!202 = !{ptr @.str.101, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../fs/cifs/fs_context.c", i32 179, i32 2}
!204 = !{ptr @.str.102, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../fs/cifs/fs_context.c", i32 180, i32 2}
!206 = !{ptr @.str.103, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../fs/cifs/fs_context.c", i32 181, i32 2}
!208 = !{ptr @.str.104, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../fs/cifs/fs_context.c", i32 182, i32 2}
!210 = !{ptr @.str.105, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../fs/cifs/fs_context.c", i32 183, i32 2}
!212 = !{ptr @.str.106, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../fs/cifs/fs_context.c", i32 184, i32 2}
!214 = !{ptr @.str.107, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../fs/cifs/fs_context.c", i32 185, i32 2}
!216 = !{ptr @.str.108, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../fs/cifs/fs_context.c", i32 190, i32 2}
!218 = !{ptr @.str.109, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../fs/cifs/fs_context.c", i32 191, i32 2}
!220 = !{ptr @smb3_fs_parameters, !221, !"smb3_fs_parameters", i1 false, i1 false}
!221 = !{!"../fs/cifs/fs_context.c", i32 70, i32 32}
!222 = !{ptr @.str.110, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../fs/cifs/fs_context.c", i32 417, i32 28}
!224 = !{ptr @.str.111, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../fs/cifs/fs_context.c", i32 484, i32 23}
!226 = !{ptr @.str.112, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../fs/cifs/fs_context.c", i32 488, i32 3}
!228 = !{ptr @smb3_parse_devname._rs, !227, !"_rs", i1 false, i1 false}
!229 = !{ptr @__func__.smb3_parse_devname, !227, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @.str.113, !227, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @.str.114, !227, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @smb3_parse_devname._entry, !227, !"_entry", i1 false, i1 false}
!233 = !{ptr @smb3_parse_devname._entry_ptr, !227, !"_entry_ptr", i1 false, i1 false}
!234 = distinct !{null, !235, !"__warned", i1 false, i1 false}
!235 = !{!"../fs/cifs/fs_context.c", i32 1502, i32 18}
!236 = distinct !{null, !237, !"__warned", i1 false, i1 false}
!237 = !{!"../fs/cifs/fs_context.c", i32 1503, i32 19}
!238 = distinct !{null, !239, !"__warned", i1 false, i1 false}
!239 = !{!"../fs/cifs/fs_context.c", i32 1504, i32 19}
!240 = !{ptr @smb3_update_mnt_flags._rs, !241, !"_rs", i1 false, i1 false}
!241 = !{!"../fs/cifs/fs_context.c", i32 1758, i32 4}
!242 = !{ptr @__func__.smb3_update_mnt_flags, !241, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @.str.117, !241, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @smb3_update_mnt_flags._entry, !241, !"_entry", i1 false, i1 false}
!245 = !{ptr @smb3_update_mnt_flags._entry_ptr, !241, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @smb3_fs_context_ops, !247, !"smb3_fs_context_ops", i1 false, i1 false}
!247 = !{!"../fs/cifs/fs_context.c", i32 549, i32 43}
!248 = !{ptr @.str.118, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../fs/cifs/fs_context.c", i32 845, i32 44}
!250 = !{ptr @smb3_fs_context_parse_param._rs, !251, !"_rs", i1 false, i1 false}
!251 = !{!"../fs/cifs/fs_context.c", i32 850, i32 2}
!252 = !{ptr @.str.119, !251, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @.str.120, !251, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @.str.121, !251, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @smb3_fs_context_parse_param.descriptor, !251, !"descriptor", i1 false, i1 false}
!256 = !{ptr @smb3_fs_context_parse_param._rs.122, !257, !"_rs", i1 false, i1 false}
!257 = !{!"../fs/cifs/fs_context.c", i32 875, i32 3}
!258 = !{ptr @.str.123, !257, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @smb3_fs_context_parse_param._entry, !257, !"_entry", i1 false, i1 false}
!260 = !{ptr @smb3_fs_context_parse_param._entry_ptr, !257, !"_entry_ptr", i1 false, i1 false}
!261 = distinct !{null, !262, !"__warned", i1 false, i1 false}
!262 = !{!"../fs/cifs/fs_context.c", i32 961, i32 19}
!263 = distinct !{null, !264, !"__warned", i1 false, i1 false}
!264 = !{!"../fs/cifs/fs_context.c", i32 968, i32 19}
!265 = distinct !{null, !266, !"__warned", i1 false, i1 false}
!266 = !{!"../fs/cifs/fs_context.c", i32 975, i32 19}
!267 = distinct !{null, !268, !"__warned", i1 false, i1 false}
!268 = !{!"../fs/cifs/fs_context.c", i32 982, i32 19}
!269 = distinct !{null, !270, !"__warned", i1 false, i1 false}
!270 = !{!"../fs/cifs/fs_context.c", i32 989, i32 19}
!271 = !{ptr @.str.128, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../fs/cifs/fs_context.c", i32 1016, i32 4}
!273 = !{ptr @smb3_fs_context_parse_param._rs.129, !272, !"_rs", i1 false, i1 false}
!274 = !{ptr @.str.131, !272, !"<string literal>", i1 false, i1 false}
!275 = !{ptr @smb3_fs_context_parse_param._entry.130, !272, !"_entry", i1 false, i1 false}
!276 = !{ptr @smb3_fs_context_parse_param._entry_ptr.132, !272, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.133, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../fs/cifs/fs_context.c", i32 1037, i32 4}
!279 = !{ptr @smb3_fs_context_parse_param._rs.134, !278, !"_rs", i1 false, i1 false}
!280 = !{ptr @.str.136, !278, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @smb3_fs_context_parse_param._entry.135, !278, !"_entry", i1 false, i1 false}
!282 = !{ptr @smb3_fs_context_parse_param._entry_ptr.137, !278, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.138, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../fs/cifs/fs_context.c", i32 1054, i32 4}
!285 = !{ptr @smb3_fs_context_parse_param._rs.139, !284, !"_rs", i1 false, i1 false}
!286 = !{ptr @.str.141, !284, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @smb3_fs_context_parse_param._entry.140, !284, !"_entry", i1 false, i1 false}
!288 = !{ptr @smb3_fs_context_parse_param._entry_ptr.142, !284, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.143, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../fs/cifs/fs_context.c", i32 1061, i32 4}
!291 = !{ptr @smb3_fs_context_parse_param._rs.144, !290, !"_rs", i1 false, i1 false}
!292 = !{ptr @.str.146, !290, !"<string literal>", i1 false, i1 false}
!293 = !{ptr @smb3_fs_context_parse_param._entry.145, !290, !"_entry", i1 false, i1 false}
!294 = !{ptr @smb3_fs_context_parse_param._entry_ptr.147, !290, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @.str.148, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../fs/cifs/fs_context.c", i32 1067, i32 4}
!297 = !{ptr @smb3_fs_context_parse_param._rs.149, !296, !"_rs", i1 false, i1 false}
!298 = !{ptr @.str.151, !296, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @smb3_fs_context_parse_param._entry.150, !296, !"_entry", i1 false, i1 false}
!300 = !{ptr @smb3_fs_context_parse_param._entry_ptr.152, !296, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @.str.153, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../fs/cifs/fs_context.c", i32 1072, i32 4}
!303 = !{ptr @smb3_fs_context_parse_param._rs.154, !302, !"_rs", i1 false, i1 false}
!304 = !{ptr @.str.156, !302, !"<string literal>", i1 false, i1 false}
!305 = !{ptr @smb3_fs_context_parse_param._entry.155, !302, !"_entry", i1 false, i1 false}
!306 = !{ptr @smb3_fs_context_parse_param._entry_ptr.157, !302, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.158, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../fs/cifs/fs_context.c", i32 1085, i32 4}
!309 = !{ptr @smb3_fs_context_parse_param._rs.159, !308, !"_rs", i1 false, i1 false}
!310 = !{ptr @.str.161, !308, !"<string literal>", i1 false, i1 false}
!311 = !{ptr @smb3_fs_context_parse_param._entry.160, !308, !"_entry", i1 false, i1 false}
!312 = !{ptr @smb3_fs_context_parse_param._entry_ptr.162, !308, !"_entry_ptr", i1 false, i1 false}
!313 = !{ptr @.str.163, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../fs/cifs/fs_context.c", i32 1093, i32 4}
!315 = !{ptr @smb3_fs_context_parse_param._rs.164, !314, !"_rs", i1 false, i1 false}
!316 = !{ptr @.str.166, !314, !"<string literal>", i1 false, i1 false}
!317 = !{ptr @smb3_fs_context_parse_param._entry.165, !314, !"_entry", i1 false, i1 false}
!318 = !{ptr @smb3_fs_context_parse_param._entry_ptr.167, !314, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @.str.168, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../fs/cifs/fs_context.c", i32 1105, i32 4}
!321 = !{ptr @smb3_fs_context_parse_param._rs.169, !320, !"_rs", i1 false, i1 false}
!322 = !{ptr @.str.171, !320, !"<string literal>", i1 false, i1 false}
!323 = !{ptr @smb3_fs_context_parse_param._entry.170, !320, !"_entry", i1 false, i1 false}
!324 = !{ptr @smb3_fs_context_parse_param._entry_ptr.172, !320, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @.str.173, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../fs/cifs/fs_context.c", i32 1116, i32 4}
!327 = !{ptr @smb3_fs_context_parse_param._rs.174, !326, !"_rs", i1 false, i1 false}
!328 = !{ptr @.str.176, !326, !"<string literal>", i1 false, i1 false}
!329 = !{ptr @smb3_fs_context_parse_param._entry.175, !326, !"_entry", i1 false, i1 false}
!330 = !{ptr @smb3_fs_context_parse_param._entry_ptr.177, !326, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @.str.178, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../fs/cifs/fs_context.c", i32 1119, i32 4}
!333 = !{ptr @smb3_fs_context_parse_param._rs.179, !332, !"_rs", i1 false, i1 false}
!334 = !{ptr @.str.181, !332, !"<string literal>", i1 false, i1 false}
!335 = !{ptr @smb3_fs_context_parse_param._entry.180, !332, !"_entry", i1 false, i1 false}
!336 = !{ptr @smb3_fs_context_parse_param._entry_ptr.182, !332, !"_entry_ptr", i1 false, i1 false}
!337 = !{ptr @.str.183, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../fs/cifs/fs_context.c", i32 1122, i32 4}
!339 = !{ptr @smb3_fs_context_parse_param._rs.184, !338, !"_rs", i1 false, i1 false}
!340 = !{ptr @.str.186, !338, !"<string literal>", i1 false, i1 false}
!341 = !{ptr @smb3_fs_context_parse_param._entry.185, !338, !"_entry", i1 false, i1 false}
!342 = !{ptr @smb3_fs_context_parse_param._entry_ptr.187, !338, !"_entry_ptr", i1 false, i1 false}
!343 = !{ptr @.str.188, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../fs/cifs/fs_context.c", i32 1127, i32 4}
!345 = !{ptr @smb3_fs_context_parse_param._rs.189, !344, !"_rs", i1 false, i1 false}
!346 = !{ptr @.str.191, !344, !"<string literal>", i1 false, i1 false}
!347 = !{ptr @smb3_fs_context_parse_param._entry.190, !344, !"_entry", i1 false, i1 false}
!348 = !{ptr @smb3_fs_context_parse_param._entry_ptr.192, !344, !"_entry_ptr", i1 false, i1 false}
!349 = !{ptr @smb3_fs_context_parse_param._rs.193, !350, !"_rs", i1 false, i1 false}
!350 = !{!"../fs/cifs/fs_context.c", i32 1132, i32 4}
!351 = !{ptr @smb3_fs_context_parse_param._entry.194, !350, !"_entry", i1 false, i1 false}
!352 = !{ptr @smb3_fs_context_parse_param._entry_ptr.195, !350, !"_entry_ptr", i1 false, i1 false}
!353 = !{ptr @.str.197, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../fs/cifs/fs_context.c", i32 1147, i32 4}
!355 = !{ptr @smb3_fs_context_parse_param._entry.196, !354, !"_entry", i1 false, i1 false}
!356 = !{ptr @smb3_fs_context_parse_param._entry_ptr.198, !354, !"_entry_ptr", i1 false, i1 false}
!357 = !{ptr @.str.199, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../fs/cifs/fs_context.c", i32 1152, i32 4}
!359 = !{ptr @smb3_fs_context_parse_param._rs.200, !358, !"_rs", i1 false, i1 false}
!360 = !{ptr @.str.202, !358, !"<string literal>", i1 false, i1 false}
!361 = !{ptr @smb3_fs_context_parse_param._entry.201, !358, !"_entry", i1 false, i1 false}
!362 = !{ptr @smb3_fs_context_parse_param._entry_ptr.203, !358, !"_entry_ptr", i1 false, i1 false}
!363 = !{ptr @.str.204, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../fs/cifs/fs_context.c", i32 1164, i32 4}
!365 = !{ptr @smb3_fs_context_parse_param._rs.205, !364, !"_rs", i1 false, i1 false}
!366 = !{ptr @.str.207, !364, !"<string literal>", i1 false, i1 false}
!367 = !{ptr @smb3_fs_context_parse_param._entry.206, !364, !"_entry", i1 false, i1 false}
!368 = !{ptr @smb3_fs_context_parse_param._entry_ptr.208, !364, !"_entry_ptr", i1 false, i1 false}
!369 = !{ptr @.str.210, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../fs/cifs/fs_context.c", i32 1176, i32 4}
!371 = !{ptr @smb3_fs_context_parse_param._entry.209, !370, !"_entry", i1 false, i1 false}
!372 = !{ptr @smb3_fs_context_parse_param._entry_ptr.211, !370, !"_entry_ptr", i1 false, i1 false}
!373 = !{ptr @.str.213, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../fs/cifs/fs_context.c", i32 1184, i32 4}
!375 = !{ptr @smb3_fs_context_parse_param._entry.212, !374, !"_entry", i1 false, i1 false}
!376 = !{ptr @smb3_fs_context_parse_param._entry_ptr.214, !374, !"_entry_ptr", i1 false, i1 false}
!377 = !{ptr @.str.215, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../fs/cifs/fs_context.c", i32 1191, i32 4}
!379 = !{ptr @smb3_fs_context_parse_param._rs.216, !378, !"_rs", i1 false, i1 false}
!380 = !{ptr @.str.218, !378, !"<string literal>", i1 false, i1 false}
!381 = !{ptr @smb3_fs_context_parse_param._entry.217, !378, !"_entry", i1 false, i1 false}
!382 = !{ptr @smb3_fs_context_parse_param._entry_ptr.219, !378, !"_entry_ptr", i1 false, i1 false}
!383 = !{ptr @smb3_fs_context_parse_param._rs.220, !384, !"_rs", i1 false, i1 false}
!384 = !{!"../fs/cifs/fs_context.c", i32 1194, i32 3}
!385 = !{ptr @.str.222, !384, !"<string literal>", i1 false, i1 false}
!386 = !{ptr @smb3_fs_context_parse_param.descriptor.221, !384, !"descriptor", i1 false, i1 false}
!387 = !{ptr @.str.224, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../fs/cifs/fs_context.c", i32 1200, i32 4}
!389 = !{ptr @smb3_fs_context_parse_param._entry.223, !388, !"_entry", i1 false, i1 false}
!390 = !{ptr @smb3_fs_context_parse_param._entry_ptr.225, !388, !"_entry_ptr", i1 false, i1 false}
!391 = !{ptr @.str.227, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../fs/cifs/fs_context.c", i32 1207, i32 4}
!393 = !{ptr @smb3_fs_context_parse_param._entry.226, !392, !"_entry", i1 false, i1 false}
!394 = !{ptr @smb3_fs_context_parse_param._entry_ptr.228, !392, !"_entry_ptr", i1 false, i1 false}
!395 = !{ptr @.str.229, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../fs/cifs/fs_context.c", i32 1211, i32 34}
!397 = !{ptr @.str.230, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../fs/cifs/fs_context.c", i32 1215, i32 5}
!399 = !{ptr @smb3_fs_context_parse_param._rs.231, !398, !"_rs", i1 false, i1 false}
!400 = !{ptr @.str.233, !398, !"<string literal>", i1 false, i1 false}
!401 = !{ptr @smb3_fs_context_parse_param._entry.232, !398, !"_entry", i1 false, i1 false}
!402 = !{ptr @smb3_fs_context_parse_param._entry_ptr.234, !398, !"_entry_ptr", i1 false, i1 false}
!403 = !{ptr @smb3_fs_context_parse_param._rs.235, !404, !"_rs", i1 false, i1 false}
!404 = !{!"../fs/cifs/fs_context.c", i32 1222, i32 3}
!405 = !{ptr @.str.237, !404, !"<string literal>", i1 false, i1 false}
!406 = !{ptr @smb3_fs_context_parse_param.descriptor.236, !404, !"descriptor", i1 false, i1 false}
!407 = !{ptr @.str.239, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../fs/cifs/fs_context.c", i32 1242, i32 4}
!409 = !{ptr @smb3_fs_context_parse_param._entry.238, !408, !"_entry", i1 false, i1 false}
!410 = !{ptr @smb3_fs_context_parse_param._entry_ptr.240, !408, !"_entry_ptr", i1 false, i1 false}
!411 = !{ptr @.str.242, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../fs/cifs/fs_context.c", i32 1262, i32 4}
!413 = !{ptr @smb3_fs_context_parse_param._entry.241, !412, !"_entry", i1 false, i1 false}
!414 = !{ptr @smb3_fs_context_parse_param._entry_ptr.243, !412, !"_entry_ptr", i1 false, i1 false}
!415 = !{ptr @.str.244, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../fs/cifs/fs_context.c", i32 1267, i32 34}
!417 = !{ptr @.str.246, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../fs/cifs/fs_context.c", i32 1269, i32 5}
!419 = !{ptr @smb3_fs_context_parse_param._entry.245, !418, !"_entry", i1 false, i1 false}
!420 = !{ptr @smb3_fs_context_parse_param._entry_ptr.247, !418, !"_entry_ptr", i1 false, i1 false}
!421 = !{ptr @.str.249, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../fs/cifs/fs_context.c", i32 1277, i32 3}
!423 = !{ptr @smb3_fs_context_parse_param._entry.248, !422, !"_entry", i1 false, i1 false}
!424 = !{ptr @smb3_fs_context_parse_param._entry_ptr.250, !422, !"_entry_ptr", i1 false, i1 false}
!425 = distinct !{null, !426, !"__already_done", i1 false, i1 false}
!426 = !{!"../fs/cifs/fs_context.c", i32 1299, i32 3}
!427 = !{ptr @.str.252, !426, !"<string literal>", i1 false, i1 false}
!428 = !{ptr @smb3_fs_context_parse_param._entry.251, !426, !"_entry", i1 false, i1 false}
!429 = !{ptr @smb3_fs_context_parse_param._entry_ptr.253, !426, !"_entry_ptr", i1 false, i1 false}
!430 = distinct !{null, !431, !"__already_done", i1 false, i1 false}
!431 = !{!"../fs/cifs/fs_context.c", i32 1317, i32 5}
!432 = !{ptr @.str.256, !431, !"<string literal>", i1 false, i1 false}
!433 = !{ptr @smb3_fs_context_parse_param._entry.255, !431, !"_entry", i1 false, i1 false}
!434 = !{ptr @smb3_fs_context_parse_param._entry_ptr.257, !431, !"_entry_ptr", i1 false, i1 false}
!435 = distinct !{null, !436, !"__already_done", i1 false, i1 false}
!436 = !{!"../fs/cifs/fs_context.c", i32 1322, i32 5}
!437 = !{ptr @smb3_fs_context_parse_param._entry.259, !436, !"_entry", i1 false, i1 false}
!438 = !{ptr @smb3_fs_context_parse_param._entry_ptr.260, !436, !"_entry_ptr", i1 false, i1 false}
!439 = !{ptr @.str.262, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../fs/cifs/fs_context.c", i32 1399, i32 3}
!441 = !{ptr @smb3_fs_context_parse_param._entry.261, !440, !"_entry", i1 false, i1 false}
!442 = !{ptr @smb3_fs_context_parse_param._entry_ptr.263, !440, !"_entry_ptr", i1 false, i1 false}
!443 = !{ptr @.str.264, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../fs/cifs/fs_context.c", i32 1424, i32 5}
!445 = !{ptr @smb3_fs_context_parse_param._rs.265, !444, !"_rs", i1 false, i1 false}
!446 = !{ptr @.str.267, !444, !"<string literal>", i1 false, i1 false}
!447 = !{ptr @smb3_fs_context_parse_param._entry.266, !444, !"_entry", i1 false, i1 false}
!448 = !{ptr @smb3_fs_context_parse_param._entry_ptr.268, !444, !"_entry_ptr", i1 false, i1 false}
!449 = !{ptr @smb3_fs_context_parse_param._rs.269, !450, !"_rs", i1 false, i1 false}
!450 = !{!"../fs/cifs/fs_context.c", i32 1430, i32 5}
!451 = !{ptr @smb3_fs_context_parse_param._entry.270, !450, !"_entry", i1 false, i1 false}
!452 = !{ptr @smb3_fs_context_parse_param._entry_ptr.271, !450, !"_entry_ptr", i1 false, i1 false}
!453 = !{ptr @smb3_fs_context_parse_param._rs.272, !454, !"_rs", i1 false, i1 false}
!454 = !{!"../fs/cifs/fs_context.c", i32 1441, i32 5}
!455 = !{ptr @smb3_fs_context_parse_param._entry.273, !454, !"_entry", i1 false, i1 false}
!456 = !{ptr @smb3_fs_context_parse_param._entry_ptr.274, !454, !"_entry_ptr", i1 false, i1 false}
!457 = !{ptr @.str.275, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../fs/cifs/fs_context.c", i32 346, i32 4}
!459 = !{ptr @cifs_parse_smb_version._rs, !458, !"_rs", i1 false, i1 false}
!460 = !{ptr @__func__.cifs_parse_smb_version, !458, !"<string literal>", i1 false, i1 false}
!461 = !{ptr @.str.276, !458, !"<string literal>", i1 false, i1 false}
!462 = !{ptr @cifs_parse_smb_version._entry, !458, !"_entry", i1 false, i1 false}
!463 = !{ptr @cifs_parse_smb_version._entry_ptr, !458, !"_entry_ptr", i1 false, i1 false}
!464 = !{ptr @.str.277, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../fs/cifs/fs_context.c", i32 350, i32 4}
!466 = !{ptr @cifs_parse_smb_version._rs.278, !465, !"_rs", i1 false, i1 false}
!467 = !{ptr @.str.280, !465, !"<string literal>", i1 false, i1 false}
!468 = !{ptr @cifs_parse_smb_version._entry.279, !465, !"_entry", i1 false, i1 false}
!469 = !{ptr @cifs_parse_smb_version._entry_ptr.281, !465, !"_entry_ptr", i1 false, i1 false}
!470 = !{ptr @.str.282, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../fs/cifs/fs_context.c", i32 353, i32 3}
!472 = !{ptr @cifs_parse_smb_version._rs.283, !471, !"_rs", i1 false, i1 false}
!473 = !{ptr @.str.285, !471, !"<string literal>", i1 false, i1 false}
!474 = !{ptr @cifs_parse_smb_version._entry.284, !471, !"_entry", i1 false, i1 false}
!475 = !{ptr @cifs_parse_smb_version._entry_ptr.286, !471, !"_entry_ptr", i1 false, i1 false}
!476 = !{ptr @cifs_parse_smb_version._rs.287, !477, !"_rs", i1 false, i1 false}
!477 = !{!"../fs/cifs/fs_context.c", i32 359, i32 4}
!478 = !{ptr @cifs_parse_smb_version._entry.288, !477, !"_entry", i1 false, i1 false}
!479 = !{ptr @cifs_parse_smb_version._entry_ptr.289, !477, !"_entry_ptr", i1 false, i1 false}
!480 = !{ptr @.str.290, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../fs/cifs/fs_context.c", i32 363, i32 4}
!482 = !{ptr @cifs_parse_smb_version._rs.291, !481, !"_rs", i1 false, i1 false}
!483 = !{ptr @.str.293, !481, !"<string literal>", i1 false, i1 false}
!484 = !{ptr @cifs_parse_smb_version._entry.292, !481, !"_entry", i1 false, i1 false}
!485 = !{ptr @cifs_parse_smb_version._entry_ptr.294, !481, !"_entry_ptr", i1 false, i1 false}
!486 = !{ptr @.str.295, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../fs/cifs/fs_context.c", i32 402, i32 3}
!488 = !{ptr @cifs_parse_smb_version._rs.296, !487, !"_rs", i1 false, i1 false}
!489 = !{ptr @.str.298, !487, !"<string literal>", i1 false, i1 false}
!490 = !{ptr @cifs_parse_smb_version._entry.297, !487, !"_entry", i1 false, i1 false}
!491 = !{ptr @cifs_parse_smb_version._entry_ptr.299, !487, !"_entry_ptr", i1 false, i1 false}
!492 = !{ptr @.str.300, !493, !"<string literal>", i1 false, i1 false}
!493 = !{!"../fs/cifs/fs_context.c", i32 43, i32 11}
!494 = !{ptr @.str.301, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../fs/cifs/fs_context.c", i32 44, i32 12}
!496 = !{ptr @.str.302, !497, !"<string literal>", i1 false, i1 false}
!497 = !{!"../fs/cifs/fs_context.c", i32 45, i32 12}
!498 = !{ptr @.str.303, !499, !"<string literal>", i1 false, i1 false}
!499 = !{!"../fs/cifs/fs_context.c", i32 46, i32 12}
!500 = !{ptr @.str.304, !501, !"<string literal>", i1 false, i1 false}
!501 = !{!"../fs/cifs/fs_context.c", i32 47, i32 13}
!502 = !{ptr @.str.305, !503, !"<string literal>", i1 false, i1 false}
!503 = !{!"../fs/cifs/fs_context.c", i32 48, i32 13}
!504 = !{ptr @.str.306, !505, !"<string literal>", i1 false, i1 false}
!505 = !{!"../fs/cifs/fs_context.c", i32 49, i32 13}
!506 = !{ptr @.str.307, !507, !"<string literal>", i1 false, i1 false}
!507 = !{!"../fs/cifs/fs_context.c", i32 50, i32 13}
!508 = !{ptr @.str.308, !509, !"<string literal>", i1 false, i1 false}
!509 = !{!"../fs/cifs/fs_context.c", i32 51, i32 14}
!510 = !{ptr @cifs_smb_version_tokens, !511, !"cifs_smb_version_tokens", i1 false, i1 false}
!511 = !{!"../fs/cifs/fs_context.c", i32 42, i32 28}
!512 = !{ptr @.str.309, !513, !"<string literal>", i1 false, i1 false}
!513 = !{!"../fs/cifs/fs_context.c", i32 210, i32 3}
!514 = !{ptr @cifs_parse_security_flavors._rs, !513, !"_rs", i1 false, i1 false}
!515 = !{ptr @__func__.cifs_parse_security_flavors, !513, !"<string literal>", i1 false, i1 false}
!516 = !{ptr @.str.310, !513, !"<string literal>", i1 false, i1 false}
!517 = !{ptr @cifs_parse_security_flavors._entry, !513, !"_entry", i1 false, i1 false}
!518 = !{ptr @cifs_parse_security_flavors._entry_ptr, !513, !"_entry_ptr", i1 false, i1 false}
!519 = !{ptr @.str.311, !520, !"<string literal>", i1 false, i1 false}
!520 = !{!"../fs/cifs/fs_context.c", i32 234, i32 3}
!521 = !{ptr @cifs_parse_security_flavors._rs.312, !520, !"_rs", i1 false, i1 false}
!522 = !{ptr @.str.314, !520, !"<string literal>", i1 false, i1 false}
!523 = !{ptr @cifs_parse_security_flavors._entry.313, !520, !"_entry", i1 false, i1 false}
!524 = !{ptr @cifs_parse_security_flavors._entry_ptr.315, !520, !"_entry_ptr", i1 false, i1 false}
!525 = !{ptr @.str.316, !526, !"<string literal>", i1 false, i1 false}
!526 = !{!"../fs/cifs/fs_context.c", i32 57, i32 18}
!527 = !{ptr @.str.317, !528, !"<string literal>", i1 false, i1 false}
!528 = !{!"../fs/cifs/fs_context.c", i32 58, i32 19}
!529 = !{ptr @.str.318, !530, !"<string literal>", i1 false, i1 false}
!530 = !{!"../fs/cifs/fs_context.c", i32 59, i32 19}
!531 = !{ptr @.str.319, !532, !"<string literal>", i1 false, i1 false}
!532 = !{!"../fs/cifs/fs_context.c", i32 60, i32 22}
!533 = !{ptr @.str.320, !534, !"<string literal>", i1 false, i1 false}
!534 = !{!"../fs/cifs/fs_context.c", i32 61, i32 21}
!535 = !{ptr @.str.321, !536, !"<string literal>", i1 false, i1 false}
!536 = !{!"../fs/cifs/fs_context.c", i32 62, i32 20}
!537 = !{ptr @.str.322, !538, !"<string literal>", i1 false, i1 false}
!538 = !{!"../fs/cifs/fs_context.c", i32 63, i32 20}
!539 = !{ptr @.str.323, !540, !"<string literal>", i1 false, i1 false}
!540 = !{!"../fs/cifs/fs_context.c", i32 64, i32 21}
!541 = !{ptr @.str.324, !542, !"<string literal>", i1 false, i1 false}
!542 = !{!"../fs/cifs/fs_context.c", i32 65, i32 18}
!543 = !{ptr @cifs_secflavor_tokens, !544, !"cifs_secflavor_tokens", i1 false, i1 false}
!544 = !{!"../fs/cifs/fs_context.c", i32 56, i32 28}
!545 = !{ptr @.str.325, !546, !"<string literal>", i1 false, i1 false}
!546 = !{!"../fs/cifs/fs_context.c", i32 287, i32 3}
!547 = !{ptr @cifs_parse_cache_flavor._rs, !546, !"_rs", i1 false, i1 false}
!548 = !{ptr @__func__.cifs_parse_cache_flavor, !546, !"<string literal>", i1 false, i1 false}
!549 = !{ptr @.str.326, !546, !"<string literal>", i1 false, i1 false}
!550 = !{ptr @cifs_parse_cache_flavor._entry, !546, !"_entry", i1 false, i1 false}
!551 = !{ptr @cifs_parse_cache_flavor._entry_ptr, !546, !"_entry_ptr", i1 false, i1 false}
!552 = !{ptr @.str.327, !553, !"<string literal>", i1 false, i1 false}
!553 = !{!"../fs/cifs/fs_context.c", i32 242, i32 21}
!554 = !{ptr @.str.328, !555, !"<string literal>", i1 false, i1 false}
!555 = !{!"../fs/cifs/fs_context.c", i32 243, i32 22}
!556 = !{ptr @.str.329, !557, !"<string literal>", i1 false, i1 false}
!557 = !{!"../fs/cifs/fs_context.c", i32 245, i32 18}
!558 = !{ptr @.str.330, !559, !"<string literal>", i1 false, i1 false}
!559 = !{!"../fs/cifs/fs_context.c", i32 246, i32 18}
!560 = !{ptr @cifs_cacheflavor_tokens, !561, !"cifs_cacheflavor_tokens", i1 false, i1 false}
!561 = !{!"../fs/cifs/fs_context.c", i32 241, i32 28}
!562 = !{ptr @.str.331, !563, !"<string literal>", i1 false, i1 false}
!563 = !{!"../fs/cifs/fs_context.c", i32 633, i32 3}
!564 = !{ptr @smb3_fs_context_validate._rs, !563, !"_rs", i1 false, i1 false}
!565 = !{ptr @__func__.smb3_fs_context_validate, !563, !"<string literal>", i1 false, i1 false}
!566 = !{ptr @.str.332, !563, !"<string literal>", i1 false, i1 false}
!567 = !{ptr @smb3_fs_context_validate._entry, !563, !"_entry", i1 false, i1 false}
!568 = !{ptr @smb3_fs_context_validate._entry_ptr, !563, !"_entry_ptr", i1 false, i1 false}
!569 = distinct !{null, !570, !"__already_done", i1 false, i1 false}
!570 = !{!"../fs/cifs/fs_context.c", i32 646, i32 3}
!571 = !{ptr @.str.334, !570, !"<string literal>", i1 false, i1 false}
!572 = !{ptr @smb3_fs_context_validate._entry.333, !570, !"_entry", i1 false, i1 false}
!573 = !{ptr @smb3_fs_context_validate._entry_ptr.335, !570, !"_entry_ptr", i1 false, i1 false}
!574 = !{ptr @.str.336, !575, !"<string literal>", i1 false, i1 false}
!575 = !{!"../fs/cifs/fs_context.c", i32 650, i32 3}
!576 = !{ptr @smb3_fs_context_validate._rs.337, !575, !"_rs", i1 false, i1 false}
!577 = !{ptr @.str.339, !575, !"<string literal>", i1 false, i1 false}
!578 = !{ptr @smb3_fs_context_validate._entry.338, !575, !"_entry", i1 false, i1 false}
!579 = !{ptr @smb3_fs_context_validate._entry_ptr.340, !575, !"_entry_ptr", i1 false, i1 false}
!580 = !{ptr @.str.341, !581, !"<string literal>", i1 false, i1 false}
!581 = !{!"../fs/cifs/fs_context.c", i32 656, i32 3}
!582 = !{ptr @smb3_fs_context_validate._rs.342, !581, !"_rs", i1 false, i1 false}
!583 = !{ptr @.str.344, !581, !"<string literal>", i1 false, i1 false}
!584 = !{ptr @smb3_fs_context_validate._entry.343, !581, !"_entry", i1 false, i1 false}
!585 = !{ptr @smb3_fs_context_validate._entry_ptr.345, !581, !"_entry_ptr", i1 false, i1 false}
!586 = !{ptr @.str.347, !587, !"<string literal>", i1 false, i1 false}
!587 = !{!"../fs/cifs/fs_context.c", i32 670, i32 4}
!588 = !{ptr @smb3_fs_context_validate._entry.346, !587, !"_entry", i1 false, i1 false}
!589 = !{ptr @smb3_fs_context_validate._entry_ptr.348, !587, !"_entry_ptr", i1 false, i1 false}
!590 = !{ptr @.str.350, !591, !"<string literal>", i1 false, i1 false}
!591 = !{!"../fs/cifs/fs_context.c", i32 680, i32 3}
!592 = !{ptr @smb3_fs_context_validate._entry.349, !591, !"_entry", i1 false, i1 false}
!593 = !{ptr @smb3_fs_context_validate._entry_ptr.351, !591, !"_entry_ptr", i1 false, i1 false}
!594 = !{ptr @.str.353, !595, !"<string literal>", i1 false, i1 false}
!595 = !{!"../fs/cifs/fs_context.c", i32 685, i32 3}
!596 = !{ptr @smb3_fs_context_validate._entry.352, !595, !"_entry", i1 false, i1 false}
!597 = !{ptr @smb3_fs_context_validate._entry_ptr.354, !595, !"_entry_ptr", i1 false, i1 false}
!598 = !{ptr @.str.355, !599, !"<string literal>", i1 false, i1 false}
!599 = !{!"../fs/cifs/fs_context.c", i32 40, i32 8}
!600 = !{ptr @.str.356, !599, !"<string literal>", i1 false, i1 false}
!601 = !{ptr @cifs_mount_mutex, !599, !"cifs_mount_mutex", i1 false, i1 false}
!602 = !{ptr @.str.357, !603, !"<string literal>", i1 false, i1 false}
!603 = !{!"../fs/cifs/fs_context.c", i32 738, i32 3}
!604 = !{ptr @smb3_verify_reconfigure_ctx._rs, !603, !"_rs", i1 false, i1 false}
!605 = !{ptr @__func__.smb3_verify_reconfigure_ctx, !603, !"<string literal>", i1 false, i1 false}
!606 = !{ptr @.str.358, !603, !"<string literal>", i1 false, i1 false}
!607 = !{ptr @smb3_verify_reconfigure_ctx._entry, !603, !"_entry", i1 false, i1 false}
!608 = !{ptr @smb3_verify_reconfigure_ctx._entry_ptr, !603, !"_entry_ptr", i1 false, i1 false}
!609 = !{ptr @.str.359, !610, !"<string literal>", i1 false, i1 false}
!610 = !{!"../fs/cifs/fs_context.c", i32 742, i32 3}
!611 = !{ptr @smb3_verify_reconfigure_ctx._rs.360, !610, !"_rs", i1 false, i1 false}
!612 = !{ptr @.str.362, !610, !"<string literal>", i1 false, i1 false}
!613 = !{ptr @smb3_verify_reconfigure_ctx._entry.361, !610, !"_entry", i1 false, i1 false}
!614 = !{ptr @smb3_verify_reconfigure_ctx._entry_ptr.363, !610, !"_entry_ptr", i1 false, i1 false}
!615 = !{ptr @.str.364, !616, !"<string literal>", i1 false, i1 false}
!616 = !{!"../fs/cifs/fs_context.c", i32 746, i32 3}
!617 = !{ptr @smb3_verify_reconfigure_ctx._rs.365, !616, !"_rs", i1 false, i1 false}
!618 = !{ptr @.str.367, !616, !"<string literal>", i1 false, i1 false}
!619 = !{ptr @smb3_verify_reconfigure_ctx._entry.366, !616, !"_entry", i1 false, i1 false}
!620 = !{ptr @smb3_verify_reconfigure_ctx._entry_ptr.368, !616, !"_entry_ptr", i1 false, i1 false}
!621 = !{ptr @.str.369, !622, !"<string literal>", i1 false, i1 false}
!622 = !{!"../fs/cifs/fs_context.c", i32 751, i32 3}
!623 = !{ptr @smb3_verify_reconfigure_ctx._rs.370, !622, !"_rs", i1 false, i1 false}
!624 = !{ptr @.str.372, !622, !"<string literal>", i1 false, i1 false}
!625 = !{ptr @smb3_verify_reconfigure_ctx._entry.371, !622, !"_entry", i1 false, i1 false}
!626 = !{ptr @smb3_verify_reconfigure_ctx._entry_ptr.373, !622, !"_entry_ptr", i1 false, i1 false}
!627 = !{ptr @.str.374, !628, !"<string literal>", i1 false, i1 false}
!628 = !{!"../fs/cifs/fs_context.c", i32 756, i32 3}
!629 = !{ptr @smb3_verify_reconfigure_ctx._rs.375, !628, !"_rs", i1 false, i1 false}
!630 = !{ptr @.str.377, !628, !"<string literal>", i1 false, i1 false}
!631 = !{ptr @smb3_verify_reconfigure_ctx._entry.376, !628, !"_entry", i1 false, i1 false}
!632 = !{ptr @smb3_verify_reconfigure_ctx._entry_ptr.378, !628, !"_entry_ptr", i1 false, i1 false}
!633 = !{ptr @.str.379, !634, !"<string literal>", i1 false, i1 false}
!634 = !{!"../fs/cifs/fs_context.c", i32 761, i32 3}
!635 = !{ptr @smb3_verify_reconfigure_ctx._rs.380, !634, !"_rs", i1 false, i1 false}
!636 = !{ptr @.str.382, !634, !"<string literal>", i1 false, i1 false}
!637 = !{ptr @smb3_verify_reconfigure_ctx._entry.381, !634, !"_entry", i1 false, i1 false}
!638 = !{ptr @smb3_verify_reconfigure_ctx._entry_ptr.383, !634, !"_entry_ptr", i1 false, i1 false}
!639 = !{ptr @.str.384, !640, !"<string literal>", i1 false, i1 false}
!640 = !{!"../fs/cifs/fs_context.c", i32 766, i32 3}
!641 = !{ptr @smb3_verify_reconfigure_ctx._rs.385, !640, !"_rs", i1 false, i1 false}
!642 = !{ptr @.str.387, !640, !"<string literal>", i1 false, i1 false}
!643 = !{ptr @smb3_verify_reconfigure_ctx._entry.386, !640, !"_entry", i1 false, i1 false}
!644 = !{ptr @smb3_verify_reconfigure_ctx._entry_ptr.388, !640, !"_entry_ptr", i1 false, i1 false}
!645 = !{ptr @.str.389, !646, !"<string literal>", i1 false, i1 false}
!646 = !{!"../fs/cifs/fs_context.c", i32 771, i32 3}
!647 = !{ptr @smb3_verify_reconfigure_ctx._rs.390, !646, !"_rs", i1 false, i1 false}
!648 = !{ptr @.str.392, !646, !"<string literal>", i1 false, i1 false}
!649 = !{ptr @smb3_verify_reconfigure_ctx._entry.391, !646, !"_entry", i1 false, i1 false}
!650 = !{ptr @smb3_verify_reconfigure_ctx._entry_ptr.393, !646, !"_entry_ptr", i1 false, i1 false}
!651 = !{ptr @.str.394, !652, !"<string literal>", i1 false, i1 false}
!652 = !{!"../fs/cifs/fs_context.c", i32 776, i32 3}
!653 = !{ptr @smb3_verify_reconfigure_ctx._rs.395, !652, !"_rs", i1 false, i1 false}
!654 = !{ptr @.str.397, !652, !"<string literal>", i1 false, i1 false}
!655 = !{ptr @smb3_verify_reconfigure_ctx._entry.396, !652, !"_entry", i1 false, i1 false}
!656 = !{ptr @smb3_verify_reconfigure_ctx._entry_ptr.398, !652, !"_entry_ptr", i1 false, i1 false}
!657 = !{ptr @.str.399, !658, !"<string literal>", i1 false, i1 false}
!658 = !{!"../fs/cifs/fs_context.c", i32 781, i32 3}
!659 = !{ptr @smb3_verify_reconfigure_ctx._rs.400, !658, !"_rs", i1 false, i1 false}
!660 = !{ptr @.str.402, !658, !"<string literal>", i1 false, i1 false}
!661 = !{ptr @smb3_verify_reconfigure_ctx._entry.401, !658, !"_entry", i1 false, i1 false}
!662 = !{ptr @smb3_verify_reconfigure_ctx._entry_ptr.403, !658, !"_entry_ptr", i1 false, i1 false}
!663 = !{!"sp"}
!664 = !{i32 1, !"wchar_size", i32 2}
!665 = !{i32 1, !"min_enum_size", i32 4}
!666 = !{i32 8, !"branch-target-enforcement", i32 0}
!667 = !{i32 8, !"sign-return-address", i32 0}
!668 = !{i32 8, !"sign-return-address-all", i32 0}
!669 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!670 = !{i32 7, !"uwtable", i32 1}
!671 = !{i32 7, !"frame-pointer", i32 2}
!672 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!673 = !{!"branch_weights", i32 1, i32 2000}
!674 = !{i8 0, i8 2}
!675 = !{i64 2148748991, i64 2148748996, i64 2148749009, i64 2148749053, i64 2148749087, i64 2148749108}
!676 = !{!"branch_weights", i32 2000, i32 1}
