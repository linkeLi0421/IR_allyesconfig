; ModuleID = '/llk/IR_all_yes/security/keys/process_keys.c_pt.bc'
source_filename = "../security/keys/process_keys.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+lookup_user_key\22, \22a\22\09"
module asm "\09.weak\09__crc_lookup_user_key\09\09\09\09"
module asm "\09.long\09__crc_lookup_user_key\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lookup_user_key:\09\09\09\09\09"
module asm "\09.asciz \09\22lookup_user_key\22\09\09\09\09\09"
module asm "__kstrtabns_lookup_user_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.key_user = type { %struct.rb_node, %struct.mutex, %struct.spinlock, %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.kuid_t, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.key_type = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.keyring_index_key = type { i32, %union.anon.96, ptr, ptr, ptr }
%union.anon.96 = type { i32 }
%struct.key_match_data = type { ptr, ptr, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.24 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.24 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.66, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%union.anon.66 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i32, %struct.atomic_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic_t, %struct.atomic_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.20 }
%union.anon.20 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.22, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.keyring_search_context = type { %struct.keyring_index_key, ptr, %struct.key_match_data, i32, ptr, i32, i8, ptr, i64 }
%struct.anon.97 = type { [2 x i8], i16 }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.2, ptr, %struct.rw_semaphore, ptr, ptr, %union.anon.94, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.95, %union.anon.100, ptr }
%union.anon.2 = type { %struct.rb_node }
%union.anon.94 = type { i64 }
%union.anon.95 = type { %struct.keyring_index_key }
%union.anon.100 = type { %union.key_payload }
%union.key_payload = type { [4 x ptr] }
%struct.request_key_auth = type { %struct.callback_head, ptr, ptr, ptr, ptr, i32, i32, [8 x i8] }

@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"root_key_user.cons_lock.wait_lock\00", [62 x i8] zeroinitializer }, align 32
@root_key_user = dso_local global { %struct.key_user, [52 x i8] } { %struct.key_user { %struct.rb_node zeroinitializer, %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @root_key_user, i64 64), ptr getelementptr (i8, ptr @root_key_user, i64 64) }, ptr getelementptr (i8, ptr @root_key_user, i64 12), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.refcount_struct { %struct.atomic_t { i32 3 } }, %struct.atomic_t { i32 2 }, %struct.atomic_t { i32 2 }, %struct.kuid_t zeroinitializer, i32 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"root_key_user.cons_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"root_key_user.lock\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"_uid.%u\00", [24 x i8] zeroinitializer }, align 32
@key_type_keyring = external dso_local global %struct.key_type, align 4
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"_uid_ses.%u\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"_tid\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"_pid\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"security/keys/process_keys.c\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"_ses\00", [27 x i8] zeroinitializer }, align 32
@key_type_request_key_auth = external dso_local global %struct.key_type, align 4
@__const.lookup_user_key.ctx = private unnamed_addr constant { %struct.keyring_index_key, ptr, %struct.key_match_data, i32, ptr, i32, i8, [3 x i8], ptr, [4 x i8], i64 } { %struct.keyring_index_key zeroinitializer, ptr null, %struct.key_match_data { ptr @lookup_user_key_possessed, ptr null, ptr null, i32 0 }, i32 65, ptr null, i32 0, i8 0, [3 x i8] zeroinitializer, ptr null, [4 x i8] zeroinitializer, i64 0 }, align 8
@__kstrtab_lookup_user_key = external dso_local constant [0 x i8], align 1
@__kstrtabns_lookup_user_key = external dso_local constant [0 x i8], align 1
@__ksymtab_lookup_user_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lookup_user_key to i32), ptr @__kstrtab_lookup_user_key, ptr @__kstrtabns_lookup_user_key }, section "___ksymtab+lookup_user_key", align 4
@key_session_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @key_session_mutex, i64 52), ptr getelementptr (i8, ptr @key_session_mutex, i64 52) }, ptr @key_session_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@key_change_session_keyring.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"In %s get_ucounts failed\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.key_change_session_keyring = private unnamed_addr constant [27 x i8] c"key_change_session_keyring\00", align 1
@__initcall__kmod_process_keys__294_965_init_root_keyring7 = internal global ptr @init_root_keyring, section ".initcall7.init", align 4
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c".user_reg\00", [22 x i8] zeroinitializer }, align 32
@init_cred = external dso_local global %struct.cred, align 4
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/cred.h\00", [43 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"key_session_mutex.wait_lock\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"key_session_mutex\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967170, i64 4294967285]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 4294967170, i64 4294967285]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 4294967170, i64 4294967285]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 4294967170, i64 4294967285]
@__sancov_gen_cov_switch_values.21 = internal global [10 x i64] [i64 8, i64 32, i64 4294967288, i64 4294967289, i64 4294967290, i64 4294967291, i64 4294967292, i64 4294967293, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@___asan_gen_.26 = private unnamed_addr constant [14 x i8] c"root_key_user\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 26, i32 17 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 28, i32 15 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 29, i32 11 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 101, i32 29 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 123, i32 29 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 228, i32 26 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 275, i32 26 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 322, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 330, i32 27 }
@___asan_gen_.53 = private unnamed_addr constant [18 x i8] c"key_session_mutex\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 923, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 52, i32 31 }
@___asan_gen_.63 = private unnamed_addr constant [24 x i8] c"../include/linux/cred.h\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 253, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 695, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 723, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.78 = private constant [32 x i8] c"../security/keys/process_keys.c\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 23, i32 8 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__initcall__kmod_process_keys__294_965_init_root_keyring7, ptr @__ksymtab_lookup_user_key, ptr @.str, ptr @root_key_user, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @key_session_mutex, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @root_key_user to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_session_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @look_up_user_keyrings(ptr noundef writeonly %_user_keyring, ptr noundef writeonly %_user_session_keyring) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !54) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %cred1 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred1, align 16
  %user_ns10 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 25
  %6 = ptrtoint ptr %user_ns10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user_ns10, align 4
  %user = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 24
  %8 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %user, align 4
  %uid11 = getelementptr inbounds %struct.user_struct, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %uid11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.unpack = load i32, ptr %uid11, align 8
  %11 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call12 = tail call i32 @from_kuid(ptr noundef %7, [1 x i32] %11) #9
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #9
  %user_keyring_register.i = getelementptr inbounds %struct.user_namespace, ptr %7, i32 0, i32 11
  %12 = call ptr @memset(ptr %buf, i32 255, i32 20)
  %13 = ptrtoint ptr %user_keyring_register.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %user_keyring_register.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.get_user_register.exit_crit_edge

entry.get_user_register.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_user_register.exit

if.end.i:                                         ; preds = %entry
  %keyring_sem.i = getelementptr inbounds %struct.user_namespace, ptr %7, i32 0, i32 12
  tail call void @down_write(ptr noundef %keyring_sem.i) #9
  %15 = ptrtoint ptr %user_keyring_register.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %user_keyring_register.i, align 4
  %tobool2.not.i = icmp eq ptr %16, null
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end.i.if.end30.i_crit_edge

if.end.i.if.end30.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30.i

if.then3.i:                                       ; preds = %if.end.i
  %owner.i = getelementptr inbounds %struct.user_namespace, ptr %7, i32 0, i32 5
  %17 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.unpack.i = load i32, ptr %owner.i, align 4
  %18 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call.i = tail call ptr @keyring_alloc(ptr noundef nonnull @.str.11, [1 x i32] %18, [1 x i32] [i32 -1], ptr noundef nonnull @init_cred, i32 noundef 201523200, i32 noundef 0, ptr noundef null, ptr noundef null) #9
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then3.i.if.end30.i_crit_edge, label %do.end14.i

if.then3.i.if.end30.i_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30.i

do.end14.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !64
  %19 = ptrtoint ptr %user_keyring_register.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %call.i, ptr %user_keyring_register.i, align 4
  br label %if.end30.i

if.end30.i:                                       ; preds = %do.end14.i, %if.then3.i.if.end30.i_crit_edge, %if.end.i.if.end30.i_crit_edge
  %reg_keyring.0.i = phi ptr [ %16, %if.end.i.if.end30.i_crit_edge ], [ %call.i, %if.then3.i.if.end30.i_crit_edge ], [ %call.i, %do.end14.i ]
  tail call void @up_write(ptr noundef %keyring_sem.i) #9
  br label %get_user_register.exit

get_user_register.exit:                           ; preds = %if.end30.i, %entry.get_user_register.exit_crit_edge
  %retval.0.i = phi ptr [ %reg_keyring.0.i, %if.end30.i ], [ %14, %entry.get_user_register.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %get_user_register.exit
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %retval.0.i to i32
  br label %cleanup

if.end:                                           ; preds = %get_user_register.exit
  %keyring_sem = getelementptr inbounds %struct.user_namespace, ptr %7, i32 0, i32 12
  tail call void @down_write(ptr noundef %keyring_sem) #9
  %call17 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.4, i32 noundef %call12)
  %21 = ptrtoint ptr %retval.0.i to i32
  %or.i = or i32 %21, 1
  %22 = inttoptr i32 %or.i to ptr
  %call20 = call ptr @keyring_search(ptr noundef nonnull %22, ptr noundef nonnull @key_type_keyring, ptr noundef nonnull %buf, i1 noundef zeroext false) #9
  %cmp = icmp eq ptr %call20, inttoptr (i32 -11 to ptr)
  br i1 %cmp, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end
  %23 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %user, align 4
  %uid26 = getelementptr inbounds %struct.user_struct, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %uid26 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.unpack137 = load i32, ptr %uid26, align 8
  %26 = insertvalue [1 x i32] undef, i32 %.unpack137, 0
  %call29 = call ptr @keyring_alloc(ptr noundef nonnull %buf, [1 x i32] %26, [1 x i32] [i32 -1], ptr noundef %5, i32 noundef 524222464, i32 noundef 16, ptr noundef null, ptr noundef %retval.0.i) #9
  %cmp.i138 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i138, label %if.then31, label %if.then23.if.end40_crit_edge

if.then23.if.end40_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then31:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %call29 to i32
  br label %error

if.else:                                          ; preds = %if.end
  %cmp.i139 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  %28 = ptrtoint ptr %call20 to i32
  br i1 %cmp.i139, label %if.else.error_crit_edge, label %if.else37

if.else.error_crit_edge:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.else37:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %and.i140 = and i32 %28, -2
  %29 = inttoptr i32 %and.i140 to ptr
  br label %if.end40

if.end40:                                         ; preds = %if.else37, %if.then23.if.end40_crit_edge
  %uid_keyring.0 = phi ptr [ %call29, %if.then23.if.end40_crit_edge ], [ %29, %if.else37 ]
  %call42 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.5, i32 noundef %call12)
  %call45 = call ptr @keyring_search(ptr noundef nonnull %22, ptr noundef nonnull @key_type_keyring, ptr noundef nonnull %buf, i1 noundef zeroext false) #9
  %cmp48 = icmp eq ptr %call45, inttoptr (i32 -11 to ptr)
  br i1 %cmp48, label %if.then49, label %if.else70

if.then49:                                        ; preds = %if.end40
  %30 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %user, align 4
  %uid52 = getelementptr inbounds %struct.user_struct, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %uid52 to i32
  call void @__asan_load4_noabort(i32 %32)
  %.unpack136 = load i32, ptr %uid52, align 8
  %33 = insertvalue [1 x i32] undef, i32 %.unpack136, 0
  %call57 = call ptr @keyring_alloc(ptr noundef nonnull %buf, [1 x i32] %33, [1 x i32] [i32 -1], ptr noundef %5, i32 noundef 524222464, i32 noundef 16, ptr noundef null, ptr noundef null) #9
  %cmp.i142 = icmp ugt ptr %call57, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i142, label %if.then59, label %if.end61

if.then59:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %call57 to i32
  br label %error_release

