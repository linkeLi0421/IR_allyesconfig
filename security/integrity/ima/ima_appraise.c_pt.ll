; ModuleID = '/llk/IR_all_yes/security/integrity/ima/ima_appraise.c_pt.bc'
source_filename = "../security/integrity/ima/ima_appraise.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.72 }
%union.anon.72 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.21 }
%union.anon.21 = type { [5 x %struct.uid_gid_extent] }
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
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.31, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.33 }
%struct.llist_node = type { ptr }
%union.anon.33 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.35 }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.integrity_iint_cache = type { %struct.rb_node, %struct.mutex, ptr, i64, i32, i32, i32, i24, ptr }
%struct.signature_v2_hdr = type <{ i8, i8, i8, i32, i16, [0 x i8] }>
%struct.evm_ima_xattr_data = type { i8, [0 x i8] }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.61, %struct.list_head, %struct.list_head, %union.anon.62 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.16, ptr }
%union.anon.16 = type { i64 }
%struct.lockref = type { %union.anon.18 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { %struct.spinlock, i32 }
%union.anon.61 = type { %struct.list_head }
%union.anon.62 = type { %struct.hlist_node }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.74, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.75, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.76, ptr, %struct.address_space, %struct.list_head, %union.anon.77, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.74 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.75 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.76 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.77 = type { ptr }
%struct.ima_digest_data = type { i8, i8, %union.anon.78, [0 x i8] }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { i8, i8 }
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

@__param_str_ima_appraise = internal constant [13 x i8] c"ima_appraise\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@ima_appraise_cmdline_default = internal global ptr null, section ".init.data", align 4
@__param_ima_appraise = internal constant %struct.kernel_param { ptr @__param_str_ima_appraise, ptr null, ptr @param_ops_charp, i16 0, i8 -1, i8 0, %union.anon.72 { ptr @ima_appraise_cmdline_default } }, section "__param", align 4
@ima_appraise = external dso_local local_unnamed_addr global i32, align 4
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"log\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fix\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enforce\00", [24 x i8] zeroinitializer }, align 32
@ima_appraise_parse_cmdline._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 42, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013ima: invalid \22%s\22 appraise option\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ima_appraise_parse_cmdline\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"security/integrity/ima/ima_appraise.c\00", [58 x i8] zeroinitializer }, align 32
@ima_appraise_parse_cmdline._entry_ptr = internal global ptr @ima_appraise_parse_cmdline._entry, section ".printk_index", align 4
@ima_appraise_parse_cmdline._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.5, ptr @.str.6, i32 49, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016ima: Secure boot enabled: ignoring ima_appraise=%s option\00", [36 x i8] zeroinitializer }, align 32
@ima_appraise_parse_cmdline._entry_ptr.9 = internal global ptr @ima_appraise_parse_cmdline._entry.7, section ".printk_index", align 4
@ima_hash_algo = external dso_local local_unnamed_addr global i32, section ".data..ro_after_init", align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"security.ima\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"blacklisted-hash\00", [47 x i8] zeroinitializer }, align 32
@ima_appraise_measurement.op = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"appraise_data\00", [18 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IMA-signature-required\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"missing-hash\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"missing-HMAC\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"invalid-fail-immutable\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"invalid-HMAC\00", [19 x i8] zeroinitializer }, align 32
@ima_appraise_measurement.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unexpected integrity status %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unverifiable-signature\00", [41 x i8] zeroinitializer }, align 32
@ima_policy_flag = external dso_local local_unnamed_addr global i32, align 4
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"security.evm\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"invalid-hash\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"invalid-signature\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"unknown-ima-data\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unavailable-hash-algorithm\00", [37 x i8] zeroinitializer }, align 32
@ima_setxattr_allowed_hash_algorithms = external dso_local global %struct.atomic_t, align 4
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"denied-hash-algorithm\00", [42 x i8] zeroinitializer }, align 32
@hash_algo_name = external dso_local local_unnamed_addr constant [20 x ptr], align 4
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"set_data\00", [23 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@switch.table.ima_appraise_measurement = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 8200, i32 32776, i32 131080, i32 2097160, i32 8200], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.27 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 17, i64 21]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967235]
@__sancov_gen_cov_switch_values.30 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.31 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@__sancov_gen_cov_switch_values.33 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.34 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 17, i64 21]
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 33, i32 19 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 35, i32 24 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 37, i32 24 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 39, i32 24 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 42, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 48, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 221, i32 50 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 361, i32 10 }
@___asan_gen_.72 = private unnamed_addr constant [3 x i8] c"op\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 382, i32 20 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 383, i32 22 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 400, i32 5 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 400, i32 32 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 423, i32 11 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 427, i32 11 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 430, i32 11 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 433, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 460, i32 11 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 653, i32 33 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 269, i32 13 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 294, i32 13 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 302, i32 12 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 599, i32 23 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 616, i32 12 }
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.118 = private constant [41 x i8] c"../security/integrity/ima/ima_appraise.c\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 633, i32 8 }
@___asan_gen_.120 = private unnamed_addr constant [38 x i8] c"switch.table.ima_appraise_measurement\00", align 1
@llvm.compiler.used = appending global [32 x ptr] [ptr @__param_ima_appraise, ptr @ima_appraise_parse_cmdline._entry, ptr @ima_appraise_parse_cmdline._entry.7, ptr @ima_appraise_parse_cmdline._entry_ptr, ptr @ima_appraise_parse_cmdline._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @ima_appraise_measurement.op, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @switch.table.ima_appraise_measurement], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_appraise_parse_cmdline._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_appraise_parse_cmdline._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_appraise_measurement.op to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ima_appraise_measurement to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @ima_appraise_parse_cmdline() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ima_appraise_cmdline_default, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_appraise to i32))
  %1 = load i32, ptr @ima_appraise, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @strncmp(ptr noundef nonnull %0, ptr noundef nonnull dereferenceable(4) @.str, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.end.if.else30_crit_edge, label %if.else

if.end.if.else30_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else30

if.else:                                          ; preds = %if.end
  %call3 = tail call i32 @strncmp(ptr noundef nonnull %0, ptr noundef nonnull dereferenceable(4) @.str.1, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.else.if.else30_crit_edge, label %if.else6

if.else.if.else30_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else30

if.else6:                                         ; preds = %if.else
  %call7 = tail call i32 @strncmp(ptr noundef nonnull %0, ptr noundef nonnull dereferenceable(4) @.str.2, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.else6.if.else30_crit_edge, label %if.else10

if.else6.if.else30_crit_edge:                     ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else30

if.else10:                                        ; preds = %if.else6
  %call11 = tail call i32 @strncmp(ptr noundef nonnull %0, ptr noundef nonnull dereferenceable(8) @.str.3, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.else10.if.else30_crit_edge, label %do.end

if.else10.if.else30_crit_edge:                    ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else30

do.end:                                           ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #14
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull %0) #15
  br label %if.else30

if.else30:                                        ; preds = %do.end, %if.else10.if.else30_crit_edge, %if.else6.if.else30_crit_edge, %if.else.if.else30_crit_edge, %if.end.if.else30_crit_edge
  %appraisal_state.0 = phi i32 [ %1, %do.end ], [ 0, %if.end.if.else30_crit_edge ], [ 4, %if.else.if.else30_crit_edge ], [ 2, %if.else6.if.else30_crit_edge ], [ 1, %if.else10.if.else30_crit_edge ]
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @ima_appraise to i32))
  store i32 %appraisal_state.0, ptr @ima_appraise, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else30, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @is_ima_appraise_enabled() local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_appraise to i32))
  %0 = load i32, ptr @ima_appraise, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ima_must_appraise(ptr noundef %mnt_userns, ptr noundef %inode, i32 noundef %mask, i32 noundef %func) local_unnamed_addr #5 align 64 {
