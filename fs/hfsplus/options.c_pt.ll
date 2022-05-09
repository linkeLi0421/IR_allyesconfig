; ModuleID = '/llk/IR_all_yes/fs/hfsplus/options.c_pt.bc'
source_filename = "../fs/hfsplus/options.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.match_token = type { i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.user_namespace = type opaque
%struct.hfsplus_sb_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, ptr, ptr, ptr, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, i32, i32, %struct.mutex, i32, i32, i16, %struct.kuid_t, %struct.kgid_t, i32, i32, i32, i32, %struct.delayed_work, %struct.spinlock }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.51, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.18 }
%struct.llist_node = type { ptr }
%union.anon.18 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.51 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.33 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.33 = type { %struct.callback_head }
%struct.substring_t = type { ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.74, %struct.list_head, %struct.list_head, %union.anon.75 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.72 }
%union.anon.72 = type { %struct.anon.73 }
%struct.anon.73 = type { %struct.spinlock, i32 }
%union.anon.74 = type { %struct.list_head }
%union.anon.75 = type { %struct.hlist_node }
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
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }

@.str = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@tokens = internal constant { [14 x %struct.match_token], [48 x i8] } { [14 x %struct.match_token] [%struct.match_token { i32 0, ptr @.str.45 }, %struct.match_token { i32 1, ptr @.str.46 }, %struct.match_token { i32 2, ptr @.str.47 }, %struct.match_token { i32 3, ptr @.str.48 }, %struct.match_token { i32 4, ptr @.str.49 }, %struct.match_token { i32 5, ptr @.str.50 }, %struct.match_token { i32 6, ptr @.str.51 }, %struct.match_token { i32 7, ptr @.str.52 }, %struct.match_token { i32 9, ptr @.str.53 }, %struct.match_token { i32 8, ptr @.str.54 }, %struct.match_token { i32 10, ptr @.str.55 }, %struct.match_token { i32 11, ptr @.str.56 }, %struct.match_token { i32 12, ptr @.str.57 }, %struct.match_token { i32 13, ptr null }], [48 x i8] zeroinitializer }, align 32
@hfsplus_parse_options._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013hfsplus: creator requires a 4 character value\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hfsplus_parse_options\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fs/hfsplus/options.c\00", [43 x i8] zeroinitializer }, align 32
@hfsplus_parse_options._entry_ptr = internal global ptr @hfsplus_parse_options._entry, section ".printk_index", align 4
@hfsplus_parse_options._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013hfsplus: type requires a 4 character value\0A\00", [50 x i8] zeroinitializer }, align 32
@hfsplus_parse_options._entry_ptr.7 = internal global ptr @hfsplus_parse_options._entry.5, section ".printk_index", align 4
@hfsplus_parse_options._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013hfsplus: umask requires a value\0A\00", [61 x i8] zeroinitializer }, align 32
@hfsplus_parse_options._entry_ptr.10 = internal global ptr @hfsplus_parse_options._entry.8, section ".printk_index", align 4
@hfsplus_parse_options._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 136, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013hfsplus: uid requires an argument\0A\00", [59 x i8] zeroinitializer }, align 32
@hfsplus_parse_options._entry_ptr.13 = internal global ptr @hfsplus_parse_options._entry.11, section ".printk_index", align 4
@hfsplus_parse_options._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013hfsplus: invalid uid specified\0A\00", [62 x i8] zeroinitializer }, align 32
@hfsplus_parse_options._entry_ptr.16 = internal global ptr @hfsplus_parse_options._entry.14, section ".printk_index", align 4
@hfsplus_parse_options._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013hfsplus: gid requires an argument\0A\00", [59 x i8] zeroinitializer }, align 32
@hfsplus_parse_options._entry_ptr.19 = internal global ptr @hfsplus_parse_options._entry.17, section ".printk_index", align 4
@hfsplus_parse_options._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.3, ptr @.str.4, i32 152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013hfsplus: invalid gid specified\0A\00", [62 x i8] zeroinitializer }, align 32
@hfsplus_parse_options._entry_ptr.23 = internal global ptr @hfsplus_parse_options._entry.21, section ".printk_index", align 4
@hfsplus_parse_options._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.3, ptr @.str.4, i32 158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013hfsplus: part requires an argument\0A\00", [58 x i8] zeroinitializer }, align 32
@hfsplus_parse_options._entry_ptr.26 = internal global ptr @hfsplus_parse_options._entry.24, section ".printk_index", align 4
@hfsplus_parse_options._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.3, ptr @.str.4, i32 164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013hfsplus: session requires an argument\0A\00", [55 x i8] zeroinitializer }, align 32
@hfsplus_parse_options._entry_ptr.29 = internal global ptr @hfsplus_parse_options._entry.27, section ".printk_index", align 4
@hfsplus_parse_options._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.3, ptr @.str.4, i32 170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013hfsplus: unable to change nls mapping\0A\00", [55 x i8] zeroinitializer }, align 32
@hfsplus_parse_options._entry_ptr.32 = internal global ptr @hfsplus_parse_options._entry.30, section ".printk_index", align 4
@hfsplus_parse_options._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.3, ptr @.str.4, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013hfsplus: unable to load nls mapping \22%s\22\0A\00", [52 x i8] zeroinitializer }, align 32
@hfsplus_parse_options._entry_ptr.35 = internal global ptr @hfsplus_parse_options._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"utf8\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"creator\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"type\00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c",umask=%o,uid=%u,gid=%u\00", [40 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 1
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c",part=%u\00", [23 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c",session=%u\00", [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",nls=%s\00", [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c",nodecompose\00", [19 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c",nobarrier\00", [21 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"creator=%s\00", [21 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"type=%s\00", [24 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"umask=%o\00", [23 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"uid=%u\00", [25 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gid=%u\00", [25 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"part=%u\00", [24 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"session=%u\00", [21 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nls=%s\00", [25 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"decompose\00", [22 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nodecompose\00", [20 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"barrier\00", [24 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nobarrier\00", [22 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"force\00", [26 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c",= \09\0A\\\00", [25 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c", \09\0A\\\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [15 x i64] [i64 13, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 81, i32 29 }
@___asan_gen_.63 = private unnamed_addr constant [7 x i8] c"tokens\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 31, i32 28 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 117, i32 5 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 123, i32 5 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 129, i32 5 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 136, i32 5 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 141, i32 5 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 147, i32 5 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 152, i32 5 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 158, i32 5 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 164, i32 5 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 170, i32 5 }
@___asan_gen_.132 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 177, i32 5 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 207, i32 23 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 222, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 224, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 225, i32 18 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 229, i32 19 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 231, i32 19 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 233, i32 19 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 235, i32 17 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 237, i32 17 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 32, i32 17 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 33, i32 14 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 34, i32 15 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 35, i32 13 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 36, i32 13 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 37, i32 14 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 38, i32 17 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 39, i32 13 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 40, i32 19 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 41, i32 21 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 42, i32 17 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 43, i32 19 }
@___asan_gen_.202 = private constant [24 x i8] c"../fs/hfsplus/options.c\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 44, i32 15 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 242, i32 22 }
@___asan_gen_.207 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.208 = private unnamed_addr constant [28 x i8] c"../include/linux/seq_file.h\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 245, i32 24 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @hfsplus_parse_options._entry, ptr @hfsplus_parse_options._entry.11, ptr @hfsplus_parse_options._entry.14, ptr @hfsplus_parse_options._entry.17, ptr @hfsplus_parse_options._entry.21, ptr @hfsplus_parse_options._entry.24, ptr @hfsplus_parse_options._entry.27, ptr @hfsplus_parse_options._entry.30, ptr @hfsplus_parse_options._entry.33, ptr @hfsplus_parse_options._entry.5, ptr @hfsplus_parse_options._entry.8, ptr @hfsplus_parse_options._entry_ptr, ptr @hfsplus_parse_options._entry_ptr.10, ptr @hfsplus_parse_options._entry_ptr.13, ptr @hfsplus_parse_options._entry_ptr.16, ptr @hfsplus_parse_options._entry_ptr.19, ptr @hfsplus_parse_options._entry_ptr.23, ptr @hfsplus_parse_options._entry_ptr.26, ptr @hfsplus_parse_options._entry_ptr.29, ptr @hfsplus_parse_options._entry_ptr.32, ptr @hfsplus_parse_options._entry_ptr.35, ptr @hfsplus_parse_options._entry_ptr.7, ptr @.str, ptr @tokens, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tokens to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_parse_options._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_parse_options._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_parse_options._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_parse_options._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_parse_options._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_parse_options._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_parse_options._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_parse_options._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_parse_options._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_parse_options._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_parse_options._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hfsplus_fill_defaults(ptr noundef writeonly %opts) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %opts, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %creator = getelementptr inbounds %struct.hfsplus_sb_info, ptr %opts, i32 0, i32 26
  %0 = ptrtoint ptr %creator to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1061109567, ptr %creator, align 8
  %type = getelementptr inbounds %struct.hfsplus_sb_info, ptr %opts, i32 0, i32 27
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1061109567, ptr %type, align 4
  %call = tail call i32 @current_umask() #7
  %conv = trunc i32 %call to i16
  %umask = getelementptr inbounds %struct.hfsplus_sb_info, ptr %opts, i32 0, i32 28
  %2 = ptrtoint ptr %umask to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %umask, align 8
  %uid = getelementptr inbounds %struct.hfsplus_sb_info, ptr %opts, i32 0, i32 29
  %3 = tail call i32 @llvm.read_register.i32(metadata !106) #7
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 99
  %7 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cred, align 16
  %uid2 = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %uid2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %uid2, align 4
  %11 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %uid, align 4
  %gid = getelementptr inbounds %struct.hfsplus_sb_info, ptr %opts, i32 0, i32 30
  %12 = load ptr, ptr %task, align 8
  %cred8 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 99
  %13 = ptrtoint ptr %cred8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cred8, align 16
  %gid9 = getelementptr inbounds %struct.cred, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %gid9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %gid9, align 4
  %17 = ptrtoint ptr %gid to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %gid, align 8
  %part = getelementptr inbounds %struct.hfsplus_sb_info, ptr %opts, i32 0, i32 31
  %18 = ptrtoint ptr %part to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %part, align 4
  %session = getelementptr inbounds %struct.hfsplus_sb_info, ptr %opts, i32 0, i32 32
  %19 = ptrtoint ptr %session to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %session, align 8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @current_umask() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfsplus_parse_options_remount(ptr noundef %input, ptr nocapture noundef writeonly %force) local_unnamed_addr #0 align 64 {
entry:
  %input.addr = alloca ptr, align 4
  %args = alloca [3 x %struct.substring_t], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %input.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %input, ptr %input.addr, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args) #7
  %tobool.not = icmp eq ptr %input, null
  %1 = call ptr @memset(ptr %args, i32 255, i32 24)
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %call8 = call ptr @strsep(ptr noundef nonnull %input.addr, ptr noundef nonnull @.str) #7
  %cmp.not9 = icmp eq ptr %call8, null
  br i1 %cmp.not9, label %while.cond.preheader.cleanup_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call10 = phi ptr [ %call, %while.cond.backedge.while.body_crit_edge ], [ %call8, %while.cond.preheader.while.body_crit_edge ]
  %2 = ptrtoint ptr %call10 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %call10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %while.body.while.cond.backedge_crit_edge, label %if.end3

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.backedge

if.end3:                                          ; preds = %while.body
  %call4 = call i32 @match_token(ptr noundef nonnull %call10, ptr noundef nonnull @tokens, ptr noundef nonnull %args) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %call4)
  %cond = icmp eq i32 %call4, 12
  br i1 %cond, label %sw.bb, label %if.end3.while.cond.backedge_crit_edge

if.end3.while.cond.backedge_crit_edge:            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.backedge

sw.bb:                                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %force to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %force, align 4
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %sw.bb, %if.end3.while.cond.backedge_crit_edge, %while.body.while.cond.backedge_crit_edge
  %call = call ptr @strsep(ptr noundef nonnull %input.addr, ptr noundef nonnull @.str) #7
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %while.cond.backedge.cleanup_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.cond.backedge.cleanup_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %while.cond.backedge.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #7
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_token(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfsplus_parse_options(ptr noundef %input, ptr noundef %sbi) local_unnamed_addr #0 align 64 {
entry:
  %input.addr = alloca ptr, align 4
  %args = alloca [3 x %struct.substring_t], align 4
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %input.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %input, ptr %input.addr, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args) #7
  %1 = getelementptr inbounds %struct.substring_t, ptr %args, i32 0, i32 1
  %2 = call ptr @memset(ptr %args, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #7
  %3 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %tmp, align 4, !annotation !116
  %tobool.not = icmp eq ptr %input, null
  br i1 %tobool.not, label %entry.done_crit_edge, label %while.cond.preheader

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

while.cond.preheader:                             ; preds = %entry
  %call212 = call ptr @strsep(ptr noundef nonnull %input.addr, ptr noundef nonnull @.str) #7
  %cmp.not213 = icmp eq ptr %call212, null
  br i1 %cmp.not213, label %while.cond.preheader.done_crit_edge, label %while.body.lr.ph

while.cond.preheader.done_crit_edge:              ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %flags150 = getelementptr inbounds %struct.hfsplus_sb_info, ptr %sbi, i32 0, i32 33
  %nls = getelementptr inbounds %struct.hfsplus_sb_info, ptr %sbi, i32 0, i32 10
  %session = getelementptr inbounds %struct.hfsplus_sb_info, ptr %sbi, i32 0, i32 32
  %part = getelementptr inbounds %struct.hfsplus_sb_info, ptr %sbi, i32 0, i32 31
  %gid = getelementptr inbounds %struct.hfsplus_sb_info, ptr %sbi, i32 0, i32 30
  %uid = getelementptr inbounds %struct.hfsplus_sb_info, ptr %sbi, i32 0, i32 29
  %umask = getelementptr inbounds %struct.hfsplus_sb_info, ptr %sbi, i32 0, i32 28
  %type = getelementptr inbounds %struct.hfsplus_sb_info, ptr %sbi, i32 0, i32 27
  %creator = getelementptr inbounds %struct.hfsplus_sb_info, ptr %sbi, i32 0, i32 26
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %call214 = phi ptr [ %call212, %while.body.lr.ph ], [ %call, %while.cond.backedge.while.body_crit_edge ]
  %4 = ptrtoint ptr %call214 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %call214, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %while.body.while.cond.backedge_crit_edge, label %if.end3

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.backedge

if.end3:                                          ; preds = %while.body
  %call4 = call i32 @match_token(ptr noundef nonnull %call214, ptr noundef nonnull @tokens, ptr noundef nonnull %args) #7
  %6 = zext i32 %call4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call4, label %if.end3.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb11
    i32 2, label %sw.bb22
    i32 3, label %sw.bb33
    i32 4, label %sw.bb62
    i32 5, label %sw.bb95
    i32 6, label %sw.bb106
    i32 7, label %sw.bb117
    i32 9, label %sw.bb142
    i32 8, label %sw.bb143
    i32 10, label %sw.bb145
    i32 11, label %sw.bb147
    i32 12, label %sw.bb149
  ]

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end3
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %9 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %args, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %8 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %10 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.ptr.sub.i)
  %cmp.not.i = icmp eq i32 %sub.ptr.sub.i, 4
  br i1 %cmp.not.i, label %match_fourchar.exit.thread, label %do.end

match_fourchar.exit.thread:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %10, align 1
  %13 = ptrtoint ptr %creator to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %creator, align 4
  br label %while.cond.backedge

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #10
  br label %cleanup

sw.bb11:                                          ; preds = %if.end3
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %16 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %args, align 4
  %sub.ptr.lhs.cast.i198 = ptrtoint ptr %15 to i32
  %sub.ptr.rhs.cast.i199 = ptrtoint ptr %17 to i32
  %sub.ptr.sub.i200 = sub i32 %sub.ptr.lhs.cast.i198, %sub.ptr.rhs.cast.i199
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.ptr.sub.i200)
  %cmp.not.i201 = icmp eq i32 %sub.ptr.sub.i200, 4
  br i1 %cmp.not.i201, label %match_fourchar.exit204.thread, label %do.end18

match_fourchar.exit204.thread:                    ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %17, align 1
  %20 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %type, align 4
  br label %while.cond.backedge

do.end18:                                         ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #10
  br label %cleanup

sw.bb22:                                          ; preds = %if.end3
  %call24 = call i32 @match_octal(ptr noundef nonnull %args, ptr noundef nonnull %tmp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end32, label %do.end29

do.end29:                                         ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #9
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #10
  br label %cleanup

if.end32:                                         ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tmp, align 4
  %conv = trunc i32 %22 to i16
  %23 = ptrtoint ptr %umask to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv, ptr %umask, align 8
  br label %while.cond.backedge

sw.bb33:                                          ; preds = %if.end3
  %call35 = call i32 @match_int(ptr noundef nonnull %args, ptr noundef nonnull %tmp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end43, label %do.end40

do.end40:                                         ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #9
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #10
  br label %cleanup

if.end43:                                         ; preds = %sw.bb33
  %24 = call i32 @llvm.read_register.i32(metadata !106) #7
  %and.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 99
  %28 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %29, i32 0, i32 25
  %30 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %user_ns, align 4
  %32 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tmp, align 4
  %call51 = call i32 @make_kuid(ptr noundef %31, i32 noundef %33) #7
  %34 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call51, ptr %uid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call51)
  %cmp.i.not = icmp eq i32 %call51, -1
  br i1 %cmp.i.not, label %do.end58, label %if.end43.while.cond.backedge_crit_edge

if.end43.while.cond.backedge_crit_edge:           ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.backedge

do.end58:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  %call60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #10
  br label %cleanup

sw.bb62:                                          ; preds = %if.end3
  %call64 = call i32 @match_int(ptr noundef nonnull %args, ptr noundef nonnull %tmp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end72, label %do.end69

do.end69:                                         ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #9
  %call71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #10
  br label %cleanup

if.end72:                                         ; preds = %sw.bb62
  %35 = call i32 @llvm.read_register.i32(metadata !106) #7
  %and.i205 = and i32 %35, -16384
  %36 = inttoptr i32 %and.i205 to ptr
  %task80 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %task80 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %task80, align 8
  %cred81 = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 99
  %39 = ptrtoint ptr %cred81 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cred81, align 16
  %user_ns82 = getelementptr inbounds %struct.cred, ptr %40, i32 0, i32 25
  %41 = ptrtoint ptr %user_ns82 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %user_ns82, align 4
  %43 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tmp, align 4
  %call83 = call i32 @make_kgid(ptr noundef %42, i32 noundef %44) #7
  %45 = ptrtoint ptr %gid to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %call83, ptr %gid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call83)
  %cmp.i206.not = icmp eq i32 %call83, -1
  br i1 %cmp.i206.not, label %do.end91, label %if.end72.while.cond.backedge_crit_edge

if.end72.while.cond.backedge_crit_edge:           ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.backedge

do.end91:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  %call93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #10
  br label %cleanup

sw.bb95:                                          ; preds = %if.end3
  %call97 = call i32 @match_int(ptr noundef nonnull %args, ptr noundef %part) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %sw.bb95.while.cond.backedge_crit_edge, label %do.end102

sw.bb95.while.cond.backedge_crit_edge:            ; preds = %sw.bb95
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.backedge

do.end102:                                        ; preds = %sw.bb95
  call void @__sanitizer_cov_trace_pc() #9
  %call104 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #10
  br label %cleanup

sw.bb106:                                         ; preds = %if.end3
  %call108 = call i32 @match_int(ptr noundef nonnull %args, ptr noundef %session) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %sw.bb106.while.cond.backedge_crit_edge, label %do.end113

sw.bb106.while.cond.backedge_crit_edge:           ; preds = %sw.bb106
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.backedge

do.end113:                                        ; preds = %sw.bb106
  call void @__sanitizer_cov_trace_pc() #9
  %call115 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #10
  br label %cleanup

sw.bb117:                                         ; preds = %if.end3
  %46 = ptrtoint ptr %nls to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %nls, align 8
  %tobool118.not = icmp eq ptr %47, null
  br i1 %tobool118.not, label %if.end125, label %do.end122

do.end122:                                        ; preds = %sw.bb117
  call void @__sanitizer_cov_trace_pc() #9
  %call124 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #10
  br label %cleanup

if.end125:                                        ; preds = %sw.bb117
  %call127 = call ptr @match_strdup(ptr noundef nonnull %args) #7
  %tobool128.not = icmp eq ptr %call127, null
  br i1 %tobool128.not, label %if.end132thread-pre-split, label %if.then129

if.then129:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #9
  %call130 = call ptr @load_nls(ptr noundef nonnull %call127) #7
  %48 = ptrtoint ptr %nls to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call130, ptr %nls, align 8
  br label %if.end132

if.end132thread-pre-split:                        ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %nls to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pr = load ptr, ptr %nls, align 8
  br label %if.end132

if.end132:                                        ; preds = %if.end132thread-pre-split, %if.then129
  %50 = phi ptr [ %.pr, %if.end132thread-pre-split ], [ %call130, %if.then129 ]
  %tobool134.not = icmp eq ptr %50, null
  br i1 %tobool134.not, label %do.end138, label %if.end141

do.end138:                                        ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #9
  %call140 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %call127) #10
  call void @kfree(ptr noundef %call127) #7
  br label %cleanup

if.end141:                                        ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef %call127) #7
  br label %while.cond.backedge

sw.bb142:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  call void @_clear_bit(i32 noundef 1, ptr noundef %flags150) #7
  br label %while.cond.backedge

sw.bb143:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  call void @_set_bit(i32 noundef 1, ptr noundef %flags150) #7
  br label %while.cond.backedge

sw.bb145:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  call void @_clear_bit(i32 noundef 5, ptr noundef %flags150) #7
  br label %while.cond.backedge

sw.bb147:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  call void @_set_bit(i32 noundef 5, ptr noundef %flags150) #7
  br label %while.cond.backedge

sw.bb149:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  call void @_set_bit(i32 noundef 2, ptr noundef %flags150) #7
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %sw.bb149, %sw.bb147, %sw.bb145, %sw.bb143, %sw.bb142, %if.end141, %sw.bb106.while.cond.backedge_crit_edge, %sw.bb95.while.cond.backedge_crit_edge, %if.end72.while.cond.backedge_crit_edge, %if.end43.while.cond.backedge_crit_edge, %if.end32, %match_fourchar.exit204.thread, %match_fourchar.exit.thread, %while.body.while.cond.backedge_crit_edge
  %call = call ptr @strsep(ptr noundef nonnull %input.addr, ptr noundef nonnull @.str) #7
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %while.cond.backedge.done_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.cond.backedge.done_crit_edge:               ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

done:                                             ; preds = %while.cond.backedge.done_crit_edge, %while.cond.preheader.done_crit_edge, %entry.done_crit_edge
  %nls151 = getelementptr inbounds %struct.hfsplus_sb_info, ptr %sbi, i32 0, i32 10
  %51 = ptrtoint ptr %nls151 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %nls151, align 8
  %tobool152.not = icmp eq ptr %52, null
  br i1 %tobool152.not, label %if.then153, label %done.if.end166_crit_edge

done.if.end166_crit_edge:                         ; preds = %done
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end166

if.then153:                                       ; preds = %done
  %call154 = call ptr @load_nls(ptr noundef nonnull @.str.36) #7
  %53 = ptrtoint ptr %nls151 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call154, ptr %nls151, align 8
  %tobool157.not = icmp eq ptr %call154, null
  br i1 %tobool157.not, label %if.end161, label %if.then153.if.end166_crit_edge

if.then153.if.end166_crit_edge:                   ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end166

if.end161:                                        ; preds = %if.then153
  %call159 = call ptr @load_nls_default() #7
  %54 = ptrtoint ptr %nls151 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call159, ptr %nls151, align 8
  %tobool163.not = icmp eq ptr %call159, null
  br i1 %tobool163.not, label %if.end161.cleanup_crit_edge, label %if.end161.if.end166_crit_edge

if.end161.if.end166_crit_edge:                    ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end166

if.end161.cleanup_crit_edge:                      ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end166:                                        ; preds = %if.end161.if.end166_crit_edge, %if.then153.if.end166_crit_edge, %done.if.end166_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end166, %if.end161.cleanup_crit_edge, %do.end138, %do.end122, %do.end113, %do.end102, %do.end91, %do.end69, %do.end58, %do.end40, %do.end29, %do.end18, %do.end, %if.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end122 ], [ 0, %do.end138 ], [ 0, %do.end113 ], [ 0, %do.end102 ], [ 0, %do.end69 ], [ 0, %do.end91 ], [ 0, %do.end40 ], [ 0, %do.end58 ], [ 0, %do.end29 ], [ 0, %do.end18 ], [ 0, %do.end ], [ 1, %if.end166 ], [ 0, %if.end161.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #7
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_octal(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_int(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @match_strdup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @load_nls(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @load_nls_default() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfsplus_show_options(ptr noundef %seq, ptr nocapture noundef readonly %root) local_unnamed_addr #0 align 64 {
entry:
  %val_buf = alloca [5 x i8], align 1
  %val_buf6 = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %root, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %creator = getelementptr inbounds %struct.hfsplus_sb_info, ptr %3, i32 0, i32 26
  %4 = ptrtoint ptr %creator to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %creator, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1061109567, i32 %5)
  %cmp.not = icmp eq i32 %5, 1061109567
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %val_buf) #7
  %6 = getelementptr inbounds [5 x i8], ptr %val_buf, i32 0, i32 4
  %call2 = call ptr @strncpy(ptr noundef nonnull %val_buf, ptr noundef %creator, i32 noundef 4)
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %6, align 1
  call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 44) #7
  call void @seq_escape_mem(ptr noundef %seq, ptr noundef nonnull @.str.37, i32 noundef 7, i32 noundef 8, ptr noundef nonnull @.str.58) #7
  call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 61) #7
  %call.i.i5.i = call i32 @strlen(ptr noundef nonnull %val_buf) #11
  call void @seq_escape_mem(ptr noundef %seq, ptr noundef nonnull %val_buf, i32 noundef %call.i.i5.i, i32 noundef 8, ptr noundef nonnull @.str.59) #7
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %val_buf) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %type = getelementptr inbounds %struct.hfsplus_sb_info, ptr %3, i32 0, i32 27
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1061109567, i32 %9)
  %cmp4.not = icmp eq i32 %9, 1061109567
  br i1 %cmp4.not, label %if.end.if.end12_crit_edge, label %if.then5

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %val_buf6) #7
  %10 = getelementptr inbounds [5 x i8], ptr %val_buf6, i32 0, i32 4
  %call9 = call ptr @strncpy(ptr noundef nonnull %val_buf6, ptr noundef %type, i32 noundef 4)
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %10, align 1
  call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 44) #7
  call void @seq_escape_mem(ptr noundef %seq, ptr noundef nonnull @.str.38, i32 noundef 4, i32 noundef 8, ptr noundef nonnull @.str.58) #7
  call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 61) #7
  %call.i.i5.i65 = call i32 @strlen(ptr noundef nonnull %val_buf6) #11
  call void @seq_escape_mem(ptr noundef %seq, ptr noundef nonnull %val_buf6, i32 noundef %call.i.i5.i65, i32 noundef 8, ptr noundef nonnull @.str.59) #7
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %val_buf6) #7
  br label %if.end12

if.end12:                                         ; preds = %if.then5, %if.end.if.end12_crit_edge
  %umask = getelementptr inbounds %struct.hfsplus_sb_info, ptr %3, i32 0, i32 28
  %12 = ptrtoint ptr %umask to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %umask, align 8
  %conv = zext i16 %13 to i32
  %uid = getelementptr inbounds %struct.hfsplus_sb_info, ptr %3, i32 0, i32 29
  %14 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %14)
  %.unpack = load i32, ptr %uid, align 4
  %15 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call13 = call i32 @from_kuid_munged(ptr noundef nonnull @init_user_ns, [1 x i32] %15) #7
  %gid = getelementptr inbounds %struct.hfsplus_sb_info, ptr %3, i32 0, i32 30
  %16 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %16)
  %.unpack61 = load i32, ptr %gid, align 8
  %17 = insertvalue [1 x i32] undef, i32 %.unpack61, 0
  %call15 = call i32 @from_kgid_munged(ptr noundef nonnull @init_user_ns, [1 x i32] %17) #7
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.39, i32 noundef %conv, i32 noundef %call13, i32 noundef %call15) #7
  %part = getelementptr inbounds %struct.hfsplus_sb_info, ptr %3, i32 0, i32 31
  %18 = ptrtoint ptr %part to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %part, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %cmp16 = icmp sgt i32 %19, -1
  br i1 %cmp16, label %if.then18, label %if.end12.if.end20_crit_edge

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then18:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.40, i32 noundef %19) #7
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end12.if.end20_crit_edge
  %session = getelementptr inbounds %struct.hfsplus_sb_info, ptr %3, i32 0, i32 32
  %20 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %session, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp21 = icmp sgt i32 %21, -1
  br i1 %cmp21, label %if.then23, label %if.end20.if.end25_crit_edge