if.end61:                                         ; preds = %if.then49
  %call62 = call i32 @key_link(ptr noundef %call57, ptr noundef %uid_keyring.0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %if.end61.error_release_session_crit_edge, label %if.end65

if.end61.error_release_session_crit_edge:         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_release_session

if.end65:                                         ; preds = %if.end61
  %call66 = call i32 @key_link(ptr noundef %retval.0.i, ptr noundef %call57) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %if.end65.error_release_session_crit_edge, label %if.end65.if.end77_crit_edge

if.end65.if.end77_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77

if.end65.error_release_session_crit_edge:         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_release_session

if.else70:                                        ; preds = %if.end40
  %cmp.i143 = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  %35 = ptrtoint ptr %call45 to i32
  br i1 %cmp.i143, label %if.else70.error_release_crit_edge, label %if.else74

if.else70.error_release_crit_edge:                ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_release

if.else74:                                        ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #11
  %and.i144 = and i32 %35, -2
  %36 = inttoptr i32 %and.i144 to ptr
  br label %if.end77

if.end77:                                         ; preds = %if.else74, %if.end65.if.end77_crit_edge
  %session_keyring.0 = phi ptr [ %call57, %if.end65.if.end77_crit_edge ], [ %36, %if.else74 ]
  call void @up_write(ptr noundef %keyring_sem) #9
  %tobool.not = icmp eq ptr %_user_session_keyring, null
  br i1 %tobool.not, label %if.else80, label %if.then79

if.then79:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %_user_session_keyring to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %session_keyring.0, ptr %_user_session_keyring, align 4
  br label %if.end81

if.else80:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  call void @key_put(ptr noundef %session_keyring.0) #9
  br label %if.end81

if.end81:                                         ; preds = %if.else80, %if.then79
  %tobool82.not = icmp eq ptr %_user_keyring, null
  br i1 %tobool82.not, label %if.else84, label %if.then83

if.then83:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %_user_keyring to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %uid_keyring.0, ptr %_user_keyring, align 4
  br label %cleanup

if.else84:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  call void @key_put(ptr noundef %uid_keyring.0) #9
  br label %cleanup

error_release_session:                            ; preds = %if.end65.error_release_session_crit_edge, %if.end61.error_release_session_crit_edge
  %ret.0 = phi i32 [ %call62, %if.end61.error_release_session_crit_edge ], [ %call66, %if.end65.error_release_session_crit_edge ]
  call void @key_put(ptr noundef %call57) #9
  br label %error_release

error_release:                                    ; preds = %error_release_session, %if.else70.error_release_crit_edge, %if.then59
  %ret.1 = phi i32 [ %34, %if.then59 ], [ %ret.0, %error_release_session ], [ %35, %if.else70.error_release_crit_edge ]
  call void @key_put(ptr noundef %uid_keyring.0) #9
  br label %error

error:                                            ; preds = %error_release, %if.else.error_crit_edge, %if.then31
  %ret.2 = phi i32 [ %27, %if.then31 ], [ %ret.1, %error_release ], [ %28, %if.else.error_crit_edge ]
  call void @up_write(ptr noundef %keyring_sem) #9
  br label %cleanup

cleanup:                                          ; preds = %error, %if.else84, %if.then83, %if.then
  %retval.0 = phi i32 [ %20, %if.then ], [ %ret.2, %error ], [ 0, %if.else84 ], [ 0, %if.then83 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @keyring_search(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @keyring_alloc(ptr noundef, [1 x i32], [1 x i32], ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @key_link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @get_user_session_keyring_rcu(ptr noundef %cred) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  %ctx = alloca %struct.keyring_search_context, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %user_ns = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 25
  %0 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %user_ns, align 4
  %user_keyring_register = getelementptr inbounds %struct.user_namespace, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %user_keyring_register to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %user_keyring_register, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #9
  %4 = call ptr @memset(ptr %buf, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %ctx) #9
  %5 = getelementptr inbounds i8, ptr %ctx, i32 48
  %6 = call ptr @memset(ptr %5, i32 255, i32 16)
  %7 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %ctx, align 8
  %8 = getelementptr inbounds %struct.keyring_index_key, ptr %ctx, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %8, align 4
  %type = getelementptr inbounds %struct.keyring_index_key, ptr %ctx, i32 0, i32 2
  %10 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @key_type_keyring, ptr %type, align 8
  %domain_tag = getelementptr inbounds %struct.keyring_index_key, ptr %ctx, i32 0, i32 3
  %11 = ptrtoint ptr %domain_tag to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %domain_tag, align 4
  %description = getelementptr inbounds %struct.keyring_index_key, ptr %ctx, i32 0, i32 4
  %12 = ptrtoint ptr %description to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %buf, ptr %description, align 8
  %cred1 = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 1
  %13 = ptrtoint ptr %cred1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %cred, ptr %cred1, align 4
  %match_data = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 2
  %14 = ptrtoint ptr %match_data to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @key_default_cmp, ptr %match_data, align 8
  %raw_data = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %raw_data to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %buf, ptr %raw_data, align 4
  %preparsed = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %preparsed to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %preparsed, align 8
  %lookup_type = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 2, i32 3
  %17 = ptrtoint ptr %lookup_type to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %lookup_type, align 4
  %flags = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 3
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %flags, align 8
  %iterator = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 4
  %19 = ptrtoint ptr %iterator to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %iterator, align 4
  %skipped_ret = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 5
  %20 = ptrtoint ptr %skipped_ret to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %skipped_ret, align 8
  %possessed = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 6
  %21 = ptrtoint ptr %possessed to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %possessed, align 4
  %result = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 7
  %22 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %result, align 8
  %now = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 8
  %23 = ptrtoint ptr %now to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 0, ptr %now, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %user = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 24
  %24 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %user, align 4
  %uid = getelementptr inbounds %struct.user_struct, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %26)
  %.unpack = load i32, ptr %uid, align 8
  %27 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call = call i32 @from_kuid(ptr noundef %1, [1 x i32] %27) #9
  %call5 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.5, i32 noundef %call)
  %conv = trunc i32 %call5 to i16
  %desc_len = getelementptr inbounds %struct.anon.97, ptr %8, i32 0, i32 1
  %28 = ptrtoint ptr %desc_len to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv, ptr %desc_len, align 2
  %29 = ptrtoint ptr %3 to i32
  %or.i = or i32 %29, 1
  %30 = inttoptr i32 %or.i to ptr
  %call8 = call ptr @keyring_search_rcu(ptr noundef nonnull %30, ptr noundef nonnull %ctx) #9
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %call8 to i32
  %and.i = and i32 %31, -2
  %32 = inttoptr i32 %and.i to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %32, %if.end11 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %ctx) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #9
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @key_default_cmp(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @keyring_search_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @install_thread_keyring_to_cred(ptr noundef %new) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %thread_keyring = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 21
  %0 = ptrtoint ptr %thread_keyring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %thread_keyring, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %uid = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 4
  %gid = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 5
  %2 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %2)
  %.unpack = load i32, ptr %uid, align 4
  %3 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %4 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %4)
  %.unpack13 = load i32, ptr %gid, align 4
  %5 = insertvalue [1 x i32] undef, i32 %.unpack13, 0
  %call = tail call ptr @keyring_alloc(ptr noundef nonnull @.str.6, [1 x i32] %3, [1 x i32] %5, ptr noundef %new, i32 noundef 1057030144, i32 noundef 1, ptr noundef null, ptr noundef null) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %call to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %thread_keyring to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call, ptr %thread_keyring, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then3 ], [ 0, %if.end5 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @install_process_keyring_to_cred(ptr noundef %new) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %process_keyring = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 20
  %0 = ptrtoint ptr %process_keyring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %process_keyring, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %uid = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 4
  %gid = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 5
  %2 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %2)
  %.unpack = load i32, ptr %uid, align 4
  %3 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %4 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %4)
  %.unpack13 = load i32, ptr %gid, align 4
  %5 = insertvalue [1 x i32] undef, i32 %.unpack13, 0
  %call = tail call ptr @keyring_alloc(ptr noundef nonnull @.str.7, [1 x i32] %3, [1 x i32] %5, ptr noundef %new, i32 noundef 1057030144, i32 noundef 1, ptr noundef null, ptr noundef null) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %call to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %process_keyring to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call, ptr %process_keyring, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then3 ], [ 0, %if.end5 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @install_session_keyring_to_cred(ptr noundef %cred, ptr noundef %keyring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.8, i32 noundef 322) #9
  %tobool.not = icmp eq ptr %keyring, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %session_keyring = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 19
  %0 = ptrtoint ptr %session_keyring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %session_keyring, align 4
  %tobool4.not = icmp eq ptr %1, null
  %spec.store.select = zext i1 %tobool4.not to i32
  %uid = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 4
  %gid = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 5
  %2 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %2)
  %.unpack = load i32, ptr %uid, align 4
  %3 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %4 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %4)
  %.unpack29 = load i32, ptr %gid, align 4
  %5 = insertvalue [1 x i32] undef, i32 %.unpack29, 0
  %call = tail call ptr @keyring_alloc(ptr noundef nonnull @.str.9, [1 x i32] %3, [1 x i32] %5, ptr noundef %cred, i32 noundef 1057161216, i32 noundef %spec.store.select, ptr noundef null, ptr noundef null) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.then.if.end12_crit_edge

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %call to i32
  br label %cleanup

if.else:                                          ; preds = %entry
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %keyring, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr nonnull %keyring, i32 1, i32 3, i32 1) #9
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %keyring, ptr nonnull %keyring, i32 1, ptr nonnull elementtype(i32) %keyring) #9, !srcloc !65
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.else.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !66

if.else.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.else
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %8 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %.not.i.i.i.i = icmp sgt i32 %8, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end12_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !67

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end12_crit_edge:               ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.else.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.else.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %keyring, i32 noundef %.sink.i.i.i.i) #9
  br label %if.end12