entry:
  %secid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %secid) #12
  %0 = ptrtoint ptr %secid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %secid, align 4, !annotation !72
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_appraise to i32))
  %1 = load i32, ptr @ima_appraise, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @security_current_getsecid_subj(ptr noundef nonnull %secid) #12
  %2 = call i32 @llvm.read_register.i32(metadata !62) #12
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 99
  %6 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cred, align 16
  %8 = ptrtoint ptr %secid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %secid, align 4
  %call1 = call i32 @ima_match_policy(ptr noundef %mnt_userns, ptr noundef %inode, ptr noundef %7, i32 noundef %9, i32 noundef %func, i32 noundef %mask, i32 noundef 260, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %secid) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_current_getsecid_subj(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_match_policy(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ima_get_cache_status(ptr nocapture noundef readonly %iint, i32 noundef %func) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %func to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %func, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb1
    i32 4, label %sw.bb5
    i32 1, label %entry.sw.bb9_crit_edge
    i32 5, label %entry.sw.bb9_crit_edge20
  ]

entry.sw.bb9_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb9

entry.sw.bb9_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb9

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %ima_mmap_status = getelementptr inbounds %struct.integrity_iint_cache, ptr %iint, i32 0, i32 7
  %1 = ptrtoint ptr %ima_mmap_status to i32
  call void @__asan_load4_noabort(i32 %1)
  %bf.load = load i32, ptr %ima_mmap_status, align 4
  %bf.lshr = lshr i32 %bf.load, 24
  %bf.clear = and i32 %bf.lshr, 15
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %ima_bprm_status = getelementptr inbounds %struct.integrity_iint_cache, ptr %iint, i32 0, i32 7
  %2 = ptrtoint ptr %ima_bprm_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load2 = load i32, ptr %ima_bprm_status, align 4
  %bf.lshr3 = lshr i32 %bf.load2, 20
  %bf.clear4 = and i32 %bf.lshr3, 15
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %ima_creds_status = getelementptr inbounds %struct.integrity_iint_cache, ptr %iint, i32 0, i32 7
  %3 = ptrtoint ptr %ima_creds_status to i32
  call void @__asan_load4_noabort(i32 %3)
  %bf.load6 = load i32, ptr %ima_creds_status, align 4
  %bf.lshr7 = lshr i32 %bf.load6, 12
  %bf.clear8 = and i32 %bf.lshr7, 15
  br label %return

sw.bb9:                                           ; preds = %entry.sw.bb9_crit_edge, %entry.sw.bb9_crit_edge20
  %ima_file_status = getelementptr inbounds %struct.integrity_iint_cache, ptr %iint, i32 0, i32 7
  %4 = ptrtoint ptr %ima_file_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load10 = load i32, ptr %ima_file_status, align 4
  %bf.lshr11 = lshr i32 %bf.load10, 28
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %ima_read_status = getelementptr inbounds %struct.integrity_iint_cache, ptr %iint, i32 0, i32 7
  %5 = ptrtoint ptr %ima_read_status to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load13 = load i32, ptr %ima_read_status, align 4
  %bf.lshr14 = lshr i32 %bf.load13, 16
  %bf.clear15 = and i32 %bf.lshr14, 15
  br label %return

return:                                           ; preds = %sw.default, %sw.bb9, %sw.bb5, %sw.bb1, %sw.bb
  %retval.0 = phi i32 [ %bf.clear15, %sw.default ], [ %bf.lshr11, %sw.bb9 ], [ %bf.clear8, %sw.bb5 ], [ %bf.clear4, %sw.bb1 ], [ %bf.clear, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ima_get_hash_algo(ptr noundef readonly %xattr_value, i32 noundef %xattr_len) local_unnamed_addr #8 align 64 {
entry:
  %zero = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %xattr_value, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %xattr_len)
  %cmp = icmp slt i32 %xattr_len, 2
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_hash_algo to i32))
  %0 = load i32, ptr @ima_hash_algo, align 4
  br label %cleanup35

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %xattr_value to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %xattr_value, align 1
  %3 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.27)
  switch i8 %2, label %if.end.sw.epilog_crit_edge [
    i8 3, label %sw.bb
    i8 4, label %sw.bb15
    i8 1, label %sw.bb21
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %version = getelementptr inbounds %struct.signature_v2_hdr, ptr %xattr_value, i32 0, i32 1
  %4 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %version, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp2.not = icmp ne i8 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %xattr_len)
  %cmp5 = icmp ult i32 %xattr_len, 10
  %or.cond47 = or i1 %cmp5, %cmp2.not
  br i1 %or.cond47, label %sw.bb.if.then11_crit_edge, label %lor.lhs.false7

sw.bb.if.then11_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11

lor.lhs.false7:                                   ; preds = %sw.bb
  %hash_algo = getelementptr inbounds %struct.signature_v2_hdr, ptr %xattr_value, i32 0, i32 2
  %6 = ptrtoint ptr %hash_algo to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %hash_algo, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %7)
  %cmp9 = icmp ugt i8 %7, 19
  br i1 %cmp9, label %lor.lhs.false7.if.then11_crit_edge, label %if.end12

lor.lhs.false7.if.then11_crit_edge:               ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11

if.then11:                                        ; preds = %lor.lhs.false7.if.then11_crit_edge, %sw.bb.if.then11_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_hash_algo to i32))
  %8 = load i32, ptr @ima_hash_algo, align 4
  br label %cleanup35

if.end12:                                         ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #14
  %conv8 = zext i8 %7 to i32
  br label %cleanup35

sw.bb15:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.evm_ima_xattr_data, ptr %xattr_value, i32 0, i32 1
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %10)
  %cmp17 = icmp ult i8 %10, 20
  br i1 %cmp17, label %if.then19, label %sw.bb15.sw.epilog_crit_edge

sw.bb15.sw.epilog_crit_edge:                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then19:                                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #14
  %conv16 = zext i8 %10 to i32
  br label %cleanup35

sw.bb21:                                          ; preds = %if.end
  %11 = zext i32 %xattr_len to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %xattr_len, label %sw.bb21.sw.epilog_crit_edge [
    i32 21, label %if.then24
    i32 17, label %sw.bb21.cleanup35_crit_edge
  ]

sw.bb21.cleanup35_crit_edge:                      ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup35

sw.bb21.sw.epilog_crit_edge:                      ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then24:                                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %zero) #12
  %12 = ptrtoint ptr %zero to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %zero, align 4
  %arrayidx26 = getelementptr %struct.evm_ima_xattr_data, ptr %xattr_value, i32 17
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(4) %arrayidx26, ptr noundef nonnull dereferenceable(4) %zero, i32 4) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool27.not = icmp eq i32 %bcmp, 0
  %. = select i1 %tobool27.not, i32 1, i32 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %zero) #12
  br label %cleanup35

sw.epilog:                                        ; preds = %sw.bb21.sw.epilog_crit_edge, %sw.bb15.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_hash_algo to i32))
  %13 = load i32, ptr @ima_hash_algo, align 4
  br label %cleanup35

cleanup35:                                        ; preds = %sw.epilog, %if.then24, %sw.bb21.cleanup35_crit_edge, %if.then19, %if.end12, %if.then11, %if.then
  %retval.1 = phi i32 [ %0, %if.then ], [ %13, %sw.epilog ], [ %., %if.then24 ], [ %conv16, %if.then19 ], [ %8, %if.then11 ], [ %conv8, %if.end12 ], [ 1, %sw.bb21.cleanup35_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ima_read_xattr(ptr noundef %dentry, ptr noundef %xattr_value) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vfs_getxattr_alloc(ptr noundef nonnull @init_user_ns, ptr noundef %dentry, ptr noundef nonnull @.str.10, ptr noundef %xattr_value, i32 noundef 0, i32 noundef 3136) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %call)
  %cmp = icmp eq i32 %call, -95
  %spec.store.select = select i1 %cmp, i32 0, i32 %call
  ret i32 %spec.store.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_getxattr_alloc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ima_check_blacklist(ptr nocapture noundef readonly %iint, ptr noundef %modsig, i32 noundef %pcr) local_unnamed_addr #5 align 64 {
entry:
  %hash_algo = alloca i32, align 4
  %digest = alloca ptr, align 4
  %digestsize = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hash_algo) #12
  %0 = ptrtoint ptr %hash_algo to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %hash_algo, align 4, !annotation !72
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %digest) #12
  %1 = ptrtoint ptr %digest to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %digest, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %digestsize) #12
  %2 = ptrtoint ptr %digestsize to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %digestsize, align 4
  %flags = getelementptr inbounds %struct.integrity_iint_cache, ptr %iint, i32 0, i32 4
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 8
  %and = and i32 %4, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %and2 = and i32 %4, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %tobool4.not = icmp eq ptr %modsig, null
  %or.cond = or i1 %tobool4.not, %tobool3.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then5:                                         ; preds = %if.end
  %call = call i32 @ima_get_modsig_digest(ptr noundef nonnull %modsig, ptr noundef nonnull %hash_algo, ptr noundef nonnull %digest, ptr noundef nonnull %digestsize) #12
  %5 = ptrtoint ptr %digest to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %digest, align 4
  %7 = ptrtoint ptr %digestsize to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %digestsize, align 4
  %call6 = call i32 @is_binary_blacklisted(ptr noundef %6, i32 noundef %8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call6)
  %cmp = icmp eq i32 %call6, -1
  br i1 %cmp, label %land.lhs.true7, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true7:                                   ; preds = %if.then5
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 8
  %and9 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %land.lhs.true7.cleanup_crit_edge, label %if.then11

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then11:                                        ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %digest to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %digest, align 4
  %13 = ptrtoint ptr %digestsize to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %digestsize, align 4
  %call12 = call i32 @process_buffer_measurement(ptr noundef nonnull @init_user_ns, ptr noundef null, ptr noundef %12, i32 noundef %14, ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef %pcr, ptr noundef null, i1 noundef zeroext false, ptr noundef null, i32 noundef 0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %land.lhs.true7.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -1, %if.then11 ], [ -1, %land.lhs.true7.cleanup_crit_edge ], [ %call6, %if.then5.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %digestsize) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %digest) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hash_algo) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_get_modsig_digest(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @is_binary_blacklisted(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @process_buffer_measurement(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ima_appraise_measurement(i32 noundef %func, ptr noundef %iint, ptr nocapture noundef readonly %file, ptr noundef %filename, ptr noundef %xattr_value, i32 noundef %xattr_len, ptr noundef %modsig) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %and.i.i = and i32 %3, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.file_dentry.exit_crit_edge, label %if.then.i.i, !prof !73

entry.file_dentry.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %file_dentry.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %4 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_inode.i.i, align 8
  %d_op.i.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %d_op.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_op.i.i, align 8
  %d_real.i.i = getelementptr inbounds %struct.dentry_operations, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %d_real.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_real.i.i, align 16
  %call.i.i = tail call ptr %9(ptr noundef %1, ptr noundef %5) #12
  br label %file_dentry.exit

file_dentry.exit:                                 ; preds = %if.then.i.i, %entry.file_dentry.exit_crit_edge
  %retval.0.i.i = phi ptr [ %call.i.i, %if.then.i.i ], [ %1, %entry.file_dentry.exit_crit_edge ]
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %retval.0.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d_inode.i, align 8
  %flags = getelementptr inbounds %struct.integrity_iint_cache, ptr %iint, i32 0, i32 4
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 8
  %and = and i32 %13, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %tobool2 = icmp ne ptr %modsig, null
  %spec.select = and i1 %tobool2, %tobool.not
  %i_opflags = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %i_opflags to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %i_opflags, align 2
  %16 = and i16 %15, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool4.not = icmp ne i16 %16, 0
  %brmerge = select i1 %tobool4.not, i1 true, i1 %spec.select
  br i1 %brmerge, label %if.end, label %file_dentry.exit.cleanup_crit_edge

file_dentry.exit.cleanup_crit_edge:               ; preds = %file_dentry.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %file_dentry.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xattr_len)
  %cmp = icmp sgt i32 %xattr_len, 0
  %brmerge200 = select i1 %cmp, i1 true, i1 %spec.select
  br i1 %brmerge200, label %if.end35, label %if.then9

if.then9:                                         ; preds = %if.end
  %17 = zext i32 %xattr_len to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %xattr_len, label %if.then9.out_crit_edge [
    i32 0, label %if.then9.if.end15_crit_edge
    i32 -61, label %if.then9.if.end15_crit_edge238
  ]

if.then9.if.end15_crit_edge238:                   ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then9.if.end15_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then9.out_crit_edge:                           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end15:                                         ; preds = %if.then9.if.end15_crit_edge, %if.then9.if.end15_crit_edge238
  %and17 = and i32 %13, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %cond = select i1 %tobool18.not, ptr @.str.14, ptr @.str.13
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %18 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %f_mode, align 8
  %and19 = and i32 %19, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end15.if.end23_crit_edge, label %if.then21

if.end15.if.end23_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then21:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %or = or i32 %13, 67108864
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or, ptr %flags, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end15.if.end23_crit_edge
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 8
  %and25 = and i32 %22, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end23.out_crit_edge, label %land.lhs.true27

if.end23.out_crit_edge:                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

land.lhs.true27:                                  ; preds = %if.end23
  %and29 = and i32 %22, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %land.lhs.true27.if.then33_crit_edge, label %lor.lhs.false

land.lhs.true27.if.then33_crit_edge:              ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then33

lor.lhs.false:                                    ; preds = %land.lhs.true27
  %i_size = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 14
  %23 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %24)
  %cmp31 = icmp eq i64 %24, 0
  br i1 %cmp31, label %lor.lhs.false.if.then33_crit_edge, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

lor.lhs.false.if.then33_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then33

if.then33:                                        ; preds = %lor.lhs.false.if.then33_crit_edge, %land.lhs.true27.if.then33_crit_edge
  br label %out

if.end35:                                         ; preds = %if.end
  %call36 = tail call i32 @evm_verifyxattr(ptr noundef %retval.0.i.i, ptr noundef nonnull @.str.10, ptr noundef %xattr_value, i32 noundef %xattr_len, ptr noundef %iint) #12
  %25 = zext i32 %call36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %call36, label %land.end48 [
    i32 0, label %if.end35.sw.epilog_crit_edge
    i32 1, label %if.end35.sw.epilog_crit_edge239
    i32 6, label %if.end35.sw.epilog_crit_edge240
    i32 5, label %sw.bb37
    i32 4, label %if.end35.out_crit_edge
    i32 3, label %sw.bb42
    i32 2, label %sw.bb43
  ]

if.end35.out_crit_edge:                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end35.sw.epilog_crit_edge240:                  ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end35.sw.epilog_crit_edge239:                  ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end35.sw.epilog_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb37:                                          ; preds = %if.end35
  br i1 %spec.select, label %sw.epilog.thread, label %sw.bb37.out_crit_edge

sw.bb37.out_crit_edge:                            ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

sw.bb42:                                          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  %atomic_flags = getelementptr inbounds %struct.integrity_iint_cache, ptr %iint, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 3, ptr noundef %atomic_flags) #12
  br label %out

