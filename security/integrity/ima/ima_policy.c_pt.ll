; ModuleID = '/llk/IR_all_yes/security/integrity/ima/ima_policy.c_pt.bc'
source_filename = "../security/integrity/ima/ima_policy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.ima_rule_entry = type { %struct.list_head, i32, i32, i32, i32, i32, %struct.uuid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, ptr, ptr, ptr, ptr, i32, i32, [6 x %struct.anon.77], ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.anon.77 = type { ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.match_token = type { i32, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.user_namespace = type opaque
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.70, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.71, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.72, ptr, %struct.address_space, %struct.list_head, %union.anon.73, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.70 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.71 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.72 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.73 = type { ptr }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.40 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.40 = type { %struct.callback_head }
%struct.ima_rule_opt_list = type { i32, [0 x ptr] }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.substring_t = type { ptr, ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.25 }
%struct.llist_node = type { ptr }
%union.anon.25 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.27 }
%union.anon.27 = type { %struct.anon.28 }
%struct.anon.28 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.57 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.ima_template_desc = type { %struct.list_head, ptr, ptr, i32, ptr }

@__setup_str_default_measure_policy_setup = internal constant [8 x i8] c"ima_tcb\00", section ".init.rodata", align 1
@__setup_default_measure_policy_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_default_measure_policy_setup, ptr @default_measure_policy_setup, i32 0 }, section ".init.setup", align 4
@__setup_str_policy_setup = internal constant [12 x i8] c"ima_policy=\00", section ".init.rodata", align 1
@__setup_policy_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_policy_setup, ptr @policy_setup, i32 0 }, section ".init.setup", align 4
@__setup_str_default_appraise_policy_setup = internal constant [17 x i8] c"ima_appraise_tcb\00", section ".init.rodata", align 1
@__setup_default_appraise_policy_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_default_appraise_policy_setup, ptr @default_appraise_policy_setup, i32 0 }, section ".init.setup", align 4
@ima_rules = internal global { ptr, [28 x i8] } { ptr @ima_default_rules, [28 x i8] zeroinitializer }, align 32
@ima_match_policy.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"security/integrity/ima/ima_policy.c\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@ima_match_policy.__warned.2 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@ima_fail_unverifiable_sigs = internal unnamed_addr global i1 false, section ".data..ro_after_init", align 1
@ima_update_policy_flags.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ima_update_policy_flags.__warned.4 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ima_setxattr_allowed_hash_algorithms = dso_local global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@build_ima_appraise = internal unnamed_addr global i32 0, section ".data..ro_after_init", align 4
@temp_ima_appraise = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ima_appraise = external dso_local local_unnamed_addr global i32, align 4
@ima_policy_flag = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@ima_policy = internal unnamed_addr global i32 0, section ".init.data", align 4
@dont_measure_rules = internal global [13 x %struct.ima_rule_entry] [%struct.ima_rule_entry { %struct.list_head zeroinitializer, i32 2, i32 4, i32 0, i32 0, i32 40864, %struct.uuid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, [6 x %struct.anon.77] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, %struct.ima_rule_entry { %struct.list_head zeroinitializer, i32 2, i32 4, i32 0, i32 0, i32 1650812274, %struct.uuid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, [6 x %struct.anon.77] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, %struct.ima_rule_entry { %struct.list_head zeroinitializer, i32 2, i32 4, i32 0, i32 0, i32 1684170528, %struct.uuid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, [6 x %struct.anon.77] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, %struct.ima_rule_entry { %struct.list_head zeroinitializer, i32 2, i32 4, i32 0, i32 0, i32 16914836, %struct.uuid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, [6 x %struct.anon.77] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, %struct.ima_rule_entry { %struct.list_head zeroinitializer, i32 2, i32 4, i32 0, i32 0, i32 7377, %struct.uuid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, [6 x %struct.anon.77] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, %struct.ima_rule_entry { %struct.list_head zeroinitializer, i32 2, i32 4, i32 0, i32 0, i32 1112100429, %struct.uuid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, [6 x %struct.anon.77] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, %struct.ima_rule_entry { %struct.list_head zeroinitializer, i32 2, i32 4, i32 0, i32 0, i32 1935894131, %struct.uuid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, [6 x %struct.anon.77] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, %struct.ima_rule_entry { %struct.list_head zeroinitializer, i32 2, i32 4, i32 0, i32 0, i32 -109248628, %struct.uuid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, [6 x %struct.anon.77] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, %struct.ima_rule_entry { %struct.list_head zeroinitializer, i32 2, i32 4, i32 0, i32 0, i32 1128357203, %struct.uuid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, [6 x %struct.anon.77] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, %struct.ima_rule_entry { %struct.list_head zeroinitializer, i32 2, i32 4, i32 0, i32 0, i32 2613483, %struct.uuid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, [6 x %struct.anon.77] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, %struct.ima_rule_entry { %struct.list_head zeroinitializer, i32 2, i32 4, i32 0, i32 0, i32 1667723888, %struct.uuid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, [6 x %struct.anon.77] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, %struct.ima_rule_entry { %struct.list_head zeroinitializer, i32 2, i32 4, i32 0, i32 0, i32 1853056627, %struct.uuid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, [6 x %struct.anon.77] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, %struct.ima_rule_entry { %struct.list_head zeroinitializer, i32 2, i32 4, i32 0, i32 0, i32 -564231708, %struct.uuid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, [6 x %struct.anon.77] zeroinitializer, ptr null, ptr null, ptr null, ptr null }], section ".data..ro_after_init", align 4
@original_measurement_rules = internal global [5 x %struct.ima_rule_entry] [%struct.ima_rule_entry { %struct.list_head zeroinitializer, i32 1, i32 3, i32 2, i32 1, i32 0, %struct.uuid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, [6 x %struct.anon.77] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, %struct.ima_rule_entry { %struct.list_head zeroinitializer, i32 1, i32 3, i32 3, i32 1, i32 0, %struct.uuid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, [6 x %struct.anon.77] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, %struct.ima_rule_entry { %struct.list_head zeroinitializer, i32 1, i32 11, i32 1, i32 4, i32 0, %struct.uuid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, ptr @uid_eq, ptr null, ptr null, ptr null, i32 0, i32 0, [6 x %struct.anon.77] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, %struct.ima_rule_entry { %struct.list_head zeroinitializer, i32 1, i32 1, i32 6, i32 0, i32 0, %struct.uuid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, [6 x %struct.anon.77] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, %struct.ima_rule_entry { %struct.list_head zeroinitializer, i32 1, i32 1, i32 7, i32 0, i32 0, %struct.uuid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, [6 x %struct.anon.77] zeroinitializer, ptr null, ptr null, ptr null, ptr null }], section ".data..ro_after_init", align 4
@default_measurement_rules = internal global [7 x %struct.ima_rule_entry] [%struct.ima_rule_entry { %struct.list_head zeroinitializer, i32 1, i32 3, i32 2, i32 1, i32 0, %struct.uuid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, [6 x %struct.anon.77] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, %struct.ima_rule_entry { %struct.list_head zeroinitializer, i32 1, i32 3, i32 3, i32 1, i32 0, %struct.uuid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, [6 x %struct.anon.77] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, %struct.ima_rule_entry { %struct.list_head zeroinitializer, i32 1, i32 193, i32 1, i32 4, i32 0, %struct.uuid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, ptr @uid_eq, ptr null, ptr null, ptr null, i32 0, i32 0, [6 x %struct.anon.77] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, %struct.ima_rule_entry { %struct.list_head zeroinitializer, i32 1, i32 73, i32 1, i32 4, i32 0, %struct.uuid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, ptr @uid_eq, ptr null, ptr null, ptr null, i32 0, i32 0, [6 x %struct.anon.77] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, %struct.ima_rule_entry { %struct.list_head zeroinitializer, i32 1, i32 1, i32 6, i32 0, i32 0, %struct.uuid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, [6 x %struct.anon.77] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, %struct.ima_rule_entry { %struct.list_head zeroinitializer, i32 1, i32 1, i32 7, i32 0, i32 0, %struct.uuid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, [6 x %struct.anon.77] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, %struct.ima_rule_entry { %struct.list_head zeroinitializer, i32 1, i32 1, i32 10, i32 0, i32 0, %struct.uuid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, [6 x %struct.anon.77] zeroinitializer, ptr null, ptr null, ptr null, ptr null }], section ".data..ro_after_init", align 4
@ima_init_policy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str, i32 926, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016ima: No architecture policies found\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ima_init_policy\00", [16 x i8] zeroinitializer }, align 32
@ima_init_policy._entry_ptr = internal global ptr @ima_init_policy._entry, section ".printk_index", align 4
@ima_use_secure_boot = internal unnamed_addr global i1 false, section ".init.data", align 1
@secure_boot_rules = internal global [4 x %struct.ima_rule_entry] [%struct.ima_rule_entry { %struct.list_head zeroinitializer, i32 4, i32 16777217, i32 6, i32 0, i32 0, %struct.uuid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, [6 x %struct.anon.77] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, %struct.ima_rule_entry { %struct.list_head zeroinitializer, i32 4, i32 16777217, i32 7, i32 0, i32 0, %struct.uuid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, [6 x %struct.anon.77] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, %struct.ima_rule_entry { %struct.list_head zeroinitializer, i32 4, i32 16777217, i32 8, i32 0, i32 0, %struct.uuid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, [6 x %struct.anon.77] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, %struct.ima_rule_entry { %struct.list_head zeroinitializer, i32 4, i32 16777217, i32 10, i32 0, i32 0, %struct.uuid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, [6 x %struct.anon.77] zeroinitializer, ptr null, ptr null, ptr null, ptr null }], section ".data..ro_after_init", align 4
@build_appraise_rules = internal global [4 x %struct.ima_rule_entry] [%struct.ima_rule_entry { %struct.list_head zeroinitializer, i32 4, i32 16777217, i32 6, i32 0, i32 0, %struct.uuid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, [6 x %struct.anon.77] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, %struct.ima_rule_entry { %struct.list_head zeroinitializer, i32 4, i32 16777217, i32 7, i32 0, i32 0, %struct.uuid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, [6 x %struct.anon.77] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, %struct.ima_rule_entry { %struct.list_head zeroinitializer, i32 4, i32 16777217, i32 8, i32 0, i32 0, %struct.uuid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, [6 x %struct.anon.77] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, %struct.ima_rule_entry { %struct.list_head zeroinitializer, i32 4, i32 16777217, i32 10, i32 0, i32 0, %struct.uuid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, [6 x %struct.anon.77] zeroinitializer, ptr null, ptr null, ptr null, ptr null }], section ".data..ro_after_init", align 4
@ima_use_appraise_tcb = internal unnamed_addr global i1 false, section ".init.data", align 1
@default_appraise_rules = internal global [16 x %struct.ima_rule_entry] [%struct.ima_rule_entry { %struct.list_head zeroinitializer, i32 8, i32 4, i32 0, i32 0, i32 40864, %struct.uuid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, [6 x %struct.anon.77] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, %struct.ima_rule_entry { %struct.list_head zeroinitializer, i32 8, i32 4, i32 0, i32 0, i32 1650812274, %struct.uuid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, [6 x %struct.anon.77] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, %struct.ima_rule_entry { %struct.list_head zeroinitializer, i32 8, i32 4, i32 0, i32 0, i32 1684170528, %struct.uuid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, [6 x %struct.anon.77] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, %struct.ima_rule_entry { %struct.list_head zeroinitializer, i32 8, i32 4, i32 0, i32 0, i32 16914836, %struct.uuid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, [6 x %struct.anon.77] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, %struct.ima_rule_entry { %struct.list_head zeroinitializer, i32 8, i32 4, i32 0, i32 0, i32 -2054924042, %struct.uuid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, [6 x %struct.anon.77] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, %struct.ima_rule_entry { %struct.list_head zeroinitializer, i32 8, i32 4, i32 0, i32 0, i32 7377, %struct.uuid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, [6 x %struct.anon.77] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, %struct.ima_rule_entry { %struct.list_head zeroinitializer, i32 8, i32 4, i32 0, i32 0, i32 1112100429, %struct.uuid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, [6 x %struct.anon.77] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, %struct.ima_rule_entry { %struct.list_head zeroinitializer, i32 8, i32 4, i32 0, i32 0, i32 1935894131, %struct.uuid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, [6 x %struct.anon.77] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, %struct.ima_rule_entry { %struct.list_head zeroinitializer, i32 8, i32 4, i32 0, i32 0, i32 -109248628, %struct.uuid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, [6 x %struct.anon.77] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, %struct.ima_rule_entry { %struct.list_head zeroinitializer, i32 8, i32 4, i32 0, i32 0, i32 1128357203, %struct.uuid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, [6 x %struct.anon.77] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, %struct.ima_rule_entry { %struct.list_head zeroinitializer, i32 8, i32 4, i32 0, i32 0, i32 1853056627, %struct.uuid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, [6 x %struct.anon.77] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, %struct.ima_rule_entry { %struct.list_head zeroinitializer, i32 8, i32 4, i32 0, i32 0, i32 -564231708, %struct.uuid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, [6 x %struct.anon.77] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, %struct.ima_rule_entry { %struct.list_head zeroinitializer, i32 8, i32 4, i32 0, i32 0, i32 2613483, %struct.uuid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, [6 x %struct.anon.77] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, %struct.ima_rule_entry { %struct.list_head zeroinitializer, i32 8, i32 4, i32 0, i32 0, i32 1667723888, %struct.uuid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, [6 x %struct.anon.77] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, %struct.ima_rule_entry { %struct.list_head zeroinitializer, i32 4, i32 16777217, i32 10, i32 0, i32 0, %struct.uuid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, [6 x %struct.anon.77] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, %struct.ima_rule_entry { %struct.list_head zeroinitializer, i32 4, i32 16777232, i32 0, i32 0, i32 0, %struct.uuid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, ptr null, ptr null, ptr @uid_eq, ptr null, i32 0, i32 0, [6 x %struct.anon.77] zeroinitializer, ptr null, ptr null, ptr null, ptr null }], section ".data..ro_after_init", align 4
@ima_use_critical_data = internal unnamed_addr global i1 false, section ".init.data", align 1
@critical_data_rules = internal global [1 x %struct.ima_rule_entry] [%struct.ima_rule_entry { %struct.list_head zeroinitializer, i32 1, i32 1, i32 13, i32 0, i32 0, %struct.uuid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, [6 x %struct.anon.77] zeroinitializer, ptr null, ptr null, ptr null, ptr null }], section ".data..ro_after_init", align 4
@ima_temp_rules = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @ima_temp_rules, ptr @ima_temp_rules }, [24 x i8] zeroinitializer }, align 32
@ima_policy_rules = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @ima_policy_rules, ptr @ima_policy_rules }, [24 x i8] zeroinitializer }, align 32
@ima_parse_add_rule.op = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"update_policy\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c" \09\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"-ENOMEM\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"invalid-policy\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NONE\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"FILE_CHECK\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MMAP_CHECK\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"BPRM_CHECK\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CREDS_CHECK\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"POST_SETATTR\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MODULE_CHECK\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FIRMWARE_CHECK\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"KEXEC_KERNEL_CHECK\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"KEXEC_INITRAMFS_CHECK\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"POLICY_CHECK\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"KEXEC_CMDLINE\00", [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"KEY_CHECK\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CRITICAL_DATA\00", [18 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SETXATTR_CHECK\00", [17 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MAX_CHECK\00", [22 x i8] zeroinitializer }, align 32
@func_tokens = dso_local constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], [32 x i8] zeroinitializer }, align 32
@ima_policy_start.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ima_policy_start.__warned.27 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ima_default_rules = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @ima_default_rules, ptr @ima_default_rules }, [24 x i8] zeroinitializer }, align 32
@policy_tokens = internal constant { [45 x %struct.match_token], [88 x i8] } { [45 x %struct.match_token] [%struct.match_token { i32 0, ptr @.str.60 }, %struct.match_token { i32 1, ptr @.str.61 }, %struct.match_token { i32 2, ptr @.str.62 }, %struct.match_token { i32 3, ptr @.str.63 }, %struct.match_token { i32 4, ptr @.str.64 }, %struct.match_token { i32 5, ptr @.str.65 }, %struct.match_token { i32 6, ptr @.str.66 }, %struct.match_token { i32 7, ptr @.str.121 }, %struct.match_token { i32 8, ptr @.str.122 }, %struct.match_token { i32 9, ptr @.str.123 }, %struct.match_token { i32 10, ptr @.str.124 }, %struct.match_token { i32 11, ptr @.str.125 }, %struct.match_token { i32 12, ptr @.str.126 }, %struct.match_token { i32 13, ptr @.str.127 }, %struct.match_token { i32 14, ptr @.str.128 }, %struct.match_token { i32 15, ptr @.str.129 }, %struct.match_token { i32 16, ptr @.str.130 }, %struct.match_token { i32 17, ptr @.str.131 }, %struct.match_token { i32 18, ptr @.str.132 }, %struct.match_token { i32 19, ptr @.str.133 }, %struct.match_token { i32 20, ptr @.str.134 }, %struct.match_token { i32 21, ptr @.str.135 }, %struct.match_token { i32 22, ptr @.str.136 }, %struct.match_token { i32 23, ptr @.str.137 }, %struct.match_token { i32 24, ptr @.str.138 }, %struct.match_token { i32 25, ptr @.str.139 }, %struct.match_token { i32 26, ptr @.str.140 }, %struct.match_token { i32 27, ptr @.str.141 }, %struct.match_token { i32 28, ptr @.str.142 }, %struct.match_token { i32 29, ptr @.str.143 }, %struct.match_token { i32 30, ptr @.str.144 }, %struct.match_token { i32 31, ptr @.str.145 }, %struct.match_token { i32 32, ptr @.str.146 }, %struct.match_token { i32 33, ptr @.str.147 }, %struct.match_token { i32 34, ptr @.str.148 }, %struct.match_token { i32 35, ptr @.str.149 }, %struct.match_token { i32 36, ptr @.str.150 }, %struct.match_token { i32 37, ptr @.str.151 }, %struct.match_token { i32 38, ptr @.str.152 }, %struct.match_token { i32 39, ptr @.str.153 }, %struct.match_token { i32 40, ptr @.str.154 }, %struct.match_token { i32 41, ptr @.str.155 }, %struct.match_token { i32 42, ptr @.str.156 }, %struct.match_token { i32 43, ptr @.str.157 }, %struct.match_token { i32 44, ptr null }], [88 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0x%lx\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"keyrings=\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"label=\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fsuuid=%pU\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"appraise_algos=\00", [16 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"template=%s \00", [19 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"appraise_type=imasig|modsig \00", [35 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"appraise_type=imasig \00", [42 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"appraise_flag=check_blacklist \00", [33 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"permit_directio \00", [47 x i8] zeroinitializer }, align 32
@read_idmap = external dso_local local_unnamed_addr constant [0 x i32], align 4
@ima_appraise_signature.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ima_appraise_signature.__warned.41 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" |\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tcb\00", [28 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"appraise_tcb\00", [19 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"secure_boot\00", [20 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"critical_data\00", [18 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fail_securely\00", [18 x i8] zeroinitializer }, align 32
@policy_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str, i32 275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013ima: policy \22%s\22 not found\00", [35 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"policy_setup\00", [19 x i8] zeroinitializer }, align 32
@policy_setup._entry_ptr = internal global ptr @policy_setup._entry, section ".printk_index", align 4
@ima_lsm_update_rules._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str, i32 468, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013ima: lsm rule update error %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ima_lsm_update_rules\00", [43 x i8] zeroinitializer }, align 32
@ima_lsm_update_rules._entry_ptr = internal global ptr @ima_lsm_update_rules._entry, section ".printk_index", align 4
@ima_lsm_copy_rule._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str, i32 414, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014ima: rule for LSM '%s' is undefined\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ima_lsm_copy_rule\00", [46 x i8] zeroinitializer }, align 32
@ima_lsm_copy_rule._entry_ptr = internal global ptr @ima_lsm_copy_rule._entry, section ".printk_index", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.54 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 1
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.56 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@ima_init_arch_policy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str, i32 879, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014ima: Skipping unknown architecture policy rule: %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ima_init_arch_policy\00", [43 x i8] zeroinitializer }, align 32
@ima_init_arch_policy._entry_ptr = internal global ptr @ima_init_arch_policy._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"action\00", [25 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"measure\00", [24 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dont_measure\00", [19 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"appraise\00", [23 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dont_appraise\00", [18 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"audit\00", [26 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hash\00", [27 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dont_hash\00", [22 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"func\00", [27 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PATH_CHECK\00", [21 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"FILE_MMAP\00", [22 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mask\00", [27 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MAY_EXEC\00", [23 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MAY_WRITE\00", [22 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MAY_READ\00", [23 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MAY_APPEND\00", [21 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fsmagic\00", [24 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fsname\00", [25 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"keyrings\00", [23 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fsuuid\00", [25 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"euid\00", [27 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"uid\00", [28 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"egid\00", [27 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gid\00", [28 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fowner\00", [25 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fgroup\00", [25 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"obj_user\00", [23 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"obj_role\00", [23 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"obj_type\00", [23 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"subj_user\00", [22 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"subj_role\00", [22 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"subj_type\00", [22 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"appraise_type\00", [18 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"imasig\00", [25 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"imasig|modsig\00", [18 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"appraise_flag\00", [18 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"blacklist\00", [22 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"appraise_algos\00", [17 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pcr\00", [28 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"template\00", [23 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UNKNOWN\00", [24 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"res=%d\00", [25 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"|\00", [30 x i8] zeroinitializer }, align 32
@uuid_null = external dso_local constant %struct.uuid_t, align 1
@.str.106 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s>\00", [28 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s<\00", [28 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s=\00", [28 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s \00", [28 x i8] zeroinitializer }, align 32
@ima_lsm_rule_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.110, ptr @.str, i32 1098, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ima_lsm_rule_init\00", [46 x i8] zeroinitializer }, align 32
@ima_lsm_rule_init._entry_ptr = internal global ptr @ima_lsm_rule_init._entry, section ".printk_index", align 4
@.str.111 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@hash_algo_name = external dso_local constant [20 x ptr], align 4
@ima_parse_appraise_algos._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.113, ptr @.str, i32 1310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013ima: unknown hash algorithm \22%s\22\00", [61 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ima_parse_appraise_algos\00", [39 x i8] zeroinitializer }, align 32
@ima_parse_appraise_algos._entry_ptr = internal global ptr @ima_parse_appraise_algos._entry, section ".printk_index", align 4
@ima_parse_appraise_algos._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.113, ptr @.str, i32 1316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013ima: unavailable hash algorithm \22%s\22, check your kernel configuration\00", [56 x i8] zeroinitializer }, align 32
@ima_parse_appraise_algos._entry_ptr.116 = internal global ptr @ima_parse_appraise_algos._entry.114, section ".printk_index", align 4
@check_template_modsig.checked = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str.117 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"modsig\00", [25 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"d-modsig\00", [23 x i8] zeroinitializer }, align 32
@check_template_modsig._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.120, ptr @.str, i32 1170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\015ima: template with 'modsig' field also needs 'd-modsig' field\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"check_template_modsig\00", [42 x i8] zeroinitializer }, align 32
@check_template_modsig._entry_ptr = internal global ptr @check_template_modsig._entry, section ".printk_index", align 4
@.str.121 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"obj_user=%s\00", [20 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"obj_role=%s\00", [20 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"obj_type=%s\00", [20 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"subj_user=%s\00", [19 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"subj_role=%s\00", [19 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"subj_type=%s\00", [19 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"func=%s\00", [24 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mask=%s\00", [24 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fsmagic=%s\00", [21 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fsname=%s\00", [22 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fsuuid=%s\00", [22 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"uid=%s\00", [25 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"euid=%s\00", [24 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gid=%s\00", [25 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"egid=%s\00", [24 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fowner=%s\00", [22 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fgroup=%s\00", [22 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"uid>%s\00", [25 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"euid>%s\00", [24 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gid>%s\00", [25 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"egid>%s\00", [24 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fowner>%s\00", [22 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fgroup>%s\00", [22 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"uid<%s\00", [25 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"euid<%s\00", [24 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gid<%s\00", [25 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"egid<%s\00", [24 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fowner<%s\00", [22 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fgroup<%s\00", [22 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"appraise_type=%s\00", [47 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"appraise_flag=%s\00", [47 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"appraise_algos=%s\00", [46 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"permit_directio\00", [16 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pcr=%s\00", [25 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"template=%s\00", [20 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"keyrings=%s\00", [20 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"label=%s\00", [23 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"func=%s \00", [23 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"func=%d \00", [23 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"^MAY_EXEC\00", [22 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"^MAY_WRITE\00", [21 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"^MAY_READ\00", [22 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"^MAY_APPEND\00", [20 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%s\00", [27 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@switch.table.ima_match_policy = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 4096, i32 16384, i32 65536, i32 1048576, i32 4096], [44 x i8] zeroinitializer }, align 32
@switch.table.add_rules = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 8, i32 16, i32 64, i32 0, i32 32], [44 x i8] zeroinitializer }, align 32
@switch.table.add_rules.166 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 8, i32 16, i32 64, i32 0, i32 32], [44 x i8] zeroinitializer }, align 32
@switch.table.ima_parse_add_rule = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.106, ptr @.str.106, ptr @.str.106, ptr @.str.106, ptr @.str.106, ptr @.str.106, ptr @.str.107, ptr @.str.107], [32 x i8] zeroinitializer }, align 32
@switch.table.ima_parse_add_rule.167 = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @.str.106, ptr @.str.106, ptr @.str.106, ptr @.str.106, ptr @.str.106, ptr @.str.106, ptr @.str.107, ptr @.str.107, ptr @.str.107, ptr @.str.107], [56 x i8] zeroinitializer }, align 32
@switch.table.ima_parse_add_rule.168 = internal constant { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @.str.106, ptr @.str.106, ptr @.str.106, ptr @.str.106, ptr @.str.106, ptr @.str.106, ptr @.str.107, ptr @.str.107, ptr @.str.107, ptr @.str.107, ptr @.str.107], [52 x i8] zeroinitializer }, align 32
@switch.table.ima_parse_add_rule.169 = internal constant { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @.str.106, ptr @.str.106, ptr @.str.106, ptr @.str.106, ptr @.str.106, ptr @.str.106, ptr @.str.107, ptr @.str.107, ptr @.str.107, ptr @.str.107, ptr @.str.107, ptr @.str.107], [48 x i8] zeroinitializer }, align 32
@switch.table.ima_parse_add_rule.170 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 8, i32 16, i32 64, i32 0, i32 32], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 12, i64 13]
@__sancov_gen_cov_switch_values.171 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.172 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.173 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 35]
@__sancov_gen_cov_switch_values.174 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 9, i64 32]
@__sancov_gen_cov_switch_values.175 = internal global [47 x i64] [i64 45, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44]
@__sancov_gen_cov_switch_values.176 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.177 = internal global [16 x i64] [i64 14, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14]
@___asan_gen_.178 = private unnamed_addr constant [10 x i8] c"ima_rules\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 239, i32 32 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 705, i32 18 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 706, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant [37 x i8] c"ima_setxattr_allowed_hash_algorithms\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 59, i32 10 }
@___asan_gen_.193 = private unnamed_addr constant [18 x i8] c"temp_ima_appraise\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 56, i32 12 }
@___asan_gen_.196 = private unnamed_addr constant [16 x i8] c"ima_policy_flag\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 55, i32 5 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 926, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant [15 x i8] c"ima_temp_rules\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 238, i32 8 }
@___asan_gen_.211 = private unnamed_addr constant [17 x i8] c"ima_policy_rules\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 237, i32 8 }
@___asan_gen_.214 = private unnamed_addr constant [3 x i8] c"op\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1815, i32 20 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1821, i32 20 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1823, i32 17 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1831, i32 19 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1841, i32 19 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1871, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant [12 x i8] c"func_tokens\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1870, i32 19 }
@___asan_gen_.280 = private unnamed_addr constant [18 x i8] c"ima_default_rules\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 236, i32 8 }
@___asan_gen_.283 = private unnamed_addr constant [14 x i8] c"policy_tokens\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1032, i32 28 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1993, i32 14 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 2013, i32 32 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 2019, i32 32 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 2025, i32 15 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 2031, i32 15 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 2037, i32 32 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 2043, i32 17 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 2114, i32 15 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 2151, i32 17 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 2154, i32 16 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 2156, i32 16 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 2159, i32 15 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 2161, i32 15 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 261, i32 27 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 264, i32 18 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 266, i32 22 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 268, i32 22 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 270, i32 22 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 272, i32 22 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 275, i32 4 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 468, i32 4 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 413, i32 4 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 695, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 723, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 878, i32 4 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1360, i32 23 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1360, i32 33 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1368, i32 33 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1376, i32 33 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1384, i32 33 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1392, i32 33 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1400, i32 33 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1408, i32 33 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1416, i32 23 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1424, i32 34 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1430, i32 35 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1460, i32 23 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1469, i32 22 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1471, i32 26 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1473, i32 26 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1475, i32 26 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1484, i32 23 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1496, i32 23 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1507, i32 23 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1525, i32 23 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1542, i32 23 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1568, i32 38 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1568, i32 47 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1603, i32 38 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1603, i32 47 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1631, i32 26 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1657, i32 26 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1676, i32 23 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1682, i32 23 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1688, i32 23 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1694, i32 23 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1700, i32 23 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1706, i32 23 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1712, i32 23 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1713, i32 30 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1716, i32 27 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1723, i32 23 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1725, i32 29 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1731, i32 23 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1753, i32 23 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1763, i32 23 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1785, i32 23 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1801, i32 23 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 302, i32 30 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1124, i32 24 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1132, i32 24 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1135, i32 24 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1137, i32 23 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1097, i32 3 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1305, i32 31 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1309, i32 4 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1315, i32 4 }
@___asan_gen_.556 = private unnamed_addr constant [30 x i8] c"check_template_modsig.checked\00", align 1
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1163, i32 46 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1165, i32 51 }
@___asan_gen_.563 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1170, i32 3 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1040, i32 17 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1041, i32 17 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1042, i32 17 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1043, i32 18 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1044, i32 18 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1045, i32 18 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1046, i32 13 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1047, i32 13 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1048, i32 16 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1049, i32 15 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1050, i32 15 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1051, i32 15 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1052, i32 16 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1053, i32 15 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1054, i32 16 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1055, i32 18 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1056, i32 18 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1057, i32 15 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1058, i32 16 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1059, i32 15 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1060, i32 16 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1061, i32 18 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1062, i32 18 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1063, i32 15 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1064, i32 16 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1065, i32 15 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1066, i32 16 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1067, i32 18 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1068, i32 18 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1069, i32 22 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1070, i32 22 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1071, i32 23 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1072, i32 24 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1073, i32 12 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1074, i32 17 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1075, i32 17 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1076, i32 14 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1930, i32 17 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1932, i32 17 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1880, i32 2 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1881, i32 2 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1882, i32 2 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1883, i32 2 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1941, i32 17 }
@___asan_gen_.704 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.705 = private constant [39 x i8] c"../security/integrity/ima/ima_policy.c\00", align 1
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.705, i32 1941, i32 35 }
@___asan_gen_.707 = private unnamed_addr constant [30 x i8] c"switch.table.ima_match_policy\00", align 1
@___asan_gen_.708 = private unnamed_addr constant [23 x i8] c"switch.table.add_rules\00", align 1
@___asan_gen_.709 = private unnamed_addr constant [27 x i8] c"switch.table.add_rules.166\00", align 1
@___asan_gen_.710 = private unnamed_addr constant [32 x i8] c"switch.table.ima_parse_add_rule\00", align 1
@___asan_gen_.711 = private unnamed_addr constant [36 x i8] c"switch.table.ima_parse_add_rule.167\00", align 1
@___asan_gen_.712 = private unnamed_addr constant [36 x i8] c"switch.table.ima_parse_add_rule.168\00", align 1
@___asan_gen_.713 = private unnamed_addr constant [36 x i8] c"switch.table.ima_parse_add_rule.169\00", align 1
@___asan_gen_.714 = private unnamed_addr constant [36 x i8] c"switch.table.ima_parse_add_rule.170\00", align 1
@llvm.compiler.used = appending global [197 x ptr] [ptr @__setup_default_appraise_policy_setup, ptr @__setup_default_measure_policy_setup, ptr @__setup_policy_setup, ptr @check_template_modsig._entry, ptr @check_template_modsig._entry_ptr, ptr @ima_init_arch_policy._entry, ptr @ima_init_arch_policy._entry_ptr, ptr @ima_init_policy._entry, ptr @ima_init_policy._entry_ptr, ptr @ima_lsm_copy_rule._entry, ptr @ima_lsm_copy_rule._entry_ptr, ptr @ima_lsm_rule_init._entry, ptr @ima_lsm_rule_init._entry_ptr, ptr @ima_lsm_update_rules._entry, ptr @ima_lsm_update_rules._entry_ptr, ptr @ima_parse_appraise_algos._entry, ptr @ima_parse_appraise_algos._entry.114, ptr @ima_parse_appraise_algos._entry_ptr, ptr @ima_parse_appraise_algos._entry_ptr.116, ptr @policy_setup._entry, ptr @policy_setup._entry_ptr, ptr @ima_rules, ptr @.str, ptr @.str.1, ptr @.str.3, ptr @ima_setxattr_allowed_hash_algorithms, ptr @temp_ima_appraise, ptr @ima_policy_flag, ptr @.str.5, ptr @.str.6, ptr @ima_temp_rules, ptr @ima_policy_rules, ptr @ima_parse_add_rule.op, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @func_tokens, ptr @ima_default_rules, ptr @policy_tokens, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @.str.87, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.115, ptr @check_template_modsig.checked, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @switch.table.ima_match_policy, ptr @switch.table.add_rules, ptr @switch.table.add_rules.166, ptr @switch.table.ima_parse_add_rule, ptr @switch.table.ima_parse_add_rule.167, ptr @switch.table.ima_parse_add_rule.168, ptr @switch.table.ima_parse_add_rule.169, ptr @switch.table.ima_parse_add_rule.170], section "llvm.metadata"
@0 = internal global [185 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_rules to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_setxattr_allowed_hash_algorithms to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temp_ima_appraise to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_policy_flag to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_init_policy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_temp_rules to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_policy_rules to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_parse_add_rule.op to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @func_tokens to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_default_rules to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @policy_tokens to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @policy_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_lsm_update_rules._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_lsm_copy_rule._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_init_arch_policy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_lsm_rule_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_parse_appraise_algos._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_parse_appraise_algos._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_template_modsig.checked to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_template_modsig._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ima_match_policy to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.add_rules to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.add_rules.166 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ima_parse_add_rule to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ima_parse_add_rule.167 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ima_parse_add_rule.168 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ima_parse_add_rule.169 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ima_parse_add_rule.170 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @default_measure_policy_setup(ptr nocapture noundef readnone %str) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ima_policy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  store i32 1, ptr @ima_policy, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @policy_setup(ptr noundef %str) #1 section ".init.text" align 64 {
entry:
  %str.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %str.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %str, ptr %str.addr, align 4
  %call39 = call ptr @strsep(ptr noundef nonnull %str.addr, ptr noundef nonnull @.str.42) #20
  %cmp.not40 = icmp eq ptr %call39, null
  br i1 %cmp.not40, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %entry.while.body_crit_edge
  %call41 = phi ptr [ %call, %while.cond.backedge.while.body_crit_edge ], [ %call39, %entry.while.body_crit_edge ]
  %1 = ptrtoint ptr %call41 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %call41, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %2)
  %cmp1 = icmp eq i8 %2, 32
  br i1 %cmp1, label %while.body.while.cond.backedge_crit_edge, label %if.end

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.cond.backedge

if.end:                                           ; preds = %while.body
  %call3 = call i32 @strcmp(ptr noundef nonnull %call41, ptr noundef nonnull dereferenceable(4) @.str.43) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %land.lhs.true, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %3 = load i32, ptr @ima_policy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then6, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  store i32 2, ptr @ima_policy, align 4
  br label %while.cond.backedge

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %call7 = call i32 @strcmp(ptr noundef nonnull %call41, ptr noundef nonnull dereferenceable(13) @.str.44) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @ima_use_appraise_tcb, align 1
  br label %while.cond.backedge

if.else11:                                        ; preds = %if.else
  %call12 = call i32 @strcmp(ptr noundef nonnull %call41, ptr noundef nonnull dereferenceable(12) @.str.45) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then15, label %if.else16

if.then15:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @ima_use_secure_boot, align 1
  br label %while.cond.backedge

if.else16:                                        ; preds = %if.else11
  %call17 = call i32 @strcmp(ptr noundef nonnull %call41, ptr noundef nonnull dereferenceable(14) @.str.46) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then20, label %if.else21

if.then20:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @ima_use_critical_data, align 1
  br label %while.cond.backedge

if.else21:                                        ; preds = %if.else16
  %call22 = call i32 @strcmp(ptr noundef nonnull %call41, ptr noundef nonnull dereferenceable(14) @.str.47) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %if.then25, label %do.end

if.then25:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @ima_fail_unverifiable_sigs, align 1
  br label %while.cond.backedge

do.end:                                           ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #22
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull %call41) #24
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %do.end, %if.then25, %if.then20, %if.then15, %if.then10, %if.then6, %while.body.while.cond.backedge_crit_edge
  %call = call ptr @strsep(ptr noundef nonnull %str.addr, ptr noundef nonnull @.str.42) #20
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %entry.while.end_crit_edge
  ret i32 1
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @default_appraise_policy_setup(ptr nocapture noundef readnone %str) #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 true, ptr @ima_use_appraise_tcb, align 1
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ima_lsm_policy_change(ptr nocapture noundef readnone %nb, i32 noundef %event, ptr nocapture noundef readnone %lsm_data) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %event)
  %cmp.not = icmp eq i32 %event, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @ima_policy_rules, align 4
  %cmp.not27.i = icmp eq ptr %0, @ima_policy_rules
  br i1 %cmp.not27.i, label %if.end.return_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %entry1.028.i = phi ptr [ %e.029.i, %for.inc.i.for.body.i_crit_edge ], [ %0, %if.end.for.body.i_crit_edge ]
  %1 = ptrtoint ptr %entry1.028.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %e.029.i = load ptr, ptr %entry1.028.i, align 4
  %args_p.i.i = getelementptr %struct.ima_rule_entry, ptr %entry1.028.i, i32 0, i32 17, i32 0, i32 1
  %2 = ptrtoint ptr %args_p.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %args_p.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %for.cond.i.i, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i

for.cond.i.i:                                     ; preds = %for.body.i
  %args_p.1.i.i = getelementptr %struct.ima_rule_entry, ptr %entry1.028.i, i32 0, i32 17, i32 1, i32 1
  %4 = ptrtoint ptr %args_p.1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %args_p.1.i.i, align 4
  %tobool.not.1.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.1.i.i, label %for.cond.1.i.i, label %for.cond.i.i.if.end.i_crit_edge

for.cond.i.i.if.end.i_crit_edge:                  ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %args_p.2.i.i = getelementptr %struct.ima_rule_entry, ptr %entry1.028.i, i32 0, i32 17, i32 2, i32 1
  %6 = ptrtoint ptr %args_p.2.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %args_p.2.i.i, align 4
  %tobool.not.2.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.2.i.i, label %for.cond.2.i.i, label %for.cond.1.i.i.if.end.i_crit_edge

for.cond.1.i.i.if.end.i_crit_edge:                ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  %args_p.3.i.i = getelementptr %struct.ima_rule_entry, ptr %entry1.028.i, i32 0, i32 17, i32 3, i32 1
  %8 = ptrtoint ptr %args_p.3.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %args_p.3.i.i, align 4
  %tobool.not.3.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.3.i.i, label %for.cond.3.i.i, label %for.cond.2.i.i.if.end.i_crit_edge

for.cond.2.i.i.if.end.i_crit_edge:                ; preds = %for.cond.2.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i

for.cond.3.i.i:                                   ; preds = %for.cond.2.i.i
  %args_p.4.i.i = getelementptr %struct.ima_rule_entry, ptr %entry1.028.i, i32 0, i32 17, i32 4, i32 1
  %10 = ptrtoint ptr %args_p.4.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %args_p.4.i.i, align 4
  %tobool.not.4.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.4.i.i, label %ima_rule_contains_lsm_cond.exit.i, label %for.cond.3.i.i.if.end.i_crit_edge

for.cond.3.i.i.if.end.i_crit_edge:                ; preds = %for.cond.3.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i

ima_rule_contains_lsm_cond.exit.i:                ; preds = %for.cond.3.i.i
  %args_p.5.i.i = getelementptr %struct.ima_rule_entry, ptr %entry1.028.i, i32 0, i32 17, i32 5, i32 1
  %12 = ptrtoint ptr %args_p.5.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %args_p.5.i.i, align 4
  %tobool.not.5.i.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.5.i.not.i, label %ima_rule_contains_lsm_cond.exit.i.for.inc.i_crit_edge, label %ima_rule_contains_lsm_cond.exit.i.if.end.i_crit_edge

ima_rule_contains_lsm_cond.exit.i.if.end.i_crit_edge: ; preds = %ima_rule_contains_lsm_cond.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i

ima_rule_contains_lsm_cond.exit.i.for.inc.i_crit_edge: ; preds = %ima_rule_contains_lsm_cond.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i

if.end.i:                                         ; preds = %ima_rule_contains_lsm_cond.exit.i.if.end.i_crit_edge, %for.cond.3.i.i.if.end.i_crit_edge, %for.cond.2.i.i.if.end.i_crit_edge, %for.cond.1.i.i.if.end.i_crit_edge, %for.cond.i.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge
  %call.i.i.i = tail call ptr @kmemdup(ptr noundef %entry1.028.i, i32 noundef 172, i32 noundef 3264) #20
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %do.end.i, label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.end.i
  %lsm.i.i.i = getelementptr inbounds %struct.ima_rule_entry, ptr %call.i.i.i, i32 0, i32 17
  %14 = call ptr @memset(ptr %lsm.i.i.i, i32 0, i32 72)
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.end.i.i.i
  %i.065.i.i.i = phi i32 [ 0, %if.end.i.i.i ], [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %args_p.i.i.i = getelementptr %struct.ima_rule_entry, ptr %entry1.028.i, i32 0, i32 17, i32 %i.065.i.i.i, i32 1
  %15 = ptrtoint ptr %args_p.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %args_p.i.i.i, align 4
  %tobool3.not.i.i.i = icmp eq ptr %16, null
  br i1 %tobool3.not.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge, label %if.end5.i.i.i

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i.i.i

if.end5.i.i.i:                                    ; preds = %for.body.i.i.i
  %type.i.i.i = getelementptr %struct.ima_rule_entry, ptr %entry1.028.i, i32 0, i32 17, i32 %i.065.i.i.i, i32 2
  %17 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %type.i.i.i, align 4
  %arrayidx9.i.i.i = getelementptr %struct.ima_rule_entry, ptr %call.i.i.i, i32 0, i32 17, i32 %i.065.i.i.i
  %type10.i.i.i = getelementptr %struct.ima_rule_entry, ptr %call.i.i.i, i32 0, i32 17, i32 %i.065.i.i.i, i32 2
  %19 = ptrtoint ptr %type10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %type10.i.i.i, align 4
  %20 = ptrtoint ptr %args_p.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %args_p.i.i.i, align 4
  %args_p16.i.i.i = getelementptr %struct.ima_rule_entry, ptr %call.i.i.i, i32 0, i32 17, i32 %i.065.i.i.i, i32 1
  %22 = ptrtoint ptr %args_p16.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %args_p16.i.i.i, align 4
  store ptr null, ptr %args_p.i.i.i, align 4
  %23 = load i32, ptr %type10.i.i.i, align 4
  %24 = load ptr, ptr %args_p16.i.i.i, align 4
  %call28.i.i.i = tail call i32 @security_audit_rule_init(i32 noundef %23, i32 noundef 0, ptr noundef %24, ptr noundef %arrayidx9.i.i.i) #20
  %25 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx9.i.i.i, align 4
  %tobool32.not.i.i.i = icmp eq ptr %26, null
  br i1 %tobool32.not.i.i.i, label %do.end.i.i.i, label %if.end5.i.i.i.for.inc.i.i.i_crit_edge

if.end5.i.i.i.for.inc.i.i.i_crit_edge:            ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i.i.i

do.end.i.i.i:                                     ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %27 = ptrtoint ptr %args_p16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %args_p16.i.i.i, align 4
  %call37.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %28) #24
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %do.end.i.i.i, %if.end5.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %inc.i.i.i = add nuw nsw i32 %i.065.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 6
  br i1 %exitcond.not.i.i.i, label %ima_lsm_update_rule.exit.thread.i, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i.i.i

ima_lsm_update_rule.exit.thread.i:                ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %29 = ptrtoint ptr %entry1.028.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %entry1.028.i, align 4
  %31 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %call.i.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %entry1.028.i, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i.i, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %prev2.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !403
  %35 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev2.i.i.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %call.i.i.i, ptr %36, align 4
  %38 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call.i.i.i, align 4
  %prev38.i.i.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %prev38.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i.i.i, ptr %prev38.i.i.i, align 4
  %41 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  tail call void @synchronize_rcu() #20
  tail call fastcc void @ima_lsm_free_rule(ptr noundef %entry1.028.i) #20
  tail call void @kfree(ptr noundef %entry1.028.i) #20
  br label %for.inc.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef -12) #24
  br label %return

for.inc.i:                                        ; preds = %ima_lsm_update_rule.exit.thread.i, %ima_rule_contains_lsm_cond.exit.i.for.inc.i_crit_edge
  %cmp.not.i = icmp eq ptr %e.029.i, @ima_policy_rules
  br i1 %cmp.not.i, label %for.inc.i.return_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i

for.inc.i.return_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

return:                                           ; preds = %for.inc.i.return_crit_edge, %do.end.i, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 1, %if.end.return_crit_edge ], [ 1, %do.end.i ], [ 1, %for.inc.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ima_match_policy(ptr noundef %mnt_userns, ptr noundef %inode, ptr nocapture noundef readonly %cred, i32 noundef %secid, i32 noundef %func, i32 noundef %mask, i32 noundef %flags, ptr noundef writeonly %pcr, ptr noundef %template_desc, ptr noundef readonly %func_data, ptr noundef writeonly %allowed_algos) local_unnamed_addr #3 align 64 {
entry:
  %osid.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %flags, 1
  %or = or i32 %shl, %flags
  %tobool.not = icmp eq ptr %template_desc, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %0 = ptrtoint ptr %template_desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %template_desc, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  %call = tail call ptr @ima_template_desc_current() #20
  %2 = ptrtoint ptr %template_desc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %template_desc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %3 = tail call i32 @llvm.read_register.i32(metadata !393) #20
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !404
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #20
  %call.i = tail call zeroext i1 @rcu_is_watching() #20
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.54, i32 noundef 696, ptr noundef nonnull @.str.55) #20
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %7 = load volatile ptr, ptr @ima_rules, align 4
  %call4 = tail call i32 @rcu_read_lock_held() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true6, label %rcu_read_lock.exit.do.end14_crit_edge

rcu_read_lock.exit.do.end14_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end14

land.lhs.true6:                                   ; preds = %rcu_read_lock.exit
  %call7 = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true6.do.end14_crit_edge, label %land.lhs.true9

land.lhs.true6.do.end14_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end14

land.lhs.true9:                                   ; preds = %land.lhs.true6
  %.b146 = load i1, ptr @ima_match_policy.__warned, align 1
  br i1 %.b146, label %land.lhs.true9.do.end14_crit_edge, label %if.then11

land.lhs.true9.do.end14_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end14

if.then11:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @ima_match_policy.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 705, ptr noundef nonnull @.str.1) #20
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %land.lhs.true9.do.end14_crit_edge, %land.lhs.true6.do.end14_crit_edge, %rcu_read_lock.exit.do.end14_crit_edge
  %call17 = tail call i32 @rcu_read_lock_any_held() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %land.lhs.true19, label %do.end14.do.end27_crit_edge

do.end14.do.end27_crit_edge:                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end27

land.lhs.true19:                                  ; preds = %do.end14
  %call20 = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %land.lhs.true19.do.end27_crit_edge, label %land.lhs.true22

land.lhs.true19.do.end27_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end27

land.lhs.true22:                                  ; preds = %land.lhs.true19
  %.b142145 = load i1, ptr @ima_match_policy.__warned.2, align 1
  br i1 %.b142145, label %land.lhs.true22.do.end27_crit_edge, label %if.then24

land.lhs.true22.do.end27_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end27

if.then24:                                        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @ima_match_policy.__warned.2, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 706, ptr noundef nonnull @.str.3) #20
  br label %do.end27

do.end27:                                         ; preds = %if.then24, %land.lhs.true22.do.end27_crit_edge, %land.lhs.true19.do.end27_crit_edge, %do.end14.do.end27_crit_edge
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %entry1.0182 = load volatile ptr, ptr %7, align 4
  %cmp.not183 = icmp eq ptr %entry1.0182, %7
  br i1 %cmp.not183, label %do.end27.for.end_crit_edge, label %for.body.lr.ph

do.end27.for.end_crit_edge:                       ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end27
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %func)
  %cmp3.not.i = icmp eq i32 %func, 5
  %9 = and i32 %func, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %9)
  %switch.i = icmp eq i32 %9, 12
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %uid.i = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 4
  %euid.i = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 8
  %suid.i = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 6
  %gid.i = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 5
  %egid.i = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 9
  %sgid.i = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 7
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %cmp.i.i.i.i168 = icmp eq ptr %mnt_userns, @init_user_ns
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %tobool12.not.i.i = icmp eq ptr %func_data, null
  %tobool57.not = icmp eq ptr %allowed_algos, null
  %tobool81.not = icmp eq ptr %pcr, null
  %switch.tableidx = add i32 %func, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %10 = icmp ult i32 %switch.tableidx, 5
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.ima_match_policy, i32 0, i32 %switch.tableidx
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %entry1.0188 = phi ptr [ %entry1.0182, %for.body.lr.ph ], [ %entry1.0, %for.inc.for.body_crit_edge ]
  %action.0186 = phi i32 [ 0, %for.body.lr.ph ], [ %action.3, %for.inc.for.body_crit_edge ]
  %actmask.0184 = phi i32 [ %or, %for.body.lr.ph ], [ %actmask.2, %for.inc.for.body_crit_edge ]
  %action33 = getelementptr inbounds %struct.ima_rule_entry, ptr %entry1.0188, i32 0, i32 1
  %11 = ptrtoint ptr %action33 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %action33, align 4
  %and = and i32 %12, %actmask.0184
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool34.not = icmp eq i32 %and, 0
  br i1 %tobool34.not, label %for.body.for.inc_crit_edge, label %if.end36

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

if.end36:                                         ; preds = %for.body
  %flags.i = getelementptr inbounds %struct.ima_rule_entry, ptr %entry1.0188, i32 0, i32 2
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i147 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i147, label %if.end36.if.end.i_crit_edge, label %land.lhs.true.i148

if.end36.if.end.i_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i

land.lhs.true.i148:                               ; preds = %if.end36
  %func1.i = getelementptr inbounds %struct.ima_rule_entry, ptr %entry1.0188, i32 0, i32 3
  %15 = ptrtoint ptr %func1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %func1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %func)
  %cmp.not.i = icmp eq i32 %16, %func
  %or.cond.i = or i1 %cmp3.not.i, %cmp.not.i
  br i1 %or.cond.i, label %land.lhs.true.i148.if.end.i_crit_edge, label %land.lhs.true.i148.for.inc_crit_edge

land.lhs.true.i148.for.inc_crit_edge:             ; preds = %land.lhs.true.i148
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

land.lhs.true.i148.if.end.i_crit_edge:            ; preds = %land.lhs.true.i148
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i148.if.end.i_crit_edge, %if.end36.if.end.i_crit_edge
  br i1 %switch.i, label %sw.bb.i, label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end.i
  %func4.i = getelementptr inbounds %struct.ima_rule_entry, ptr %entry1.0188, i32 0, i32 3
  %17 = ptrtoint ptr %func4.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %func4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %func)
  %cmp5.i = icmp eq i32 %18, %func
  br i1 %cmp5.i, label %land.rhs.i, label %sw.bb.i.for.inc_crit_edge

sw.bb.i.for.inc_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

land.rhs.i:                                       ; preds = %sw.bb.i
  %and.i.i = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

land.rhs.i.if.end.i.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %land.rhs.i
  %uid_op.i.i = getelementptr inbounds %struct.ima_rule_entry, ptr %entry1.0188, i32 0, i32 11
  %19 = ptrtoint ptr %uid_op.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %uid_op.i.i, align 4
  %uid1.i.i = getelementptr inbounds %struct.ima_rule_entry, ptr %entry1.0188, i32 0, i32 7
  %21 = ptrtoint ptr %uid.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.unpack.i.i = load i32, ptr %uid.i, align 4
  %22 = insertvalue [1 x i32] undef, i32 %.unpack.i.i, 0
  %23 = ptrtoint ptr %uid1.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.unpack34.i.i = load i32, ptr %uid1.i.i, align 4
  %24 = insertvalue [1 x i32] undef, i32 %.unpack34.i.i, 0
  %call.i.i = call zeroext i1 %20([1 x i32] %22, [1 x i32] %24) #20
  br i1 %call.i.i, label %if.end.ithread-pre-split.i, label %land.lhs.true.i.i.for.inc_crit_edge

land.lhs.true.i.i.for.inc_crit_edge:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

if.end.ithread-pre-split.i:                       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %25 = ptrtoint ptr %func4.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pr.i = load i32, ptr %func4.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end.ithread-pre-split.i, %land.rhs.i.if.end.i.i_crit_edge
  %26 = phi i32 [ %.pr.i, %if.end.ithread-pre-split.i ], [ %func, %land.rhs.i.if.end.i.i_crit_edge ]
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values)
  switch i32 %26, label %if.end.i.i.for.inc_crit_edge [
    i32 12, label %sw.bb.i.i
    i32 13, label %sw.bb7.i.i
  ]

if.end.i.i.for.inc_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

sw.bb.i.i:                                        ; preds = %if.end.i.i
  %keyrings.i.i = getelementptr inbounds %struct.ima_rule_entry, ptr %entry1.0188, i32 0, i32 19
  %28 = ptrtoint ptr %keyrings.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %keyrings.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %29, null
  br i1 %tobool3.not.i.i, label %sw.bb.i.i.if.end39_crit_edge, label %sw.bb.i.i.sw.epilog.i.i_crit_edge

sw.bb.i.i.sw.epilog.i.i_crit_edge:                ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog.i.i

sw.bb.i.i.if.end39_crit_edge:                     ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end39

sw.bb7.i.i:                                       ; preds = %if.end.i.i
  %label.i.i = getelementptr inbounds %struct.ima_rule_entry, ptr %entry1.0188, i32 0, i32 20
  %30 = ptrtoint ptr %label.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %label.i.i, align 4
  %tobool8.not.i.i = icmp eq ptr %31, null
  br i1 %tobool8.not.i.i, label %sw.bb7.i.i.if.end39_crit_edge, label %sw.bb7.i.i.sw.epilog.i.i_crit_edge

sw.bb7.i.i.sw.epilog.i.i_crit_edge:               ; preds = %sw.bb7.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog.i.i

sw.bb7.i.i.if.end39_crit_edge:                    ; preds = %sw.bb7.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end39

sw.epilog.i.i:                                    ; preds = %sw.bb7.i.i.sw.epilog.i.i_crit_edge, %sw.bb.i.i.sw.epilog.i.i_crit_edge
  %opt_list.0.i.i = phi ptr [ %29, %sw.bb.i.i.sw.epilog.i.i_crit_edge ], [ %31, %sw.bb7.i.i.sw.epilog.i.i_crit_edge ]
  br i1 %tobool12.not.i.i, label %sw.epilog.i.i.for.inc_crit_edge, label %for.cond.preheader.i.i

sw.epilog.i.i.for.inc_crit_edge:                  ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

for.cond.preheader.i.i:                           ; preds = %sw.epilog.i.i
  %32 = ptrtoint ptr %opt_list.0.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %opt_list.0.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp35.not.i.i = icmp eq i32 %33, 0
  br i1 %cmp35.not.i.i, label %for.cond.preheader.i.i.for.inc_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.for.inc_crit_edge:         ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.036.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %33
  br i1 %exitcond.not.i.i, label %for.cond.i.i.for.inc_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i.i

for.cond.i.i.for.inc_crit_edge:                   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %i.036.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.ima_rule_opt_list, ptr %opt_list.0.i.i, i32 0, i32 1, i32 %i.036.i.i
  %34 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i.i, align 4
  %call15.i.i = call i32 @strcmp(ptr noundef %35, ptr noundef nonnull %func_data) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %tobool16.not.i.i = icmp eq i32 %call15.i.i, 0
  br i1 %tobool16.not.i.i, label %for.body.i.i.if.end39_crit_edge, label %for.cond.i.i

for.body.i.i.if.end39_crit_edge:                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end39

sw.epilog.i:                                      ; preds = %if.end.i
  %and7.i = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %sw.epilog.i.if.end15.i_crit_edge, label %land.lhs.true9.i

sw.epilog.i.if.end15.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end15.i

land.lhs.true9.i:                                 ; preds = %sw.epilog.i
  %mask10.i = getelementptr inbounds %struct.ima_rule_entry, ptr %entry1.0188, i32 0, i32 4
  %36 = ptrtoint ptr %mask10.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mask10.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %mask)
  %cmp11.not.i = icmp eq i32 %37, %mask
  %or.cond302.i = or i1 %cmp3.not.i, %cmp11.not.i
  br i1 %or.cond302.i, label %land.lhs.true9.i.if.end15.i_crit_edge, label %land.lhs.true9.i.for.inc_crit_edge

land.lhs.true9.i.for.inc_crit_edge:               ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

land.lhs.true9.i.if.end15.i_crit_edge:            ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end15.i

if.end15.i:                                       ; preds = %land.lhs.true9.i.if.end15.i_crit_edge, %sw.epilog.i.if.end15.i_crit_edge
  %and17.i = and i32 %14, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %if.end15.i.if.end26.i_crit_edge, label %land.lhs.true19.i

if.end15.i.if.end26.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end26.i

land.lhs.true19.i:                                ; preds = %if.end15.i
  %mask20.i = getelementptr inbounds %struct.ima_rule_entry, ptr %entry1.0188, i32 0, i32 4
  %38 = ptrtoint ptr %mask20.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mask20.i, align 4
  %and21.i = and i32 %39, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp ne i32 %and21.i, 0
  %or.cond303.i = or i1 %cmp3.not.i, %tobool22.not.i
  br i1 %or.cond303.i, label %land.lhs.true19.i.if.end26.i_crit_edge, label %land.lhs.true19.i.for.inc_crit_edge

land.lhs.true19.i.for.inc_crit_edge:              ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

land.lhs.true19.i.if.end26.i_crit_edge:           ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end26.i

if.end26.i:                                       ; preds = %land.lhs.true19.i.if.end26.i_crit_edge, %if.end15.i.if.end26.i_crit_edge
  %and28.i = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool29.not.i, label %if.end26.i.if.end33.i_crit_edge, label %land.lhs.true30.i

if.end26.i.if.end33.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end33.i

land.lhs.true30.i:                                ; preds = %if.end26.i
  %fsmagic.i = getelementptr inbounds %struct.ima_rule_entry, ptr %entry1.0188, i32 0, i32 5
  %40 = ptrtoint ptr %fsmagic.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %fsmagic.i, align 4
  %42 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %i_sb.i, align 4
  %s_magic.i = getelementptr inbounds %struct.super_block, ptr %43, i32 0, i32 12
  %44 = ptrtoint ptr %s_magic.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %s_magic.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %45)
  %cmp31.not.i = icmp eq i32 %41, %45
  br i1 %cmp31.not.i, label %land.lhs.true30.i.if.end33.i_crit_edge, label %land.lhs.true30.i.for.inc_crit_edge

land.lhs.true30.i.for.inc_crit_edge:              ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

land.lhs.true30.i.if.end33.i_crit_edge:           ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end33.i

if.end33.i:                                       ; preds = %land.lhs.true30.i.if.end33.i_crit_edge, %if.end26.i.if.end33.i_crit_edge
  %and35.i = and i32 %14, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  br i1 %tobool36.not.i, label %if.end33.i.if.end42.i_crit_edge, label %land.lhs.true37.i

if.end33.i.if.end42.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end42.i

land.lhs.true37.i:                                ; preds = %if.end33.i
  %fsname.i = getelementptr inbounds %struct.ima_rule_entry, ptr %entry1.0188, i32 0, i32 18
  %46 = ptrtoint ptr %fsname.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fsname.i, align 4
  %48 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %i_sb.i, align 4
  %s_type.i = getelementptr inbounds %struct.super_block, ptr %49, i32 0, i32 5
  %50 = ptrtoint ptr %s_type.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %s_type.i, align 32
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %call39.i = call i32 @strcmp(ptr noundef %47, ptr noundef %53) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %land.lhs.true37.i.if.end42.i_crit_edge, label %land.lhs.true37.i.for.inc_crit_edge

land.lhs.true37.i.for.inc_crit_edge:              ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

land.lhs.true37.i.if.end42.i_crit_edge:           ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end42.i

if.end42.i:                                       ; preds = %land.lhs.true37.i.if.end42.i_crit_edge, %if.end33.i.if.end42.i_crit_edge
  %and44.i = and i32 %14, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i)
  %tobool45.not.i = icmp eq i32 %and44.i, 0
  br i1 %tobool45.not.i, label %if.end42.i.if.end50.i_crit_edge, label %land.lhs.true46.i

if.end42.i.if.end50.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end50.i

land.lhs.true46.i:                                ; preds = %if.end42.i
  %fsuuid.i = getelementptr inbounds %struct.ima_rule_entry, ptr %entry1.0188, i32 0, i32 6
  %54 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %i_sb.i, align 4
  %s_uuid.i = getelementptr inbounds %struct.super_block, ptr %55, i32 0, i32 40
  %bcmp.i.i = call i32 @bcmp(ptr noundef dereferenceable(16) %fsuuid.i, ptr noundef dereferenceable(16) %s_uuid.i, i32 16) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %cmp.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true46.i.if.end50.i_crit_edge, label %land.lhs.true46.i.for.inc_crit_edge

land.lhs.true46.i.for.inc_crit_edge:              ; preds = %land.lhs.true46.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

land.lhs.true46.i.if.end50.i_crit_edge:           ; preds = %land.lhs.true46.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end50.i

if.end50.i:                                       ; preds = %land.lhs.true46.i.if.end50.i_crit_edge, %if.end42.i.if.end50.i_crit_edge
  %and52.i = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.i)
  %tobool53.not.i = icmp eq i32 %and52.i, 0
  br i1 %tobool53.not.i, label %if.end50.i.if.end59.i_crit_edge, label %land.lhs.true54.i

if.end50.i.if.end59.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end59.i

land.lhs.true54.i:                                ; preds = %if.end50.i
  %uid_op.i = getelementptr inbounds %struct.ima_rule_entry, ptr %entry1.0188, i32 0, i32 11
  %56 = ptrtoint ptr %uid_op.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %uid_op.i, align 4
  %uid55.i = getelementptr inbounds %struct.ima_rule_entry, ptr %entry1.0188, i32 0, i32 7
  %58 = ptrtoint ptr %uid.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %.unpack300.i = load i32, ptr %uid.i, align 4
  %59 = insertvalue [1 x i32] undef, i32 %.unpack300.i, 0
  %60 = ptrtoint ptr %uid55.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %.unpack301.i = load i32, ptr %uid55.i, align 4
  %61 = insertvalue [1 x i32] undef, i32 %.unpack301.i, 0
  %call57.i = call zeroext i1 %57([1 x i32] %59, [1 x i32] %61) #20
  br i1 %call57.i, label %land.lhs.true54.i.if.end59.i_crit_edge, label %land.lhs.true54.i.for.inc_crit_edge

land.lhs.true54.i.for.inc_crit_edge:              ; preds = %land.lhs.true54.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

land.lhs.true54.i.if.end59.i_crit_edge:           ; preds = %land.lhs.true54.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end59.i

if.end59.i:                                       ; preds = %land.lhs.true54.i.if.end59.i_crit_edge, %if.end50.i.if.end59.i_crit_edge
  %62 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flags.i, align 4
  %and61.i = and i32 %63, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61.i)
  %tobool62.not.i = icmp eq i32 %and61.i, 0
  br i1 %tobool62.not.i, label %if.end59.i.if.end96.i_crit_edge, label %if.then63.i

if.end59.i.if.end96.i_crit_edge:                  ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end96.i

if.then63.i:                                      ; preds = %if.end59.i
  %64 = call i32 @llvm.read_register.i32(metadata !393) #20
  %and.i305.i = and i32 %64, -16384
  %65 = inttoptr i32 %and.i305.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %task.i, align 8
  %call65.i = call zeroext i1 @has_capability_noaudit(ptr noundef %67, i32 noundef 7) #20
  %uid_op67.i = getelementptr inbounds %struct.ima_rule_entry, ptr %entry1.0188, i32 0, i32 11
  %68 = ptrtoint ptr %uid_op67.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %uid_op67.i, align 4
  %uid68.i = getelementptr inbounds %struct.ima_rule_entry, ptr %entry1.0188, i32 0, i32 7
  %70 = ptrtoint ptr %euid.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %.unpack294.i = load i32, ptr %euid.i, align 4
  %71 = insertvalue [1 x i32] undef, i32 %.unpack294.i, 0
  %72 = ptrtoint ptr %uid68.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %.unpack295.i = load i32, ptr %uid68.i, align 4
  %73 = insertvalue [1 x i32] undef, i32 %.unpack295.i, 0
  %call71.i = call zeroext i1 %69([1 x i32] %71, [1 x i32] %73) #20
  br i1 %call65.i, label %if.then66.i, label %if.else.i

if.then66.i:                                      ; preds = %if.then63.i
  br i1 %call71.i, label %if.then66.i.if.end96.i_crit_edge, label %land.lhs.true72.i

if.then66.i.if.end96.i_crit_edge:                 ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end96.i

land.lhs.true72.i:                                ; preds = %if.then66.i
  %74 = ptrtoint ptr %uid_op67.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %uid_op67.i, align 4
  %76 = ptrtoint ptr %suid.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %.unpack296.i = load i32, ptr %suid.i, align 4
  %77 = insertvalue [1 x i32] undef, i32 %.unpack296.i, 0
  %78 = ptrtoint ptr %uid68.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %.unpack297.i = load i32, ptr %uid68.i, align 4
  %79 = insertvalue [1 x i32] undef, i32 %.unpack297.i, 0
  %call77.i = call zeroext i1 %75([1 x i32] %77, [1 x i32] %79) #20
  br i1 %call77.i, label %land.lhs.true72.i.if.end96.i_crit_edge, label %land.lhs.true78.i

land.lhs.true72.i.if.end96.i_crit_edge:           ; preds = %land.lhs.true72.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end96.i

land.lhs.true78.i:                                ; preds = %land.lhs.true72.i
  %80 = ptrtoint ptr %uid_op67.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %uid_op67.i, align 4
  %82 = ptrtoint ptr %uid.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %.unpack298.i = load i32, ptr %uid.i, align 4
  %83 = insertvalue [1 x i32] undef, i32 %.unpack298.i, 0
  %84 = ptrtoint ptr %uid68.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %.unpack299.i = load i32, ptr %uid68.i, align 4
  %85 = insertvalue [1 x i32] undef, i32 %.unpack299.i, 0
  %call84.i = call zeroext i1 %81([1 x i32] %83, [1 x i32] %85) #20
  br i1 %call84.i, label %land.lhs.true78.i.if.end96.i_crit_edge, label %land.lhs.true78.i.for.inc_crit_edge

land.lhs.true78.i.for.inc_crit_edge:              ; preds = %land.lhs.true78.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

land.lhs.true78.i.if.end96.i_crit_edge:           ; preds = %land.lhs.true78.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end96.i

if.else.i:                                        ; preds = %if.then63.i
  br i1 %call71.i, label %if.else.i.if.end96.i_crit_edge, label %if.else.i.for.inc_crit_edge

if.else.i.for.inc_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

if.else.i.if.end96.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end96.i

if.end96.i:                                       ; preds = %if.else.i.if.end96.i_crit_edge, %land.lhs.true78.i.if.end96.i_crit_edge, %land.lhs.true72.i.if.end96.i_crit_edge, %if.then66.i.if.end96.i_crit_edge, %if.end59.i.if.end96.i_crit_edge
  %86 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %flags.i, align 4
  %and98.i = and i32 %87, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98.i)
  %tobool99.not.i = icmp eq i32 %and98.i, 0
  br i1 %tobool99.not.i, label %if.end96.i.if.end106.i_crit_edge, label %land.lhs.true100.i

if.end96.i.if.end106.i_crit_edge:                 ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end106.i

land.lhs.true100.i:                               ; preds = %if.end96.i
  %gid_op.i = getelementptr inbounds %struct.ima_rule_entry, ptr %entry1.0188, i32 0, i32 12
  %88 = ptrtoint ptr %gid_op.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %gid_op.i, align 4
  %gid101.i = getelementptr inbounds %struct.ima_rule_entry, ptr %entry1.0188, i32 0, i32 8
  %90 = ptrtoint ptr %gid.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %.unpack290.i = load i32, ptr %gid.i, align 4
  %91 = insertvalue [1 x i32] undef, i32 %.unpack290.i, 0
  %92 = ptrtoint ptr %gid101.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %.unpack291.i = load i32, ptr %gid101.i, align 4
  %93 = insertvalue [1 x i32] undef, i32 %.unpack291.i, 0
  %call104.i = call zeroext i1 %89([1 x i32] %91, [1 x i32] %93) #20
  br i1 %call104.i, label %land.lhs.true100.i.if.end106.i_crit_edge, label %land.lhs.true100.i.for.inc_crit_edge

land.lhs.true100.i.for.inc_crit_edge:             ; preds = %land.lhs.true100.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

land.lhs.true100.i.if.end106.i_crit_edge:         ; preds = %land.lhs.true100.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end106.i

if.end106.i:                                      ; preds = %land.lhs.true100.i.if.end106.i_crit_edge, %if.end96.i.if.end106.i_crit_edge
  %94 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %flags.i, align 4
  %and108.i = and i32 %95, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108.i)
  %tobool109.not.i = icmp eq i32 %and108.i, 0
  br i1 %tobool109.not.i, label %if.end106.i.if.end145.i_crit_edge, label %if.then110.i

if.end106.i.if.end145.i_crit_edge:                ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end145.i

if.then110.i:                                     ; preds = %if.end106.i
  %96 = call i32 @llvm.read_register.i32(metadata !393) #20
  %and.i306.i = and i32 %96, -16384
  %97 = inttoptr i32 %and.i306.i to ptr
  %task112.i = getelementptr inbounds %struct.thread_info, ptr %97, i32 0, i32 2
  %98 = ptrtoint ptr %task112.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %task112.i, align 8
  %call113.i = call zeroext i1 @has_capability_noaudit(ptr noundef %99, i32 noundef 6) #20
  %gid_op115.i = getelementptr inbounds %struct.ima_rule_entry, ptr %entry1.0188, i32 0, i32 12
  %100 = ptrtoint ptr %gid_op115.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %gid_op115.i, align 4
  %gid116.i = getelementptr inbounds %struct.ima_rule_entry, ptr %entry1.0188, i32 0, i32 8
  %102 = ptrtoint ptr %egid.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %.unpack284.i = load i32, ptr %egid.i, align 4
  %103 = insertvalue [1 x i32] undef, i32 %.unpack284.i, 0
  %104 = ptrtoint ptr %gid116.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %.unpack285.i = load i32, ptr %gid116.i, align 4
  %105 = insertvalue [1 x i32] undef, i32 %.unpack285.i, 0
  %call119.i = call zeroext i1 %101([1 x i32] %103, [1 x i32] %105) #20
  br i1 %call113.i, label %if.then114.i, label %if.else135.i

if.then114.i:                                     ; preds = %if.then110.i
  br i1 %call119.i, label %if.then114.i.if.end145.i_crit_edge, label %land.lhs.true120.i

if.then114.i.if.end145.i_crit_edge:               ; preds = %if.then114.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end145.i

land.lhs.true120.i:                               ; preds = %if.then114.i
  %106 = ptrtoint ptr %gid_op115.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %gid_op115.i, align 4
  %108 = ptrtoint ptr %sgid.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %.unpack286.i = load i32, ptr %sgid.i, align 4
  %109 = insertvalue [1 x i32] undef, i32 %.unpack286.i, 0
  %110 = ptrtoint ptr %gid116.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %.unpack287.i = load i32, ptr %gid116.i, align 4
  %111 = insertvalue [1 x i32] undef, i32 %.unpack287.i, 0
  %call125.i = call zeroext i1 %107([1 x i32] %109, [1 x i32] %111) #20
  br i1 %call125.i, label %land.lhs.true120.i.if.end145.i_crit_edge, label %land.lhs.true126.i

land.lhs.true120.i.if.end145.i_crit_edge:         ; preds = %land.lhs.true120.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end145.i

land.lhs.true126.i:                               ; preds = %land.lhs.true120.i
  %112 = ptrtoint ptr %gid_op115.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %gid_op115.i, align 4
  %114 = ptrtoint ptr %gid.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %.unpack288.i = load i32, ptr %gid.i, align 4
  %115 = insertvalue [1 x i32] undef, i32 %.unpack288.i, 0
  %116 = ptrtoint ptr %gid116.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %.unpack289.i = load i32, ptr %gid116.i, align 4
  %117 = insertvalue [1 x i32] undef, i32 %.unpack289.i, 0
  %call132.i = call zeroext i1 %113([1 x i32] %115, [1 x i32] %117) #20
  br i1 %call132.i, label %land.lhs.true126.i.if.end145.i_crit_edge, label %land.lhs.true126.i.for.inc_crit_edge

land.lhs.true126.i.for.inc_crit_edge:             ; preds = %land.lhs.true126.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

land.lhs.true126.i.if.end145.i_crit_edge:         ; preds = %land.lhs.true126.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end145.i

if.else135.i:                                     ; preds = %if.then110.i
  br i1 %call119.i, label %if.else135.i.if.end145.i_crit_edge, label %if.else135.i.for.inc_crit_edge

if.else135.i.for.inc_crit_edge:                   ; preds = %if.else135.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

if.else135.i.if.end145.i_crit_edge:               ; preds = %if.else135.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end145.i

if.end145.i:                                      ; preds = %if.else135.i.if.end145.i_crit_edge, %land.lhs.true126.i.if.end145.i_crit_edge, %land.lhs.true120.i.if.end145.i_crit_edge, %if.then114.i.if.end145.i_crit_edge, %if.end106.i.if.end145.i_crit_edge
  %118 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %flags.i, align 4
  %and147.i = and i32 %119, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and147.i)
  %tobool148.not.i = icmp eq i32 %and147.i, 0
  br i1 %tobool148.not.i, label %if.end145.i.if.end156.i_crit_edge, label %land.lhs.true149.i

if.end145.i.if.end156.i_crit_edge:                ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end156.i

land.lhs.true149.i:                               ; preds = %if.end145.i
  %fowner_op.i = getelementptr inbounds %struct.ima_rule_entry, ptr %entry1.0188, i32 0, i32 13
  %120 = ptrtoint ptr %fowner_op.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %fowner_op.i, align 4
  %122 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %i_sb.i, align 4
  %s_user_ns.i.i166 = getelementptr inbounds %struct.super_block, ptr %123, i32 0, i32 53
  %124 = ptrtoint ptr %s_user_ns.i.i166 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %s_user_ns.i.i166, align 8
  %126 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %.unpack.i167 = load i32, ptr %i_uid.i, align 4
  %127 = insertvalue [1 x i32] undef, i32 %.unpack.i167, 0
  %cmp.i.i.i169 = icmp eq ptr %125, %mnt_userns
  %spec.select.i.i.i170 = or i1 %cmp.i.i.i.i168, %cmp.i.i.i169
  br i1 %spec.select.i.i.i170, label %land.lhs.true149.i.i_uid_into_mnt.exit_crit_edge, label %if.end.i.i172

land.lhs.true149.i.i_uid_into_mnt.exit_crit_edge: ; preds = %land.lhs.true149.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %i_uid_into_mnt.exit

if.end.i.i172:                                    ; preds = %land.lhs.true149.i
  %cmp.i21.i.i171 = icmp eq ptr %125, @init_user_ns
  br i1 %cmp.i21.i.i171, label %if.end.i.i172.if.end7.i.i176_crit_edge, label %if.else.i.i174

if.end.i.i172.if.end7.i.i176_crit_edge:           ; preds = %if.end.i.i172
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end7.i.i176

if.else.i.i174:                                   ; preds = %if.end.i.i172
  call void @__sanitizer_cov_trace_pc() #22
  %call6.i.i173 = call i32 @from_kuid(ptr noundef %125, [1 x i32] %127) #20
  br label %if.end7.i.i176

if.end7.i.i176:                                   ; preds = %if.else.i.i174, %if.end.i.i172.if.end7.i.i176_crit_edge
  %uid.0.i.i = phi i32 [ %call6.i.i173, %if.else.i.i174 ], [ %.unpack.i167, %if.end.i.i172.if.end7.i.i176_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %uid.0.i.i)
  %cmp.i.i175 = icmp eq i32 %uid.0.i.i, -1
  br i1 %cmp.i.i175, label %if.end7.i.i176.i_uid_into_mnt.exit_crit_edge, label %if.end9.i.i178

if.end7.i.i176.i_uid_into_mnt.exit_crit_edge:     ; preds = %if.end7.i.i176
  call void @__sanitizer_cov_trace_pc() #22
  br label %i_uid_into_mnt.exit

if.end9.i.i178:                                   ; preds = %if.end7.i.i176
  call void @__sanitizer_cov_trace_pc() #22
  %call10.i.i177 = call i32 @make_kuid(ptr noundef %mnt_userns, i32 noundef %uid.0.i.i) #20
  br label %i_uid_into_mnt.exit

i_uid_into_mnt.exit:                              ; preds = %if.end9.i.i178, %if.end7.i.i176.i_uid_into_mnt.exit_crit_edge, %land.lhs.true149.i.i_uid_into_mnt.exit_crit_edge
  %retval.sroa.0.0.i.i179 = phi i32 [ %call10.i.i177, %if.end9.i.i178 ], [ -1, %if.end7.i.i176.i_uid_into_mnt.exit_crit_edge ], [ %.unpack.i167, %land.lhs.true149.i.i_uid_into_mnt.exit_crit_edge ]
  %fowner.i = getelementptr inbounds %struct.ima_rule_entry, ptr %entry1.0188, i32 0, i32 9
  %.fca.0.insert201.i = insertvalue [1 x i32] poison, i32 %retval.sroa.0.0.i.i179, 0
  %128 = ptrtoint ptr %fowner.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %.unpack281.i = load i32, ptr %fowner.i, align 4
  %129 = insertvalue [1 x i32] undef, i32 %.unpack281.i, 0
  %call154.i = call zeroext i1 %121([1 x i32] %.fca.0.insert201.i, [1 x i32] %129) #20
  br i1 %call154.i, label %i_uid_into_mnt.exit.if.end156.i_crit_edge, label %i_uid_into_mnt.exit.for.inc_crit_edge

i_uid_into_mnt.exit.for.inc_crit_edge:            ; preds = %i_uid_into_mnt.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

i_uid_into_mnt.exit.if.end156.i_crit_edge:        ; preds = %i_uid_into_mnt.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end156.i

if.end156.i:                                      ; preds = %i_uid_into_mnt.exit.if.end156.i_crit_edge, %if.end145.i.if.end156.i_crit_edge
  %130 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %flags.i, align 4
  %and158.i = and i32 %131, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and158.i)
  %tobool159.not.i = icmp eq i32 %and158.i, 0
  br i1 %tobool159.not.i, label %if.end156.i.for.body.i.preheader_crit_edge, label %land.lhs.true160.i

if.end156.i.for.body.i.preheader_crit_edge:       ; preds = %if.end156.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i.preheader

land.lhs.true160.i:                               ; preds = %if.end156.i
  %fgroup_op.i = getelementptr inbounds %struct.ima_rule_entry, ptr %entry1.0188, i32 0, i32 14
  %132 = ptrtoint ptr %fgroup_op.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %fgroup_op.i, align 4
  %134 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %i_sb.i, align 4
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %135, i32 0, i32 53
  %136 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %s_user_ns.i.i, align 8
  %138 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %.unpack.i162 = load i32, ptr %i_gid.i, align 8
  %139 = insertvalue [1 x i32] undef, i32 %.unpack.i162, 0
  %cmp.i.i.i = icmp eq ptr %137, %mnt_userns
  %spec.select.i.i.i = or i1 %cmp.i.i.i.i168, %cmp.i.i.i
  br i1 %spec.select.i.i.i, label %land.lhs.true160.i.i_gid_into_mnt.exit_crit_edge, label %if.end.i.i163

land.lhs.true160.i.i_gid_into_mnt.exit_crit_edge: ; preds = %land.lhs.true160.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %i_gid_into_mnt.exit

if.end.i.i163:                                    ; preds = %land.lhs.true160.i
  %cmp.i21.i.i = icmp eq ptr %137, @init_user_ns
  br i1 %cmp.i21.i.i, label %if.end.i.i163.if.end7.i.i_crit_edge, label %if.else.i.i

if.end.i.i163.if.end7.i.i_crit_edge:              ; preds = %if.end.i.i163
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end7.i.i

if.else.i.i:                                      ; preds = %if.end.i.i163
  call void @__sanitizer_cov_trace_pc() #22
  %call6.i.i = call i32 @from_kgid(ptr noundef %137, [1 x i32] %139) #20
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.else.i.i, %if.end.i.i163.if.end7.i.i_crit_edge
  %gid.0.i.i = phi i32 [ %call6.i.i, %if.else.i.i ], [ %.unpack.i162, %if.end.i.i163.if.end7.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %gid.0.i.i)
  %cmp.i.i164 = icmp eq i32 %gid.0.i.i, -1
  br i1 %cmp.i.i164, label %if.end7.i.i.i_gid_into_mnt.exit_crit_edge, label %if.end9.i.i

if.end7.i.i.i_gid_into_mnt.exit_crit_edge:        ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %i_gid_into_mnt.exit

if.end9.i.i:                                      ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %call10.i.i = call i32 @make_kgid(ptr noundef %mnt_userns, i32 noundef %gid.0.i.i) #20
  br label %i_gid_into_mnt.exit

i_gid_into_mnt.exit:                              ; preds = %if.end9.i.i, %if.end7.i.i.i_gid_into_mnt.exit_crit_edge, %land.lhs.true160.i.i_gid_into_mnt.exit_crit_edge
  %retval.sroa.0.0.i.i = phi i32 [ %call10.i.i, %if.end9.i.i ], [ -1, %if.end7.i.i.i_gid_into_mnt.exit_crit_edge ], [ %.unpack.i162, %land.lhs.true160.i.i_gid_into_mnt.exit_crit_edge ]
  %fgroup.i = getelementptr inbounds %struct.ima_rule_entry, ptr %entry1.0188, i32 0, i32 10
  %.fca.0.insert.i = insertvalue [1 x i32] poison, i32 %retval.sroa.0.0.i.i, 0
  %140 = ptrtoint ptr %fgroup.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %.unpack.i = load i32, ptr %fgroup.i, align 4
  %141 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call166.i = call zeroext i1 %133([1 x i32] %.fca.0.insert.i, [1 x i32] %141) #20
  br i1 %call166.i, label %i_gid_into_mnt.exit.for.body.i.preheader_crit_edge, label %i_gid_into_mnt.exit.for.inc_crit_edge

i_gid_into_mnt.exit.for.inc_crit_edge:            ; preds = %i_gid_into_mnt.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

i_gid_into_mnt.exit.for.body.i.preheader_crit_edge: ; preds = %i_gid_into_mnt.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %i_gid_into_mnt.exit.for.body.i.preheader_crit_edge, %if.end156.i.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.0311.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %osid.i) #20
  %142 = ptrtoint ptr %osid.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 -1, ptr %osid.i, align 4, !annotation !405
  %arrayidx.i = getelementptr %struct.ima_rule_entry, ptr %entry1.0188, i32 0, i32 17, i32 %i.0311.i
  %143 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %arrayidx.i, align 4
  %tobool171.not.i = icmp eq ptr %144, null
  br i1 %tobool171.not.i, label %if.then172.i, label %if.end178.i

if.then172.i:                                     ; preds = %for.body.i
  %args_p.i = getelementptr %struct.ima_rule_entry, ptr %entry1.0188, i32 0, i32 17, i32 %i.0311.i, i32 1
  %145 = ptrtoint ptr %args_p.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %args_p.i, align 4
  %tobool175.not.i = icmp eq ptr %146, null
  br i1 %tobool175.not.i, label %if.then172.i.for.inc.i_crit_edge, label %if.then172.i.cleanup.thread.i_crit_edge

if.then172.i.cleanup.thread.i_crit_edge:          ; preds = %if.then172.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.thread.i

if.then172.i.for.inc.i_crit_edge:                 ; preds = %if.then172.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i

if.end178.i:                                      ; preds = %for.body.i
  %147 = zext i32 %i.0311.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %147, ptr @__sancov_gen_cov_switch_values.171)
  switch i32 %i.0311.i, label %if.end178.i.cleanup.thread.i_crit_edge [
    i32 0, label %if.end178.i.sw.bb179.i_crit_edge
    i32 1, label %if.end178.i.sw.bb179.i_crit_edge194
    i32 2, label %if.end178.i.sw.bb179.i_crit_edge195
    i32 3, label %if.end178.i.sw.bb186.i_crit_edge
    i32 4, label %if.end178.i.sw.bb186.i_crit_edge196
    i32 5, label %if.end178.i.sw.bb186.i_crit_edge197
  ]

if.end178.i.sw.bb186.i_crit_edge197:              ; preds = %if.end178.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb186.i

if.end178.i.sw.bb186.i_crit_edge196:              ; preds = %if.end178.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb186.i

if.end178.i.sw.bb186.i_crit_edge:                 ; preds = %if.end178.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb186.i

if.end178.i.sw.bb179.i_crit_edge195:              ; preds = %if.end178.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb179.i

if.end178.i.sw.bb179.i_crit_edge194:              ; preds = %if.end178.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb179.i

if.end178.i.sw.bb179.i_crit_edge:                 ; preds = %if.end178.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb179.i

if.end178.i.cleanup.thread.i_crit_edge:           ; preds = %if.end178.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.thread.i

sw.bb179.i:                                       ; preds = %if.end178.i.sw.bb179.i_crit_edge, %if.end178.i.sw.bb179.i_crit_edge194, %if.end178.i.sw.bb179.i_crit_edge195
  call void @security_inode_getsecid(ptr noundef %inode, ptr noundef nonnull %osid.i) #20
  %148 = ptrtoint ptr %osid.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %osid.i, align 4
  %type.i = getelementptr %struct.ima_rule_entry, ptr %entry1.0188, i32 0, i32 17, i32 %i.0311.i, i32 2
  %150 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %type.i, align 4
  %152 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %arrayidx.i, align 4
  %call185.i = call i32 @security_audit_rule_match(i32 noundef %149, i32 noundef %151, i32 noundef 0, ptr noundef %153) #20
  br label %sw.epilog195.i

sw.bb186.i:                                       ; preds = %if.end178.i.sw.bb186.i_crit_edge, %if.end178.i.sw.bb186.i_crit_edge196, %if.end178.i.sw.bb186.i_crit_edge197
  %type189.i = getelementptr %struct.ima_rule_entry, ptr %entry1.0188, i32 0, i32 17, i32 %i.0311.i, i32 2
  %154 = ptrtoint ptr %type189.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %type189.i, align 4
  %call193.i = call i32 @security_audit_rule_match(i32 noundef %secid, i32 noundef %155, i32 noundef 0, ptr noundef nonnull %144) #20
  br label %sw.epilog195.i

sw.epilog195.i:                                   ; preds = %sw.bb186.i, %sw.bb179.i
  %rc.0.i = phi i32 [ %call193.i, %sw.bb186.i ], [ %call185.i, %sw.bb179.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0.i)
  %tobool196.not.i = icmp eq i32 %rc.0.i, 0
  br i1 %tobool196.not.i, label %sw.epilog195.i.cleanup.thread.i_crit_edge, label %sw.epilog195.i.for.inc.i_crit_edge

sw.epilog195.i.for.inc.i_crit_edge:               ; preds = %sw.epilog195.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i

sw.epilog195.i.cleanup.thread.i_crit_edge:        ; preds = %sw.epilog195.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %sw.epilog195.i.cleanup.thread.i_crit_edge, %if.end178.i.cleanup.thread.i_crit_edge, %if.then172.i.cleanup.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %osid.i) #20
  br label %for.inc

for.inc.i:                                        ; preds = %sw.epilog195.i.for.inc.i_crit_edge, %if.then172.i.for.inc.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %osid.i) #20
  %inc.i = add nuw nsw i32 %i.0311.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 6
  br i1 %exitcond.not.i, label %for.inc.i.if.end39_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i

for.inc.i.if.end39_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end39

if.end39:                                         ; preds = %for.inc.i.if.end39_crit_edge, %for.body.i.i.if.end39_crit_edge, %sw.bb7.i.i.if.end39_crit_edge, %sw.bb.i.i.if.end39_crit_edge
  %156 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %flags.i, align 4
  %and41 = and i32 %157, -16777216
  %or42 = or i32 %and41, %action.0186
  %158 = ptrtoint ptr %action33 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %action33, align 4
  %and44 = and i32 %159, 1397061
  %or45 = or i32 %or42, %and44
  %and47 = and i32 %159, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.end39.if.end65_crit_edge, label %if.then49

if.end39.if.end65_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end65

if.then49:                                        ; preds = %if.end39
  %and.i150 = and i32 %157, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i150)
  %tobool.not.i151 = icmp eq i32 %and.i150, 0
  %.not = xor i1 %10, true
  %brmerge = or i1 %tobool.not.i151, %.not
  %.mux = select i1 %tobool.not.i151, i32 4096, i32 262144
  br i1 %brmerge, label %if.then49.get_subaction.exit_crit_edge, label %switch.lookup

if.then49.get_subaction.exit_crit_edge:           ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #22
  br label %get_subaction.exit

switch.lookup:                                    ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #22
  %160 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %160)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %get_subaction.exit

get_subaction.exit:                               ; preds = %switch.lookup, %if.then49.get_subaction.exit_crit_edge
  %retval.0.i = phi i32 [ %.mux, %if.then49.get_subaction.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  %or45.masked = and i32 %or45, -257
  %and52 = or i32 %retval.0.i, %or45.masked
  %.b143144 = load i1, ptr @ima_fail_unverifiable_sigs, align 1
  %or55 = or i32 %and52, 268435456
  %spec.select = select i1 %.b143144, i32 %or55, i32 %and52
  %and60 = and i32 %157, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  %or.cond = select i1 %tobool57.not, i1 true, i1 %tobool61.not
  br i1 %or.cond, label %get_subaction.exit.if.end65_crit_edge, label %if.then62

get_subaction.exit.if.end65_crit_edge:            ; preds = %get_subaction.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end65

if.then62:                                        ; preds = %get_subaction.exit
  call void @__sanitizer_cov_trace_pc() #22
  %allowed_algos63 = getelementptr inbounds %struct.ima_rule_entry, ptr %entry1.0188, i32 0, i32 16
  %161 = ptrtoint ptr %allowed_algos63 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %allowed_algos63, align 4
  %163 = ptrtoint ptr %allowed_algos to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %162, ptr %allowed_algos, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then62, %get_subaction.exit.if.end65_crit_edge, %if.end39.if.end65_crit_edge
  %action.2 = phi i32 [ %spec.select, %if.then62 ], [ %spec.select, %get_subaction.exit.if.end65_crit_edge ], [ %or45, %if.end39.if.end65_crit_edge ]
  %164 = ptrtoint ptr %action33 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %action33, align 4
  %and67 = and i32 %165, 1397061
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  %shl72 = shl i32 %165, 1
  %shr = ashr i32 %165, 1
  %shl72.pn = select i1 %tobool68.not, i32 %shr, i32 %shl72
  %neg.pn.in = or i32 %shl72.pn, %165
  %neg.pn = xor i32 %neg.pn.in, -1
  %actmask.1 = and i32 %actmask.0184, %neg.pn
  br i1 %tobool81.not, label %if.end65.if.end88_crit_edge, label %land.lhs.true82

if.end65.if.end88_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end88

land.lhs.true82:                                  ; preds = %if.end65
  %166 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %flags.i, align 4
  %and84 = and i32 %167, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %land.lhs.true82.if.end88_crit_edge, label %if.then86

land.lhs.true82.if.end88_crit_edge:               ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end88

if.then86:                                        ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #22
  %pcr87 = getelementptr inbounds %struct.ima_rule_entry, ptr %entry1.0188, i32 0, i32 15
  %168 = ptrtoint ptr %pcr87 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %pcr87, align 4
  %170 = ptrtoint ptr %pcr to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %169, ptr %pcr, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.then86, %land.lhs.true82.if.end88_crit_edge, %if.end65.if.end88_crit_edge
  br i1 %tobool.not, label %if.end88.if.end94_crit_edge, label %land.lhs.true90

if.end88.if.end94_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end94

land.lhs.true90:                                  ; preds = %if.end88
  %template = getelementptr inbounds %struct.ima_rule_entry, ptr %entry1.0188, i32 0, i32 21
  %171 = ptrtoint ptr %template to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %template, align 4
  %tobool91.not = icmp eq ptr %172, null
  br i1 %tobool91.not, label %land.lhs.true90.if.end94_crit_edge, label %if.then92

land.lhs.true90.if.end94_crit_edge:               ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end94

if.then92:                                        ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #22
  %173 = ptrtoint ptr %template_desc to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %172, ptr %template_desc, align 4
  br label %if.end94

if.end94:                                         ; preds = %if.then92, %land.lhs.true90.if.end94_crit_edge, %if.end88.if.end94_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %actmask.1)
  %tobool95.not = icmp eq i32 %actmask.1, 0
  br i1 %tobool95.not, label %if.end94.for.end_crit_edge, label %if.end94.for.inc_crit_edge

if.end94.for.inc_crit_edge:                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

if.end94.for.end_crit_edge:                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.inc:                                          ; preds = %if.end94.for.inc_crit_edge, %cleanup.thread.i, %i_gid_into_mnt.exit.for.inc_crit_edge, %i_uid_into_mnt.exit.for.inc_crit_edge, %if.else135.i.for.inc_crit_edge, %land.lhs.true126.i.for.inc_crit_edge, %land.lhs.true100.i.for.inc_crit_edge, %if.else.i.for.inc_crit_edge, %land.lhs.true78.i.for.inc_crit_edge, %land.lhs.true54.i.for.inc_crit_edge, %land.lhs.true46.i.for.inc_crit_edge, %land.lhs.true37.i.for.inc_crit_edge, %land.lhs.true30.i.for.inc_crit_edge, %land.lhs.true19.i.for.inc_crit_edge, %land.lhs.true9.i.for.inc_crit_edge, %for.cond.i.i.for.inc_crit_edge, %for.cond.preheader.i.i.for.inc_crit_edge, %sw.epilog.i.i.for.inc_crit_edge, %if.end.i.i.for.inc_crit_edge, %land.lhs.true.i.i.for.inc_crit_edge, %sw.bb.i.for.inc_crit_edge, %land.lhs.true.i148.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %actmask.2 = phi i32 [ %actmask.1, %if.end94.for.inc_crit_edge ], [ %actmask.0184, %for.body.for.inc_crit_edge ], [ %actmask.0184, %land.lhs.true.i148.for.inc_crit_edge ], [ %actmask.0184, %sw.bb.i.for.inc_crit_edge ], [ %actmask.0184, %land.lhs.true9.i.for.inc_crit_edge ], [ %actmask.0184, %land.lhs.true19.i.for.inc_crit_edge ], [ %actmask.0184, %land.lhs.true30.i.for.inc_crit_edge ], [ %actmask.0184, %land.lhs.true37.i.for.inc_crit_edge ], [ %actmask.0184, %land.lhs.true46.i.for.inc_crit_edge ], [ %actmask.0184, %land.lhs.true54.i.for.inc_crit_edge ], [ %actmask.0184, %land.lhs.true78.i.for.inc_crit_edge ], [ %actmask.0184, %if.else.i.for.inc_crit_edge ], [ %actmask.0184, %land.lhs.true100.i.for.inc_crit_edge ], [ %actmask.0184, %land.lhs.true126.i.for.inc_crit_edge ], [ %actmask.0184, %if.else135.i.for.inc_crit_edge ], [ %actmask.0184, %i_uid_into_mnt.exit.for.inc_crit_edge ], [ %actmask.0184, %i_gid_into_mnt.exit.for.inc_crit_edge ], [ %actmask.0184, %land.lhs.true.i.i.for.inc_crit_edge ], [ %actmask.0184, %if.end.i.i.for.inc_crit_edge ], [ %actmask.0184, %sw.epilog.i.i.for.inc_crit_edge ], [ %actmask.0184, %for.cond.preheader.i.i.for.inc_crit_edge ], [ %actmask.0184, %cleanup.thread.i ], [ %actmask.0184, %for.cond.i.i.for.inc_crit_edge ]
  %action.3 = phi i32 [ %action.2, %if.end94.for.inc_crit_edge ], [ %action.0186, %for.body.for.inc_crit_edge ], [ %action.0186, %land.lhs.true.i148.for.inc_crit_edge ], [ %action.0186, %sw.bb.i.for.inc_crit_edge ], [ %action.0186, %land.lhs.true9.i.for.inc_crit_edge ], [ %action.0186, %land.lhs.true19.i.for.inc_crit_edge ], [ %action.0186, %land.lhs.true30.i.for.inc_crit_edge ], [ %action.0186, %land.lhs.true37.i.for.inc_crit_edge ], [ %action.0186, %land.lhs.true46.i.for.inc_crit_edge ], [ %action.0186, %land.lhs.true54.i.for.inc_crit_edge ], [ %action.0186, %land.lhs.true78.i.for.inc_crit_edge ], [ %action.0186, %if.else.i.for.inc_crit_edge ], [ %action.0186, %land.lhs.true100.i.for.inc_crit_edge ], [ %action.0186, %land.lhs.true126.i.for.inc_crit_edge ], [ %action.0186, %if.else135.i.for.inc_crit_edge ], [ %action.0186, %i_uid_into_mnt.exit.for.inc_crit_edge ], [ %action.0186, %i_gid_into_mnt.exit.for.inc_crit_edge ], [ %action.0186, %land.lhs.true.i.i.for.inc_crit_edge ], [ %action.0186, %if.end.i.i.for.inc_crit_edge ], [ %action.0186, %sw.epilog.i.i.for.inc_crit_edge ], [ %action.0186, %for.cond.preheader.i.i.for.inc_crit_edge ], [ %action.0186, %cleanup.thread.i ], [ %action.0186, %for.cond.i.i.for.inc_crit_edge ]
  %174 = ptrtoint ptr %entry1.0188 to i32
  call void @__asan_load4_noabort(i32 %174)
  %entry1.0 = load volatile ptr, ptr %entry1.0188, align 4
  %cmp.not = icmp eq ptr %entry1.0, %7
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end94.for.end_crit_edge, %do.end27.for.end_crit_edge
  %action.4 = phi i32 [ 0, %do.end27.for.end_crit_edge ], [ %action.2, %if.end94.for.end_crit_edge ], [ %action.3, %for.inc.for.end_crit_edge ]
  %call.i153 = call zeroext i1 @rcu_is_watching() #20
  br i1 %call.i153, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i156

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit

land.lhs.true.i156:                               ; preds = %for.end
  %call1.i154 = call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i154)
  %tobool.not.i155 = icmp eq i32 %call1.i154, 0
  br i1 %tobool.not.i155, label %land.lhs.true.i156.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i158

land.lhs.true.i156.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i156
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit

land.lhs.true2.i158:                              ; preds = %land.lhs.true.i156
  %.b4.i157 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i157, label %land.lhs.true2.i158.rcu_read_unlock.exit_crit_edge, label %if.then.i159

land.lhs.true2.i158.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i158
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit

if.then.i159:                                     ; preds = %land.lhs.true2.i158
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.54, i32 noundef 724, ptr noundef nonnull @.str.56) #20
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i159, %land.lhs.true2.i158.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i156.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !406
  %175 = call i32 @llvm.read_register.i32(metadata !393) #20
  %and.i.i.i.i.i160 = and i32 %175, -16384
  %176 = inttoptr i32 %and.i.i.i.i.i160 to ptr
  %preempt_count.i.i.i.i161 = getelementptr inbounds %struct.thread_info, ptr %176, i32 0, i32 1
  %177 = ptrtoint ptr %preempt_count.i.i.i.i161 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load volatile i32, ptr %preempt_count.i.i.i.i161, align 4
  %sub.i.i.i = add i32 %178, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i161, align 4
  call void @rcu_read_unlock_strict() #20
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #20
  ret i32 %action.4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ima_template_desc_current() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ima_update_policy_flags() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !393) #20
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !404
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #20
  %call.i = tail call zeroext i1 @rcu_is_watching() #20
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.54, i32 noundef 696, ptr noundef nonnull @.str.55) #20
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = load volatile ptr, ptr @ima_rules, align 4
  %call = tail call i32 @rcu_read_lock_held() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b60 = load i1, ptr @ima_update_policy_flags.__warned, align 1
  br i1 %.b60, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @ima_update_policy_flags.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 770, ptr noundef nonnull @.str.1) #20
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %call11 = tail call i32 @rcu_read_lock_any_held() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.lhs.true13, label %do.end8.do.end21_crit_edge

do.end8.do.end21_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end21

land.lhs.true13:                                  ; preds = %do.end8
  %call14 = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true13.do.end21_crit_edge, label %land.lhs.true16

land.lhs.true13.do.end21_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end21

land.lhs.true16:                                  ; preds = %land.lhs.true13
  %.b5859 = load i1, ptr @ima_update_policy_flags.__warned.4, align 1
  br i1 %.b5859, label %land.lhs.true16.do.end21_crit_edge, label %if.then18

land.lhs.true16.do.end21_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end21

if.then18:                                        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @ima_update_policy_flags.__warned.4, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 771, ptr noundef nonnull @.str.3) #20
  br label %do.end21

do.end21:                                         ; preds = %if.then18, %land.lhs.true16.do.end21_crit_edge, %land.lhs.true13.do.end21_crit_edge, %do.end8.do.end21_crit_edge
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %entry1.071 = load volatile ptr, ptr %4, align 4
  %cmp.not72 = icmp eq ptr %entry1.071, %4
  br i1 %cmp.not72, label %do.end21.for.end_crit_edge, label %do.end21.for.body_crit_edge

do.end21.for.body_crit_edge:                      ; preds = %do.end21
  br label %for.body

do.end21.for.end_crit_edge:                       ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end21.for.body_crit_edge
  %entry1.074 = phi ptr [ %entry1.0, %for.inc.for.body_crit_edge ], [ %entry1.071, %do.end21.for.body_crit_edge ]
  %new_policy_flag.073 = phi i32 [ %new_policy_flag.1, %for.inc.for.body_crit_edge ], [ 0, %do.end21.for.body_crit_edge ]
  %func = getelementptr inbounds %struct.ima_rule_entry, ptr %entry1.074, i32 0, i32 3
  %6 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %func, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %7)
  %cmp27 = icmp eq i32 %7, 14
  br i1 %cmp27, label %if.then28, label %if.end30

if.then28:                                        ; preds = %for.body
  %allowed_algos = getelementptr inbounds %struct.ima_rule_entry, ptr %entry1.074, i32 0, i32 16
  %8 = ptrtoint ptr %allowed_algos to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %allowed_algos, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @ima_setxattr_allowed_hash_algorithms, i32 noundef 4) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !407
  tail call void @llvm.prefetch.p0(ptr nonnull @ima_setxattr_allowed_hash_algorithms, i32 1, i32 3, i32 1) #20
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %if.then28
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ima_setxattr_allowed_hash_algorithms, ptr nonnull @ima_setxattr_allowed_hash_algorithms, i32 0, i32 %9, ptr nonnull elementtype(i32) @ima_setxattr_allowed_hash_algorithms) #20, !srcloc !408
  %asmresult.i.i.i = extractvalue { i32, i32 } %10, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %atomic_cmpxchg.exit, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body.i.i.i

atomic_cmpxchg.exit:                              ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !409
  br label %for.inc

if.end30:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  %action = getelementptr inbounds %struct.ima_rule_entry, ptr %entry1.074, i32 0, i32 1
  %11 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %action, align 4
  %and = and i32 %12, 1397061
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool31.not = icmp eq i32 %and, 0
  %or = select i1 %tobool31.not, i32 0, i32 %12
  %spec.select = or i32 %or, %new_policy_flag.073
  br label %for.inc

for.inc:                                          ; preds = %if.end30, %atomic_cmpxchg.exit
  %new_policy_flag.1 = phi i32 [ %new_policy_flag.073, %atomic_cmpxchg.exit ], [ %spec.select, %if.end30 ]
  %13 = ptrtoint ptr %entry1.074 to i32
  call void @__asan_load4_noabort(i32 %13)
  %entry1.0 = load volatile ptr, ptr %entry1.074, align 4
  %cmp.not = icmp eq ptr %entry1.0, %4
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end21.for.end_crit_edge
  %new_policy_flag.0.lcssa = phi i32 [ 0, %do.end21.for.end_crit_edge ], [ %new_policy_flag.1, %for.inc.for.end_crit_edge ]
  %call.i62 = tail call zeroext i1 @rcu_is_watching() #20
  br i1 %call.i62, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i65

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit

land.lhs.true.i65:                                ; preds = %for.end
  %call1.i63 = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i63)
  %tobool.not.i64 = icmp eq i32 %call1.i63, 0
  br i1 %tobool.not.i64, label %land.lhs.true.i65.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i67

land.lhs.true.i65.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i65
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit

land.lhs.true2.i67:                               ; preds = %land.lhs.true.i65
  %.b4.i66 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i66, label %land.lhs.true2.i67.rcu_read_unlock.exit_crit_edge, label %if.then.i68

land.lhs.true2.i67.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i67
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit

if.then.i68:                                      ; preds = %land.lhs.true2.i67
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.54, i32 noundef 724, ptr noundef nonnull @.str.56) #20
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i68, %land.lhs.true2.i67.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i65.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !406
  %14 = tail call i32 @llvm.read_register.i32(metadata !393) #20
  %and.i.i.i.i.i69 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i69 to ptr
  %preempt_count.i.i.i.i70 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i70 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i70, align 4
  %sub.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i70, align 4
  tail call void @rcu_read_unlock_strict() #20
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #20
  %18 = load i32, ptr @build_ima_appraise, align 4
  %19 = load i32, ptr @temp_ima_appraise, align 4
  %or44 = or i32 %19, %18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_appraise to i32))
  %20 = load i32, ptr @ima_appraise, align 4
  %or45 = or i32 %or44, %20
  store i32 %or45, ptr @ima_appraise, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or45)
  %tobool46.not = icmp eq i32 %or45, 0
  %and48 = and i32 %new_policy_flag.0.lcssa, -5
  %spec.select61 = select i1 %tobool46.not, i32 %and48, i32 %new_policy_flag.0.lcssa
  store i32 %spec.select61, ptr @ima_policy_flag, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @ima_init_policy() local_unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ima_policy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.sw.epilog_crit_edge, label %if.end

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

if.end:                                           ; preds = %entry
  tail call fastcc void @add_rules(ptr noundef nonnull @dont_measure_rules, i32 noundef 13, i32 noundef 1)
  %.pr = load i32, ptr @ima_policy, align 4
  %1 = zext i32 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.172)
  switch i32 %.pr, label %if.end.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  tail call fastcc void @add_rules(ptr noundef nonnull @original_measurement_rules, i32 noundef 5, i32 noundef 1)
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  tail call fastcc void @add_rules(ptr noundef nonnull @default_measurement_rules, i32 noundef 7, i32 noundef 1)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %if.end.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #24
  %.b2528 = load i1, ptr @ima_use_secure_boot, align 1
  br i1 %.b2528, label %if.then10, label %sw.epilog.if.else13_crit_edge

sw.epilog.if.else13_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else13

if.then10:                                        ; preds = %sw.epilog
  tail call fastcc void @add_rules(ptr noundef nonnull @secure_boot_rules, i32 noundef 4, i32 noundef 1)
  %.b29.pr = load i1, ptr @ima_use_secure_boot, align 1
  br i1 %.b29.pr, label %if.then10.if.end15_crit_edge, label %if.then10.if.else13_crit_edge

if.then10.if.else13_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else13

if.then10.if.end15_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end15

if.else13:                                        ; preds = %if.then10.if.else13_crit_edge, %sw.epilog.if.else13_crit_edge
  br label %if.end15

if.end15:                                         ; preds = %if.else13, %if.then10.if.end15_crit_edge
  %.sink = phi i32 [ 3, %if.else13 ], [ 2, %if.then10.if.end15_crit_edge ]
  tail call fastcc void @add_rules(ptr noundef nonnull @build_appraise_rules, i32 noundef 4, i32 noundef %.sink)
  %.b2630 = load i1, ptr @ima_use_appraise_tcb, align 1
  br i1 %.b2630, label %if.then17, label %if.end15.if.end18_crit_edge

if.end15.if.end18_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end18

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #22
  tail call fastcc void @add_rules(ptr noundef nonnull @default_appraise_rules, i32 noundef 16, i32 noundef 1)
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end15.if.end18_crit_edge
  %.b2731 = load i1, ptr @ima_use_critical_data, align 1
  br i1 %.b2731, label %if.then20, label %if.end18.if.end21_crit_edge

if.end18.if.end21_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end21

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #22
  tail call fastcc void @add_rules(ptr noundef nonnull @critical_data_rules, i32 noundef 1, i32 noundef 1)
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end18.if.end21_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @ima_setxattr_allowed_hash_algorithms, i32 noundef 4) #20
  store volatile i32 0, ptr @ima_setxattr_allowed_hash_algorithms, align 4
  tail call void @ima_update_policy_flags()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @add_rules(ptr noundef %entries, i32 noundef %count, i32 noundef %policy_rule) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp47 = icmp sgt i32 %count, 0
  br i1 %cmp47, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %and = and i32 %policy_rule, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and2 = and i32 %policy_rule, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %cmp14.not = icmp eq ptr %entries, @build_appraise_rules
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.048 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %for.body
  %arrayidx = getelementptr %struct.ima_rule_entry, ptr %entries, i32 %i.048
  %0 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @ima_default_rules, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx, ptr noundef %0, ptr noundef nonnull @ima_default_rules) #20
  br i1 %call.i.i, label %if.end.i.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  store ptr %arrayidx, ptr getelementptr inbounds (%struct.list_head, ptr @ima_default_rules, i32 0, i32 1), align 4
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @ima_default_rules, ptr %arrayidx, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx, i32 0, i32 1
  %2 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %0, ptr %prev3.i.i, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %arrayidx, ptr %0, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i, %if.then.if.end_crit_edge, %for.body.if.end_crit_edge
  br i1 %tobool3.not, label %if.end.if.end10_crit_edge, label %if.then4

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end10

if.then4:                                         ; preds = %if.end
  %arrayidx5 = getelementptr %struct.ima_rule_entry, ptr %entries, i32 %i.048
  %call = tail call ptr @kmemdup(ptr noundef %arrayidx5, i32 noundef 172, i32 noundef 3264) #20
  %tobool6.not = icmp eq ptr %call, null
  br i1 %tobool6.not, label %if.then4.cleanup_crit_edge, label %if.end8

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end8:                                          ; preds = %if.then4
  %4 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @ima_policy_rules, i32 0, i32 1), align 4
  %call.i.i37 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call, ptr noundef %4, ptr noundef nonnull @ima_policy_rules) #20
  br i1 %call.i.i37, label %if.end.i.i39, label %if.end8.if.end10_crit_edge

if.end8.if.end10_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end10

if.end.i.i39:                                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #22
  store ptr %call, ptr getelementptr inbounds (%struct.list_head, ptr @ima_policy_rules, i32 0, i32 1), align 4
  %5 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @ima_policy_rules, ptr %call, align 4
  %prev3.i.i38 = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %prev3.i.i38 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %4, ptr %prev3.i.i38, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %call, ptr %4, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.end.i.i39, %if.end8.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %action = getelementptr %struct.ima_rule_entry, ptr %entries, i32 %i.048, i32 1
  %8 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %action, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp12 = icmp eq i32 %9, 4
  br i1 %cmp12, label %if.then13, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then13:                                        ; preds = %if.end10
  br i1 %cmp14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.then13
  %func = getelementptr %struct.ima_rule_entry, ptr %entries, i32 %i.048, i32 3
  %10 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %func, align 4
  %switch.tableidx = add i32 %11, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %12 = icmp ult i32 %switch.tableidx, 5
  br i1 %12, label %switch.lookup, label %if.then15.cleanup.sink.split_crit_edge

if.then15.cleanup.sink.split_crit_edge:           ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.then13
  %func19 = getelementptr %struct.ima_rule_entry, ptr @build_appraise_rules, i32 %i.048, i32 3
  %13 = ptrtoint ptr %func19 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %func19, align 4
  %switch.tableidx52 = add i32 %14, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx52)
  %15 = icmp ult i32 %switch.tableidx52, 5
  br i1 %15, label %switch.lookup51, label %if.else.cleanup.sink.split_crit_edge

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split

switch.lookup:                                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #22
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.add_rules, i32 0, i32 %switch.tableidx
  br label %cleanup.sink.split.sink.split

switch.lookup51:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  %switch.gep53 = getelementptr inbounds [5 x i32], ptr @switch.table.add_rules.166, i32 0, i32 %switch.tableidx52
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %switch.lookup51, %switch.lookup
  %switch.gep53.sink = phi ptr [ %switch.gep53, %switch.lookup51 ], [ %switch.gep, %switch.lookup ]
  %build_ima_appraise.sink50.ph = phi ptr [ @build_ima_appraise, %switch.lookup51 ], [ @temp_ima_appraise, %switch.lookup ]
  %16 = ptrtoint ptr %switch.gep53.sink to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load54 = load i32, ptr %switch.gep53.sink, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.else.cleanup.sink.split_crit_edge, %if.then15.cleanup.sink.split_crit_edge
  %build_ima_appraise.sink50 = phi ptr [ @temp_ima_appraise, %if.then15.cleanup.sink.split_crit_edge ], [ @build_ima_appraise, %if.else.cleanup.sink.split_crit_edge ], [ %build_ima_appraise.sink50.ph, %cleanup.sink.split.sink.split ]
  %retval.0.i45.sink = phi i32 [ 0, %if.then15.cleanup.sink.split_crit_edge ], [ 0, %if.else.cleanup.sink.split_crit_edge ], [ %switch.load54, %cleanup.sink.split.sink.split ]
  %17 = ptrtoint ptr %build_ima_appraise.sink50 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %build_ima_appraise.sink50, align 4
  %or21 = or i32 %18, %retval.0.i45.sink
  store i32 %or21, ptr %build_ima_appraise.sink50, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end10.cleanup_crit_edge, %if.then4.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.048, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ima_check_policy() local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr @ima_temp_rules, align 4
  %cmp.i.not = icmp eq ptr %0, @ima_temp_rules
  %. = select i1 %cmp.i.not, i32 -22, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ima_update_policy() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr @ima_temp_rules, align 4
  %cmp.i.not.i = icmp eq ptr %0, @ima_temp_rules
  br i1 %cmp.i.not.i, label %entry.list_splice_tail_init_rcu.exit_crit_edge, label %if.then.i

entry.list_splice_tail_init_rcu.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %list_splice_tail_init_rcu.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %1 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @ima_policy_rules, i32 0, i32 1), align 4
  %2 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @ima_temp_rules, i32 0, i32 1), align 4
  store volatile ptr @ima_temp_rules, ptr @ima_temp_rules, align 4
  store volatile ptr @ima_temp_rules, ptr getelementptr inbounds (%struct.list_head, ptr @ima_temp_rules, i32 0, i32 1), align 4
  tail call void @synchronize_rcu() #20
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @ima_policy_rules, ptr %2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !410
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %0, ptr %1, align 4
  %prev36.i.i = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %5 = ptrtoint ptr %prev36.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %1, ptr %prev36.i.i, align 4
  store ptr %2, ptr getelementptr inbounds (%struct.list_head, ptr @ima_policy_rules, i32 0, i32 1), align 4
  br label %list_splice_tail_init_rcu.exit

list_splice_tail_init_rcu.exit:                   ; preds = %if.then.i, %entry.list_splice_tail_init_rcu.exit_crit_edge
  %6 = load ptr, ptr @ima_rules, align 4
  %cmp.not = icmp eq ptr %6, @ima_policy_rules
  br i1 %cmp.not, label %list_splice_tail_init_rcu.exit.if.end33_crit_edge, label %if.then

list_splice_tail_init_rcu.exit.if.end33_crit_edge: ; preds = %list_splice_tail_init_rcu.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end33

if.then:                                          ; preds = %list_splice_tail_init_rcu.exit
  call void @__sanitizer_cov_trace_pc() #22
  store i32 0, ptr @ima_policy_flag, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !411
  store volatile ptr @ima_policy_rules, ptr @ima_rules, align 4
  tail call void @kfree(ptr noundef null) #20
  br label %if.end33

if.end33:                                         ; preds = %if.then, %list_splice_tail_init_rcu.exit.if.end33_crit_edge
  tail call void @ima_update_policy_flags()
  tail call void @ima_process_queued_keys() #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ima_process_queued_keys() local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ima_parse_add_rule(ptr noundef %rule) local_unnamed_addr #3 align 64 {
entry:
  %arg.addr.i.i = alloca ptr, align 4
  %rule.addr.i = alloca ptr, align 4
  %args.i = alloca [3 x %struct.substring_t], align 4
  %lnum.i = alloca i32, align 4
  %rule.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rule.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %rule, ptr %rule.addr, align 4
  %call = call ptr @strsep(ptr noundef nonnull %rule.addr, ptr noundef nonnull @.str.7) #20
  %call2 = call i32 @strlen(ptr noundef %call) #23
  %add = add i32 %call2, 1
  %call3 = call i32 @strspn(ptr noundef %call, ptr noundef nonnull @.str.8)
  %add.ptr = getelementptr i8, ptr %call, i32 %call3
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %add.ptr, align 1
  %3 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.173)
  switch i8 %2, label %if.end [
    i8 35, label %entry.cleanup_crit_edge
    i8 0, label %entry.cleanup_crit_edge75
  ]

entry.cleanup_crit_edge75:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 172) #26
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  call void @integrity_audit_msg(i32 noundef 1802, ptr noundef null, ptr noundef null, ptr noundef nonnull @ima_parse_add_rule.op, ptr noundef nonnull @.str.9, i32 noundef -12, i32 noundef 0) #20
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %prev.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rule.addr.i)
  %7 = ptrtoint ptr %rule.addr.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr, ptr %rule.addr.i, align 4
  %call.i.i = call ptr @audit_log_start(ptr noundef null, i32 noundef 3264, i32 noundef 1807) #20
  %uid.i = getelementptr inbounds %struct.ima_rule_entry, ptr %call7.i.i, i32 0, i32 7
  %gid.i = getelementptr inbounds %struct.ima_rule_entry, ptr %call7.i.i, i32 0, i32 8
  %fowner.i = getelementptr inbounds %struct.ima_rule_entry, ptr %call7.i.i, i32 0, i32 9
  %fgroup.i = getelementptr inbounds %struct.ima_rule_entry, ptr %call7.i.i, i32 0, i32 10
  %uid_op.i = getelementptr inbounds %struct.ima_rule_entry, ptr %call7.i.i, i32 0, i32 11
  %8 = call ptr @memset(ptr %uid.i, i32 255, i32 16)
  %9 = ptrtoint ptr %uid_op.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @uid_eq, ptr %uid_op.i, align 4
  %gid_op.i = getelementptr inbounds %struct.ima_rule_entry, ptr %call7.i.i, i32 0, i32 12
  %10 = ptrtoint ptr %gid_op.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @gid_eq, ptr %gid_op.i, align 8
  %fowner_op.i = getelementptr inbounds %struct.ima_rule_entry, ptr %call7.i.i, i32 0, i32 13
  %11 = ptrtoint ptr %fowner_op.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @uid_eq, ptr %fowner_op.i, align 4
  %fgroup_op.i = getelementptr inbounds %struct.ima_rule_entry, ptr %call7.i.i, i32 0, i32 14
  %12 = ptrtoint ptr %fgroup_op.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @gid_eq, ptr %fgroup_op.i, align 8
  %action.i = getelementptr inbounds %struct.ima_rule_entry, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %action.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %action.i, align 8
  %call91156.i = call ptr @strsep(ptr noundef nonnull %rule.addr.i, ptr noundef nonnull @.str.8) #20
  %cmp.not1157.i = icmp eq ptr %call91156.i, null
  br i1 %cmp.not1157.i, label %if.end10.land.lhs.true.i_crit_edge, label %while.body.lr.ph.i

if.end10.land.lhs.true.i_crit_edge:               ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #22
  br label %land.lhs.true.i

while.body.lr.ph.i:                               ; preds = %if.end10
  %tobool.not.i.i1108.i = icmp eq ptr %call.i.i, null
  %pcr.i = getelementptr inbounds %struct.ima_rule_entry, ptr %call7.i.i, i32 0, i32 15
  %flags650.i = getelementptr inbounds %struct.ima_rule_entry, ptr %call7.i.i, i32 0, i32 2
  %allowed_algos.i = getelementptr inbounds %struct.ima_rule_entry, ptr %call7.i.i, i32 0, i32 16
  %arrayidx.i1077.i = getelementptr %struct.ima_rule_entry, ptr %call7.i.i, i32 0, i32 17, i32 5
  %args_p.i1080.i = getelementptr %struct.ima_rule_entry, ptr %call7.i.i, i32 0, i32 17, i32 5, i32 1
  %type.i1083.i = getelementptr %struct.ima_rule_entry, ptr %call7.i.i, i32 0, i32 17, i32 5, i32 2
  %arrayidx.i1058.i = getelementptr %struct.ima_rule_entry, ptr %call7.i.i, i32 0, i32 17, i32 4
  %args_p.i1061.i = getelementptr %struct.ima_rule_entry, ptr %call7.i.i, i32 0, i32 17, i32 4, i32 1
  %type.i1064.i = getelementptr %struct.ima_rule_entry, ptr %call7.i.i, i32 0, i32 17, i32 4, i32 2
  %arrayidx.i1039.i = getelementptr %struct.ima_rule_entry, ptr %call7.i.i, i32 0, i32 17, i32 3
  %args_p.i1042.i = getelementptr %struct.ima_rule_entry, ptr %call7.i.i, i32 0, i32 17, i32 3, i32 1
  %type.i1045.i = getelementptr %struct.ima_rule_entry, ptr %call7.i.i, i32 0, i32 17, i32 3, i32 2
  %arrayidx.i1020.i = getelementptr %struct.ima_rule_entry, ptr %call7.i.i, i32 0, i32 17, i32 2
  %args_p.i1023.i = getelementptr %struct.ima_rule_entry, ptr %call7.i.i, i32 0, i32 17, i32 2, i32 1
  %type.i1026.i = getelementptr %struct.ima_rule_entry, ptr %call7.i.i, i32 0, i32 17, i32 2, i32 2
  %arrayidx.i1001.i = getelementptr %struct.ima_rule_entry, ptr %call7.i.i, i32 0, i32 17, i32 1
  %args_p.i1004.i = getelementptr %struct.ima_rule_entry, ptr %call7.i.i, i32 0, i32 17, i32 1, i32 1
  %type.i1007.i = getelementptr %struct.ima_rule_entry, ptr %call7.i.i, i32 0, i32 17, i32 1, i32 2
  %arrayidx.i.i = getelementptr %struct.ima_rule_entry, ptr %call7.i.i, i32 0, i32 17, i32 0
  %args_p.i.i = getelementptr %struct.ima_rule_entry, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 1
  %type.i.i = getelementptr %struct.ima_rule_entry, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 2
  %template.i = getelementptr inbounds %struct.ima_rule_entry, ptr %call7.i.i, i32 0, i32 21
  %fsuuid.i = getelementptr inbounds %struct.ima_rule_entry, ptr %call7.i.i, i32 0, i32 6
  %label.i = getelementptr inbounds %struct.ima_rule_entry, ptr %call7.i.i, i32 0, i32 20
  %keyrings.i = getelementptr inbounds %struct.ima_rule_entry, ptr %call7.i.i, i32 0, i32 19
  %fsname.i = getelementptr inbounds %struct.ima_rule_entry, ptr %call7.i.i, i32 0, i32 18
  %fsmagic.i = getelementptr inbounds %struct.ima_rule_entry, ptr %call7.i.i, i32 0, i32 5
  %mask.i = getelementptr inbounds %struct.ima_rule_entry, ptr %call7.i.i, i32 0, i32 4
  %func.i = getelementptr inbounds %struct.ima_rule_entry, ptr %call7.i.i, i32 0, i32 3
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %call91159.i = phi ptr [ %call91156.i, %while.body.lr.ph.i ], [ %call9.i, %cleanup.i.while.body.i_crit_edge ]
  %result.01158.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %result.13.i, %cleanup.i.while.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args.i) #20
  %14 = call ptr @memset(ptr %args.i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lnum.i) #20
  %15 = ptrtoint ptr %lnum.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %lnum.i, align 4, !annotation !405
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.01158.i)
  %cmp10.i = icmp slt i32 %result.01158.i, 0
  br i1 %cmp10.i, label %while.end.thread.i, label %if.end.i

while.end.thread.i:                               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lnum.i) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args.i) #20
  br label %if.else677.i

if.end.i:                                         ; preds = %while.body.i
  %16 = ptrtoint ptr %call91159.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %call91159.i, align 1
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.174)
  switch i8 %17, label %if.end21.i [
    i8 0, label %if.end.i.cleanup.i_crit_edge
    i8 32, label %if.end.i.cleanup.i_crit_edge76
    i8 9, label %if.end.i.cleanup.i_crit_edge77
  ]

if.end.i.cleanup.i_crit_edge77:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i

if.end.i.cleanup.i_crit_edge76:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i

if.end.i.cleanup.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i

if.end21.i:                                       ; preds = %if.end.i
  %call22.i = call i32 @match_token(ptr noundef nonnull %call91159.i, ptr noundef nonnull @policy_tokens, ptr noundef nonnull %args.i) #20
  %19 = zext i32 %call22.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.175)
  switch i32 %call22.i, label %if.end21.i.cleanup.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb29.i
    i32 2, label %sw.bb36.i
    i32 3, label %sw.bb43.i
    i32 4, label %sw.bb50.i
    i32 5, label %sw.bb57.i
    i32 6, label %sw.bb64.i
    i32 13, label %sw.bb71.i
    i32 14, label %sw.bb209.i
    i32 15, label %sw.bb260.i
    i32 16, label %sw.bb275.i
    i32 42, label %sw.bb287.i
    i32 43, label %sw.bb305.i
    i32 17, label %sw.bb323.i
    i32 24, label %if.end21.i.sw.bb338.i_crit_edge
    i32 25, label %if.end21.i.sw.bb338.i_crit_edge78
    i32 44, label %sw.bb671.i
    i32 41, label %sw.bb653.i
    i32 31, label %if.end21.i.if.then346.i_crit_edge
    i32 30, label %if.end21.i.if.then346.i_crit_edge79
    i32 26, label %if.end21.i.sw.bb392.i_crit_edge
    i32 27, label %if.end21.i.sw.bb392.i_crit_edge80
    i32 18, label %if.end21.i.lor.end.thread1132.i_crit_edge
    i32 19, label %if.end21.i.lor.end.thread.i_crit_edge
    i32 33, label %if.end21.i.if.then400.i_crit_edge
    i32 32, label %if.end21.i.if.then400.i_crit_edge81
    i32 28, label %if.end21.i.sw.bb465.sink.split.i_crit_edge
    i32 20, label %if.end21.i.lor.end412.thread1135.i_crit_edge
    i32 22, label %if.end21.i.sw.bb465.i_crit_edge
    i32 29, label %if.end21.i.sw.bb511.sink.split.i_crit_edge
    i32 34, label %if.then462.i
    i32 23, label %if.end21.i.sw.bb511.i_crit_edge
    i32 7, label %sw.bb549.i
    i32 8, label %sw.bb554.i
    i32 9, label %sw.bb559.i
    i32 10, label %sw.bb564.i
    i32 11, label %sw.bb569.i
    i32 12, label %sw.bb574.i
    i32 36, label %sw.bb579.i
    i32 37, label %sw.bb602.i
    i32 38, label %sw.bb614.i
    i32 39, label %sw.bb630.i
    i32 40, label %sw.bb633.i
    i32 21, label %if.end21.i.lor.end412.thread.i_crit_edge
    i32 35, label %if.then508.i
  ]

if.end21.i.lor.end412.thread.i_crit_edge:         ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %lor.end412.thread.i

if.end21.i.sw.bb511.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb511.i

if.end21.i.sw.bb511.sink.split.i_crit_edge:       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb511.sink.split.i

if.end21.i.sw.bb465.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb465.i

if.end21.i.lor.end412.thread1135.i_crit_edge:     ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %lor.end412.thread1135.i

if.end21.i.sw.bb465.sink.split.i_crit_edge:       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb465.sink.split.i

if.end21.i.if.then400.i_crit_edge81:              ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then400.i

if.end21.i.if.then400.i_crit_edge:                ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then400.i

if.end21.i.lor.end.thread.i_crit_edge:            ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %lor.end.thread.i

if.end21.i.lor.end.thread1132.i_crit_edge:        ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %lor.end.thread1132.i

if.end21.i.sw.bb392.i_crit_edge80:                ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb392.i

if.end21.i.sw.bb392.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb392.i

if.end21.i.if.then346.i_crit_edge79:              ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then346.i

if.end21.i.if.then346.i_crit_edge:                ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then346.i

if.end21.i.sw.bb338.i_crit_edge78:                ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb338.i

if.end21.i.sw.bb338.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb338.i

if.end21.i.cleanup.i_crit_edge:                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i

sw.bb.i:                                          ; preds = %if.end21.i
  br i1 %tobool.not.i.i1108.i, label %sw.bb.i.ima_log_string.exit.i_crit_edge, label %if.end.i.i.i

sw.bb.i.ima_log_string.exit.i_crit_edge:          ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ima_log_string.exit.i

if.end.i.i.i:                                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #22
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.59) #20
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.60) #20
  br label %ima_log_string.exit.i

ima_log_string.exit.i:                            ; preds = %if.end.i.i.i, %sw.bb.i.ima_log_string.exit.i_crit_edge
  %20 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %action.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp24.not.i = icmp eq i32 %21, 0
  %spec.select.i = select i1 %cmp24.not.i, i32 %result.01158.i, i32 -22
  %22 = ptrtoint ptr %action.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %action.i, align 8
  br label %cleanup.i

sw.bb29.i:                                        ; preds = %if.end21.i
  br i1 %tobool.not.i.i1108.i, label %sw.bb29.i.ima_log_string.exit916.i_crit_edge, label %if.end.i.i915.i

sw.bb29.i.ima_log_string.exit916.i_crit_edge:     ; preds = %sw.bb29.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ima_log_string.exit916.i

if.end.i.i915.i:                                  ; preds = %sw.bb29.i
  call void @__sanitizer_cov_trace_pc() #22
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.59) #20
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.61) #20
  br label %ima_log_string.exit916.i

ima_log_string.exit916.i:                         ; preds = %if.end.i.i915.i, %sw.bb29.i.ima_log_string.exit916.i_crit_edge
  %23 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %action.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp31.not.i = icmp eq i32 %24, 0
  %spec.select906.i = select i1 %cmp31.not.i, i32 %result.01158.i, i32 -22
  %25 = ptrtoint ptr %action.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %action.i, align 8
  br label %cleanup.i

sw.bb36.i:                                        ; preds = %if.end21.i
  br i1 %tobool.not.i.i1108.i, label %sw.bb36.i.ima_log_string.exit919.i_crit_edge, label %if.end.i.i918.i

sw.bb36.i.ima_log_string.exit919.i_crit_edge:     ; preds = %sw.bb36.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ima_log_string.exit919.i

if.end.i.i918.i:                                  ; preds = %sw.bb36.i
  call void @__sanitizer_cov_trace_pc() #22
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.59) #20
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.62) #20
  br label %ima_log_string.exit919.i

ima_log_string.exit919.i:                         ; preds = %if.end.i.i918.i, %sw.bb36.i.ima_log_string.exit919.i_crit_edge
  %26 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %action.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp38.not.i = icmp eq i32 %27, 0
  %spec.select907.i = select i1 %cmp38.not.i, i32 %result.01158.i, i32 -22
  %28 = ptrtoint ptr %action.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 4, ptr %action.i, align 8
  br label %cleanup.i

sw.bb43.i:                                        ; preds = %if.end21.i
  br i1 %tobool.not.i.i1108.i, label %sw.bb43.i.ima_log_string.exit922.i_crit_edge, label %if.end.i.i921.i

sw.bb43.i.ima_log_string.exit922.i_crit_edge:     ; preds = %sw.bb43.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ima_log_string.exit922.i

if.end.i.i921.i:                                  ; preds = %sw.bb43.i
  call void @__sanitizer_cov_trace_pc() #22
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.59) #20
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.63) #20
  br label %ima_log_string.exit922.i

ima_log_string.exit922.i:                         ; preds = %if.end.i.i921.i, %sw.bb43.i.ima_log_string.exit922.i_crit_edge
  %29 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %action.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp45.not.i = icmp eq i32 %30, 0
  %spec.select908.i = select i1 %cmp45.not.i, i32 %result.01158.i, i32 -22
  %31 = ptrtoint ptr %action.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 8, ptr %action.i, align 8
  br label %cleanup.i

sw.bb50.i:                                        ; preds = %if.end21.i
  br i1 %tobool.not.i.i1108.i, label %sw.bb50.i.ima_log_string.exit925.i_crit_edge, label %if.end.i.i924.i

sw.bb50.i.ima_log_string.exit925.i_crit_edge:     ; preds = %sw.bb50.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ima_log_string.exit925.i

if.end.i.i924.i:                                  ; preds = %sw.bb50.i
  call void @__sanitizer_cov_trace_pc() #22
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.59) #20
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.64) #20
  br label %ima_log_string.exit925.i

ima_log_string.exit925.i:                         ; preds = %if.end.i.i924.i, %sw.bb50.i.ima_log_string.exit925.i_crit_edge
  %32 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %action.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp52.not.i = icmp eq i32 %33, 0
  %spec.select909.i = select i1 %cmp52.not.i, i32 %result.01158.i, i32 -22
  %34 = ptrtoint ptr %action.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 64, ptr %action.i, align 8
  br label %cleanup.i

sw.bb57.i:                                        ; preds = %if.end21.i
  br i1 %tobool.not.i.i1108.i, label %sw.bb57.i.ima_log_string.exit928.i_crit_edge, label %if.end.i.i927.i

sw.bb57.i.ima_log_string.exit928.i_crit_edge:     ; preds = %sw.bb57.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ima_log_string.exit928.i

if.end.i.i927.i:                                  ; preds = %sw.bb57.i
  call void @__sanitizer_cov_trace_pc() #22
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.59) #20
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.65) #20
  br label %ima_log_string.exit928.i

ima_log_string.exit928.i:                         ; preds = %if.end.i.i927.i, %sw.bb57.i.ima_log_string.exit928.i_crit_edge
  %35 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %action.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp59.not.i = icmp eq i32 %36, 0
  %spec.select910.i = select i1 %cmp59.not.i, i32 %result.01158.i, i32 -22
  %37 = ptrtoint ptr %action.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 256, ptr %action.i, align 8
  br label %cleanup.i

sw.bb64.i:                                        ; preds = %if.end21.i
  br i1 %tobool.not.i.i1108.i, label %sw.bb64.i.ima_log_string.exit931.i_crit_edge, label %if.end.i.i930.i

sw.bb64.i.ima_log_string.exit931.i_crit_edge:     ; preds = %sw.bb64.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ima_log_string.exit931.i

if.end.i.i930.i:                                  ; preds = %sw.bb64.i
  call void @__sanitizer_cov_trace_pc() #22
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.59) #20
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.66) #20
  br label %ima_log_string.exit931.i

ima_log_string.exit931.i:                         ; preds = %if.end.i.i930.i, %sw.bb64.i.ima_log_string.exit931.i_crit_edge
  %38 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %action.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp66.not.i = icmp eq i32 %39, 0
  %spec.select911.i = select i1 %cmp66.not.i, i32 %result.01158.i, i32 -22
  %40 = ptrtoint ptr %action.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 512, ptr %action.i, align 8
  br label %cleanup.i

sw.bb71.i:                                        ; preds = %if.end21.i
  br i1 %tobool.not.i.i1108.i, label %sw.bb71.i.ima_log_string.exit934.i_crit_edge, label %if.end.i.i933.i

sw.bb71.i.ima_log_string.exit934.i_crit_edge:     ; preds = %sw.bb71.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ima_log_string.exit934.i

if.end.i.i933.i:                                  ; preds = %sw.bb71.i
  call void @__sanitizer_cov_trace_pc() #22
  %41 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %args.i, align 4
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.67) #20
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.109, ptr noundef %42) #20
  br label %ima_log_string.exit934.i

ima_log_string.exit934.i:                         ; preds = %if.end.i.i933.i, %sw.bb71.i.ima_log_string.exit934.i_crit_edge
  %43 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %func.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i = icmp eq i32 %44, 0
  %spec.select912.i = select i1 %tobool.not.i, i32 %result.01158.i, i32 -22
  %45 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %args.i, align 4
  %call77.i = call i32 @strcmp(ptr noundef %46, ptr noundef nonnull dereferenceable(11) @.str.12) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77.i)
  %cmp78.i = icmp eq i32 %call77.i, 0
  br i1 %cmp78.i, label %ima_log_string.exit934.i.if.end205.i_crit_edge, label %if.else.i

ima_log_string.exit934.i.if.end205.i_crit_edge:   ; preds = %ima_log_string.exit934.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end205.i

if.else.i:                                        ; preds = %ima_log_string.exit934.i
  %call84.i = call i32 @strcmp(ptr noundef %46, ptr noundef nonnull dereferenceable(11) @.str.68) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84.i)
  %cmp85.i = icmp eq i32 %call84.i, 0
  br i1 %cmp85.i, label %if.else.i.if.end205.i_crit_edge, label %if.else89.i

if.else.i.if.end205.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end205.i

if.else89.i:                                      ; preds = %if.else.i
  %call92.i = call i32 @strcmp(ptr noundef %46, ptr noundef nonnull dereferenceable(13) @.str.17) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92.i)
  %cmp93.i = icmp eq i32 %call92.i, 0
  br i1 %cmp93.i, label %if.else89.i.if.end205.i_crit_edge, label %if.else97.i

if.else89.i.if.end205.i_crit_edge:                ; preds = %if.else89.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end205.i

if.else97.i:                                      ; preds = %if.else89.i
  %call100.i = call i32 @strcmp(ptr noundef %46, ptr noundef nonnull dereferenceable(15) @.str.18) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100.i)
  %cmp101.i = icmp eq i32 %call100.i, 0
  br i1 %cmp101.i, label %if.else97.i.if.end205.i_crit_edge, label %if.else105.i

if.else97.i.if.end205.i_crit_edge:                ; preds = %if.else97.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end205.i

if.else105.i:                                     ; preds = %if.else97.i
  %call108.i = call i32 @strcmp(ptr noundef %46, ptr noundef nonnull dereferenceable(10) @.str.69) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108.i)
  %cmp109.i = icmp eq i32 %call108.i, 0
  br i1 %cmp109.i, label %if.else105.i.if.end205.i_crit_edge, label %lor.lhs.false111.i

if.else105.i.if.end205.i_crit_edge:               ; preds = %if.else105.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end205.i

lor.lhs.false111.i:                               ; preds = %if.else105.i
  %call114.i = call i32 @strcmp(ptr noundef %46, ptr noundef nonnull dereferenceable(11) @.str.13) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114.i)
  %cmp115.i = icmp eq i32 %call114.i, 0
  br i1 %cmp115.i, label %lor.lhs.false111.i.if.end205.i_crit_edge, label %if.else119.i

lor.lhs.false111.i.if.end205.i_crit_edge:         ; preds = %lor.lhs.false111.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end205.i

if.else119.i:                                     ; preds = %lor.lhs.false111.i
  %call122.i = call i32 @strcmp(ptr noundef %46, ptr noundef nonnull dereferenceable(11) @.str.14) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122.i)
  %cmp123.i = icmp eq i32 %call122.i, 0
  br i1 %cmp123.i, label %if.else119.i.if.end205.i_crit_edge, label %if.else127.i

if.else119.i.if.end205.i_crit_edge:               ; preds = %if.else119.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end205.i

if.else127.i:                                     ; preds = %if.else119.i
  %call130.i = call i32 @strcmp(ptr noundef %46, ptr noundef nonnull dereferenceable(12) @.str.15) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130.i)
  %cmp131.i = icmp eq i32 %call130.i, 0
  br i1 %cmp131.i, label %if.else127.i.if.end205.i_crit_edge, label %if.else135.i

if.else127.i.if.end205.i_crit_edge:               ; preds = %if.else127.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end205.i

if.else135.i:                                     ; preds = %if.else127.i
  %call138.i = call i32 @strcmp(ptr noundef %46, ptr noundef nonnull dereferenceable(19) @.str.19) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138.i)
  %cmp139.i = icmp eq i32 %call138.i, 0
  br i1 %cmp139.i, label %if.else135.i.if.end205.i_crit_edge, label %if.else143.i

if.else135.i.if.end205.i_crit_edge:               ; preds = %if.else135.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end205.i

if.else143.i:                                     ; preds = %if.else135.i
  %call146.i = call i32 @strcmp(ptr noundef %46, ptr noundef nonnull dereferenceable(22) @.str.20) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146.i)
  %cmp147.i = icmp eq i32 %call146.i, 0
  br i1 %cmp147.i, label %if.else143.i.if.end205.i_crit_edge, label %if.else151.i

if.else143.i.if.end205.i_crit_edge:               ; preds = %if.else143.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end205.i

if.else151.i:                                     ; preds = %if.else143.i
  %call154.i = call i32 @strcmp(ptr noundef %46, ptr noundef nonnull dereferenceable(13) @.str.21) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call154.i)
  %cmp155.i = icmp eq i32 %call154.i, 0
  br i1 %cmp155.i, label %if.else151.i.if.end205.i_crit_edge, label %if.else159.i

if.else151.i.if.end205.i_crit_edge:               ; preds = %if.else151.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end205.i

if.else159.i:                                     ; preds = %if.else151.i
  %call162.i = call i32 @strcmp(ptr noundef %46, ptr noundef nonnull dereferenceable(14) @.str.22) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call162.i)
  %cmp163.i = icmp eq i32 %call162.i, 0
  br i1 %cmp163.i, label %if.else159.i.if.end205.i_crit_edge, label %if.else167.i

if.else159.i.if.end205.i_crit_edge:               ; preds = %if.else159.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end205.i

if.else167.i:                                     ; preds = %if.else159.i
  %call170.i = call i32 @strcmp(ptr noundef %46, ptr noundef nonnull dereferenceable(10) @.str.23) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call170.i)
  %cmp171.i = icmp eq i32 %call170.i, 0
  br i1 %cmp171.i, label %if.else167.i.if.end205.i_crit_edge, label %if.else175.i

if.else167.i.if.end205.i_crit_edge:               ; preds = %if.else167.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end205.i

if.else175.i:                                     ; preds = %if.else167.i
  %call178.i = call i32 @strcmp(ptr noundef %46, ptr noundef nonnull dereferenceable(14) @.str.24) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call178.i)
  %cmp179.i = icmp eq i32 %call178.i, 0
  br i1 %cmp179.i, label %if.else175.i.if.end205.i_crit_edge, label %if.else183.i

if.else175.i.if.end205.i_crit_edge:               ; preds = %if.else175.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end205.i

if.else183.i:                                     ; preds = %if.else175.i
  %call186.i = call i32 @strcmp(ptr noundef %46, ptr noundef nonnull dereferenceable(15) @.str.25) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call186.i)
  %cmp187.i = icmp eq i32 %call186.i, 0
  br i1 %cmp187.i, label %if.else183.i.if.end205.i_crit_edge, label %if.else183.i.cleanup.i_crit_edge

if.else183.i.cleanup.i_crit_edge:                 ; preds = %if.else183.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i

if.else183.i.if.end205.i_crit_edge:               ; preds = %if.else183.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end205.i

if.end205.i:                                      ; preds = %if.else183.i.if.end205.i_crit_edge, %if.else175.i.if.end205.i_crit_edge, %if.else167.i.if.end205.i_crit_edge, %if.else159.i.if.end205.i_crit_edge, %if.else151.i.if.end205.i_crit_edge, %if.else143.i.if.end205.i_crit_edge, %if.else135.i.if.end205.i_crit_edge, %if.else127.i.if.end205.i_crit_edge, %if.else119.i.if.end205.i_crit_edge, %lor.lhs.false111.i.if.end205.i_crit_edge, %if.else105.i.if.end205.i_crit_edge, %if.else97.i.if.end205.i_crit_edge, %if.else89.i.if.end205.i_crit_edge, %if.else.i.if.end205.i_crit_edge, %ima_log_string.exit934.i.if.end205.i_crit_edge
  %.sink.i = phi i32 [ 1, %ima_log_string.exit934.i.if.end205.i_crit_edge ], [ 1, %if.else.i.if.end205.i_crit_edge ], [ 6, %if.else89.i.if.end205.i_crit_edge ], [ 7, %if.else97.i.if.end205.i_crit_edge ], [ 2, %lor.lhs.false111.i.if.end205.i_crit_edge ], [ 2, %if.else105.i.if.end205.i_crit_edge ], [ 3, %if.else119.i.if.end205.i_crit_edge ], [ 4, %if.else127.i.if.end205.i_crit_edge ], [ 8, %if.else135.i.if.end205.i_crit_edge ], [ 9, %if.else143.i.if.end205.i_crit_edge ], [ 10, %if.else151.i.if.end205.i_crit_edge ], [ 11, %if.else159.i.if.end205.i_crit_edge ], [ 12, %if.else167.i.if.end205.i_crit_edge ], [ 13, %if.else175.i.if.end205.i_crit_edge ], [ 14, %if.else183.i.if.end205.i_crit_edge ]
  %47 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %.sink.i, ptr %func.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select912.i)
  %tobool206.not.i = icmp eq i32 %spec.select912.i, 0
  br i1 %tobool206.not.i, label %if.then207.i, label %if.end205.i.cleanup.i_crit_edge

if.end205.i.cleanup.i_crit_edge:                  ; preds = %if.end205.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i

if.then207.i:                                     ; preds = %if.end205.i
  call void @__sanitizer_cov_trace_pc() #22
  %48 = ptrtoint ptr %flags650.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %flags650.i, align 4
  %or.i = or i32 %49, 1
  store i32 %or.i, ptr %flags650.i, align 4
  br label %cleanup.i

sw.bb209.i:                                       ; preds = %if.end21.i
  br i1 %tobool.not.i.i1108.i, label %sw.bb209.i.ima_log_string.exit937.i_crit_edge, label %if.end.i.i936.i

sw.bb209.i.ima_log_string.exit937.i_crit_edge:    ; preds = %sw.bb209.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ima_log_string.exit937.i

if.end.i.i936.i:                                  ; preds = %sw.bb209.i
  call void @__sanitizer_cov_trace_pc() #22
  %50 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %args.i, align 4
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.70) #20
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.109, ptr noundef %51) #20
  br label %ima_log_string.exit937.i

ima_log_string.exit937.i:                         ; preds = %if.end.i.i936.i, %sw.bb209.i.ima_log_string.exit937.i_crit_edge
  %52 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool212.not.i = icmp eq i32 %53, 0
  %spec.select913.i = select i1 %tobool212.not.i, i32 %result.01158.i, i32 -22
  %54 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %args.i, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %55, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 94, i8 %57)
  %cmp218.i = icmp eq i8 %57, 94
  %from.0.idx.i = zext i1 %cmp218.i to i32
  %from.0.i = getelementptr i8, ptr %55, i32 %from.0.idx.i
  %call222.i = call i32 @strcmp(ptr noundef %from.0.i, ptr noundef nonnull dereferenceable(9) @.str.71) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call222.i)
  %cmp223.i = icmp eq i32 %call222.i, 0
  br i1 %cmp223.i, label %ima_log_string.exit937.i.if.end249.i_crit_edge, label %if.else227.i

ima_log_string.exit937.i.if.end249.i_crit_edge:   ; preds = %ima_log_string.exit937.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end249.i

if.else227.i:                                     ; preds = %ima_log_string.exit937.i
  %call228.i = call i32 @strcmp(ptr noundef %from.0.i, ptr noundef nonnull dereferenceable(10) @.str.72) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call228.i)
  %cmp229.i = icmp eq i32 %call228.i, 0
  br i1 %cmp229.i, label %if.else227.i.if.end249.i_crit_edge, label %if.else233.i

if.else227.i.if.end249.i_crit_edge:               ; preds = %if.else227.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end249.i

if.else233.i:                                     ; preds = %if.else227.i
  %call234.i = call i32 @strcmp(ptr noundef %from.0.i, ptr noundef nonnull dereferenceable(9) @.str.73) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call234.i)
  %cmp235.i = icmp eq i32 %call234.i, 0
  br i1 %cmp235.i, label %if.else233.i.if.end249.i_crit_edge, label %if.else239.i

if.else233.i.if.end249.i_crit_edge:               ; preds = %if.else233.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end249.i

if.else239.i:                                     ; preds = %if.else233.i
  %call240.i = call i32 @strcmp(ptr noundef %from.0.i, ptr noundef nonnull dereferenceable(11) @.str.74) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call240.i)
  %cmp241.i = icmp eq i32 %call240.i, 0
  br i1 %cmp241.i, label %if.else239.i.if.end249.i_crit_edge, label %if.else239.i.cleanup.i_crit_edge

if.else239.i.cleanup.i_crit_edge:                 ; preds = %if.else239.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i

if.else239.i.if.end249.i_crit_edge:               ; preds = %if.else239.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end249.i

if.end249.i:                                      ; preds = %if.else239.i.if.end249.i_crit_edge, %if.else233.i.if.end249.i_crit_edge, %if.else227.i.if.end249.i_crit_edge, %ima_log_string.exit937.i.if.end249.i_crit_edge
  %.sink1169.i = phi i32 [ 1, %ima_log_string.exit937.i.if.end249.i_crit_edge ], [ 2, %if.else227.i.if.end249.i_crit_edge ], [ 4, %if.else233.i.if.end249.i_crit_edge ], [ 8, %if.else239.i.if.end249.i_crit_edge ]
  %58 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %.sink1169.i, ptr %mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select913.i)
  %tobool250.not.i = icmp eq i32 %spec.select913.i, 0
  br i1 %tobool250.not.i, label %if.then251.i, label %if.end249.i.cleanup.i_crit_edge

if.end249.i.cleanup.i_crit_edge:                  ; preds = %if.end249.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i

if.then251.i:                                     ; preds = %if.end249.i
  call void @__sanitizer_cov_trace_pc() #22
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %55, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 94, i8 %60)
  %cmp255.i = icmp eq i8 %60, 94
  %cond.i = select i1 %cmp255.i, i32 64, i32 2
  %61 = ptrtoint ptr %flags650.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %flags650.i, align 4
  %or258.i = or i32 %cond.i, %62
  store i32 %or258.i, ptr %flags650.i, align 4
  br label %cleanup.i

sw.bb260.i:                                       ; preds = %if.end21.i
  br i1 %tobool.not.i.i1108.i, label %sw.bb260.i.ima_log_string.exit940.i_crit_edge, label %if.end.i.i939.i

sw.bb260.i.ima_log_string.exit940.i_crit_edge:    ; preds = %sw.bb260.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ima_log_string.exit940.i

if.end.i.i939.i:                                  ; preds = %sw.bb260.i
  call void @__sanitizer_cov_trace_pc() #22
  %63 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %args.i, align 4
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.75) #20
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.109, ptr noundef %64) #20
  br label %ima_log_string.exit940.i

ima_log_string.exit940.i:                         ; preds = %if.end.i.i939.i, %sw.bb260.i.ima_log_string.exit940.i_crit_edge
  %65 = ptrtoint ptr %fsmagic.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %fsmagic.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool263.not.i = icmp eq i32 %66, 0
  br i1 %tobool263.not.i, label %if.end265.i, label %ima_log_string.exit940.i.cleanup.i_crit_edge

ima_log_string.exit940.i.cleanup.i_crit_edge:     ; preds = %ima_log_string.exit940.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i

if.end265.i:                                      ; preds = %ima_log_string.exit940.i
  %67 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %args.i, align 4
  %call.i941.i = call i32 @_kstrtoul(ptr noundef %68, i32 noundef 16, ptr noundef %fsmagic.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i941.i)
  %tobool270.not.i = icmp eq i32 %call.i941.i, 0
  br i1 %tobool270.not.i, label %if.then271.i, label %if.end265.i.cleanup.i_crit_edge

if.end265.i.cleanup.i_crit_edge:                  ; preds = %if.end265.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i

if.then271.i:                                     ; preds = %if.end265.i
  call void @__sanitizer_cov_trace_pc() #22
  %69 = ptrtoint ptr %flags650.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %flags650.i, align 4
  %or273.i = or i32 %70, 4
  store i32 %or273.i, ptr %flags650.i, align 4
  br label %cleanup.i

sw.bb275.i:                                       ; preds = %if.end21.i
  br i1 %tobool.not.i.i1108.i, label %sw.bb275.i.ima_log_string.exit944.i_crit_edge, label %if.end.i.i943.i

sw.bb275.i.ima_log_string.exit944.i_crit_edge:    ; preds = %sw.bb275.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ima_log_string.exit944.i

if.end.i.i943.i:                                  ; preds = %sw.bb275.i
  call void @__sanitizer_cov_trace_pc() #22
  %71 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %args.i, align 4
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.76) #20
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.109, ptr noundef %72) #20
  br label %ima_log_string.exit944.i

ima_log_string.exit944.i:                         ; preds = %if.end.i.i943.i, %sw.bb275.i.ima_log_string.exit944.i_crit_edge
  %73 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %args.i, align 4
  %call280.i = call noalias ptr @kstrdup(ptr noundef %74, i32 noundef 3264) #20
  %75 = ptrtoint ptr %fsname.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call280.i, ptr %fsname.i, align 4
  %tobool282.not.i = icmp eq ptr %call280.i, null
  br i1 %tobool282.not.i, label %ima_log_string.exit944.i.cleanup.i_crit_edge, label %if.end284.i

ima_log_string.exit944.i.cleanup.i_crit_edge:     ; preds = %ima_log_string.exit944.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i

if.end284.i:                                      ; preds = %ima_log_string.exit944.i
  call void @__sanitizer_cov_trace_pc() #22
  %76 = ptrtoint ptr %flags650.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %flags650.i, align 4
  %or286.i = or i32 %77, 512
  store i32 %or286.i, ptr %flags650.i, align 4
  br label %cleanup.i

sw.bb287.i:                                       ; preds = %if.end21.i
  br i1 %tobool.not.i.i1108.i, label %sw.bb287.i.ima_log_string.exit947.i_crit_edge, label %if.end.i.i946.i

sw.bb287.i.ima_log_string.exit947.i_crit_edge:    ; preds = %sw.bb287.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ima_log_string.exit947.i

if.end.i.i946.i:                                  ; preds = %sw.bb287.i
  call void @__sanitizer_cov_trace_pc() #22
  %78 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %args.i, align 4
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.77) #20
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.109, ptr noundef %79) #20
  br label %ima_log_string.exit947.i

ima_log_string.exit947.i:                         ; preds = %if.end.i.i946.i, %sw.bb287.i.ima_log_string.exit947.i_crit_edge
  %80 = ptrtoint ptr %keyrings.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %keyrings.i, align 8
  %tobool290.not.i = icmp eq ptr %81, null
  br i1 %tobool290.not.i, label %if.end292.i, label %ima_log_string.exit947.i.cleanup.i_crit_edge

ima_log_string.exit947.i.cleanup.i_crit_edge:     ; preds = %ima_log_string.exit947.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i

if.end292.i:                                      ; preds = %ima_log_string.exit947.i
  %call294.i = call fastcc ptr @ima_alloc_rule_opt_list(ptr noundef nonnull %args.i) #20
  %82 = ptrtoint ptr %keyrings.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call294.i, ptr %keyrings.i, align 8
  %cmp.i.i = icmp ugt ptr %call294.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then298.i, label %if.end302.i

if.then298.i:                                     ; preds = %if.end292.i
  call void @__sanitizer_cov_trace_pc() #22
  %83 = ptrtoint ptr %call294.i to i32
  %84 = ptrtoint ptr %keyrings.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %keyrings.i, align 8
  br label %cleanup.i

if.end302.i:                                      ; preds = %if.end292.i
  call void @__sanitizer_cov_trace_pc() #22
  %85 = ptrtoint ptr %flags650.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %flags650.i, align 4
  %or304.i = or i32 %86, 1024
  store i32 %or304.i, ptr %flags650.i, align 4
  br label %cleanup.i

sw.bb305.i:                                       ; preds = %if.end21.i
  br i1 %tobool.not.i.i1108.i, label %sw.bb305.i.ima_log_string.exit950.i_crit_edge, label %if.end.i.i949.i

sw.bb305.i.ima_log_string.exit950.i_crit_edge:    ; preds = %sw.bb305.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ima_log_string.exit950.i

if.end.i.i949.i:                                  ; preds = %sw.bb305.i
  call void @__sanitizer_cov_trace_pc() #22
  %87 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %args.i, align 4
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.78) #20
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.109, ptr noundef %88) #20
  br label %ima_log_string.exit950.i

ima_log_string.exit950.i:                         ; preds = %if.end.i.i949.i, %sw.bb305.i.ima_log_string.exit950.i_crit_edge
  %89 = ptrtoint ptr %label.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %label.i, align 4
  %tobool308.not.i = icmp eq ptr %90, null
  br i1 %tobool308.not.i, label %if.end310.i, label %ima_log_string.exit950.i.cleanup.i_crit_edge

ima_log_string.exit950.i.cleanup.i_crit_edge:     ; preds = %ima_log_string.exit950.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i

if.end310.i:                                      ; preds = %ima_log_string.exit950.i
  %call312.i = call fastcc ptr @ima_alloc_rule_opt_list(ptr noundef nonnull %args.i) #20
  %91 = ptrtoint ptr %label.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %call312.i, ptr %label.i, align 4
  %cmp.i951.i = icmp ugt ptr %call312.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i951.i, label %if.then316.i, label %if.end320.i

if.then316.i:                                     ; preds = %if.end310.i
  call void @__sanitizer_cov_trace_pc() #22
  %92 = ptrtoint ptr %call312.i to i32
  %93 = ptrtoint ptr %label.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr null, ptr %label.i, align 4
  br label %cleanup.i

if.end320.i:                                      ; preds = %if.end310.i
  call void @__sanitizer_cov_trace_pc() #22
  %94 = ptrtoint ptr %flags650.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %flags650.i, align 4
  %or322.i = or i32 %95, 2048
  store i32 %or322.i, ptr %flags650.i, align 4
  br label %cleanup.i

sw.bb323.i:                                       ; preds = %if.end21.i
  br i1 %tobool.not.i.i1108.i, label %sw.bb323.i.ima_log_string.exit954.i_crit_edge, label %if.end.i.i953.i

sw.bb323.i.ima_log_string.exit954.i_crit_edge:    ; preds = %sw.bb323.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ima_log_string.exit954.i

if.end.i.i953.i:                                  ; preds = %sw.bb323.i
  call void @__sanitizer_cov_trace_pc() #22
  %96 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %args.i, align 4
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.79) #20
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.109, ptr noundef %97) #20
  br label %ima_log_string.exit954.i

ima_log_string.exit954.i:                         ; preds = %if.end.i.i953.i, %sw.bb323.i.ima_log_string.exit954.i_crit_edge
  %bcmp.i.i.i = call i32 @bcmp(ptr noundef dereferenceable(16) %fsuuid.i, ptr noundef nonnull dereferenceable(16) @uuid_null, i32 16) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i)
  %cmp.i.i.i = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end328.i, label %ima_log_string.exit954.i.cleanup.i_crit_edge

ima_log_string.exit954.i.cleanup.i_crit_edge:     ; preds = %ima_log_string.exit954.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i

if.end328.i:                                      ; preds = %ima_log_string.exit954.i
  %98 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %args.i, align 4
  %call332.i = call i32 @uuid_parse(ptr noundef %99, ptr noundef %fsuuid.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call332.i)
  %tobool333.not.i = icmp eq i32 %call332.i, 0
  br i1 %tobool333.not.i, label %if.then334.i, label %if.end328.i.cleanup.i_crit_edge

if.end328.i.cleanup.i_crit_edge:                  ; preds = %if.end328.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i

if.then334.i:                                     ; preds = %if.end328.i
  call void @__sanitizer_cov_trace_pc() #22
  %100 = ptrtoint ptr %flags650.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %flags650.i, align 4
  %or336.i = or i32 %101, 32
  store i32 %or336.i, ptr %flags650.i, align 4
  br label %cleanup.i

sw.bb338.i:                                       ; preds = %if.end21.i.sw.bb338.i_crit_edge, %if.end21.i.sw.bb338.i_crit_edge78
  %102 = ptrtoint ptr %uid_op.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr @uid_gt, ptr %uid_op.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %call22.i)
  %cond1151.i = icmp eq i32 %call22.i, 25
  br i1 %cond1151.i, label %sw.bb338.i.lor.end.thread.i_crit_edge, label %sw.bb338.i.lor.end.thread1132.i_crit_edge

sw.bb338.i.lor.end.thread1132.i_crit_edge:        ; preds = %sw.bb338.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %lor.end.thread1132.i

sw.bb338.i.lor.end.thread.i_crit_edge:            ; preds = %sw.bb338.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %lor.end.thread.i

if.then346.i:                                     ; preds = %if.end21.i.if.then346.i_crit_edge, %if.end21.i.if.then346.i_crit_edge79
  %103 = ptrtoint ptr %uid_op.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @uid_lt, ptr %uid_op.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %call22.i)
  %cmp355.i = icmp eq i32 %call22.i, 31
  br i1 %cmp355.i, label %if.then346.i.lor.end.thread.i_crit_edge, label %if.then346.i.lor.end.thread1132.i_crit_edge

if.then346.i.lor.end.thread1132.i_crit_edge:      ; preds = %if.then346.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %lor.end.thread1132.i

if.then346.i.lor.end.thread.i_crit_edge:          ; preds = %if.then346.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %lor.end.thread.i

lor.end.thread.i:                                 ; preds = %if.then346.i.lor.end.thread.i_crit_edge, %sw.bb338.i.lor.end.thread.i_crit_edge, %if.end21.i.lor.end.thread.i_crit_edge
  br label %lor.end.thread1132.i

lor.end.thread1132.i:                             ; preds = %lor.end.thread.i, %if.then346.i.lor.end.thread1132.i_crit_edge, %sw.bb338.i.lor.end.thread1132.i_crit_edge, %if.end21.i.lor.end.thread1132.i_crit_edge
  %104 = phi i32 [ 128, %lor.end.thread.i ], [ 8, %if.then346.i.lor.end.thread1132.i_crit_edge ], [ 8, %sw.bb338.i.lor.end.thread1132.i_crit_edge ], [ 8, %if.end21.i.lor.end.thread1132.i_crit_edge ]
  %105 = phi ptr [ @.str.80, %lor.end.thread.i ], [ @.str.81, %if.then346.i.lor.end.thread1132.i_crit_edge ], [ @.str.81, %sw.bb338.i.lor.end.thread1132.i_crit_edge ], [ @.str.81, %if.end21.i.lor.end.thread1132.i_crit_edge ]
  %106 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %args.i, align 4
  br i1 %tobool.not.i.i1108.i, label %lor.end.thread1132.i.ima_log_string_op.exit.i_crit_edge, label %if.end.i.i

lor.end.thread1132.i.ima_log_string_op.exit.i_crit_edge: ; preds = %lor.end.thread1132.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ima_log_string_op.exit.i

if.end.i.i:                                       ; preds = %lor.end.thread1132.i
  %switch.tableidx = add i32 %call22.i, -24
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %108 = icmp ult i32 %switch.tableidx, 8
  br i1 %108, label %switch.lookup, label %if.end.i.i.sw.epilog.i.i_crit_edge

if.end.i.i.sw.epilog.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog.i.i

switch.lookup:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %switch.gep = getelementptr inbounds [8 x ptr], ptr @switch.table.ima_parse_add_rule, i32 0, i32 %switch.tableidx
  %109 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %109)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %switch.lookup, %if.end.i.i.sw.epilog.i.i_crit_edge
  %.str.108.sink.i.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.108, %if.end.i.i.sw.epilog.i.i_crit_edge ]
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i.i, ptr noundef nonnull %.str.108.sink.i.i, ptr noundef nonnull %105) #20
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.109, ptr noundef %107) #20
  br label %ima_log_string_op.exit.i

ima_log_string_op.exit.i:                         ; preds = %sw.epilog.i.i, %lor.end.thread1132.i.ima_log_string_op.exit.i_crit_edge
  %110 = ptrtoint ptr %uid.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %.unpack904.i = load i32, ptr %uid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.unpack904.i)
  %cmp.i955.not.i = icmp eq i32 %.unpack904.i, -1
  br i1 %cmp.i955.not.i, label %if.end365.i, label %ima_log_string_op.exit.i.cleanup.i_crit_edge

ima_log_string_op.exit.i.cleanup.i_crit_edge:     ; preds = %ima_log_string_op.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i

if.end365.i:                                      ; preds = %ima_log_string_op.exit.i
  %111 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %args.i, align 4
  %call.i956.i = call i32 @_kstrtoul(ptr noundef %112, i32 noundef 10, ptr noundef nonnull %lnum.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i956.i)
  %tobool369.not.i = icmp eq i32 %call.i956.i, 0
  br i1 %tobool369.not.i, label %if.then370.i, label %if.end365.i.cleanup.i_crit_edge

if.end365.i.cleanup.i_crit_edge:                  ; preds = %if.end365.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i

if.then370.i:                                     ; preds = %if.end365.i
  %113 = call i32 @llvm.read_register.i32(metadata !393) #20
  %and.i.i = and i32 %113, -16384
  %114 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %114, i32 0, i32 2
  %115 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %116, i32 0, i32 99
  %117 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %cred.i, align 16
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %118, i32 0, i32 25
  %119 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %user_ns.i, align 4
  %121 = ptrtoint ptr %lnum.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %lnum.i, align 4
  %call375.i = call i32 @make_kuid(ptr noundef %120, i32 noundef %122) #20
  %123 = ptrtoint ptr %uid.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %call375.i, ptr %uid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call375.i)
  %cmp.i957.not.i = icmp eq i32 %call375.i, -1
  br i1 %cmp.i957.not.i, label %if.then370.i.cleanup.i_crit_edge, label %if.else384.i

if.then370.i.cleanup.i_crit_edge:                 ; preds = %if.then370.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i

if.else384.i:                                     ; preds = %if.then370.i
  call void @__sanitizer_cov_trace_pc() #22
  %124 = ptrtoint ptr %flags650.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %flags650.i, align 4
  %or389.i = or i32 %125, %104
  store i32 %or389.i, ptr %flags650.i, align 4
  br label %cleanup.i

sw.bb392.i:                                       ; preds = %if.end21.i.sw.bb392.i_crit_edge, %if.end21.i.sw.bb392.i_crit_edge80
  %126 = ptrtoint ptr %gid_op.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr @gid_gt, ptr %gid_op.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %call22.i)
  %cond1152.i = icmp eq i32 %call22.i, 27
  br i1 %cond1152.i, label %sw.bb392.i.lor.end412.thread.i_crit_edge, label %sw.bb392.i.lor.end412.thread1135.i_crit_edge

sw.bb392.i.lor.end412.thread1135.i_crit_edge:     ; preds = %sw.bb392.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %lor.end412.thread1135.i

sw.bb392.i.lor.end412.thread.i_crit_edge:         ; preds = %sw.bb392.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %lor.end412.thread.i

if.then400.i:                                     ; preds = %if.end21.i.if.then400.i_crit_edge, %if.end21.i.if.then400.i_crit_edge81
  %127 = ptrtoint ptr %gid_op.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr @gid_lt, ptr %gid_op.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %call22.i)
  %cmp410.i = icmp eq i32 %call22.i, 33
  br i1 %cmp410.i, label %if.then400.i.lor.end412.thread.i_crit_edge, label %if.then400.i.lor.end412.thread1135.i_crit_edge

if.then400.i.lor.end412.thread1135.i_crit_edge:   ; preds = %if.then400.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %lor.end412.thread1135.i

if.then400.i.lor.end412.thread.i_crit_edge:       ; preds = %if.then400.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %lor.end412.thread.i

lor.end412.thread.i:                              ; preds = %if.then400.i.lor.end412.thread.i_crit_edge, %sw.bb392.i.lor.end412.thread.i_crit_edge, %if.end21.i.lor.end412.thread.i_crit_edge
  br label %lor.end412.thread1135.i

lor.end412.thread1135.i:                          ; preds = %lor.end412.thread.i, %if.then400.i.lor.end412.thread1135.i_crit_edge, %sw.bb392.i.lor.end412.thread1135.i_crit_edge, %if.end21.i.lor.end412.thread1135.i_crit_edge
  %128 = phi i32 [ 16384, %lor.end412.thread.i ], [ 8192, %if.then400.i.lor.end412.thread1135.i_crit_edge ], [ 8192, %sw.bb392.i.lor.end412.thread1135.i_crit_edge ], [ 8192, %if.end21.i.lor.end412.thread1135.i_crit_edge ]
  %129 = phi ptr [ @.str.82, %lor.end412.thread.i ], [ @.str.83, %if.then400.i.lor.end412.thread1135.i_crit_edge ], [ @.str.83, %sw.bb392.i.lor.end412.thread1135.i_crit_edge ], [ @.str.83, %if.end21.i.lor.end412.thread1135.i_crit_edge ]
  %130 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %args.i, align 4
  br i1 %tobool.not.i.i1108.i, label %lor.end412.thread1135.i.ima_log_string_op.exit964.i_crit_edge, label %if.end.i959.i

lor.end412.thread1135.i.ima_log_string_op.exit964.i_crit_edge: ; preds = %lor.end412.thread1135.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ima_log_string_op.exit964.i

if.end.i959.i:                                    ; preds = %lor.end412.thread1135.i
  %switch.tableidx56 = add i32 %call22.i, -24
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %switch.tableidx56)
  %132 = icmp ult i32 %switch.tableidx56, 10
  br i1 %132, label %switch.lookup55, label %if.end.i959.i.sw.epilog.i963.i_crit_edge

if.end.i959.i.sw.epilog.i963.i_crit_edge:         ; preds = %if.end.i959.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog.i963.i

switch.lookup55:                                  ; preds = %if.end.i959.i
  call void @__sanitizer_cov_trace_pc() #22
  %switch.gep57 = getelementptr inbounds [10 x ptr], ptr @switch.table.ima_parse_add_rule.167, i32 0, i32 %switch.tableidx56
  %133 = ptrtoint ptr %switch.gep57 to i32
  call void @__asan_load4_noabort(i32 %133)
  %switch.load58 = load ptr, ptr %switch.gep57, align 4
  br label %sw.epilog.i963.i

sw.epilog.i963.i:                                 ; preds = %switch.lookup55, %if.end.i959.i.sw.epilog.i963.i_crit_edge
  %.str.108.sink.i962.i = phi ptr [ %switch.load58, %switch.lookup55 ], [ @.str.108, %if.end.i959.i.sw.epilog.i963.i_crit_edge ]
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i.i, ptr noundef nonnull %.str.108.sink.i962.i, ptr noundef nonnull %129) #20
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.109, ptr noundef %131) #20
  br label %ima_log_string_op.exit964.i

ima_log_string_op.exit964.i:                      ; preds = %sw.epilog.i963.i, %lor.end412.thread1135.i.ima_log_string_op.exit964.i_crit_edge
  %134 = ptrtoint ptr %gid.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %.unpack902.i = load i32, ptr %gid.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.unpack902.i)
  %cmp.i965.not.i = icmp eq i32 %.unpack902.i, -1
  br i1 %cmp.i965.not.i, label %if.end423.i, label %ima_log_string_op.exit964.i.cleanup.i_crit_edge

ima_log_string_op.exit964.i.cleanup.i_crit_edge:  ; preds = %ima_log_string_op.exit964.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i

if.end423.i:                                      ; preds = %ima_log_string_op.exit964.i
  %135 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %args.i, align 4
  %call.i966.i = call i32 @_kstrtoul(ptr noundef %136, i32 noundef 10, ptr noundef nonnull %lnum.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i966.i)
  %tobool427.not.i = icmp eq i32 %call.i966.i, 0
  br i1 %tobool427.not.i, label %if.then428.i, label %if.end423.i.cleanup.i_crit_edge

if.end423.i.cleanup.i_crit_edge:                  ; preds = %if.end423.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i

if.then428.i:                                     ; preds = %if.end423.i
  %137 = call i32 @llvm.read_register.i32(metadata !393) #20
  %and.i967.i = and i32 %137, -16384
  %138 = inttoptr i32 %and.i967.i to ptr
  %task437.i = getelementptr inbounds %struct.thread_info, ptr %138, i32 0, i32 2
  %139 = ptrtoint ptr %task437.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %task437.i, align 8
  %cred438.i = getelementptr inbounds %struct.task_struct, ptr %140, i32 0, i32 99
  %141 = ptrtoint ptr %cred438.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %cred438.i, align 16
  %user_ns439.i = getelementptr inbounds %struct.cred, ptr %142, i32 0, i32 25
  %143 = ptrtoint ptr %user_ns439.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %user_ns439.i, align 4
  %145 = ptrtoint ptr %lnum.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %lnum.i, align 4
  %call440.i = call i32 @make_kgid(ptr noundef %144, i32 noundef %146) #20
  %147 = ptrtoint ptr %gid.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %call440.i, ptr %gid.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call440.i)
  %cmp.i968.not.i = icmp eq i32 %call440.i, -1
  br i1 %cmp.i968.not.i, label %if.then428.i.cleanup.i_crit_edge, label %if.else449.i

if.then428.i.cleanup.i_crit_edge:                 ; preds = %if.then428.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i

if.else449.i:                                     ; preds = %if.then428.i
  call void @__sanitizer_cov_trace_pc() #22
  %148 = ptrtoint ptr %flags650.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %flags650.i, align 4
  %or454.i = or i32 %149, %128
  store i32 %or454.i, ptr %flags650.i, align 4
  br label %cleanup.i

if.then462.i:                                     ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb465.sink.split.i

sw.bb465.sink.split.i:                            ; preds = %if.then462.i, %if.end21.i.sw.bb465.sink.split.i_crit_edge
  %uid_gt.sink.i = phi ptr [ @uid_lt, %if.then462.i ], [ @uid_gt, %if.end21.i.sw.bb465.sink.split.i_crit_edge ]
  %150 = ptrtoint ptr %fowner_op.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %uid_gt.sink.i, ptr %fowner_op.i, align 4
  br label %sw.bb465.i

sw.bb465.i:                                       ; preds = %sw.bb465.sink.split.i, %if.end21.i.sw.bb465.i_crit_edge
  %151 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %args.i, align 4
  br i1 %tobool.not.i.i1108.i, label %sw.bb465.i.ima_log_string_op.exit975.i_crit_edge, label %if.end.i970.i

sw.bb465.i.ima_log_string_op.exit975.i_crit_edge: ; preds = %sw.bb465.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ima_log_string_op.exit975.i

if.end.i970.i:                                    ; preds = %sw.bb465.i
  %switch.tableidx60 = add i32 %call22.i, -24
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %switch.tableidx60)
  %153 = icmp ult i32 %switch.tableidx60, 11
  br i1 %153, label %switch.lookup59, label %if.end.i970.i.sw.epilog.i974.i_crit_edge

if.end.i970.i.sw.epilog.i974.i_crit_edge:         ; preds = %if.end.i970.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog.i974.i

switch.lookup59:                                  ; preds = %if.end.i970.i
  call void @__sanitizer_cov_trace_pc() #22
  %switch.gep61 = getelementptr inbounds [11 x ptr], ptr @switch.table.ima_parse_add_rule.168, i32 0, i32 %switch.tableidx60
  %154 = ptrtoint ptr %switch.gep61 to i32
  call void @__asan_load4_noabort(i32 %154)
  %switch.load62 = load ptr, ptr %switch.gep61, align 4
  br label %sw.epilog.i974.i

sw.epilog.i974.i:                                 ; preds = %switch.lookup59, %if.end.i970.i.sw.epilog.i974.i_crit_edge
  %.str.108.sink.i973.i = phi ptr [ %switch.load62, %switch.lookup59 ], [ @.str.108, %if.end.i970.i.sw.epilog.i974.i_crit_edge ]
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i.i, ptr noundef nonnull %.str.108.sink.i973.i, ptr noundef nonnull @.str.85) #20
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.109, ptr noundef %152) #20
  br label %ima_log_string_op.exit975.i

ima_log_string_op.exit975.i:                      ; preds = %sw.epilog.i974.i, %sw.bb465.i.ima_log_string_op.exit975.i_crit_edge
  %155 = ptrtoint ptr %fowner.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %.unpack900.i = load i32, ptr %fowner.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.unpack900.i)
  %cmp.i976.not.i = icmp eq i32 %.unpack900.i, -1
  br i1 %cmp.i976.not.i, label %if.end472.i, label %ima_log_string_op.exit975.i.cleanup.i_crit_edge

ima_log_string_op.exit975.i.cleanup.i_crit_edge:  ; preds = %ima_log_string_op.exit975.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i

if.end472.i:                                      ; preds = %ima_log_string_op.exit975.i
  %156 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %args.i, align 4
  %call.i977.i = call i32 @_kstrtoul(ptr noundef %157, i32 noundef 10, ptr noundef nonnull %lnum.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i977.i)
  %tobool476.not.i = icmp eq i32 %call.i977.i, 0
  br i1 %tobool476.not.i, label %if.then477.i, label %if.end472.i.cleanup.i_crit_edge

if.end472.i.cleanup.i_crit_edge:                  ; preds = %if.end472.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i

if.then477.i:                                     ; preds = %if.end472.i
  %158 = call i32 @llvm.read_register.i32(metadata !393) #20
  %and.i978.i = and i32 %158, -16384
  %159 = inttoptr i32 %and.i978.i to ptr
  %task486.i = getelementptr inbounds %struct.thread_info, ptr %159, i32 0, i32 2
  %160 = ptrtoint ptr %task486.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %task486.i, align 8
  %cred487.i = getelementptr inbounds %struct.task_struct, ptr %161, i32 0, i32 99
  %162 = ptrtoint ptr %cred487.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %cred487.i, align 16
  %user_ns488.i = getelementptr inbounds %struct.cred, ptr %163, i32 0, i32 25
  %164 = ptrtoint ptr %user_ns488.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %user_ns488.i, align 4
  %166 = ptrtoint ptr %lnum.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %lnum.i, align 4
  %call489.i = call i32 @make_kuid(ptr noundef %165, i32 noundef %167) #20
  %168 = ptrtoint ptr %fowner.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %call489.i, ptr %fowner.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call489.i)
  %cmp.i979.not.i = icmp eq i32 %call489.i, -1
  br i1 %cmp.i979.not.i, label %if.then477.i.cleanup.i_crit_edge, label %if.else498.i

if.then477.i.cleanup.i_crit_edge:                 ; preds = %if.then477.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i

if.else498.i:                                     ; preds = %if.then477.i
  call void @__sanitizer_cov_trace_pc() #22
  %169 = ptrtoint ptr %flags650.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %flags650.i, align 4
  %or500.i = or i32 %170, 16
  store i32 %or500.i, ptr %flags650.i, align 4
  br label %cleanup.i

if.then508.i:                                     ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb511.sink.split.i

sw.bb511.sink.split.i:                            ; preds = %if.then508.i, %if.end21.i.sw.bb511.sink.split.i_crit_edge
  %gid_gt.sink.i = phi ptr [ @gid_lt, %if.then508.i ], [ @gid_gt, %if.end21.i.sw.bb511.sink.split.i_crit_edge ]
  %171 = ptrtoint ptr %fgroup_op.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %gid_gt.sink.i, ptr %fgroup_op.i, align 8
  br label %sw.bb511.i

sw.bb511.i:                                       ; preds = %sw.bb511.sink.split.i, %if.end21.i.sw.bb511.i_crit_edge
  %172 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %args.i, align 4
  br i1 %tobool.not.i.i1108.i, label %sw.bb511.i.ima_log_string_op.exit986.i_crit_edge, label %if.end.i981.i

sw.bb511.i.ima_log_string_op.exit986.i_crit_edge: ; preds = %sw.bb511.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ima_log_string_op.exit986.i

if.end.i981.i:                                    ; preds = %sw.bb511.i
  %switch.tableidx64 = add i32 %call22.i, -24
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %switch.tableidx64)
  %174 = icmp ult i32 %switch.tableidx64, 12
  br i1 %174, label %switch.lookup63, label %if.end.i981.i.sw.epilog.i985.i_crit_edge

if.end.i981.i.sw.epilog.i985.i_crit_edge:         ; preds = %if.end.i981.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog.i985.i

switch.lookup63:                                  ; preds = %if.end.i981.i
  call void @__sanitizer_cov_trace_pc() #22
  %switch.gep65 = getelementptr inbounds [12 x ptr], ptr @switch.table.ima_parse_add_rule.169, i32 0, i32 %switch.tableidx64
  %175 = ptrtoint ptr %switch.gep65 to i32
  call void @__asan_load4_noabort(i32 %175)
  %switch.load66 = load ptr, ptr %switch.gep65, align 4
  br label %sw.epilog.i985.i

sw.epilog.i985.i:                                 ; preds = %switch.lookup63, %if.end.i981.i.sw.epilog.i985.i_crit_edge
  %.str.108.sink.i984.i = phi ptr [ %switch.load66, %switch.lookup63 ], [ @.str.108, %if.end.i981.i.sw.epilog.i985.i_crit_edge ]
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i.i, ptr noundef nonnull %.str.108.sink.i984.i, ptr noundef nonnull @.str.87) #20
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.109, ptr noundef %173) #20
  br label %ima_log_string_op.exit986.i

ima_log_string_op.exit986.i:                      ; preds = %sw.epilog.i985.i, %sw.bb511.i.ima_log_string_op.exit986.i_crit_edge
  %176 = ptrtoint ptr %fgroup.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %.unpack.i = load i32, ptr %fgroup.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.unpack.i)
  %cmp.i987.not.i = icmp eq i32 %.unpack.i, -1
  br i1 %cmp.i987.not.i, label %if.end518.i, label %ima_log_string_op.exit986.i.cleanup.i_crit_edge

ima_log_string_op.exit986.i.cleanup.i_crit_edge:  ; preds = %ima_log_string_op.exit986.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i

if.end518.i:                                      ; preds = %ima_log_string_op.exit986.i
  %177 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %args.i, align 4
  %call.i988.i = call i32 @_kstrtoul(ptr noundef %178, i32 noundef 10, ptr noundef nonnull %lnum.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i988.i)
  %tobool522.not.i = icmp eq i32 %call.i988.i, 0
  br i1 %tobool522.not.i, label %if.then523.i, label %if.end518.i.cleanup.i_crit_edge

if.end518.i.cleanup.i_crit_edge:                  ; preds = %if.end518.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i

if.then523.i:                                     ; preds = %if.end518.i
  %179 = call i32 @llvm.read_register.i32(metadata !393) #20
  %and.i989.i = and i32 %179, -16384
  %180 = inttoptr i32 %and.i989.i to ptr
  %task532.i = getelementptr inbounds %struct.thread_info, ptr %180, i32 0, i32 2
  %181 = ptrtoint ptr %task532.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %task532.i, align 8
  %cred533.i = getelementptr inbounds %struct.task_struct, ptr %182, i32 0, i32 99
  %183 = ptrtoint ptr %cred533.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %cred533.i, align 16
  %user_ns534.i = getelementptr inbounds %struct.cred, ptr %184, i32 0, i32 25
  %185 = ptrtoint ptr %user_ns534.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %user_ns534.i, align 4
  %187 = ptrtoint ptr %lnum.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %lnum.i, align 4
  %call535.i = call i32 @make_kgid(ptr noundef %186, i32 noundef %188) #20
  %189 = ptrtoint ptr %fgroup.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %call535.i, ptr %fgroup.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call535.i)
  %cmp.i990.not.i = icmp eq i32 %call535.i, -1
  br i1 %cmp.i990.not.i, label %if.then523.i.cleanup.i_crit_edge, label %if.else544.i

if.then523.i.cleanup.i_crit_edge:                 ; preds = %if.then523.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i

if.else544.i:                                     ; preds = %if.then523.i
  call void @__sanitizer_cov_trace_pc() #22
  %190 = ptrtoint ptr %flags650.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %flags650.i, align 4
  %or546.i = or i32 %191, 32768
  store i32 %or546.i, ptr %flags650.i, align 4
  br label %cleanup.i

sw.bb549.i:                                       ; preds = %if.end21.i
  br i1 %tobool.not.i.i1108.i, label %sw.bb549.i.ima_log_string.exit993.i_crit_edge, label %if.end.i.i992.i

sw.bb549.i.ima_log_string.exit993.i_crit_edge:    ; preds = %sw.bb549.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ima_log_string.exit993.i

if.end.i.i992.i:                                  ; preds = %sw.bb549.i
  call void @__sanitizer_cov_trace_pc() #22
  %192 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %args.i, align 4
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.89) #20
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.109, ptr noundef %193) #20
  br label %ima_log_string.exit993.i

ima_log_string.exit993.i:                         ; preds = %if.end.i.i992.i, %sw.bb549.i.ima_log_string.exit993.i_crit_edge
  %194 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i994.i = icmp eq ptr %195, null
  br i1 %tobool.not.i994.i, label %if.end.i996.i, label %ima_log_string.exit993.i.cleanup.i_crit_edge

ima_log_string.exit993.i.cleanup.i_crit_edge:     ; preds = %ima_log_string.exit993.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i

if.end.i996.i:                                    ; preds = %ima_log_string.exit993.i
  %call.i995.i = call ptr @match_strdup(ptr noundef nonnull %args.i) #20
  %196 = ptrtoint ptr %args_p.i.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %call.i995.i, ptr %args_p.i.i, align 8
  %tobool7.not.i.i = icmp eq ptr %call.i995.i, null
  br i1 %tobool7.not.i.i, label %if.end.i996.i.cleanup.i_crit_edge, label %if.end9.i.i

if.end.i996.i.cleanup.i_crit_edge:                ; preds = %if.end.i996.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i

if.end9.i.i:                                      ; preds = %if.end.i996.i
  %197 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 19, ptr %type.i.i, align 4
  %call21.i.i = call i32 @security_audit_rule_init(i32 noundef 19, i32 noundef 0, ptr noundef nonnull %call.i995.i, ptr noundef %arrayidx.i.i) #20
  %198 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool25.not.i.i = icmp eq ptr %199, null
  br i1 %tobool25.not.i.i, label %do.end.i.i, label %if.end9.i.i.cleanup.i_crit_edge

if.end9.i.i.cleanup.i_crit_edge:                  ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i

do.end.i.i:                                       ; preds = %if.end9.i.i
  %200 = ptrtoint ptr %args_p.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %args_p.i.i, align 8
  %call30.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %201) #24
  %202 = load ptr, ptr @ima_rules, align 4
  %cmp.i997.i = icmp eq ptr %202, @ima_default_rules
  br i1 %cmp.i997.i, label %if.then31.i.i, label %do.end.i.i.cleanup.i_crit_edge

do.end.i.i.cleanup.i_crit_edge:                   ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i

if.then31.i.i:                                    ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %203 = ptrtoint ptr %args_p.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %args_p.i.i, align 8
  call void @kfree(ptr noundef %204) #20
  %205 = ptrtoint ptr %args_p.i.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr null, ptr %args_p.i.i, align 8
  br label %cleanup.i

sw.bb554.i:                                       ; preds = %if.end21.i
  br i1 %tobool.not.i.i1108.i, label %sw.bb554.i.ima_log_string.exit1000.i_crit_edge, label %if.end.i.i999.i

sw.bb554.i.ima_log_string.exit1000.i_crit_edge:   ; preds = %sw.bb554.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ima_log_string.exit1000.i

if.end.i.i999.i:                                  ; preds = %sw.bb554.i
  call void @__sanitizer_cov_trace_pc() #22
  %206 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %args.i, align 4
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.90) #20
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.109, ptr noundef %207) #20
  br label %ima_log_string.exit1000.i

ima_log_string.exit1000.i:                        ; preds = %if.end.i.i999.i, %sw.bb554.i.ima_log_string.exit1000.i_crit_edge
  %208 = ptrtoint ptr %arrayidx.i1001.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %arrayidx.i1001.i, align 8
  %tobool.not.i1002.i = icmp eq ptr %209, null
  br i1 %tobool.not.i1002.i, label %if.end.i1006.i, label %ima_log_string.exit1000.i.cleanup.i_crit_edge

ima_log_string.exit1000.i.cleanup.i_crit_edge:    ; preds = %ima_log_string.exit1000.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i

if.end.i1006.i:                                   ; preds = %ima_log_string.exit1000.i
  %call.i1003.i = call ptr @match_strdup(ptr noundef nonnull %args.i) #20
  %210 = ptrtoint ptr %args_p.i1004.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %call.i1003.i, ptr %args_p.i1004.i, align 4
  %tobool7.not.i1005.i = icmp eq ptr %call.i1003.i, null
  br i1 %tobool7.not.i1005.i, label %if.end.i1006.i.cleanup.i_crit_edge, label %if.end9.i1010.i

if.end.i1006.i.cleanup.i_crit_edge:               ; preds = %if.end.i1006.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i

if.end9.i1010.i:                                  ; preds = %if.end.i1006.i
  %211 = ptrtoint ptr %type.i1007.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 20, ptr %type.i1007.i, align 8
  %call21.i1008.i = call i32 @security_audit_rule_init(i32 noundef 20, i32 noundef 0, ptr noundef nonnull %call.i1003.i, ptr noundef %arrayidx.i1001.i) #20
  %212 = ptrtoint ptr %arrayidx.i1001.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %arrayidx.i1001.i, align 8
  %tobool25.not.i1009.i = icmp eq ptr %213, null
  br i1 %tobool25.not.i1009.i, label %do.end.i1013.i, label %if.end9.i1010.i.cleanup.i_crit_edge

if.end9.i1010.i.cleanup.i_crit_edge:              ; preds = %if.end9.i1010.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i

do.end.i1013.i:                                   ; preds = %if.end9.i1010.i
  %214 = ptrtoint ptr %args_p.i1004.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %args_p.i1004.i, align 4
  %call30.i1011.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %215) #24
  %216 = load ptr, ptr @ima_rules, align 4
  %cmp.i1012.i = icmp eq ptr %216, @ima_default_rules
  br i1 %cmp.i1012.i, label %if.then31.i1014.i, label %do.end.i1013.i.cleanup.i_crit_edge

do.end.i1013.i.cleanup.i_crit_edge:               ; preds = %do.end.i1013.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i

if.then31.i1014.i:                                ; preds = %do.end.i1013.i
  call void @__sanitizer_cov_trace_pc() #22
  %217 = ptrtoint ptr %args_p.i1004.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %args_p.i1004.i, align 4
  call void @kfree(ptr noundef %218) #20
  %219 = ptrtoint ptr %args_p.i1004.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr null, ptr %args_p.i1004.i, align 4
  br label %cleanup.i

sw.bb559.i:                                       ; preds = %if.end21.i
  br i1 %tobool.not.i.i1108.i, label %sw.bb559.i.ima_log_string.exit1019.i_crit_edge, label %if.end.i.i1018.i

sw.bb559.i.ima_log_string.exit1019.i_crit_edge:   ; preds = %sw.bb559.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ima_log_string.exit1019.i

if.end.i.i1018.i:                                 ; preds = %sw.bb559.i
  call void @__sanitizer_cov_trace_pc() #22
  %220 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %args.i, align 4
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.91) #20
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.109, ptr noundef %221) #20
  br label %ima_log_string.exit1019.i

ima_log_string.exit1019.i:                        ; preds = %if.end.i.i1018.i, %sw.bb559.i.ima_log_string.exit1019.i_crit_edge
  %222 = ptrtoint ptr %arrayidx.i1020.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %arrayidx.i1020.i, align 4
  %tobool.not.i1021.i = icmp eq ptr %223, null
  br i1 %tobool.not.i1021.i, label %if.end.i1025.i, label %ima_log_string.exit1019.i.cleanup.i_crit_edge

ima_log_string.exit1019.i.cleanup.i_crit_edge:    ; preds = %ima_log_string.exit1019.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i

if.end.i1025.i:                                   ; preds = %ima_log_string.exit1019.i
  %call.i1022.i = call ptr @match_strdup(ptr noundef nonnull %args.i) #20
  %224 = ptrtoint ptr %args_p.i1023.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr %call.i1022.i, ptr %args_p.i1023.i, align 8
  %tobool7.not.i1024.i = icmp eq ptr %call.i1022.i, null
  br i1 %tobool7.not.i1024.i, label %if.end.i1025.i.cleanup.i_crit_edge, label %if.end9.i1029.i

if.end.i1025.i.cleanup.i_crit_edge:               ; preds = %if.end.i1025.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i

if.end9.i1029.i:                                  ; preds = %if.end.i1025.i
  %225 = ptrtoint ptr %type.i1026.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 21, ptr %type.i1026.i, align 4
  %call21.i1027.i = call i32 @security_audit_rule_init(i32 noundef 21, i32 noundef 0, ptr noundef nonnull %call.i1022.i, ptr noundef %arrayidx.i1020.i) #20
  %226 = ptrtoint ptr %arrayidx.i1020.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %arrayidx.i1020.i, align 4
  %tobool25.not.i1028.i = icmp eq ptr %227, null
  br i1 %tobool25.not.i1028.i, label %do.end.i1032.i, label %if.end9.i1029.i.cleanup.i_crit_edge

if.end9.i1029.i.cleanup.i_crit_edge:              ; preds = %if.end9.i1029.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i

do.end.i1032.i:                                   ; preds = %if.end9.i1029.i
  %228 = ptrtoint ptr %args_p.i1023.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %args_p.i1023.i, align 8
  %call30.i1030.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %229) #24
  %230 = load ptr, ptr @ima_rules, align 4
  %cmp.i1031.i = icmp eq ptr %230, @ima_default_rules
  br i1 %cmp.i1031.i, label %if.then31.i1033.i, label %do.end.i1032.i.cleanup.i_crit_edge

do.end.i1032.i.cleanup.i_crit_edge:               ; preds = %do.end.i1032.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i

if.then31.i1033.i:                                ; preds = %do.end.i1032.i
  call void @__sanitizer_cov_trace_pc() #22
  %231 = ptrtoint ptr %args_p.i1023.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %args_p.i1023.i, align 8
  call void @kfree(ptr noundef %232) #20
  %233 = ptrtoint ptr %args_p.i1023.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store ptr null, ptr %args_p.i1023.i, align 8
  br label %cleanup.i

sw.bb564.i:                                       ; preds = %if.end21.i
  br i1 %tobool.not.i.i1108.i, label %sw.bb564.i.ima_log_string.exit1038.i_crit_edge, label %if.end.i.i1037.i

sw.bb564.i.ima_log_string.exit1038.i_crit_edge:   ; preds = %sw.bb564.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ima_log_string.exit1038.i

if.end.i.i1037.i:                                 ; preds = %sw.bb564.i
  call void @__sanitizer_cov_trace_pc() #22
  %234 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %args.i, align 4
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.92) #20
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.109, ptr noundef %235) #20
  br label %ima_log_string.exit1038.i

ima_log_string.exit1038.i:                        ; preds = %if.end.i.i1037.i, %sw.bb564.i.ima_log_string.exit1038.i_crit_edge
  %236 = ptrtoint ptr %arrayidx.i1039.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %arrayidx.i1039.i, align 8
  %tobool.not.i1040.i = icmp eq ptr %237, null
  br i1 %tobool.not.i1040.i, label %if.end.i1044.i, label %ima_log_string.exit1038.i.cleanup.i_crit_edge

ima_log_string.exit1038.i.cleanup.i_crit_edge:    ; preds = %ima_log_string.exit1038.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i

if.end.i1044.i:                                   ; preds = %ima_log_string.exit1038.i
  %call.i1041.i = call ptr @match_strdup(ptr noundef nonnull %args.i) #20
  %238 = ptrtoint ptr %args_p.i1042.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store ptr %call.i1041.i, ptr %args_p.i1042.i, align 4
  %tobool7.not.i1043.i = icmp eq ptr %call.i1041.i, null
  br i1 %tobool7.not.i1043.i, label %if.end.i1044.i.cleanup.i_crit_edge, label %if.end9.i1048.i

if.end.i1044.i.cleanup.i_crit_edge:               ; preds = %if.end.i1044.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i

if.end9.i1048.i:                                  ; preds = %if.end.i1044.i
  %239 = ptrtoint ptr %type.i1045.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 13, ptr %type.i1045.i, align 8
  %call21.i1046.i = call i32 @security_audit_rule_init(i32 noundef 13, i32 noundef 0, ptr noundef nonnull %call.i1041.i, ptr noundef %arrayidx.i1039.i) #20
  %240 = ptrtoint ptr %arrayidx.i1039.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %arrayidx.i1039.i, align 8
  %tobool25.not.i1047.i = icmp eq ptr %241, null
  br i1 %tobool25.not.i1047.i, label %do.end.i1051.i, label %if.end9.i1048.i.cleanup.i_crit_edge

if.end9.i1048.i.cleanup.i_crit_edge:              ; preds = %if.end9.i1048.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i

do.end.i1051.i:                                   ; preds = %if.end9.i1048.i
  %242 = ptrtoint ptr %args_p.i1042.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %args_p.i1042.i, align 4
  %call30.i1049.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %243) #24
  %244 = load ptr, ptr @ima_rules, align 4
  %cmp.i1050.i = icmp eq ptr %244, @ima_default_rules
  br i1 %cmp.i1050.i, label %if.then31.i1052.i, label %do.end.i1051.i.cleanup.i_crit_edge

do.end.i1051.i.cleanup.i_crit_edge:               ; preds = %do.end.i1051.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i

if.then31.i1052.i:                                ; preds = %do.end.i1051.i
  call void @__sanitizer_cov_trace_pc() #22
  %245 = ptrtoint ptr %args_p.i1042.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %args_p.i1042.i, align 4
  call void @kfree(ptr noundef %246) #20
  %247 = ptrtoint ptr %args_p.i1042.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store ptr null, ptr %args_p.i1042.i, align 4
  br label %cleanup.i

sw.bb569.i:                                       ; preds = %if.end21.i
  br i1 %tobool.not.i.i1108.i, label %sw.bb569.i.ima_log_string.exit1057.i_crit_edge, label %if.end.i.i1056.i

sw.bb569.i.ima_log_string.exit1057.i_crit_edge:   ; preds = %sw.bb569.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ima_log_string.exit1057.i

if.end.i.i1056.i:                                 ; preds = %sw.bb569.i
  call void @__sanitizer_cov_trace_pc() #22
  %248 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %args.i, align 4
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.93) #20
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.109, ptr noundef %249) #20
  br label %ima_log_string.exit1057.i

ima_log_string.exit1057.i:                        ; preds = %if.end.i.i1056.i, %sw.bb569.i.ima_log_string.exit1057.i_crit_edge
  %250 = ptrtoint ptr %arrayidx.i1058.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %arrayidx.i1058.i, align 4
  %tobool.not.i1059.i = icmp eq ptr %251, null
  br i1 %tobool.not.i1059.i, label %if.end.i1063.i, label %ima_log_string.exit1057.i.cleanup.i_crit_edge

ima_log_string.exit1057.i.cleanup.i_crit_edge:    ; preds = %ima_log_string.exit1057.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i

if.end.i1063.i:                                   ; preds = %ima_log_string.exit1057.i
  %call.i1060.i = call ptr @match_strdup(ptr noundef nonnull %args.i) #20
  %252 = ptrtoint ptr %args_p.i1061.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store ptr %call.i1060.i, ptr %args_p.i1061.i, align 8
  %tobool7.not.i1062.i = icmp eq ptr %call.i1060.i, null
  br i1 %tobool7.not.i1062.i, label %if.end.i1063.i.cleanup.i_crit_edge, label %if.end9.i1067.i

if.end.i1063.i.cleanup.i_crit_edge:               ; preds = %if.end.i1063.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i

if.end9.i1067.i:                                  ; preds = %if.end.i1063.i
  %253 = ptrtoint ptr %type.i1064.i to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 14, ptr %type.i1064.i, align 4
  %call21.i1065.i = call i32 @security_audit_rule_init(i32 noundef 14, i32 noundef 0, ptr noundef nonnull %call.i1060.i, ptr noundef %arrayidx.i1058.i) #20
  %254 = ptrtoint ptr %arrayidx.i1058.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %arrayidx.i1058.i, align 4
  %tobool25.not.i1066.i = icmp eq ptr %255, null
  br i1 %tobool25.not.i1066.i, label %do.end.i1070.i, label %if.end9.i1067.i.cleanup.i_crit_edge

if.end9.i1067.i.cleanup.i_crit_edge:              ; preds = %if.end9.i1067.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i

do.end.i1070.i:                                   ; preds = %if.end9.i1067.i
  %256 = ptrtoint ptr %args_p.i1061.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %args_p.i1061.i, align 8
  %call30.i1068.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %257) #24
  %258 = load ptr, ptr @ima_rules, align 4
  %cmp.i1069.i = icmp eq ptr %258, @ima_default_rules
  br i1 %cmp.i1069.i, label %if.then31.i1071.i, label %do.end.i1070.i.cleanup.i_crit_edge

do.end.i1070.i.cleanup.i_crit_edge:               ; preds = %do.end.i1070.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i

if.then31.i1071.i:                                ; preds = %do.end.i1070.i
  call void @__sanitizer_cov_trace_pc() #22
  %259 = ptrtoint ptr %args_p.i1061.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %args_p.i1061.i, align 8
  call void @kfree(ptr noundef %260) #20
  %261 = ptrtoint ptr %args_p.i1061.i to i32
  call void @__asan_store4_noabort(i32 %261)
  store ptr null, ptr %args_p.i1061.i, align 8
  br label %cleanup.i

sw.bb574.i:                                       ; preds = %if.end21.i
  br i1 %tobool.not.i.i1108.i, label %sw.bb574.i.ima_log_string.exit1076.i_crit_edge, label %if.end.i.i1075.i

sw.bb574.i.ima_log_string.exit1076.i_crit_edge:   ; preds = %sw.bb574.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ima_log_string.exit1076.i

if.end.i.i1075.i:                                 ; preds = %sw.bb574.i
  call void @__sanitizer_cov_trace_pc() #22
  %262 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %args.i, align 4
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.94) #20
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.109, ptr noundef %263) #20
  br label %ima_log_string.exit1076.i

ima_log_string.exit1076.i:                        ; preds = %if.end.i.i1075.i, %sw.bb574.i.ima_log_string.exit1076.i_crit_edge
  %264 = ptrtoint ptr %arrayidx.i1077.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %arrayidx.i1077.i, align 8
  %tobool.not.i1078.i = icmp eq ptr %265, null
  br i1 %tobool.not.i1078.i, label %if.end.i1082.i, label %ima_log_string.exit1076.i.cleanup.i_crit_edge

ima_log_string.exit1076.i.cleanup.i_crit_edge:    ; preds = %ima_log_string.exit1076.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i

if.end.i1082.i:                                   ; preds = %ima_log_string.exit1076.i
  %call.i1079.i = call ptr @match_strdup(ptr noundef nonnull %args.i) #20
  %266 = ptrtoint ptr %args_p.i1080.i to i32
  call void @__asan_store4_noabort(i32 %266)
  store ptr %call.i1079.i, ptr %args_p.i1080.i, align 4
  %tobool7.not.i1081.i = icmp eq ptr %call.i1079.i, null
  br i1 %tobool7.not.i1081.i, label %if.end.i1082.i.cleanup.i_crit_edge, label %if.end9.i1086.i

if.end.i1082.i.cleanup.i_crit_edge:               ; preds = %if.end.i1082.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i

if.end9.i1086.i:                                  ; preds = %if.end.i1082.i
  %267 = ptrtoint ptr %type.i1083.i to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 15, ptr %type.i1083.i, align 8
  %call21.i1084.i = call i32 @security_audit_rule_init(i32 noundef 15, i32 noundef 0, ptr noundef nonnull %call.i1079.i, ptr noundef %arrayidx.i1077.i) #20
  %268 = ptrtoint ptr %arrayidx.i1077.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %arrayidx.i1077.i, align 8
  %tobool25.not.i1085.i = icmp eq ptr %269, null
  br i1 %tobool25.not.i1085.i, label %do.end.i1089.i, label %if.end9.i1086.i.cleanup.i_crit_edge

if.end9.i1086.i.cleanup.i_crit_edge:              ; preds = %if.end9.i1086.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i

do.end.i1089.i:                                   ; preds = %if.end9.i1086.i
  %270 = ptrtoint ptr %args_p.i1080.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %args_p.i1080.i, align 4
  %call30.i1087.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %271) #24
  %272 = load ptr, ptr @ima_rules, align 4
  %cmp.i1088.i = icmp eq ptr %272, @ima_default_rules
  br i1 %cmp.i1088.i, label %if.then31.i1090.i, label %do.end.i1089.i.cleanup.i_crit_edge

do.end.i1089.i.cleanup.i_crit_edge:               ; preds = %do.end.i1089.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i

if.then31.i1090.i:                                ; preds = %do.end.i1089.i
  call void @__sanitizer_cov_trace_pc() #22
  %273 = ptrtoint ptr %args_p.i1080.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %args_p.i1080.i, align 4
  call void @kfree(ptr noundef %274) #20
  %275 = ptrtoint ptr %args_p.i1080.i to i32
  call void @__asan_store4_noabort(i32 %275)
  store ptr null, ptr %args_p.i1080.i, align 4
  br label %cleanup.i

sw.bb579.i:                                       ; preds = %if.end21.i
  br i1 %tobool.not.i.i1108.i, label %sw.bb579.i.ima_log_string.exit1095.i_crit_edge, label %if.end.i.i1094.i

sw.bb579.i.ima_log_string.exit1095.i_crit_edge:   ; preds = %sw.bb579.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ima_log_string.exit1095.i

if.end.i.i1094.i:                                 ; preds = %sw.bb579.i
  call void @__sanitizer_cov_trace_pc() #22
  %276 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %args.i, align 4
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.95) #20
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.109, ptr noundef %277) #20
  br label %ima_log_string.exit1095.i

ima_log_string.exit1095.i:                        ; preds = %if.end.i.i1094.i, %sw.bb579.i.ima_log_string.exit1095.i_crit_edge
  %278 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %args.i, align 4
  %call584.i = call i32 @strcmp(ptr noundef %279, ptr noundef nonnull dereferenceable(7) @.str.96) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call584.i)
  %cmp585.i = icmp eq i32 %call584.i, 0
  br i1 %cmp585.i, label %if.then587.i, label %if.else590.i

if.then587.i:                                     ; preds = %ima_log_string.exit1095.i
  call void @__sanitizer_cov_trace_pc() #22
  %280 = ptrtoint ptr %flags650.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %flags650.i, align 4
  %or589.i = or i32 %281, 16777216
  store i32 %or589.i, ptr %flags650.i, align 4
  br label %cleanup.i

if.else590.i:                                     ; preds = %ima_log_string.exit1095.i
  %call593.i = call i32 @strcmp(ptr noundef %279, ptr noundef nonnull dereferenceable(14) @.str.97) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call593.i)
  %cmp594.i = icmp eq i32 %call593.i, 0
  br i1 %cmp594.i, label %if.then596.i, label %if.else590.i.cleanup.i_crit_edge

if.else590.i.cleanup.i_crit_edge:                 ; preds = %if.else590.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i

if.then596.i:                                     ; preds = %if.else590.i
  call void @__sanitizer_cov_trace_pc() #22
  %282 = ptrtoint ptr %flags650.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %flags650.i, align 4
  %or598.i = or i32 %283, 553648128
  store i32 %or598.i, ptr %flags650.i, align 4
  br label %cleanup.i

sw.bb602.i:                                       ; preds = %if.end21.i
  br i1 %tobool.not.i.i1108.i, label %sw.bb602.i.ima_log_string.exit1098.i_crit_edge, label %if.end.i.i1097.i

sw.bb602.i.ima_log_string.exit1098.i_crit_edge:   ; preds = %sw.bb602.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ima_log_string.exit1098.i

if.end.i.i1097.i:                                 ; preds = %sw.bb602.i
  call void @__sanitizer_cov_trace_pc() #22
  %284 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %args.i, align 4
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.98) #20
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.109, ptr noundef %285) #20
  br label %ima_log_string.exit1098.i

ima_log_string.exit1098.i:                        ; preds = %if.end.i.i1097.i, %sw.bb602.i.ima_log_string.exit1098.i_crit_edge
  %286 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %args.i, align 4
  %call607.i = call ptr @strstr(ptr noundef %287, ptr noundef nonnull @.str.99) #20
  %tobool608.not.i = icmp eq ptr %call607.i, null
  br i1 %tobool608.not.i, label %ima_log_string.exit1098.i.cleanup.i_crit_edge, label %if.then609.i

ima_log_string.exit1098.i.cleanup.i_crit_edge:    ; preds = %ima_log_string.exit1098.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i

if.then609.i:                                     ; preds = %ima_log_string.exit1098.i
  call void @__sanitizer_cov_trace_pc() #22
  %288 = ptrtoint ptr %flags650.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %flags650.i, align 4
  %or611.i = or i32 %289, 1073741824
  store i32 %or611.i, ptr %flags650.i, align 4
  br label %cleanup.i

sw.bb614.i:                                       ; preds = %if.end21.i
  br i1 %tobool.not.i.i1108.i, label %sw.bb614.i.ima_log_string.exit1101.i_crit_edge, label %if.end.i.i1100.i

sw.bb614.i.ima_log_string.exit1101.i_crit_edge:   ; preds = %sw.bb614.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ima_log_string.exit1101.i

if.end.i.i1100.i:                                 ; preds = %sw.bb614.i
  call void @__sanitizer_cov_trace_pc() #22
  %290 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %args.i, align 4
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.100) #20
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.109, ptr noundef %291) #20
  br label %ima_log_string.exit1101.i

ima_log_string.exit1101.i:                        ; preds = %if.end.i.i1100.i, %sw.bb614.i.ima_log_string.exit1101.i_crit_edge
  %292 = ptrtoint ptr %allowed_algos.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %allowed_algos.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %293)
  %tobool617.not.i = icmp eq i32 %293, 0
  br i1 %tobool617.not.i, label %if.end619.i, label %ima_log_string.exit1101.i.cleanup.i_crit_edge

ima_log_string.exit1101.i.cleanup.i_crit_edge:    ; preds = %ima_log_string.exit1101.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i

if.end619.i:                                      ; preds = %ima_log_string.exit1101.i
  %294 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %arg.addr.i.i) #20
  %296 = ptrtoint ptr %arg.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %296)
  store ptr %295, ptr %arg.addr.i.i, align 4
  %call23.i.i = call ptr @strsep(ptr noundef nonnull %arg.addr.i.i, ptr noundef nonnull @.str.111) #20
  %cmp.not24.i.i = icmp eq ptr %call23.i.i, null
  br i1 %cmp.not24.i.i, label %if.end619.i.ima_parse_appraise_algos.exit.thread.i_crit_edge, label %if.end619.i.while.body.i.i_crit_edge

if.end619.i.while.body.i.i_crit_edge:             ; preds = %if.end619.i
  br label %while.body.i.i

if.end619.i.ima_parse_appraise_algos.exit.thread.i_crit_edge: ; preds = %if.end619.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ima_parse_appraise_algos.exit.thread.i

while.body.i.i:                                   ; preds = %if.end11.i.i.while.body.i.i_crit_edge, %if.end619.i.while.body.i.i_crit_edge
  %call26.i.i = phi ptr [ %call.i1106.i, %if.end11.i.i.while.body.i.i_crit_edge ], [ %call23.i.i, %if.end619.i.while.body.i.i_crit_edge ]
  %res.025.i.i = phi i32 [ %or.i.i, %if.end11.i.i.while.body.i.i_crit_edge ], [ 0, %if.end619.i.while.body.i.i_crit_edge ]
  %call1.i.i = call i32 @match_string(ptr noundef nonnull @hash_algo_name, i32 noundef 20, ptr noundef nonnull %call26.i.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp2.i.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp2.i.i, label %while.body.i.i.ima_parse_appraise_algos.exit.thread.i.sink.split_crit_edge, label %if.end.i1105.i

while.body.i.i.ima_parse_appraise_algos.exit.thread.i.sink.split_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ima_parse_appraise_algos.exit.thread.i.sink.split

if.end.i1105.i:                                   ; preds = %while.body.i.i
  %arrayidx.i1103.i = getelementptr [20 x ptr], ptr @hash_algo_name, i32 0, i32 %call1.i.i
  %297 = ptrtoint ptr %arrayidx.i1103.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %arrayidx.i1103.i, align 4
  %call4.i.i = call i32 @crypto_has_alg(ptr noundef %298, i32 noundef 0, i32 noundef 0) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool.not.i1104.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool.not.i1104.i, label %if.end.i1105.i.ima_parse_appraise_algos.exit.thread.i.sink.split_crit_edge, label %if.end11.i.i

if.end.i1105.i.ima_parse_appraise_algos.exit.thread.i.sink.split_crit_edge: ; preds = %if.end.i1105.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ima_parse_appraise_algos.exit.thread.i.sink.split

if.end11.i.i:                                     ; preds = %if.end.i1105.i
  %shl.i.i = shl nuw i32 1, %call1.i.i
  %or.i.i = or i32 %shl.i.i, %res.025.i.i
  %call.i1106.i = call ptr @strsep(ptr noundef nonnull %arg.addr.i.i, ptr noundef nonnull @.str.111) #20
  %cmp.not.i.i = icmp eq ptr %call.i1106.i, null
  br i1 %cmp.not.i.i, label %if.end627.i, label %if.end11.i.i.while.body.i.i_crit_edge

if.end11.i.i.while.body.i.i_crit_edge:            ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body.i.i

ima_parse_appraise_algos.exit.thread.i.sink.split: ; preds = %if.end.i1105.i.ima_parse_appraise_algos.exit.thread.i.sink.split_crit_edge, %while.body.i.i.ima_parse_appraise_algos.exit.thread.i.sink.split_crit_edge
  %.str.115.sink = phi ptr [ @.str.112, %while.body.i.i.ima_parse_appraise_algos.exit.thread.i.sink.split_crit_edge ], [ @.str.115, %if.end.i1105.i.ima_parse_appraise_algos.exit.thread.i.sink.split_crit_edge ]
  %call10.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.115.sink, ptr noundef nonnull %call26.i.i) #24
  br label %ima_parse_appraise_algos.exit.thread.i

ima_parse_appraise_algos.exit.thread.i:           ; preds = %ima_parse_appraise_algos.exit.thread.i.sink.split, %if.end619.i.ima_parse_appraise_algos.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arg.addr.i.i) #20
  %299 = ptrtoint ptr %allowed_algos.i to i32
  call void @__asan_store4_noabort(i32 %299)
  store i32 0, ptr %allowed_algos.i, align 8
  br label %cleanup.i

if.end627.i:                                      ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arg.addr.i.i) #20
  %300 = ptrtoint ptr %allowed_algos.i to i32
  call void @__asan_store4_noabort(i32 %300)
  store i32 %or.i.i, ptr %allowed_algos.i, align 8
  %301 = ptrtoint ptr %flags650.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %flags650.i, align 4
  %or629.i = or i32 %302, 4096
  store i32 %or629.i, ptr %flags650.i, align 4
  br label %cleanup.i

sw.bb630.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #22
  %303 = ptrtoint ptr %flags650.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %flags650.i, align 4
  %or632.i = or i32 %304, 33554432
  store i32 %or632.i, ptr %flags650.i, align 4
  br label %cleanup.i

sw.bb633.i:                                       ; preds = %if.end21.i
  br i1 %tobool.not.i.i1108.i, label %sw.bb633.i.ima_log_string.exit1110.i_crit_edge, label %if.end.i.i1109.i

sw.bb633.i.ima_log_string.exit1110.i_crit_edge:   ; preds = %sw.bb633.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ima_log_string.exit1110.i

if.end.i.i1109.i:                                 ; preds = %sw.bb633.i
  call void @__sanitizer_cov_trace_pc() #22
  %305 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %args.i, align 4
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.101) #20
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.109, ptr noundef %306) #20
  br label %ima_log_string.exit1110.i

ima_log_string.exit1110.i:                        ; preds = %if.end.i.i1109.i, %sw.bb633.i.ima_log_string.exit1110.i_crit_edge
  %307 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %args.i, align 4
  %call638.i = call i32 @kstrtoint(ptr noundef %308, i32 noundef 10, ptr noundef %pcr.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call638.i)
  %tobool639.not.i = icmp eq i32 %call638.i, 0
  br i1 %tobool639.not.i, label %lor.lhs.false640.i, label %ima_log_string.exit1110.i.cleanup.i_crit_edge

ima_log_string.exit1110.i.cleanup.i_crit_edge:    ; preds = %ima_log_string.exit1110.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i

lor.lhs.false640.i:                               ; preds = %ima_log_string.exit1110.i
  %309 = ptrtoint ptr %pcr.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %pcr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %310)
  %cmp646.i = icmp ugt i32 %310, 31
  br i1 %cmp646.i, label %lor.lhs.false640.i.cleanup.i_crit_edge, label %if.else649.i

lor.lhs.false640.i.cleanup.i_crit_edge:           ; preds = %lor.lhs.false640.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i

if.else649.i:                                     ; preds = %lor.lhs.false640.i
  call void @__sanitizer_cov_trace_pc() #22
  %311 = ptrtoint ptr %flags650.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %flags650.i, align 4
  %or651.i = or i32 %312, 256
  store i32 %or651.i, ptr %flags650.i, align 4
  br label %cleanup.i

sw.bb653.i:                                       ; preds = %if.end21.i
  br i1 %tobool.not.i.i1108.i, label %sw.bb653.i.ima_log_string.exit1113.i_crit_edge, label %if.end.i.i1112.i

sw.bb653.i.ima_log_string.exit1113.i_crit_edge:   ; preds = %sw.bb653.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ima_log_string.exit1113.i

if.end.i.i1112.i:                                 ; preds = %sw.bb653.i
  call void @__sanitizer_cov_trace_pc() #22
  %313 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %args.i, align 4
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.102) #20
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.109, ptr noundef %314) #20
  br label %ima_log_string.exit1113.i

ima_log_string.exit1113.i:                        ; preds = %if.end.i.i1112.i, %sw.bb653.i.ima_log_string.exit1113.i_crit_edge
  %315 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %action.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %316)
  %cmp657.not.i = icmp eq i32 %316, 1
  br i1 %cmp657.not.i, label %if.end660.i, label %ima_log_string.exit1113.i.cleanup.i_crit_edge

ima_log_string.exit1113.i.cleanup.i_crit_edge:    ; preds = %ima_log_string.exit1113.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i

if.end660.i:                                      ; preds = %ima_log_string.exit1113.i
  %317 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %args.i, align 4
  %call663.i = call ptr @lookup_template_desc(ptr noundef %318) #20
  %tobool664.not.i = icmp eq ptr %call663.i, null
  br i1 %tobool664.not.i, label %if.end660.i.cleanup.i_crit_edge, label %lor.lhs.false665.i

if.end660.i.cleanup.i_crit_edge:                  ; preds = %if.end660.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i

lor.lhs.false665.i:                               ; preds = %if.end660.i
  %319 = ptrtoint ptr %template.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %template.i, align 8
  %tobool666.not.i = icmp eq ptr %320, null
  br i1 %tobool666.not.i, label %if.end668.i, label %lor.lhs.false665.i.cleanup.i_crit_edge

lor.lhs.false665.i.cleanup.i_crit_edge:           ; preds = %lor.lhs.false665.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i

if.end668.i:                                      ; preds = %lor.lhs.false665.i
  call void @__sanitizer_cov_trace_pc() #22
  %fmt.i = getelementptr inbounds %struct.ima_template_desc, ptr %call663.i, i32 0, i32 2
  %321 = ptrtoint ptr %fmt.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %fmt.i, align 4
  %fields.i = getelementptr inbounds %struct.ima_template_desc, ptr %call663.i, i32 0, i32 4
  %num_fields.i = getelementptr inbounds %struct.ima_template_desc, ptr %call663.i, i32 0, i32 3
  %call669.i = call i32 @template_desc_init_fields(ptr noundef %322, ptr noundef %fields.i, ptr noundef %num_fields.i) #20
  %323 = ptrtoint ptr %template.i to i32
  call void @__asan_store4_noabort(i32 %323)
  store ptr %call663.i, ptr %template.i, align 8
  br label %cleanup.i

sw.bb671.i:                                       ; preds = %if.end21.i
  br i1 %tobool.not.i.i1108.i, label %sw.bb671.i.cleanup.i_crit_edge, label %if.end.i.i1115.i

sw.bb671.i.cleanup.i_crit_edge:                   ; preds = %sw.bb671.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.i

if.end.i.i1115.i:                                 ; preds = %sw.bb671.i
  call void @__sanitizer_cov_trace_pc() #22
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.103) #20
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.109, ptr noundef nonnull %call91159.i) #20
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i.i1115.i, %sw.bb671.i.cleanup.i_crit_edge, %if.end668.i, %lor.lhs.false665.i.cleanup.i_crit_edge, %if.end660.i.cleanup.i_crit_edge, %ima_log_string.exit1113.i.cleanup.i_crit_edge, %if.else649.i, %lor.lhs.false640.i.cleanup.i_crit_edge, %ima_log_string.exit1110.i.cleanup.i_crit_edge, %sw.bb630.i, %if.end627.i, %ima_parse_appraise_algos.exit.thread.i, %ima_log_string.exit1101.i.cleanup.i_crit_edge, %if.then609.i, %ima_log_string.exit1098.i.cleanup.i_crit_edge, %if.then596.i, %if.else590.i.cleanup.i_crit_edge, %if.then587.i, %if.then31.i1090.i, %do.end.i1089.i.cleanup.i_crit_edge, %if.end9.i1086.i.cleanup.i_crit_edge, %if.end.i1082.i.cleanup.i_crit_edge, %ima_log_string.exit1076.i.cleanup.i_crit_edge, %if.then31.i1071.i, %do.end.i1070.i.cleanup.i_crit_edge, %if.end9.i1067.i.cleanup.i_crit_edge, %if.end.i1063.i.cleanup.i_crit_edge, %ima_log_string.exit1057.i.cleanup.i_crit_edge, %if.then31.i1052.i, %do.end.i1051.i.cleanup.i_crit_edge, %if.end9.i1048.i.cleanup.i_crit_edge, %if.end.i1044.i.cleanup.i_crit_edge, %ima_log_string.exit1038.i.cleanup.i_crit_edge, %if.then31.i1033.i, %do.end.i1032.i.cleanup.i_crit_edge, %if.end9.i1029.i.cleanup.i_crit_edge, %if.end.i1025.i.cleanup.i_crit_edge, %ima_log_string.exit1019.i.cleanup.i_crit_edge, %if.then31.i1014.i, %do.end.i1013.i.cleanup.i_crit_edge, %if.end9.i1010.i.cleanup.i_crit_edge, %if.end.i1006.i.cleanup.i_crit_edge, %ima_log_string.exit1000.i.cleanup.i_crit_edge, %if.then31.i.i, %do.end.i.i.cleanup.i_crit_edge, %if.end9.i.i.cleanup.i_crit_edge, %if.end.i996.i.cleanup.i_crit_edge, %ima_log_string.exit993.i.cleanup.i_crit_edge, %if.else544.i, %if.then523.i.cleanup.i_crit_edge, %if.end518.i.cleanup.i_crit_edge, %ima_log_string_op.exit986.i.cleanup.i_crit_edge, %if.else498.i, %if.then477.i.cleanup.i_crit_edge, %if.end472.i.cleanup.i_crit_edge, %ima_log_string_op.exit975.i.cleanup.i_crit_edge, %if.else449.i, %if.then428.i.cleanup.i_crit_edge, %if.end423.i.cleanup.i_crit_edge, %ima_log_string_op.exit964.i.cleanup.i_crit_edge, %if.else384.i, %if.then370.i.cleanup.i_crit_edge, %if.end365.i.cleanup.i_crit_edge, %ima_log_string_op.exit.i.cleanup.i_crit_edge, %if.then334.i, %if.end328.i.cleanup.i_crit_edge, %ima_log_string.exit954.i.cleanup.i_crit_edge, %if.end320.i, %if.then316.i, %ima_log_string.exit950.i.cleanup.i_crit_edge, %if.end302.i, %if.then298.i, %ima_log_string.exit947.i.cleanup.i_crit_edge, %if.end284.i, %ima_log_string.exit944.i.cleanup.i_crit_edge, %if.then271.i, %if.end265.i.cleanup.i_crit_edge, %ima_log_string.exit940.i.cleanup.i_crit_edge, %if.then251.i, %if.end249.i.cleanup.i_crit_edge, %if.else239.i.cleanup.i_crit_edge, %if.then207.i, %if.end205.i.cleanup.i_crit_edge, %if.else183.i.cleanup.i_crit_edge, %ima_log_string.exit931.i, %ima_log_string.exit928.i, %ima_log_string.exit925.i, %ima_log_string.exit922.i, %ima_log_string.exit919.i, %ima_log_string.exit916.i, %ima_log_string.exit.i, %if.end21.i.cleanup.i_crit_edge, %if.end.i.cleanup.i_crit_edge, %if.end.i.cleanup.i_crit_edge76, %if.end.i.cleanup.i_crit_edge77
  %result.13.i = phi i32 [ %result.01158.i, %if.end.i.cleanup.i_crit_edge ], [ %result.01158.i, %if.end.i.cleanup.i_crit_edge76 ], [ %result.01158.i, %if.end.i.cleanup.i_crit_edge77 ], [ %result.01158.i, %if.end21.i.cleanup.i_crit_edge ], [ %result.01158.i, %if.end668.i ], [ 0, %if.else649.i ], [ %result.01158.i, %sw.bb630.i ], [ %result.01158.i, %if.end627.i ], [ %result.01158.i, %if.then609.i ], [ %result.01158.i, %if.then587.i ], [ %result.01158.i, %if.then596.i ], [ %call.i988.i, %if.end518.i.cleanup.i_crit_edge ], [ 0, %if.else544.i ], [ %call.i977.i, %if.end472.i.cleanup.i_crit_edge ], [ 0, %if.else498.i ], [ %call.i966.i, %if.end423.i.cleanup.i_crit_edge ], [ 0, %if.else449.i ], [ %call.i956.i, %if.end365.i.cleanup.i_crit_edge ], [ 0, %if.else384.i ], [ %call332.i, %if.end328.i.cleanup.i_crit_edge ], [ 0, %if.then334.i ], [ %92, %if.then316.i ], [ %result.01158.i, %if.end320.i ], [ %83, %if.then298.i ], [ %result.01158.i, %if.end302.i ], [ 0, %if.end284.i ], [ %call.i941.i, %if.end265.i.cleanup.i_crit_edge ], [ 0, %if.then271.i ], [ %spec.select913.i, %if.end249.i.cleanup.i_crit_edge ], [ 0, %if.then251.i ], [ %spec.select912.i, %if.end205.i.cleanup.i_crit_edge ], [ 0, %if.then207.i ], [ %spec.select911.i, %ima_log_string.exit931.i ], [ %spec.select910.i, %ima_log_string.exit928.i ], [ %spec.select909.i, %ima_log_string.exit925.i ], [ %spec.select908.i, %ima_log_string.exit922.i ], [ %spec.select907.i, %ima_log_string.exit919.i ], [ %spec.select906.i, %ima_log_string.exit916.i ], [ %spec.select.i, %ima_log_string.exit.i ], [ -22, %ima_log_string.exit940.i.cleanup.i_crit_edge ], [ -12, %ima_log_string.exit944.i.cleanup.i_crit_edge ], [ -22, %ima_log_string.exit947.i.cleanup.i_crit_edge ], [ -22, %ima_log_string.exit950.i.cleanup.i_crit_edge ], [ -22, %ima_log_string.exit954.i.cleanup.i_crit_edge ], [ -22, %ima_log_string_op.exit.i.cleanup.i_crit_edge ], [ -22, %if.then370.i.cleanup.i_crit_edge ], [ -22, %ima_log_string_op.exit964.i.cleanup.i_crit_edge ], [ -22, %if.then428.i.cleanup.i_crit_edge ], [ -22, %ima_log_string_op.exit975.i.cleanup.i_crit_edge ], [ -22, %if.then477.i.cleanup.i_crit_edge ], [ -22, %ima_log_string_op.exit986.i.cleanup.i_crit_edge ], [ -22, %if.then523.i.cleanup.i_crit_edge ], [ -22, %if.else590.i.cleanup.i_crit_edge ], [ -22, %ima_log_string.exit1098.i.cleanup.i_crit_edge ], [ -22, %ima_log_string.exit1101.i.cleanup.i_crit_edge ], [ -22, %lor.lhs.false640.i.cleanup.i_crit_edge ], [ -22, %ima_log_string.exit1110.i.cleanup.i_crit_edge ], [ -22, %ima_log_string.exit1113.i.cleanup.i_crit_edge ], [ -22, %lor.lhs.false665.i.cleanup.i_crit_edge ], [ -22, %if.end660.i.cleanup.i_crit_edge ], [ -22, %ima_log_string.exit993.i.cleanup.i_crit_edge ], [ -12, %if.end.i996.i.cleanup.i_crit_edge ], [ %call21.i.i, %if.end9.i.i.cleanup.i_crit_edge ], [ -22, %if.then31.i.i ], [ 0, %do.end.i.i.cleanup.i_crit_edge ], [ -22, %ima_log_string.exit1000.i.cleanup.i_crit_edge ], [ -12, %if.end.i1006.i.cleanup.i_crit_edge ], [ %call21.i1008.i, %if.end9.i1010.i.cleanup.i_crit_edge ], [ -22, %if.then31.i1014.i ], [ 0, %do.end.i1013.i.cleanup.i_crit_edge ], [ -22, %ima_log_string.exit1019.i.cleanup.i_crit_edge ], [ -12, %if.end.i1025.i.cleanup.i_crit_edge ], [ %call21.i1027.i, %if.end9.i1029.i.cleanup.i_crit_edge ], [ -22, %if.then31.i1033.i ], [ 0, %do.end.i1032.i.cleanup.i_crit_edge ], [ -22, %ima_log_string.exit1038.i.cleanup.i_crit_edge ], [ -12, %if.end.i1044.i.cleanup.i_crit_edge ], [ %call21.i1046.i, %if.end9.i1048.i.cleanup.i_crit_edge ], [ -22, %if.then31.i1052.i ], [ 0, %do.end.i1051.i.cleanup.i_crit_edge ], [ -22, %ima_log_string.exit1057.i.cleanup.i_crit_edge ], [ -12, %if.end.i1063.i.cleanup.i_crit_edge ], [ %call21.i1065.i, %if.end9.i1067.i.cleanup.i_crit_edge ], [ -22, %if.then31.i1071.i ], [ 0, %do.end.i1070.i.cleanup.i_crit_edge ], [ -22, %ima_log_string.exit1076.i.cleanup.i_crit_edge ], [ -12, %if.end.i1082.i.cleanup.i_crit_edge ], [ %call21.i1084.i, %if.end9.i1086.i.cleanup.i_crit_edge ], [ -22, %if.then31.i1090.i ], [ 0, %do.end.i1089.i.cleanup.i_crit_edge ], [ -22, %ima_parse_appraise_algos.exit.thread.i ], [ -22, %sw.bb671.i.cleanup.i_crit_edge ], [ -22, %if.end.i.i1115.i ], [ -22, %if.else183.i.cleanup.i_crit_edge ], [ -22, %if.else239.i.cleanup.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lnum.i) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args.i) #20
  %call9.i = call ptr @strsep(ptr noundef nonnull %rule.addr.i, ptr noundef nonnull @.str.8) #20
  %cmp.not.i = icmp eq ptr %call9.i, null
  br i1 %cmp.not.i, label %while.end.i, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body.i

while.end.i:                                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.13.i)
  %tobool674.not.i = icmp eq i32 %result.13.i, 0
  br i1 %tobool674.not.i, label %while.end.i.land.lhs.true.i_crit_edge, label %while.end.i.if.else677.i_crit_edge

while.end.i.if.else677.i_crit_edge:               ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else677.i

while.end.i.land.lhs.true.i_crit_edge:            ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %while.end.i.land.lhs.true.i_crit_edge, %if.end10.land.lhs.true.i_crit_edge
  %324 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %action.i, align 8
  %326 = zext i32 %325 to i64
  call void @__sanitizer_cov_trace_switch(i64 %326, ptr @__sancov_gen_cov_switch_values.176)
  switch i32 %325, label %land.lhs.true.i.i [
    i32 0, label %land.lhs.true.i.ima_parse_rule.exit_crit_edge
    i32 1, label %land.lhs.true.i.land.lhs.true8.i.i_crit_edge
  ]

land.lhs.true.i.land.lhs.true8.i.i_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %land.lhs.true8.i.i

land.lhs.true.i.ima_parse_rule.exit_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ima_parse_rule.exit

land.lhs.true.i.i:                                ; preds = %land.lhs.true.i
  %flags.i.i = getelementptr inbounds %struct.ima_rule_entry, ptr %call7.i.i, i32 0, i32 2
  %327 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %flags.i.i, align 4
  %and.i1117.i = and i32 %328, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1117.i)
  %tobool.not.i1118.i = icmp eq i32 %and.i1117.i, 0
  br i1 %tobool.not.i1118.i, label %if.end5.i.i, label %land.lhs.true.i.i.ima_parse_rule.exit_crit_edge

land.lhs.true.i.i.ima_parse_rule.exit_crit_edge:  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ima_parse_rule.exit

if.end5.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %325)
  %cmp7.not.i.i = icmp eq i32 %325, 4
  br i1 %cmp7.not.i.i, label %if.end5.i.i.if.end13.i.i_crit_edge, label %if.end5.i.i.land.lhs.true8.i.i_crit_edge

if.end5.i.i.land.lhs.true8.i.i_crit_edge:         ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %land.lhs.true8.i.i

if.end5.i.i.if.end13.i.i_crit_edge:               ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end13.i.i

land.lhs.true8.i.i:                               ; preds = %if.end5.i.i.land.lhs.true8.i.i_crit_edge, %land.lhs.true.i.land.lhs.true8.i.i_crit_edge
  %flags9.i.i = getelementptr inbounds %struct.ima_rule_entry, ptr %call7.i.i, i32 0, i32 2
  %329 = ptrtoint ptr %flags9.i.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %flags9.i.i, align 4
  %and10.i.i = and i32 %330, 1627394048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i)
  %tobool11.not.i.i = icmp eq i32 %and10.i.i, 0
  br i1 %tobool11.not.i.i, label %land.lhs.true8.i.i.if.end13.i.i_crit_edge, label %land.lhs.true8.i.i.ima_parse_rule.exit_crit_edge

land.lhs.true8.i.i.ima_parse_rule.exit_crit_edge: ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ima_parse_rule.exit

land.lhs.true8.i.i.if.end13.i.i_crit_edge:        ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %land.lhs.true8.i.i.if.end13.i.i_crit_edge, %if.end5.i.i.if.end13.i.i_crit_edge
  %cmp7.not128.i.i = phi i1 [ false, %land.lhs.true8.i.i.if.end13.i.i_crit_edge ], [ true, %if.end5.i.i.if.end13.i.i_crit_edge ]
  %flags14.i.i = getelementptr inbounds %struct.ima_rule_entry, ptr %call7.i.i, i32 0, i32 2
  %331 = ptrtoint ptr %flags14.i.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %flags14.i.i, align 4
  %and15.i.i = and i32 %332, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i.i)
  %tobool16.not.i.i = icmp eq i32 %and15.i.i, 0
  %func23.i.i = getelementptr inbounds %struct.ima_rule_entry, ptr %call7.i.i, i32 0, i32 3
  %333 = ptrtoint ptr %func23.i.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %func23.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %334)
  %cmp24.not.i.i = icmp eq i32 %334, 0
  br i1 %tobool16.not.i.i, label %land.lhs.true22.i.i, label %land.lhs.true17.i.i

land.lhs.true17.i.i:                              ; preds = %if.end13.i.i
  br i1 %cmp24.not.i.i, label %land.lhs.true17.i.i.ima_parse_rule.exit_crit_edge, label %if.end26.i.i

land.lhs.true17.i.i.ima_parse_rule.exit_crit_edge: ; preds = %land.lhs.true17.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ima_parse_rule.exit

land.lhs.true22.i.i:                              ; preds = %if.end13.i.i
  %and29.i.i = and i32 %332, -50394112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i.i)
  %tobool30.not.i.i = icmp eq i32 %and29.i.i, 0
  %or.cond.i = select i1 %cmp24.not.i.i, i1 %tobool30.not.i.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true22.i.i.ima_validate_rule.exit.i_crit_edge, label %land.lhs.true22.i.i.ima_parse_rule.exit_crit_edge

land.lhs.true22.i.i.ima_parse_rule.exit_crit_edge: ; preds = %land.lhs.true22.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ima_parse_rule.exit

land.lhs.true22.i.i.ima_validate_rule.exit.i_crit_edge: ; preds = %land.lhs.true22.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ima_validate_rule.exit.i

if.end26.i.i:                                     ; preds = %land.lhs.true17.i.i
  %335 = zext i32 %334 to i64
  call void @__sanitizer_cov_trace_switch(i64 %335, ptr @__sancov_gen_cov_switch_values.177)
  switch i32 %334, label %if.end26.i.i.ima_parse_rule.exit_crit_edge [
    i32 14, label %sw.bb77.i.i
    i32 1, label %if.end26.i.i.sw.bb.i.i_crit_edge
    i32 2, label %if.end26.i.i.sw.bb.i.i_crit_edge82
    i32 3, label %if.end26.i.i.sw.bb.i.i_crit_edge83
    i32 4, label %if.end26.i.i.sw.bb.i.i_crit_edge84
    i32 5, label %if.end26.i.i.sw.bb.i.i_crit_edge85
    i32 7, label %if.end26.i.i.sw.bb.i.i_crit_edge86
    i32 10, label %if.end26.i.i.sw.bb.i.i_crit_edge87
    i32 6, label %if.end26.i.i.sw.bb33.i.i_crit_edge
    i32 8, label %if.end26.i.i.sw.bb33.i.i_crit_edge88
    i32 9, label %if.end26.i.i.sw.bb33.i.i_crit_edge89
    i32 11, label %sw.bb39.i.i
    i32 12, label %sw.bb50.i.i
    i32 13, label %sw.bb63.i.i
  ]

if.end26.i.i.sw.bb33.i.i_crit_edge89:             ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb33.i.i

if.end26.i.i.sw.bb33.i.i_crit_edge88:             ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb33.i.i

if.end26.i.i.sw.bb33.i.i_crit_edge:               ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb33.i.i

if.end26.i.i.sw.bb.i.i_crit_edge87:               ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.i.i

if.end26.i.i.sw.bb.i.i_crit_edge86:               ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.i.i

if.end26.i.i.sw.bb.i.i_crit_edge85:               ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.i.i

if.end26.i.i.sw.bb.i.i_crit_edge84:               ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.i.i

if.end26.i.i.sw.bb.i.i_crit_edge83:               ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.i.i

if.end26.i.i.sw.bb.i.i_crit_edge82:               ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.i.i

if.end26.i.i.sw.bb.i.i_crit_edge:                 ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.bb.i.i

if.end26.i.i.ima_parse_rule.exit_crit_edge:       ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ima_parse_rule.exit

sw.bb.i.i:                                        ; preds = %if.end26.i.i.sw.bb.i.i_crit_edge, %if.end26.i.i.sw.bb.i.i_crit_edge82, %if.end26.i.i.sw.bb.i.i_crit_edge83, %if.end26.i.i.sw.bb.i.i_crit_edge84, %if.end26.i.i.sw.bb.i.i_crit_edge85, %if.end26.i.i.sw.bb.i.i_crit_edge86, %if.end26.i.i.sw.bb.i.i_crit_edge87
  %and29.i.old.i = and i32 %332, -50394112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i.old.i)
  %tobool30.not.i.old.i = icmp eq i32 %and29.i.old.i, 0
  br i1 %tobool30.not.i.old.i, label %sw.bb.i.i.ima_validate_rule.exit.i_crit_edge, label %sw.bb.i.i.ima_parse_rule.exit_crit_edge

sw.bb.i.i.ima_parse_rule.exit_crit_edge:          ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ima_parse_rule.exit

sw.bb.i.i.ima_validate_rule.exit.i_crit_edge:     ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ima_validate_rule.exit.i

sw.bb33.i.i:                                      ; preds = %if.end26.i.i.sw.bb33.i.i_crit_edge, %if.end26.i.i.sw.bb33.i.i_crit_edge88, %if.end26.i.i.sw.bb33.i.i_crit_edge89
  %and35.i.i = and i32 %332, -1661006848
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i.i)
  %tobool36.not.i.i = icmp eq i32 %and35.i.i, 0
  br i1 %tobool36.not.i.i, label %sw.bb33.i.i.ima_validate_rule.exit.i_crit_edge, label %sw.bb33.i.i.ima_parse_rule.exit_crit_edge

sw.bb33.i.i.ima_parse_rule.exit_crit_edge:        ; preds = %sw.bb33.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ima_parse_rule.exit

sw.bb33.i.i.ima_validate_rule.exit.i_crit_edge:   ; preds = %sw.bb33.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ima_validate_rule.exit.i

sw.bb39.i.i:                                      ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %325)
  %tobool42.not.i.i = icmp ult i32 %325, 4
  %and46.i.i = and i32 %332, -58302
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i.i)
  %tobool47.not.i.i = icmp eq i32 %and46.i.i, 0
  %or.cond129.i.i = select i1 %tobool42.not.i.i, i1 %tobool47.not.i.i, i1 false
  br i1 %or.cond129.i.i, label %sw.bb39.i.i.ima_validate_rule.exit.i_crit_edge, label %sw.bb39.i.i.ima_parse_rule.exit_crit_edge

sw.bb39.i.i.ima_parse_rule.exit_crit_edge:        ; preds = %sw.bb39.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ima_parse_rule.exit

sw.bb39.i.i.ima_validate_rule.exit.i_crit_edge:   ; preds = %sw.bb39.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ima_validate_rule.exit.i

sw.bb50.i.i:                                      ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %325)
  %tobool53.not.i.i = icmp ult i32 %325, 4
  %and57.i.i = and i32 %332, -9482
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57.i.i)
  %tobool58.not.i.i = icmp eq i32 %and57.i.i, 0
  %or.cond130.i.i = select i1 %tobool53.not.i.i, i1 %tobool58.not.i.i, i1 false
  br i1 %or.cond130.i.i, label %if.end60.i.i, label %sw.bb50.i.i.ima_parse_rule.exit_crit_edge

sw.bb50.i.i.ima_parse_rule.exit_crit_edge:        ; preds = %sw.bb50.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ima_parse_rule.exit

if.end60.i.i:                                     ; preds = %sw.bb50.i.i
  %call.i1119.i = call fastcc zeroext i1 @ima_rule_contains_lsm_cond(ptr noundef %call7.i.i) #20
  br i1 %call.i1119.i, label %if.end60.i.i.ima_parse_rule.exit_crit_edge, label %if.end60.i.i.ima_validate_rule.exit.i_crit_edge

if.end60.i.i.ima_validate_rule.exit.i_crit_edge:  ; preds = %if.end60.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ima_validate_rule.exit.i

if.end60.i.i.ima_parse_rule.exit_crit_edge:       ; preds = %if.end60.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ima_parse_rule.exit

sw.bb63.i.i:                                      ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %325)
  %tobool66.not.i.i = icmp ult i32 %325, 4
  %and70.i.i = and i32 %332, -10506
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.i.i)
  %tobool71.not.i.i = icmp eq i32 %and70.i.i, 0
  %or.cond131.i.i = select i1 %tobool66.not.i.i, i1 %tobool71.not.i.i, i1 false
  br i1 %or.cond131.i.i, label %if.end73.i.i, label %sw.bb63.i.i.ima_parse_rule.exit_crit_edge

sw.bb63.i.i.ima_parse_rule.exit_crit_edge:        ; preds = %sw.bb63.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ima_parse_rule.exit

if.end73.i.i:                                     ; preds = %sw.bb63.i.i
  %call74.i.i = call fastcc zeroext i1 @ima_rule_contains_lsm_cond(ptr noundef %call7.i.i) #20
  br i1 %call74.i.i, label %if.end73.i.i.ima_parse_rule.exit_crit_edge, label %if.end73.i.i.ima_validate_rule.exit.i_crit_edge

if.end73.i.i.ima_validate_rule.exit.i_crit_edge:  ; preds = %if.end73.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ima_validate_rule.exit.i

if.end73.i.i.ima_parse_rule.exit_crit_edge:       ; preds = %if.end73.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ima_parse_rule.exit

sw.bb77.i.i:                                      ; preds = %if.end26.i.i
  %336 = and i32 %332, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %336)
  %337 = icmp eq i32 %336, 4096
  %or.cond.i.i = select i1 %cmp7.not128.i.i, i1 %337, i1 false
  br i1 %or.cond.i.i, label %sw.bb77.i.i.ima_validate_rule.exit.i_crit_edge, label %sw.bb77.i.i.ima_parse_rule.exit_crit_edge

sw.bb77.i.i.ima_parse_rule.exit_crit_edge:        ; preds = %sw.bb77.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ima_parse_rule.exit

sw.bb77.i.i.ima_validate_rule.exit.i_crit_edge:   ; preds = %sw.bb77.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ima_validate_rule.exit.i

ima_validate_rule.exit.i:                         ; preds = %sw.bb77.i.i.ima_validate_rule.exit.i_crit_edge, %if.end73.i.i.ima_validate_rule.exit.i_crit_edge, %if.end60.i.i.ima_validate_rule.exit.i_crit_edge, %sw.bb39.i.i.ima_validate_rule.exit.i_crit_edge, %sw.bb33.i.i.ima_validate_rule.exit.i_crit_edge, %sw.bb.i.i.ima_validate_rule.exit.i_crit_edge, %land.lhs.true22.i.i.ima_validate_rule.exit.i_crit_edge
  %338 = and i32 %332, 1610612736
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %338)
  %.not.i = icmp eq i32 %338, 1073741824
  br i1 %.not.i, label %ima_validate_rule.exit.i.ima_parse_rule.exit_crit_edge, label %ima_validate_rule.exit.i.if.else677.i_crit_edge

ima_validate_rule.exit.i.if.else677.i_crit_edge:  ; preds = %ima_validate_rule.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else677.i

ima_validate_rule.exit.i.ima_parse_rule.exit_crit_edge: ; preds = %ima_validate_rule.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ima_parse_rule.exit

if.else677.i:                                     ; preds = %ima_validate_rule.exit.i.if.else677.i_crit_edge, %while.end.i.if.else677.i_crit_edge, %while.end.thread.i
  %result.141145.i = phi i32 [ %result.01158.i, %while.end.thread.i ], [ 0, %ima_validate_rule.exit.i.if.else677.i_crit_edge ], [ %result.13.i, %while.end.i.if.else677.i_crit_edge ]
  %339 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %action.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %340)
  %cmp679.i = icmp eq i32 %340, 4
  br i1 %cmp679.i, label %if.then681.i, label %if.else677.i.if.end686.i_crit_edge

if.else677.i.if.end686.i_crit_edge:               ; preds = %if.else677.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end686.i

if.then681.i:                                     ; preds = %if.else677.i
  %func682.i = getelementptr inbounds %struct.ima_rule_entry, ptr %call7.i.i, i32 0, i32 3
  %341 = ptrtoint ptr %func682.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %func682.i, align 8
  %switch.tableidx68 = add i32 %342, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx68)
  %343 = icmp ult i32 %switch.tableidx68, 5
  br i1 %343, label %switch.lookup67, label %if.then681.i.ima_appraise_flag.exit.i_crit_edge

if.then681.i.ima_appraise_flag.exit.i_crit_edge:  ; preds = %if.then681.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ima_appraise_flag.exit.i

switch.lookup67:                                  ; preds = %if.then681.i
  call void @__sanitizer_cov_trace_pc() #22
  %switch.gep69 = getelementptr inbounds [5 x i32], ptr @switch.table.ima_parse_add_rule.170, i32 0, i32 %switch.tableidx68
  %344 = ptrtoint ptr %switch.gep69 to i32
  call void @__asan_load4_noabort(i32 %344)
  %switch.load70 = load i32, ptr %switch.gep69, align 4
  br label %ima_appraise_flag.exit.i

ima_appraise_flag.exit.i:                         ; preds = %switch.lookup67, %if.then681.i.ima_appraise_flag.exit.i_crit_edge
  %retval.0.i1123.i = phi i32 [ %switch.load70, %switch.lookup67 ], [ 0, %if.then681.i.ima_appraise_flag.exit.i_crit_edge ]
  %345 = load i32, ptr @temp_ima_appraise, align 4
  %or684.i = or i32 %345, %retval.0.i1123.i
  store i32 %or684.i, ptr @temp_ima_appraise, align 4
  br label %if.end686.i

if.end686.i:                                      ; preds = %ima_appraise_flag.exit.i, %if.else677.i.if.end686.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.141145.i)
  %tobool687.not.i = icmp eq i32 %result.141145.i, 0
  br i1 %tobool687.not.i, label %land.lhs.true688.i, label %if.end686.i.ima_parse_rule.exit_crit_edge

if.end686.i.ima_parse_rule.exit_crit_edge:        ; preds = %if.end686.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ima_parse_rule.exit

land.lhs.true688.i:                               ; preds = %if.end686.i
  %flags689.i = getelementptr inbounds %struct.ima_rule_entry, ptr %call7.i.i, i32 0, i32 2
  %346 = ptrtoint ptr %flags689.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %flags689.i, align 4
  %and.i = and i32 %347, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool690.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool690.not.i, label %land.lhs.true688.i.ima_parse_rule.exit_crit_edge, label %if.then691.i

land.lhs.true688.i.ima_parse_rule.exit_crit_edge: ; preds = %land.lhs.true688.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ima_parse_rule.exit

if.then691.i:                                     ; preds = %land.lhs.true688.i
  %template692.i = getelementptr inbounds %struct.ima_rule_entry, ptr %call7.i.i, i32 0, i32 21
  %348 = ptrtoint ptr %template692.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %template692.i, align 8
  %tobool693.not.i = icmp eq ptr %349, null
  br i1 %tobool693.not.i, label %cond.false.i, label %if.then691.i.cond.end.i_crit_edge

if.then691.i.cond.end.i_crit_edge:                ; preds = %if.then691.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.then691.i
  call void @__sanitizer_cov_trace_pc() #22
  %call695.i = call ptr @ima_template_desc_current() #20
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.then691.i.cond.end.i_crit_edge
  %cond696.i = phi ptr [ %call695.i, %cond.false.i ], [ %349, %if.then691.i.cond.end.i_crit_edge ]
  %.b24.i.i = load i1, ptr @check_template_modsig.checked, align 1
  br i1 %.b24.i.i, label %cond.end.i.ima_parse_rule.exit_crit_edge, label %for.cond.preheader.i.i

cond.end.i.ima_parse_rule.exit_crit_edge:         ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ima_parse_rule.exit

for.cond.preheader.i.i:                           ; preds = %cond.end.i
  %num_fields.i.i = getelementptr inbounds %struct.ima_template_desc, ptr %cond696.i, i32 0, i32 3
  %350 = ptrtoint ptr %num_fields.i.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %num_fields.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %351)
  %cmp29.i.i = icmp sgt i32 %351, 0
  br i1 %cmp29.i.i, label %for.body.lr.ph.i.i, label %for.cond.preheader.i.i.if.end16.i.i_crit_edge

for.cond.preheader.i.i.if.end16.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end16.i.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %fields.i.i = getelementptr inbounds %struct.ima_template_desc, ptr %cond696.i, i32 0, i32 4
  %352 = ptrtoint ptr %fields.i.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %fields.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %has_modsig.0.off032.i.i = phi i1 [ false, %for.body.lr.ph.i.i ], [ %has_modsig.1.off0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %i.031.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %has_dmodsig.0.off030.i.i = phi i1 [ false, %for.body.lr.ph.i.i ], [ %has_dmodsig.1.off0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i1124.i = getelementptr ptr, ptr %353, i32 %i.031.i.i
  %354 = ptrtoint ptr %arrayidx.i1124.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %arrayidx.i1124.i, align 4
  %call.i1125.i = call i32 @strcmp(ptr noundef %355, ptr noundef nonnull dereferenceable(7) @.str.117) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1125.i)
  %tobool1.not.i.i = icmp eq i32 %call.i1125.i, 0
  br i1 %tobool1.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.else.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i.i

if.else.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %call7.i.i33 = call i32 @strcmp(ptr noundef %355, ptr noundef nonnull dereferenceable(9) @.str.118) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i33)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i33, 0
  %spec.select.i.i = select i1 %tobool8.not.i.i, i1 true, i1 %has_dmodsig.0.off030.i.i
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.else.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %has_dmodsig.1.off0.i.i = phi i1 [ %has_dmodsig.0.off030.i.i, %for.body.i.i.for.inc.i.i_crit_edge ], [ %spec.select.i.i, %if.else.i.i ]
  %has_modsig.1.off0.i.i = phi i1 [ true, %for.body.i.i.for.inc.i.i_crit_edge ], [ %has_modsig.0.off032.i.i, %if.else.i.i ]
  %inc.i.i = add nuw nsw i32 %i.031.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %351
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  %has_modsig.0.off0.not.i.i = xor i1 %has_modsig.1.off0.i.i, true
  %brmerge.i.i = select i1 %has_modsig.0.off0.not.i.i, i1 true, i1 %has_dmodsig.1.off0.i.i
  br i1 %brmerge.i.i, label %for.end.i.i.if.end16.i.i_crit_edge, label %do.end.i1126.i

for.end.i.i.if.end16.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end16.i.i

do.end.i1126.i:                                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %call15.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119) #24
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %do.end.i1126.i, %for.end.i.i.if.end16.i.i_crit_edge, %for.cond.preheader.i.i.if.end16.i.i_crit_edge
  store i1 true, ptr @check_template_modsig.checked, align 1
  br label %ima_parse_rule.exit

ima_parse_rule.exit:                              ; preds = %if.end16.i.i, %cond.end.i.ima_parse_rule.exit_crit_edge, %land.lhs.true688.i.ima_parse_rule.exit_crit_edge, %if.end686.i.ima_parse_rule.exit_crit_edge, %ima_validate_rule.exit.i.ima_parse_rule.exit_crit_edge, %sw.bb77.i.i.ima_parse_rule.exit_crit_edge, %if.end73.i.i.ima_parse_rule.exit_crit_edge, %sw.bb63.i.i.ima_parse_rule.exit_crit_edge, %if.end60.i.i.ima_parse_rule.exit_crit_edge, %sw.bb50.i.i.ima_parse_rule.exit_crit_edge, %sw.bb39.i.i.ima_parse_rule.exit_crit_edge, %sw.bb33.i.i.ima_parse_rule.exit_crit_edge, %sw.bb.i.i.ima_parse_rule.exit_crit_edge, %if.end26.i.i.ima_parse_rule.exit_crit_edge, %land.lhs.true22.i.i.ima_parse_rule.exit_crit_edge, %land.lhs.true17.i.i.ima_parse_rule.exit_crit_edge, %land.lhs.true8.i.i.ima_parse_rule.exit_crit_edge, %land.lhs.true.i.i.ima_parse_rule.exit_crit_edge, %land.lhs.true.i.ima_parse_rule.exit_crit_edge
  %tobool687.not1150.i = phi i32 [ 1, %land.lhs.true688.i.ima_parse_rule.exit_crit_edge ], [ 0, %if.end686.i.ima_parse_rule.exit_crit_edge ], [ 1, %cond.end.i.ima_parse_rule.exit_crit_edge ], [ 1, %if.end16.i.i ], [ 0, %ima_validate_rule.exit.i.ima_parse_rule.exit_crit_edge ], [ %325, %land.lhs.true.i.ima_parse_rule.exit_crit_edge ], [ 0, %land.lhs.true.i.i.ima_parse_rule.exit_crit_edge ], [ 0, %land.lhs.true8.i.i.ima_parse_rule.exit_crit_edge ], [ 0, %land.lhs.true22.i.i.ima_parse_rule.exit_crit_edge ], [ 0, %land.lhs.true17.i.i.ima_parse_rule.exit_crit_edge ], [ 0, %sw.bb.i.i.ima_parse_rule.exit_crit_edge ], [ 0, %sw.bb33.i.i.ima_parse_rule.exit_crit_edge ], [ 0, %sw.bb39.i.i.ima_parse_rule.exit_crit_edge ], [ 0, %sw.bb50.i.i.ima_parse_rule.exit_crit_edge ], [ 0, %if.end60.i.i.ima_parse_rule.exit_crit_edge ], [ 0, %sw.bb63.i.i.ima_parse_rule.exit_crit_edge ], [ 0, %if.end73.i.i.ima_parse_rule.exit_crit_edge ], [ 0, %sw.bb77.i.i.ima_parse_rule.exit_crit_edge ], [ 0, %if.end26.i.i.ima_parse_rule.exit_crit_edge ]
  %result.151149.i = phi i32 [ 0, %land.lhs.true688.i.ima_parse_rule.exit_crit_edge ], [ %result.141145.i, %if.end686.i.ima_parse_rule.exit_crit_edge ], [ 0, %cond.end.i.ima_parse_rule.exit_crit_edge ], [ 0, %if.end16.i.i ], [ -22, %ima_validate_rule.exit.i.ima_parse_rule.exit_crit_edge ], [ -22, %land.lhs.true.i.ima_parse_rule.exit_crit_edge ], [ -22, %land.lhs.true.i.i.ima_parse_rule.exit_crit_edge ], [ -22, %land.lhs.true8.i.i.ima_parse_rule.exit_crit_edge ], [ -22, %land.lhs.true22.i.i.ima_parse_rule.exit_crit_edge ], [ -22, %land.lhs.true17.i.i.ima_parse_rule.exit_crit_edge ], [ -22, %sw.bb.i.i.ima_parse_rule.exit_crit_edge ], [ -22, %sw.bb33.i.i.ima_parse_rule.exit_crit_edge ], [ -22, %sw.bb39.i.i.ima_parse_rule.exit_crit_edge ], [ -22, %sw.bb50.i.i.ima_parse_rule.exit_crit_edge ], [ -22, %if.end60.i.i.ima_parse_rule.exit_crit_edge ], [ -22, %sw.bb63.i.i.ima_parse_rule.exit_crit_edge ], [ -22, %if.end73.i.i.ima_parse_rule.exit_crit_edge ], [ -22, %sw.bb77.i.i.ima_parse_rule.exit_crit_edge ], [ -22, %if.end26.i.i.ima_parse_rule.exit_crit_edge ]
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef %call.i.i, ptr noundef nonnull @.str.104, i32 noundef %tobool687.not1150.i) #20
  call void @audit_log_end(ptr noundef %call.i.i) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rule.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.151149.i)
  %tobool12.not = icmp eq i32 %result.151149.i, 0
  br i1 %tobool12.not, label %if.end14, label %if.end.i37

if.end.i37:                                       ; preds = %ima_parse_rule.exit
  %fsname.i35 = getelementptr inbounds %struct.ima_rule_entry, ptr %call7.i.i, i32 0, i32 18
  %356 = ptrtoint ptr %fsname.i35 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %fsname.i35, align 4
  call void @kfree(ptr noundef %357) #20
  %keyrings.i36 = getelementptr inbounds %struct.ima_rule_entry, ptr %call7.i.i, i32 0, i32 19
  %358 = ptrtoint ptr %keyrings.i36 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %keyrings.i36, align 8
  %tobool.not.i.i = icmp eq ptr %359, null
  br i1 %tobool.not.i.i, label %if.end.i37.ima_free_rule.exit_crit_edge, label %if.end.i.i39

if.end.i37.ima_free_rule.exit_crit_edge:          ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #22
  br label %ima_free_rule.exit

if.end.i.i39:                                     ; preds = %if.end.i37
  %360 = ptrtoint ptr %359 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %359, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %361)
  %tobool1.not.i.i38 = icmp eq i32 %361, 0
  br i1 %tobool1.not.i.i38, label %if.end.i.i39.if.end4.i.i_crit_edge, label %if.then2.i.i40

if.end.i.i39.if.end4.i.i_crit_edge:               ; preds = %if.end.i.i39
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end4.i.i

if.then2.i.i40:                                   ; preds = %if.end.i.i39
  call void @__sanitizer_cov_trace_pc() #22
  %items.i.i = getelementptr inbounds %struct.ima_rule_opt_list, ptr %359, i32 0, i32 1
  %362 = ptrtoint ptr %items.i.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %items.i.i, align 4
  call void @kfree(ptr noundef %363) #20
  %364 = ptrtoint ptr %359 to i32
  call void @__asan_store4_noabort(i32 %364)
  store i32 0, ptr %359, align 4
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.then2.i.i40, %if.end.i.i39.if.end4.i.i_crit_edge
  call void @kfree(ptr noundef nonnull %359) #20
  br label %ima_free_rule.exit

ima_free_rule.exit:                               ; preds = %if.end4.i.i, %if.end.i37.ima_free_rule.exit_crit_edge
  call fastcc void @ima_lsm_free_rule(ptr noundef nonnull %call7.i.i) #20
  call void @kfree(ptr noundef nonnull %call7.i.i) #20
  call void @integrity_audit_msg(i32 noundef 1802, ptr noundef null, ptr noundef null, ptr noundef nonnull @ima_parse_add_rule.op, ptr noundef nonnull @.str.10, i32 noundef %result.151149.i, i32 noundef 0) #20
  br label %cleanup

if.end14:                                         ; preds = %ima_parse_rule.exit
  %365 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @ima_temp_rules, i32 0, i32 1), align 4
  %call.i.i41 = call zeroext i1 @__list_add_valid(ptr noundef %call7.i.i, ptr noundef %365, ptr noundef nonnull @ima_temp_rules) #20
  br i1 %call.i.i41, label %if.end.i.i42, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end.i.i42:                                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #22
  store ptr %call7.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @ima_temp_rules, i32 0, i32 1), align 4
  %366 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %366)
  store ptr @ima_temp_rules, ptr %call7.i.i, align 8
  %367 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %367)
  store ptr %365, ptr %prev.i, align 4
  %368 = ptrtoint ptr %365 to i32
  call void @__asan_store4_noabort(i32 %368)
  store volatile ptr %call7.i.i, ptr %365, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i42, %if.end14.cleanup_crit_edge, %ima_free_rule.exit, %if.then9, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge75
  %retval.0 = phi i32 [ %result.151149.i, %ima_free_rule.exit ], [ -12, %if.then9 ], [ %add, %entry.cleanup_crit_edge ], [ %add, %entry.cleanup_crit_edge75 ], [ %add, %if.end14.cleanup_crit_edge ], [ %add, %if.end.i.i42 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @integrity_audit_msg(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ima_delete_rules() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 0, ptr @temp_ima_appraise, align 4
  %0 = load ptr, ptr @ima_temp_rules, align 4
  %cmp.not18 = icmp eq ptr %0, @ima_temp_rules
  br i1 %cmp.not18, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.body:                                         ; preds = %ima_free_rule.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %entry1.019 = phi ptr [ %tmp.0, %ima_free_rule.exit.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %1 = ptrtoint ptr %entry1.019 to i32
  call void @__asan_load4_noabort(i32 %1)
  %tmp.0 = load ptr, ptr %entry1.019, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %entry1.019) #20
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %entry1.019, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %entry1.019 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %entry1.019, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %8 = ptrtoint ptr %entry1.019 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1.019, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %entry1.019, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %tobool.not.i = icmp eq ptr %entry1.019, null
  br i1 %tobool.not.i, label %list_del.exit.ima_free_rule.exit_crit_edge, label %if.end.i

list_del.exit.ima_free_rule.exit_crit_edge:       ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %ima_free_rule.exit

if.end.i:                                         ; preds = %list_del.exit
  %fsname.i = getelementptr inbounds %struct.ima_rule_entry, ptr %entry1.019, i32 0, i32 18
  %10 = ptrtoint ptr %fsname.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fsname.i, align 4
  tail call void @kfree(ptr noundef %11) #20
  %keyrings.i = getelementptr inbounds %struct.ima_rule_entry, ptr %entry1.019, i32 0, i32 19
  %12 = ptrtoint ptr %keyrings.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %keyrings.i, align 4
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %if.end.i.ima_free_rule_opt_list.exit.i_crit_edge, label %if.end.i.i17

if.end.i.ima_free_rule_opt_list.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ima_free_rule_opt_list.exit.i

if.end.i.i17:                                     ; preds = %if.end.i
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool1.not.i.i = icmp eq i32 %15, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i17.if.end4.i.i_crit_edge, label %if.then2.i.i

if.end.i.i17.if.end4.i.i_crit_edge:               ; preds = %if.end.i.i17
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end4.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i17
  call void @__sanitizer_cov_trace_pc() #22
  %items.i.i = getelementptr inbounds %struct.ima_rule_opt_list, ptr %13, i32 0, i32 1
  %16 = ptrtoint ptr %items.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %items.i.i, align 4
  tail call void @kfree(ptr noundef %17) #20
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %13, align 4
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.then2.i.i, %if.end.i.i17.if.end4.i.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %13) #20
  br label %ima_free_rule_opt_list.exit.i

ima_free_rule_opt_list.exit.i:                    ; preds = %if.end4.i.i, %if.end.i.ima_free_rule_opt_list.exit.i_crit_edge
  tail call fastcc void @ima_lsm_free_rule(ptr noundef nonnull %entry1.019) #20
  tail call void @kfree(ptr noundef nonnull %entry1.019) #20
  br label %ima_free_rule.exit

ima_free_rule.exit:                               ; preds = %ima_free_rule_opt_list.exit.i, %list_del.exit.ima_free_rule.exit_crit_edge
  %cmp.not = icmp eq ptr %tmp.0, @ima_temp_rules
  br i1 %cmp.not, label %ima_free_rule.exit.for.end_crit_edge, label %ima_free_rule.exit.for.body_crit_edge

ima_free_rule.exit.for.body_crit_edge:            ; preds = %ima_free_rule.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

ima_free_rule.exit.for.end_crit_edge:             ; preds = %ima_free_rule.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.end:                                          ; preds = %ima_free_rule.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ima_policy_start(ptr nocapture noundef readnone %m, ptr nocapture noundef readonly %pos) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %2 = tail call i32 @llvm.read_register.i32(metadata !393) #20
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !404
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #20
  %call.i = tail call zeroext i1 @rcu_is_watching() #20
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.54, i32 noundef 696, ptr noundef nonnull @.str.55) #20
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %6 = load volatile ptr, ptr @ima_rules, align 4
  %call = tail call i32 @rcu_read_lock_held() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b46 = load i1, ptr @ima_policy_start.__warned, align 1
  br i1 %.b46, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @ima_policy_start.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1893, ptr noundef nonnull @.str.1) #20
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %call11 = tail call i32 @rcu_read_lock_any_held() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.lhs.true13, label %do.end8.do.end21_crit_edge

do.end8.do.end21_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end21

land.lhs.true13:                                  ; preds = %do.end8
  %call14 = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true13.do.end21_crit_edge, label %land.lhs.true16

land.lhs.true13.do.end21_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end21

land.lhs.true16:                                  ; preds = %land.lhs.true13
  %.b4445 = load i1, ptr @ima_policy_start.__warned.27, align 1
  br i1 %.b4445, label %land.lhs.true16.do.end21_crit_edge, label %if.then18

land.lhs.true16.do.end21_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end21

if.then18:                                        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @ima_policy_start.__warned.27, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1894, ptr noundef nonnull @.str.3) #20
  br label %do.end21

do.end21:                                         ; preds = %if.then18, %land.lhs.true16.do.end21_crit_edge, %land.lhs.true13.do.end21_crit_edge, %do.end8.do.end21_crit_edge
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %entry1.068 = load volatile ptr, ptr %6, align 4
  %cmp.not69 = icmp eq ptr %entry1.068, %6
  br i1 %cmp.not69, label %do.end21.for.end_crit_edge, label %do.end21.for.body_crit_edge

do.end21.for.body_crit_edge:                      ; preds = %do.end21
  br label %for.body

do.end21.for.end_crit_edge:                       ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.cond:                                         ; preds = %for.body
  %dec = add i64 %l.070, -1
  %8 = ptrtoint ptr %entry1.071 to i32
  call void @__asan_load4_noabort(i32 %8)
  %entry1.0 = load volatile ptr, ptr %entry1.071, align 4
  %cmp.not = icmp eq ptr %entry1.0, %6
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %do.end21.for.body_crit_edge
  %entry1.071 = phi ptr [ %entry1.0, %for.cond.for.body_crit_edge ], [ %entry1.068, %do.end21.for.body_crit_edge ]
  %l.070 = phi i64 [ %dec, %for.cond.for.body_crit_edge ], [ %1, %do.end21.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %l.070)
  %tobool27.not = icmp eq i64 %l.070, 0
  br i1 %tobool27.not, label %if.then28, label %for.cond

if.then28:                                        ; preds = %for.body
  %call.i47 = tail call zeroext i1 @rcu_is_watching() #20
  br i1 %call.i47, label %if.then28.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i50

if.then28.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit

land.lhs.true.i50:                                ; preds = %if.then28
  %call1.i48 = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i48)
  %tobool.not.i49 = icmp eq i32 %call1.i48, 0
  br i1 %tobool.not.i49, label %land.lhs.true.i50.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i52

land.lhs.true.i50.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i50
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit

land.lhs.true2.i52:                               ; preds = %land.lhs.true.i50
  %.b4.i51 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i51, label %land.lhs.true2.i52.rcu_read_unlock.exit_crit_edge, label %if.then.i53

land.lhs.true2.i52.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i52
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit

if.then.i53:                                      ; preds = %land.lhs.true2.i52
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.54, i32 noundef 724, ptr noundef nonnull @.str.56) #20
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i53, %land.lhs.true2.i52.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i50.rcu_read_unlock.exit_crit_edge, %if.then28.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !406
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %do.end21.for.end_crit_edge
  %call.i56 = tail call zeroext i1 @rcu_is_watching() #20
  br i1 %call.i56, label %for.end.rcu_read_unlock.exit66_crit_edge, label %land.lhs.true.i59

for.end.rcu_read_unlock.exit66_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit66

land.lhs.true.i59:                                ; preds = %for.end
  %call1.i57 = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i57)
  %tobool.not.i58 = icmp eq i32 %call1.i57, 0
  br i1 %tobool.not.i58, label %land.lhs.true.i59.rcu_read_unlock.exit66_crit_edge, label %land.lhs.true2.i61

land.lhs.true.i59.rcu_read_unlock.exit66_crit_edge: ; preds = %land.lhs.true.i59
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit66

land.lhs.true2.i61:                               ; preds = %land.lhs.true.i59
  %.b4.i60 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i60, label %land.lhs.true2.i61.rcu_read_unlock.exit66_crit_edge, label %if.then.i62

land.lhs.true2.i61.rcu_read_unlock.exit66_crit_edge: ; preds = %land.lhs.true2.i61
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit66

if.then.i62:                                      ; preds = %land.lhs.true2.i61
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.54, i32 noundef 724, ptr noundef nonnull @.str.56) #20
  br label %rcu_read_unlock.exit66

rcu_read_unlock.exit66:                           ; preds = %if.then.i62, %land.lhs.true2.i61.rcu_read_unlock.exit66_crit_edge, %land.lhs.true.i59.rcu_read_unlock.exit66_crit_edge, %for.end.rcu_read_unlock.exit66_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !406
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit66, %rcu_read_unlock.exit
  %retval.0 = phi ptr [ %entry1.071, %rcu_read_unlock.exit ], [ null, %rcu_read_unlock.exit66 ]
  %9 = tail call i32 @llvm.read_register.i32(metadata !393) #20
  %and.i.i.i.i.i63 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i63 to ptr
  %preempt_count.i.i.i.i64 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i64 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i64, align 4
  %sub.i.i.i65 = add i32 %12, -1
  store volatile i32 %sub.i.i.i65, ptr %preempt_count.i.i.i.i64, align 4
  tail call void @rcu_read_unlock_strict() #20
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #20
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ima_policy_next(ptr nocapture noundef readnone %m, ptr noundef %v, ptr nocapture noundef %pos) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !393) #20
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !404
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #20
  %call.i = tail call zeroext i1 @rcu_is_watching() #20
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.54, i32 noundef 696, ptr noundef nonnull @.str.55) #20
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %v, align 4
  %call.i9 = tail call zeroext i1 @rcu_is_watching() #20
  br i1 %call.i9, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i12

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit

land.lhs.true.i12:                                ; preds = %rcu_read_lock.exit
  %call1.i10 = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i10)
  %tobool.not.i11 = icmp eq i32 %call1.i10, 0
  br i1 %tobool.not.i11, label %land.lhs.true.i12.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i14

land.lhs.true.i12.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i12
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit

land.lhs.true2.i14:                               ; preds = %land.lhs.true.i12
  %.b4.i13 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i13, label %land.lhs.true2.i14.rcu_read_unlock.exit_crit_edge, label %if.then.i15

land.lhs.true2.i14.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i14
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit

if.then.i15:                                      ; preds = %land.lhs.true2.i14
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.54, i32 noundef 724, ptr noundef nonnull @.str.56) #20
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i15, %land.lhs.true2.i14.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i12.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !406
  %6 = tail call i32 @llvm.read_register.i32(metadata !393) #20
  %and.i.i.i.i.i16 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i16 to ptr
  %preempt_count.i.i.i.i17 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i17 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i17, align 4
  %sub.i.i.i = add i32 %9, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i17, align 4
  tail call void @rcu_read_unlock_strict() #20
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #20
  %10 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %pos, align 8
  %inc = add i64 %11, 1
  store i64 %inc, ptr %pos, align 8
  %cmp = icmp eq ptr %5, @ima_default_rules
  %cmp5 = icmp eq ptr %5, @ima_policy_rules
  %or.cond = or i1 %cmp, %cmp5
  %cond = select i1 %or.cond, ptr null, ptr %5
  ret ptr %cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ima_policy_stop(ptr nocapture noundef %m, ptr nocapture noundef %v) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ima_policy_show(ptr noundef %m, ptr noundef %v) local_unnamed_addr #3 align 64 {
entry:
  %tbuf = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %tbuf) #20
  %0 = call ptr @memset(ptr %tbuf, i32 0, i32 64)
  %1 = tail call i32 @llvm.read_register.i32(metadata !393) #20
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !404
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #20
  %call.i = tail call zeroext i1 @rcu_is_watching() #20
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.54, i32 noundef 696, ptr noundef nonnull @.str.55) #20
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %args_p = getelementptr %struct.ima_rule_entry, ptr %v, i32 0, i32 17, i32 0, i32 1
  %5 = ptrtoint ptr %args_p to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %args_p, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %rcu_read_lock.exit.for.inc_crit_edge, label %land.lhs.true

rcu_read_lock.exit.for.inc_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %arrayidx = getelementptr %struct.ima_rule_entry, ptr %v, i32 0, i32 17, i32 0
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %tobool4.not = icmp eq ptr %8, null
  br i1 %tobool4.not, label %land.lhs.true.if.then_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then

if.then:                                          ; preds = %land.lhs.true.5.if.then_crit_edge, %land.lhs.true.4.if.then_crit_edge, %land.lhs.true.3.if.then_crit_edge, %land.lhs.true.2.if.then_crit_edge, %land.lhs.true.1.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %call.i472 = tail call zeroext i1 @rcu_is_watching() #20
  br i1 %call.i472, label %if.then.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i475

if.then.rcu_read_unlock.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit

land.lhs.true.i475:                               ; preds = %if.then
  %call1.i473 = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i473)
  %tobool.not.i474 = icmp eq i32 %call1.i473, 0
  br i1 %tobool.not.i474, label %land.lhs.true.i475.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i477

land.lhs.true.i475.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i475
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit

land.lhs.true2.i477:                              ; preds = %land.lhs.true.i475
  %.b4.i476 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i476, label %land.lhs.true2.i477.rcu_read_unlock.exit_crit_edge, label %if.then.i478

land.lhs.true2.i477.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i477
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit

if.then.i478:                                     ; preds = %land.lhs.true2.i477
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.54, i32 noundef 724, ptr noundef nonnull @.str.56) #20
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i478, %land.lhs.true2.i477.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i475.rcu_read_unlock.exit_crit_edge, %if.then.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !406
  %9 = tail call i32 @llvm.read_register.i32(metadata !393) #20
  %and.i.i.i.i.i479 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i479 to ptr
  %preempt_count.i.i.i.i480 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i480 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i480, align 4
  %sub.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i480, align 4
  tail call void @rcu_read_unlock_strict() #20
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #20
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %rcu_read_lock.exit.for.inc_crit_edge
  %args_p.1 = getelementptr %struct.ima_rule_entry, ptr %v, i32 0, i32 17, i32 1, i32 1
  %13 = ptrtoint ptr %args_p.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %args_p.1, align 4
  %tobool.not.1 = icmp eq ptr %14, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %arrayidx.1 = getelementptr %struct.ima_rule_entry, ptr %v, i32 0, i32 17, i32 1
  %15 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.1, align 4
  %tobool4.not.1 = icmp eq ptr %16, null
  br i1 %tobool4.not.1, label %land.lhs.true.1.if.then_crit_edge, label %land.lhs.true.1.for.inc.1_crit_edge

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.1

land.lhs.true.1.if.then_crit_edge:                ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then

for.inc.1:                                        ; preds = %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %args_p.2 = getelementptr %struct.ima_rule_entry, ptr %v, i32 0, i32 17, i32 2, i32 1
  %17 = ptrtoint ptr %args_p.2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %args_p.2, align 4
  %tobool.not.2 = icmp eq ptr %18, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %land.lhs.true.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %arrayidx.2 = getelementptr %struct.ima_rule_entry, ptr %v, i32 0, i32 17, i32 2
  %19 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.2, align 4
  %tobool4.not.2 = icmp eq ptr %20, null
  br i1 %tobool4.not.2, label %land.lhs.true.2.if.then_crit_edge, label %land.lhs.true.2.for.inc.2_crit_edge

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.2

land.lhs.true.2.if.then_crit_edge:                ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then

for.inc.2:                                        ; preds = %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %args_p.3 = getelementptr %struct.ima_rule_entry, ptr %v, i32 0, i32 17, i32 3, i32 1
  %21 = ptrtoint ptr %args_p.3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %args_p.3, align 4
  %tobool.not.3 = icmp eq ptr %22, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %land.lhs.true.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %arrayidx.3 = getelementptr %struct.ima_rule_entry, ptr %v, i32 0, i32 17, i32 3
  %23 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.3, align 4
  %tobool4.not.3 = icmp eq ptr %24, null
  br i1 %tobool4.not.3, label %land.lhs.true.3.if.then_crit_edge, label %land.lhs.true.3.for.inc.3_crit_edge

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.3

land.lhs.true.3.if.then_crit_edge:                ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then

for.inc.3:                                        ; preds = %land.lhs.true.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %args_p.4 = getelementptr %struct.ima_rule_entry, ptr %v, i32 0, i32 17, i32 4, i32 1
  %25 = ptrtoint ptr %args_p.4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %args_p.4, align 4
  %tobool.not.4 = icmp eq ptr %26, null
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %land.lhs.true.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %for.inc.3
  %arrayidx.4 = getelementptr %struct.ima_rule_entry, ptr %v, i32 0, i32 17, i32 4
  %27 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.4, align 4
  %tobool4.not.4 = icmp eq ptr %28, null
  br i1 %tobool4.not.4, label %land.lhs.true.4.if.then_crit_edge, label %land.lhs.true.4.for.inc.4_crit_edge

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.4

land.lhs.true.4.if.then_crit_edge:                ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then

for.inc.4:                                        ; preds = %land.lhs.true.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %args_p.5 = getelementptr %struct.ima_rule_entry, ptr %v, i32 0, i32 17, i32 5, i32 1
  %29 = ptrtoint ptr %args_p.5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %args_p.5, align 4
  %tobool.not.5 = icmp eq ptr %30, null
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %land.lhs.true.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.5

land.lhs.true.5:                                  ; preds = %for.inc.4
  %arrayidx.5 = getelementptr %struct.ima_rule_entry, ptr %v, i32 0, i32 17, i32 5
  %31 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.5, align 4
  %tobool4.not.5 = icmp eq ptr %32, null
  br i1 %tobool4.not.5, label %land.lhs.true.5.if.then_crit_edge, label %land.lhs.true.5.for.inc.5_crit_edge

land.lhs.true.5.for.inc.5_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.5

land.lhs.true.5.if.then_crit_edge:                ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then

for.inc.5:                                        ; preds = %land.lhs.true.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %action = getelementptr inbounds %struct.ima_rule_entry, ptr %v, i32 0, i32 1
  %33 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %action, align 4
  %and = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %for.inc.5.if.end7_crit_edge, label %if.then6

for.inc.5.if.end7_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end7

if.then6:                                         ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.60) #20
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %for.inc.5.if.end7_crit_edge
  %35 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %action, align 4
  %and9 = and i32 %36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end7.if.end12_crit_edge, label %if.then11

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end12

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.61) #20
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end7.if.end12_crit_edge
  %37 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %action, align 4
  %and14 = and i32 %38, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end12.if.end17_crit_edge, label %if.then16

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end17

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.62) #20
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end12.if.end17_crit_edge
  %39 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %action, align 4
  %and19 = and i32 %40, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end17.if.end22_crit_edge, label %if.then21

if.end17.if.end22_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end22

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.63) #20
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end17.if.end22_crit_edge
  %41 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %action, align 4
  %and24 = and i32 %42, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end22.if.end27_crit_edge, label %if.then26

if.end22.if.end27_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end27

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.64) #20
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end22.if.end27_crit_edge
  %43 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %action, align 4
  %and29 = and i32 %44, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end27.if.end32_crit_edge, label %if.then31

if.end27.if.end32_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end32

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.65) #20
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end27.if.end32_crit_edge
  %45 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %action, align 4
  %and34 = and i32 %46, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end32.if.end37_crit_edge, label %if.then36

if.end32.if.end37_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end37

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.66) #20
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end32.if.end37_crit_edge
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.28) #20
  %flags = getelementptr inbounds %struct.ima_rule_entry, ptr %v, i32 0, i32 2
  %47 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flags, align 4
  %and38 = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end37.if.end41_crit_edge, label %if.then40

if.end37.if.end41_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end41

if.then40:                                        ; preds = %if.end37
  %func = getelementptr inbounds %struct.ima_rule_entry, ptr %v, i32 0, i32 3
  %49 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %func, align 4
  %51 = add i32 %50, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %51)
  %52 = icmp ult i32 %51, 14
  br i1 %52, label %if.then.i481, label %if.else.i

if.then.i481:                                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx.i = getelementptr [16 x ptr], ptr @func_tokens, i32 0, i32 %50
  %53 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.158, ptr noundef %54) #20
  br label %if.end41

if.else.i:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #22
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.159, i32 noundef %50) #20
  br label %if.end41

if.end41:                                         ; preds = %if.else.i, %if.then.i481, %if.end37.if.end41_crit_edge
  %55 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %flags, align 4
  %57 = and i32 %56, 66
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %if.end41.if.end76_crit_edge, label %if.then48

if.end41.if.end76_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end76

if.then48:                                        ; preds = %if.end41
  %and43 = lshr i32 %56, 1
  %and43.lobit = and i32 %and43, 1
  %mask = getelementptr inbounds %struct.ima_rule_entry, ptr %v, i32 0, i32 4
  %59 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %mask, align 4
  %and54 = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.then48.if.end57_crit_edge, label %if.then56

if.then48.if.end57_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end57

if.then56:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr = getelementptr i8, ptr @.str.160, i32 %and43.lobit
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.128, ptr noundef %add.ptr) #20
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %if.then48.if.end57_crit_edge
  %61 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %mask, align 4
  %and59 = and i32 %62, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.end57.if.end63_crit_edge, label %if.then61

if.end57.if.end63_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end63

if.then61:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr62 = getelementptr i8, ptr @.str.161, i32 %and43.lobit
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.128, ptr noundef %add.ptr62) #20
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %if.end57.if.end63_crit_edge
  %63 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %mask, align 4
  %and65 = and i32 %64, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.end63.if.end69_crit_edge, label %if.then67

if.end63.if.end69_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end69

if.then67:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr68 = getelementptr i8, ptr @.str.162, i32 %and43.lobit
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.128, ptr noundef %add.ptr68) #20
  br label %if.end69

if.end69:                                         ; preds = %if.then67, %if.end63.if.end69_crit_edge
  %65 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %mask, align 4
  %and71 = and i32 %66, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %if.end69.if.end75_crit_edge, label %if.then73

if.end69.if.end75_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end75

if.then73:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr74 = getelementptr i8, ptr @.str.163, i32 %and43.lobit
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.128, ptr noundef %add.ptr74) #20
  br label %if.end75

if.end75:                                         ; preds = %if.then73, %if.end69.if.end75_crit_edge
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.28) #20
  br label %if.end76

if.end76:                                         ; preds = %if.end75, %if.end41.if.end76_crit_edge
  %67 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %flags, align 4
  %and78 = and i32 %68, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %if.end76.if.end82_crit_edge, label %if.then80

if.end76.if.end82_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end82

if.then80:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #22
  %fsmagic = getelementptr inbounds %struct.ima_rule_entry, ptr %v, i32 0, i32 5
  %69 = ptrtoint ptr %fsmagic to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %fsmagic, align 4
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tbuf, i32 noundef 64, ptr noundef nonnull @.str.29, i32 noundef %70)
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.129, ptr noundef nonnull %tbuf) #20
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.28) #20
  br label %if.end82

if.end82:                                         ; preds = %if.then80, %if.end76.if.end82_crit_edge
  %71 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %flags, align 4
  %and84 = and i32 %72, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %if.end82.if.end90_crit_edge, label %if.then86

if.end82.if.end90_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end90

if.then86:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #22
  %fsname = getelementptr inbounds %struct.ima_rule_entry, ptr %v, i32 0, i32 18
  %73 = ptrtoint ptr %fsname to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %fsname, align 4
  %call88 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tbuf, i32 noundef 64, ptr noundef nonnull @.str.30, ptr noundef %74)
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.130, ptr noundef nonnull %tbuf) #20
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.28) #20
  br label %if.end90

if.end90:                                         ; preds = %if.then86, %if.end82.if.end90_crit_edge
  %75 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %flags, align 4
  %and92 = and i32 %76, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %if.end90.if.end95_crit_edge, label %if.then94

if.end90.if.end95_crit_edge:                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end95

if.then94:                                        ; preds = %if.end90
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.31) #20
  %keyrings = getelementptr inbounds %struct.ima_rule_entry, ptr %v, i32 0, i32 19
  %77 = ptrtoint ptr %keyrings to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %keyrings, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp5.not.i = icmp eq i32 %80, 0
  br i1 %cmp5.not.i, label %if.then94.ima_show_rule_opt_list.exit_crit_edge, label %if.then94.for.body.i_crit_edge

if.then94.for.body.i_crit_edge:                   ; preds = %if.then94
  br label %for.body.i

if.then94.ima_show_rule_opt_list.exit_crit_edge:  ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #22
  br label %ima_show_rule_opt_list.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then94.for.body.i_crit_edge
  %i.06.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then94.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.06.i)
  %tobool.not.i482 = icmp eq i32 %i.06.i, 0
  %cond.i = select i1 %tobool.not.i482, ptr @.str.165, ptr @.str.105
  %arrayidx.i483 = getelementptr %struct.ima_rule_opt_list, ptr %78, i32 0, i32 1, i32 %i.06.i
  %81 = ptrtoint ptr %arrayidx.i483 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx.i483, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.164, ptr noundef nonnull %cond.i, ptr noundef %82) #20
  %inc.i = add nuw i32 %i.06.i, 1
  %83 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %78, align 4
  %cmp.i = icmp ult i32 %inc.i, %84
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.ima_show_rule_opt_list.exit_crit_edge

for.body.i.ima_show_rule_opt_list.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %ima_show_rule_opt_list.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i

ima_show_rule_opt_list.exit:                      ; preds = %for.body.i.ima_show_rule_opt_list.exit_crit_edge, %if.then94.ima_show_rule_opt_list.exit_crit_edge
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.28) #20
  br label %if.end95

if.end95:                                         ; preds = %ima_show_rule_opt_list.exit, %if.end90.if.end95_crit_edge
  %85 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %flags, align 4
  %and97 = and i32 %86, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %if.end95.if.end100_crit_edge, label %if.then99

if.end95.if.end100_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end100

if.then99:                                        ; preds = %if.end95
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.32) #20
  %label = getelementptr inbounds %struct.ima_rule_entry, ptr %v, i32 0, i32 20
  %87 = ptrtoint ptr %label to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %label, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %88, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp5.not.i484 = icmp eq i32 %90, 0
  br i1 %cmp5.not.i484, label %if.then99.ima_show_rule_opt_list.exit492_crit_edge, label %if.then99.for.body.i491_crit_edge

if.then99.for.body.i491_crit_edge:                ; preds = %if.then99
  br label %for.body.i491

if.then99.ima_show_rule_opt_list.exit492_crit_edge: ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #22
  br label %ima_show_rule_opt_list.exit492

for.body.i491:                                    ; preds = %for.body.i491.for.body.i491_crit_edge, %if.then99.for.body.i491_crit_edge
  %i.06.i485 = phi i32 [ %inc.i489, %for.body.i491.for.body.i491_crit_edge ], [ 0, %if.then99.for.body.i491_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.06.i485)
  %tobool.not.i486 = icmp eq i32 %i.06.i485, 0
  %cond.i487 = select i1 %tobool.not.i486, ptr @.str.165, ptr @.str.105
  %arrayidx.i488 = getelementptr %struct.ima_rule_opt_list, ptr %88, i32 0, i32 1, i32 %i.06.i485
  %91 = ptrtoint ptr %arrayidx.i488 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx.i488, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.164, ptr noundef nonnull %cond.i487, ptr noundef %92) #20
  %inc.i489 = add nuw i32 %i.06.i485, 1
  %93 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %88, align 4
  %cmp.i490 = icmp ult i32 %inc.i489, %94
  br i1 %cmp.i490, label %for.body.i491.for.body.i491_crit_edge, label %for.body.i491.ima_show_rule_opt_list.exit492_crit_edge

for.body.i491.ima_show_rule_opt_list.exit492_crit_edge: ; preds = %for.body.i491
  call void @__sanitizer_cov_trace_pc() #22
  br label %ima_show_rule_opt_list.exit492

for.body.i491.for.body.i491_crit_edge:            ; preds = %for.body.i491
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i491

ima_show_rule_opt_list.exit492:                   ; preds = %for.body.i491.ima_show_rule_opt_list.exit492_crit_edge, %if.then99.ima_show_rule_opt_list.exit492_crit_edge
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.28) #20
  br label %if.end100

if.end100:                                        ; preds = %ima_show_rule_opt_list.exit492, %if.end95.if.end100_crit_edge
  %95 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %flags, align 4
  %and102 = and i32 %96, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  br i1 %tobool103.not, label %if.end100.if.end108_crit_edge, label %if.then104

if.end100.if.end108_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end108

if.then104:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #22
  %pcr = getelementptr inbounds %struct.ima_rule_entry, ptr %v, i32 0, i32 15
  %97 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %pcr, align 4
  %call106 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tbuf, i32 noundef 64, ptr noundef nonnull @.str.33, i32 noundef %98)
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.154, ptr noundef nonnull %tbuf) #20
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.28) #20
  br label %if.end108

if.end108:                                        ; preds = %if.then104, %if.end100.if.end108_crit_edge
  %99 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %flags, align 4
  %and110 = and i32 %100, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %tobool111.not = icmp eq i32 %and110, 0
  br i1 %tobool111.not, label %if.end108.if.end113_crit_edge, label %if.then112

if.end108.if.end113_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end113

if.then112:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #22
  %fsuuid = getelementptr inbounds %struct.ima_rule_entry, ptr %v, i32 0, i32 6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.34, ptr noundef %fsuuid) #20
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.28) #20
  br label %if.end113

if.end113:                                        ; preds = %if.then112, %if.end108.if.end113_crit_edge
  %101 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %flags, align 4
  %and115 = and i32 %102, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  br i1 %tobool116.not, label %if.end113.if.end132_crit_edge, label %if.then117

if.end113.if.end132_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end132

if.then117:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #22
  %uid = getelementptr inbounds %struct.ima_rule_entry, ptr %v, i32 0, i32 7
  %103 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %103)
  %.unpack471 = load i32, ptr %uid, align 4
  %call120 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tbuf, i32 noundef 64, ptr noundef nonnull @.str.33, i32 noundef %.unpack471)
  %uid_op = getelementptr inbounds %struct.ima_rule_entry, ptr %v, i32 0, i32 11
  %104 = ptrtoint ptr %uid_op to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %uid_op, align 4
  %cmp121 = icmp eq ptr %105, @uid_gt
  %cmp125 = icmp eq ptr %105, @uid_lt
  %.str.144..str.132 = select i1 %cmp125, ptr @.str.144, ptr @.str.132
  %.str.144.sink = select i1 %cmp121, ptr @.str.138, ptr %.str.144..str.132
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull %.str.144.sink, ptr noundef nonnull %tbuf) #20
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.28) #20
  br label %if.end132

if.end132:                                        ; preds = %if.then117, %if.end113.if.end132_crit_edge
  %106 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %flags, align 4
  %and134 = and i32 %107, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and134)
  %tobool135.not = icmp eq i32 %and134, 0
  br i1 %tobool135.not, label %if.end132.if.end155_crit_edge, label %if.then136

if.end132.if.end155_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end155

if.then136:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #22
  %uid138 = getelementptr inbounds %struct.ima_rule_entry, ptr %v, i32 0, i32 7
  %108 = ptrtoint ptr %uid138 to i32
  call void @__asan_load4_noabort(i32 %108)
  %.unpack470 = load i32, ptr %uid138, align 4
  %call141 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tbuf, i32 noundef 64, ptr noundef nonnull @.str.33, i32 noundef %.unpack470)
  %uid_op142 = getelementptr inbounds %struct.ima_rule_entry, ptr %v, i32 0, i32 11
  %109 = ptrtoint ptr %uid_op142 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %uid_op142, align 4
  %cmp143 = icmp eq ptr %110, @uid_gt
  %cmp148 = icmp eq ptr %110, @uid_lt
  %.str.145..str.133 = select i1 %cmp148, ptr @.str.145, ptr @.str.133
  %.str.145.sink = select i1 %cmp143, ptr @.str.139, ptr %.str.145..str.133
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull %.str.145.sink, ptr noundef nonnull %tbuf) #20
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.28) #20
  br label %if.end155

if.end155:                                        ; preds = %if.then136, %if.end132.if.end155_crit_edge
  %111 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %flags, align 4
  %and157 = and i32 %112, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and157)
  %tobool158.not = icmp eq i32 %and157, 0
  br i1 %tobool158.not, label %if.end155.if.end176_crit_edge, label %if.then159

if.end155.if.end176_crit_edge:                    ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end176

if.then159:                                       ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #22
  %gid = getelementptr inbounds %struct.ima_rule_entry, ptr %v, i32 0, i32 8
  %113 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %113)
  %.unpack469 = load i32, ptr %gid, align 4
  %call163 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tbuf, i32 noundef 64, ptr noundef nonnull @.str.33, i32 noundef %.unpack469)
  %gid_op = getelementptr inbounds %struct.ima_rule_entry, ptr %v, i32 0, i32 12
  %114 = ptrtoint ptr %gid_op to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %gid_op, align 4
  %cmp164 = icmp eq ptr %115, @gid_gt
  %cmp169 = icmp eq ptr %115, @gid_lt
  %.str.146..str.134 = select i1 %cmp169, ptr @.str.146, ptr @.str.134
  %.str.146.sink = select i1 %cmp164, ptr @.str.140, ptr %.str.146..str.134
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull %.str.146.sink, ptr noundef nonnull %tbuf) #20
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.28) #20
  br label %if.end176

if.end176:                                        ; preds = %if.then159, %if.end155.if.end176_crit_edge
  %116 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %flags, align 4
  %and178 = and i32 %117, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and178)
  %tobool179.not = icmp eq i32 %and178, 0
  br i1 %tobool179.not, label %if.end176.if.end199_crit_edge, label %if.then180

if.end176.if.end199_crit_edge:                    ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end199

if.then180:                                       ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #22
  %gid182 = getelementptr inbounds %struct.ima_rule_entry, ptr %v, i32 0, i32 8
  %118 = ptrtoint ptr %gid182 to i32
  call void @__asan_load4_noabort(i32 %118)
  %.unpack468 = load i32, ptr %gid182, align 4
  %call185 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tbuf, i32 noundef 64, ptr noundef nonnull @.str.33, i32 noundef %.unpack468)
  %gid_op186 = getelementptr inbounds %struct.ima_rule_entry, ptr %v, i32 0, i32 12
  %119 = ptrtoint ptr %gid_op186 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %gid_op186, align 4
  %cmp187 = icmp eq ptr %120, @gid_gt
  %cmp192 = icmp eq ptr %120, @gid_lt
  %.str.147..str.135 = select i1 %cmp192, ptr @.str.147, ptr @.str.135
  %.str.147.sink = select i1 %cmp187, ptr @.str.141, ptr %.str.147..str.135
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull %.str.147.sink, ptr noundef nonnull %tbuf) #20
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.28) #20
  br label %if.end199

if.end199:                                        ; preds = %if.then180, %if.end176.if.end199_crit_edge
  %121 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %flags, align 4
  %and201 = and i32 %122, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and201)
  %tobool202.not = icmp eq i32 %and201, 0
  br i1 %tobool202.not, label %if.end199.if.end220_crit_edge, label %if.then203

if.end199.if.end220_crit_edge:                    ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end220

if.then203:                                       ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #22
  %fowner = getelementptr inbounds %struct.ima_rule_entry, ptr %v, i32 0, i32 9
  %123 = ptrtoint ptr %fowner to i32
  call void @__asan_load4_noabort(i32 %123)
  %.unpack467 = load i32, ptr %fowner, align 4
  %call207 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tbuf, i32 noundef 64, ptr noundef nonnull @.str.33, i32 noundef %.unpack467)
  %fowner_op = getelementptr inbounds %struct.ima_rule_entry, ptr %v, i32 0, i32 13
  %124 = ptrtoint ptr %fowner_op to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %fowner_op, align 4
  %cmp208 = icmp eq ptr %125, @uid_gt
  %cmp213 = icmp eq ptr %125, @uid_lt
  %.str.148..str.136 = select i1 %cmp213, ptr @.str.148, ptr @.str.136
  %.str.148.sink = select i1 %cmp208, ptr @.str.142, ptr %.str.148..str.136
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull %.str.148.sink, ptr noundef nonnull %tbuf) #20
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.28) #20
  br label %if.end220

if.end220:                                        ; preds = %if.then203, %if.end199.if.end220_crit_edge
  %126 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %flags, align 4
  %and222 = and i32 %127, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and222)
  %tobool223.not = icmp eq i32 %and222, 0
  br i1 %tobool223.not, label %if.end220.if.end241_crit_edge, label %if.then224

if.end220.if.end241_crit_edge:                    ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end241

if.then224:                                       ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #22
  %fgroup = getelementptr inbounds %struct.ima_rule_entry, ptr %v, i32 0, i32 10
  %128 = ptrtoint ptr %fgroup to i32
  call void @__asan_load4_noabort(i32 %128)
  %.unpack = load i32, ptr %fgroup, align 4
  %call228 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tbuf, i32 noundef 64, ptr noundef nonnull @.str.33, i32 noundef %.unpack)
  %fgroup_op = getelementptr inbounds %struct.ima_rule_entry, ptr %v, i32 0, i32 14
  %129 = ptrtoint ptr %fgroup_op to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %fgroup_op, align 4
  %cmp229 = icmp eq ptr %130, @gid_gt
  %cmp234 = icmp eq ptr %130, @gid_lt
  %.str.149..str.137 = select i1 %cmp234, ptr @.str.149, ptr @.str.137
  %.str.149.sink = select i1 %cmp229, ptr @.str.143, ptr %.str.149..str.137
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull %.str.149.sink, ptr noundef nonnull %tbuf) #20
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.28) #20
  br label %if.end241

if.end241:                                        ; preds = %if.then224, %if.end220.if.end241_crit_edge
  %131 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %flags, align 4
  %and243 = and i32 %132, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and243)
  %tobool244.not = icmp eq i32 %and243, 0
  br i1 %tobool244.not, label %if.end241.for.body249_crit_edge, label %if.then245

if.end241.for.body249_crit_edge:                  ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body249

if.then245:                                       ; preds = %if.end241
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.35) #20
  %allowed_algos = getelementptr inbounds %struct.ima_rule_entry, ptr %v, i32 0, i32 16
  %133 = ptrtoint ptr %allowed_algos to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %allowed_algos, align 4
  br label %for.body.i494

for.body.i494:                                    ; preds = %for.inc.i.for.body.i494_crit_edge, %if.then245
  %list_size.011.i = phi i32 [ 0, %if.then245 ], [ %list_size.1.i, %for.inc.i.for.body.i494_crit_edge ]
  %idx.09.i = phi i32 [ 0, %if.then245 ], [ %inc4.i, %for.inc.i.for.body.i494_crit_edge ]
  %shl.i = shl nuw nsw i32 1, %idx.09.i
  %and.i = and i32 %shl.i, %134
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i493 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i493, label %for.body.i494.for.inc.i_crit_edge, label %if.end.i

for.body.i494.for.inc.i_crit_edge:                ; preds = %for.body.i494
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i494
  %inc.i495 = add i32 %list_size.011.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %list_size.011.i)
  %tobool1.not.i = icmp eq i32 %list_size.011.i, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end3.i_crit_edge, label %if.then2.i

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.111) #20
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i.if.end3.i_crit_edge
  %arrayidx.i496 = getelementptr [20 x ptr], ptr @hash_algo_name, i32 0, i32 %idx.09.i
  %135 = ptrtoint ptr %arrayidx.i496 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %arrayidx.i496, align 4
  call void @seq_puts(ptr noundef %m, ptr noundef %136) #20
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end3.i, %for.body.i494.for.inc.i_crit_edge
  %list_size.1.i = phi i32 [ %inc.i495, %if.end3.i ], [ %list_size.011.i, %for.body.i494.for.inc.i_crit_edge ]
  %inc4.i = add nuw nsw i32 %idx.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc4.i, 20
  br i1 %exitcond.not.i, label %ima_policy_show_appraise_algos.exit, label %for.inc.i.for.body.i494_crit_edge

for.inc.i.for.body.i494_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i494

ima_policy_show_appraise_algos.exit:              ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.28) #20
  br label %for.body249

for.body249:                                      ; preds = %ima_policy_show_appraise_algos.exit, %if.end241.for.body249_crit_edge
  %arrayidx251 = getelementptr %struct.ima_rule_entry, ptr %v, i32 0, i32 17, i32 0
  %137 = ptrtoint ptr %arrayidx251 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %arrayidx251, align 4
  %tobool253.not = icmp eq ptr %138, null
  br i1 %tobool253.not, label %for.body249.for.inc279_crit_edge, label %sw.epilog.sink.split

for.body249.for.inc279_crit_edge:                 ; preds = %for.body249
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc279

sw.epilog.sink.split:                             ; preds = %for.body249
  call void @__sanitizer_cov_trace_pc() #22
  %139 = ptrtoint ptr %args_p to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %args_p, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.121, ptr noundef %140) #20
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.28) #20
  br label %for.inc279

for.inc279:                                       ; preds = %sw.epilog.sink.split, %for.body249.for.inc279_crit_edge
  %arrayidx251.1 = getelementptr %struct.ima_rule_entry, ptr %v, i32 0, i32 17, i32 1
  %141 = ptrtoint ptr %arrayidx251.1 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %arrayidx251.1, align 4
  %tobool253.not.1 = icmp eq ptr %142, null
  br i1 %tobool253.not.1, label %for.inc279.for.inc279.1_crit_edge, label %sw.epilog.sink.split.1

for.inc279.for.inc279.1_crit_edge:                ; preds = %for.inc279
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc279.1

sw.epilog.sink.split.1:                           ; preds = %for.inc279
  call void @__sanitizer_cov_trace_pc() #22
  %143 = ptrtoint ptr %args_p.1 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %args_p.1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.122, ptr noundef %144) #20
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.28) #20
  br label %for.inc279.1

for.inc279.1:                                     ; preds = %sw.epilog.sink.split.1, %for.inc279.for.inc279.1_crit_edge
  %arrayidx251.2 = getelementptr %struct.ima_rule_entry, ptr %v, i32 0, i32 17, i32 2
  %145 = ptrtoint ptr %arrayidx251.2 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %arrayidx251.2, align 4
  %tobool253.not.2 = icmp eq ptr %146, null
  br i1 %tobool253.not.2, label %for.inc279.1.for.inc279.2_crit_edge, label %sw.epilog.sink.split.2

for.inc279.1.for.inc279.2_crit_edge:              ; preds = %for.inc279.1
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc279.2

sw.epilog.sink.split.2:                           ; preds = %for.inc279.1
  call void @__sanitizer_cov_trace_pc() #22
  %147 = ptrtoint ptr %args_p.2 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %args_p.2, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.123, ptr noundef %148) #20
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.28) #20
  br label %for.inc279.2

for.inc279.2:                                     ; preds = %sw.epilog.sink.split.2, %for.inc279.1.for.inc279.2_crit_edge
  %arrayidx251.3 = getelementptr %struct.ima_rule_entry, ptr %v, i32 0, i32 17, i32 3
  %149 = ptrtoint ptr %arrayidx251.3 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %arrayidx251.3, align 4
  %tobool253.not.3 = icmp eq ptr %150, null
  br i1 %tobool253.not.3, label %for.inc279.2.for.inc279.3_crit_edge, label %sw.epilog.sink.split.3

for.inc279.2.for.inc279.3_crit_edge:              ; preds = %for.inc279.2
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc279.3

sw.epilog.sink.split.3:                           ; preds = %for.inc279.2
  call void @__sanitizer_cov_trace_pc() #22
  %151 = ptrtoint ptr %args_p.3 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %args_p.3, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.124, ptr noundef %152) #20
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.28) #20
  br label %for.inc279.3

for.inc279.3:                                     ; preds = %sw.epilog.sink.split.3, %for.inc279.2.for.inc279.3_crit_edge
  %arrayidx251.4 = getelementptr %struct.ima_rule_entry, ptr %v, i32 0, i32 17, i32 4
  %153 = ptrtoint ptr %arrayidx251.4 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %arrayidx251.4, align 4
  %tobool253.not.4 = icmp eq ptr %154, null
  br i1 %tobool253.not.4, label %for.inc279.3.for.inc279.4_crit_edge, label %sw.epilog.sink.split.4

for.inc279.3.for.inc279.4_crit_edge:              ; preds = %for.inc279.3
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc279.4

sw.epilog.sink.split.4:                           ; preds = %for.inc279.3
  call void @__sanitizer_cov_trace_pc() #22
  %155 = ptrtoint ptr %args_p.4 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %args_p.4, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.125, ptr noundef %156) #20
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.28) #20
  br label %for.inc279.4

for.inc279.4:                                     ; preds = %sw.epilog.sink.split.4, %for.inc279.3.for.inc279.4_crit_edge
  %arrayidx251.5 = getelementptr %struct.ima_rule_entry, ptr %v, i32 0, i32 17, i32 5
  %157 = ptrtoint ptr %arrayidx251.5 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %arrayidx251.5, align 4
  %tobool253.not.5 = icmp eq ptr %158, null
  br i1 %tobool253.not.5, label %for.inc279.4.for.inc279.5_crit_edge, label %sw.epilog.sink.split.5

for.inc279.4.for.inc279.5_crit_edge:              ; preds = %for.inc279.4
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc279.5

sw.epilog.sink.split.5:                           ; preds = %for.inc279.4
  call void @__sanitizer_cov_trace_pc() #22
  %159 = ptrtoint ptr %args_p.5 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %args_p.5, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.126, ptr noundef %160) #20
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.28) #20
  br label %for.inc279.5

for.inc279.5:                                     ; preds = %sw.epilog.sink.split.5, %for.inc279.4.for.inc279.5_crit_edge
  %template = getelementptr inbounds %struct.ima_rule_entry, ptr %v, i32 0, i32 21
  %161 = ptrtoint ptr %template to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %template, align 4
  %tobool282.not = icmp eq ptr %162, null
  br i1 %tobool282.not, label %for.inc279.5.if.end285_crit_edge, label %if.then283

for.inc279.5.if.end285_crit_edge:                 ; preds = %for.inc279.5
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end285

if.then283:                                       ; preds = %for.inc279.5
  call void @__sanitizer_cov_trace_pc() #22
  %name = getelementptr inbounds %struct.ima_template_desc, ptr %162, i32 0, i32 1
  %163 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %name, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.36, ptr noundef %164) #20
  br label %if.end285

if.end285:                                        ; preds = %if.then283, %for.inc279.5.if.end285_crit_edge
  %165 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %flags, align 4
  %and287 = and i32 %166, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and287)
  %tobool288.not = icmp eq i32 %and287, 0
  br i1 %tobool288.not, label %if.end285.if.end296_crit_edge, label %if.then289

if.end285.if.end296_crit_edge:                    ; preds = %if.end285
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end296

if.then289:                                       ; preds = %if.end285
  call void @__sanitizer_cov_trace_pc() #22
  %and291 = and i32 %166, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and291)
  %tobool292.not = icmp eq i32 %and291, 0
  %.str.38..str.37 = select i1 %tobool292.not, ptr @.str.38, ptr @.str.37
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull %.str.38..str.37) #20
  br label %if.end296

if.end296:                                        ; preds = %if.then289, %if.end285.if.end296_crit_edge
  %167 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %flags, align 4
  %and298 = and i32 %168, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and298)
  %tobool299.not = icmp eq i32 %and298, 0
  br i1 %tobool299.not, label %if.end296.if.end301_crit_edge, label %if.then300

if.end296.if.end301_crit_edge:                    ; preds = %if.end296
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end301

if.then300:                                       ; preds = %if.end296
  call void @__sanitizer_cov_trace_pc() #22
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.39) #20
  br label %if.end301

if.end301:                                        ; preds = %if.then300, %if.end296.if.end301_crit_edge
  %169 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %flags, align 4
  %and303 = and i32 %170, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and303)
  %tobool304.not = icmp eq i32 %and303, 0
  br i1 %tobool304.not, label %if.end301.if.end306_crit_edge, label %if.then305

if.end301.if.end306_crit_edge:                    ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end306

if.then305:                                       ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #22
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.40) #20
  br label %if.end306

if.end306:                                        ; preds = %if.then305, %if.end301.if.end306_crit_edge
  %call.i497 = call zeroext i1 @rcu_is_watching() #20
  br i1 %call.i497, label %if.end306.rcu_read_unlock.exit507_crit_edge, label %land.lhs.true.i500

if.end306.rcu_read_unlock.exit507_crit_edge:      ; preds = %if.end306
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit507

land.lhs.true.i500:                               ; preds = %if.end306
  %call1.i498 = call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i498)
  %tobool.not.i499 = icmp eq i32 %call1.i498, 0
  br i1 %tobool.not.i499, label %land.lhs.true.i500.rcu_read_unlock.exit507_crit_edge, label %land.lhs.true2.i502

land.lhs.true.i500.rcu_read_unlock.exit507_crit_edge: ; preds = %land.lhs.true.i500
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit507

land.lhs.true2.i502:                              ; preds = %land.lhs.true.i500
  %.b4.i501 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i501, label %land.lhs.true2.i502.rcu_read_unlock.exit507_crit_edge, label %if.then.i503

land.lhs.true2.i502.rcu_read_unlock.exit507_crit_edge: ; preds = %land.lhs.true2.i502
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit507

if.then.i503:                                     ; preds = %land.lhs.true2.i502
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.54, i32 noundef 724, ptr noundef nonnull @.str.56) #20
  br label %rcu_read_unlock.exit507

rcu_read_unlock.exit507:                          ; preds = %if.then.i503, %land.lhs.true2.i502.rcu_read_unlock.exit507_crit_edge, %land.lhs.true.i500.rcu_read_unlock.exit507_crit_edge, %if.end306.rcu_read_unlock.exit507_crit_edge
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !406
  %171 = call i32 @llvm.read_register.i32(metadata !393) #20
  %and.i.i.i.i.i504 = and i32 %171, -16384
  %172 = inttoptr i32 %and.i.i.i.i.i504 to ptr
  %preempt_count.i.i.i.i505 = getelementptr inbounds %struct.thread_info, ptr %172, i32 0, i32 1
  %173 = ptrtoint ptr %preempt_count.i.i.i.i505 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load volatile i32, ptr %preempt_count.i.i.i.i505, align 4
  %sub.i.i.i506 = add i32 %174, -1
  store volatile i32 %sub.i.i.i506, ptr %preempt_count.i.i.i.i505, align 4
  call void @rcu_read_unlock_strict() #20
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #20
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.7) #20
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit507, %rcu_read_unlock.exit
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %tbuf) #20
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @uid_gt([1 x i32] %left.coerce, [1 x i32] %right.coerce) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  %uid.coerce.fca.0.extract.i = extractvalue [1 x i32] %left.coerce, 0
  %uid.coerce.fca.0.extract.i6 = extractvalue [1 x i32] %right.coerce, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %uid.coerce.fca.0.extract.i, i32 %uid.coerce.fca.0.extract.i6)
  %cmp = icmp ugt i32 %uid.coerce.fca.0.extract.i, %uid.coerce.fca.0.extract.i6
  ret i1 %cmp
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @uid_lt([1 x i32] %left.coerce, [1 x i32] %right.coerce) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  %uid.coerce.fca.0.extract.i = extractvalue [1 x i32] %left.coerce, 0
  %uid.coerce.fca.0.extract.i6 = extractvalue [1 x i32] %right.coerce, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %uid.coerce.fca.0.extract.i, i32 %uid.coerce.fca.0.extract.i6)
  %cmp = icmp ult i32 %uid.coerce.fca.0.extract.i, %uid.coerce.fca.0.extract.i6
  ret i1 %cmp
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @gid_gt([1 x i32] %left.coerce, [1 x i32] %right.coerce) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  %gid.coerce.fca.0.extract.i = extractvalue [1 x i32] %left.coerce, 0
  %gid.coerce.fca.0.extract.i6 = extractvalue [1 x i32] %right.coerce, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %gid.coerce.fca.0.extract.i, i32 %gid.coerce.fca.0.extract.i6)
  %cmp = icmp ugt i32 %gid.coerce.fca.0.extract.i, %gid.coerce.fca.0.extract.i6
  ret i1 %cmp
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @gid_lt([1 x i32] %left.coerce, [1 x i32] %right.coerce) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  %gid.coerce.fca.0.extract.i = extractvalue [1 x i32] %left.coerce, 0
  %gid.coerce.fca.0.extract.i6 = extractvalue [1 x i32] %right.coerce, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %gid.coerce.fca.0.extract.i, i32 %gid.coerce.fca.0.extract.i6)
  %cmp = icmp ult i32 %gid.coerce.fca.0.extract.i, %gid.coerce.fca.0.extract.i6
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ima_appraise_signature(i32 noundef %id) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %id)
  %cmp = icmp ugt i32 %id, 6
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [0 x i32], ptr @read_idmap, i32 0, i32 %id
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %. = select i1 %tobool.not, i32 1, i32 %1
  %2 = tail call i32 @llvm.read_register.i32(metadata !393) #20
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !404
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #20
  %call.i = tail call zeroext i1 @rcu_is_watching() #20
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.54, i32 noundef 696, ptr noundef nonnull @.str.55) #20
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %6 = load volatile ptr, ptr @ima_rules, align 4
  %call = tail call i32 @rcu_read_lock_held() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end11_crit_edge

rcu_read_lock.exit.do.end11_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end11

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end11_crit_edge, label %land.lhs.true6

land.lhs.true.do.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end11

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b66 = load i1, ptr @ima_appraise_signature.__warned, align 1
  br i1 %.b66, label %land.lhs.true6.do.end11_crit_edge, label %if.then8

land.lhs.true6.do.end11_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end11

if.then8:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @ima_appraise_signature.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2188, ptr noundef nonnull @.str.1) #20
  br label %do.end11

do.end11:                                         ; preds = %if.then8, %land.lhs.true6.do.end11_crit_edge, %land.lhs.true.do.end11_crit_edge, %rcu_read_lock.exit.do.end11_crit_edge
  %call14 = tail call i32 @rcu_read_lock_any_held() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true16, label %do.end11.do.end24_crit_edge

do.end11.do.end24_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end24

land.lhs.true16:                                  ; preds = %do.end11
  %call17 = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %land.lhs.true16.do.end24_crit_edge, label %land.lhs.true19

land.lhs.true16.do.end24_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end24

land.lhs.true19:                                  ; preds = %land.lhs.true16
  %.b6465 = load i1, ptr @ima_appraise_signature.__warned.41, align 1
  br i1 %.b6465, label %land.lhs.true19.do.end24_crit_edge, label %if.then21

land.lhs.true19.do.end24_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end24

if.then21:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @ima_appraise_signature.__warned.41, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2189, ptr noundef nonnull @.str.3) #20
  br label %do.end24

do.end24:                                         ; preds = %if.then21, %land.lhs.true19.do.end24_crit_edge, %land.lhs.true16.do.end24_crit_edge, %do.end11.do.end24_crit_edge
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %entry1.077 = load volatile ptr, ptr %6, align 4
  %cmp30.not78 = icmp eq ptr %entry1.077, %6
  br i1 %cmp30.not78, label %do.end24.for.end_crit_edge, label %do.end24.for.body_crit_edge

do.end24.for.body_crit_edge:                      ; preds = %do.end24
  br label %for.body

do.end24.for.end_crit_edge:                       ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end24.for.body_crit_edge
  %entry1.079 = phi ptr [ %entry1.0, %for.inc.for.body_crit_edge ], [ %entry1.077, %do.end24.for.body_crit_edge ]
  %action = getelementptr inbounds %struct.ima_rule_entry, ptr %entry1.079, i32 0, i32 1
  %8 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %action, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp31.not = icmp eq i32 %9, 4
  br i1 %cmp31.not, label %if.end33, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

if.end33:                                         ; preds = %for.body
  %func34 = getelementptr inbounds %struct.ima_rule_entry, ptr %entry1.079, i32 0, i32 3
  %10 = ptrtoint ptr %func34 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %func34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool35.not = icmp eq i32 %11, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %.)
  %cmp38.not = icmp eq i32 %11, %.
  %or.cond = select i1 %tobool35.not, i1 true, i1 %cmp38.not
  br i1 %or.cond, label %if.end40, label %if.end33.for.inc_crit_edge

if.end33.for.inc_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

if.end40:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #22
  %flags = getelementptr inbounds %struct.ima_rule_entry, ptr %entry1.079, i32 0, i32 2
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %and = and i32 %13, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool41.not = icmp ne i32 %and, 0
  br label %for.end

for.inc:                                          ; preds = %if.end33.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %14 = ptrtoint ptr %entry1.079 to i32
  call void @__asan_load4_noabort(i32 %14)
  %entry1.0 = load volatile ptr, ptr %entry1.079, align 4
  %cmp30.not = icmp eq ptr %entry1.0, %6
  br i1 %cmp30.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end40, %do.end24.for.end_crit_edge
  %found.0.off0 = phi i1 [ %tobool41.not, %if.end40 ], [ false, %do.end24.for.end_crit_edge ], [ false, %for.inc.for.end_crit_edge ]
  %call.i67 = tail call zeroext i1 @rcu_is_watching() #20
  br i1 %call.i67, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i70

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit

land.lhs.true.i70:                                ; preds = %for.end
  %call1.i68 = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i68)
  %tobool.not.i69 = icmp eq i32 %call1.i68, 0
  br i1 %tobool.not.i69, label %land.lhs.true.i70.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i72

land.lhs.true.i70.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i70
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit

land.lhs.true2.i72:                               ; preds = %land.lhs.true.i70
  %.b4.i71 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i71, label %land.lhs.true2.i72.rcu_read_unlock.exit_crit_edge, label %if.then.i73

land.lhs.true2.i72.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i72
  call void @__sanitizer_cov_trace_pc() #22
  br label %rcu_read_unlock.exit

if.then.i73:                                      ; preds = %land.lhs.true2.i72
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.54, i32 noundef 724, ptr noundef nonnull @.str.56) #20
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i73, %land.lhs.true2.i72.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i70.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !406
  %15 = tail call i32 @llvm.read_register.i32(metadata !393) #20
  %and.i.i.i.i.i74 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i74 to ptr
  %preempt_count.i.i.i.i75 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i75 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i75, align 4
  %sub.i.i.i = add i32 %18, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i75, align 4
  tail call void @rcu_read_unlock_strict() #20
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #20
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %found.0.off0, %rcu_read_unlock.exit ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ima_rule_contains_lsm_cond(ptr nocapture noundef readonly %entry1) unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %args_p = getelementptr %struct.ima_rule_entry, ptr %entry1, i32 0, i32 17, i32 0, i32 1
  %0 = ptrtoint ptr %args_p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %args_p, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.cond, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

for.cond:                                         ; preds = %entry
  %args_p.1 = getelementptr %struct.ima_rule_entry, ptr %entry1, i32 0, i32 17, i32 1, i32 1
  %2 = ptrtoint ptr %args_p.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %args_p.1, align 4
  %tobool.not.1 = icmp eq ptr %3, null
  br i1 %tobool.not.1, label %for.cond.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %args_p.2 = getelementptr %struct.ima_rule_entry, ptr %entry1, i32 0, i32 17, i32 2, i32 1
  %4 = ptrtoint ptr %args_p.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %args_p.2, align 4
  %tobool.not.2 = icmp eq ptr %5, null
  br i1 %tobool.not.2, label %for.cond.2, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %args_p.3 = getelementptr %struct.ima_rule_entry, ptr %entry1, i32 0, i32 17, i32 3, i32 1
  %6 = ptrtoint ptr %args_p.3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %args_p.3, align 4
  %tobool.not.3 = icmp eq ptr %7, null
  br i1 %tobool.not.3, label %for.cond.3, label %for.cond.2.cleanup_crit_edge

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  %args_p.4 = getelementptr %struct.ima_rule_entry, ptr %entry1, i32 0, i32 17, i32 4, i32 1
  %8 = ptrtoint ptr %args_p.4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %args_p.4, align 4
  %tobool.not.4 = icmp eq ptr %9, null
  br i1 %tobool.not.4, label %for.cond.4, label %for.cond.3.cleanup_crit_edge

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #22
  %args_p.5 = getelementptr %struct.ima_rule_entry, ptr %entry1, i32 0, i32 17, i32 5, i32 1
  %10 = ptrtoint ptr %args_p.5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %args_p.5, align 4
  %tobool.not.5 = icmp ne ptr %11, null
  br label %cleanup

cleanup:                                          ; preds = %for.cond.4, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %cmp.lcssa = phi i1 [ true, %entry.cleanup_crit_edge ], [ true, %for.cond.cleanup_crit_edge ], [ true, %for.cond.1.cleanup_crit_edge ], [ true, %for.cond.2.cleanup_crit_edge ], [ true, %for.cond.3.cleanup_crit_edge ], [ %tobool.not.5, %for.cond.4 ]
  ret i1 %cmp.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ima_lsm_free_rule(ptr nocapture noundef readonly %entry1) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.ima_rule_entry, ptr %entry1, i32 0, i32 17, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  tail call void @security_audit_rule_free(ptr noundef %1) #20
  %args_p = getelementptr %struct.ima_rule_entry, ptr %entry1, i32 0, i32 17, i32 0, i32 1
  %2 = ptrtoint ptr %args_p to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %args_p, align 4
  tail call void @kfree(ptr noundef %3) #20
  %arrayidx.1 = getelementptr %struct.ima_rule_entry, ptr %entry1, i32 0, i32 17, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.1, align 4
  tail call void @security_audit_rule_free(ptr noundef %5) #20
  %args_p.1 = getelementptr %struct.ima_rule_entry, ptr %entry1, i32 0, i32 17, i32 1, i32 1
  %6 = ptrtoint ptr %args_p.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %args_p.1, align 4
  tail call void @kfree(ptr noundef %7) #20
  %arrayidx.2 = getelementptr %struct.ima_rule_entry, ptr %entry1, i32 0, i32 17, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.2, align 4
  tail call void @security_audit_rule_free(ptr noundef %9) #20
  %args_p.2 = getelementptr %struct.ima_rule_entry, ptr %entry1, i32 0, i32 17, i32 2, i32 1
  %10 = ptrtoint ptr %args_p.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %args_p.2, align 4
  tail call void @kfree(ptr noundef %11) #20
  %arrayidx.3 = getelementptr %struct.ima_rule_entry, ptr %entry1, i32 0, i32 17, i32 3
  %12 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.3, align 4
  tail call void @security_audit_rule_free(ptr noundef %13) #20
  %args_p.3 = getelementptr %struct.ima_rule_entry, ptr %entry1, i32 0, i32 17, i32 3, i32 1
  %14 = ptrtoint ptr %args_p.3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %args_p.3, align 4
  tail call void @kfree(ptr noundef %15) #20
  %arrayidx.4 = getelementptr %struct.ima_rule_entry, ptr %entry1, i32 0, i32 17, i32 4
  %16 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.4, align 4
  tail call void @security_audit_rule_free(ptr noundef %17) #20
  %args_p.4 = getelementptr %struct.ima_rule_entry, ptr %entry1, i32 0, i32 17, i32 4, i32 1
  %18 = ptrtoint ptr %args_p.4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %args_p.4, align 4
  tail call void @kfree(ptr noundef %19) #20
  %arrayidx.5 = getelementptr %struct.ima_rule_entry, ptr %entry1, i32 0, i32 17, i32 5
  %20 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.5, align 4
  tail call void @security_audit_rule_free(ptr noundef %21) #20
  %args_p.5 = getelementptr %struct.ima_rule_entry, ptr %entry1, i32 0, i32 17, i32 5, i32 1
  %22 = ptrtoint ptr %args_p.5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %args_p.5, align 4
  tail call void @kfree(ptr noundef %23) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_audit_rule_init(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_audit_rule_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @has_capability_noaudit(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_inode_getsecid(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_audit_rule_match(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #15

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @uid_eq([1 x i32] %left.coerce, [1 x i32] %right.coerce) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  %uid.coerce.fca.0.extract.i = extractvalue [1 x i32] %left.coerce, 0
  %uid.coerce.fca.0.extract.i6 = extractvalue [1 x i32] %right.coerce, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %uid.coerce.fca.0.extract.i, i32 %uid.coerce.fca.0.extract.i6)
  %cmp = icmp eq i32 %uid.coerce.fca.0.extract.i, %uid.coerce.fca.0.extract.i6
  ret i1 %cmp
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #16

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #18

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @gid_eq([1 x i32] %left.coerce, [1 x i32] %right.coerce) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  %gid.coerce.fca.0.extract.i = extractvalue [1 x i32] %left.coerce, 0
  %gid.coerce.fca.0.extract.i6 = extractvalue [1 x i32] %right.coerce, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %gid.coerce.fca.0.extract.i, i32 %gid.coerce.fca.0.extract.i6)
  %cmp = icmp eq i32 %gid.coerce.fca.0.extract.i, %gid.coerce.fca.0.extract.i6
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_token(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ima_alloc_rule_opt_list(ptr noundef %src) unnamed_addr #3 align 64 {
entry:
  %next = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %next) #20
  %call = tail call ptr @match_strdup(ptr noundef %src) #20
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %next, align 4
  %call243 = call ptr @strsep(ptr noundef nonnull %next, ptr noundef nonnull @.str.105) #20
  %tobool3.not44 = icmp eq ptr %call243, null
  br i1 %tobool3.not44, label %if.end.if.then9_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then9

while.body:                                       ; preds = %if.end7.while.body_crit_edge, %if.end.while.body_crit_edge
  %call246 = phi ptr [ %call2, %if.end7.while.body_crit_edge ], [ %call243, %if.end.while.body_crit_edge ]
  %count.045 = phi i32 [ %inc, %if.end7.while.body_crit_edge ], [ 0, %if.end.while.body_crit_edge ]
  %1 = ptrtoint ptr %call246 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %call246, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool4.not = icmp eq i8 %2, 0
  br i1 %tobool4.not, label %if.then5, label %if.end7

if.then5:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #22
  call void @kfree(ptr noundef nonnull %call) #20
  br label %cleanup

if.end7:                                          ; preds = %while.body
  %inc = add i32 %count.045, 1
  %call2 = call ptr @strsep(ptr noundef nonnull %next, ptr noundef nonnull @.str.105) #20
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %while.end, label %if.end7.while.body_crit_edge

if.end7.while.body_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body

while.end:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc)
  %tobool8.not = icmp eq i32 %inc, 0
  br i1 %tobool8.not, label %while.end.if.then9_crit_edge, label %if.end8.i.i

while.end.if.then9_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then9

if.then9:                                         ; preds = %while.end.if.then9_crit_edge, %if.end.if.then9_crit_edge
  call void @kfree(ptr noundef nonnull %call) #20
  br label %cleanup

if.end8.i.i:                                      ; preds = %while.end
  %3 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %inc, i32 4) #20
  %4 = extractvalue { i32, i1 } %3, 1
  %5 = extractvalue { i32, i1 } %3, 0
  %spec.select.i = call i32 @llvm.uadd.sat.i32(i32 %5, i32 4) #20
  %retval.0.i = select i1 %4, i32 -1, i32 %spec.select.i
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3520) #27
  %tobool14.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool14.not, label %if.then15, label %if.end8.i.i.for.body_crit_edge

if.end8.i.i.for.body_crit_edge:                   ; preds = %if.end8.i.i
  br label %for.body

if.then15:                                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #22
  call void @kfree(ptr noundef nonnull %call) #20
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end8.i.i.for.body_crit_edge
  %i.049 = phi i32 [ %inc19, %for.body.for.body_crit_edge ], [ 0, %if.end8.i.i.for.body_crit_edge ]
  %cur.048 = phi ptr [ %add.ptr, %for.body.for.body_crit_edge ], [ %call, %if.end8.i.i.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ima_rule_opt_list, ptr %call9.i.i, i32 0, i32 1, i32 %i.049
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %cur.048, ptr %arrayidx, align 4
  %strlen = call i32 @strlen(ptr %cur.048) #23
  %strchr = getelementptr i8, ptr %cur.048, i32 1
  %add.ptr = getelementptr i8, ptr %strchr, i32 %strlen
  %inc19 = add nuw i32 %i.049, 1
  %exitcond.not = icmp eq i32 %i.049, %count.045
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  %7 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %inc, ptr %call9.i.i, align 128
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then15, %if.then9, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %if.then5 ], [ %call9.i.i, %for.end ], [ inttoptr (i32 -12 to ptr), %if.then15 ], [ inttoptr (i32 -22 to ptr), %if.then9 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %next) #20
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uuid_parse(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_template_desc(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @template_desc_init_fields(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @audit_log_format(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @audit_log_end(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @audit_log_start(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @match_strdup(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_has_alg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #16

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #20

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #21 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 185)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #21 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 185)
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nounwind readonly }
attributes #15 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #16 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #17 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #19 = { argmemonly nofree nounwind readonly willreturn }
attributes #20 = { nounwind }
attributes #21 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #22 = { nomerge }
attributes #23 = { nobuiltin }
attributes #24 = { cold nounwind }
attributes #25 = { nobuiltin nounwind }
attributes #26 = { nounwind allocsize(2) }
attributes #27 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !12, !13, !15, !17, !19, !20, !21, !22, !24, !26, !28, !30, !32, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !106, !107, !109, !111, !113, !115, !117, !119, !121, !122, !123, !124, !125, !127, !128, !129, !130, !132, !133, !134, !135, !137, !138, !139, !141, !143, !144, !146, !148, !150, !152, !153, !154, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !274, !275, !277, !279, !280, !281, !282, !284, !285, !286, !288, !290, !292, !294, !295, !296, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391}
!llvm.named.register.sp = !{!393}
!llvm.module.flags = !{!394, !395, !396, !397, !398, !399, !400, !401}
!llvm.ident = !{!402}

!0 = !{ptr @__setup_default_measure_policy_setup, !1, !"__setup_default_measure_policy_setup", i1 false, i1 false}
!1 = !{!"../security/integrity/ima/ima_policy.c", i32 251, i32 1}
!2 = !{ptr @__setup_policy_setup, !3, !"__setup_policy_setup", i1 false, i1 false}
!3 = !{!"../security/integrity/ima/ima_policy.c", i32 280, i32 1}
!4 = !{ptr @__setup_default_appraise_policy_setup, !5, !"__setup_default_appraise_policy_setup", i1 false, i1 false}
!5 = !{!"../security/integrity/ima/ima_policy.c", i32 287, i32 1}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../security/integrity/ima/ima_policy.c", i32 705, i32 18}
!8 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../security/integrity/ima/ima_policy.c", i32 706, i32 2}
!12 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../security/integrity/ima/ima_policy.c", i32 770, i32 18}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../security/integrity/ima/ima_policy.c", i32 771, i32 2}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../security/integrity/ima/ima_policy.c", i32 926, i32 3}
!19 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ima_init_policy._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @ima_init_policy._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @ima_parse_add_rule.op, !23, !"op", i1 false, i1 false}
!23 = !{!"../security/integrity/ima/ima_policy.c", i32 1815, i32 20}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../security/integrity/ima/ima_policy.c", i32 1821, i32 20}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../security/integrity/ima/ima_policy.c", i32 1823, i32 17}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../security/integrity/ima/ima_policy.c", i32 1831, i32 19}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../security/integrity/ima/ima_policy.c", i32 1841, i32 19}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../security/integrity/ima/ima_policy.c", i32 1871, i32 2}
!34 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.21, !33, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.22, !33, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.23, !33, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.24, !33, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.25, !33, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.26, !33, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @func_tokens, !50, !"func_tokens", i1 false, i1 false}
!50 = !{!"../security/integrity/ima/ima_policy.c", i32 1870, i32 19}
!51 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!52 = !{!"../security/integrity/ima/ima_policy.c", i32 1893, i32 18}
!53 = distinct !{null, !54, !"__warned", i1 false, i1 false}
!54 = !{!"../security/integrity/ima/ima_policy.c", i32 1894, i32 2}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../security/integrity/ima/ima_policy.c", i32 1993, i32 14}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../security/integrity/ima/ima_policy.c", i32 2013, i32 32}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../security/integrity/ima/ima_policy.c", i32 2019, i32 32}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../security/integrity/ima/ima_policy.c", i32 2025, i32 15}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../security/integrity/ima/ima_policy.c", i32 2031, i32 15}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../security/integrity/ima/ima_policy.c", i32 2037, i32 32}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../security/integrity/ima/ima_policy.c", i32 2043, i32 17}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../security/integrity/ima/ima_policy.c", i32 2114, i32 15}
!71 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../security/integrity/ima/ima_policy.c", i32 2151, i32 17}
!73 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../security/integrity/ima/ima_policy.c", i32 2154, i32 16}
!75 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../security/integrity/ima/ima_policy.c", i32 2156, i32 16}
!77 = !{ptr @.str.39, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../security/integrity/ima/ima_policy.c", i32 2159, i32 15}
!79 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../security/integrity/ima/ima_policy.c", i32 2161, i32 15}
!81 = distinct !{null, !82, !"__warned", i1 false, i1 false}
!82 = !{!"../security/integrity/ima/ima_policy.c", i32 2188, i32 18}
!83 = distinct !{null, !84, !"__warned", i1 false, i1 false}
!84 = !{!"../security/integrity/ima/ima_policy.c", i32 2189, i32 2}
!85 = !{ptr @ima_policy_flag, !86, !"ima_policy_flag", i1 false, i1 false}
!86 = !{!"../security/integrity/ima/ima_policy.c", i32 55, i32 5}
!87 = !{ptr @temp_ima_appraise, !88, !"temp_ima_appraise", i1 false, i1 false}
!88 = !{!"../security/integrity/ima/ima_policy.c", i32 56, i32 12}
!89 = !{ptr @build_ima_appraise, !90, !"build_ima_appraise", i1 false, i1 false}
!90 = !{!"../security/integrity/ima/ima_policy.c", i32 57, i32 12}
!91 = !{ptr @ima_setxattr_allowed_hash_algorithms, !92, !"ima_setxattr_allowed_hash_algorithms", i1 false, i1 false}
!92 = !{!"../security/integrity/ima/ima_policy.c", i32 59, i32 10}
!93 = distinct !{null, !94, !"arch_policy_entry", i1 false, i1 false}
!94 = !{!"../security/integrity/ima/ima_policy.c", i32 234, i32 31}
!95 = !{ptr @ima_policy, !96, !"ima_policy", i1 false, i1 false}
!96 = !{!"../security/integrity/ima/ima_policy.c", i32 241, i32 12}
!97 = distinct !{null, !98, !"ima_use_appraise_tcb", i1 false, i1 false}
!98 = !{!"../security/integrity/ima/ima_policy.c", i32 253, i32 13}
!99 = distinct !{null, !100, !"ima_use_secure_boot", i1 false, i1 false}
!100 = !{!"../security/integrity/ima/ima_policy.c", i32 254, i32 13}
!101 = distinct !{null, !102, !"ima_use_critical_data", i1 false, i1 false}
!102 = !{!"../security/integrity/ima/ima_policy.c", i32 255, i32 13}
!103 = distinct !{null, !104, !"ima_fail_unverifiable_sigs", i1 false, i1 false}
!104 = !{!"../security/integrity/ima/ima_policy.c", i32 256, i32 13}
!105 = !{ptr @__setup_str_default_measure_policy_setup, !1, !"__setup_str_default_measure_policy_setup", i1 false, i1 false}
!106 = !{ptr @__setup_str_policy_setup, !3, !"__setup_str_policy_setup", i1 false, i1 false}
!107 = !{ptr @.str.42, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../security/integrity/ima/ima_policy.c", i32 261, i32 27}
!109 = !{ptr @.str.43, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../security/integrity/ima/ima_policy.c", i32 264, i32 18}
!111 = !{ptr @.str.44, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../security/integrity/ima/ima_policy.c", i32 266, i32 22}
!113 = !{ptr @.str.45, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../security/integrity/ima/ima_policy.c", i32 268, i32 22}
!115 = !{ptr @.str.46, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../security/integrity/ima/ima_policy.c", i32 270, i32 22}
!117 = !{ptr @.str.47, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../security/integrity/ima/ima_policy.c", i32 272, i32 22}
!119 = !{ptr @.str.48, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../security/integrity/ima/ima_policy.c", i32 275, i32 4}
!121 = !{ptr @.str.49, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @policy_setup._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @policy_setup._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @__setup_str_default_appraise_policy_setup, !5, !"__setup_str_default_appraise_policy_setup", i1 false, i1 false}
!125 = !{ptr @.str.50, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../security/integrity/ima/ima_policy.c", i32 468, i32 4}
!127 = !{ptr @.str.51, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @ima_lsm_update_rules._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @ima_lsm_update_rules._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.52, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../security/integrity/ima/ima_policy.c", i32 413, i32 4}
!132 = !{ptr @.str.53, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @ima_lsm_copy_rule._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @ima_lsm_copy_rule._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = distinct !{null, !136, !"__warned", i1 false, i1 false}
!136 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!137 = !{ptr @.str.54, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.55, !136, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @ima_rules, !140, !"ima_rules", i1 false, i1 false}
!140 = !{!"../security/integrity/ima/ima_policy.c", i32 239, i32 32}
!141 = distinct !{null, !142, !"__warned", i1 false, i1 false}
!142 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!143 = !{ptr @.str.56, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @dont_measure_rules, !145, !"dont_measure_rules", i1 false, i1 false}
!145 = !{!"../security/integrity/ima/ima_policy.c", i32 124, i32 30}
!146 = !{ptr @original_measurement_rules, !147, !"original_measurement_rules", i1 false, i1 false}
!147 = !{!"../security/integrity/ima/ima_policy.c", i32 142, i32 30}
!148 = !{ptr @default_measurement_rules, !149, !"default_measurement_rules", i1 false, i1 false}
!149 = !{!"../security/integrity/ima/ima_policy.c", i32 154, i32 30}
!150 = !{ptr @.str.57, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../security/integrity/ima/ima_policy.c", i32 878, i32 4}
!152 = !{ptr @.str.58, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @ima_init_arch_policy._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @ima_init_arch_policy._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @secure_boot_rules, !156, !"secure_boot_rules", i1 false, i1 false}
!156 = !{!"../security/integrity/ima/ima_policy.c", i32 218, i32 30}
!157 = !{ptr @build_appraise_rules, !158, !"build_appraise_rules", i1 false, i1 false}
!158 = !{!"../security/integrity/ima/ima_policy.c", i32 199, i32 30}
!159 = !{ptr @default_appraise_rules, !160, !"default_appraise_rules", i1 false, i1 false}
!160 = !{!"../security/integrity/ima/ima_policy.c", i32 170, i32 30}
!161 = !{ptr @critical_data_rules, !162, !"critical_data_rules", i1 false, i1 false}
!162 = !{!"../security/integrity/ima/ima_policy.c", i32 229, i32 30}
!163 = !{ptr @ima_temp_rules, !164, !"ima_temp_rules", i1 false, i1 false}
!164 = !{!"../security/integrity/ima/ima_policy.c", i32 238, i32 8}
!165 = !{ptr @ima_policy_rules, !166, !"ima_policy_rules", i1 false, i1 false}
!166 = !{!"../security/integrity/ima/ima_policy.c", i32 237, i32 8}
!167 = !{ptr @.str.59, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../security/integrity/ima/ima_policy.c", i32 1360, i32 23}
!169 = !{ptr @.str.60, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../security/integrity/ima/ima_policy.c", i32 1360, i32 33}
!171 = !{ptr @.str.61, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../security/integrity/ima/ima_policy.c", i32 1368, i32 33}
!173 = !{ptr @.str.62, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../security/integrity/ima/ima_policy.c", i32 1376, i32 33}
!175 = !{ptr @.str.63, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../security/integrity/ima/ima_policy.c", i32 1384, i32 33}
!177 = !{ptr @.str.64, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../security/integrity/ima/ima_policy.c", i32 1392, i32 33}
!179 = !{ptr @.str.65, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../security/integrity/ima/ima_policy.c", i32 1400, i32 33}
!181 = !{ptr @.str.66, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../security/integrity/ima/ima_policy.c", i32 1408, i32 33}
!183 = !{ptr @.str.67, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../security/integrity/ima/ima_policy.c", i32 1416, i32 23}
!185 = !{ptr @.str.68, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../security/integrity/ima/ima_policy.c", i32 1424, i32 34}
!187 = !{ptr @.str.69, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../security/integrity/ima/ima_policy.c", i32 1430, i32 35}
!189 = !{ptr @.str.70, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../security/integrity/ima/ima_policy.c", i32 1460, i32 23}
!191 = !{ptr @.str.71, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../security/integrity/ima/ima_policy.c", i32 1469, i32 22}
!193 = !{ptr @.str.72, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../security/integrity/ima/ima_policy.c", i32 1471, i32 26}
!195 = !{ptr @.str.73, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../security/integrity/ima/ima_policy.c", i32 1473, i32 26}
!197 = !{ptr @.str.74, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../security/integrity/ima/ima_policy.c", i32 1475, i32 26}
!199 = !{ptr @.str.75, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../security/integrity/ima/ima_policy.c", i32 1484, i32 23}
!201 = !{ptr @.str.76, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../security/integrity/ima/ima_policy.c", i32 1496, i32 23}
!203 = !{ptr @.str.77, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../security/integrity/ima/ima_policy.c", i32 1507, i32 23}
!205 = !{ptr @.str.78, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../security/integrity/ima/ima_policy.c", i32 1525, i32 23}
!207 = !{ptr @.str.79, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../security/integrity/ima/ima_policy.c", i32 1542, i32 23}
!209 = !{ptr @.str.80, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../security/integrity/ima/ima_policy.c", i32 1568, i32 38}
!211 = !{ptr @.str.81, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../security/integrity/ima/ima_policy.c", i32 1568, i32 47}
!213 = distinct !{null, !214, !"__warned", i1 false, i1 false}
!214 = !{!"../security/integrity/ima/ima_policy.c", i32 1578, i32 28}
!215 = !{ptr @.str.82, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../security/integrity/ima/ima_policy.c", i32 1603, i32 38}
!217 = !{ptr @.str.83, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../security/integrity/ima/ima_policy.c", i32 1603, i32 47}
!219 = distinct !{null, !220, !"__warned", i1 false, i1 false}
!220 = !{!"../security/integrity/ima/ima_policy.c", i32 1613, i32 28}
!221 = !{ptr @.str.85, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../security/integrity/ima/ima_policy.c", i32 1631, i32 26}
!223 = distinct !{null, !224, !"__warned", i1 false, i1 false}
!224 = !{!"../security/integrity/ima/ima_policy.c", i32 1640, i32 31}
!225 = !{ptr @.str.87, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../security/integrity/ima/ima_policy.c", i32 1657, i32 26}
!227 = distinct !{null, !228, !"__warned", i1 false, i1 false}
!228 = !{!"../security/integrity/ima/ima_policy.c", i32 1666, i32 31}
!229 = !{ptr @.str.89, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../security/integrity/ima/ima_policy.c", i32 1676, i32 23}
!231 = !{ptr @.str.90, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../security/integrity/ima/ima_policy.c", i32 1682, i32 23}
!233 = !{ptr @.str.91, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../security/integrity/ima/ima_policy.c", i32 1688, i32 23}
!235 = !{ptr @.str.92, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../security/integrity/ima/ima_policy.c", i32 1694, i32 23}
!237 = !{ptr @.str.93, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../security/integrity/ima/ima_policy.c", i32 1700, i32 23}
!239 = !{ptr @.str.94, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../security/integrity/ima/ima_policy.c", i32 1706, i32 23}
!241 = !{ptr @.str.95, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../security/integrity/ima/ima_policy.c", i32 1712, i32 23}
!243 = !{ptr @.str.96, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../security/integrity/ima/ima_policy.c", i32 1713, i32 30}
!245 = !{ptr @.str.97, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../security/integrity/ima/ima_policy.c", i32 1716, i32 27}
!247 = !{ptr @.str.98, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../security/integrity/ima/ima_policy.c", i32 1723, i32 23}
!249 = !{ptr @.str.99, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../security/integrity/ima/ima_policy.c", i32 1725, i32 29}
!251 = !{ptr @.str.100, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../security/integrity/ima/ima_policy.c", i32 1731, i32 23}
!253 = !{ptr @.str.101, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../security/integrity/ima/ima_policy.c", i32 1753, i32 23}
!255 = !{ptr @.str.102, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../security/integrity/ima/ima_policy.c", i32 1763, i32 23}
!257 = !{ptr @.str.103, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../security/integrity/ima/ima_policy.c", i32 1785, i32 23}
!259 = !{ptr @.str.104, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../security/integrity/ima/ima_policy.c", i32 1801, i32 23}
!261 = !{ptr @.str.105, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../security/integrity/ima/ima_policy.c", i32 302, i32 30}
!263 = !{ptr @.str.106, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../security/integrity/ima/ima_policy.c", i32 1124, i32 24}
!265 = !{ptr @.str.107, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../security/integrity/ima/ima_policy.c", i32 1132, i32 24}
!267 = !{ptr @.str.108, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../security/integrity/ima/ima_policy.c", i32 1135, i32 24}
!269 = !{ptr @.str.109, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../security/integrity/ima/ima_policy.c", i32 1137, i32 23}
!271 = !{ptr @.str.110, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../security/integrity/ima/ima_policy.c", i32 1097, i32 3}
!273 = !{ptr @ima_lsm_rule_init._entry, !272, !"_entry", i1 false, i1 false}
!274 = !{ptr @ima_lsm_rule_init._entry_ptr, !272, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.111, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../security/integrity/ima/ima_policy.c", i32 1305, i32 31}
!277 = !{ptr @.str.112, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../security/integrity/ima/ima_policy.c", i32 1309, i32 4}
!279 = !{ptr @.str.113, !278, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @ima_parse_appraise_algos._entry, !278, !"_entry", i1 false, i1 false}
!281 = !{ptr @ima_parse_appraise_algos._entry_ptr, !278, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @.str.115, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../security/integrity/ima/ima_policy.c", i32 1315, i32 4}
!284 = !{ptr @ima_parse_appraise_algos._entry.114, !283, !"_entry", i1 false, i1 false}
!285 = !{ptr @ima_parse_appraise_algos._entry_ptr.116, !283, !"_entry_ptr", i1 false, i1 false}
!286 = distinct !{null, !287, !"checked", i1 false, i1 false}
!287 = !{!"../security/integrity/ima/ima_policy.c", i32 1154, i32 14}
!288 = !{ptr @.str.117, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../security/integrity/ima/ima_policy.c", i32 1163, i32 46}
!290 = !{ptr @.str.118, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../security/integrity/ima/ima_policy.c", i32 1165, i32 51}
!292 = !{ptr @.str.119, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../security/integrity/ima/ima_policy.c", i32 1170, i32 3}
!294 = !{ptr @.str.120, !293, !"<string literal>", i1 false, i1 false}
!295 = !{ptr @check_template_modsig._entry, !293, !"_entry", i1 false, i1 false}
!296 = !{ptr @check_template_modsig._entry_ptr, !293, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @ima_default_rules, !298, !"ima_default_rules", i1 false, i1 false}
!298 = !{!"../security/integrity/ima/ima_policy.c", i32 236, i32 8}
!299 = !{ptr @.str.121, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../security/integrity/ima/ima_policy.c", i32 1040, i32 17}
!301 = !{ptr @.str.122, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../security/integrity/ima/ima_policy.c", i32 1041, i32 17}
!303 = !{ptr @.str.123, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../security/integrity/ima/ima_policy.c", i32 1042, i32 17}
!305 = !{ptr @.str.124, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../security/integrity/ima/ima_policy.c", i32 1043, i32 18}
!307 = !{ptr @.str.125, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../security/integrity/ima/ima_policy.c", i32 1044, i32 18}
!309 = !{ptr @.str.126, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../security/integrity/ima/ima_policy.c", i32 1045, i32 18}
!311 = !{ptr @.str.127, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../security/integrity/ima/ima_policy.c", i32 1046, i32 13}
!313 = !{ptr @.str.128, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../security/integrity/ima/ima_policy.c", i32 1047, i32 13}
!315 = !{ptr @.str.129, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../security/integrity/ima/ima_policy.c", i32 1048, i32 16}
!317 = !{ptr @.str.130, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../security/integrity/ima/ima_policy.c", i32 1049, i32 15}
!319 = !{ptr @.str.131, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../security/integrity/ima/ima_policy.c", i32 1050, i32 15}
!321 = !{ptr @.str.132, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../security/integrity/ima/ima_policy.c", i32 1051, i32 15}
!323 = !{ptr @.str.133, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../security/integrity/ima/ima_policy.c", i32 1052, i32 16}
!325 = !{ptr @.str.134, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../security/integrity/ima/ima_policy.c", i32 1053, i32 15}
!327 = !{ptr @.str.135, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../security/integrity/ima/ima_policy.c", i32 1054, i32 16}
!329 = !{ptr @.str.136, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../security/integrity/ima/ima_policy.c", i32 1055, i32 18}
!331 = !{ptr @.str.137, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../security/integrity/ima/ima_policy.c", i32 1056, i32 18}
!333 = !{ptr @.str.138, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../security/integrity/ima/ima_policy.c", i32 1057, i32 15}
!335 = !{ptr @.str.139, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../security/integrity/ima/ima_policy.c", i32 1058, i32 16}
!337 = !{ptr @.str.140, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../security/integrity/ima/ima_policy.c", i32 1059, i32 15}
!339 = !{ptr @.str.141, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../security/integrity/ima/ima_policy.c", i32 1060, i32 16}
!341 = !{ptr @.str.142, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../security/integrity/ima/ima_policy.c", i32 1061, i32 18}
!343 = !{ptr @.str.143, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../security/integrity/ima/ima_policy.c", i32 1062, i32 18}
!345 = !{ptr @.str.144, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../security/integrity/ima/ima_policy.c", i32 1063, i32 15}
!347 = !{ptr @.str.145, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../security/integrity/ima/ima_policy.c", i32 1064, i32 16}
!349 = !{ptr @.str.146, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../security/integrity/ima/ima_policy.c", i32 1065, i32 15}
!351 = !{ptr @.str.147, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../security/integrity/ima/ima_policy.c", i32 1066, i32 16}
!353 = !{ptr @.str.148, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../security/integrity/ima/ima_policy.c", i32 1067, i32 18}
!355 = !{ptr @.str.149, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../security/integrity/ima/ima_policy.c", i32 1068, i32 18}
!357 = !{ptr @.str.150, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../security/integrity/ima/ima_policy.c", i32 1069, i32 22}
!359 = !{ptr @.str.151, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../security/integrity/ima/ima_policy.c", i32 1070, i32 22}
!361 = !{ptr @.str.152, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../security/integrity/ima/ima_policy.c", i32 1071, i32 23}
!363 = !{ptr @.str.153, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../security/integrity/ima/ima_policy.c", i32 1072, i32 24}
!365 = !{ptr @.str.154, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../security/integrity/ima/ima_policy.c", i32 1073, i32 12}
!367 = !{ptr @.str.155, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../security/integrity/ima/ima_policy.c", i32 1074, i32 17}
!369 = !{ptr @.str.156, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../security/integrity/ima/ima_policy.c", i32 1075, i32 17}
!371 = !{ptr @.str.157, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../security/integrity/ima/ima_policy.c", i32 1076, i32 14}
!373 = !{ptr @policy_tokens, !374, !"policy_tokens", i1 false, i1 false}
!374 = !{!"../security/integrity/ima/ima_policy.c", i32 1032, i32 28}
!375 = !{ptr @.str.158, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../security/integrity/ima/ima_policy.c", i32 1930, i32 17}
!377 = !{ptr @.str.159, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../security/integrity/ima/ima_policy.c", i32 1932, i32 17}
!379 = !{ptr @.str.160, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../security/integrity/ima/ima_policy.c", i32 1880, i32 2}
!381 = !{ptr @.str.161, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../security/integrity/ima/ima_policy.c", i32 1881, i32 2}
!383 = !{ptr @.str.162, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../security/integrity/ima/ima_policy.c", i32 1882, i32 2}
!385 = !{ptr @.str.163, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../security/integrity/ima/ima_policy.c", i32 1883, i32 2}
!387 = distinct !{null, !388, !"mask_tokens", i1 false, i1 false}
!388 = !{!"../security/integrity/ima/ima_policy.c", i32 1879, i32 26}
!389 = !{ptr @.str.164, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../security/integrity/ima/ima_policy.c", i32 1941, i32 17}
!391 = !{ptr @.str.165, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../security/integrity/ima/ima_policy.c", i32 1941, i32 35}
!393 = !{!"sp"}
!394 = !{i32 1, !"wchar_size", i32 2}
!395 = !{i32 1, !"min_enum_size", i32 4}
!396 = !{i32 8, !"branch-target-enforcement", i32 0}
!397 = !{i32 8, !"sign-return-address", i32 0}
!398 = !{i32 8, !"sign-return-address-all", i32 0}
!399 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!400 = !{i32 7, !"uwtable", i32 1}
!401 = !{i32 7, !"frame-pointer", i32 2}
!402 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!403 = !{i64 2149569679}
!404 = !{i64 2149530359}
!405 = !{!"auto-init"}
!406 = !{i64 2149530625}
!407 = !{i64 2148821298}
!408 = !{i64 1204964, i64 1204988, i64 1205009, i64 1205026, i64 1205043}
!409 = !{i64 2148821524}
!410 = !{i64 2149581001}
!411 = !{i64 2155307608}