if.end12:                                         ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end12_crit_edge, %if.then.if.end12_crit_edge
  %keyring.addr.0 = phi ptr [ %call, %if.then.if.end12_crit_edge ], [ %keyring, %if.else.i.i.i.i.if.end12_crit_edge ], [ %keyring, %if.end15.sink.split.i.i.i.i ]
  %session_keyring13 = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 19
  %9 = ptrtoint ptr %session_keyring13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %session_keyring13, align 4
  store ptr %keyring.addr.0, ptr %session_keyring13, align 4
  %tobool15.not = icmp eq ptr %10, null
  br i1 %tobool15.not, label %if.end12.cleanup_crit_edge, label %if.then16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @key_put(ptr noundef nonnull %10) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.end12.cleanup_crit_edge, %if.then8
  %retval.0 = phi i32 [ %6, %if.then8 ], [ 0, %if.then16 ], [ 0, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @key_fsuid_changed(ptr nocapture noundef readonly %new_cred) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %thread_keyring = getelementptr inbounds %struct.cred, ptr %new_cred, i32 0, i32 21
  %0 = ptrtoint ptr %thread_keyring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %thread_keyring, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sem = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 4
  tail call void @down_write(ptr noundef %sem) #9
  %2 = ptrtoint ptr %thread_keyring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %thread_keyring, align 4
  %uid = getelementptr inbounds %struct.key, ptr %3, i32 0, i32 9
  %fsuid = getelementptr inbounds %struct.cred, ptr %new_cred, i32 0, i32 10
  %4 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fsuid, align 4
  %6 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %uid, align 8
  %7 = load ptr, ptr %thread_keyring, align 4
  %sem4 = getelementptr inbounds %struct.key, ptr %7, i32 0, i32 4
  tail call void @up_write(ptr noundef %sem4) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @key_fsgid_changed(ptr nocapture noundef readonly %new_cred) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %thread_keyring = getelementptr inbounds %struct.cred, ptr %new_cred, i32 0, i32 21
  %0 = ptrtoint ptr %thread_keyring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %thread_keyring, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sem = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 4
  tail call void @down_write(ptr noundef %sem) #9
  %2 = ptrtoint ptr %thread_keyring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %thread_keyring, align 4
  %gid = getelementptr inbounds %struct.key, ptr %3, i32 0, i32 10
  %fsgid = getelementptr inbounds %struct.cred, ptr %new_cred, i32 0, i32 11
  %4 = ptrtoint ptr %fsgid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fsgid, align 4
  %6 = ptrtoint ptr %gid to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %gid, align 4
  %7 = load ptr, ptr %thread_keyring, align 4
  %sem4 = getelementptr inbounds %struct.key, ptr %7, i32 0, i32 4
  tail call void @up_write(ptr noundef %sem4) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @search_cred_keyrings_rcu(ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cred1 = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %cred1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cred1, align 4
  %thread_keyring = getelementptr inbounds %struct.cred, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %thread_keyring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %thread_keyring, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  %or.i = or i32 %4, 1
  %5 = inttoptr i32 %or.i to ptr
  %call4 = tail call ptr @keyring_search_rcu(ptr noundef nonnull %5, ptr noundef %ctx) #9
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end, label %if.then.found_crit_edge

if.then.found_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %found

if.end:                                           ; preds = %if.then
  %6 = ptrtoint ptr %call4 to i32
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %sw.default [
    i32 -11, label %if.end.if.end8_crit_edge
    i32 -126, label %if.end.if.end8_crit_edge100
  ]

if.end.if.end8_crit_edge100:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end8:                                          ; preds = %sw.default, %if.end.if.end8_crit_edge, %if.end.if.end8_crit_edge100, %entry.if.end8_crit_edge
  %ret.0 = phi ptr [ null, %sw.default ], [ null, %entry.if.end8_crit_edge ], [ %call4, %if.end.if.end8_crit_edge ], [ %call4, %if.end.if.end8_crit_edge100 ]
  %err.0 = phi ptr [ %call4, %sw.default ], [ inttoptr (i32 -11 to ptr), %entry.if.end8_crit_edge ], [ inttoptr (i32 -11 to ptr), %if.end.if.end8_crit_edge ], [ inttoptr (i32 -11 to ptr), %if.end.if.end8_crit_edge100 ]
  %process_keyring = getelementptr inbounds %struct.cred, ptr %1, i32 0, i32 20
  %8 = ptrtoint ptr %process_keyring to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %process_keyring, align 4
  %tobool9.not = icmp eq ptr %9, null
  br i1 %tobool9.not, label %if.end8.if.end25_crit_edge, label %if.then10

if.end8.if.end25_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then10:                                        ; preds = %if.end8
  %10 = ptrtoint ptr %9 to i32
  %or.i94 = or i32 %10, 1
  %11 = inttoptr i32 %or.i94 to ptr
  %call13 = tail call ptr @keyring_search_rcu(ptr noundef nonnull %11, ptr noundef %ctx) #9
  %cmp.i95 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i95, label %if.end16, label %if.then10.found_crit_edge

if.then10.found_crit_edge:                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %found

if.end16:                                         ; preds = %if.then10
  %12 = ptrtoint ptr %call13 to i32
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %12, label %if.end16.if.end25_crit_edge [
    i32 -11, label %sw.bb18
    i32 -126, label %if.end16.sw.bb22_crit_edge
  ]

if.end16.sw.bb22_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb22

if.end16.if.end25_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

sw.bb18:                                          ; preds = %if.end16
  %tobool19.not = icmp eq ptr %ret.0, null
  br i1 %tobool19.not, label %sw.bb18.sw.bb22_crit_edge, label %sw.bb18.if.end25_crit_edge

sw.bb18.if.end25_crit_edge:                       ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

sw.bb18.sw.bb22_crit_edge:                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb22

sw.bb22:                                          ; preds = %sw.bb18.sw.bb22_crit_edge, %if.end16.sw.bb22_crit_edge
  br label %if.end25

if.end25:                                         ; preds = %sw.bb22, %sw.bb18.if.end25_crit_edge, %if.end16.if.end25_crit_edge, %if.end8.if.end25_crit_edge
  %ret.1 = phi ptr [ %call13, %sw.bb22 ], [ %ret.0, %sw.bb18.if.end25_crit_edge ], [ %ret.0, %if.end8.if.end25_crit_edge ], [ %ret.0, %if.end16.if.end25_crit_edge ]
  %err.1 = phi ptr [ %err.0, %sw.bb22 ], [ %err.0, %sw.bb18.if.end25_crit_edge ], [ %err.0, %if.end8.if.end25_crit_edge ], [ %call13, %if.end16.if.end25_crit_edge ]
  %session_keyring = getelementptr inbounds %struct.cred, ptr %1, i32 0, i32 19
  %14 = ptrtoint ptr %session_keyring to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %session_keyring, align 4
  %tobool26.not = icmp eq ptr %15, null
  br i1 %tobool26.not, label %if.else, label %if.then27

if.then27:                                        ; preds = %if.end25
  %16 = ptrtoint ptr %15 to i32
  %or.i96 = or i32 %16, 1
  %17 = inttoptr i32 %or.i96 to ptr
  %call30 = tail call ptr @keyring_search_rcu(ptr noundef nonnull %17, ptr noundef %ctx) #9
  %cmp.i97 = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i97, label %if.end33, label %if.then27.found_crit_edge

if.then27.found_crit_edge:                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %found

if.end33:                                         ; preds = %if.then27
  %18 = ptrtoint ptr %call30 to i32
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %18, label %if.end33.if.end59_crit_edge [
    i32 -11, label %sw.bb35
    i32 -126, label %if.end33.sw.bb39_crit_edge
  ]

if.end33.sw.bb39_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb39

if.end33.if.end59_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

sw.bb35:                                          ; preds = %if.end33
  %tobool36.not = icmp eq ptr %ret.1, null
  br i1 %tobool36.not, label %sw.bb35.sw.bb39_crit_edge, label %sw.bb35.if.end59_crit_edge

sw.bb35.if.end59_crit_edge:                       ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

sw.bb35.sw.bb39_crit_edge:                        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb39

sw.bb39:                                          ; preds = %sw.bb35.sw.bb39_crit_edge, %if.end33.sw.bb39_crit_edge
  br label %if.end59

if.else:                                          ; preds = %if.end25
  %call42 = tail call ptr @get_user_session_keyring_rcu(ptr noundef %1)
  %tobool43.not = icmp eq ptr %call42, null
  br i1 %tobool43.not, label %if.else.if.end59_crit_edge, label %if.then44

if.else.if.end59_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then44:                                        ; preds = %if.else
  %20 = ptrtoint ptr %call42 to i32
  %or.i98 = or i32 %20, 1
  %21 = inttoptr i32 %or.i98 to ptr
  %call46 = tail call ptr @keyring_search_rcu(ptr noundef nonnull %21, ptr noundef %ctx) #9
  tail call void @key_put(ptr noundef nonnull %call42) #9
  %cmp.i99 = icmp ugt ptr %call46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i99, label %if.end49, label %if.then44.found_crit_edge

if.then44.found_crit_edge:                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  br label %found

if.end49:                                         ; preds = %if.then44
  %22 = ptrtoint ptr %call46 to i32
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %22, label %if.end49.if.end59_crit_edge [
    i32 -11, label %sw.bb51
    i32 -126, label %if.end49.sw.bb55_crit_edge
  ]

if.end49.sw.bb55_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb55

if.end49.if.end59_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

sw.bb51:                                          ; preds = %if.end49
  %tobool52.not = icmp eq ptr %ret.1, null
  br i1 %tobool52.not, label %sw.bb51.sw.bb55_crit_edge, label %sw.bb51.if.end59_crit_edge

sw.bb51.if.end59_crit_edge:                       ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

sw.bb51.sw.bb55_crit_edge:                        ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb55

sw.bb55:                                          ; preds = %sw.bb51.sw.bb55_crit_edge, %if.end49.sw.bb55_crit_edge
  br label %if.end59

if.end59:                                         ; preds = %sw.bb55, %sw.bb51.if.end59_crit_edge, %if.end49.if.end59_crit_edge, %if.else.if.end59_crit_edge, %sw.bb39, %sw.bb35.if.end59_crit_edge, %if.end33.if.end59_crit_edge
  %ret.2 = phi ptr [ %call30, %sw.bb39 ], [ %ret.1, %sw.bb35.if.end59_crit_edge ], [ %call46, %sw.bb55 ], [ %ret.1, %sw.bb51.if.end59_crit_edge ], [ %ret.1, %if.else.if.end59_crit_edge ], [ %ret.1, %if.end33.if.end59_crit_edge ], [ %ret.1, %if.end49.if.end59_crit_edge ]
  %err.2 = phi ptr [ %err.1, %sw.bb39 ], [ %err.1, %sw.bb35.if.end59_crit_edge ], [ %err.1, %sw.bb55 ], [ %err.1, %sw.bb51.if.end59_crit_edge ], [ %err.1, %if.else.if.end59_crit_edge ], [ %call30, %if.end33.if.end59_crit_edge ], [ %call46, %if.end49.if.end59_crit_edge ]
  %tobool60.not = icmp eq ptr %ret.2, null
  %err.2.ret.2 = select i1 %tobool60.not, ptr %err.2, ptr %ret.2
  br label %found

found:                                            ; preds = %if.end59, %if.then44.found_crit_edge, %if.then27.found_crit_edge, %if.then10.found_crit_edge, %if.then.found_crit_edge
  %key_ref.0 = phi ptr [ %err.2.ret.2, %if.end59 ], [ %call30, %if.then27.found_crit_edge ], [ %call46, %if.then44.found_crit_edge ], [ %call13, %if.then10.found_crit_edge ], [ %call4, %if.then.found_crit_edge ]
  ret ptr %key_ref.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @search_process_keyrings_rcu(ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call ptr @search_cred_keyrings_rcu(ptr noundef %ctx)
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end, label %entry.cleanup38_crit_edge

entry.cleanup38_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup38

if.end:                                           ; preds = %entry
  %cred = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cred, align 4
  %request_key_auth = getelementptr inbounds %struct.cred, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %request_key_auth to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %request_key_auth, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.if.end25_crit_edge, label %land.lhs.true

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end
  %4 = tail call i32 @llvm.read_register.i32(metadata !54) #9
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %cred5 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 99
  %8 = ptrtoint ptr %cred5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cred5, align 16
  %cmp = icmp eq ptr %1, %9
  br i1 %cmp, label %land.lhs.true6, label %land.lhs.true.if.end25_crit_edge

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

land.lhs.true6:                                   ; preds = %land.lhs.true
  %type = getelementptr inbounds %struct.keyring_index_key, ptr %ctx, i32 0, i32 2
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %type, align 8
  %cmp7.not = icmp eq ptr %11, @key_type_request_key_auth
  br i1 %cmp7.not, label %land.lhs.true6.if.end25_crit_edge, label %if.then8

land.lhs.true6.if.end25_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then8:                                         ; preds = %land.lhs.true6
  %call12 = tail call i32 @key_validate(ptr noundef nonnull %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.then8.if.end25_crit_edge

if.then8.if.end25_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then14:                                        ; preds = %if.then8
  %12 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cred, align 4
  %request_key_auth16 = getelementptr inbounds %struct.cred, ptr %13, i32 0, i32 22
  %14 = ptrtoint ptr %request_key_auth16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %request_key_auth16, align 4
  %16 = getelementptr inbounds %struct.key, ptr %15, i32 0, i32 17
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %cred17 = getelementptr inbounds %struct.request_key_auth, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cred17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cred17, align 4
  store ptr %20, ptr %cred, align 4
  %call19 = tail call ptr @search_cred_keyrings_rcu(ptr noundef %ctx)
  %21 = ptrtoint ptr %cred to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %1, ptr %cred, align 4
  %cmp.i60 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i60, label %if.then14.if.end25_crit_edge, label %if.then14.cleanup38_crit_edge

if.then14.cleanup38_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup38

if.then14.if.end25_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.end25:                                         ; preds = %if.then14.if.end25_crit_edge, %if.then8.if.end25_crit_edge, %land.lhs.true6.if.end25_crit_edge, %land.lhs.true.if.end25_crit_edge, %if.end.if.end25_crit_edge
  %ret.2 = phi ptr [ inttoptr (i32 -13 to ptr), %land.lhs.true6.if.end25_crit_edge ], [ inttoptr (i32 -13 to ptr), %land.lhs.true.if.end25_crit_edge ], [ inttoptr (i32 -13 to ptr), %if.end.if.end25_crit_edge ], [ inttoptr (i32 -13 to ptr), %if.then8.if.end25_crit_edge ], [ %call19, %if.then14.if.end25_crit_edge ]
  %cmp27 = icmp eq ptr %call1, inttoptr (i32 -126 to ptr)
  %cmp29 = icmp eq ptr %ret.2, inttoptr (i32 -126 to ptr)
  %or.cond = select i1 %cmp27, i1 true, i1 %cmp29
  br i1 %or.cond, label %if.end25.cleanup38_crit_edge, label %if.else

if.end25.cleanup38_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup38

if.else:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %cmp33 = icmp eq ptr %call1, inttoptr (i32 -13 to ptr)
  %ret.2.call1 = select i1 %cmp33, ptr %ret.2, ptr %call1
  br label %cleanup38

cleanup38:                                        ; preds = %if.else, %if.end25.cleanup38_crit_edge, %if.then14.cleanup38_crit_edge, %entry.cleanup38_crit_edge
  %key_ref.2 = phi ptr [ %call1, %entry.cleanup38_crit_edge ], [ %ret.2.call1, %if.else ], [ %call19, %if.then14.cleanup38_crit_edge ], [ inttoptr (i32 -126 to ptr), %if.end25.cleanup38_crit_edge ]
  ret ptr %key_ref.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @key_validate(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @lookup_user_key_possessed(ptr noundef readnone %key, ptr nocapture noundef readonly %match_data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %raw_data = getelementptr inbounds %struct.key_match_data, ptr %match_data, i32 0, i32 1
  %0 = ptrtoint ptr %raw_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %raw_data, align 4
  %cmp = icmp eq ptr %1, %key
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @lookup_user_key(i32 noundef %id, i32 noundef %lflags, i32 noundef %need_perm) #0 align 64 {
entry:
  %ctx = alloca %struct.keyring_search_context, align 8
  %key = alloca ptr, align 4
  %user_session = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %ctx) #9
  %0 = call ptr @memcpy(ptr %ctx, ptr @__const.lookup_user_key.ctx, i32 72)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key) #9
  %1 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %key, align 4, !annotation !68
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %user_session) #9
  %2 = ptrtoint ptr %user_session to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %user_session, align 4, !annotation !68
  %cred2 = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 1
  %and56 = and i32 %lflags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br label %try_again

try_again:                                        ; preds = %try_again.backedge, %entry
  %3 = call i32 @llvm.read_register.i32(metadata !54) #9
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
  %tobool.not.i210 = icmp eq ptr %8, null
  br i1 %tobool.not.i210, label %try_again.get_cred.exit_crit_edge, label %do.body.i

try_again.get_cred.exit_crit_edge:                ; preds = %try_again
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_cred.exit

do.body.i:                                        ; preds = %try_again
  %call.i.i = call zeroext i1 @creds_are_invalid(ptr noundef nonnull %8) #9
  br i1 %call.i.i, label %if.then.i.i, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !66

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__validate_creds.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__invalid_creds(ptr noundef nonnull %8, ptr noundef nonnull @.str.12, i32 noundef 253) #9
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i, %do.body.i.__validate_creds.exit.i_crit_edge
  %9 = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 28
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %9, align 4
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %8, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr nonnull %8, i32 1, i32 3, i32 1) #9
  %11 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %8, ptr nonnull %8, i32 1, ptr nonnull elementtype(i32) %8) #9, !srcloc !69
  br label %get_cred.exit

get_cred.exit:                                    ; preds = %__validate_creds.exit.i, %try_again.get_cred.exit_crit_edge
  %12 = ptrtoint ptr %cred2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %8, ptr %cred2, align 4
  %13 = zext i32 %id to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %id, label %sw.default [
    i32 -1, label %sw.bb
    i32 -2, label %sw.bb16
    i32 -3, label %sw.bb34
    i32 -4, label %sw.bb69
    i32 -5, label %sw.bb75
    i32 -6, label %get_cred.exit.error_crit_edge
    i32 -7, label %sw.bb83
    i32 -8, label %sw.bb90
  ]

get_cred.exit.error_crit_edge:                    ; preds = %get_cred.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

sw.bb:                                            ; preds = %get_cred.exit
  %thread_keyring = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 21
  %14 = ptrtoint ptr %thread_keyring to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %thread_keyring, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %if.then, label %if.end11

if.then:                                          ; preds = %sw.bb
  br i1 %tobool57.not, label %if.then.errorthread-pre-split_crit_edge, label %if.end

if.then.errorthread-pre-split_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %errorthread-pre-split

if.end:                                           ; preds = %if.then
  %call.i211 = call ptr @prepare_creds() #9
  %tobool.not.i212 = icmp eq ptr %call.i211, null
  br i1 %tobool.not.i212, label %if.end.if.then8_crit_edge, label %if.end.i

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.end.i:                                         ; preds = %if.end
  %thread_keyring.i.i = getelementptr inbounds %struct.cred, ptr %call.i211, i32 0, i32 21
  %16 = ptrtoint ptr %thread_keyring.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %thread_keyring.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.if.end3.i_crit_edge

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3.i

if.end.i.i:                                       ; preds = %if.end.i
  %uid.i.i = getelementptr inbounds %struct.cred, ptr %call.i211, i32 0, i32 4
  %gid.i.i = getelementptr inbounds %struct.cred, ptr %call.i211, i32 0, i32 5
  %18 = ptrtoint ptr %uid.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.unpack.i.i = load i32, ptr %uid.i.i, align 4
  %19 = insertvalue [1 x i32] undef, i32 %.unpack.i.i, 0
  %20 = ptrtoint ptr %gid.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.unpack13.i.i = load i32, ptr %gid.i.i, align 4
  %21 = insertvalue [1 x i32] undef, i32 %.unpack13.i.i, 0
  %call.i.i213 = call ptr @keyring_alloc(ptr noundef nonnull @.str.6, [1 x i32] %19, [1 x i32] %21, ptr noundef nonnull %call.i211, i32 noundef 1057030144, i32 noundef 1, ptr noundef null, ptr noundef null) #9
  %cmp.i.i.i = icmp ugt ptr %call.i.i213, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %install_thread_keyring_to_cred.exit.i, label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %thread_keyring.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i.i213, ptr %thread_keyring.i.i, align 4
  br label %if.end3.i

install_thread_keyring_to_cred.exit.i:            ; preds = %if.end.i.i
  %cmp.i = icmp slt ptr %call.i.i213, null
  br i1 %cmp.i, label %if.then2.i, label %install_thread_keyring_to_cred.exit.i.if.end3.i_crit_edge

install_thread_keyring_to_cred.exit.i.if.end3.i_crit_edge: ; preds = %install_thread_keyring_to_cred.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3.i

if.then2.i:                                       ; preds = %install_thread_keyring_to_cred.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %call.i.i213 to i32
  call void @abort_creds(ptr noundef nonnull %call.i211) #9
  br label %install_thread_keyring.exit

if.end3.i:                                        ; preds = %install_thread_keyring_to_cred.exit.i.if.end3.i_crit_edge, %if.end5.i.i, %if.end.i.if.end3.i_crit_edge
  %call4.i = call i32 @commit_creds(ptr noundef nonnull %call.i211) #9
  br label %install_thread_keyring.exit

install_thread_keyring.exit:                      ; preds = %if.end3.i, %if.then2.i
  %retval.0.i = phi i32 [ %23, %if.then2.i ], [ %call4.i, %if.end3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %install_thread_keyring.exit.if.then8_crit_edge, label %install_thread_keyring.exit.reget_creds_crit_edge

install_thread_keyring.exit.reget_creds_crit_edge: ; preds = %install_thread_keyring.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %reget_creds

install_thread_keyring.exit.if.then8_crit_edge:   ; preds = %install_thread_keyring.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.then8:                                         ; preds = %install_thread_keyring.exit.if.then8_crit_edge, %if.end.if.then8_crit_edge
  %retval.0.i312 = phi i32 [ %retval.0.i, %install_thread_keyring.exit.if.then8_crit_edge ], [ -12, %if.end.if.then8_crit_edge ]
  %24 = inttoptr i32 %retval.0.i312 to ptr
  br label %errorthread-pre-split

if.end11:                                         ; preds = %sw.bb
  %25 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %15, ptr %key, align 4
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %15, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr nonnull %15, i32 1, i32 3, i32 1) #9
  %26 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %15, ptr nonnull %15, i32 1, ptr nonnull elementtype(i32) %15) #9, !srcloc !65
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end11.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !66