sw.bb43:                                          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

land.end48:                                       ; preds = %if.end35
  %.b199 = load i1, ptr @ima_appraise_measurement.__already_done, align 1
  br i1 %.b199, label %land.end48.sw.epilog_crit_edge, label %if.then52, !prof !73

land.end48.sw.epilog_crit_edge:                   ; preds = %land.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then52:                                        ; preds = %land.end48
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ima_appraise_measurement.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 433, i32 noundef 9, ptr noundef nonnull @.str.18, i32 noundef %call36) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then52, %land.end48.sw.epilog_crit_edge, %if.end35.sw.epilog_crit_edge, %if.end35.sw.epilog_crit_edge239, %if.end35.sw.epilog_crit_edge240
  %tobool82.not = icmp eq ptr %xattr_value, null
  br i1 %tobool82.not, label %if.end85.thread, label %sw.epilog.if.then83_crit_edge

sw.epilog.if.then83_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then83

sw.epilog.thread:                                 ; preds = %sw.bb37
  %tobool82.not234 = icmp eq ptr %xattr_value, null
  br i1 %tobool82.not234, label %sw.epilog.thread.if.then97_crit_edge, label %sw.epilog.thread.if.then83_crit_edge

sw.epilog.thread.if.then83_crit_edge:             ; preds = %sw.epilog.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then83

sw.epilog.thread.if.then97_crit_edge:             ; preds = %sw.epilog.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then97

if.then83:                                        ; preds = %sw.epilog.thread.if.then83_crit_edge, %sw.epilog.if.then83_crit_edge
  %26 = ptrtoint ptr %xattr_value to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %xattr_value, align 1
  %28 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.31)
  switch i8 %27, label %if.then83.if.end85_crit_edge [
    i8 4, label %sw.bb.i
    i8 1, label %if.then83.sw.bb1.i_crit_edge
    i8 3, label %sw.bb20.i
  ]

if.then83.sw.bb1.i_crit_edge:                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1.i

if.then83.if.end85_crit_edge:                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end85

sw.bb.i:                                          ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1.i

sw.bb1.i:                                         ; preds = %sw.bb.i, %if.then83.sw.bb1.i_crit_edge
  %hash_start.0.i = phi i32 [ 0, %if.then83.sw.bb1.i_crit_edge ], [ 1, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call36)
  %cmp.not.i = icmp eq i32 %call36, 1
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb1.i
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags, align 8
  %and.i = and i32 %30, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i.if.end85_crit_edge

if.then.i.if.end85_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end85

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %atomic_flags.i = getelementptr inbounds %struct.integrity_iint_cache, ptr %iint, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %atomic_flags.i) #12
  br label %if.end5.i

if.else.i:                                        ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #14
  %atomic_flags4.i = getelementptr inbounds %struct.integrity_iint_cache, ptr %iint, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 3, ptr noundef %atomic_flags4.i) #12
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.else.i, %if.end.i
  %31 = xor i32 %hash_start.0.i, -1
  %sub6.i = add i32 %31, %xattr_len
  %ima_hash.i = getelementptr inbounds %struct.integrity_iint_cache, ptr %iint, i32 0, i32 8
  %32 = ptrtoint ptr %ima_hash.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ima_hash.i, align 8
  %length.i = getelementptr inbounds %struct.ima_digest_data, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %length.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %length.i, align 1
  %conv7.i = zext i8 %35 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub6.i, i32 %conv7.i)
  %cmp8.not.i = icmp ult i32 %sub6.i, %conv7.i
  br i1 %cmp8.not.i, label %if.end5.i.if.end85_crit_edge, label %if.end16.i

if.end5.i.if.end85_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end85

if.end16.i:                                       ; preds = %if.end5.i
  %arrayidx.i = getelementptr %struct.evm_ima_xattr_data, ptr %xattr_value, i32 0, i32 1, i32 %hash_start.0.i
  %digest.i = getelementptr inbounds %struct.ima_digest_data, ptr %33, i32 0, i32 3
  %call.i = tail call i32 @memcmp(ptr noundef %arrayidx.i, ptr noundef %digest.i, i32 noundef %conv7.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool17.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %if.end16.i.if.end85_crit_edge

if.end16.i.if.end85_crit_edge:                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end85

if.end19.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end85

sw.bb20.i:                                        ; preds = %if.then83
  %atomic_flags21.i = getelementptr inbounds %struct.integrity_iint_cache, ptr %iint, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 3, ptr noundef %atomic_flags21.i) #12
  %ima_hash22.i = getelementptr inbounds %struct.integrity_iint_cache, ptr %iint, i32 0, i32 8
  %36 = ptrtoint ptr %ima_hash22.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ima_hash22.i, align 8
  %digest23.i = getelementptr inbounds %struct.ima_digest_data, ptr %37, i32 0, i32 3
  %length26.i = getelementptr inbounds %struct.ima_digest_data, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %length26.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %length26.i, align 1
  %conv27.i = zext i8 %39 to i32
  %call28.i = tail call i32 @integrity_digsig_verify(i32 noundef 1, ptr noundef nonnull %xattr_value, i32 noundef %xattr_len, ptr noundef %digest23.i, i32 noundef %conv27.i) #12
  %40 = zext i32 %call28.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %call28.i, label %land.lhs.true.i [
    i32 -95, label %sw.bb20.i.if.end85_crit_edge
    i32 0, label %sw.bb20.i.if.else47.i_crit_edge
  ]

sw.bb20.i.if.else47.i_crit_edge:                  ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else47.i

sw.bb20.i.if.end85_crit_edge:                     ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end85

land.lhs.true.i:                                  ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %func)
  %cmp34.i = icmp eq i32 %func, 8
  br i1 %cmp34.i, label %if.end44.i, label %land.lhs.true.i.if.end85_crit_edge

land.lhs.true.i.if.end85_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end85