if.end20.if.end25_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.41, i32 noundef %21) #7
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end20.if.end25_crit_edge
  %nls = getelementptr inbounds %struct.hfsplus_sb_info, ptr %3, i32 0, i32 10
  %22 = ptrtoint ptr %nls to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %nls, align 8
  %tobool.not = icmp eq ptr %23, null
  br i1 %tobool.not, label %if.end25.if.end28_crit_edge, label %if.then26

if.end25.if.end28_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then26:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.42, ptr noundef %25) #7
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end25.if.end28_crit_edge
  %flags = getelementptr inbounds %struct.hfsplus_sb_info, ptr %3, i32 0, i32 33
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %flags, align 4
  %28 = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool30.not = icmp eq i32 %28, 0
  br i1 %tobool30.not, label %if.end28.if.end32_crit_edge, label %if.then31

if.end28.if.end32_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.43) #7
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end28.if.end32_crit_edge
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %flags, align 4
  %31 = and i32 %30, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool35.not = icmp eq i32 %31, 0
  br i1 %tobool35.not, label %if.end32.if.end37_crit_edge, label %if.then36

if.end32.if.end37_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.44) #7
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end32.if.end37_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_escape_mem(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !28, !29, !30, !32, !33, !34, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104}
!llvm.named.register.sp = !{!106}
!llvm.module.flags = !{!107, !108, !109, !110, !111, !112, !113, !114}
!llvm.ident = !{!115}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../fs/hfsplus/options.c", i32 57, i32 14}
!2 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!3 = !{!"../fs/hfsplus/options.c", i32 58, i32 14}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/hfsplus/options.c", i32 81, i32 29}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/hfsplus/options.c", i32 117, i32 5}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @hfsplus_parse_options._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @hfsplus_parse_options._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/hfsplus/options.c", i32 123, i32 5}
!14 = !{ptr @hfsplus_parse_options._entry.5, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @hfsplus_parse_options._entry_ptr.7, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/hfsplus/options.c", i32 129, i32 5}
!18 = !{ptr @hfsplus_parse_options._entry.8, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @hfsplus_parse_options._entry_ptr.10, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/hfsplus/options.c", i32 136, i32 5}
!22 = !{ptr @hfsplus_parse_options._entry.11, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @hfsplus_parse_options._entry_ptr.13, !21, !"_entry_ptr", i1 false, i1 false}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../fs/hfsplus/options.c", i32 139, i32 25}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/hfsplus/options.c", i32 141, i32 5}
!28 = !{ptr @hfsplus_parse_options._entry.14, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @hfsplus_parse_options._entry_ptr.16, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/hfsplus/options.c", i32 147, i32 5}
!32 = !{ptr @hfsplus_parse_options._entry.17, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @hfsplus_parse_options._entry_ptr.19, !31, !"_entry_ptr", i1 false, i1 false}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../fs/hfsplus/options.c", i32 150, i32 25}
!36 = !{ptr @.str.22, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/hfsplus/options.c", i32 152, i32 5}
!38 = !{ptr @hfsplus_parse_options._entry.21, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @hfsplus_parse_options._entry_ptr.23, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.25, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/hfsplus/options.c", i32 158, i32 5}
!42 = !{ptr @hfsplus_parse_options._entry.24, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @hfsplus_parse_options._entry_ptr.26, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.28, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/hfsplus/options.c", i32 164, i32 5}
!46 = !{ptr @hfsplus_parse_options._entry.27, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @hfsplus_parse_options._entry_ptr.29, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.31, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/hfsplus/options.c", i32 170, i32 5}
!50 = !{ptr @hfsplus_parse_options._entry.30, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @hfsplus_parse_options._entry_ptr.32, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.34, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/hfsplus/options.c", i32 177, i32 5}
!54 = !{ptr @hfsplus_parse_options._entry.33, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @hfsplus_parse_options._entry_ptr.35, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.36, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/hfsplus/options.c", i32 207, i32 23}
!58 = !{ptr @.str.37, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/hfsplus/options.c", i32 222, i32 3}
!60 = !{ptr @.str.38, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/hfsplus/options.c", i32 224, i32 3}
!62 = !{ptr @.str.39, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/hfsplus/options.c", i32 225, i32 18}
!64 = !{ptr @.str.40, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/hfsplus/options.c", i32 229, i32 19}
!66 = !{ptr @.str.41, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/hfsplus/options.c", i32 231, i32 19}
!68 = !{ptr @.str.42, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/hfsplus/options.c", i32 233, i32 19}
!70 = !{ptr @.str.43, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/hfsplus/options.c", i32 235, i32 17}
!72 = !{ptr @.str.44, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/hfsplus/options.c", i32 237, i32 17}
!74 = !{ptr @.str.45, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/hfsplus/options.c", i32 32, i32 17}
!76 = !{ptr @.str.46, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/hfsplus/options.c", i32 33, i32 14}
!78 = !{ptr @.str.47, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/hfsplus/options.c", i32 34, i32 15}
!80 = !{ptr @.str.48, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/hfsplus/options.c", i32 35, i32 13}
!82 = !{ptr @.str.49, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/hfsplus/options.c", i32 36, i32 13}
!84 = !{ptr @.str.50, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/hfsplus/options.c", i32 37, i32 14}
!86 = !{ptr @.str.51, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/hfsplus/options.c", i32 38, i32 17}
!88 = !{ptr @.str.52, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../fs/hfsplus/options.c", i32 39, i32 13}
!90 = !{ptr @.str.53, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../fs/hfsplus/options.c", i32 40, i32 19}
!92 = !{ptr @.str.54, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/hfsplus/options.c", i32 41, i32 21}
!94 = !{ptr @.str.55, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/hfsplus/options.c", i32 42, i32 17}
!96 = !{ptr @.str.56, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../fs/hfsplus/options.c", i32 43, i32 19}
!98 = !{ptr @.str.57, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../fs/hfsplus/options.c", i32 44, i32 15}
!100 = !{ptr @tokens, !101, !"tokens", i1 false, i1 false}
!101 = !{!"../fs/hfsplus/options.c", i32 31, i32 28}
!102 = !{ptr @.str.58, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../include/linux/seq_file.h", i32 242, i32 22}
!104 = !{ptr @.str.59, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../include/linux/seq_file.h", i32 245, i32 24}
!106 = !{!"sp"}
!107 = !{i32 1, !"wchar_size", i32 2}
!108 = !{i32 1, !"min_enum_size", i32 4}
!109 = !{i32 8, !"branch-target-enforcement", i32 0}
!110 = !{i32 8, !"sign-return-address", i32 0}
!111 = !{i32 8, !"sign-return-address-all", i32 0}
!112 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!113 = !{i32 7, !"uwtable", i32 1}
!114 = !{i32 7, !"frame-pointer", i32 2}
!115 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!116 = !{!"auto-init"}