if.end11.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end11
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %27 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %.not.i.i.i.i = icmp sgt i32 %27, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.__key_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !67

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.__key_get.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__key_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end11.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end11.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %15, i32 noundef %.sink.i.i.i.i) #9
  br label %__key_get.exit

__key_get.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.__key_get.exit_crit_edge
  %28 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %key, align 4
  %30 = ptrtoint ptr %29 to i32
  %or.i = or i32 %30, 1
  %31 = inttoptr i32 %or.i to ptr
  br label %sw.epilog

sw.bb16:                                          ; preds = %get_cred.exit
  %process_keyring = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 20
  %32 = ptrtoint ptr %process_keyring to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %process_keyring, align 4
  %tobool18.not = icmp eq ptr %33, null
  br i1 %tobool18.not, label %if.then19, label %if.end29

if.then19:                                        ; preds = %sw.bb16
  br i1 %tobool57.not, label %if.then19.errorthread-pre-split_crit_edge, label %if.end23

if.then19.errorthread-pre-split_crit_edge:        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %errorthread-pre-split

if.end23:                                         ; preds = %if.then19
  %call.i214 = call ptr @prepare_creds() #9
  %tobool.not.i215 = icmp eq ptr %call.i214, null
  br i1 %tobool.not.i215, label %if.end23.if.then26_crit_edge, label %if.end.i217

if.end23.if.then26_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26

if.end.i217:                                      ; preds = %if.end23
  %process_keyring.i.i = getelementptr inbounds %struct.cred, ptr %call.i214, i32 0, i32 20
  %34 = ptrtoint ptr %process_keyring.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %process_keyring.i.i, align 4
  %tobool.not.i.i216 = icmp eq ptr %35, null
  br i1 %tobool.not.i.i216, label %if.end.i.i224, label %if.end.i217.if.end3.i229_crit_edge

if.end.i217.if.end3.i229_crit_edge:               ; preds = %if.end.i217
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3.i229

if.end.i.i224:                                    ; preds = %if.end.i217
  %uid.i.i218 = getelementptr inbounds %struct.cred, ptr %call.i214, i32 0, i32 4
  %gid.i.i219 = getelementptr inbounds %struct.cred, ptr %call.i214, i32 0, i32 5
  %36 = ptrtoint ptr %uid.i.i218 to i32
  call void @__asan_load4_noabort(i32 %36)
  %.unpack.i.i220 = load i32, ptr %uid.i.i218, align 4
  %37 = insertvalue [1 x i32] undef, i32 %.unpack.i.i220, 0
  %38 = ptrtoint ptr %gid.i.i219 to i32
  call void @__asan_load4_noabort(i32 %38)
  %.unpack13.i.i221 = load i32, ptr %gid.i.i219, align 4
  %39 = insertvalue [1 x i32] undef, i32 %.unpack13.i.i221, 0
  %call.i.i222 = call ptr @keyring_alloc(ptr noundef nonnull @.str.7, [1 x i32] %37, [1 x i32] %39, ptr noundef nonnull %call.i214, i32 noundef 1057030144, i32 noundef 1, ptr noundef null, ptr noundef null) #9
  %cmp.i.i.i223 = icmp ugt ptr %call.i.i222, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i223, label %install_process_keyring_to_cred.exit.i, label %if.end5.i.i225

if.end5.i.i225:                                   ; preds = %if.end.i.i224
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %process_keyring.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i.i222, ptr %process_keyring.i.i, align 4
  br label %if.end3.i229

install_process_keyring_to_cred.exit.i:           ; preds = %if.end.i.i224
  %cmp.i226 = icmp slt ptr %call.i.i222, null
  br i1 %cmp.i226, label %if.then2.i227, label %install_process_keyring_to_cred.exit.i.if.end3.i229_crit_edge

install_process_keyring_to_cred.exit.i.if.end3.i229_crit_edge: ; preds = %install_process_keyring_to_cred.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3.i229

if.then2.i227:                                    ; preds = %install_process_keyring_to_cred.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %call.i.i222 to i32
  call void @abort_creds(ptr noundef nonnull %call.i214) #9
  br label %install_process_keyring.exit

if.end3.i229:                                     ; preds = %install_process_keyring_to_cred.exit.i.if.end3.i229_crit_edge, %if.end5.i.i225, %if.end.i217.if.end3.i229_crit_edge
  %call4.i228 = call i32 @commit_creds(ptr noundef nonnull %call.i214) #9
  br label %install_process_keyring.exit

install_process_keyring.exit:                     ; preds = %if.end3.i229, %if.then2.i227
  %retval.0.i230 = phi i32 [ %41, %if.then2.i227 ], [ %call4.i228, %if.end3.i229 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i230)
  %cmp25 = icmp slt i32 %retval.0.i230, 0
  br i1 %cmp25, label %install_process_keyring.exit.if.then26_crit_edge, label %install_process_keyring.exit.reget_creds_crit_edge

install_process_keyring.exit.reget_creds_crit_edge: ; preds = %install_process_keyring.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %reget_creds

install_process_keyring.exit.if.then26_crit_edge: ; preds = %install_process_keyring.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26

if.then26:                                        ; preds = %install_process_keyring.exit.if.then26_crit_edge, %if.end23.if.then26_crit_edge
  %retval.0.i230315 = phi i32 [ %retval.0.i230, %install_process_keyring.exit.if.then26_crit_edge ], [ -12, %if.end23.if.then26_crit_edge ]
  %42 = inttoptr i32 %retval.0.i230315 to ptr
  br label %errorthread-pre-split

if.end29:                                         ; preds = %sw.bb16
  %43 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %33, ptr %key, align 4
  %call.i.i.i.i.i.i231 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %33, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr nonnull %33, i32 1, i32 3, i32 1) #9
  %44 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %33, ptr nonnull %33, i32 1, ptr nonnull elementtype(i32) %33) #9, !srcloc !65
  %asmresult.i.i.i.i.i.i232 = extractvalue { i32, i32, i32 } %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i232)
  %tobool1.not.i.i.i.i233 = icmp eq i32 %asmresult.i.i.i.i.i.i232, 0
  br i1 %tobool1.not.i.i.i.i233, label %if.end29.if.end15.sink.split.i.i.i.i238_crit_edge, label %if.else.i.i.i.i236, !prof !66

if.end29.if.end15.sink.split.i.i.i.i238_crit_edge: ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i238

if.else.i.i.i.i236:                               ; preds = %if.end29
  %add.i.i.i.i234 = add i32 %asmresult.i.i.i.i.i.i232, 1
  %45 = or i32 %add.i.i.i.i234, %asmresult.i.i.i.i.i.i232
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %45)
  %.not.i.i.i.i235 = icmp sgt i32 %45, -1
  br i1 %.not.i.i.i.i235, label %if.else.i.i.i.i236.__key_get.exit239_crit_edge, label %if.else.i.i.i.i236.if.end15.sink.split.i.i.i.i238_crit_edge, !prof !67

if.else.i.i.i.i236.if.end15.sink.split.i.i.i.i238_crit_edge: ; preds = %if.else.i.i.i.i236
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i238

if.else.i.i.i.i236.__key_get.exit239_crit_edge:   ; preds = %if.else.i.i.i.i236
  call void @__sanitizer_cov_trace_pc() #11
  br label %__key_get.exit239

if.end15.sink.split.i.i.i.i238:                   ; preds = %if.else.i.i.i.i236.if.end15.sink.split.i.i.i.i238_crit_edge, %if.end29.if.end15.sink.split.i.i.i.i238_crit_edge
  %.sink.i.i.i.i237 = phi i32 [ 2, %if.end29.if.end15.sink.split.i.i.i.i238_crit_edge ], [ 1, %if.else.i.i.i.i236.if.end15.sink.split.i.i.i.i238_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %33, i32 noundef %.sink.i.i.i.i237) #9
  br label %__key_get.exit239

__key_get.exit239:                                ; preds = %if.end15.sink.split.i.i.i.i238, %if.else.i.i.i.i236.__key_get.exit239_crit_edge
  %46 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %key, align 4
  %48 = ptrtoint ptr %47 to i32
  %or.i240 = or i32 %48, 1
  %49 = inttoptr i32 %or.i240 to ptr
  br label %sw.epilog

sw.bb34:                                          ; preds = %get_cred.exit
  %session_keyring = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 19
  %50 = ptrtoint ptr %session_keyring to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %session_keyring, align 4
  %tobool36.not = icmp eq ptr %51, null
  br i1 %tobool36.not, label %if.then37, label %if.else51

if.then37:                                        ; preds = %sw.bb34
  %call38 = call i32 @look_up_user_keyrings(ptr noundef null, ptr noundef nonnull %user_session)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.then37.errorthread-pre-split_crit_edge, label %if.end41

if.then37.errorthread-pre-split_crit_edge:        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  br label %errorthread-pre-split

if.end41:                                         ; preds = %if.then37
  br i1 %tobool57.not, label %if.else, label %if.then44

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  %call45 = call i32 @join_session_keyring(ptr noundef null)
  br label %if.end47

if.else:                                          ; preds = %if.end41
  %52 = ptrtoint ptr %user_session to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %user_session, align 4
  %call.i241 = call ptr @prepare_creds() #9
  %tobool.not.i242 = icmp eq ptr %call.i241, null
  br i1 %tobool.not.i242, label %if.else.if.end47.thread_crit_edge, label %if.end.i245

if.else.if.end47.thread_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47.thread

if.end.i245:                                      ; preds = %if.else
  %call1.i243 = call i32 @install_session_keyring_to_cred(ptr noundef nonnull %call.i241, ptr noundef %53) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i243)
  %cmp.i244 = icmp slt i32 %call1.i243, 0
  br i1 %cmp.i244, label %if.then2.i246, label %if.end3.i248

if.then2.i246:                                    ; preds = %if.end.i245
  call void @__sanitizer_cov_trace_pc() #11
  call void @abort_creds(ptr noundef nonnull %call.i241) #9
  br label %if.end47.thread

if.end3.i248:                                     ; preds = %if.end.i245
  call void @__sanitizer_cov_trace_pc() #11
  %call4.i247 = call i32 @commit_creds(ptr noundef nonnull %call.i241) #9
  br label %if.end47

if.end47.thread:                                  ; preds = %if.then2.i246, %if.else.if.end47.thread_crit_edge
  %54 = ptrtoint ptr %user_session to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %user_session, align 4
  call void @key_put(ptr noundef %55) #9
  br label %errorthread-pre-split

if.end47:                                         ; preds = %if.end3.i248, %if.then44
  %ret.0 = phi i32 [ %call45, %if.then44 ], [ %call4.i247, %if.end3.i248 ]
  %56 = ptrtoint ptr %user_session to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %user_session, align 4
  call void @key_put(ptr noundef %57) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp48 = icmp slt i32 %ret.0, 0
  br i1 %cmp48, label %if.end47.errorthread-pre-split_crit_edge, label %if.end47.reget_creds_crit_edge

if.end47.reget_creds_crit_edge:                   ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %reget_creds

if.end47.errorthread-pre-split_crit_edge:         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %errorthread-pre-split

if.else51:                                        ; preds = %sw.bb34
  %flags = getelementptr inbounds %struct.key, ptr %51, i32 0, i32 15
  %58 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %flags, align 4
  %60 = and i32 %59, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool55.not = icmp eq i32 %60, 0
  %or.cond = or i1 %tobool57.not, %tobool55.not
  br i1 %or.cond, label %if.end64, label %if.then58