if.end44.i:                                       ; preds = %land.lhs.true.i
  %41 = ptrtoint ptr %ima_hash22.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ima_hash22.i, align 8
  %digest38.i = getelementptr inbounds %struct.ima_digest_data, ptr %42, i32 0, i32 3
  %length41.i = getelementptr inbounds %struct.ima_digest_data, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %length41.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %length41.i, align 1
  %conv42.i = zext i8 %44 to i32
  %call43.i = tail call i32 @integrity_digsig_verify(i32 noundef 2, ptr noundef nonnull %xattr_value, i32 noundef %xattr_len, ptr noundef %digest38.i, i32 noundef %conv42.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %tobool45.not.i = icmp eq i32 %call43.i, 0
  br i1 %tobool45.not.i, label %if.end44.i.if.else47.i_crit_edge, label %if.end44.i.if.end85_crit_edge

if.end44.i.if.end85_crit_edge:                    ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end85

if.end44.i.if.else47.i_crit_edge:                 ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else47.i

if.else47.i:                                      ; preds = %if.end44.i.if.else47.i_crit_edge, %sw.bb20.i.if.else47.i_crit_edge
  br label %if.end85

if.end85:                                         ; preds = %if.else47.i, %if.end44.i.if.end85_crit_edge, %land.lhs.true.i.if.end85_crit_edge, %sw.bb20.i.if.end85_crit_edge, %if.end19.i, %if.end16.i.if.end85_crit_edge, %if.end5.i.if.end85_crit_edge, %if.then.i.if.end85_crit_edge, %if.then83.if.end85_crit_edge
  %cause.1 = phi ptr [ @.str.12, %if.else47.i ], [ @.str.12, %if.end19.i ], [ @.str.13, %if.then.i.if.end85_crit_edge ], [ @.str.21, %if.end16.i.if.end85_crit_edge ], [ @.str.21, %if.end5.i.if.end85_crit_edge ], [ @.str.12, %sw.bb20.i.if.end85_crit_edge ], [ @.str.22, %if.end44.i.if.end85_crit_edge ], [ @.str.22, %land.lhs.true.i.if.end85_crit_edge ], [ @.str.23, %if.then83.if.end85_crit_edge ]
  %status.1 = phi i32 [ 0, %if.else47.i ], [ 0, %if.end19.i ], [ 2, %if.then.i.if.end85_crit_edge ], [ 2, %if.end16.i.if.end85_crit_edge ], [ 2, %if.end5.i.if.end85_crit_edge ], [ 6, %sw.bb20.i.if.end85_crit_edge ], [ 2, %if.end44.i.if.end85_crit_edge ], [ 2, %land.lhs.true.i.if.end85_crit_edge ], [ 6, %if.then83.if.end85_crit_edge ]
  %rc.0 = phi i32 [ 0, %if.else47.i ], [ 0, %if.end19.i ], [ -22, %if.then.i.if.end85_crit_edge ], [ %call.i, %if.end16.i.if.end85_crit_edge ], [ -22, %if.end5.i.if.end85_crit_edge ], [ %call28.i, %sw.bb20.i.if.end85_crit_edge ], [ %call43.i, %if.end44.i.if.end85_crit_edge ], [ %call28.i, %land.lhs.true.i.if.end85_crit_edge ], [ -22, %if.then83.if.end85_crit_edge ]
  br i1 %spec.select, label %lor.lhs.false90, label %if.end85.out_crit_edge

if.end85.out_crit_edge:                           ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end85.thread:                                  ; preds = %sw.epilog
  br i1 %spec.select, label %if.end85.thread.if.then97_crit_edge, label %if.end85.thread.out_crit_edge

if.end85.thread.out_crit_edge:                    ; preds = %if.end85.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end85.thread.if.then97_crit_edge:              ; preds = %if.end85.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then97

lor.lhs.false90:                                  ; preds = %if.end85
  %45 = ptrtoint ptr %xattr_value to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %xattr_value, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %46)
  %cmp92 = icmp eq i8 %46, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -126, i32 %rc.0)
  %cmp95 = icmp eq i32 %rc.0, -126
  %or.cond = select i1 %cmp92, i1 true, i1 %cmp95
  br i1 %or.cond, label %lor.lhs.false90.if.then97_crit_edge, label %lor.lhs.false90.out_crit_edge

lor.lhs.false90.out_crit_edge:                    ; preds = %lor.lhs.false90
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

lor.lhs.false90.if.then97_crit_edge:              ; preds = %lor.lhs.false90
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then97

if.then97:                                        ; preds = %lor.lhs.false90.if.then97_crit_edge, %if.end85.thread.if.then97_crit_edge, %sw.epilog.thread.if.then97_crit_edge
  %cause.1227233 = phi ptr [ %cause.1, %lor.lhs.false90.if.then97_crit_edge ], [ @.str.12, %if.end85.thread.if.then97_crit_edge ], [ @.str.12, %sw.epilog.thread.if.then97_crit_edge ]
  %call.i202 = tail call i32 @integrity_modsig_verify(i32 noundef 1, ptr noundef nonnull %modsig) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i202)
  %tobool.not.i203 = icmp eq i32 %call.i202, 0
  br i1 %tobool.not.i203, label %if.then97.out_crit_edge, label %land.lhs.true.i204

if.then97.out_crit_edge:                          ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

land.lhs.true.i204:                               ; preds = %if.then97
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %func)
  %cmp.i = icmp eq i32 %func, 8
  br i1 %cmp.i, label %if.end.i205, label %land.lhs.true.i204.if.then3.i206_crit_edge

land.lhs.true.i204.if.then3.i206_crit_edge:       ; preds = %land.lhs.true.i204
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then3.i206

if.end.i205:                                      ; preds = %land.lhs.true.i204
  %call1.i = tail call i32 @integrity_modsig_verify(i32 noundef 2, ptr noundef nonnull %modsig) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i205.out_crit_edge, label %if.end.i205.if.then3.i206_crit_edge

if.end.i205.if.then3.i206_crit_edge:              ; preds = %if.end.i205
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then3.i206

if.end.i205.out_crit_edge:                        ; preds = %if.end.i205
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then3.i206:                                    ; preds = %if.end.i205.if.then3.i206_crit_edge, %land.lhs.true.i204.if.then3.i206_crit_edge
  %rc.015.i = phi i32 [ %call1.i, %if.end.i205.if.then3.i206_crit_edge ], [ %call.i202, %land.lhs.true.i204.if.then3.i206_crit_edge ]
  br label %out

out:                                              ; preds = %if.then3.i206, %if.end.i205.out_crit_edge, %if.then97.out_crit_edge, %lor.lhs.false90.out_crit_edge, %if.end85.thread.out_crit_edge, %if.end85.out_crit_edge, %sw.bb43, %sw.bb42, %sw.bb37.out_crit_edge, %if.end35.out_crit_edge, %if.then33, %lor.lhs.false.out_crit_edge, %if.end23.out_crit_edge, %if.then9.out_crit_edge
  %cause.3 = phi ptr [ %cause.1, %lor.lhs.false90.out_crit_edge ], [ %cause.1, %if.end85.out_crit_edge ], [ @.str.17, %sw.bb43 ], [ @.str.16, %sw.bb42 ], [ @.str.12, %if.then9.out_crit_edge ], [ %cond, %if.end23.out_crit_edge ], [ %cond, %if.then33 ], [ %cond, %lor.lhs.false.out_crit_edge ], [ @.str.15, %sw.bb37.out_crit_edge ], [ @.str.15, %if.end35.out_crit_edge ], [ @.str.12, %if.end85.thread.out_crit_edge ], [ %cause.1227233, %if.then97.out_crit_edge ], [ %cause.1227233, %if.end.i205.out_crit_edge ], [ @.str.22, %if.then3.i206 ]
  %status.2 = phi i32 [ %status.1, %lor.lhs.false90.out_crit_edge ], [ %status.1, %if.end85.out_crit_edge ], [ 2, %sw.bb43 ], [ 3, %sw.bb42 ], [ 6, %if.then9.out_crit_edge ], [ 4, %if.end23.out_crit_edge ], [ 0, %if.then33 ], [ 4, %lor.lhs.false.out_crit_edge ], [ 5, %sw.bb37.out_crit_edge ], [ %call36, %if.end35.out_crit_edge ], [ %call36, %if.end85.thread.out_crit_edge ], [ 0, %if.then97.out_crit_edge ], [ 0, %if.end.i205.out_crit_edge ], [ 2, %if.then3.i206 ]
  %rc.1 = phi i32 [ %rc.0, %lor.lhs.false90.out_crit_edge ], [ %rc.0, %if.end85.out_crit_edge ], [ %xattr_len, %sw.bb43 ], [ %xattr_len, %sw.bb42 ], [ %xattr_len, %if.then9.out_crit_edge ], [ %xattr_len, %if.end23.out_crit_edge ], [ %xattr_len, %if.then33 ], [ %xattr_len, %lor.lhs.false.out_crit_edge ], [ %xattr_len, %sw.bb37.out_crit_edge ], [ %xattr_len, %if.end35.out_crit_edge ], [ %xattr_len, %if.end85.thread.out_crit_edge ], [ 0, %if.then97.out_crit_edge ], [ 0, %if.end.i205.out_crit_edge ], [ %rc.015.i, %if.then3.i206 ]
  %i_sb = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 8
  %47 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %i_sb, align 4
  %s_iflags = getelementptr inbounds %struct.super_block, ptr %48, i32 0, i32 11
  %49 = ptrtoint ptr %s_iflags to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %s_iflags, align 8
  %and100 = and i32 %50, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %out.if.else_crit_edge, label %land.lhs.true102

out.if.else_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true102:                                 ; preds = %out
  %and105 = and i32 %50, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %lor.lhs.false107, label %land.lhs.true102.if.then111_crit_edge

land.lhs.true102.if.then111_crit_edge:            ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then111

lor.lhs.false107:                                 ; preds = %land.lhs.true102
  %51 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags, align 8
  %and109 = and i32 %52, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %lor.lhs.false107.if.else_crit_edge, label %lor.lhs.false107.if.then111_crit_edge

lor.lhs.false107.if.then111_crit_edge:            ; preds = %lor.lhs.false107
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then111

lor.lhs.false107.if.else_crit_edge:               ; preds = %lor.lhs.false107
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then111:                                       ; preds = %lor.lhs.false107.if.then111_crit_edge, %land.lhs.true102.if.then111_crit_edge
  tail call void @integrity_audit_msg(i32 noundef 1800, ptr noundef %11, ptr noundef %filename, ptr noundef nonnull @ima_appraise_measurement.op, ptr noundef nonnull @.str.19, i32 noundef %rc.1, i32 noundef 0) #12
  br label %if.end147