if.then58:                                        ; preds = %if.else51
  %call59 = call i32 @join_session_keyring(ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp slt i32 %call59, 0
  br i1 %cmp60, label %if.then58.errorthread-pre-split_crit_edge, label %if.then58.reget_creds_crit_edge

if.then58.reget_creds_crit_edge:                  ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #11
  br label %reget_creds

if.then58.errorthread-pre-split_crit_edge:        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #11
  br label %errorthread-pre-split

if.end64:                                         ; preds = %if.else51
  %61 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %51, ptr %key, align 4
  %call.i.i.i.i.i.i250 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %51, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr nonnull %51, i32 1, i32 3, i32 1) #9
  %62 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %51, ptr nonnull %51, i32 1, ptr nonnull elementtype(i32) %51) #9, !srcloc !65
  %asmresult.i.i.i.i.i.i251 = extractvalue { i32, i32, i32 } %62, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i251)
  %tobool1.not.i.i.i.i252 = icmp eq i32 %asmresult.i.i.i.i.i.i251, 0
  br i1 %tobool1.not.i.i.i.i252, label %if.end64.if.end15.sink.split.i.i.i.i257_crit_edge, label %if.else.i.i.i.i255, !prof !66

if.end64.if.end15.sink.split.i.i.i.i257_crit_edge: ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i257

if.else.i.i.i.i255:                               ; preds = %if.end64
  %add.i.i.i.i253 = add i32 %asmresult.i.i.i.i.i.i251, 1
  %63 = or i32 %add.i.i.i.i253, %asmresult.i.i.i.i.i.i251
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %63)
  %.not.i.i.i.i254 = icmp sgt i32 %63, -1
  br i1 %.not.i.i.i.i254, label %if.else.i.i.i.i255.__key_get.exit258_crit_edge, label %if.else.i.i.i.i255.if.end15.sink.split.i.i.i.i257_crit_edge, !prof !67

if.else.i.i.i.i255.if.end15.sink.split.i.i.i.i257_crit_edge: ; preds = %if.else.i.i.i.i255
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i257

if.else.i.i.i.i255.__key_get.exit258_crit_edge:   ; preds = %if.else.i.i.i.i255
  call void @__sanitizer_cov_trace_pc() #11
  br label %__key_get.exit258

if.end15.sink.split.i.i.i.i257:                   ; preds = %if.else.i.i.i.i255.if.end15.sink.split.i.i.i.i257_crit_edge, %if.end64.if.end15.sink.split.i.i.i.i257_crit_edge
  %.sink.i.i.i.i256 = phi i32 [ 2, %if.end64.if.end15.sink.split.i.i.i.i257_crit_edge ], [ 1, %if.else.i.i.i.i255.if.end15.sink.split.i.i.i.i257_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %51, i32 noundef %.sink.i.i.i.i256) #9
  br label %__key_get.exit258

__key_get.exit258:                                ; preds = %if.end15.sink.split.i.i.i.i257, %if.else.i.i.i.i255.__key_get.exit258_crit_edge
  %64 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %key, align 4
  %66 = ptrtoint ptr %65 to i32
  %or.i259 = or i32 %66, 1
  %67 = inttoptr i32 %or.i259 to ptr
  br label %sw.epilog

sw.bb69:                                          ; preds = %get_cred.exit
  %call70 = call i32 @look_up_user_keyrings(ptr noundef nonnull %key, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %sw.bb69.errorthread-pre-split_crit_edge, label %if.end73

sw.bb69.errorthread-pre-split_crit_edge:          ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #11
  br label %errorthread-pre-split

if.end73:                                         ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %key, align 4
  %70 = ptrtoint ptr %69 to i32
  %or.i260 = or i32 %70, 1
  %71 = inttoptr i32 %or.i260 to ptr
  br label %sw.epilog

sw.bb75:                                          ; preds = %get_cred.exit
  %call76 = call i32 @look_up_user_keyrings(ptr noundef null, ptr noundef nonnull %key)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %cmp77 = icmp slt i32 %call76, 0
  br i1 %cmp77, label %sw.bb75.errorthread-pre-split_crit_edge, label %if.end79

sw.bb75.errorthread-pre-split_crit_edge:          ; preds = %sw.bb75
  call void @__sanitizer_cov_trace_pc() #11
  br label %errorthread-pre-split

if.end79:                                         ; preds = %sw.bb75
  call void @__sanitizer_cov_trace_pc() #11
  %72 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %key, align 4
  %74 = ptrtoint ptr %73 to i32
  %or.i261 = or i32 %74, 1
  %75 = inttoptr i32 %or.i261 to ptr
  br label %sw.epilog

sw.bb83:                                          ; preds = %get_cred.exit
  %request_key_auth = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 22
  %76 = ptrtoint ptr %request_key_auth to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %request_key_auth, align 4
  %78 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %77, ptr %key, align 4
  %tobool85.not = icmp eq ptr %77, null
  br i1 %tobool85.not, label %sw.bb83.errorthread-pre-split_crit_edge, label %if.end87

sw.bb83.errorthread-pre-split_crit_edge:          ; preds = %sw.bb83
  call void @__sanitizer_cov_trace_pc() #11
  br label %errorthread-pre-split

if.end87:                                         ; preds = %sw.bb83
  %call.i.i.i.i.i.i262 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %77, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr nonnull %77, i32 1, i32 3, i32 1) #9
  %79 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %77, ptr nonnull %77, i32 1, ptr nonnull elementtype(i32) %77) #9, !srcloc !65
  %asmresult.i.i.i.i.i.i263 = extractvalue { i32, i32, i32 } %79, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i263)
  %tobool1.not.i.i.i.i264 = icmp eq i32 %asmresult.i.i.i.i.i.i263, 0
  br i1 %tobool1.not.i.i.i.i264, label %if.end87.if.end15.sink.split.i.i.i.i269_crit_edge, label %if.else.i.i.i.i267, !prof !66

if.end87.if.end15.sink.split.i.i.i.i269_crit_edge: ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i269

if.else.i.i.i.i267:                               ; preds = %if.end87
  %add.i.i.i.i265 = add i32 %asmresult.i.i.i.i.i.i263, 1
  %80 = or i32 %add.i.i.i.i265, %asmresult.i.i.i.i.i.i263
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %80)
  %.not.i.i.i.i266 = icmp sgt i32 %80, -1
  br i1 %.not.i.i.i.i266, label %if.else.i.i.i.i267.__key_get.exit270_crit_edge, label %if.else.i.i.i.i267.if.end15.sink.split.i.i.i.i269_crit_edge, !prof !67

if.else.i.i.i.i267.if.end15.sink.split.i.i.i.i269_crit_edge: ; preds = %if.else.i.i.i.i267
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i269

if.else.i.i.i.i267.__key_get.exit270_crit_edge:   ; preds = %if.else.i.i.i.i267
  call void @__sanitizer_cov_trace_pc() #11
  br label %__key_get.exit270

if.end15.sink.split.i.i.i.i269:                   ; preds = %if.else.i.i.i.i267.if.end15.sink.split.i.i.i.i269_crit_edge, %if.end87.if.end15.sink.split.i.i.i.i269_crit_edge
  %.sink.i.i.i.i268 = phi i32 [ 2, %if.end87.if.end15.sink.split.i.i.i.i269_crit_edge ], [ 1, %if.else.i.i.i.i267.if.end15.sink.split.i.i.i.i269_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %77, i32 noundef %.sink.i.i.i.i268) #9
  br label %__key_get.exit270

__key_get.exit270:                                ; preds = %if.end15.sink.split.i.i.i.i269, %if.else.i.i.i.i267.__key_get.exit270_crit_edge
  %81 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %key, align 4
  %83 = ptrtoint ptr %82 to i32
  %or.i271 = or i32 %83, 1
  %84 = inttoptr i32 %or.i271 to ptr
  br label %sw.epilog

sw.bb90:                                          ; preds = %get_cred.exit
  %request_key_auth92 = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 22
  %85 = ptrtoint ptr %request_key_auth92 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %request_key_auth92, align 4
  %tobool93.not = icmp eq ptr %86, null
  br i1 %tobool93.not, label %sw.bb90.error_crit_edge, label %if.end95

sw.bb90.error_crit_edge:                          ; preds = %sw.bb90
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end95:                                         ; preds = %sw.bb90
  %sem = getelementptr inbounds %struct.key, ptr %86, i32 0, i32 4
  call void @down_read(ptr noundef %sem) #9
  %87 = ptrtoint ptr %cred2 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %cred2, align 4
  %request_key_auth99 = getelementptr inbounds %struct.cred, ptr %88, i32 0, i32 22
  %89 = ptrtoint ptr %request_key_auth99 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %request_key_auth99, align 4
  %flags100 = getelementptr inbounds %struct.key, ptr %90, i32 0, i32 15
  %91 = ptrtoint ptr %flags100 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %flags100, align 4
  %93 = and i32 %92, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool102.not = icmp eq i32 %93, 0
  br i1 %tobool102.not, label %if.else105, label %if.then103

if.then103:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  %94 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr null, ptr %key, align 4
  br label %if.end109

if.else105:                                       ; preds = %if.end95
  %95 = getelementptr inbounds %struct.key, ptr %90, i32 0, i32 17
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %95, align 4
  %dest_keyring = getelementptr inbounds %struct.request_key_auth, ptr %97, i32 0, i32 2
  %98 = ptrtoint ptr %dest_keyring to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dest_keyring, align 4
  %100 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %99, ptr %key, align 4
  %call.i.i.i.i.i.i272 = call zeroext i1 @__kasan_check_write(ptr noundef %99, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %99, i32 1, i32 3, i32 1) #9
  %101 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %99, ptr %99, i32 1, ptr elementtype(i32) %99) #9, !srcloc !65
  %asmresult.i.i.i.i.i.i273 = extractvalue { i32, i32, i32 } %101, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i273)
  %tobool1.not.i.i.i.i274 = icmp eq i32 %asmresult.i.i.i.i.i.i273, 0
  br i1 %tobool1.not.i.i.i.i274, label %if.else105.if.end15.sink.split.i.i.i.i279_crit_edge, label %if.else.i.i.i.i277, !prof !66

if.else105.if.end15.sink.split.i.i.i.i279_crit_edge: ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i279

if.else.i.i.i.i277:                               ; preds = %if.else105
  %add.i.i.i.i275 = add i32 %asmresult.i.i.i.i.i.i273, 1
  %102 = or i32 %add.i.i.i.i275, %asmresult.i.i.i.i.i.i273
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %102)
  %.not.i.i.i.i276 = icmp sgt i32 %102, -1
  br i1 %.not.i.i.i.i276, label %if.else.i.i.i.i277.if.end109_crit_edge, label %if.else.i.i.i.i277.if.end15.sink.split.i.i.i.i279_crit_edge, !prof !67

if.else.i.i.i.i277.if.end15.sink.split.i.i.i.i279_crit_edge: ; preds = %if.else.i.i.i.i277
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i279

if.else.i.i.i.i277.if.end109_crit_edge:           ; preds = %if.else.i.i.i.i277
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end109

if.end15.sink.split.i.i.i.i279:                   ; preds = %if.else.i.i.i.i277.if.end15.sink.split.i.i.i.i279_crit_edge, %if.else105.if.end15.sink.split.i.i.i.i279_crit_edge
  %.sink.i.i.i.i278 = phi i32 [ 2, %if.else105.if.end15.sink.split.i.i.i.i279_crit_edge ], [ 1, %if.else.i.i.i.i277.if.end15.sink.split.i.i.i.i279_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %99, i32 noundef %.sink.i.i.i.i278) #9
  br label %if.end109

if.end109:                                        ; preds = %if.end15.sink.split.i.i.i.i279, %if.else.i.i.i.i277.if.end109_crit_edge, %if.then103
  %key_ref.0 = phi ptr [ inttoptr (i32 -128 to ptr), %if.then103 ], [ inttoptr (i32 -126 to ptr), %if.else.i.i.i.i277.if.end109_crit_edge ], [ inttoptr (i32 -126 to ptr), %if.end15.sink.split.i.i.i.i279 ]
  %103 = ptrtoint ptr %cred2 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %cred2, align 4
  %request_key_auth111 = getelementptr inbounds %struct.cred, ptr %104, i32 0, i32 22
  %105 = ptrtoint ptr %request_key_auth111 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %request_key_auth111, align 4
  %sem112 = getelementptr inbounds %struct.key, ptr %106, i32 0, i32 4
  call void @up_read(ptr noundef %sem112) #9
  %107 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %key, align 4
  %tobool113.not = icmp eq ptr %108, null
  br i1 %tobool113.not, label %if.end109.errorthread-pre-split_crit_edge, label %if.end115

if.end109.errorthread-pre-split_crit_edge:        ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #11
  br label %errorthread-pre-split

if.end115:                                        ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #11
  %109 = ptrtoint ptr %108 to i32
  %or.i281 = or i32 %109, 1
  %110 = inttoptr i32 %or.i281 to ptr
  br label %sw.epilog

sw.default:                                       ; preds = %get_cred.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %id)
  %cmp118 = icmp slt i32 %id, 1
  br i1 %cmp118, label %sw.default.error_crit_edge, label %if.end120

sw.default.error_crit_edge:                       ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end120:                                        ; preds = %sw.default
  %call121 = call ptr @key_lookup(i32 noundef %id) #9
  %111 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %call121, ptr %key, align 4
  %cmp.i282 = icmp ugt ptr %call121, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i282, label %if.end120.errorthread-pre-split_crit_edge, label %if.end125

if.end120.errorthread-pre-split_crit_edge:        ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #11
  br label %errorthread-pre-split

if.end125:                                        ; preds = %if.end120
  %112 = getelementptr inbounds %struct.key, ptr %call121, i32 0, i32 16
  %113 = call ptr @memcpy(ptr %ctx, ptr %112, i32 20)
  %raw_data = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 2, i32 1
  %114 = ptrtoint ptr %raw_data to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %call121, ptr %raw_data, align 4
  %115 = call i32 @llvm.read_register.i32(metadata !54) #9
  %and.i.i.i.i.i = and i32 %115, -16384
  %116 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %118, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !70
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %if.end125.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end125.rcu_read_lock.exit_crit_edge:           ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end125
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 696, ptr noundef nonnull @.str.14) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end125.rcu_read_lock.exit_crit_edge
  %call128 = call ptr @search_process_keyrings_rcu(ptr noundef nonnull %ctx)
  %call.i283 = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i283, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i286

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i286:                               ; preds = %rcu_read_lock.exit
  %call1.i284 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i284)
  %tobool.not.i285 = icmp eq i32 %call1.i284, 0
  br i1 %tobool.not.i285, label %land.lhs.true.i286.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i288