if.else:                                          ; preds = %lor.lhs.false107.if.else_crit_edge, %out.if.else_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.2)
  %cmp112.not = icmp eq i32 %status.2, 0
  br i1 %cmp112.not, label %if.else145, label %if.then114

if.then114:                                       ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_appraise to i32))
  %53 = load i32, ptr @ima_appraise, align 4
  %and115 = and i32 %53, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  %brmerge201 = select i1 %tobool116.not, i1 true, i1 %spec.select
  br i1 %brmerge201, label %if.then114.if.end131_crit_edge, label %land.lhs.true119

if.then114.if.end131_crit_edge:                   ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end131

land.lhs.true119:                                 ; preds = %if.then114
  %tobool120.not = icmp eq ptr %xattr_value, null
  br i1 %tobool120.not, label %land.lhs.true119.if.then126_crit_edge, label %lor.lhs.false121

land.lhs.true119.if.then126_crit_edge:            ; preds = %land.lhs.true119
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then126

lor.lhs.false121:                                 ; preds = %land.lhs.true119
  %54 = ptrtoint ptr %xattr_value to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %xattr_value, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %55)
  %cmp124.not = icmp eq i8 %55, 3
  br i1 %cmp124.not, label %lor.lhs.false121.if.end131_crit_edge, label %lor.lhs.false121.if.then126_crit_edge

lor.lhs.false121.if.then126_crit_edge:            ; preds = %lor.lhs.false121
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then126

lor.lhs.false121.if.end131_crit_edge:             ; preds = %lor.lhs.false121
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end131

if.then126:                                       ; preds = %lor.lhs.false121.if.then126_crit_edge, %land.lhs.true119.if.then126_crit_edge
  %ima_hash.i207 = getelementptr inbounds %struct.integrity_iint_cache, ptr %iint, i32 0, i32 8
  %56 = ptrtoint ptr %ima_hash.i207 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ima_hash.i207, align 8
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %57, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %59)
  %cmp.i208 = icmp ult i8 %59, 3
  br i1 %cmp.i208, label %if.then126.ima_fix_xattr.exit_crit_edge, label %if.else.i209

if.then126.ima_fix_xattr.exit_crit_edge:          ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #14
  br label %ima_fix_xattr.exit

if.else.i209:                                     ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #14
  %xattr5.i = getelementptr inbounds %struct.ima_digest_data, ptr %57, i32 0, i32 2
  %60 = ptrtoint ptr %xattr5.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 4, ptr %xattr5.i, align 1
  %61 = ptrtoint ptr %ima_hash.i207 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ima_hash.i207, align 8
  br label %ima_fix_xattr.exit

ima_fix_xattr.exit:                               ; preds = %if.else.i209, %if.then126.ima_fix_xattr.exit_crit_edge
  %.sink21.i = phi ptr [ %62, %if.else.i209 ], [ %57, %if.then126.ima_fix_xattr.exit_crit_edge ]
  %.sink.i = phi i8 [ %59, %if.else.i209 ], [ 1, %if.then126.ima_fix_xattr.exit_crit_edge ]
  %offset.0.i = phi i32 [ 0, %if.else.i209 ], [ 1, %if.then126.ima_fix_xattr.exit_crit_edge ]
  %algo9.i = getelementptr inbounds %struct.ima_digest_data, ptr %.sink21.i, i32 0, i32 2, i32 0, i32 1
  %63 = ptrtoint ptr %algo9.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %.sink.i, ptr %algo9.i, align 1
  %64 = ptrtoint ptr %ima_hash.i207 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ima_hash.i207, align 8
  %xattr11.i = getelementptr inbounds %struct.ima_digest_data, ptr %65, i32 0, i32 2
  %arrayidx.i210 = getelementptr [2 x i8], ptr %xattr11.i, i32 0, i32 %offset.0.i
  %sub.i = sub nuw nsw i32 2, %offset.0.i
  %length.i211 = getelementptr inbounds %struct.ima_digest_data, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %length.i211 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %length.i211, align 1
  %conv13.i = zext i8 %67 to i32
  %add.i = add nuw nsw i32 %sub.i, %conv13.i
  %call.i212 = tail call i32 @__vfs_setxattr_noperm(ptr noundef nonnull @init_user_ns, ptr noundef %retval.0.i.i, ptr noundef nonnull @.str.10, ptr noundef %arrayidx.i210, i32 noundef %add.i, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i212)
  %tobool128.not = icmp eq i32 %call.i212, 0
  %spec.select236 = select i1 %tobool128.not, i32 0, i32 %status.2
  br label %if.end131

if.end131:                                        ; preds = %ima_fix_xattr.exit, %lor.lhs.false121.if.end131_crit_edge, %if.then114.if.end131_crit_edge
  %status.3 = phi i32 [ %status.2, %if.then114.if.end131_crit_edge ], [ %status.2, %lor.lhs.false121.if.end131_crit_edge ], [ %spec.select236, %ima_fix_xattr.exit ]
  %i_size132 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 14
  %68 = ptrtoint ptr %i_size132 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %i_size132, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %69)
  %cmp133 = icmp eq i64 %69, 0
  br i1 %cmp133, label %land.lhs.true135, label %if.end131.if.end144_crit_edge

if.end131.if.end144_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end144

land.lhs.true135:                                 ; preds = %if.end131
  %70 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %flags, align 8
  %and137 = and i32 %71, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137)
  %tobool138.not = icmp eq i32 %and137, 0
  br i1 %tobool138.not, label %land.lhs.true135.if.end144_crit_edge, label %land.lhs.true139

land.lhs.true135.if.end144_crit_edge:             ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end144

land.lhs.true139:                                 ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #14
  %atomic_flags140 = getelementptr inbounds %struct.integrity_iint_cache, ptr %iint, i32 0, i32 6
  %72 = ptrtoint ptr %atomic_flags140 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %atomic_flags140, align 4
  %74 = and i32 %73, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool142.not = icmp eq i32 %74, 0
  %spec.select237 = select i1 %tobool142.not, i32 %status.3, i32 0
  br label %if.end144

if.end144:                                        ; preds = %land.lhs.true139, %land.lhs.true135.if.end144_crit_edge, %if.end131.if.end144_crit_edge
  %status.4 = phi i32 [ %status.3, %land.lhs.true135.if.end144_crit_edge ], [ %status.3, %if.end131.if.end144_crit_edge ], [ %spec.select237, %land.lhs.true139 ]
  tail call void @integrity_audit_msg(i32 noundef 1800, ptr noundef %11, ptr noundef %filename, ptr noundef nonnull @ima_appraise_measurement.op, ptr noundef %cause.3, i32 noundef %rc.1, i32 noundef 0) #12
  br label %if.end147

if.else145:                                       ; preds = %if.else
  %switch.tableidx = add i32 %func, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %75 = icmp ult i32 %switch.tableidx, 5
  br i1 %75, label %switch.lookup, label %if.else145.ima_cache_flags.exit_crit_edge

if.else145.ima_cache_flags.exit_crit_edge:        ; preds = %if.else145
  call void @__sanitizer_cov_trace_pc() #14
  br label %ima_cache_flags.exit

switch.lookup:                                    ; preds = %if.else145
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.ima_appraise_measurement, i32 0, i32 %switch.tableidx
  %76 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %76)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %ima_cache_flags.exit

ima_cache_flags.exit:                             ; preds = %switch.lookup, %if.else145.ima_cache_flags.exit_crit_edge
  %.sink17.i = phi i32 [ %switch.load, %switch.lookup ], [ 524296, %if.else145.ima_cache_flags.exit_crit_edge ]
  %77 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %flags, align 8
  %or12.i = or i32 %78, %.sink17.i
  store i32 %or12.i, ptr %flags, align 8
  br label %if.end147

if.end147:                                        ; preds = %ima_cache_flags.exit, %if.end144, %if.then111
  %status.5 = phi i32 [ 0, %ima_cache_flags.exit ], [ %status.4, %if.end144 ], [ 2, %if.then111 ]
  %79 = zext i32 %func to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %func, label %sw.default.i219 [
    i32 2, label %sw.bb.i216
    i32 3, label %sw.bb1.i217
    i32 4, label %sw.bb7.i218
    i32 1, label %if.end147.sw.bb13.i_crit_edge
    i32 5, label %if.end147.sw.bb13.i_crit_edge241
  ]

if.end147.sw.bb13.i_crit_edge241:                 ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb13.i

if.end147.sw.bb13.i_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb13.i

sw.bb.i216:                                       ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #14
  %ima_mmap_status.i = getelementptr inbounds %struct.integrity_iint_cache, ptr %iint, i32 0, i32 7
  %80 = ptrtoint ptr %ima_mmap_status.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %bf.load.i = load i32, ptr %ima_mmap_status.i, align 4
  %bf.value.i = shl i32 %status.5, 24
  %bf.shl.i = and i32 %bf.value.i, 251658240
  %bf.clear.i = and i32 %bf.load.i, -251658241
  %bf.set.i = or i32 %bf.clear.i, %bf.shl.i
  store i32 %bf.set.i, ptr %ima_mmap_status.i, align 4
  br label %cleanup

sw.bb1.i217:                                      ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #14
  %ima_bprm_status.i = getelementptr inbounds %struct.integrity_iint_cache, ptr %iint, i32 0, i32 7
  %81 = ptrtoint ptr %ima_bprm_status.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %bf.load2.i = load i32, ptr %ima_bprm_status.i, align 4
  %bf.value3.i = shl i32 %status.5, 20
  %bf.shl4.i = and i32 %bf.value3.i, 15728640
  %bf.clear5.i = and i32 %bf.load2.i, -15728641
  %bf.set6.i = or i32 %bf.clear5.i, %bf.shl4.i
  store i32 %bf.set6.i, ptr %ima_bprm_status.i, align 4
  br label %cleanup

sw.bb7.i218:                                      ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #14
  %ima_creds_status.i = getelementptr inbounds %struct.integrity_iint_cache, ptr %iint, i32 0, i32 7
  %82 = ptrtoint ptr %ima_creds_status.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %bf.load8.i = load i32, ptr %ima_creds_status.i, align 4
  %bf.value9.i = shl i32 %status.5, 12
  %bf.shl10.i = and i32 %bf.value9.i, 61440
  %bf.clear11.i = and i32 %bf.load8.i, -61441
  %bf.set12.i = or i32 %bf.clear11.i, %bf.shl10.i
  store i32 %bf.set12.i, ptr %ima_creds_status.i, align 4
  br label %cleanup

sw.bb13.i:                                        ; preds = %if.end147.sw.bb13.i_crit_edge, %if.end147.sw.bb13.i_crit_edge241
  %ima_file_status.i = getelementptr inbounds %struct.integrity_iint_cache, ptr %iint, i32 0, i32 7
  %83 = ptrtoint ptr %ima_file_status.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %bf.load14.i = load i32, ptr %ima_file_status.i, align 4
  %bf.shl16.i = shl i32 %status.5, 28
  %bf.clear17.i = and i32 %bf.load14.i, 268435455
  %bf.set18.i = or i32 %bf.clear17.i, %bf.shl16.i
  store i32 %bf.set18.i, ptr %ima_file_status.i, align 4
  br label %cleanup

sw.default.i219:                                  ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #14
  %ima_read_status.i = getelementptr inbounds %struct.integrity_iint_cache, ptr %iint, i32 0, i32 7
  %84 = ptrtoint ptr %ima_read_status.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %bf.load20.i = load i32, ptr %ima_read_status.i, align 4
  %bf.value21.i = shl i32 %status.5, 16
  %bf.shl22.i = and i32 %bf.value21.i, 983040
  %bf.clear23.i = and i32 %bf.load20.i, -983041
  %bf.set24.i = or i32 %bf.clear23.i, %bf.shl22.i
  store i32 %bf.set24.i, ptr %ima_read_status.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.default.i219, %sw.bb13.i, %sw.bb7.i218, %sw.bb1.i217, %sw.bb.i216, %file_dentry.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 6, %file_dentry.exit.cleanup_crit_edge ], [ %status.5, %sw.bb.i216 ], [ %status.5, %sw.bb1.i217 ], [ %status.5, %sw.bb7.i218 ], [ %status.5, %sw.bb13.i ], [ %status.5, %sw.default.i219 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @evm_verifyxattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @integrity_audit_msg(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ima_update_xattr(ptr noundef %iint, ptr noundef %file) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %and.i.i = and i32 %3, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.file_dentry.exit_crit_edge, label %if.then.i.i, !prof !73

entry.file_dentry.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %file_dentry.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %4 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_inode.i.i, align 8
  %d_op.i.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %d_op.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_op.i.i, align 8
  %d_real.i.i = getelementptr inbounds %struct.dentry_operations, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %d_real.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_real.i.i, align 16
  %call.i.i = tail call ptr %9(ptr noundef %1, ptr noundef %5) #12
  br label %file_dentry.exit

file_dentry.exit:                                 ; preds = %if.then.i.i, %entry.file_dentry.exit_crit_edge
  %retval.0.i.i = phi ptr [ %call.i.i, %if.then.i.i ], [ %1, %entry.file_dentry.exit_crit_edge ]
  %atomic_flags = getelementptr inbounds %struct.integrity_iint_cache, ptr %iint, i32 0, i32 6
  %10 = ptrtoint ptr %atomic_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %atomic_flags, align 4
  %12 = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.end, label %file_dentry.exit.cleanup_crit_edge

file_dentry.exit.cleanup_crit_edge:               ; preds = %file_dentry.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %file_dentry.exit
  %ima_file_status = getelementptr inbounds %struct.integrity_iint_cache, ptr %iint, i32 0, i32 7
  %13 = ptrtoint ptr %ima_file_status to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load = load i32, ptr %ima_file_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %bf.load)
  %cmp.not = icmp ult i32 %bf.load, 268435456
  br i1 %cmp.not, label %if.end.if.end4_crit_edge, label %land.lhs.true

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %flags = getelementptr inbounds %struct.integrity_iint_cache, ptr %iint, i32 0, i32 4
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 8
  %and = and i32 %15, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end4_crit_edge

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %land.lhs.true.if.end4_crit_edge, %if.end.if.end4_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_hash_algo to i32))
  %16 = load i32, ptr @ima_hash_algo, align 4
  %call5 = tail call i32 @ima_collect_measurement(ptr noundef %iint, ptr noundef %file, ptr noundef null, i64 noundef 0, i32 noundef %16, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %17 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %f_inode.i, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %18, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #12
  %ima_hash.i = getelementptr inbounds %struct.integrity_iint_cache, ptr %iint, i32 0, i32 8
  %19 = ptrtoint ptr %ima_hash.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ima_hash.i, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %20, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %22)
  %cmp.i = icmp ult i8 %22, 3
  br i1 %cmp.i, label %if.end8.ima_fix_xattr.exit_crit_edge, label %if.else.i

if.end8.ima_fix_xattr.exit_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %ima_fix_xattr.exit

if.else.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %xattr5.i = getelementptr inbounds %struct.ima_digest_data, ptr %20, i32 0, i32 2
  %23 = ptrtoint ptr %xattr5.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 4, ptr %xattr5.i, align 1
  %24 = ptrtoint ptr %ima_hash.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ima_hash.i, align 8
  br label %ima_fix_xattr.exit

ima_fix_xattr.exit:                               ; preds = %if.else.i, %if.end8.ima_fix_xattr.exit_crit_edge
  %.sink21.i = phi ptr [ %25, %if.else.i ], [ %20, %if.end8.ima_fix_xattr.exit_crit_edge ]
  %.sink.i = phi i8 [ %22, %if.else.i ], [ 1, %if.end8.ima_fix_xattr.exit_crit_edge ]
  %offset.0.i = phi i32 [ 0, %if.else.i ], [ 1, %if.end8.ima_fix_xattr.exit_crit_edge ]
  %algo9.i = getelementptr inbounds %struct.ima_digest_data, ptr %.sink21.i, i32 0, i32 2, i32 0, i32 1
  %26 = ptrtoint ptr %algo9.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %.sink.i, ptr %algo9.i, align 1
  %27 = ptrtoint ptr %ima_hash.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ima_hash.i, align 8
  %xattr11.i = getelementptr inbounds %struct.ima_digest_data, ptr %28, i32 0, i32 2
  %arrayidx.i = getelementptr [2 x i8], ptr %xattr11.i, i32 0, i32 %offset.0.i
  %sub.i = sub nuw nsw i32 2, %offset.0.i
  %length.i = getelementptr inbounds %struct.ima_digest_data, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %length.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %length.i, align 1
  %conv13.i = zext i8 %30 to i32
  %add.i = add nuw nsw i32 %sub.i, %conv13.i
  %call.i = tail call i32 @__vfs_setxattr_noperm(ptr noundef nonnull @init_user_ns, ptr noundef %retval.0.i.i, ptr noundef nonnull @.str.10, ptr noundef %arrayidx.i, i32 noundef %add.i, i32 noundef 0) #12
  %31 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %f_inode.i, align 8
  %i_rwsem.i21 = getelementptr inbounds %struct.inode, ptr %32, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i21) #12
  br label %cleanup

cleanup:                                          ; preds = %ima_fix_xattr.exit, %if.end4.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %file_dentry.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_collect_measurement(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ima_inode_post_setattr(ptr noundef %mnt_userns, ptr nocapture noundef readonly %dentry) local_unnamed_addr #5 align 64 {
entry:
  %secid.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_policy_flag to i32))
  %2 = load i32, ptr @ima_policy_flag, align 4
  %and = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %1, align 8
  %5 = and i16 %4, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %5)
  %cmp = icmp eq i16 %5, -32768
  br i1 %cmp, label %lor.lhs.false3, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %i_opflags = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %i_opflags to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %i_opflags, align 2
  %8 = and i16 %7, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool6.not = icmp eq i16 %8, 0
  br i1 %tobool6.not, label %lor.lhs.false3.cleanup_crit_edge, label %if.end

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %secid.i) #12
  %9 = ptrtoint ptr %secid.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %secid.i, align 4, !annotation !72
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_appraise to i32))
  %10 = load i32, ptr @ima_appraise, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %if.end.ima_must_appraise.exit_crit_edge, label %if.end.i

if.end.ima_must_appraise.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %ima_must_appraise.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @security_current_getsecid_subj(ptr noundef nonnull %secid.i) #12
  %11 = call i32 @llvm.read_register.i32(metadata !62) #12
  %and.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 99
  %15 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cred.i, align 16
  %17 = ptrtoint ptr %secid.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %secid.i, align 4
  %call1.i = call i32 @ima_match_policy(ptr noundef %mnt_userns, ptr noundef %1, ptr noundef %16, i32 noundef %18, i32 noundef 5, i32 noundef 16, i32 noundef 260, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #12
  br label %ima_must_appraise.exit

ima_must_appraise.exit:                           ; preds = %if.end.i, %if.end.ima_must_appraise.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.end.i ], [ 0, %if.end.ima_must_appraise.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %secid.i) #12
  %call8 = call ptr @integrity_iint_find(ptr noundef %1) #12
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %ima_must_appraise.exit.cleanup_crit_edge, label %if.then10