land.lhs.true.i286.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i286
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i288:                              ; preds = %land.lhs.true.i286
  %.b4.i287 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i287, label %land.lhs.true2.i288.rcu_read_unlock.exit_crit_edge, label %if.then.i289

land.lhs.true2.i288.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i288
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i289:                                     ; preds = %land.lhs.true2.i288
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 724, ptr noundef nonnull @.str.15) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i289, %land.lhs.true2.i288.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i286.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !71
  %119 = call i32 @llvm.read_register.i32(metadata !54) #9
  %and.i.i.i.i.i290 = and i32 %119, -16384
  %120 = inttoptr i32 %and.i.i.i.i.i290 to ptr
  %preempt_count.i.i.i.i291 = getelementptr inbounds %struct.thread_info, ptr %120, i32 0, i32 1
  %121 = ptrtoint ptr %preempt_count.i.i.i.i291 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load volatile i32, ptr %preempt_count.i.i.i.i291, align 4
  %sub.i.i.i = add i32 %122, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i291, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %cmp.i292 = icmp ugt ptr %call128, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i292, label %rcu_read_unlock.exit.sw.epilog_crit_edge, label %if.then131

rcu_read_unlock.exit.sw.epilog_crit_edge:         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then131:                                       ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  %123 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %key, align 4
  call void @key_put(ptr noundef %124) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then131, %rcu_read_unlock.exit.sw.epilog_crit_edge, %if.end115, %__key_get.exit270, %if.end79, %if.end73, %__key_get.exit258, %__key_get.exit239, %__key_get.exit
  %key_ref.1 = phi ptr [ %call121, %rcu_read_unlock.exit.sw.epilog_crit_edge ], [ %call128, %if.then131 ], [ %110, %if.end115 ], [ %84, %__key_get.exit270 ], [ %75, %if.end79 ], [ %71, %if.end73 ], [ %67, %__key_get.exit258 ], [ %49, %__key_get.exit239 ], [ %31, %__key_get.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %need_perm)
  %cmp133.not = icmp eq i32 %need_perm, 7
  br i1 %cmp133.not, label %sw.epilog.if.end164_crit_edge, label %if.then134

sw.epilog.if.end164_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end164

if.then134:                                       ; preds = %sw.epilog
  %and135 = and i32 %lflags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135)
  %tobool136.not = icmp eq i32 %and135, 0
  br i1 %tobool136.not, label %if.then137, label %if.else147

if.then137:                                       ; preds = %if.then134
  %125 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %key, align 4
  %call138 = call i32 @wait_for_key_construction(ptr noundef %126, i1 noundef zeroext true) #9
  %127 = zext i32 %call138 to i64
  call void @__sanitizer_cov_trace_switch(i64 %127, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %call138, label %sw.default140 [
    i32 -512, label %if.then137.invalid_key_crit_edge
    i32 0, label %if.then137.land.lhs.true158_crit_edge
  ]

if.then137.land.lhs.true158_crit_edge:            ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true158

if.then137.invalid_key_crit_edge:                 ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #11
  br label %invalid_key

sw.default140:                                    ; preds = %if.then137
  %need_perm.off = add i32 %need_perm, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %need_perm.off)
  %switch = icmp ult i32 %need_perm.off, 2
  br i1 %switch, label %sw.default140.land.lhs.true158_crit_edge, label %sw.default140.invalid_key_crit_edge

sw.default140.invalid_key_crit_edge:              ; preds = %sw.default140
  call void @__sanitizer_cov_trace_pc() #11
  br label %invalid_key

sw.default140.land.lhs.true158_crit_edge:         ; preds = %sw.default140
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true158

if.else147:                                       ; preds = %if.then134
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %need_perm)
  %cmp148.not = icmp eq i32 %need_perm, 10
  br i1 %cmp148.not, label %if.else147.if.end164_crit_edge, label %if.then149

if.else147.if.end164_crit_edge:                   ; preds = %if.else147
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end164

if.then149:                                       ; preds = %if.else147
  %128 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %key, align 4
  %call150 = call i32 @key_validate(ptr noundef %129) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150)
  %cmp151 = icmp slt i32 %call150, 0
  br i1 %cmp151, label %if.then149.invalid_key_crit_edge, label %if.then149.if.end164_crit_edge

if.then149.if.end164_crit_edge:                   ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end164

if.then149.invalid_key_crit_edge:                 ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #11
  br label %invalid_key

land.lhs.true158:                                 ; preds = %sw.default140.land.lhs.true158_crit_edge, %if.then137.land.lhs.true158_crit_edge
  %130 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %key, align 4
  %state.i = getelementptr inbounds %struct.key, ptr %131, i32 0, i32 14
  %132 = ptrtoint ptr %state.i to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load volatile i16, ptr %state.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !72
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %133)
  %cmp160 = icmp eq i16 %133, 0
  br i1 %cmp160, label %land.lhs.true158.invalid_key_crit_edge, label %land.lhs.true158.if.end164_crit_edge

land.lhs.true158.if.end164_crit_edge:             ; preds = %land.lhs.true158
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end164

land.lhs.true158.invalid_key_crit_edge:           ; preds = %land.lhs.true158
  call void @__sanitizer_cov_trace_pc() #11
  br label %invalid_key

if.end164:                                        ; preds = %land.lhs.true158.if.end164_crit_edge, %if.then149.if.end164_crit_edge, %if.else147.if.end164_crit_edge, %sw.epilog.if.end164_crit_edge
  %134 = ptrtoint ptr %cred2 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %cred2, align 4
  %call166 = call i32 @key_task_permission(ptr noundef %key_ref.1, ptr noundef %135, i32 noundef %need_perm) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call166)
  %cmp167 = icmp slt i32 %call166, 0
  br i1 %cmp167, label %if.end164.invalid_key_crit_edge, label %if.end170

if.end164.invalid_key_crit_edge:                  ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #11
  br label %invalid_key

if.end170:                                        ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #11
  %call171 = call i64 @ktime_get_real_seconds() #9
  %136 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %key, align 4
  %last_used_at = getelementptr inbounds %struct.key, ptr %137, i32 0, i32 8
  %138 = ptrtoint ptr %last_used_at to i32
  call void @__asan_store8_noabort(i32 %138)
  store i64 %call171, ptr %last_used_at, align 8
  br label %errorthread-pre-split

errorthread-pre-split:                            ; preds = %invalid_key, %if.end170, %if.end120.errorthread-pre-split_crit_edge, %if.end109.errorthread-pre-split_crit_edge, %sw.bb83.errorthread-pre-split_crit_edge, %sw.bb75.errorthread-pre-split_crit_edge, %sw.bb69.errorthread-pre-split_crit_edge, %if.then58.errorthread-pre-split_crit_edge, %if.end47.errorthread-pre-split_crit_edge, %if.end47.thread, %if.then37.errorthread-pre-split_crit_edge, %if.then26, %if.then19.errorthread-pre-split_crit_edge, %if.then8, %if.then.errorthread-pre-split_crit_edge
  %key_ref.2.ph = phi ptr [ %call121, %if.end120.errorthread-pre-split_crit_edge ], [ inttoptr (i32 -126 to ptr), %if.end47.thread ], [ %24, %if.then8 ], [ %42, %if.then26 ], [ inttoptr (i32 -126 to ptr), %sw.bb69.errorthread-pre-split_crit_edge ], [ inttoptr (i32 -126 to ptr), %sw.bb75.errorthread-pre-split_crit_edge ], [ inttoptr (i32 -126 to ptr), %sw.bb83.errorthread-pre-split_crit_edge ], [ %key_ref.0, %if.end109.errorthread-pre-split_crit_edge ], [ %key_ref.1, %if.end170 ], [ %144, %invalid_key ], [ inttoptr (i32 -126 to ptr), %if.then58.errorthread-pre-split_crit_edge ], [ inttoptr (i32 -126 to ptr), %if.end47.errorthread-pre-split_crit_edge ], [ inttoptr (i32 -126 to ptr), %if.then37.errorthread-pre-split_crit_edge ], [ inttoptr (i32 -126 to ptr), %if.then19.errorthread-pre-split_crit_edge ], [ inttoptr (i32 -126 to ptr), %if.then.errorthread-pre-split_crit_edge ]
  %139 = ptrtoint ptr %cred2 to i32
  call void @__asan_load4_noabort(i32 %139)
  %.pr = load ptr, ptr %cred2, align 4
  br label %error

error:                                            ; preds = %errorthread-pre-split, %sw.default.error_crit_edge, %sw.bb90.error_crit_edge, %get_cred.exit.error_crit_edge
  %140 = phi ptr [ %.pr, %errorthread-pre-split ], [ %8, %sw.default.error_crit_edge ], [ %8, %sw.bb90.error_crit_edge ], [ %8, %get_cred.exit.error_crit_edge ]
  %key_ref.2 = phi ptr [ %key_ref.2.ph, %errorthread-pre-split ], [ inttoptr (i32 -22 to ptr), %sw.default.error_crit_edge ], [ inttoptr (i32 -126 to ptr), %sw.bb90.error_crit_edge ], [ inttoptr (i32 -22 to ptr), %get_cred.exit.error_crit_edge ]
  %tobool.not.i293 = icmp eq ptr %140, null
  br i1 %tobool.not.i293, label %error.put_cred.exit_crit_edge, label %do.body.i295

error.put_cred.exit_crit_edge:                    ; preds = %error
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_cred.exit

do.body.i295:                                     ; preds = %error
  %call.i.i294 = call zeroext i1 @creds_are_invalid(ptr noundef nonnull %140) #9
  br i1 %call.i.i294, label %if.then.i.i296, label %do.body.i295.__validate_creds.exit.i299_crit_edge, !prof !66

do.body.i295.__validate_creds.exit.i299_crit_edge: ; preds = %do.body.i295
  call void @__sanitizer_cov_trace_pc() #11
  br label %__validate_creds.exit.i299

if.then.i.i296:                                   ; preds = %do.body.i295
  call void @__sanitizer_cov_trace_pc() #11
  call void @__invalid_creds(ptr noundef nonnull %140, ptr noundef nonnull @.str.12, i32 noundef 286) #9
  br label %__validate_creds.exit.i299

__validate_creds.exit.i299:                       ; preds = %if.then.i.i296, %do.body.i295.__validate_creds.exit.i299_crit_edge
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %140, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !73
  call void @llvm.prefetch.p0(ptr nonnull %140, i32 1, i32 3, i32 1) #9
  %141 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %140, ptr nonnull %140, i32 1, ptr nonnull elementtype(i32) %140) #9, !srcloc !74
  %asmresult.i.i.i.i.i.i297 = extractvalue { i32, i32 } %141, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i297)
  %cmp.i.i.i298 = icmp eq i32 %asmresult.i.i.i.i.i.i297, 0
  br i1 %cmp.i.i.i298, label %if.then1.i, label %__validate_creds.exit.i299.put_cred.exit_crit_edge

__validate_creds.exit.i299.put_cred.exit_crit_edge: ; preds = %__validate_creds.exit.i299
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_cred.exit

if.then1.i:                                       ; preds = %__validate_creds.exit.i299
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_cred(ptr noundef nonnull %140) #9
  br label %put_cred.exit

put_cred.exit:                                    ; preds = %if.then1.i, %__validate_creds.exit.i299.put_cred.exit_crit_edge, %error.put_cred.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %user_session) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %ctx) #9
  ret ptr %key_ref.2

invalid_key:                                      ; preds = %if.end164.invalid_key_crit_edge, %land.lhs.true158.invalid_key_crit_edge, %if.then149.invalid_key_crit_edge, %sw.default140.invalid_key_crit_edge, %if.then137.invalid_key_crit_edge
  %ret.1 = phi i32 [ %call150, %if.then149.invalid_key_crit_edge ], [ %call166, %if.end164.invalid_key_crit_edge ], [ -5, %land.lhs.true158.invalid_key_crit_edge ], [ %call138, %if.then137.invalid_key_crit_edge ], [ %call138, %sw.default140.invalid_key_crit_edge ]
  %142 = ptrtoint ptr %key_ref.1 to i32
  %and.i.i = and i32 %142, -2
  %143 = inttoptr i32 %and.i.i to ptr
  call void @key_put(ptr noundef %143) #9
  %144 = inttoptr i32 %ret.1 to ptr
  br label %errorthread-pre-split

reget_creds:                                      ; preds = %if.then58.reget_creds_crit_edge, %if.end47.reget_creds_crit_edge, %install_process_keyring.exit.reget_creds_crit_edge, %install_thread_keyring.exit.reget_creds_crit_edge
  %145 = ptrtoint ptr %cred2 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %cred2, align 4
  %tobool.not.i300 = icmp eq ptr %146, null
  br i1 %tobool.not.i300, label %reget_creds.try_again.backedge_crit_edge, label %do.body.i302

reget_creds.try_again.backedge_crit_edge:         ; preds = %reget_creds
  call void @__sanitizer_cov_trace_pc() #11
  br label %try_again.backedge

try_again.backedge:                               ; preds = %if.then1.i308, %__validate_creds.exit.i307.try_again.backedge_crit_edge, %reget_creds.try_again.backedge_crit_edge
  br label %try_again

do.body.i302:                                     ; preds = %reget_creds
  %call.i.i301 = call zeroext i1 @creds_are_invalid(ptr noundef nonnull %146) #9
  br i1 %call.i.i301, label %if.then.i.i303, label %do.body.i302.__validate_creds.exit.i307_crit_edge, !prof !66