ima_must_appraise.exit.cleanup_crit_edge:         ; preds = %ima_must_appraise.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then10:                                        ; preds = %ima_must_appraise.exit
  %atomic_flags = getelementptr inbounds %struct.integrity_iint_cache, ptr %call8, i32 0, i32 6
  call void @_set_bit(i32 noundef 2, ptr noundef %atomic_flags) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool11.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool11.not, label %if.then12, label %if.then10.cleanup_crit_edge

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then12:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  call void @_clear_bit(i32 noundef 1, ptr noundef %atomic_flags) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.then10.cleanup_crit_edge, %ima_must_appraise.exit.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @integrity_iint_find(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ima_inode_setxattr(ptr noundef %dentry, ptr noundef %xattr_name, ptr noundef readonly %xattr_value, i32 noundef %xattr_value_len) local_unnamed_addr #5 align 64 {
entry:
  %zero.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @strcmp(ptr noundef %xattr_name, ptr noundef nonnull dereferenceable(13) @.str.10) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then.i:                                        ; preds = %entry
  %call1.i = tail call zeroext i1 @capable(i32 noundef 21) #12
  br i1 %call1.i, label %if.then, label %if.then.i.if.else_crit_edge

if.then.i.if.else_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then:                                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xattr_value_len)
  %tobool.not = icmp eq i32 %xattr_value_len, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %lor.lhs.false

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then
  %0 = ptrtoint ptr %xattr_value to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %xattr_value, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %1)
  %cmp1 = icmp ugt i8 %1, 5
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end18

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else:                                          ; preds = %if.then.i.if.else_crit_edge, %entry.if.else_crit_edge
  %retval.0.i.ph = phi i32 [ 0, %entry.if.else_crit_edge ], [ -1, %if.then.i.if.else_crit_edge ]
  %call8 = tail call i32 @strcmp(ptr noundef %xattr_name, ptr noundef nonnull dereferenceable(13) @.str.20) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp ne i32 %call8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xattr_value_len)
  %cmp10.not = icmp eq i32 %xattr_value_len, 0
  %or.cond = or i1 %cmp10.not, %tobool9.not
  br i1 %or.cond, label %if.else.lor.lhs.false21_crit_edge, label %if.then12

if.else.lor.lhs.false21_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false21

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %xattr_value to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %xattr_value, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %3)
  %cmp15 = icmp eq i8 %3, 5
  %phi.cast = zext i1 %cmp15 to i32
  br label %lor.lhs.false21

if.end18:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp6 = icmp eq i8 %1, 3
  %digsig.0 = zext i1 %cmp6 to i32
  br label %if.then24

lor.lhs.false21:                                  ; preds = %if.then12, %if.else.lor.lhs.false21_crit_edge
  %digsig.0.shrunk.ph = phi i32 [ %phi.cast, %if.then12 ], [ 0, %if.else.lor.lhs.false21_crit_edge ]
  %call22 = tail call zeroext i1 @evm_revalidate_status(ptr noundef %xattr_name) #12
  br i1 %call22, label %lor.lhs.false21.if.then24_crit_edge, label %lor.lhs.false21.cleanup_crit_edge

lor.lhs.false21.cleanup_crit_edge:                ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false21.if.then24_crit_edge:              ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then24

if.then24:                                        ; preds = %lor.lhs.false21.if.then24_crit_edge, %if.end18
  %digsig.068 = phi i32 [ %digsig.0.shrunk.ph, %lor.lhs.false21.if.then24_crit_edge ], [ %digsig.0, %if.end18 ]
  %tobool.not.i.i = icmp eq ptr %xattr_value, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %xattr_value_len)
  %cmp.i.i = icmp slt i32 %xattr_value_len, 2
  %or.cond.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %or.cond.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_hash_algo to i32))
  %4 = load i32, ptr @ima_hash_algo, align 4
  br label %ima_get_hash_algo.exit.i

if.end.i.i:                                       ; preds = %if.then24
  %5 = ptrtoint ptr %xattr_value to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %xattr_value, align 1
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.34)
  switch i8 %6, label %if.end.i.i.sw.epilog.i.i_crit_edge [
    i8 3, label %sw.bb.i.i
    i8 4, label %sw.bb15.i.i
    i8 1, label %sw.bb21.i.i
  ]

if.end.i.i.sw.epilog.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i.i

sw.bb.i.i:                                        ; preds = %if.end.i.i
  %version.i.i = getelementptr inbounds %struct.signature_v2_hdr, ptr %xattr_value, i32 0, i32 1
  %8 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %version.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp2.not.i.i = icmp ne i8 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %xattr_value_len)
  %cmp5.i.i = icmp ult i32 %xattr_value_len, 10
  %or.cond47.i.i = or i1 %cmp5.i.i, %cmp2.not.i.i
  br i1 %or.cond47.i.i, label %sw.bb.i.i.if.then11.i.i_crit_edge, label %lor.lhs.false7.i.i

sw.bb.i.i.if.then11.i.i_crit_edge:                ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

lor.lhs.false7.i.i:                               ; preds = %sw.bb.i.i
  %hash_algo.i.i = getelementptr inbounds %struct.signature_v2_hdr, ptr %xattr_value, i32 0, i32 2
  %10 = ptrtoint ptr %hash_algo.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %hash_algo.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %11)
  %cmp9.i.i = icmp ugt i8 %11, 19
  br i1 %cmp9.i.i, label %lor.lhs.false7.i.i.if.then11.i.i_crit_edge, label %if.end12.i.i

lor.lhs.false7.i.i.if.then11.i.i_crit_edge:       ; preds = %lor.lhs.false7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %lor.lhs.false7.i.i.if.then11.i.i_crit_edge, %sw.bb.i.i.if.then11.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_hash_algo to i32))
  %12 = load i32, ptr @ima_hash_algo, align 4
  br label %ima_get_hash_algo.exit.i

if.end12.i.i:                                     ; preds = %lor.lhs.false7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv8.i.i = zext i8 %11 to i32
  br label %ima_get_hash_algo.exit.i

sw.bb15.i.i:                                      ; preds = %if.end.i.i
  %data.i.i = getelementptr inbounds %struct.evm_ima_xattr_data, ptr %xattr_value, i32 0, i32 1
  %13 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %data.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %14)
  %cmp17.i.i = icmp ult i8 %14, 20
  br i1 %cmp17.i.i, label %if.then19.i.i, label %sw.bb15.i.i.sw.epilog.i.i_crit_edge

sw.bb15.i.i.sw.epilog.i.i_crit_edge:              ; preds = %sw.bb15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i.i

if.then19.i.i:                                    ; preds = %sw.bb15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv16.i.i = zext i8 %14 to i32
  br label %ima_get_hash_algo.exit.i

sw.bb21.i.i:                                      ; preds = %if.end.i.i
  %15 = zext i32 %xattr_value_len to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %xattr_value_len, label %sw.bb21.i.i.sw.epilog.i.i_crit_edge [
    i32 21, label %if.then24.i.i
    i32 17, label %sw.bb21.i.i.ima_get_hash_algo.exit.i_crit_edge
  ]

sw.bb21.i.i.ima_get_hash_algo.exit.i_crit_edge:   ; preds = %sw.bb21.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ima_get_hash_algo.exit.i

sw.bb21.i.i.sw.epilog.i.i_crit_edge:              ; preds = %sw.bb21.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i.i

if.then24.i.i:                                    ; preds = %sw.bb21.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %zero.i.i) #12
  %16 = ptrtoint ptr %zero.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %zero.i.i, align 4
  %arrayidx26.i.i = getelementptr %struct.evm_ima_xattr_data, ptr %xattr_value, i32 17
  %bcmp.i.i = call i32 @bcmp(ptr noundef dereferenceable(4) %arrayidx26.i.i, ptr noundef nonnull dereferenceable(4) %zero.i.i, i32 4) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool27.not.i.i = icmp eq i32 %bcmp.i.i, 0
  %..i.i = select i1 %tobool27.not.i.i, i32 1, i32 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %zero.i.i) #12
  br label %ima_get_hash_algo.exit.i

sw.epilog.i.i:                                    ; preds = %sw.bb21.i.i.sw.epilog.i.i_crit_edge, %sw.bb15.i.i.sw.epilog.i.i_crit_edge, %if.end.i.i.sw.epilog.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_hash_algo to i32))
  %17 = load i32, ptr @ima_hash_algo, align 4
  br label %ima_get_hash_algo.exit.i

ima_get_hash_algo.exit.i:                         ; preds = %sw.epilog.i.i, %if.then24.i.i, %sw.bb21.i.i.ima_get_hash_algo.exit.i_crit_edge, %if.then19.i.i, %if.end12.i.i, %if.then11.i.i, %if.then.i.i
  %retval.1.i.i = phi i32 [ %4, %if.then.i.i ], [ %17, %sw.epilog.i.i ], [ %..i.i, %if.then24.i.i ], [ %conv16.i.i, %if.then19.i.i ], [ %12, %if.then11.i.i ], [ %conv8.i.i, %if.end12.i.i ], [ 1, %sw.bb21.i.i.ima_get_hash_algo.exit.i_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @ima_setxattr_allowed_hash_algorithms, i32 noundef 4) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_setxattr_allowed_hash_algorithms to i32))
  %18 = load volatile i32, ptr @ima_setxattr_allowed_hash_algorithms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i48

if.then.i48:                                      ; preds = %ima_get_hash_algo.exit.i
  %shl.i = shl nuw i32 1, %retval.1.i.i
  %and.i = and i32 %18, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %if.then.i48.if.end12.i_crit_edge, label %if.then.i48.if.end28_crit_edge

if.then.i48.if.end28_crit_edge:                   ; preds = %if.then.i48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then.i48.if.end12.i_crit_edge:                 ; preds = %if.then.i48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i

if.else.i:                                        ; preds = %ima_get_hash_algo.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_hash_algo to i32))
  %19 = load i32, ptr @ima_hash_algo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.1.i.i, i32 %19)
  %cmp.i49 = icmp eq i32 %retval.1.i.i, %19
  br i1 %cmp.i49, label %if.else.i.if.end28_crit_edge, label %if.end7.i, !prof !73

if.else.i.if.end28_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.end7.i:                                        ; preds = %if.else.i
  %arrayidx.i = getelementptr [20 x ptr], ptr @hash_algo_name, i32 0, i32 %retval.1.i.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  %call8.i = tail call i32 @crypto_has_alg(ptr noundef %21, i32 noundef 0, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end7.i.if.end12.i_crit_edge, label %if.end7.i.if.end28_crit_edge

if.end7.i.if.end28_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.end7.i.if.end12.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.end7.i.if.end12.i_crit_edge, %if.then.i48.if.end12.i_crit_edge
  %errmsg.0.i = phi ptr [ @.str.24, %if.end7.i.if.end12.i_crit_edge ], [ @.str.25, %if.then.i48.if.end12.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3264, i32 noundef 4096) #18
  %tobool14.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool14.not.i, label %if.end12.i.cleanup_crit_edge, label %if.end16.i

if.end12.i.cleanup_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  %call17.i = tail call ptr @dentry_path(ptr noundef %dentry, ptr noundef nonnull %call7.i.i, i32 noundef 4096) #12
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %23 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %d_inode.i.i, align 8
  tail call void @integrity_audit_msg(i32 noundef 1800, ptr noundef %24, ptr noundef %call17.i, ptr noundef nonnull @.str.26, ptr noundef nonnull %errmsg.0.i, i32 noundef -13, i32 noundef 0) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

if.end28:                                         ; preds = %if.end7.i.if.end28_crit_edge, %if.else.i.if.end28_crit_edge, %if.then.i48.if.end28_crit_edge
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %25 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %d_inode.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_policy_flag to i32))
  %27 = load i32, ptr @ima_policy_flag, align 4
  %and.i51 = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i51)
  %tobool.not.i52 = icmp eq i32 %and.i51, 0
  br i1 %tobool.not.i52, label %if.end28.cleanup_crit_edge, label %lor.lhs.false.i

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end28
  %28 = ptrtoint ptr %26 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %26, align 8
  %30 = and i16 %29, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %30)
  %cmp.i53 = icmp eq i16 %30, -32768
  br i1 %cmp.i53, label %if.end.i, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call.i54 = tail call ptr @integrity_iint_find(ptr noundef %26) #12
  %tobool3.not.i = icmp eq ptr %call.i54, null
  br i1 %tobool3.not.i, label %if.end.i.cleanup_crit_edge, label %if.end5.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  %measured_pcrs.i = getelementptr inbounds %struct.integrity_iint_cache, ptr %call.i54, i32 0, i32 5
  %31 = ptrtoint ptr %measured_pcrs.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %measured_pcrs.i, align 4
  %atomic_flags.i = getelementptr inbounds %struct.integrity_iint_cache, ptr %call.i54, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 0, ptr noundef %atomic_flags.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %digsig.068)
  %tobool6.not.i = icmp eq i32 %digsig.068, 0
  br i1 %tobool6.not.i, label %if.else.i55, label %if.then7.i

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_set_bit(i32 noundef 3, ptr noundef %atomic_flags.i) #12
  br label %cleanup

if.else.i55:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %atomic_flags.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.else.i55, %if.then7.i, %if.end.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.end16.i, %if.end12.i.cleanup_crit_edge, %lor.lhs.false21.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.then.cleanup_crit_edge ], [ %retval.0.i.ph, %lor.lhs.false21.cleanup_crit_edge ], [ -13, %if.end16.i ], [ -13, %if.end12.i.cleanup_crit_edge ], [ 0, %if.end28.cleanup_crit_edge ], [ 0, %lor.lhs.false.i.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %if.then7.i ], [ 0, %if.else.i55 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @evm_revalidate_status(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ima_inode_removexattr(ptr nocapture noundef readonly %dentry, ptr noundef %xattr_name) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @strcmp(ptr noundef %xattr_name, ptr noundef nonnull dereferenceable(13) @.str.10) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.lor.lhs.false_crit_edge

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

if.then.i:                                        ; preds = %entry
  %call1.i = tail call zeroext i1 @capable(i32 noundef 21) #12
  br i1 %call1.i, label %if.then.i.if.then_crit_edge, label %if.then.i.lor.lhs.false_crit_edge

if.then.i.lor.lhs.false_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

if.then.i.if.then_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false:                                    ; preds = %if.then.i.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %retval.0.i.ph = phi i32 [ 0, %entry.lor.lhs.false_crit_edge ], [ -1, %if.then.i.lor.lhs.false_crit_edge ]
  %call1 = tail call zeroext i1 @evm_revalidate_status(ptr noundef %xattr_name) #12
  br i1 %call1, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end5_crit_edge

lor.lhs.false.if.end5_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %if.then.i.if.then_crit_edge
  %spec.store.select = phi i32 [ %retval.0.i.ph, %lor.lhs.false.if.then_crit_edge ], [ 0, %if.then.i.if.then_crit_edge ]
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_policy_flag to i32))
  %2 = load i32, ptr @ima_policy_flag, align 4
  %and.i = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.if.end5_crit_edge, label %lor.lhs.false.i

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

lor.lhs.false.i:                                  ; preds = %if.then
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %1, align 8
  %5 = and i16 %4, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %5)
  %cmp.i10 = icmp eq i16 %5, -32768
  br i1 %cmp.i10, label %if.end.i, label %lor.lhs.false.i.if.end5_crit_edge

lor.lhs.false.i.if.end5_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call.i11 = tail call ptr @integrity_iint_find(ptr noundef %1) #12
  %tobool3.not.i = icmp eq ptr %call.i11, null
  br i1 %tobool3.not.i, label %if.end.i.if.end5_crit_edge, label %if.end5.i

if.end.i.if.end5_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %measured_pcrs.i = getelementptr inbounds %struct.integrity_iint_cache, ptr %call.i11, i32 0, i32 5
  %6 = ptrtoint ptr %measured_pcrs.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %measured_pcrs.i, align 4
  %atomic_flags.i = getelementptr inbounds %struct.integrity_iint_cache, ptr %call.i11, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 0, ptr noundef %atomic_flags.i) #12
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %atomic_flags.i) #12
  br label %if.end5

if.end5:                                          ; preds = %if.end5.i, %if.end.i.if.end5_crit_edge, %lor.lhs.false.i.if.end5_crit_edge, %if.then.if.end5_crit_edge, %lor.lhs.false.if.end5_crit_edge
  %result.0 = phi i32 [ %retval.0.i.ph, %lor.lhs.false.if.end5_crit_edge ], [ %spec.store.select, %if.then.if.end5_crit_edge ], [ %spec.store.select, %lor.lhs.false.i.if.end5_crit_edge ], [ %spec.store.select, %if.end.i.if.end5_crit_edge ], [ %spec.store.select, %if.end5.i ]
  ret i32 %result.0
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @integrity_digsig_verify(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @integrity_modsig_verify(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__vfs_setxattr_noperm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_has_alg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dentry_path(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nobuiltin }
attributes #17 = { nobuiltin nounwind }
attributes #18 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !18, !19, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !43, !45, !47, !49, !50, !52, !54, !56, !58, !60}
!llvm.named.register.sp = !{!62}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @__param_ima_appraise, !1, !"__param_ima_appraise", i1 false, i1 false}
!1 = !{!"../security/integrity/ima/ima_appraise.c", i32 22, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../security/integrity/ima/ima_appraise.c", i32 33, i32 19}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../security/integrity/ima/ima_appraise.c", i32 35, i32 24}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../security/integrity/ima/ima_appraise.c", i32 37, i32 24}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../security/integrity/ima/ima_appraise.c", i32 39, i32 24}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../security/integrity/ima/ima_appraise.c", i32 42, i32 3}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @ima_appraise_parse_cmdline._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @ima_appraise_parse_cmdline._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../security/integrity/ima/ima_appraise.c", i32 48, i32 4}
!18 = !{ptr @ima_appraise_parse_cmdline._entry.7, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @ima_appraise_parse_cmdline._entry_ptr.9, !17, !"_entry_ptr", i1 false, i1 false}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../security/integrity/ima/ima_appraise.c", i32 80, i32 45}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../security/integrity/ima/ima_appraise.c", i32 221, i32 50}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../security/integrity/ima/ima_appraise.c", i32 361, i32 10}
!26 = !{ptr @ima_appraise_measurement.op, !27, !"op", i1 false, i1 false}
!27 = !{!"../security/integrity/ima/ima_appraise.c", i32 382, i32 20}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../security/integrity/ima/ima_appraise.c", i32 383, i32 22}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../security/integrity/ima/ima_appraise.c", i32 400, i32 5}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../security/integrity/ima/ima_appraise.c", i32 400, i32 32}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../security/integrity/ima/ima_appraise.c", i32 423, i32 11}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../security/integrity/ima/ima_appraise.c", i32 427, i32 11}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../security/integrity/ima/ima_appraise.c", i32 430, i32 11}
!40 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!41 = !{!"../security/integrity/ima/ima_appraise.c", i32 433, i32 3}
!42 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../security/integrity/ima/ima_appraise.c", i32 460, i32 11}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../security/integrity/ima/ima_appraise.c", i32 653, i32 33}
!47 = !{ptr @ima_appraise_cmdline_default, !48, !"ima_appraise_cmdline_default", i1 false, i1 false}
!48 = !{!"../security/integrity/ima/ima_appraise.c", i32 21, i32 14}
!49 = !{ptr @__param_str_ima_appraise, !1, !"__param_str_ima_appraise", i1 false, i1 false}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../security/integrity/ima/ima_appraise.c", i32 269, i32 13}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../security/integrity/ima/ima_appraise.c", i32 294, i32 13}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../security/integrity/ima/ima_appraise.c", i32 302, i32 12}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../security/integrity/ima/ima_appraise.c", i32 599, i32 23}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../security/integrity/ima/ima_appraise.c", i32 616, i32 12}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../security/integrity/ima/ima_appraise.c", i32 633, i32 8}
!62 = !{!"sp"}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!72 = !{!"auto-init"}
!73 = !{!"branch_weights", i32 2000, i32 1}