do.body.i302.__validate_creds.exit.i307_crit_edge: ; preds = %do.body.i302
  call void @__sanitizer_cov_trace_pc() #11
  br label %__validate_creds.exit.i307

if.then.i.i303:                                   ; preds = %do.body.i302
  call void @__sanitizer_cov_trace_pc() #11
  call void @__invalid_creds(ptr noundef nonnull %146, ptr noundef nonnull @.str.12, i32 noundef 286) #9
  br label %__validate_creds.exit.i307

__validate_creds.exit.i307:                       ; preds = %if.then.i.i303, %do.body.i302.__validate_creds.exit.i307_crit_edge
  %call.i.i.i304 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %146, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !73
  call void @llvm.prefetch.p0(ptr nonnull %146, i32 1, i32 3, i32 1) #9
  %147 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %146, ptr nonnull %146, i32 1, ptr nonnull elementtype(i32) %146) #9, !srcloc !74
  %asmresult.i.i.i.i.i.i305 = extractvalue { i32, i32 } %147, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i305)
  %cmp.i.i.i306 = icmp eq i32 %asmresult.i.i.i.i.i.i305, 0
  br i1 %cmp.i.i.i306, label %if.then1.i308, label %__validate_creds.exit.i307.try_again.backedge_crit_edge

__validate_creds.exit.i307.try_again.backedge_crit_edge: ; preds = %__validate_creds.exit.i307
  call void @__sanitizer_cov_trace_pc() #11
  br label %try_again.backedge

if.then1.i308:                                    ; preds = %__validate_creds.exit.i307
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_cred(ptr noundef nonnull %146) #9
  br label %try_again.backedge
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @join_session_keyring(ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @prepare_creds() #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !54) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred, align 16
  %tobool2.not = icmp eq ptr %name, null
  br i1 %tobool2.not, label %if.then3, label %if.end12

if.then3:                                         ; preds = %do.end
  tail call void @__might_sleep(ptr noundef nonnull @.str.8, i32 noundef 322) #9
  %session_keyring.i = getelementptr inbounds %struct.cred, ptr %call, i32 0, i32 19
  %6 = ptrtoint ptr %session_keyring.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %session_keyring.i, align 4
  %tobool4.not.i = icmp eq ptr %7, null
  %spec.store.select.i = zext i1 %tobool4.not.i to i32
  %uid.i = getelementptr inbounds %struct.cred, ptr %call, i32 0, i32 4
  %gid.i = getelementptr inbounds %struct.cred, ptr %call, i32 0, i32 5
  %8 = ptrtoint ptr %uid.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.unpack.i = load i32, ptr %uid.i, align 4
  %9 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %10 = ptrtoint ptr %gid.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.unpack29.i = load i32, ptr %gid.i, align 4
  %11 = insertvalue [1 x i32] undef, i32 %.unpack29.i, 0
  %call.i = tail call ptr @keyring_alloc(ptr noundef nonnull @.str.9, [1 x i32] %9, [1 x i32] %11, ptr noundef nonnull %call, i32 noundef 1057161216, i32 noundef %spec.store.select.i, ptr noundef null, ptr noundef null) #9
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %install_session_keyring_to_cred.exit, label %if.end12.i

if.end12.i:                                       ; preds = %if.then3
  %12 = ptrtoint ptr %session_keyring.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %session_keyring.i, align 4
  store ptr %call.i, ptr %session_keyring.i, align 4
  %tobool15.not.i = icmp eq ptr %13, null
  br i1 %tobool15.not.i, label %if.end12.i.if.end6_crit_edge, label %if.then16.i

if.end12.i.if.end6_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then16.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @key_put(ptr noundef nonnull %13) #9
  br label %if.end6

install_session_keyring_to_cred.exit:             ; preds = %if.then3
  %14 = ptrtoint ptr %call.i to i32
  %cmp = icmp slt ptr %call.i, null
  br i1 %cmp, label %install_session_keyring_to_cred.exit.error_crit_edge, label %install_session_keyring_to_cred.exit.if.end6_crit_edge

install_session_keyring_to_cred.exit.if.end6_crit_edge: ; preds = %install_session_keyring_to_cred.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

install_session_keyring_to_cred.exit.error_crit_edge: ; preds = %install_session_keyring_to_cred.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end6:                                          ; preds = %install_session_keyring_to_cred.exit.if.end6_crit_edge, %if.then16.i, %if.end12.i.if.end6_crit_edge
  %15 = ptrtoint ptr %session_keyring.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %session_keyring.i, align 4
  %serial7 = getelementptr inbounds %struct.key, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %serial7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %serial7, align 4
  %call8 = tail call i32 @commit_creds(ptr noundef nonnull %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp eq i32 %call8, 0
  %spec.select = select i1 %cmp9, i32 %18, i32 %call8
  br label %cleanup

if.end12:                                         ; preds = %do.end
  tail call void @mutex_lock_nested(ptr noundef nonnull @key_session_mutex, i32 noundef 0) #9
  %call13 = tail call ptr @find_keyring_by_name(ptr noundef nonnull %name, i1 noundef zeroext false) #9
  %cmp15 = icmp eq ptr %call13, inttoptr (i32 -126 to ptr)
  br i1 %cmp15, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end12
  %uid = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 4
  %gid = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 5
  %19 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %19)
  %.unpack = load i32, ptr %uid, align 4
  %20 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %21 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %21)
  %.unpack67 = load i32, ptr %gid, align 4
  %22 = insertvalue [1 x i32] undef, i32 %.unpack67, 0
  %call18 = tail call ptr @keyring_alloc(ptr noundef nonnull %name, [1 x i32] %20, [1 x i32] %22, ptr noundef %5, i32 noundef 1058209792, i32 noundef 0, ptr noundef null, ptr noundef null) #9
  %cmp.i = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then20, label %if.then16.if.end32_crit_edge

if.then16.if.end32_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then20:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %call18 to i32
  br label %error2

if.else:                                          ; preds = %if.end12
  %24 = ptrtoint ptr %call13 to i32
  %cmp.i68 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i68, label %if.else.error2_crit_edge, label %if.else26

if.else.error2_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %error2

if.else26:                                        ; preds = %if.else
  %session_keyring27 = getelementptr inbounds %struct.cred, ptr %call, i32 0, i32 19
  %25 = ptrtoint ptr %session_keyring27 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %session_keyring27, align 4
  %cmp28 = icmp eq ptr %call13, %26
  br i1 %cmp28, label %if.else26.error3_crit_edge, label %if.else26.if.end32_crit_edge

if.else26.if.end32_crit_edge:                     ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.else26.error3_crit_edge:                       ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #11
  br label %error3

if.end32:                                         ; preds = %if.else26.if.end32_crit_edge, %if.then16.if.end32_crit_edge
  %keyring.0 = phi ptr [ %call18, %if.then16.if.end32_crit_edge ], [ %call13, %if.else26.if.end32_crit_edge ]
  %call33 = tail call i32 @install_session_keyring_to_cred(ptr noundef nonnull %call, ptr noundef %keyring.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.end32.error3_crit_edge, label %if.end36

if.end32.error3_crit_edge:                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %error3

if.end36:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %call37 = tail call i32 @commit_creds(ptr noundef nonnull %call) #9
  tail call void @mutex_unlock(ptr noundef nonnull @key_session_mutex) #9
  %serial38 = getelementptr inbounds %struct.key, ptr %keyring.0, i32 0, i32 1
  %27 = ptrtoint ptr %serial38 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %serial38, align 4
  tail call void @key_put(ptr noundef %keyring.0) #9
  br label %cleanup

error3:                                           ; preds = %if.end32.error3_crit_edge, %if.else26.error3_crit_edge
  %keyring.1 = phi ptr [ %keyring.0, %if.end32.error3_crit_edge ], [ %call13, %if.else26.error3_crit_edge ]
  %ret.1 = phi i32 [ %call33, %if.end32.error3_crit_edge ], [ 0, %if.else26.error3_crit_edge ]
  tail call void @key_put(ptr noundef %keyring.1) #9
  br label %error2

error2:                                           ; preds = %error3, %if.else.error2_crit_edge, %if.then20
  %ret.2 = phi i32 [ %23, %if.then20 ], [ %ret.1, %error3 ], [ %24, %if.else.error2_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @key_session_mutex) #9
  br label %error

error:                                            ; preds = %error2, %install_session_keyring_to_cred.exit.error_crit_edge
  %ret.3 = phi i32 [ %ret.2, %error2 ], [ %14, %install_session_keyring_to_cred.exit.error_crit_edge ]
  tail call void @abort_creds(ptr noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end36, %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.3, %error ], [ -12, %entry.cleanup_crit_edge ], [ %28, %if.end36 ], [ %spec.select, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @key_lookup(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_key_construction(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @key_task_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_cred(ptr noundef %_cred) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %tobool.not = icmp eq ptr %_cred, null
  br i1 %tobool.not, label %entry.if.end2_crit_edge, label %do.body

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end2

do.body:                                          ; preds = %entry
  %call.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %_cred) #9
  br i1 %call.i, label %if.then.i, label %do.body.__validate_creds.exit_crit_edge, !prof !66

do.body.__validate_creds.exit_crit_edge:          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %__validate_creds.exit

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__invalid_creds(ptr noundef nonnull %_cred, ptr noundef nonnull @.str.12, i32 noundef 286) #9
  br label %__validate_creds.exit

__validate_creds.exit:                            ; preds = %if.then.i, %do.body.__validate_creds.exit_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %_cred, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !73
  tail call void @llvm.prefetch.p0(ptr nonnull %_cred, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %_cred, ptr nonnull %_cred, i32 1, ptr nonnull elementtype(i32) %_cred) #9, !srcloc !74
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then1, label %__validate_creds.exit.if.end2_crit_edge

__validate_creds.exit.if.end2_crit_edge:          ; preds = %__validate_creds.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end2

if.then1:                                         ; preds = %__validate_creds.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_cred(ptr noundef nonnull %_cred) #9
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %__validate_creds.exit.if.end2_crit_edge, %entry.if.end2_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @prepare_creds() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @commit_creds(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_keyring_by_name(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @abort_creds(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @key_change_session_keyring(ptr noundef %twork) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !54) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred, align 16
  %add.ptr = getelementptr i8, ptr %twork, i32 -132
  %flags = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !67

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @put_cred(ptr noundef %add.ptr)
  br label %cleanup

if.end:                                           ; preds = %entry
  %ucounts = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 26
  %8 = ptrtoint ptr %ucounts to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ucounts, align 4
  %call6 = tail call ptr @get_ucounts(ptr noundef %9) #9
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %land.end, label %if.end61, !prof !66

land.end:                                         ; preds = %if.end
  %.b139 = load i1, ptr @key_change_session_keyring.__already_done, align 1
  br i1 %.b139, label %land.end.if.end53_crit_edge, label %if.then27, !prof !67

land.end.if.end53_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then27:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @key_change_session_keyring.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 923, i32 noundef 9, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.key_change_session_keyring) #9
  br label %if.end53

if.end53:                                         ; preds = %if.then27, %land.end.if.end53_crit_edge
  tail call fastcc void @put_cred(ptr noundef %add.ptr)
  br label %cleanup

if.end61:                                         ; preds = %if.end
  %uid = getelementptr i8, ptr %twork, i32 -116
  %uid62 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 4
  %10 = ptrtoint ptr %uid62 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %uid62, align 4
  %12 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %uid, align 4
  %euid = getelementptr i8, ptr %twork, i32 -100
  %euid63 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 8
  %13 = ptrtoint ptr %euid63 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %euid63, align 4
  %15 = ptrtoint ptr %euid to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %euid, align 4
  %suid = getelementptr i8, ptr %twork, i32 -108
  %suid64 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 6
  %16 = ptrtoint ptr %suid64 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %suid64, align 4
  %18 = ptrtoint ptr %suid to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %suid, align 4
  %fsuid = getelementptr i8, ptr %twork, i32 -92
  %fsuid65 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 10
  %19 = ptrtoint ptr %fsuid65 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fsuid65, align 4
  %21 = ptrtoint ptr %fsuid to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %fsuid, align 4
  %gid = getelementptr i8, ptr %twork, i32 -112
  %gid66 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 5
  %22 = ptrtoint ptr %gid66 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %gid66, align 4
  %24 = ptrtoint ptr %gid to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %gid, align 4
  %egid = getelementptr i8, ptr %twork, i32 -96
  %egid67 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 9
  %25 = ptrtoint ptr %egid67 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %egid67, align 4
  %27 = ptrtoint ptr %egid to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %egid, align 4
  %sgid = getelementptr i8, ptr %twork, i32 -104
  %sgid68 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 7
  %28 = ptrtoint ptr %sgid68 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sgid68, align 4
  %30 = ptrtoint ptr %sgid to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %sgid, align 4
  %fsgid = getelementptr i8, ptr %twork, i32 -88
  %fsgid69 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 11
  %31 = ptrtoint ptr %fsgid69 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fsgid69, align 4
  %33 = ptrtoint ptr %fsgid to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %fsgid, align 4
  %user = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 24
  %34 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %user, align 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %35, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %35, i32 1, i32 3, i32 1) #9
  %36 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %35, ptr %35, i32 1, ptr elementtype(i32) %35) #9, !srcloc !65
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end61.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !66

if.end61.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end61
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %37 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %.not.i.i.i.i = icmp sgt i32 %37, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_uid.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !67

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_uid.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_uid.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end61.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end61.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %35, i32 noundef %.sink.i.i.i.i) #9
  br label %get_uid.exit

get_uid.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_uid.exit_crit_edge
  %user71 = getelementptr i8, ptr %twork, i32 -16
  %38 = ptrtoint ptr %user71 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %user71, align 4
  %39 = ptrtoint ptr %ucounts to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ucounts, align 4
  %ucounts73 = getelementptr i8, ptr %twork, i32 -8
  %41 = ptrtoint ptr %ucounts73 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %ucounts73, align 4
  %user_ns = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 25
  %42 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %user_ns, align 4
  %tobool.not.i = icmp eq ptr %43, null
  br i1 %tobool.not.i, label %get_uid.exit.get_user_ns.exit_crit_edge, label %if.then.i

get_uid.exit.get_user_ns.exit_crit_edge:          ; preds = %get_uid.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_user_ns.exit

if.then.i:                                        ; preds = %get_uid.exit
  %count.i = getelementptr inbounds %struct.user_namespace, ptr %43, i32 0, i32 7, i32 3
  %call.i.i.i.i.i.i140 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #9
  %44 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #9, !srcloc !65
  %asmresult.i.i.i.i.i.i141 = extractvalue { i32, i32, i32 } %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i141)
  %tobool1.not.i.i.i.i142 = icmp eq i32 %asmresult.i.i.i.i.i.i141, 0
  br i1 %tobool1.not.i.i.i.i142, label %if.then.i.if.end15.sink.split.i.i.i.i147_crit_edge, label %if.else.i.i.i.i145, !prof !66

if.then.i.if.end15.sink.split.i.i.i.i147_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i147

if.else.i.i.i.i145:                               ; preds = %if.then.i
  %add.i.i.i.i143 = add i32 %asmresult.i.i.i.i.i.i141, 1
  %45 = or i32 %add.i.i.i.i143, %asmresult.i.i.i.i.i.i141
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %45)
  %.not.i.i.i.i144 = icmp sgt i32 %45, -1
  br i1 %.not.i.i.i.i144, label %if.else.i.i.i.i145.get_user_ns.exit_crit_edge, label %if.else.i.i.i.i145.if.end15.sink.split.i.i.i.i147_crit_edge, !prof !67

if.else.i.i.i.i145.if.end15.sink.split.i.i.i.i147_crit_edge: ; preds = %if.else.i.i.i.i145
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i147

if.else.i.i.i.i145.get_user_ns.exit_crit_edge:    ; preds = %if.else.i.i.i.i145
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_user_ns.exit

if.end15.sink.split.i.i.i.i147:                   ; preds = %if.else.i.i.i.i145.if.end15.sink.split.i.i.i.i147_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i147_crit_edge
  %.sink.i.i.i.i146 = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i147_crit_edge ], [ 1, %if.else.i.i.i.i145.if.end15.sink.split.i.i.i.i147_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef %.sink.i.i.i.i146) #9
  br label %get_user_ns.exit

get_user_ns.exit:                                 ; preds = %if.end15.sink.split.i.i.i.i147, %if.else.i.i.i.i145.get_user_ns.exit_crit_edge, %get_uid.exit.get_user_ns.exit_crit_edge
  %user_ns75 = getelementptr i8, ptr %twork, i32 -12
  %46 = ptrtoint ptr %user_ns75 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %user_ns75, align 4
  %group_info = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 27
  %47 = ptrtoint ptr %group_info to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %group_info, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %48, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %48, i32 1, i32 3, i32 1) #9
  %49 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %48, ptr %48, i32 1, ptr elementtype(i32) %48) #9, !srcloc !69
  %group_info77 = getelementptr i8, ptr %twork, i32 -4
  %50 = ptrtoint ptr %group_info77 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %48, ptr %group_info77, align 4
  %securebits = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 12
  %51 = ptrtoint ptr %securebits to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %securebits, align 4
  %securebits78 = getelementptr i8, ptr %twork, i32 -84
  %53 = ptrtoint ptr %securebits78 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %securebits78, align 4
  %cap_inheritable = getelementptr i8, ptr %twork, i32 -80
  %cap_inheritable79 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 13
  %54 = ptrtoint ptr %cap_inheritable79 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 8)
  %55 = load i64, ptr %cap_inheritable79, align 4
  %56 = ptrtoint ptr %cap_inheritable to i32
  call void @__asan_storeN_noabort(i32 %56, i32 8)
  store i64 %55, ptr %cap_inheritable, align 4
  %cap_permitted = getelementptr i8, ptr %twork, i32 -72
  %cap_permitted80 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 14
  %57 = ptrtoint ptr %cap_permitted80 to i32
  call void @__asan_loadN_noabort(i32 %57, i32 8)
  %58 = load i64, ptr %cap_permitted80, align 4
  %59 = ptrtoint ptr %cap_permitted to i32
  call void @__asan_storeN_noabort(i32 %59, i32 8)
  store i64 %58, ptr %cap_permitted, align 4
  %cap_effective = getelementptr i8, ptr %twork, i32 -64
  %cap_effective81 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 15
  %60 = ptrtoint ptr %cap_effective81 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 8)
  %61 = load i64, ptr %cap_effective81, align 4
  %62 = ptrtoint ptr %cap_effective to i32
  call void @__asan_storeN_noabort(i32 %62, i32 8)
  store i64 %61, ptr %cap_effective, align 4
  %cap_ambient = getelementptr i8, ptr %twork, i32 -48
  %cap_ambient82 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 17
  %63 = ptrtoint ptr %cap_ambient82 to i32
  call void @__asan_loadN_noabort(i32 %63, i32 8)
  %64 = load i64, ptr %cap_ambient82, align 4
  %65 = ptrtoint ptr %cap_ambient to i32
  call void @__asan_storeN_noabort(i32 %65, i32 8)
  store i64 %64, ptr %cap_ambient, align 4
  %cap_bset = getelementptr i8, ptr %twork, i32 -56
  %cap_bset83 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 16
  %66 = ptrtoint ptr %cap_bset83 to i32
  call void @__asan_loadN_noabort(i32 %66, i32 8)
  %67 = load i64, ptr %cap_bset83, align 4
  %68 = ptrtoint ptr %cap_bset to i32
  call void @__asan_storeN_noabort(i32 %68, i32 8)
  store i64 %67, ptr %cap_bset, align 4
  %jit_keyring = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 18
  %69 = ptrtoint ptr %jit_keyring to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %jit_keyring, align 4
  %jit_keyring84 = getelementptr i8, ptr %twork, i32 -40
  %71 = ptrtoint ptr %jit_keyring84 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %jit_keyring84, align 4
  %thread_keyring = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 21
  %72 = ptrtoint ptr %thread_keyring to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %thread_keyring, align 4
  %tobool.not.i148 = icmp eq ptr %73, null
  br i1 %tobool.not.i148, label %get_user_ns.exit.key_get.exit_crit_edge, label %cond.true.i

get_user_ns.exit.key_get.exit_crit_edge:          ; preds = %get_user_ns.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %key_get.exit

cond.true.i:                                      ; preds = %get_user_ns.exit
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %73, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr nonnull %73, i32 1, i32 3, i32 1) #9
  %74 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %73, ptr nonnull %73, i32 1, ptr nonnull elementtype(i32) %73) #9, !srcloc !65
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %74, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %cond.true.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !66

cond.true.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %cond.true.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %75 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %75)
  %.not.i.i.i.i.i = icmp sgt i32 %75, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.key_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !67

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.key_get.exit_crit_edge:         ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %key_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %cond.true.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %cond.true.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %73, i32 noundef %.sink.i.i.i.i.i) #9
  br label %key_get.exit

key_get.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.key_get.exit_crit_edge, %get_user_ns.exit.key_get.exit_crit_edge
  %thread_keyring86 = getelementptr i8, ptr %twork, i32 -28
  %76 = ptrtoint ptr %thread_keyring86 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %73, ptr %thread_keyring86, align 4
  %process_keyring = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 20
  %77 = ptrtoint ptr %process_keyring to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %process_keyring, align 4
  %tobool.not.i149 = icmp eq ptr %78, null
  br i1 %tobool.not.i149, label %key_get.exit.key_get.exit159_crit_edge, label %cond.true.i153

key_get.exit.key_get.exit159_crit_edge:           ; preds = %key_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %key_get.exit159

cond.true.i153:                                   ; preds = %key_get.exit
  %call.i.i.i.i.i.i.i150 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %78, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr nonnull %78, i32 1, i32 3, i32 1) #9
  %79 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %78, ptr nonnull %78, i32 1, ptr nonnull elementtype(i32) %78) #9, !srcloc !65
  %asmresult.i.i.i.i.i.i.i151 = extractvalue { i32, i32, i32 } %79, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i151)
  %tobool1.not.i.i.i.i.i152 = icmp eq i32 %asmresult.i.i.i.i.i.i.i151, 0
  br i1 %tobool1.not.i.i.i.i.i152, label %cond.true.i153.if.end15.sink.split.i.i.i.i.i158_crit_edge, label %if.else.i.i.i.i.i156, !prof !66

cond.true.i153.if.end15.sink.split.i.i.i.i.i158_crit_edge: ; preds = %cond.true.i153
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i158

if.else.i.i.i.i.i156:                             ; preds = %cond.true.i153
  %add.i.i.i.i.i154 = add i32 %asmresult.i.i.i.i.i.i.i151, 1
  %80 = or i32 %add.i.i.i.i.i154, %asmresult.i.i.i.i.i.i.i151
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %80)
  %.not.i.i.i.i.i155 = icmp sgt i32 %80, -1
  br i1 %.not.i.i.i.i.i155, label %if.else.i.i.i.i.i156.key_get.exit159_crit_edge, label %if.else.i.i.i.i.i156.if.end15.sink.split.i.i.i.i.i158_crit_edge, !prof !67

if.else.i.i.i.i.i156.if.end15.sink.split.i.i.i.i.i158_crit_edge: ; preds = %if.else.i.i.i.i.i156
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i158

if.else.i.i.i.i.i156.key_get.exit159_crit_edge:   ; preds = %if.else.i.i.i.i.i156
  call void @__sanitizer_cov_trace_pc() #11
  br label %key_get.exit159

if.end15.sink.split.i.i.i.i.i158:                 ; preds = %if.else.i.i.i.i.i156.if.end15.sink.split.i.i.i.i.i158_crit_edge, %cond.true.i153.if.end15.sink.split.i.i.i.i.i158_crit_edge
  %.sink.i.i.i.i.i157 = phi i32 [ 2, %cond.true.i153.if.end15.sink.split.i.i.i.i.i158_crit_edge ], [ 1, %if.else.i.i.i.i.i156.if.end15.sink.split.i.i.i.i.i158_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %78, i32 noundef %.sink.i.i.i.i.i157) #9
  br label %key_get.exit159

key_get.exit159:                                  ; preds = %if.end15.sink.split.i.i.i.i.i158, %if.else.i.i.i.i.i156.key_get.exit159_crit_edge, %key_get.exit.key_get.exit159_crit_edge
  %process_keyring88 = getelementptr i8, ptr %twork, i32 -32
  %81 = ptrtoint ptr %process_keyring88 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %78, ptr %process_keyring88, align 4
  tail call void @security_transfer_creds(ptr noundef %add.ptr, ptr noundef %5) #9
  %call89 = tail call i32 @commit_creds(ptr noundef %add.ptr) #9
  br label %cleanup

cleanup:                                          ; preds = %key_get.exit159, %if.end53, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_ucounts(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_transfer_creds(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_root_keyring() #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @look_up_user_keyrings(ptr noundef null, ptr noundef null)
  ret i32 %call
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @creds_are_invalid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__invalid_creds(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !36, !37, !39, !41, !43, !45, !46, !47, !49, !50, !52, !53}
!llvm.named.register.sp = !{!54}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../security/keys/process_keys.c", i32 28, i32 15}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../security/keys/process_keys.c", i32 29, i32 11}
!5 = !{ptr @root_key_user, !6, !"root_key_user", i1 false, i1 false}
!6 = !{!"../security/keys/process_keys.c", i32 26, i32 17}
!7 = distinct !{null, !8, !"__warned", i1 false, i1 false}
!8 = !{!"../security/keys/process_keys.c", i32 77, i32 28}
!9 = distinct !{null, !10, !"__warned", i1 false, i1 false}
!10 = !{!"../security/keys/process_keys.c", i32 78, i32 35}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../security/keys/process_keys.c", i32 101, i32 29}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../security/keys/process_keys.c", i32 123, i32 29}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../security/keys/process_keys.c", i32 228, i32 26}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../security/keys/process_keys.c", i32 275, i32 26}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../security/keys/process_keys.c", i32 322, i32 2}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../security/keys/process_keys.c", i32 330, i32 27}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../security/keys/process_keys.c", i32 554, i32 19}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../security/keys/process_keys.c", i32 626, i32 13}
!27 = !{ptr @__ksymtab_lookup_user_key, !28, !"__ksymtab_lookup_user_key", i1 false, i1 false}
!28 = !{!"../security/keys/process_keys.c", i32 824, i32 1}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../security/keys/process_keys.c", i32 847, i32 8}
!31 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!32 = !{!"../security/keys/process_keys.c", i32 913, i32 27}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../security/keys/process_keys.c", i32 923, i32 3}
!35 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @__func__.key_change_session_keyring, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @__initcall__kmod_process_keys__294_965_init_root_keyring7, !38, !"__initcall__kmod_process_keys__294_965_init_root_keyring7", i1 false, i1 false}
!38 = !{!"../security/keys/process_keys.c", i32 965, i32 1}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../security/keys/process_keys.c", i32 52, i32 31}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../include/linux/cred.h", i32 253, i32 2}
!43 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!44 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!45 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!47 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!48 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!49 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../security/keys/process_keys.c", i32 23, i32 8}
!52 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @key_session_mutex, !51, !"key_session_mutex", i1 false, i1 false}
!54 = !{!"sp"}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{i64 2155326067}
!65 = !{i64 2148443096, i64 2148443128, i64 2148443157, i64 2148443191, i64 2148443222, i64 2148443245}
!66 = !{!"branch_weights", i32 1, i32 2000}
!67 = !{!"branch_weights", i32 2000, i32 1}
!68 = !{!"auto-init"}
!69 = !{i64 2148441566, i64 2148441592, i64 2148441621, i64 2148441655, i64 2148441686, i64 2148441709}
!70 = !{i64 2149269080}
!71 = !{i64 2149269346}
!72 = !{i64 2152292524}
!73 = !{i64 2148530018}
!74 = !{i64 2148444751, i64 2148444783, i64 2148444812, i64 2148444846, i64 2148444877, i64 2148444900}
!75 = !{i64 2148530247}
